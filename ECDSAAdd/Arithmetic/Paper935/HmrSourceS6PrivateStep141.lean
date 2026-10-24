import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep139
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

private def s6Step141CompleteMoves : List (Wire × Wire) := [(855,198)]

private def s6Step141EarlyControlLog : HmrEarlyControlLog := ⟨[855, 879, 786, 867, 807],[875],[882],[891, 903, 791, 825, 810, 894],[826]⟩

private def s6Step141FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[786], [879], [813], [850]],[[], [], [], []]⟩,[927],[768],[867],[807],[875, 882, 891, 903, 791, 825, 810, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903, 791, 825, 810, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[867, 807, 875, 882]⟩

private def s6Step141CompleteLog : HmrEarlyStepLog := ⟨s6Step141FrontLog,s6Step141CompleteMoves,s6Step141EarlyControlLog⟩

private def s6Step141ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454],795⟩

private def s6Step141ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩

private def s6Step141ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],777⟩

private def s6Step141ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩

private def s6Step141FrontOut : WindowBank := ⟨s6Step141ExitFOut,s6Step141ExitGOut,s6Step141ExitFvOut,s6Step141ExitGvOut⟩

private def s6Step141CompleteOut : WindowBank := s6Step141FrontOut.repacked s6Step141CompleteMoves

private def s6Step141EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step141EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step141EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step141EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step141EarlyControlPositiveArena,[875],s6Step141EarlyControlEqualityArena,[882],⟨⟨927,false⟩,[⟨⟨875,false⟩,882⟩]⟩⟩

private def s6Step141EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step141EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step141EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step141EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step141EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step141EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step141EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,855⟩,⟨⟨772,false⟩,879⟩,⟨⟨771,false⟩,786⟩,⟨⟨770,false⟩,867⟩,⟨⟨769,false⟩,807⟩]⟩

private def s6Step141EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step141EarlyControlZeroArena,s6Step141EarlyControlZeroPlan,s6Step141EarlyControlClassPlan,s6Step141EarlyControlFlagArena,s6Step141EarlyControlFittedArena,s6Step141EarlyControlHistoryArena,s6Step141EarlyControlSigmaArena,s6Step141EarlyControlOutputArena,s6Step141EarlyControlLog⟩

private def s6Step141CounterWork : List Wire := [867, 807, 875, 882]

private theorem s6Step141Counter_bounded : s6Step141CounterWork.toFinset⊆arenaWires := by norm_num [s6Step141CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step141HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step141CounterDuring : Arena := ⟨s6Step141HeadFvAfter.live∪s6Step141CounterWork.toFinset,Finset.union_subset s6Step141HeadFvAfter.bounded s6Step141Counter_bounded⟩

private def s6Step141EntryFFresh : List Wire := []

private def s6Step141EntryFvFresh : List Wire := []

private def s6Step141EntryGFresh : List Wire := []

private def s6Step141EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step141EntryGvAfter : Arena := s6Step141EntryFBefore

private def s6Step141EntryGvFresh : List Wire := []

private def s6Step141ExitFExtra : List Wire := [879]

private def s6Step141ExitGExtra : List Wire := [198, 786]

private def s6Step141ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,198),(199,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step141ExitGvAfter : Arena := s6Step141ExitFAfter

private def s6Step141Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step141Add0Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step141Add0_bounded : s6Step141Add0Work.toFinset⊆arenaWires := by
  have h : s6Step141Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step141Add0During : Arena := ⟨s6Step141Add0Arena.live∪s6Step141Add0Work.toFinset,Finset.union_subset s6Step141Add0Arena.bounded s6Step141Add0_bounded⟩

private def s6Step141Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step141Add1Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step141Add1_bounded : s6Step141Add1Work.toFinset⊆arenaWires := by
  have h : s6Step141Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step141Add1During : Arena := ⟨s6Step141Add1Arena.live∪s6Step141Add1Work.toFinset,Finset.union_subset s6Step141Add1Arena.bounded s6Step141Add1_bounded⟩

private def s6Step141F4FlagArena : Arena := ⟨s6Step141HeadFvAfter.live∪{867},Finset.union_subset s6Step141HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step141F4Plan : HmrHybridF4Plan := ⟨s6Step141F4FlagArena,[867],s6Step141Add0Arena,[807],s6Step141Add0During,s6Step141Add0Work,s6Step141Add1During,s6Step141Add1Work⟩

private def s6Step141HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 879],795⟩

private def s6Step141HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩

private def s6Step141HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 786],777⟩

private def s6Step141HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩

private def s6Step141FrontHead : WindowBank := ⟨s6Step141HeadFOut,s6Step141HeadGOut,s6Step141HeadFvOut,s6Step141HeadGvOut⟩

private def s6Step141EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454],795⟩

private def s6Step141EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩

private def s6Step141EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],777⟩

private def s6Step141EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩

private def s6Step141FrontPair : WindowBank := ⟨s6Step141EntryFOut,s6Step141EntryGOut,s6Step141EntryFvOut,s6Step141EntryGvOut⟩

private def s6Step141FrontSigmaArena : Arena := ⟨s6Step141EntryGvAfter.live∪{927},Finset.union_subset s6Step141EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step141HeadFFresh : List Wire := [879]

private def s6Step141HeadFvFresh : List Wire := [850]

private def s6Step141HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step141HeadGFresh : List Wire := [786]

private def s6Step141HeadGvFresh : List Wire := [813]

