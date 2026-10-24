import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep147
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

private def s6Step149CompleteMoves : List (Wire × Wire) := []

private def s6Step149EarlyControlLog : HmrEarlyControlLog := ⟨[768, 908, 858, 879, 887],[807],[875],[882, 891, 903, 791, 825, 810],[]⟩

private def s6Step149FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [858], [], []],[[879], [908], [768], [877]],[[], [], [], []]⟩,[855],[859],[887],[807],[875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[887, 807, 875, 882]⟩

private def s6Step149CompleteLog : HmrEarlyStepLog := ⟨s6Step149FrontLog,s6Step149CompleteMoves,s6Step149EarlyControlLog⟩

private def s6Step149ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩

private def s6Step149ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877],776⟩

private def s6Step149ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193],777⟩

private def s6Step149ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802],775⟩

private def s6Step149FrontOut : WindowBank := ⟨s6Step149ExitFOut,s6Step149ExitGOut,s6Step149ExitFvOut,s6Step149ExitGvOut⟩

private def s6Step149CompleteOut : WindowBank := s6Step149FrontOut.repacked s6Step149CompleteMoves

private def s6Step149EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step149EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step149EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step149EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step149EarlyControlPositiveArena,[807],s6Step149EarlyControlEqualityArena,[875],⟨⟨855,false⟩,[⟨⟨807,false⟩,875⟩]⟩⟩

private def s6Step149EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step149EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step149EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step149EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step149EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step149EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step149EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,768⟩,⟨⟨772,false⟩,908⟩,⟨⟨771,false⟩,858⟩,⟨⟨770,false⟩,879⟩,⟨⟨769,false⟩,887⟩]⟩

private def s6Step149EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step149EarlyControlZeroArena,s6Step149EarlyControlZeroPlan,s6Step149EarlyControlClassPlan,s6Step149EarlyControlFlagArena,s6Step149EarlyControlFittedArena,s6Step149EarlyControlHistoryArena,s6Step149EarlyControlSigmaArena,s6Step149EarlyControlOutputArena,s6Step149EarlyControlLog⟩

private def s6Step149CounterWork : List Wire := [887, 807, 875, 882]

private theorem s6Step149Counter_bounded : s6Step149CounterWork.toFinset⊆arenaWires := by norm_num [s6Step149CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step149HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step149CounterDuring : Arena := ⟨s6Step149HeadFvAfter.live∪s6Step149CounterWork.toFinset,Finset.union_subset s6Step149HeadFvAfter.bounded s6Step149Counter_bounded⟩

private def s6Step149EntryFFresh : List Wire := []

private def s6Step149EntryFvFresh : List Wire := []

private def s6Step149EntryGFresh : List Wire := [858]

private def s6Step149EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step149EntryGvAfter : Arena := s6Step149EntryGAfter

private def s6Step149EntryGvFresh : List Wire := []

private def s6Step149ExitFExtra : List Wire := [908]

private def s6Step149ExitGExtra : List Wire := [858, 879]

private def s6Step149ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step149ExitGvExtra : List Wire := [768]

private def s6Step149Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step149Add0Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step149Add0_bounded : s6Step149Add0Work.toFinset⊆arenaWires := by
  have h : s6Step149Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step149Add0During : Arena := ⟨s6Step149Add0Arena.live∪s6Step149Add0Work.toFinset,Finset.union_subset s6Step149Add0Arena.bounded s6Step149Add0_bounded⟩

private def s6Step149Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step149Add1Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step149Add1_bounded : s6Step149Add1Work.toFinset⊆arenaWires := by
  have h : s6Step149Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step149Add1During : Arena := ⟨s6Step149Add1Arena.live∪s6Step149Add1Work.toFinset,Finset.union_subset s6Step149Add1Arena.bounded s6Step149Add1_bounded⟩

private def s6Step149F4FlagArena : Arena := ⟨s6Step149HeadFvAfter.live∪{887},Finset.union_subset s6Step149HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step149F4Plan : HmrHybridF4Plan := ⟨s6Step149F4FlagArena,[887],s6Step149Add0Arena,[807],s6Step149Add0During,s6Step149Add0Work,s6Step149Add1During,s6Step149Add1Work⟩

private def s6Step149HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 908],795⟩

private def s6Step149HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877],776⟩

private def s6Step149HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 858, 879],777⟩

private def s6Step149HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 768],775⟩

private def s6Step149FrontHead : WindowBank := ⟨s6Step149HeadFOut,s6Step149HeadGOut,s6Step149HeadFvOut,s6Step149HeadGvOut⟩

private def s6Step149EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩

private def s6Step149EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩

private def s6Step149EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 858],777⟩

private def s6Step149EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802],775⟩

private def s6Step149FrontPair : WindowBank := ⟨s6Step149EntryFOut,s6Step149EntryGOut,s6Step149EntryFvOut,s6Step149EntryGvOut⟩

private def s6Step149FrontSigmaArena : Arena := ⟨s6Step149EntryGvAfter.live∪{855},Finset.union_subset s6Step149EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step149HeadFFresh : List Wire := [908]

private def s6Step149HeadFvFresh : List Wire := [877]

private def s6Step149HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step149HeadGFresh : List Wire := [879]

private def s6Step149HeadGvFresh : List Wire := [768]

private def s6Step149FrontPlan : HmrSourceFront := ⟨s6Step149EntryGvAfter,s6Step149FrontPair,(growRow 795 s6Step149EntryFFresh ++ (growRow 777 s6Step149EntryGFresh ++ (growRow 776 s6Step149EntryFvFresh ++ (growRow 775 s6Step149EntryGvFresh ++ [])))),s6Step149FrontSigmaArena,[855],s6Step149HeadGBefore,[859],
  s6Step149HeadFvAfter,s6Step149FrontHead,(growRow 777 s6Step149HeadGFresh ++ (growRow 795 s6Step149HeadFFresh ++ (growRow 775 s6Step149HeadGvFresh ++ (growRow 776 s6Step149HeadFvFresh ++ [])))),s6Step149F4Plan,s6Step149CounterDuring,s6Step149CounterWork,s6Step149ExitGvAfter,s6Step149FrontOut,(shrinkRow 777 s6Step149ExitGExtra ++ (shrinkRow 795 s6Step149ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step149ExitGvExtra ++ []))))⟩

private def s6Step149CompletePlan : HmrEarlyStepPlan := ⟨s6Step149FrontPlan,s6Step149EarlyControlArena,s6Step149EarlyControlPlan,s6Step149CompleteMoves⟩