private def s6Step141FrontPlan : HmrSourceFront := ⟨s6Step141EntryGvAfter,s6Step141FrontPair,(growRow 795 s6Step141EntryFFresh ++ (growRow 777 s6Step141EntryGFresh ++ (growRow 776 s6Step141EntryFvFresh ++ (growRow 775 s6Step141EntryGvFresh ++ [])))),s6Step141FrontSigmaArena,[927],s6Step141HeadGBefore,[768],
  s6Step141HeadFvAfter,s6Step141FrontHead,(growRow 777 s6Step141HeadGFresh ++ (growRow 795 s6Step141HeadFFresh ++ (growRow 775 s6Step141HeadGvFresh ++ (growRow 776 s6Step141HeadFvFresh ++ [])))),s6Step141F4Plan,s6Step141CounterDuring,s6Step141CounterWork,s6Step141ExitGvAfter,s6Step141FrontOut,(shrinkRow 777 s6Step141ExitGExtra ++ (shrinkRow 795 s6Step141ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step141CompletePlan : HmrEarlyStepPlan := ⟨s6Step141FrontPlan,s6Step141EarlyControlArena,s6Step141EarlyControlPlan,s6Step141CompleteMoves⟩

private theorem s6Step141Complete_apart : List.Disjoint (s6Step141CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [927, 768, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924] := by
  have nd : ((s6Step141CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[927, 768, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step141Complete_owned : (s6Step141CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step141EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step141EarlyControlArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step141CompleteRelocationMove0Borrowed : Arena := ⟨s6Step141ExitGvAfter.live∪{198},Finset.union_subset s6Step141ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step141CompleteRelocation_move0_owned : 855∈s6Step141ExitGvAfter.live := by norm_num [s6Step141ExitGvAfter,s6Step141ExitFAfter,arenaWires]

private theorem s6Step141CompleteRelocation_move0_reserve : s6Step141ExitGvAfter.reserve {198}=some s6Step141CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step141ExitGvAfter,s6Step141ExitFAfter,arenaWires]
  · rfl

private theorem s6Step141CompleteRelocation_move0_retire : s6Step141CompleteRelocationMove0Borrowed.retireSet {855}=s6Step141EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step141CompleteRelocationMove0Borrowed s6Step141EarlyControlArena {855}
  change s6Step141EarlyControlArena.live=(s6Step141ExitGvAfter.live∪{198})\{855}
  apply hmrArena_update_of_filter_check s6Step141ExitGvAfter s6Step141EarlyControlArena (fun q => ([(0,198),(199,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [198] [855] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step141CompleteRelocation_checked : s6Step141ExitGvAfter.checkRepack [(855,198)]=some s6Step141EarlyControlArena := by
  have tail1 : s6Step141EarlyControlArena.checkRepack []=some s6Step141EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step141ExitGvAfter s6Step141CompleteRelocationMove0Borrowed s6Step141EarlyControlArena s6Step141EarlyControlArena 855 198 []
    s6Step141CompleteRelocation_move0_owned s6Step141CompleteRelocation_move0_reserve s6Step141CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step141Complete_repack : s6Step141ExitGvAfter.checkRepack s6Step141CompleteMoves=some s6Step141EarlyControlArena := by
  simpa only [s6Step141CompleteMoves] using s6Step141CompleteRelocation_checked

private theorem s6Step141EarlyControl_branchOwned : ([768] : List Wire).toFinset⊆s6Step141EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step141EarlyControlSigmaArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141EarlyControl_branch : compileHmrBranchRetirement s6Step141EarlyControlSigmaArena 768=some s6Step141EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step141EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step141EarlyControlSigmaArena s6Step141EarlyControlOutputArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [768] rfl rfl
    decide +kernel

private theorem s6Step141EarlyControl_classEqualityBorrow : s6Step141EarlyControlPositiveArena.checkBorrow (([927, 875] : List Wire).length-1) s6Step141EarlyControlLog.classWork=some s6Step141EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step141EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step141EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step141EarlyControlEqualityArena,s6Step141EarlyControlPositiveArena,s6Step141EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step141EarlyControl_classEqualityOwned : ([927, 875] : List Wire).toFinset⊆s6Step141EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step141EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step141EarlyControl_classEquality : compileHmrEqualityLog s6Step141EarlyControlPositiveArena [927, 875] 0 s6Step141EarlyControlLog.classWork=some (s6Step141EarlyControlEqualityArena,s6Step141EarlyControlLog.classWork,s6Step141EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step141EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step141EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step141EarlyControl_classOwned : ([769, 807, 927] : List Wire).toFinset⊆s6Step141EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step141EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step141EarlyControl_positiveBorrow : s6Step141EarlyControlZeroArena.checkBorrow (1) s6Step141EarlyControlLog.positiveWork=some s6Step141EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step141EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step141EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step141EarlyControlPositiveArena,s6Step141EarlyControlZeroArena,s6Step141EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step141EarlyControl_class : compileHmrSourceClassLog s6Step141EarlyControlZeroArena false 769 s6Step141EarlyControlZeroPlan.top 0 927 s6Step141EarlyControlLog.positiveWork s6Step141EarlyControlLog.classWork=some s6Step141EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step141EarlyControlClassPlan s6Step141EarlyControlZeroArena false 769 s6Step141EarlyControlZeroPlan.top 0 927
  constructor
  · decide +kernel
  · exact s6Step141EarlyControl_classOwned
  · exact s6Step141EarlyControl_positiveBorrow
  · exact s6Step141EarlyControl_classEquality

private theorem s6Step141EarlyControl_entryRecordOwned : ([768, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924] : List Wire).toFinset⊆s6Step141EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step141EarlyControlArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141EarlyControl_entrySigmaOwned : ([927, 254] : List Wire).toFinset⊆s6Step141EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step141EarlyControlArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141EarlyControl_fitBorrow : s6Step141EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924] : List Wire).length)) s6Step141EarlyControlLog.recordFresh=some s6Step141EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step141EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step141EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step141EarlyControlFittedArena,s6Step141EarlyControlFlagArena,s6Step141EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step141EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924] : List Wire).toFinset⊆s6Step141EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step141EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step141EarlyControl_fit : compileHmrRecordGrowLog s6Step141EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924] 42 s6Step141EarlyControlLog.recordFresh=some s6Step141EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step141EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step141EarlyControl_fitBorrow

private theorem s6Step141EarlyControl_flagsBorrow : s6Step141EarlyControlEqualityArena.checkBorrow (6) s6Step141EarlyControlLog.flagWork=some s6Step141EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step141EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step141EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step141EarlyControlFlagArena,s6Step141EarlyControlEqualityArena,s6Step141EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step141EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s6Step141EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step141EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step141EarlyControl_flags : compileHmrFlagsLog s6Step141EarlyControlClassPlan.equalityArena s6Step141EarlyControlClassPlan.equality.top 253 252 251 s6Step141EarlyControlLog.flagWork=some s6Step141EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step141EarlyControl_flagsOwned⟩
  · exact s6Step141EarlyControl_flagsBorrow

private theorem s6Step141EarlyControl_historyBorrow : s6Step141EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924] : List Wire).length)) s6Step141EarlyControlLog.recordFresh=some s6Step141EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step141EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step141EarlyControlArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step141EarlyControlArena s6Step141EarlyControlHistoryArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step141EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step141EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step141EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924] : List Wire).toFinset⊆s6Step141EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step141EarlyControlArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141EarlyControl_history : compileHmrRecordGrowLog s6Step141EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924] 42 s6Step141EarlyControlLog.recordFresh=some s6Step141EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step141EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step141EarlyControl_historyBorrow

private theorem s6Step141EarlyControl_sigmaOwned : ([254, 927] : List Wire).toFinset⊆s6Step141EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step141EarlyControlHistoryArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141EarlyControl_sigmaReleaseOwned : ([927] : List Wire).toFinset⊆s6Step141EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step141EarlyControlHistoryArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141EarlyControl_sigmaRelease : s6Step141EarlyControlHistoryArena.release {927} (fun _ => false)=some s6Step141EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step141EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step141EarlyControlHistoryArena s6Step141EarlyControlSigmaArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [927] rfl rfl
    decide +kernel

private theorem s6Step141EarlyControl_sigma : compileHmrSigmaDropLog s6Step141EarlyControlHistoryArena false 0 0 254 927 []=some s6Step141EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step141EarlyControl_sigmaOwned⟩
  · exact s6Step141EarlyControl_sigmaRelease

private theorem s6Step141EarlyControl_zeroBorrow : s6Step141EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step141EarlyControlLog.zeroWork=some s6Step141EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step141EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step141EarlyControlArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step141EarlyControlArena s6Step141EarlyControlZeroArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step141EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step141EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step141EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step141EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step141EarlyControlArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141EarlyControl_zero : compileHmrEqualityLog s6Step141EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step141EarlyControlLog.zeroWork=some (s6Step141EarlyControlZeroArena,s6Step141EarlyControlLog.zeroWork,s6Step141EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step141EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step141EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step141EarlyControl_logged : s6Step141EarlyControlPlan.Logged s6Step141EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924] 769 927 254 253 252 251 768 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step141EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step141EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step141EarlyControl_zero
  · exact s6Step141EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step141EarlyControl_flags
  · exact s6Step141EarlyControl_fit
  · exact s6Step141EarlyControl_history
  · exact s6Step141EarlyControl_sigma
  · exact s6Step141EarlyControl_branch

private theorem s6Step141EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step141EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924] 769 927 254 253 252 251 768 42 s6Step141EarlyControlLog=some s6Step141EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step141EarlyControlPlan s6Step141EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924] 769 927 254 253 252 251 768 42 s6Step141EarlyControl_logged

private def s6Step141EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454],795⟩

private def s6Step141EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩

private def s6Step141EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],777⟩

private def s6Step141EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩

private def s6Step141FrontBank : WindowBank := ⟨s6Step141EntryFRow,s6Step141EntryGRow,s6Step141EntryFvRow,s6Step141EntryGvRow⟩

private def s6Step141Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 879, 795]

private def s6Step141Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 786, 777]

private def s6Step141Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 776]

private def s6Step141Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 775]

private theorem s6Step141Counter_apart : Disjoint s6Step141HeadFvAfter.live s6Step141CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step141HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141Counter_borrowed : s6Step141HeadFvAfter.checkBorrow 4 s6Step141CounterWork=some s6Step141CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step141HeadFvAfter s6Step141CounterDuring s6Step141CounterWork.toFinset s6Step141Counter_bounded s6Step141Counter_apart rfl

private theorem s6Step141Counter_owned : (927::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step141HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step141HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141Counter_checked : compileHmrCounterStepLog s6Step141HeadFvAfter true 927 [774, 773, 772, 771, 770, 769] s6Step141CounterWork=some s6Step141CounterDuring := by
  have owned : ∀q∈927::[774, 773, 772, 771, 770, 769],q∈s6Step141HeadFvAfter.live := fun q hq => s6Step141Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step141Counter_borrowed

private def s6Step141EntryFAfter : Arena := s6Step141EntryFBefore

private theorem s6Step141EntryBank_incomingDistinct : ([s6Step141EntryFRow,s6Step141EntryGRow,s6Step141EntryFvRow,s6Step141EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141EntryF_Incoming : rowsOwned s6Step141EntryFBefore [s6Step141EntryFRow,s6Step141EntryGRow,s6Step141EntryFvRow,s6Step141EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step141EntryFRow,s6Step141EntryGRow,s6Step141EntryFvRow,s6Step141EntryGvRow] 0 s6Step141EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step141EntryFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step141EntryBank_outgoingOwned : rowsOwned s6Step141EntryGvAfter [s6Step141EntryFOut,s6Step141EntryGOut,s6Step141EntryFvOut,s6Step141EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step141EntryGvAfter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step141EntryF_Outgoing : rowsOwned s6Step141EntryGvAfter [s6Step141EntryFOut,s6Step141EntryGOut,s6Step141EntryFvOut,s6Step141EntryGvOut] :=
  hmrRows_owned_drop s6Step141EntryGvAfter [s6Step141EntryFOut,s6Step141EntryGOut,s6Step141EntryFvOut,s6Step141EntryGvOut] 0 s6Step141EntryBank_outgoingOwned

private theorem s6Step141EntryF_distinct : (s6Step141EntryFRow.sign::s6Step141EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141EntryF_owned : (s6Step141EntryFRow.sign::s6Step141EntryFRow.payload).toFinset⊆s6Step141EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step141EntryFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141EntryF_reserved : s6Step141EntryFBefore.reserve s6Step141EntryFFresh.toFinset=some s6Step141EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step141EntryFFresh,arenaWires]
  · norm_num [s6Step141EntryFBefore,s6Step141EntryFFresh,arenaWires]
  · simp only [s6Step141EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step141EntryF_checked : planRowResizeLog s6Step141EntryFBefore s6Step141EntryFRow 199 s6Step141EntryFFresh=
    some (s6Step141EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454],795⟩,growRow 795 s6Step141EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step141EntryFBefore s6Step141EntryFAfter s6Step141EntryFRow 199 s6Step141EntryFFresh
    s6Step141EntryF_distinct s6Step141EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step141EntryF_reserved
  have rowEq : WindowRow.mk (s6Step141EntryFRow.payload++s6Step141EntryFFresh) s6Step141EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step141EntryFvAfter : Arena := s6Step141EntryFBefore

private def s6Step141EntryFvBefore : Arena := s6Step141EntryFBefore

private theorem s6Step141EntryFv_Incoming : rowsOwned s6Step141EntryFvBefore [s6Step141EntryFvRow,s6Step141EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step141EntryFRow,s6Step141EntryGRow,s6Step141EntryFvRow,s6Step141EntryGvRow] 2 s6Step141EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step141EntryFvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step141EntryFv_Outgoing : rowsOwned s6Step141EntryGvAfter [s6Step141EntryFvOut,s6Step141EntryGvOut] :=
  hmrRows_owned_drop s6Step141EntryGvAfter [s6Step141EntryFOut,s6Step141EntryGOut,s6Step141EntryFvOut,s6Step141EntryGvOut] 2 s6Step141EntryBank_outgoingOwned

private theorem s6Step141EntryFv_distinct : (s6Step141EntryFvRow.sign::s6Step141EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141EntryFv_owned : (s6Step141EntryFvRow.sign::s6Step141EntryFvRow.payload).toFinset⊆s6Step141EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step141EntryFvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141EntryFv_reserved : s6Step141EntryFvBefore.reserve s6Step141EntryFvFresh.toFinset=some s6Step141EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step141EntryFvFresh,arenaWires]
  · norm_num [s6Step141EntryFvBefore,s6Step141EntryFBefore,s6Step141EntryFvFresh,arenaWires]
  · simp only [s6Step141EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step141EntryFv_checked : planRowResizeLog s6Step141EntryFvBefore s6Step141EntryFvRow 84 s6Step141EntryFvFresh=
    some (s6Step141EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩,growRow 776 s6Step141EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step141EntryFvBefore s6Step141EntryFvAfter s6Step141EntryFvRow 84 s6Step141EntryFvFresh
    s6Step141EntryFv_distinct s6Step141EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step141EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step141EntryFvRow.payload++s6Step141EntryFvFresh) s6Step141EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step141EntryGAfter : Arena := s6Step141EntryFBefore

private def s6Step141EntryGBefore : Arena := s6Step141EntryFBefore

private theorem s6Step141EntryG_Incoming : rowsOwned s6Step141EntryGBefore [s6Step141EntryGRow,s6Step141EntryFvRow,s6Step141EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step141EntryFRow,s6Step141EntryGRow,s6Step141EntryFvRow,s6Step141EntryGvRow] 1 s6Step141EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step141EntryGBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step141EntryG_Outgoing : rowsOwned s6Step141EntryGvAfter [s6Step141EntryGOut,s6Step141EntryFvOut,s6Step141EntryGvOut] :=
  hmrRows_owned_drop s6Step141EntryGvAfter [s6Step141EntryFOut,s6Step141EntryGOut,s6Step141EntryFvOut,s6Step141EntryGvOut] 1 s6Step141EntryBank_outgoingOwned

private theorem s6Step141EntryG_distinct : (s6Step141EntryGRow.sign::s6Step141EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141EntryG_owned : (s6Step141EntryGRow.sign::s6Step141EntryGRow.payload).toFinset⊆s6Step141EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step141EntryGBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141EntryG_reserved : s6Step141EntryGBefore.reserve s6Step141EntryGFresh.toFinset=some s6Step141EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step141EntryGFresh,arenaWires]
  · norm_num [s6Step141EntryGBefore,s6Step141EntryFBefore,s6Step141EntryGFresh,arenaWires]
  · simp only [s6Step141EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step141EntryG_checked : planRowResizeLog s6Step141EntryGBefore s6Step141EntryGRow 199 s6Step141EntryGFresh=
    some (s6Step141EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],777⟩,growRow 777 s6Step141EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step141EntryGBefore s6Step141EntryGAfter s6Step141EntryGRow 199 s6Step141EntryGFresh
    s6Step141EntryG_distinct s6Step141EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step141EntryG_reserved
  have rowEq : WindowRow.mk (s6Step141EntryGRow.payload++s6Step141EntryGFresh) s6Step141EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step141EntryGvBefore : Arena := s6Step141EntryFBefore

private theorem s6Step141EntryGv_Incoming : rowsOwned s6Step141EntryGvBefore [s6Step141EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step141EntryFRow,s6Step141EntryGRow,s6Step141EntryFvRow,s6Step141EntryGvRow] 3 s6Step141EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step141EntryGvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step141EntryGv_Outgoing : rowsOwned s6Step141EntryGvAfter [s6Step141EntryGvOut] :=
  hmrRows_owned_drop s6Step141EntryGvAfter [s6Step141EntryFOut,s6Step141EntryGOut,s6Step141EntryFvOut,s6Step141EntryGvOut] 3 s6Step141EntryBank_outgoingOwned

private theorem s6Step141EntryGv_distinct : (s6Step141EntryGvRow.sign::s6Step141EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141EntryGv_owned : (s6Step141EntryGvRow.sign::s6Step141EntryGvRow.payload).toFinset⊆s6Step141EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step141EntryGvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141EntryGv_reserved : s6Step141EntryGvBefore.reserve s6Step141EntryGvFresh.toFinset=some s6Step141EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step141EntryGvFresh,arenaWires]
  · norm_num [s6Step141EntryGvBefore,s6Step141EntryFBefore,s6Step141EntryGvFresh,arenaWires]
  · simp only [s6Step141EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step141EntryGv_checked : planRowResizeLog s6Step141EntryGvBefore s6Step141EntryGvRow 84 s6Step141EntryGvFresh=
    some (s6Step141EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩,growRow 775 s6Step141EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step141EntryGvBefore s6Step141EntryGvAfter s6Step141EntryGvRow 84 s6Step141EntryGvFresh
    s6Step141EntryGv_distinct s6Step141EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step141EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step141EntryGvRow.payload++s6Step141EntryGvFresh) s6Step141EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step141EntryBank_rows : planWindowRowsLog s6Step141EntryFBefore [(s6Step141EntryFRow,199),(s6Step141EntryGRow,199),(s6Step141EntryFvRow,84),(s6Step141EntryGvRow,84)] [s6Step141EntryFFresh,s6Step141EntryGFresh,s6Step141EntryFvFresh,s6Step141EntryGvFresh]=
    some (s6Step141EntryGvAfter,[s6Step141EntryFOut,s6Step141EntryGOut,s6Step141EntryFvOut,s6Step141EntryGvOut],(growRow 795 s6Step141EntryFFresh ++ (growRow 777 s6Step141EntryGFresh ++ (growRow 776 s6Step141EntryFvFresh ++ (growRow 775 s6Step141EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step141EntryGvAfter [] []=some (s6Step141EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step141EntryGvBefore s6Step141EntryGvAfter s6Step141EntryGvAfter
    s6Step141EntryGvRow s6Step141EntryGvOut 84 s6Step141EntryGvFresh [] [] []
    (growRow 775 s6Step141EntryGvFresh) ([]) s6Step141EntryGv_Incoming s6Step141EntryGv_checked h4 s6Step141EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step141EntryFvBefore s6Step141EntryFvAfter s6Step141EntryGvAfter
    s6Step141EntryFvRow s6Step141EntryFvOut 84 s6Step141EntryFvFresh [(s6Step141EntryGvRow,84)] [s6Step141EntryGvFresh] [s6Step141EntryGvOut]
    (growRow 776 s6Step141EntryFvFresh) ((growRow 775 s6Step141EntryGvFresh ++ [])) s6Step141EntryFv_Incoming s6Step141EntryFv_checked h3 s6Step141EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step141EntryGBefore s6Step141EntryGAfter s6Step141EntryGvAfter
    s6Step141EntryGRow s6Step141EntryGOut 199 s6Step141EntryGFresh [(s6Step141EntryFvRow,84),(s6Step141EntryGvRow,84)] [s6Step141EntryFvFresh,s6Step141EntryGvFresh] [s6Step141EntryFvOut,s6Step141EntryGvOut]
    (growRow 777 s6Step141EntryGFresh) ((growRow 776 s6Step141EntryFvFresh ++ (growRow 775 s6Step141EntryGvFresh ++ []))) s6Step141EntryG_Incoming s6Step141EntryG_checked h2 s6Step141EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step141EntryFBefore s6Step141EntryFAfter s6Step141EntryGvAfter
    s6Step141EntryFRow s6Step141EntryFOut 199 s6Step141EntryFFresh [(s6Step141EntryGRow,199),(s6Step141EntryFvRow,84),(s6Step141EntryGvRow,84)] [s6Step141EntryGFresh,s6Step141EntryFvFresh,s6Step141EntryGvFresh] [s6Step141EntryGOut,s6Step141EntryFvOut,s6Step141EntryGvOut]
    (growRow 795 s6Step141EntryFFresh) ((growRow 777 s6Step141EntryGFresh ++ (growRow 776 s6Step141EntryFvFresh ++ (growRow 775 s6Step141EntryGvFresh ++ [])))) s6Step141EntryF_Incoming s6Step141EntryF_checked h1 s6Step141EntryF_Outgoing
  exact h0

private theorem s6Step141EntryBank_checked : compileHmrBankResizeLog .entry s6Step141EntryFBefore ⟨s6Step141EntryFRow,s6Step141EntryGRow,s6Step141EntryFvRow,s6Step141EntryGvRow⟩ ⟨199,199,84,84⟩ [s6Step141EntryFFresh,s6Step141EntryGFresh,s6Step141EntryFvFresh,s6Step141EntryGvFresh]=
    some (s6Step141EntryGvAfter,⟨s6Step141EntryFOut,s6Step141EntryGOut,s6Step141EntryFvOut,s6Step141EntryGvOut⟩,(growRow 795 s6Step141EntryFFresh ++ (growRow 777 s6Step141EntryGFresh ++ (growRow 776 s6Step141EntryFvFresh ++ (growRow 775 s6Step141EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step141EntryBank_rows]
  rfl

private def s6Step141ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,198),(199,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step141ExitFBefore : Arena := s6Step141ExitGAfter

private def s6Step141ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 879],795⟩

private def s6Step141ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩

private def s6Step141ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 786],777⟩

private def s6Step141ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩

private theorem s6Step141ExitBank_incomingDistinct : ([s6Step141ExitGRow,s6Step141ExitFRow,s6Step141ExitFvRow,s6Step141ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141ExitF_Incoming : rowsOwned s6Step141ExitFBefore [s6Step141ExitFRow,s6Step141ExitFvRow,s6Step141ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step141ExitGRow,s6Step141ExitFRow,s6Step141ExitFvRow,s6Step141ExitGvRow] 1 s6Step141ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step141ExitFBefore (fun q => ([(0,198),(199,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step141ExitBank_outgoingOwned : rowsOwned s6Step141ExitGvAfter [s6Step141ExitGOut,s6Step141ExitFOut,s6Step141ExitFvOut,s6Step141ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step141ExitGvAfter (fun q => ([(0,198),(199,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step141ExitF_Outgoing : rowsOwned s6Step141ExitGvAfter [s6Step141ExitFOut,s6Step141ExitFvOut,s6Step141ExitGvOut] :=
  hmrRows_owned_drop s6Step141ExitGvAfter [s6Step141ExitGOut,s6Step141ExitFOut,s6Step141ExitFvOut,s6Step141ExitGvOut] 1 s6Step141ExitBank_outgoingOwned

private theorem s6Step141ExitF_distinct : (s6Step141ExitFRow.sign::s6Step141ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141ExitF_owned : (s6Step141ExitFRow.sign::s6Step141ExitFRow.payload).toFinset⊆s6Step141ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step141ExitFBefore (fun q => ([(0,198),(199,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141ExitF_retired : s6Step141ExitFBefore.retireSet s6Step141ExitFExtra.toFinset=s6Step141ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step141ExitFBefore s6Step141ExitFAfter s6Step141ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step141ExitFBefore s6Step141ExitFAfter (fun q => ([(0,198),(199,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,198),(199,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step141ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step141ExitF_checked : planRowResizeLog s6Step141ExitFBefore s6Step141ExitFRow 199 []=
    some (s6Step141ExitFAfter,s6Step141ExitFOut,shrinkRow 795 s6Step141ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step141ExitFBefore s6Step141ExitFRow 199 s6Step141ExitF_distinct s6Step141ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step141ExitFRow.payload.take 199) s6Step141ExitFRow.sign=s6Step141ExitFOut := by decide +kernel
  have hi : s6Step141ExitFRow.payload.drop 199=s6Step141ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step141ExitF_retired] at result
  exact result

private def s6Step141ExitFvAfter : Arena := s6Step141ExitFAfter

private def s6Step141ExitFvBefore : Arena := s6Step141ExitFAfter

private theorem s6Step141ExitFv_Incoming : rowsOwned s6Step141ExitFvBefore [s6Step141ExitFvRow,s6Step141ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step141ExitGRow,s6Step141ExitFRow,s6Step141ExitFvRow,s6Step141ExitGvRow] 2 s6Step141ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step141ExitFvBefore (fun q => ([(0,198),(199,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step141ExitFv_Outgoing : rowsOwned s6Step141ExitGvAfter [s6Step141ExitFvOut,s6Step141ExitGvOut] :=
  hmrRows_owned_drop s6Step141ExitGvAfter [s6Step141ExitGOut,s6Step141ExitFOut,s6Step141ExitFvOut,s6Step141ExitGvOut] 2 s6Step141ExitBank_outgoingOwned

private theorem s6Step141ExitFv_distinct : (s6Step141ExitFvRow.sign::s6Step141ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141ExitFv_owned : (s6Step141ExitFvRow.sign::s6Step141ExitFvRow.payload).toFinset⊆s6Step141ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step141ExitFvBefore (fun q => ([(0,198),(199,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141ExitFv_reserved : s6Step141ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step141ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step141ExitFv_checked : planRowResizeLog s6Step141ExitFvBefore s6Step141ExitFvRow 85 []=
    some (s6Step141ExitFvAfter,s6Step141ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step141ExitFvBefore s6Step141ExitFvAfter s6Step141ExitFvRow 85 []
    s6Step141ExitFv_distinct s6Step141ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step141ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step141ExitFvRow.payload++[]) s6Step141ExitFvRow.sign=s6Step141ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step141ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step141ExitG_Incoming : rowsOwned s6Step141ExitGBefore [s6Step141ExitGRow,s6Step141ExitFRow,s6Step141ExitFvRow,s6Step141ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step141ExitGRow,s6Step141ExitFRow,s6Step141ExitFvRow,s6Step141ExitGvRow] 0 s6Step141ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step141ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step141ExitG_Outgoing : rowsOwned s6Step141ExitGvAfter [s6Step141ExitGOut,s6Step141ExitFOut,s6Step141ExitFvOut,s6Step141ExitGvOut] :=
  hmrRows_owned_drop s6Step141ExitGvAfter [s6Step141ExitGOut,s6Step141ExitFOut,s6Step141ExitFvOut,s6Step141ExitGvOut] 0 s6Step141ExitBank_outgoingOwned

private theorem s6Step141ExitG_distinct : (s6Step141ExitGRow.sign::s6Step141ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141ExitG_owned : (s6Step141ExitGRow.sign::s6Step141ExitGRow.payload).toFinset⊆s6Step141ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step141ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141ExitG_retired : s6Step141ExitGBefore.retireSet s6Step141ExitGExtra.toFinset=s6Step141ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step141ExitGBefore s6Step141ExitGAfter s6Step141ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step141ExitGBefore s6Step141ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,198),(199,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step141ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step141ExitG_checked : planRowResizeLog s6Step141ExitGBefore s6Step141ExitGRow 198 []=
    some (s6Step141ExitGAfter,s6Step141ExitGOut,shrinkRow 777 s6Step141ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step141ExitGBefore s6Step141ExitGRow 198 s6Step141ExitG_distinct s6Step141ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step141ExitGRow.payload.take 198) s6Step141ExitGRow.sign=s6Step141ExitGOut := by decide +kernel
  have hi : s6Step141ExitGRow.payload.drop 198=s6Step141ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step141ExitG_retired] at result
  exact result

private def s6Step141ExitGvBefore : Arena := s6Step141ExitFAfter

private theorem s6Step141ExitGv_Incoming : rowsOwned s6Step141ExitGvBefore [s6Step141ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step141ExitGRow,s6Step141ExitFRow,s6Step141ExitFvRow,s6Step141ExitGvRow] 3 s6Step141ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step141ExitGvBefore (fun q => ([(0,198),(199,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step141ExitGv_Outgoing : rowsOwned s6Step141ExitGvAfter [s6Step141ExitGvOut] :=
  hmrRows_owned_drop s6Step141ExitGvAfter [s6Step141ExitGOut,s6Step141ExitFOut,s6Step141ExitFvOut,s6Step141ExitGvOut] 3 s6Step141ExitBank_outgoingOwned

private theorem s6Step141ExitGv_distinct : (s6Step141ExitGvRow.sign::s6Step141ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141ExitGv_owned : (s6Step141ExitGvRow.sign::s6Step141ExitGvRow.payload).toFinset⊆s6Step141ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step141ExitGvBefore (fun q => ([(0,198),(199,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141ExitGv_reserved : s6Step141ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step141ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step141ExitGv_checked : planRowResizeLog s6Step141ExitGvBefore s6Step141ExitGvRow 85 []=
    some (s6Step141ExitGvAfter,s6Step141ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step141ExitGvBefore s6Step141ExitGvAfter s6Step141ExitGvRow 85 []
    s6Step141ExitGv_distinct s6Step141ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step141ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step141ExitGvRow.payload++[]) s6Step141ExitGvRow.sign=s6Step141ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step141ExitBank_rows : planWindowRowsLog s6Step141ExitGBefore [(s6Step141ExitGRow,198),(s6Step141ExitFRow,199),(s6Step141ExitFvRow,85),(s6Step141ExitGvRow,85)] [[],[],[],[]]=
    some (s6Step141ExitGvAfter,[s6Step141ExitGOut,s6Step141ExitFOut,s6Step141ExitFvOut,s6Step141ExitGvOut],(shrinkRow 777 s6Step141ExitGExtra ++ (shrinkRow 795 s6Step141ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step141ExitGvAfter [] []=some (s6Step141ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step141ExitGvBefore s6Step141ExitGvAfter s6Step141ExitGvAfter
    s6Step141ExitGvRow s6Step141ExitGvOut 85 [] [] [] []
    (growRow 775 []) ([]) s6Step141ExitGv_Incoming s6Step141ExitGv_checked h4 s6Step141ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step141ExitFvBefore s6Step141ExitFvAfter s6Step141ExitGvAfter
    s6Step141ExitFvRow s6Step141ExitFvOut 85 [] [(s6Step141ExitGvRow,85)] [[]] [s6Step141ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step141ExitFv_Incoming s6Step141ExitFv_checked h3 s6Step141ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step141ExitFBefore s6Step141ExitFAfter s6Step141ExitGvAfter
    s6Step141ExitFRow s6Step141ExitFOut 199 [] [(s6Step141ExitFvRow,85),(s6Step141ExitGvRow,85)] [[],[]] [s6Step141ExitFvOut,s6Step141ExitGvOut]
    (shrinkRow 795 s6Step141ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step141ExitF_Incoming s6Step141ExitF_checked h2 s6Step141ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step141ExitGBefore s6Step141ExitGAfter s6Step141ExitGvAfter
    s6Step141ExitGRow s6Step141ExitGOut 198 [] [(s6Step141ExitFRow,199),(s6Step141ExitFvRow,85),(s6Step141ExitGvRow,85)] [[],[],[]] [s6Step141ExitFOut,s6Step141ExitFvOut,s6Step141ExitGvOut]
    (shrinkRow 777 s6Step141ExitGExtra) ((shrinkRow 795 s6Step141ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step141ExitG_Incoming s6Step141ExitG_checked h1 s6Step141ExitG_Outgoing
  exact h0

private theorem s6Step141ExitBank_checked : compileHmrBankResizeLog .exit s6Step141ExitGBefore ⟨s6Step141ExitFRow,s6Step141ExitGRow,s6Step141ExitFvRow,s6Step141ExitGvRow⟩ ⟨199,198,85,85⟩ [[],[],[],[]]=
    some (s6Step141ExitGvAfter,⟨s6Step141ExitFOut,s6Step141ExitGOut,s6Step141ExitFvOut,s6Step141ExitGvOut⟩,(shrinkRow 777 s6Step141ExitGExtra ++ (shrinkRow 795 s6Step141ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step141ExitBank_rows]
  rfl

private theorem s6Step141Add0_apart : Disjoint s6Step141Add0Arena.live s6Step141Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step141Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step141Add0_card : s6Step141Add0Arena.live.card=881 := by
  decide +kernel

private theorem s6Step141Add0_borrowed : s6Step141Add0Arena.checkBorrow (hmrHybridCount s6Step141Add0Arena s6Step141Add0B.length) s6Step141Add0Work=some s6Step141Add0During := by
  have len : s6Step141Add0Work.length=hmrHybridCount s6Step141Add0Arena s6Step141Add0B.length := by
    rw [hmrHybridCount,s6Step141Add0_card]
    decide +kernel
  have nd : s6Step141Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step141Add0Arena s6Step141Add0During s6Step141Add0Work.toFinset s6Step141Add0_bounded s6Step141Add0_apart rfl

private theorem s6Step141Add0_distinct : (867::768::807::(s6Step141Add0A++s6Step141Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141Add0_owned : (867::768::807::(s6Step141Add0A++s6Step141Add0B)).toFinset⊆s6Step141Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step141Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step141Add0_checked : compileHmrHybridCinLog s6Step141Add0Arena 768 867 807 s6Step141Add0A s6Step141Add0B s6Step141Add0Work=some s6Step141Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step141Add0Arena s6Step141Add0During 768 867 807 s6Step141Add0A s6Step141Add0B s6Step141Add0Work
    (by decide +kernel) (by decide +kernel) s6Step141Add0_distinct
    (fun q hq => s6Step141Add0_owned (List.mem_toFinset.mpr hq)) s6Step141Add0_borrowed

private theorem s6Step141Add1_apart : Disjoint s6Step141Add1Arena.live s6Step141Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step141Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step141Add1_card : s6Step141Add1Arena.live.card=881 := by
  decide +kernel

private theorem s6Step141Add1_borrowed : s6Step141Add1Arena.checkBorrow (hmrHybridCount s6Step141Add1Arena s6Step141Add1B.length) s6Step141Add1Work=some s6Step141Add1During := by
  have len : s6Step141Add1Work.length=hmrHybridCount s6Step141Add1Arena s6Step141Add1B.length := by
    rw [hmrHybridCount,s6Step141Add1_card]
    decide +kernel
  have nd : s6Step141Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step141Add1Arena s6Step141Add1During s6Step141Add1Work.toFinset s6Step141Add1_bounded s6Step141Add1_apart rfl

private theorem s6Step141Add1_distinct : (867::768::807::(s6Step141Add1A++s6Step141Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141Add1_owned : (867::768::807::(s6Step141Add1A++s6Step141Add1B)).toFinset⊆s6Step141Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step141Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step141Add1_checked : compileHmrHybridCinLog s6Step141Add1Arena 768 867 807 s6Step141Add1A s6Step141Add1B s6Step141Add1Work=some s6Step141Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step141Add1Arena s6Step141Add1During 768 867 807 s6Step141Add1A s6Step141Add1B s6Step141Add1Work
    (by decide +kernel) (by decide +kernel) s6Step141Add1_distinct
    (fun q hq => s6Step141Add1_owned (List.mem_toFinset.mpr hq)) s6Step141Add1_borrowed

private theorem s6Step141F4_apart : Disjoint (s6Step141Add0A++s6Step141Add0B).toFinset (s6Step141Add1A++s6Step141Add1B).toFinset := by
  have nd : ((s6Step141Add0A++s6Step141Add0B)++(s6Step141Add1A++s6Step141Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step141F4_carry : s6Step141F4FlagArena.checkBorrow 1 [807]=some s6Step141Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step141F4FlagArena,s6Step141HeadFvAfter,arenaWires]
  · change s6Step141Add0Arena.live=(s6Step141HeadFvAfter.live∪{867})∪{807}
    apply hmrArena_union_pair_of_filter_check s6Step141HeadFvAfter s6Step141Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) 867 807 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step141F4_distinct : (927::768::867::807::((s6Step141Add0A++s6Step141Add1A)++(s6Step141Add0B++s6Step141Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141F4_flag : s6Step141HeadFvAfter.checkBorrow 1 [867]=some s6Step141F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step141HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step141F4_owned : (927::768::((s6Step141Add0A++s6Step141Add1A)++(s6Step141Add0B++s6Step141Add1B))).toFinset⊆s6Step141HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step141HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141F4_checked : compileHmrHybridF4Log s6Step141HeadFvAfter 927 768 s6Step141Add0A s6Step141Add0B s6Step141Add1A s6Step141Add1B [867] [807] s6Step141Add0Work s6Step141Add1Work=some s6Step141F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step141HeadFvAfter s6Step141F4FlagArena s6Step141Add0Arena s6Step141Add0During s6Step141Add1During 927 768
    s6Step141Add0A s6Step141Add0B s6Step141Add1A s6Step141Add1B [867] [807] s6Step141Add0Work s6Step141Add1Work
    (fun q hq => s6Step141F4_owned (List.mem_toFinset.mpr hq)) s6Step141F4_flag s6Step141F4_carry
    s6Step141F4_distinct s6Step141F4_apart s6Step141Add0_checked s6Step141Add1_checked

private theorem s6Step141Front_branch : s6Step141FrontSigmaArena.checkBorrow 1 [768]=some s6Step141HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step141FrontSigmaArena,s6Step141EntryGvAfter,s6Step141EntryFBefore,arenaWires]
  · change s6Step141HeadGBefore.live=(s6Step141EntryGvAfter.live∪{927})∪{768}
    apply hmrArena_union_pair_of_filter_check s6Step141EntryGvAfter s6Step141HeadGBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 927 768 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step141Front_entry : HmrFrontEntryValid s6Step141EntryFBefore s6Step141FrontBank 199 84 ⟨199,198,85,85⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step141FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step141EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step141EntryFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step141FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step141Front_sigma : s6Step141EntryGvAfter.checkBorrow 1 [927]=some s6Step141FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step141EntryGvAfter,s6Step141EntryFBefore,arenaWires]
  · rfl

private def s6Step141HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step141HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step141HeadFBefore : Arena := s6Step141HeadGAfter

private def s6Step141HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454],795⟩

private def s6Step141HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩

private def s6Step141HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],777⟩

private def s6Step141HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩

private theorem s6Step141HeadBank_incomingDistinct : ([s6Step141HeadGRow,s6Step141HeadFRow,s6Step141HeadGvRow,s6Step141HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141HeadF_Incoming : rowsOwned s6Step141HeadFBefore [s6Step141HeadFRow,s6Step141HeadGvRow,s6Step141HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step141HeadGRow,s6Step141HeadFRow,s6Step141HeadGvRow,s6Step141HeadFvRow] 1 s6Step141HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step141HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step141HeadBank_outgoingOwned : rowsOwned s6Step141HeadFvAfter [s6Step141HeadGOut,s6Step141HeadFOut,s6Step141HeadGvOut,s6Step141HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step141HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step141HeadF_Outgoing : rowsOwned s6Step141HeadFvAfter [s6Step141HeadFOut,s6Step141HeadGvOut,s6Step141HeadFvOut] :=
  hmrRows_owned_drop s6Step141HeadFvAfter [s6Step141HeadGOut,s6Step141HeadFOut,s6Step141HeadGvOut,s6Step141HeadFvOut] 1 s6Step141HeadBank_outgoingOwned

private theorem s6Step141HeadF_distinct : (s6Step141HeadFRow.sign::s6Step141HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141HeadF_owned : (s6Step141HeadFRow.sign::s6Step141HeadFRow.payload).toFinset⊆s6Step141HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step141HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141HeadF_reserved : s6Step141HeadFBefore.reserve s6Step141HeadFFresh.toFinset=some s6Step141HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step141HeadFFresh,arenaWires]
  · norm_num [s6Step141HeadFBefore,s6Step141HeadGAfter,s6Step141HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step141HeadFBefore s6Step141HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step141HeadFFresh rfl rfl
    · norm_num [s6Step141HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step141HeadF_checked : planRowResizeLog s6Step141HeadFBefore s6Step141HeadFRow 200 s6Step141HeadFFresh=
    some (s6Step141HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 879],795⟩,growRow 795 s6Step141HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step141HeadFBefore s6Step141HeadFAfter s6Step141HeadFRow 200 s6Step141HeadFFresh
    s6Step141HeadF_distinct s6Step141HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step141HeadF_reserved
  have rowEq : WindowRow.mk (s6Step141HeadFRow.payload++s6Step141HeadFFresh) s6Step141HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 879],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step141HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step141HeadFvBefore : Arena := s6Step141HeadGvAfter

private theorem s6Step141HeadFv_Incoming : rowsOwned s6Step141HeadFvBefore [s6Step141HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step141HeadGRow,s6Step141HeadFRow,s6Step141HeadGvRow,s6Step141HeadFvRow] 3 s6Step141HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step141HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step141HeadFv_Outgoing : rowsOwned s6Step141HeadFvAfter [s6Step141HeadFvOut] :=
  hmrRows_owned_drop s6Step141HeadFvAfter [s6Step141HeadGOut,s6Step141HeadFOut,s6Step141HeadGvOut,s6Step141HeadFvOut] 3 s6Step141HeadBank_outgoingOwned

private theorem s6Step141HeadFv_distinct : (s6Step141HeadFvRow.sign::s6Step141HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141HeadFv_owned : (s6Step141HeadFvRow.sign::s6Step141HeadFvRow.payload).toFinset⊆s6Step141HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step141HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141HeadFv_reserved : s6Step141HeadFvBefore.reserve s6Step141HeadFvFresh.toFinset=some s6Step141HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step141HeadFvFresh,arenaWires]
  · norm_num [s6Step141HeadFvBefore,s6Step141HeadGvAfter,s6Step141HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step141HeadFvBefore s6Step141HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step141HeadFvFresh rfl rfl
    · norm_num [s6Step141HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step141HeadFv_checked : planRowResizeLog s6Step141HeadFvBefore s6Step141HeadFvRow 85 s6Step141HeadFvFresh=
    some (s6Step141HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩,growRow 776 s6Step141HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step141HeadFvBefore s6Step141HeadFvAfter s6Step141HeadFvRow 85 s6Step141HeadFvFresh
    s6Step141HeadFv_distinct s6Step141HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step141HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step141HeadFvRow.payload++s6Step141HeadFvFresh) s6Step141HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step141HeadG_Incoming : rowsOwned s6Step141HeadGBefore [s6Step141HeadGRow,s6Step141HeadFRow,s6Step141HeadGvRow,s6Step141HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step141HeadGRow,s6Step141HeadFRow,s6Step141HeadGvRow,s6Step141HeadFvRow] 0 s6Step141HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step141HeadGBefore (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step141HeadG_Outgoing : rowsOwned s6Step141HeadFvAfter [s6Step141HeadGOut,s6Step141HeadFOut,s6Step141HeadGvOut,s6Step141HeadFvOut] :=
  hmrRows_owned_drop s6Step141HeadFvAfter [s6Step141HeadGOut,s6Step141HeadFOut,s6Step141HeadGvOut,s6Step141HeadFvOut] 0 s6Step141HeadBank_outgoingOwned

private theorem s6Step141HeadG_distinct : (s6Step141HeadGRow.sign::s6Step141HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141HeadG_owned : (s6Step141HeadGRow.sign::s6Step141HeadGRow.payload).toFinset⊆s6Step141HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step141HeadGBefore (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141HeadG_reserved : s6Step141HeadGBefore.reserve s6Step141HeadGFresh.toFinset=some s6Step141HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step141HeadGFresh,arenaWires]
  · norm_num [s6Step141HeadGBefore,s6Step141HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step141HeadGBefore s6Step141HeadGAfter (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step141HeadGFresh rfl rfl
    · norm_num [s6Step141HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step141HeadG_checked : planRowResizeLog s6Step141HeadGBefore s6Step141HeadGRow 200 s6Step141HeadGFresh=
    some (s6Step141HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 786],777⟩,growRow 777 s6Step141HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step141HeadGBefore s6Step141HeadGAfter s6Step141HeadGRow 200 s6Step141HeadGFresh
    s6Step141HeadG_distinct s6Step141HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step141HeadG_reserved
  have rowEq : WindowRow.mk (s6Step141HeadGRow.payload++s6Step141HeadGFresh) s6Step141HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 786],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step141HeadGvBefore : Arena := s6Step141HeadFAfter

private theorem s6Step141HeadGv_Incoming : rowsOwned s6Step141HeadGvBefore [s6Step141HeadGvRow,s6Step141HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step141HeadGRow,s6Step141HeadFRow,s6Step141HeadGvRow,s6Step141HeadFvRow] 2 s6Step141HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step141HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step141HeadGv_Outgoing : rowsOwned s6Step141HeadFvAfter [s6Step141HeadGvOut,s6Step141HeadFvOut] :=
  hmrRows_owned_drop s6Step141HeadFvAfter [s6Step141HeadGOut,s6Step141HeadFOut,s6Step141HeadGvOut,s6Step141HeadFvOut] 2 s6Step141HeadBank_outgoingOwned

private theorem s6Step141HeadGv_distinct : (s6Step141HeadGvRow.sign::s6Step141HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step141HeadGv_owned : (s6Step141HeadGvRow.sign::s6Step141HeadGvRow.payload).toFinset⊆s6Step141HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step141HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step141HeadGv_reserved : s6Step141HeadGvBefore.reserve s6Step141HeadGvFresh.toFinset=some s6Step141HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step141HeadGvFresh,arenaWires]
  · norm_num [s6Step141HeadGvBefore,s6Step141HeadFAfter,s6Step141HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step141HeadGvBefore s6Step141HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step141HeadGvFresh rfl rfl
    · norm_num [s6Step141HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step141HeadGv_checked : planRowResizeLog s6Step141HeadGvBefore s6Step141HeadGvRow 85 s6Step141HeadGvFresh=
    some (s6Step141HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩,growRow 775 s6Step141HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step141HeadGvBefore s6Step141HeadGvAfter s6Step141HeadGvRow 85 s6Step141HeadGvFresh
    s6Step141HeadGv_distinct s6Step141HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step141HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step141HeadGvRow.payload++s6Step141HeadGvFresh) s6Step141HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step141HeadBank_rows : planWindowRowsLog s6Step141HeadGBefore [(s6Step141HeadGRow,200),(s6Step141HeadFRow,200),(s6Step141HeadGvRow,85),(s6Step141HeadFvRow,85)] [s6Step141HeadGFresh,s6Step141HeadFFresh,s6Step141HeadGvFresh,s6Step141HeadFvFresh]=
    some (s6Step141HeadFvAfter,[s6Step141HeadGOut,s6Step141HeadFOut,s6Step141HeadGvOut,s6Step141HeadFvOut],(growRow 777 s6Step141HeadGFresh ++ (growRow 795 s6Step141HeadFFresh ++ (growRow 775 s6Step141HeadGvFresh ++ (growRow 776 s6Step141HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step141HeadFvAfter [] []=some (s6Step141HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step141HeadFvBefore s6Step141HeadFvAfter s6Step141HeadFvAfter
    s6Step141HeadFvRow s6Step141HeadFvOut 85 s6Step141HeadFvFresh [] [] []
    (growRow 776 s6Step141HeadFvFresh) ([]) s6Step141HeadFv_Incoming s6Step141HeadFv_checked h4 s6Step141HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step141HeadGvBefore s6Step141HeadGvAfter s6Step141HeadFvAfter
    s6Step141HeadGvRow s6Step141HeadGvOut 85 s6Step141HeadGvFresh [(s6Step141HeadFvRow,85)] [s6Step141HeadFvFresh] [s6Step141HeadFvOut]
    (growRow 775 s6Step141HeadGvFresh) ((growRow 776 s6Step141HeadFvFresh ++ [])) s6Step141HeadGv_Incoming s6Step141HeadGv_checked h3 s6Step141HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step141HeadFBefore s6Step141HeadFAfter s6Step141HeadFvAfter
    s6Step141HeadFRow s6Step141HeadFOut 200 s6Step141HeadFFresh [(s6Step141HeadGvRow,85),(s6Step141HeadFvRow,85)] [s6Step141HeadGvFresh,s6Step141HeadFvFresh] [s6Step141HeadGvOut,s6Step141HeadFvOut]
    (growRow 795 s6Step141HeadFFresh) ((growRow 775 s6Step141HeadGvFresh ++ (growRow 776 s6Step141HeadFvFresh ++ []))) s6Step141HeadF_Incoming s6Step141HeadF_checked h2 s6Step141HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step141HeadGBefore s6Step141HeadGAfter s6Step141HeadFvAfter
    s6Step141HeadGRow s6Step141HeadGOut 200 s6Step141HeadGFresh [(s6Step141HeadFRow,200),(s6Step141HeadGvRow,85),(s6Step141HeadFvRow,85)] [s6Step141HeadFFresh,s6Step141HeadGvFresh,s6Step141HeadFvFresh] [s6Step141HeadFOut,s6Step141HeadGvOut,s6Step141HeadFvOut]
    (growRow 777 s6Step141HeadGFresh) ((growRow 795 s6Step141HeadFFresh ++ (growRow 775 s6Step141HeadGvFresh ++ (growRow 776 s6Step141HeadFvFresh ++ [])))) s6Step141HeadG_Incoming s6Step141HeadG_checked h1 s6Step141HeadG_Outgoing
  exact h0

private theorem s6Step141HeadBank_checked : compileHmrBankResizeLog .headroom s6Step141HeadGBefore ⟨s6Step141HeadFRow,s6Step141HeadGRow,s6Step141HeadFvRow,s6Step141HeadGvRow⟩ ⟨200,200,85,85⟩ [s6Step141HeadGFresh,s6Step141HeadFFresh,s6Step141HeadGvFresh,s6Step141HeadFvFresh]=
    some (s6Step141HeadFvAfter,⟨s6Step141HeadFOut,s6Step141HeadGOut,s6Step141HeadFvOut,s6Step141HeadGvOut⟩,(growRow 777 s6Step141HeadGFresh ++ (growRow 795 s6Step141HeadFFresh ++ (growRow 775 s6Step141HeadGvFresh ++ (growRow 776 s6Step141HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step141HeadBank_rows]
  rfl

private theorem s6Step141Front_checked : compileHmrSourceFrontLog s6Step141EntryFBefore s6Step141FrontBank 199 84 ⟨199,198,85,85⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step141FrontLog=some s6Step141FrontPlan := by
  have pairEq : s6Step141FrontPair=⟨s6Step141HeadFRow,s6Step141HeadGRow,s6Step141HeadFvRow,s6Step141HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step141FrontHead=⟨s6Step141ExitFRow,s6Step141ExitGRow,s6Step141ExitFvRow,s6Step141ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step141Add0A=s6Step141FrontHead.f.wires := by decide +kernel
  have gEq : s6Step141Add0B=s6Step141FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step141Add1A=s6Step141FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step141Add1B=s6Step141FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step141EntryFBefore s6Step141FrontBank 199 84 ⟨199,198,85,85⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step141FrontLog s6Step141FrontPlan
  · exact s6Step141Front_entry
  · exact s6Step141EntryBank_checked
  · exact s6Step141Front_sigma
  · rfl
  · exact s6Step141Front_branch
  · rfl
  · simpa only [s6Step141FrontPlan,pairEq] using s6Step141HeadBank_checked
  · simpa only [s6Step141FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step141F4_checked
  · exact s6Step141Counter_checked
  · rfl
  · simpa only [s6Step141FrontPlan,headEq] using s6Step141ExitBank_checked

private theorem s6Step141Complete_explicit_checked : compileHmrEarlyStepLog s6Step141EntryFBefore s6Step141FrontBank 199 84 ⟨199,198,85,85⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924] 42 s6Step141CompleteLog=some s6Step141CompletePlan := by
  let Q := s6Step141EarlyControlPlan
  have hq := s6Step141EarlyControl_plan_checked
  have fv1 : s6Step141CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step141CompleteOut.fv.payload[2]?.getD s6Step141CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step141CompleteOut.fv.payload[3]?.getD s6Step141CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step141CompleteOut.fv.payload[4]?.getD s6Step141CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step141EntryFBefore s6Step141EarlyControlArena s6Step141FrontBank 199 84 ⟨199,198,85,85⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924] 42 s6Step141CompleteLog s6Step141FrontPlan Q
    s6Step141Front_checked s6Step141Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step141Complete_owned s6Step141Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step141EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924] 769 927 s6Step141CompleteOut.fv.second (s6Step141CompleteOut.fv.payload[2]?.getD s6Step141CompleteOut.fv.sign) (s6Step141CompleteOut.fv.payload[3]?.getD s6Step141CompleteOut.fv.sign) (s6Step141CompleteOut.fv.payload[4]?.getD s6Step141CompleteOut.fv.sign) 768 42 s6Step141EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep141Arena : Arena := s6Step141EntryFBefore
def s6PrivateStep141Bank : WindowBank := s6Step141FrontBank
def s6PrivateStep141Spec : HmrSourceWalkStepLog := ⟨199,84,⟨199,198,85,85⟩,42,.early s6Step141CompleteLog⟩
def s6PrivateStep141Plan : HmrSourceStepPlan := .early s6Step141CompletePlan
theorem s6PrivateStep141_source : s6PrivateStep141Spec=s6ObservedLogs128[13] := rfl
theorem s6PrivateStep141_checked : compileHmrSourceStepLog s6PrivateStep141Arena s6PrivateStep141Bank
    s6PrivateStep141Spec.fgWidth s6PrivateStep141Spec.vWidth s6PrivateStep141Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924]
    6 498 141 s6PrivateStep141Spec.need none s6PrivateStep141Spec.log=some s6PrivateStep141Plan := by
  change compileHmrSourceStepLog s6Step141EntryFBefore s6Step141FrontBank 199 84 ⟨199,198,85,85⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924] 6 498 141 42 none (.early s6Step141CompleteLog)=some (.early s6Step141CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 141<498)]
  rw [s6Step141Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