private theorem s6Step149Complete_apart : List.Disjoint (s6Step149CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [855, 859, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step149CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[855, 859, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step149Complete_owned : (s6Step149CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step149EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step149EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149Complete_repack : s6Step149ExitGvAfter.checkRepack s6Step149CompleteMoves=some s6Step149EarlyControlArena := by rfl

private theorem s6Step149EarlyControl_branchOwned : ([859] : List Wire).toFinset⊆s6Step149EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step149EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149EarlyControl_branch : compileHmrBranchRetirement s6Step149EarlyControlSigmaArena 859=some s6Step149EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step149EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step149EarlyControlSigmaArena s6Step149EarlyControlOutputArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [859] rfl rfl
    decide +kernel

private theorem s6Step149EarlyControl_classEqualityBorrow : s6Step149EarlyControlPositiveArena.checkBorrow (([855, 807] : List Wire).length-1) s6Step149EarlyControlLog.classWork=some s6Step149EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step149EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step149EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step149EarlyControlEqualityArena,s6Step149EarlyControlPositiveArena,s6Step149EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step149EarlyControl_classEqualityOwned : ([855, 807] : List Wire).toFinset⊆s6Step149EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step149EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step149EarlyControl_classEquality : compileHmrEqualityLog s6Step149EarlyControlPositiveArena [855, 807] 0 s6Step149EarlyControlLog.classWork=some (s6Step149EarlyControlEqualityArena,s6Step149EarlyControlLog.classWork,s6Step149EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step149EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step149EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step149EarlyControl_classOwned : ([769, 887, 855] : List Wire).toFinset⊆s6Step149EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step149EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step149EarlyControl_positiveBorrow : s6Step149EarlyControlZeroArena.checkBorrow (1) s6Step149EarlyControlLog.positiveWork=some s6Step149EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step149EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step149EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step149EarlyControlPositiveArena,s6Step149EarlyControlZeroArena,s6Step149EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step149EarlyControl_class : compileHmrSourceClassLog s6Step149EarlyControlZeroArena false 769 s6Step149EarlyControlZeroPlan.top 0 855 s6Step149EarlyControlLog.positiveWork s6Step149EarlyControlLog.classWork=some s6Step149EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step149EarlyControlClassPlan s6Step149EarlyControlZeroArena false 769 s6Step149EarlyControlZeroPlan.top 0 855
  constructor
  · decide +kernel
  · exact s6Step149EarlyControl_classOwned
  · exact s6Step149EarlyControl_positiveBorrow
  · exact s6Step149EarlyControl_classEquality

private theorem s6Step149EarlyControl_entryRecordOwned : ([859, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step149EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step149EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149EarlyControl_entrySigmaOwned : ([855, 254] : List Wire).toFinset⊆s6Step149EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step149EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149EarlyControl_fitBorrow : s6Step149EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step149EarlyControlLog.recordFresh=some s6Step149EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step149EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step149EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step149EarlyControlFittedArena,s6Step149EarlyControlFlagArena,s6Step149EarlyControlLog,arenaWires]

private theorem s6Step149EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step149EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step149EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step149EarlyControl_fit : compileHmrRecordGrowLog s6Step149EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step149EarlyControlLog.recordFresh=some s6Step149EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step149EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step149EarlyControl_fitBorrow

private theorem s6Step149EarlyControl_flagsBorrow : s6Step149EarlyControlEqualityArena.checkBorrow (6) s6Step149EarlyControlLog.flagWork=some s6Step149EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step149EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step149EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step149EarlyControlFlagArena,s6Step149EarlyControlEqualityArena,s6Step149EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step149EarlyControl_flagsOwned : ([875, 253, 252, 251] : List Wire).toFinset⊆s6Step149EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step149EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step149EarlyControl_flags : compileHmrFlagsLog s6Step149EarlyControlClassPlan.equalityArena s6Step149EarlyControlClassPlan.equality.top 253 252 251 s6Step149EarlyControlLog.flagWork=some s6Step149EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step149EarlyControl_flagsOwned⟩
  · exact s6Step149EarlyControl_flagsBorrow

private theorem s6Step149EarlyControl_historyBorrow : s6Step149EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step149EarlyControlLog.recordFresh=some s6Step149EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step149EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step149EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step149EarlyControlArena s6Step149EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step149EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step149EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step149EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step149EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step149EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149EarlyControl_history : compileHmrRecordGrowLog s6Step149EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step149EarlyControlLog.recordFresh=some s6Step149EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step149EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step149EarlyControl_historyBorrow

private theorem s6Step149EarlyControl_sigmaOwned : ([254, 855] : List Wire).toFinset⊆s6Step149EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step149EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149EarlyControl_sigmaReleaseOwned : ([855] : List Wire).toFinset⊆s6Step149EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step149EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149EarlyControl_sigmaRelease : s6Step149EarlyControlHistoryArena.release {855} (fun _ => false)=some s6Step149EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step149EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step149EarlyControlHistoryArena s6Step149EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [855] rfl rfl
    decide +kernel

private theorem s6Step149EarlyControl_sigma : compileHmrSigmaDropLog s6Step149EarlyControlHistoryArena false 0 0 254 855 []=some s6Step149EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step149EarlyControl_sigmaOwned⟩
  · exact s6Step149EarlyControl_sigmaRelease

private theorem s6Step149EarlyControl_zeroBorrow : s6Step149EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step149EarlyControlLog.zeroWork=some s6Step149EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step149EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step149EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step149EarlyControlArena s6Step149EarlyControlZeroArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step149EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step149EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step149EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step149EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step149EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149EarlyControl_zero : compileHmrEqualityLog s6Step149EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step149EarlyControlLog.zeroWork=some (s6Step149EarlyControlZeroArena,s6Step149EarlyControlLog.zeroWork,s6Step149EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step149EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step149EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step149EarlyControl_logged : s6Step149EarlyControlPlan.Logged s6Step149EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 254 253 252 251 859 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step149EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step149EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step149EarlyControl_zero
  · exact s6Step149EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step149EarlyControl_flags
  · exact s6Step149EarlyControl_fit
  · exact s6Step149EarlyControl_history
  · exact s6Step149EarlyControl_sigma
  · exact s6Step149EarlyControl_branch

private theorem s6Step149EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step149EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 254 253 252 251 859 42 s6Step149EarlyControlLog=some s6Step149EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step149EarlyControlPlan s6Step149EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 254 253 252 251 859 42 s6Step149EarlyControl_logged

private def s6Step149EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step149EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩

private def s6Step149EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩

private def s6Step149EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193],777⟩

private def s6Step149EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802],775⟩

private def s6Step149FrontBank : WindowBank := ⟨s6Step149EntryFRow,s6Step149EntryGRow,s6Step149EntryFvRow,s6Step149EntryGvRow⟩

private def s6Step149Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 908, 795]

private def s6Step149Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 858, 879, 777]

private def s6Step149Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 776]

private def s6Step149Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 768, 775]

private theorem s6Step149Counter_apart : Disjoint s6Step149HeadFvAfter.live s6Step149CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step149HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149Counter_borrowed : s6Step149HeadFvAfter.checkBorrow 4 s6Step149CounterWork=some s6Step149CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step149HeadFvAfter s6Step149CounterDuring s6Step149CounterWork.toFinset s6Step149Counter_bounded s6Step149Counter_apart rfl

private theorem s6Step149Counter_owned : (855::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step149HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step149HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149Counter_checked : compileHmrCounterStepLog s6Step149HeadFvAfter true 855 [774, 773, 772, 771, 770, 769] s6Step149CounterWork=some s6Step149CounterDuring := by
  have owned : ∀q∈855::[774, 773, 772, 771, 770, 769],q∈s6Step149HeadFvAfter.live := fun q hq => s6Step149Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step149Counter_borrowed

private def s6Step149EntryFAfter : Arena := s6Step149EntryFBefore

private theorem s6Step149EntryBank_incomingDistinct : ([s6Step149EntryFRow,s6Step149EntryGRow,s6Step149EntryFvRow,s6Step149EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149EntryF_Incoming : rowsOwned s6Step149EntryFBefore [s6Step149EntryFRow,s6Step149EntryGRow,s6Step149EntryFvRow,s6Step149EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step149EntryFRow,s6Step149EntryGRow,s6Step149EntryFvRow,s6Step149EntryGvRow] 0 s6Step149EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step149EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step149EntryBank_outgoingOwned : rowsOwned s6Step149EntryGvAfter [s6Step149EntryFOut,s6Step149EntryGOut,s6Step149EntryFvOut,s6Step149EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step149EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step149EntryF_Outgoing : rowsOwned s6Step149EntryGvAfter [s6Step149EntryFOut,s6Step149EntryGOut,s6Step149EntryFvOut,s6Step149EntryGvOut] :=
  hmrRows_owned_drop s6Step149EntryGvAfter [s6Step149EntryFOut,s6Step149EntryGOut,s6Step149EntryFvOut,s6Step149EntryGvOut] 0 s6Step149EntryBank_outgoingOwned

private theorem s6Step149EntryF_distinct : (s6Step149EntryFRow.sign::s6Step149EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149EntryF_owned : (s6Step149EntryFRow.sign::s6Step149EntryFRow.payload).toFinset⊆s6Step149EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step149EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149EntryF_reserved : s6Step149EntryFBefore.reserve s6Step149EntryFFresh.toFinset=some s6Step149EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step149EntryFFresh,arenaWires]
  · norm_num [s6Step149EntryFBefore,s6Step149EntryFFresh,arenaWires]
  · simp only [s6Step149EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step149EntryF_checked : planRowResizeLog s6Step149EntryFBefore s6Step149EntryFRow 195 s6Step149EntryFFresh=
    some (s6Step149EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩,growRow 795 s6Step149EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step149EntryFBefore s6Step149EntryFAfter s6Step149EntryFRow 195 s6Step149EntryFFresh
    s6Step149EntryF_distinct s6Step149EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step149EntryF_reserved
  have rowEq : WindowRow.mk (s6Step149EntryFRow.payload++s6Step149EntryFFresh) s6Step149EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step149EntryFvAfter : Arena := s6Step149EntryGAfter

private def s6Step149EntryFvBefore : Arena := s6Step149EntryGAfter

private theorem s6Step149EntryFv_Incoming : rowsOwned s6Step149EntryFvBefore [s6Step149EntryFvRow,s6Step149EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step149EntryFRow,s6Step149EntryGRow,s6Step149EntryFvRow,s6Step149EntryGvRow] 2 s6Step149EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step149EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step149EntryFv_Outgoing : rowsOwned s6Step149EntryGvAfter [s6Step149EntryFvOut,s6Step149EntryGvOut] :=
  hmrRows_owned_drop s6Step149EntryGvAfter [s6Step149EntryFOut,s6Step149EntryGOut,s6Step149EntryFvOut,s6Step149EntryGvOut] 2 s6Step149EntryBank_outgoingOwned

private theorem s6Step149EntryFv_distinct : (s6Step149EntryFvRow.sign::s6Step149EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149EntryFv_owned : (s6Step149EntryFvRow.sign::s6Step149EntryFvRow.payload).toFinset⊆s6Step149EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step149EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149EntryFv_reserved : s6Step149EntryFvBefore.reserve s6Step149EntryFvFresh.toFinset=some s6Step149EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step149EntryFvFresh,arenaWires]
  · norm_num [s6Step149EntryFvBefore,s6Step149EntryGAfter,s6Step149EntryFvFresh,arenaWires]
  · simp only [s6Step149EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step149EntryFv_checked : planRowResizeLog s6Step149EntryFvBefore s6Step149EntryFvRow 88 s6Step149EntryFvFresh=
    some (s6Step149EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩,growRow 776 s6Step149EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step149EntryFvBefore s6Step149EntryFvAfter s6Step149EntryFvRow 88 s6Step149EntryFvFresh
    s6Step149EntryFv_distinct s6Step149EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step149EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step149EntryFvRow.payload++s6Step149EntryFvFresh) s6Step149EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step149EntryGBefore : Arena := s6Step149EntryFBefore

private theorem s6Step149EntryG_Incoming : rowsOwned s6Step149EntryGBefore [s6Step149EntryGRow,s6Step149EntryFvRow,s6Step149EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step149EntryFRow,s6Step149EntryGRow,s6Step149EntryFvRow,s6Step149EntryGvRow] 1 s6Step149EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step149EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step149EntryG_Outgoing : rowsOwned s6Step149EntryGvAfter [s6Step149EntryGOut,s6Step149EntryFvOut,s6Step149EntryGvOut] :=
  hmrRows_owned_drop s6Step149EntryGvAfter [s6Step149EntryFOut,s6Step149EntryGOut,s6Step149EntryFvOut,s6Step149EntryGvOut] 1 s6Step149EntryBank_outgoingOwned

private theorem s6Step149EntryG_distinct : (s6Step149EntryGRow.sign::s6Step149EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149EntryG_owned : (s6Step149EntryGRow.sign::s6Step149EntryGRow.payload).toFinset⊆s6Step149EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step149EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149EntryG_reserved : s6Step149EntryGBefore.reserve s6Step149EntryGFresh.toFinset=some s6Step149EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step149EntryGFresh,arenaWires]
  · norm_num [s6Step149EntryGBefore,s6Step149EntryFBefore,s6Step149EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step149EntryGBefore s6Step149EntryGAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step149EntryGFresh rfl rfl
    · norm_num [s6Step149EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step149EntryG_checked : planRowResizeLog s6Step149EntryGBefore s6Step149EntryGRow 195 s6Step149EntryGFresh=
    some (s6Step149EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 858],777⟩,growRow 777 s6Step149EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step149EntryGBefore s6Step149EntryGAfter s6Step149EntryGRow 195 s6Step149EntryGFresh
    s6Step149EntryG_distinct s6Step149EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step149EntryG_reserved
  have rowEq : WindowRow.mk (s6Step149EntryGRow.payload++s6Step149EntryGFresh) s6Step149EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 858],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step149EntryGvBefore : Arena := s6Step149EntryGAfter

private theorem s6Step149EntryGv_Incoming : rowsOwned s6Step149EntryGvBefore [s6Step149EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step149EntryFRow,s6Step149EntryGRow,s6Step149EntryFvRow,s6Step149EntryGvRow] 3 s6Step149EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step149EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step149EntryGv_Outgoing : rowsOwned s6Step149EntryGvAfter [s6Step149EntryGvOut] :=
  hmrRows_owned_drop s6Step149EntryGvAfter [s6Step149EntryFOut,s6Step149EntryGOut,s6Step149EntryFvOut,s6Step149EntryGvOut] 3 s6Step149EntryBank_outgoingOwned

private theorem s6Step149EntryGv_distinct : (s6Step149EntryGvRow.sign::s6Step149EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149EntryGv_owned : (s6Step149EntryGvRow.sign::s6Step149EntryGvRow.payload).toFinset⊆s6Step149EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step149EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149EntryGv_reserved : s6Step149EntryGvBefore.reserve s6Step149EntryGvFresh.toFinset=some s6Step149EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step149EntryGvFresh,arenaWires]
  · norm_num [s6Step149EntryGvBefore,s6Step149EntryGAfter,s6Step149EntryGvFresh,arenaWires]
  · simp only [s6Step149EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step149EntryGv_checked : planRowResizeLog s6Step149EntryGvBefore s6Step149EntryGvRow 88 s6Step149EntryGvFresh=
    some (s6Step149EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802],775⟩,growRow 775 s6Step149EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step149EntryGvBefore s6Step149EntryGvAfter s6Step149EntryGvRow 88 s6Step149EntryGvFresh
    s6Step149EntryGv_distinct s6Step149EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step149EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step149EntryGvRow.payload++s6Step149EntryGvFresh) s6Step149EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step149EntryBank_rows : planWindowRowsLog s6Step149EntryFBefore [(s6Step149EntryFRow,195),(s6Step149EntryGRow,195),(s6Step149EntryFvRow,88),(s6Step149EntryGvRow,88)] [s6Step149EntryFFresh,s6Step149EntryGFresh,s6Step149EntryFvFresh,s6Step149EntryGvFresh]=
    some (s6Step149EntryGvAfter,[s6Step149EntryFOut,s6Step149EntryGOut,s6Step149EntryFvOut,s6Step149EntryGvOut],(growRow 795 s6Step149EntryFFresh ++ (growRow 777 s6Step149EntryGFresh ++ (growRow 776 s6Step149EntryFvFresh ++ (growRow 775 s6Step149EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step149EntryGvAfter [] []=some (s6Step149EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step149EntryGvBefore s6Step149EntryGvAfter s6Step149EntryGvAfter
    s6Step149EntryGvRow s6Step149EntryGvOut 88 s6Step149EntryGvFresh [] [] []
    (growRow 775 s6Step149EntryGvFresh) ([]) s6Step149EntryGv_Incoming s6Step149EntryGv_checked h4 s6Step149EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step149EntryFvBefore s6Step149EntryFvAfter s6Step149EntryGvAfter
    s6Step149EntryFvRow s6Step149EntryFvOut 88 s6Step149EntryFvFresh [(s6Step149EntryGvRow,88)] [s6Step149EntryGvFresh] [s6Step149EntryGvOut]
    (growRow 776 s6Step149EntryFvFresh) ((growRow 775 s6Step149EntryGvFresh ++ [])) s6Step149EntryFv_Incoming s6Step149EntryFv_checked h3 s6Step149EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step149EntryGBefore s6Step149EntryGAfter s6Step149EntryGvAfter
    s6Step149EntryGRow s6Step149EntryGOut 195 s6Step149EntryGFresh [(s6Step149EntryFvRow,88),(s6Step149EntryGvRow,88)] [s6Step149EntryFvFresh,s6Step149EntryGvFresh] [s6Step149EntryFvOut,s6Step149EntryGvOut]
    (growRow 777 s6Step149EntryGFresh) ((growRow 776 s6Step149EntryFvFresh ++ (growRow 775 s6Step149EntryGvFresh ++ []))) s6Step149EntryG_Incoming s6Step149EntryG_checked h2 s6Step149EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step149EntryFBefore s6Step149EntryFAfter s6Step149EntryGvAfter
    s6Step149EntryFRow s6Step149EntryFOut 195 s6Step149EntryFFresh [(s6Step149EntryGRow,195),(s6Step149EntryFvRow,88),(s6Step149EntryGvRow,88)] [s6Step149EntryGFresh,s6Step149EntryFvFresh,s6Step149EntryGvFresh] [s6Step149EntryGOut,s6Step149EntryFvOut,s6Step149EntryGvOut]
    (growRow 795 s6Step149EntryFFresh) ((growRow 777 s6Step149EntryGFresh ++ (growRow 776 s6Step149EntryFvFresh ++ (growRow 775 s6Step149EntryGvFresh ++ [])))) s6Step149EntryF_Incoming s6Step149EntryF_checked h1 s6Step149EntryF_Outgoing
  exact h0

private theorem s6Step149EntryBank_checked : compileHmrBankResizeLog .entry s6Step149EntryFBefore ⟨s6Step149EntryFRow,s6Step149EntryGRow,s6Step149EntryFvRow,s6Step149EntryGvRow⟩ ⟨195,195,88,88⟩ [s6Step149EntryFFresh,s6Step149EntryGFresh,s6Step149EntryFvFresh,s6Step149EntryGvFresh]=
    some (s6Step149EntryGvAfter,⟨s6Step149EntryFOut,s6Step149EntryGOut,s6Step149EntryFvOut,s6Step149EntryGvOut⟩,(growRow 795 s6Step149EntryFFresh ++ (growRow 777 s6Step149EntryGFresh ++ (growRow 776 s6Step149EntryFvFresh ++ (growRow 775 s6Step149EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step149EntryBank_rows]
  rfl

private def s6Step149ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step149ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step149ExitFBefore : Arena := s6Step149ExitGAfter

private def s6Step149ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 908],795⟩

private def s6Step149ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877],776⟩

private def s6Step149ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 858, 879],777⟩

private def s6Step149ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 768],775⟩

private theorem s6Step149ExitBank_incomingDistinct : ([s6Step149ExitGRow,s6Step149ExitFRow,s6Step149ExitFvRow,s6Step149ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149ExitF_Incoming : rowsOwned s6Step149ExitFBefore [s6Step149ExitFRow,s6Step149ExitFvRow,s6Step149ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step149ExitGRow,s6Step149ExitFRow,s6Step149ExitFvRow,s6Step149ExitGvRow] 1 s6Step149ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step149ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step149ExitBank_outgoingOwned : rowsOwned s6Step149ExitGvAfter [s6Step149ExitGOut,s6Step149ExitFOut,s6Step149ExitFvOut,s6Step149ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step149ExitGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step149ExitF_Outgoing : rowsOwned s6Step149ExitGvAfter [s6Step149ExitFOut,s6Step149ExitFvOut,s6Step149ExitGvOut] :=
  hmrRows_owned_drop s6Step149ExitGvAfter [s6Step149ExitGOut,s6Step149ExitFOut,s6Step149ExitFvOut,s6Step149ExitGvOut] 1 s6Step149ExitBank_outgoingOwned

private theorem s6Step149ExitF_distinct : (s6Step149ExitFRow.sign::s6Step149ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149ExitF_owned : (s6Step149ExitFRow.sign::s6Step149ExitFRow.payload).toFinset⊆s6Step149ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step149ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149ExitF_retired : s6Step149ExitFBefore.retireSet s6Step149ExitFExtra.toFinset=s6Step149ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step149ExitFBefore s6Step149ExitFAfter s6Step149ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step149ExitFBefore s6Step149ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step149ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step149ExitF_checked : planRowResizeLog s6Step149ExitFBefore s6Step149ExitFRow 195 []=
    some (s6Step149ExitFAfter,s6Step149ExitFOut,shrinkRow 795 s6Step149ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step149ExitFBefore s6Step149ExitFRow 195 s6Step149ExitF_distinct s6Step149ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step149ExitFRow.payload.take 195) s6Step149ExitFRow.sign=s6Step149ExitFOut := by decide +kernel
  have hi : s6Step149ExitFRow.payload.drop 195=s6Step149ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step149ExitF_retired] at result
  exact result

private def s6Step149ExitFvAfter : Arena := s6Step149ExitFAfter

private def s6Step149ExitFvBefore : Arena := s6Step149ExitFAfter

private theorem s6Step149ExitFv_Incoming : rowsOwned s6Step149ExitFvBefore [s6Step149ExitFvRow,s6Step149ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step149ExitGRow,s6Step149ExitFRow,s6Step149ExitFvRow,s6Step149ExitGvRow] 2 s6Step149ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step149ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step149ExitFv_Outgoing : rowsOwned s6Step149ExitGvAfter [s6Step149ExitFvOut,s6Step149ExitGvOut] :=
  hmrRows_owned_drop s6Step149ExitGvAfter [s6Step149ExitGOut,s6Step149ExitFOut,s6Step149ExitFvOut,s6Step149ExitGvOut] 2 s6Step149ExitBank_outgoingOwned

private theorem s6Step149ExitFv_distinct : (s6Step149ExitFvRow.sign::s6Step149ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149ExitFv_owned : (s6Step149ExitFvRow.sign::s6Step149ExitFvRow.payload).toFinset⊆s6Step149ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step149ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149ExitFv_reserved : s6Step149ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step149ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step149ExitFv_checked : planRowResizeLog s6Step149ExitFvBefore s6Step149ExitFvRow 89 []=
    some (s6Step149ExitFvAfter,s6Step149ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step149ExitFvBefore s6Step149ExitFvAfter s6Step149ExitFvRow 89 []
    s6Step149ExitFv_distinct s6Step149ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step149ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step149ExitFvRow.payload++[]) s6Step149ExitFvRow.sign=s6Step149ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step149ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step149ExitG_Incoming : rowsOwned s6Step149ExitGBefore [s6Step149ExitGRow,s6Step149ExitFRow,s6Step149ExitFvRow,s6Step149ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step149ExitGRow,s6Step149ExitFRow,s6Step149ExitFvRow,s6Step149ExitGvRow] 0 s6Step149ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step149ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step149ExitG_Outgoing : rowsOwned s6Step149ExitGvAfter [s6Step149ExitGOut,s6Step149ExitFOut,s6Step149ExitFvOut,s6Step149ExitGvOut] :=
  hmrRows_owned_drop s6Step149ExitGvAfter [s6Step149ExitGOut,s6Step149ExitFOut,s6Step149ExitFvOut,s6Step149ExitGvOut] 0 s6Step149ExitBank_outgoingOwned

private theorem s6Step149ExitG_distinct : (s6Step149ExitGRow.sign::s6Step149ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149ExitG_owned : (s6Step149ExitGRow.sign::s6Step149ExitGRow.payload).toFinset⊆s6Step149ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step149ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149ExitG_retired : s6Step149ExitGBefore.retireSet s6Step149ExitGExtra.toFinset=s6Step149ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step149ExitGBefore s6Step149ExitGAfter s6Step149ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step149ExitGBefore s6Step149ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step149ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step149ExitG_checked : planRowResizeLog s6Step149ExitGBefore s6Step149ExitGRow 194 []=
    some (s6Step149ExitGAfter,s6Step149ExitGOut,shrinkRow 777 s6Step149ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step149ExitGBefore s6Step149ExitGRow 194 s6Step149ExitG_distinct s6Step149ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step149ExitGRow.payload.take 194) s6Step149ExitGRow.sign=s6Step149ExitGOut := by decide +kernel
  have hi : s6Step149ExitGRow.payload.drop 194=s6Step149ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step149ExitG_retired] at result
  exact result

private def s6Step149ExitGvBefore : Arena := s6Step149ExitFAfter

private theorem s6Step149ExitGv_Incoming : rowsOwned s6Step149ExitGvBefore [s6Step149ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step149ExitGRow,s6Step149ExitFRow,s6Step149ExitFvRow,s6Step149ExitGvRow] 3 s6Step149ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step149ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step149ExitGv_Outgoing : rowsOwned s6Step149ExitGvAfter [s6Step149ExitGvOut] :=
  hmrRows_owned_drop s6Step149ExitGvAfter [s6Step149ExitGOut,s6Step149ExitFOut,s6Step149ExitFvOut,s6Step149ExitGvOut] 3 s6Step149ExitBank_outgoingOwned

private theorem s6Step149ExitGv_distinct : (s6Step149ExitGvRow.sign::s6Step149ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149ExitGv_owned : (s6Step149ExitGvRow.sign::s6Step149ExitGvRow.payload).toFinset⊆s6Step149ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step149ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149ExitGv_retired : s6Step149ExitGvBefore.retireSet s6Step149ExitGvExtra.toFinset=s6Step149ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step149ExitGvBefore s6Step149ExitGvAfter s6Step149ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step149ExitGvBefore s6Step149ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step149ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step149ExitGv_checked : planRowResizeLog s6Step149ExitGvBefore s6Step149ExitGvRow 88 []=
    some (s6Step149ExitGvAfter,s6Step149ExitGvOut,shrinkRow 775 s6Step149ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step149ExitGvBefore s6Step149ExitGvRow 88 s6Step149ExitGv_distinct s6Step149ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step149ExitGvRow.payload.take 88) s6Step149ExitGvRow.sign=s6Step149ExitGvOut := by decide +kernel
  have hi : s6Step149ExitGvRow.payload.drop 88=s6Step149ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step149ExitGv_retired] at result
  exact result

private theorem s6Step149ExitBank_rows : planWindowRowsLog s6Step149ExitGBefore [(s6Step149ExitGRow,194),(s6Step149ExitFRow,195),(s6Step149ExitFvRow,89),(s6Step149ExitGvRow,88)] [[],[],[],[]]=
    some (s6Step149ExitGvAfter,[s6Step149ExitGOut,s6Step149ExitFOut,s6Step149ExitFvOut,s6Step149ExitGvOut],(shrinkRow 777 s6Step149ExitGExtra ++ (shrinkRow 795 s6Step149ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step149ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step149ExitGvAfter [] []=some (s6Step149ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step149ExitGvBefore s6Step149ExitGvAfter s6Step149ExitGvAfter
    s6Step149ExitGvRow s6Step149ExitGvOut 88 [] [] [] []
    (shrinkRow 775 s6Step149ExitGvExtra) ([]) s6Step149ExitGv_Incoming s6Step149ExitGv_checked h4 s6Step149ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step149ExitFvBefore s6Step149ExitFvAfter s6Step149ExitGvAfter
    s6Step149ExitFvRow s6Step149ExitFvOut 89 [] [(s6Step149ExitGvRow,88)] [[]] [s6Step149ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step149ExitGvExtra ++ [])) s6Step149ExitFv_Incoming s6Step149ExitFv_checked h3 s6Step149ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step149ExitFBefore s6Step149ExitFAfter s6Step149ExitGvAfter
    s6Step149ExitFRow s6Step149ExitFOut 195 [] [(s6Step149ExitFvRow,89),(s6Step149ExitGvRow,88)] [[],[]] [s6Step149ExitFvOut,s6Step149ExitGvOut]
    (shrinkRow 795 s6Step149ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step149ExitGvExtra ++ []))) s6Step149ExitF_Incoming s6Step149ExitF_checked h2 s6Step149ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step149ExitGBefore s6Step149ExitGAfter s6Step149ExitGvAfter
    s6Step149ExitGRow s6Step149ExitGOut 194 [] [(s6Step149ExitFRow,195),(s6Step149ExitFvRow,89),(s6Step149ExitGvRow,88)] [[],[],[]] [s6Step149ExitFOut,s6Step149ExitFvOut,s6Step149ExitGvOut]
    (shrinkRow 777 s6Step149ExitGExtra) ((shrinkRow 795 s6Step149ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step149ExitGvExtra ++ [])))) s6Step149ExitG_Incoming s6Step149ExitG_checked h1 s6Step149ExitG_Outgoing
  exact h0

private theorem s6Step149ExitBank_checked : compileHmrBankResizeLog .exit s6Step149ExitGBefore ⟨s6Step149ExitFRow,s6Step149ExitGRow,s6Step149ExitFvRow,s6Step149ExitGvRow⟩ ⟨195,194,89,88⟩ [[],[],[],[]]=
    some (s6Step149ExitGvAfter,⟨s6Step149ExitFOut,s6Step149ExitGOut,s6Step149ExitFvOut,s6Step149ExitGvOut⟩,(shrinkRow 777 s6Step149ExitGExtra ++ (shrinkRow 795 s6Step149ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step149ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step149ExitBank_rows]
  rfl

private theorem s6Step149Add0_apart : Disjoint s6Step149Add0Arena.live s6Step149Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step149Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step149Add0_card : s6Step149Add0Arena.live.card=882 := by
  decide +kernel

private theorem s6Step149Add0_borrowed : s6Step149Add0Arena.checkBorrow (hmrHybridCount s6Step149Add0Arena s6Step149Add0B.length) s6Step149Add0Work=some s6Step149Add0During := by
  have len : s6Step149Add0Work.length=hmrHybridCount s6Step149Add0Arena s6Step149Add0B.length := by
    rw [hmrHybridCount,s6Step149Add0_card]
    decide +kernel
  have nd : s6Step149Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step149Add0Arena s6Step149Add0During s6Step149Add0Work.toFinset s6Step149Add0_bounded s6Step149Add0_apart rfl

private theorem s6Step149Add0_distinct : (887::859::807::(s6Step149Add0A++s6Step149Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149Add0_owned : (887::859::807::(s6Step149Add0A++s6Step149Add0B)).toFinset⊆s6Step149Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step149Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step149Add0_checked : compileHmrHybridCinLog s6Step149Add0Arena 859 887 807 s6Step149Add0A s6Step149Add0B s6Step149Add0Work=some s6Step149Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step149Add0Arena s6Step149Add0During 859 887 807 s6Step149Add0A s6Step149Add0B s6Step149Add0Work
    (by decide +kernel) (by decide +kernel) s6Step149Add0_distinct
    (fun q hq => s6Step149Add0_owned (List.mem_toFinset.mpr hq)) s6Step149Add0_borrowed

private theorem s6Step149Add1_apart : Disjoint s6Step149Add1Arena.live s6Step149Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step149Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step149Add1_card : s6Step149Add1Arena.live.card=882 := by
  decide +kernel

private theorem s6Step149Add1_borrowed : s6Step149Add1Arena.checkBorrow (hmrHybridCount s6Step149Add1Arena s6Step149Add1B.length) s6Step149Add1Work=some s6Step149Add1During := by
  have len : s6Step149Add1Work.length=hmrHybridCount s6Step149Add1Arena s6Step149Add1B.length := by
    rw [hmrHybridCount,s6Step149Add1_card]
    decide +kernel
  have nd : s6Step149Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step149Add1Arena s6Step149Add1During s6Step149Add1Work.toFinset s6Step149Add1_bounded s6Step149Add1_apart rfl

private theorem s6Step149Add1_distinct : (887::859::807::(s6Step149Add1A++s6Step149Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149Add1_owned : (887::859::807::(s6Step149Add1A++s6Step149Add1B)).toFinset⊆s6Step149Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step149Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step149Add1_checked : compileHmrHybridCinLog s6Step149Add1Arena 859 887 807 s6Step149Add1A s6Step149Add1B s6Step149Add1Work=some s6Step149Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step149Add1Arena s6Step149Add1During 859 887 807 s6Step149Add1A s6Step149Add1B s6Step149Add1Work
    (by decide +kernel) (by decide +kernel) s6Step149Add1_distinct
    (fun q hq => s6Step149Add1_owned (List.mem_toFinset.mpr hq)) s6Step149Add1_borrowed

private theorem s6Step149F4_apart : Disjoint (s6Step149Add0A++s6Step149Add0B).toFinset (s6Step149Add1A++s6Step149Add1B).toFinset := by
  have nd : ((s6Step149Add0A++s6Step149Add0B)++(s6Step149Add1A++s6Step149Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step149F4_carry : s6Step149F4FlagArena.checkBorrow 1 [807]=some s6Step149Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step149F4FlagArena,s6Step149HeadFvAfter,arenaWires]
  · change s6Step149Add0Arena.live=(s6Step149HeadFvAfter.live∪{887})∪{807}
    apply hmrArena_union_pair_of_filter_check s6Step149HeadFvAfter s6Step149Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) 887 807 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step149F4_distinct : (855::859::887::807::((s6Step149Add0A++s6Step149Add1A)++(s6Step149Add0B++s6Step149Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149F4_flag : s6Step149HeadFvAfter.checkBorrow 1 [887]=some s6Step149F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step149HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step149F4_owned : (855::859::((s6Step149Add0A++s6Step149Add1A)++(s6Step149Add0B++s6Step149Add1B))).toFinset⊆s6Step149HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step149HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149F4_checked : compileHmrHybridF4Log s6Step149HeadFvAfter 855 859 s6Step149Add0A s6Step149Add0B s6Step149Add1A s6Step149Add1B [887] [807] s6Step149Add0Work s6Step149Add1Work=some s6Step149F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step149HeadFvAfter s6Step149F4FlagArena s6Step149Add0Arena s6Step149Add0During s6Step149Add1During 855 859
    s6Step149Add0A s6Step149Add0B s6Step149Add1A s6Step149Add1B [887] [807] s6Step149Add0Work s6Step149Add1Work
    (fun q hq => s6Step149F4_owned (List.mem_toFinset.mpr hq)) s6Step149F4_flag s6Step149F4_carry
    s6Step149F4_distinct s6Step149F4_apart s6Step149Add0_checked s6Step149Add1_checked

private theorem s6Step149Front_branch : s6Step149FrontSigmaArena.checkBorrow 1 [859]=some s6Step149HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step149FrontSigmaArena,s6Step149EntryGvAfter,s6Step149EntryGAfter,arenaWires]
  · change s6Step149HeadGBefore.live=(s6Step149EntryGvAfter.live∪{855})∪{859}
    apply hmrArena_union_pair_of_filter_check s6Step149EntryGvAfter s6Step149HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 855 859 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step149Front_entry : HmrFrontEntryValid s6Step149EntryFBefore s6Step149FrontBank 195 88 ⟨195,194,89,88⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step149FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step149EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step149EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step149FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step149Front_sigma : s6Step149EntryGvAfter.checkBorrow 1 [855]=some s6Step149FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step149EntryGvAfter,s6Step149EntryGAfter,arenaWires]
  · rfl

private def s6Step149HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step149HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step149HeadFBefore : Arena := s6Step149HeadGAfter

private def s6Step149HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩

private def s6Step149HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩

private def s6Step149HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 858],777⟩

private def s6Step149HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802],775⟩

private theorem s6Step149HeadBank_incomingDistinct : ([s6Step149HeadGRow,s6Step149HeadFRow,s6Step149HeadGvRow,s6Step149HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149HeadF_Incoming : rowsOwned s6Step149HeadFBefore [s6Step149HeadFRow,s6Step149HeadGvRow,s6Step149HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step149HeadGRow,s6Step149HeadFRow,s6Step149HeadGvRow,s6Step149HeadFvRow] 1 s6Step149HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step149HeadFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step149HeadBank_outgoingOwned : rowsOwned s6Step149HeadFvAfter [s6Step149HeadGOut,s6Step149HeadFOut,s6Step149HeadGvOut,s6Step149HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step149HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step149HeadF_Outgoing : rowsOwned s6Step149HeadFvAfter [s6Step149HeadFOut,s6Step149HeadGvOut,s6Step149HeadFvOut] :=
  hmrRows_owned_drop s6Step149HeadFvAfter [s6Step149HeadGOut,s6Step149HeadFOut,s6Step149HeadGvOut,s6Step149HeadFvOut] 1 s6Step149HeadBank_outgoingOwned

private theorem s6Step149HeadF_distinct : (s6Step149HeadFRow.sign::s6Step149HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149HeadF_owned : (s6Step149HeadFRow.sign::s6Step149HeadFRow.payload).toFinset⊆s6Step149HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step149HeadFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149HeadF_reserved : s6Step149HeadFBefore.reserve s6Step149HeadFFresh.toFinset=some s6Step149HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step149HeadFFresh,arenaWires]
  · norm_num [s6Step149HeadFBefore,s6Step149HeadGAfter,s6Step149HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step149HeadFBefore s6Step149HeadFAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step149HeadFFresh rfl rfl
    · norm_num [s6Step149HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step149HeadF_checked : planRowResizeLog s6Step149HeadFBefore s6Step149HeadFRow 196 s6Step149HeadFFresh=
    some (s6Step149HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 908],795⟩,growRow 795 s6Step149HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step149HeadFBefore s6Step149HeadFAfter s6Step149HeadFRow 196 s6Step149HeadFFresh
    s6Step149HeadF_distinct s6Step149HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step149HeadF_reserved
  have rowEq : WindowRow.mk (s6Step149HeadFRow.payload++s6Step149HeadFFresh) s6Step149HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 908],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step149HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step149HeadFvBefore : Arena := s6Step149HeadGvAfter

private theorem s6Step149HeadFv_Incoming : rowsOwned s6Step149HeadFvBefore [s6Step149HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step149HeadGRow,s6Step149HeadFRow,s6Step149HeadGvRow,s6Step149HeadFvRow] 3 s6Step149HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step149HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step149HeadFv_Outgoing : rowsOwned s6Step149HeadFvAfter [s6Step149HeadFvOut] :=
  hmrRows_owned_drop s6Step149HeadFvAfter [s6Step149HeadGOut,s6Step149HeadFOut,s6Step149HeadGvOut,s6Step149HeadFvOut] 3 s6Step149HeadBank_outgoingOwned

private theorem s6Step149HeadFv_distinct : (s6Step149HeadFvRow.sign::s6Step149HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149HeadFv_owned : (s6Step149HeadFvRow.sign::s6Step149HeadFvRow.payload).toFinset⊆s6Step149HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step149HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149HeadFv_reserved : s6Step149HeadFvBefore.reserve s6Step149HeadFvFresh.toFinset=some s6Step149HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step149HeadFvFresh,arenaWires]
  · norm_num [s6Step149HeadFvBefore,s6Step149HeadGvAfter,s6Step149HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step149HeadFvBefore s6Step149HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step149HeadFvFresh rfl rfl
    · norm_num [s6Step149HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step149HeadFv_checked : planRowResizeLog s6Step149HeadFvBefore s6Step149HeadFvRow 89 s6Step149HeadFvFresh=
    some (s6Step149HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877],776⟩,growRow 776 s6Step149HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step149HeadFvBefore s6Step149HeadFvAfter s6Step149HeadFvRow 89 s6Step149HeadFvFresh
    s6Step149HeadFv_distinct s6Step149HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step149HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step149HeadFvRow.payload++s6Step149HeadFvFresh) s6Step149HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step149HeadG_Incoming : rowsOwned s6Step149HeadGBefore [s6Step149HeadGRow,s6Step149HeadFRow,s6Step149HeadGvRow,s6Step149HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step149HeadGRow,s6Step149HeadFRow,s6Step149HeadGvRow,s6Step149HeadFvRow] 0 s6Step149HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step149HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step149HeadG_Outgoing : rowsOwned s6Step149HeadFvAfter [s6Step149HeadGOut,s6Step149HeadFOut,s6Step149HeadGvOut,s6Step149HeadFvOut] :=
  hmrRows_owned_drop s6Step149HeadFvAfter [s6Step149HeadGOut,s6Step149HeadFOut,s6Step149HeadGvOut,s6Step149HeadFvOut] 0 s6Step149HeadBank_outgoingOwned

private theorem s6Step149HeadG_distinct : (s6Step149HeadGRow.sign::s6Step149HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149HeadG_owned : (s6Step149HeadGRow.sign::s6Step149HeadGRow.payload).toFinset⊆s6Step149HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step149HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149HeadG_reserved : s6Step149HeadGBefore.reserve s6Step149HeadGFresh.toFinset=some s6Step149HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step149HeadGFresh,arenaWires]
  · norm_num [s6Step149HeadGBefore,s6Step149HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step149HeadGBefore s6Step149HeadGAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step149HeadGFresh rfl rfl
    · norm_num [s6Step149HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step149HeadG_checked : planRowResizeLog s6Step149HeadGBefore s6Step149HeadGRow 196 s6Step149HeadGFresh=
    some (s6Step149HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 858, 879],777⟩,growRow 777 s6Step149HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step149HeadGBefore s6Step149HeadGAfter s6Step149HeadGRow 196 s6Step149HeadGFresh
    s6Step149HeadG_distinct s6Step149HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step149HeadG_reserved
  have rowEq : WindowRow.mk (s6Step149HeadGRow.payload++s6Step149HeadGFresh) s6Step149HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 858, 879],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step149HeadGvBefore : Arena := s6Step149HeadFAfter

private theorem s6Step149HeadGv_Incoming : rowsOwned s6Step149HeadGvBefore [s6Step149HeadGvRow,s6Step149HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step149HeadGRow,s6Step149HeadFRow,s6Step149HeadGvRow,s6Step149HeadFvRow] 2 s6Step149HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step149HeadGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step149HeadGv_Outgoing : rowsOwned s6Step149HeadFvAfter [s6Step149HeadGvOut,s6Step149HeadFvOut] :=
  hmrRows_owned_drop s6Step149HeadFvAfter [s6Step149HeadGOut,s6Step149HeadFOut,s6Step149HeadGvOut,s6Step149HeadFvOut] 2 s6Step149HeadBank_outgoingOwned

private theorem s6Step149HeadGv_distinct : (s6Step149HeadGvRow.sign::s6Step149HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step149HeadGv_owned : (s6Step149HeadGvRow.sign::s6Step149HeadGvRow.payload).toFinset⊆s6Step149HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step149HeadGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step149HeadGv_reserved : s6Step149HeadGvBefore.reserve s6Step149HeadGvFresh.toFinset=some s6Step149HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step149HeadGvFresh,arenaWires]
  · norm_num [s6Step149HeadGvBefore,s6Step149HeadFAfter,s6Step149HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step149HeadGvBefore s6Step149HeadGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step149HeadGvFresh rfl rfl
    · norm_num [s6Step149HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step149HeadGv_checked : planRowResizeLog s6Step149HeadGvBefore s6Step149HeadGvRow 89 s6Step149HeadGvFresh=
    some (s6Step149HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 768],775⟩,growRow 775 s6Step149HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step149HeadGvBefore s6Step149HeadGvAfter s6Step149HeadGvRow 89 s6Step149HeadGvFresh
    s6Step149HeadGv_distinct s6Step149HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step149HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step149HeadGvRow.payload++s6Step149HeadGvFresh) s6Step149HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 768],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step149HeadBank_rows : planWindowRowsLog s6Step149HeadGBefore [(s6Step149HeadGRow,196),(s6Step149HeadFRow,196),(s6Step149HeadGvRow,89),(s6Step149HeadFvRow,89)] [s6Step149HeadGFresh,s6Step149HeadFFresh,s6Step149HeadGvFresh,s6Step149HeadFvFresh]=
    some (s6Step149HeadFvAfter,[s6Step149HeadGOut,s6Step149HeadFOut,s6Step149HeadGvOut,s6Step149HeadFvOut],(growRow 777 s6Step149HeadGFresh ++ (growRow 795 s6Step149HeadFFresh ++ (growRow 775 s6Step149HeadGvFresh ++ (growRow 776 s6Step149HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step149HeadFvAfter [] []=some (s6Step149HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step149HeadFvBefore s6Step149HeadFvAfter s6Step149HeadFvAfter
    s6Step149HeadFvRow s6Step149HeadFvOut 89 s6Step149HeadFvFresh [] [] []
    (growRow 776 s6Step149HeadFvFresh) ([]) s6Step149HeadFv_Incoming s6Step149HeadFv_checked h4 s6Step149HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step149HeadGvBefore s6Step149HeadGvAfter s6Step149HeadFvAfter
    s6Step149HeadGvRow s6Step149HeadGvOut 89 s6Step149HeadGvFresh [(s6Step149HeadFvRow,89)] [s6Step149HeadFvFresh] [s6Step149HeadFvOut]
    (growRow 775 s6Step149HeadGvFresh) ((growRow 776 s6Step149HeadFvFresh ++ [])) s6Step149HeadGv_Incoming s6Step149HeadGv_checked h3 s6Step149HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step149HeadFBefore s6Step149HeadFAfter s6Step149HeadFvAfter
    s6Step149HeadFRow s6Step149HeadFOut 196 s6Step149HeadFFresh [(s6Step149HeadGvRow,89),(s6Step149HeadFvRow,89)] [s6Step149HeadGvFresh,s6Step149HeadFvFresh] [s6Step149HeadGvOut,s6Step149HeadFvOut]
    (growRow 795 s6Step149HeadFFresh) ((growRow 775 s6Step149HeadGvFresh ++ (growRow 776 s6Step149HeadFvFresh ++ []))) s6Step149HeadF_Incoming s6Step149HeadF_checked h2 s6Step149HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step149HeadGBefore s6Step149HeadGAfter s6Step149HeadFvAfter
    s6Step149HeadGRow s6Step149HeadGOut 196 s6Step149HeadGFresh [(s6Step149HeadFRow,196),(s6Step149HeadGvRow,89),(s6Step149HeadFvRow,89)] [s6Step149HeadFFresh,s6Step149HeadGvFresh,s6Step149HeadFvFresh] [s6Step149HeadFOut,s6Step149HeadGvOut,s6Step149HeadFvOut]
    (growRow 777 s6Step149HeadGFresh) ((growRow 795 s6Step149HeadFFresh ++ (growRow 775 s6Step149HeadGvFresh ++ (growRow 776 s6Step149HeadFvFresh ++ [])))) s6Step149HeadG_Incoming s6Step149HeadG_checked h1 s6Step149HeadG_Outgoing
  exact h0

private theorem s6Step149HeadBank_checked : compileHmrBankResizeLog .headroom s6Step149HeadGBefore ⟨s6Step149HeadFRow,s6Step149HeadGRow,s6Step149HeadFvRow,s6Step149HeadGvRow⟩ ⟨196,196,89,89⟩ [s6Step149HeadGFresh,s6Step149HeadFFresh,s6Step149HeadGvFresh,s6Step149HeadFvFresh]=
    some (s6Step149HeadFvAfter,⟨s6Step149HeadFOut,s6Step149HeadGOut,s6Step149HeadFvOut,s6Step149HeadGvOut⟩,(growRow 777 s6Step149HeadGFresh ++ (growRow 795 s6Step149HeadFFresh ++ (growRow 775 s6Step149HeadGvFresh ++ (growRow 776 s6Step149HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step149HeadBank_rows]
  rfl

private theorem s6Step149Front_checked : compileHmrSourceFrontLog s6Step149EntryFBefore s6Step149FrontBank 195 88 ⟨195,194,89,88⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step149FrontLog=some s6Step149FrontPlan := by
  have pairEq : s6Step149FrontPair=⟨s6Step149HeadFRow,s6Step149HeadGRow,s6Step149HeadFvRow,s6Step149HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step149FrontHead=⟨s6Step149ExitFRow,s6Step149ExitGRow,s6Step149ExitFvRow,s6Step149ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step149Add0A=s6Step149FrontHead.f.wires := by decide +kernel
  have gEq : s6Step149Add0B=s6Step149FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step149Add1A=s6Step149FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step149Add1B=s6Step149FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step149EntryFBefore s6Step149FrontBank 195 88 ⟨195,194,89,88⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step149FrontLog s6Step149FrontPlan
  · exact s6Step149Front_entry
  · exact s6Step149EntryBank_checked
  · exact s6Step149Front_sigma
  · rfl
  · exact s6Step149Front_branch
  · rfl
  · simpa only [s6Step149FrontPlan,pairEq] using s6Step149HeadBank_checked
  · simpa only [s6Step149FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step149F4_checked
  · exact s6Step149Counter_checked
  · rfl
  · simpa only [s6Step149FrontPlan,headEq] using s6Step149ExitBank_checked

private theorem s6Step149Complete_explicit_checked : compileHmrEarlyStepLog s6Step149EntryFBefore s6Step149FrontBank 195 88 ⟨195,194,89,88⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step149CompleteLog=some s6Step149CompletePlan := by
  let Q := s6Step149EarlyControlPlan
  have hq := s6Step149EarlyControl_plan_checked
  have fv1 : s6Step149CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step149CompleteOut.fv.payload[2]?.getD s6Step149CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step149CompleteOut.fv.payload[3]?.getD s6Step149CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step149CompleteOut.fv.payload[4]?.getD s6Step149CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step149EntryFBefore s6Step149EarlyControlArena s6Step149FrontBank 195 88 ⟨195,194,89,88⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step149CompleteLog s6Step149FrontPlan Q
    s6Step149Front_checked s6Step149Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step149Complete_owned s6Step149Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step149EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 s6Step149CompleteOut.fv.second (s6Step149CompleteOut.fv.payload[2]?.getD s6Step149CompleteOut.fv.sign) (s6Step149CompleteOut.fv.payload[3]?.getD s6Step149CompleteOut.fv.sign) (s6Step149CompleteOut.fv.payload[4]?.getD s6Step149CompleteOut.fv.sign) 859 42 s6Step149EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep149Arena : Arena := s6Step149EntryFBefore
def s6PrivateStep149Bank : WindowBank := s6Step149FrontBank
def s6PrivateStep149Spec : HmrSourceWalkStepLog := ⟨195,88,⟨195,194,89,88⟩,42,.early s6Step149CompleteLog⟩
def s6PrivateStep149Plan : HmrSourceStepPlan := .early s6Step149CompletePlan
theorem s6PrivateStep149_source : s6PrivateStep149Spec=s6ObservedLogs144[5] := rfl
theorem s6PrivateStep149_checked : compileHmrSourceStepLog s6PrivateStep149Arena s6PrivateStep149Bank
    s6PrivateStep149Spec.fgWidth s6PrivateStep149Spec.vWidth s6PrivateStep149Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 149 s6PrivateStep149Spec.need none s6PrivateStep149Spec.log=some s6PrivateStep149Plan := by
  change compileHmrSourceStepLog s6Step149EntryFBefore s6Step149FrontBank 195 88 ⟨195,194,89,88⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 149 42 none (.early s6Step149CompleteLog)=some (.early s6Step149CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 149<498)]
  rw [s6Step149Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
