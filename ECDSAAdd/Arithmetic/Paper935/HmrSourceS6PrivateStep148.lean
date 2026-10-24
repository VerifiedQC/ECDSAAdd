import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep146
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

private def s6Step148CompleteMoves : List (Wire × Wire) := [(859,194)]

private def s6Step148EarlyControlLog : HmrEarlyControlLog := ⟨[859, 879, 908, 768, 877],[887],[807],[875, 882, 891, 903, 791, 825],[]⟩

private def s6Step148FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [802]],[[877], [768], [879], [908]],[[], [], [], []]⟩,[855],[858],[887],[807],[875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[887, 807, 875, 882]⟩

private def s6Step148CompleteLog : HmrEarlyStepLog := ⟨s6Step148FrontLog,s6Step148CompleteMoves,s6Step148EarlyControlLog⟩

private def s6Step148ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩

private def s6Step148ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩

private def s6Step148ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193],777⟩

private def s6Step148ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802],775⟩

private def s6Step148FrontOut : WindowBank := ⟨s6Step148ExitFOut,s6Step148ExitGOut,s6Step148ExitFvOut,s6Step148ExitGvOut⟩

private def s6Step148CompleteOut : WindowBank := s6Step148FrontOut.repacked s6Step148CompleteMoves

private def s6Step148EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step148EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step148EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step148EarlyControlPositiveArena,[887],s6Step148EarlyControlEqualityArena,[807],⟨⟨855,false⟩,[⟨⟨887,false⟩,807⟩]⟩⟩

private def s6Step148EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step148EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step148EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,859⟩,⟨⟨772,false⟩,879⟩,⟨⟨771,false⟩,908⟩,⟨⟨770,false⟩,768⟩,⟨⟨769,false⟩,877⟩]⟩

private def s6Step148EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step148EarlyControlZeroArena,s6Step148EarlyControlZeroPlan,s6Step148EarlyControlClassPlan,s6Step148EarlyControlFlagArena,s6Step148EarlyControlFittedArena,s6Step148EarlyControlHistoryArena,s6Step148EarlyControlSigmaArena,s6Step148EarlyControlOutputArena,s6Step148EarlyControlLog⟩

private def s6Step148CounterWork : List Wire := [887, 807, 875, 882]

private theorem s6Step148Counter_bounded : s6Step148CounterWork.toFinset⊆arenaWires := by norm_num [s6Step148CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step148HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148CounterDuring : Arena := ⟨s6Step148HeadFvAfter.live∪s6Step148CounterWork.toFinset,Finset.union_subset s6Step148HeadFvAfter.bounded s6Step148Counter_bounded⟩

private def s6Step148EntryFFresh : List Wire := []

private def s6Step148EntryFvFresh : List Wire := []

private def s6Step148EntryGFresh : List Wire := []

private def s6Step148EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148EntryGvFresh : List Wire := [802]

private def s6Step148ExitFExtra : List Wire := [768]

private def s6Step148ExitFvExtra : List Wire := [908]

private def s6Step148ExitGExtra : List Wire := [194, 877]

private def s6Step148ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,194),(195,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148ExitGvExtra : List Wire := [879]

private def s6Step148Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step148Add0Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step148Add0_bounded : s6Step148Add0Work.toFinset⊆arenaWires := by
  have h : s6Step148Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step148Add0During : Arena := ⟨s6Step148Add0Arena.live∪s6Step148Add0Work.toFinset,Finset.union_subset s6Step148Add0Arena.bounded s6Step148Add0_bounded⟩

private def s6Step148Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step148Add1Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step148Add1_bounded : s6Step148Add1Work.toFinset⊆arenaWires := by
  have h : s6Step148Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step148Add1During : Arena := ⟨s6Step148Add1Arena.live∪s6Step148Add1Work.toFinset,Finset.union_subset s6Step148Add1Arena.bounded s6Step148Add1_bounded⟩

private def s6Step148F4FlagArena : Arena := ⟨s6Step148HeadFvAfter.live∪{887},Finset.union_subset s6Step148HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step148F4Plan : HmrHybridF4Plan := ⟨s6Step148F4FlagArena,[887],s6Step148Add0Arena,[807],s6Step148Add0During,s6Step148Add0Work,s6Step148Add1During,s6Step148Add1Work⟩

private def s6Step148HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 768],795⟩

private def s6Step148HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 908],776⟩

private def s6Step148HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 877],777⟩

private def s6Step148HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 879],775⟩

private def s6Step148FrontHead : WindowBank := ⟨s6Step148HeadFOut,s6Step148HeadGOut,s6Step148HeadFvOut,s6Step148HeadGvOut⟩

private def s6Step148EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩

private def s6Step148EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩

private def s6Step148EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194],777⟩

private def s6Step148EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802],775⟩

private def s6Step148FrontPair : WindowBank := ⟨s6Step148EntryFOut,s6Step148EntryGOut,s6Step148EntryFvOut,s6Step148EntryGvOut⟩

private def s6Step148FrontSigmaArena : Arena := ⟨s6Step148EntryGvAfter.live∪{855},Finset.union_subset s6Step148EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step148HeadFFresh : List Wire := [768]

private def s6Step148HeadFvFresh : List Wire := [908]

private def s6Step148HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148HeadGFresh : List Wire := [877]

private def s6Step148HeadGvFresh : List Wire := [879]

private def s6Step148FrontPlan : HmrSourceFront := ⟨s6Step148EntryGvAfter,s6Step148FrontPair,(growRow 795 s6Step148EntryFFresh ++ (growRow 777 s6Step148EntryGFresh ++ (growRow 776 s6Step148EntryFvFresh ++ (growRow 775 s6Step148EntryGvFresh ++ [])))),s6Step148FrontSigmaArena,[855],s6Step148HeadGBefore,[858],
  s6Step148HeadFvAfter,s6Step148FrontHead,(growRow 777 s6Step148HeadGFresh ++ (growRow 795 s6Step148HeadFFresh ++ (growRow 775 s6Step148HeadGvFresh ++ (growRow 776 s6Step148HeadFvFresh ++ [])))),s6Step148F4Plan,s6Step148CounterDuring,s6Step148CounterWork,s6Step148ExitGvAfter,s6Step148FrontOut,(shrinkRow 777 s6Step148ExitGExtra ++ (shrinkRow 795 s6Step148ExitFExtra ++ (shrinkRow 776 s6Step148ExitFvExtra ++ (shrinkRow 775 s6Step148ExitGvExtra ++ []))))⟩

private def s6Step148CompletePlan : HmrEarlyStepPlan := ⟨s6Step148FrontPlan,s6Step148EarlyControlArena,s6Step148EarlyControlPlan,s6Step148CompleteMoves⟩

private theorem s6Step148Complete_apart : List.Disjoint (s6Step148CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [855, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step148CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[855, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step148Complete_owned : (s6Step148CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step148EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step148EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step148CompleteRelocationMove0Borrowed : Arena := ⟨s6Step148ExitGvAfter.live∪{194},Finset.union_subset s6Step148ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step148CompleteRelocation_move0_owned : 859∈s6Step148ExitGvAfter.live := by norm_num [s6Step148ExitGvAfter,arenaWires]

private theorem s6Step148CompleteRelocation_move0_reserve : s6Step148ExitGvAfter.reserve {194}=some s6Step148CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step148ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step148CompleteRelocation_move0_retire : s6Step148CompleteRelocationMove0Borrowed.retireSet {859}=s6Step148EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step148CompleteRelocationMove0Borrowed s6Step148EarlyControlArena {859}
  change s6Step148EarlyControlArena.live=(s6Step148ExitGvAfter.live∪{194})\{859}
  apply hmrArena_update_of_filter_check s6Step148ExitGvAfter s6Step148EarlyControlArena (fun q => ([(0,194),(195,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [194] [859] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step148CompleteRelocation_checked : s6Step148ExitGvAfter.checkRepack [(859,194)]=some s6Step148EarlyControlArena := by
  have tail1 : s6Step148EarlyControlArena.checkRepack []=some s6Step148EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step148ExitGvAfter s6Step148CompleteRelocationMove0Borrowed s6Step148EarlyControlArena s6Step148EarlyControlArena 859 194 []
    s6Step148CompleteRelocation_move0_owned s6Step148CompleteRelocation_move0_reserve s6Step148CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step148Complete_repack : s6Step148ExitGvAfter.checkRepack s6Step148CompleteMoves=some s6Step148EarlyControlArena := by
  simpa only [s6Step148CompleteMoves] using s6Step148CompleteRelocation_checked

private theorem s6Step148EarlyControl_branchOwned : ([858] : List Wire).toFinset⊆s6Step148EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step148EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148EarlyControl_branch : compileHmrBranchRetirement s6Step148EarlyControlSigmaArena 858=some s6Step148EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step148EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step148EarlyControlSigmaArena s6Step148EarlyControlOutputArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [858] rfl rfl
    decide +kernel

private theorem s6Step148EarlyControl_classEqualityBorrow : s6Step148EarlyControlPositiveArena.checkBorrow (([855, 887] : List Wire).length-1) s6Step148EarlyControlLog.classWork=some s6Step148EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step148EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step148EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step148EarlyControlEqualityArena,s6Step148EarlyControlPositiveArena,s6Step148EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step148EarlyControl_classEqualityOwned : ([855, 887] : List Wire).toFinset⊆s6Step148EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step148EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step148EarlyControl_classEquality : compileHmrEqualityLog s6Step148EarlyControlPositiveArena [855, 887] 0 s6Step148EarlyControlLog.classWork=some (s6Step148EarlyControlEqualityArena,s6Step148EarlyControlLog.classWork,s6Step148EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step148EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step148EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step148EarlyControl_classOwned : ([769, 877, 855] : List Wire).toFinset⊆s6Step148EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step148EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148EarlyControl_positiveBorrow : s6Step148EarlyControlZeroArena.checkBorrow (1) s6Step148EarlyControlLog.positiveWork=some s6Step148EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step148EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step148EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step148EarlyControlZeroArena s6Step148EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step148EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step148EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step148EarlyControl_class : compileHmrSourceClassLog s6Step148EarlyControlZeroArena false 769 s6Step148EarlyControlZeroPlan.top 0 855 s6Step148EarlyControlLog.positiveWork s6Step148EarlyControlLog.classWork=some s6Step148EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step148EarlyControlClassPlan s6Step148EarlyControlZeroArena false 769 s6Step148EarlyControlZeroPlan.top 0 855
  constructor
  · decide +kernel
  · exact s6Step148EarlyControl_classOwned
  · exact s6Step148EarlyControl_positiveBorrow
  · exact s6Step148EarlyControl_classEquality

private theorem s6Step148EarlyControl_entryRecordOwned : ([858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step148EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step148EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148EarlyControl_entrySigmaOwned : ([855, 254] : List Wire).toFinset⊆s6Step148EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step148EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148EarlyControl_fitBorrow : s6Step148EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step148EarlyControlLog.recordFresh=some s6Step148EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step148EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step148EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step148EarlyControlFittedArena,s6Step148EarlyControlFlagArena,s6Step148EarlyControlLog,arenaWires]

private theorem s6Step148EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step148EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step148EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step148EarlyControl_fit : compileHmrRecordGrowLog s6Step148EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step148EarlyControlLog.recordFresh=some s6Step148EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step148EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step148EarlyControl_fitBorrow

private theorem s6Step148EarlyControl_flagsBorrow : s6Step148EarlyControlEqualityArena.checkBorrow (6) s6Step148EarlyControlLog.flagWork=some s6Step148EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step148EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step148EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step148EarlyControlFlagArena,s6Step148EarlyControlEqualityArena,s6Step148EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step148EarlyControl_flagsOwned : ([807, 253, 252, 251] : List Wire).toFinset⊆s6Step148EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step148EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step148EarlyControl_flags : compileHmrFlagsLog s6Step148EarlyControlClassPlan.equalityArena s6Step148EarlyControlClassPlan.equality.top 253 252 251 s6Step148EarlyControlLog.flagWork=some s6Step148EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step148EarlyControl_flagsOwned⟩
  · exact s6Step148EarlyControl_flagsBorrow

private theorem s6Step148EarlyControl_historyBorrow : s6Step148EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step148EarlyControlLog.recordFresh=some s6Step148EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step148EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step148EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step148EarlyControlArena s6Step148EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step148EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step148EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step148EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step148EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step148EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148EarlyControl_history : compileHmrRecordGrowLog s6Step148EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step148EarlyControlLog.recordFresh=some s6Step148EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step148EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step148EarlyControl_historyBorrow

private theorem s6Step148EarlyControl_sigmaOwned : ([254, 855] : List Wire).toFinset⊆s6Step148EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step148EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148EarlyControl_sigmaReleaseOwned : ([855] : List Wire).toFinset⊆s6Step148EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step148EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148EarlyControl_sigmaRelease : s6Step148EarlyControlHistoryArena.release {855} (fun _ => false)=some s6Step148EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step148EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step148EarlyControlHistoryArena s6Step148EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [855] rfl rfl
    decide +kernel

private theorem s6Step148EarlyControl_sigma : compileHmrSigmaDropLog s6Step148EarlyControlHistoryArena false 0 0 254 855 []=some s6Step148EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step148EarlyControl_sigmaOwned⟩
  · exact s6Step148EarlyControl_sigmaRelease

private theorem s6Step148EarlyControl_zeroBorrow : s6Step148EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step148EarlyControlLog.zeroWork=some s6Step148EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step148EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step148EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step148EarlyControlArena s6Step148EarlyControlZeroArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step148EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step148EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step148EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step148EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step148EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148EarlyControl_zero : compileHmrEqualityLog s6Step148EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step148EarlyControlLog.zeroWork=some (s6Step148EarlyControlZeroArena,s6Step148EarlyControlLog.zeroWork,s6Step148EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step148EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step148EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step148EarlyControl_logged : s6Step148EarlyControlPlan.Logged s6Step148EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 254 253 252 251 858 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step148EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step148EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step148EarlyControl_zero
  · exact s6Step148EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step148EarlyControl_flags
  · exact s6Step148EarlyControl_fit
  · exact s6Step148EarlyControl_history
  · exact s6Step148EarlyControl_sigma
  · exact s6Step148EarlyControl_branch

private theorem s6Step148EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step148EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 254 253 252 251 858 42 s6Step148EarlyControlLog=some s6Step148EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step148EarlyControlPlan s6Step148EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 254 253 252 251 858 42 s6Step148EarlyControl_logged

private def s6Step148EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩

private def s6Step148EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩

private def s6Step148EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194],777⟩

private def s6Step148EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794],775⟩

private def s6Step148FrontBank : WindowBank := ⟨s6Step148EntryFRow,s6Step148EntryGRow,s6Step148EntryFvRow,s6Step148EntryGvRow⟩

private def s6Step148Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 768, 795]

private def s6Step148Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 877, 777]

private def s6Step148Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 908, 776]

private def s6Step148Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 879, 775]

private theorem s6Step148Counter_apart : Disjoint s6Step148HeadFvAfter.live s6Step148CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step148HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148Counter_borrowed : s6Step148HeadFvAfter.checkBorrow 4 s6Step148CounterWork=some s6Step148CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step148HeadFvAfter s6Step148CounterDuring s6Step148CounterWork.toFinset s6Step148Counter_bounded s6Step148Counter_apart rfl

private theorem s6Step148Counter_owned : (855::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step148HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step148HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148Counter_checked : compileHmrCounterStepLog s6Step148HeadFvAfter true 855 [774, 773, 772, 771, 770, 769] s6Step148CounterWork=some s6Step148CounterDuring := by
  have owned : ∀q∈855::[774, 773, 772, 771, 770, 769],q∈s6Step148HeadFvAfter.live := fun q hq => s6Step148Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step148Counter_borrowed

private def s6Step148EntryFAfter : Arena := s6Step148EntryFBefore

private theorem s6Step148EntryBank_incomingDistinct : ([s6Step148EntryFRow,s6Step148EntryGRow,s6Step148EntryFvRow,s6Step148EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148EntryF_Incoming : rowsOwned s6Step148EntryFBefore [s6Step148EntryFRow,s6Step148EntryGRow,s6Step148EntryFvRow,s6Step148EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step148EntryFRow,s6Step148EntryGRow,s6Step148EntryFvRow,s6Step148EntryGvRow] 0 s6Step148EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step148EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step148EntryBank_outgoingOwned : rowsOwned s6Step148EntryGvAfter [s6Step148EntryFOut,s6Step148EntryGOut,s6Step148EntryFvOut,s6Step148EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step148EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step148EntryF_Outgoing : rowsOwned s6Step148EntryGvAfter [s6Step148EntryFOut,s6Step148EntryGOut,s6Step148EntryFvOut,s6Step148EntryGvOut] :=
  hmrRows_owned_drop s6Step148EntryGvAfter [s6Step148EntryFOut,s6Step148EntryGOut,s6Step148EntryFvOut,s6Step148EntryGvOut] 0 s6Step148EntryBank_outgoingOwned

private theorem s6Step148EntryF_distinct : (s6Step148EntryFRow.sign::s6Step148EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148EntryF_owned : (s6Step148EntryFRow.sign::s6Step148EntryFRow.payload).toFinset⊆s6Step148EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step148EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148EntryF_reserved : s6Step148EntryFBefore.reserve s6Step148EntryFFresh.toFinset=some s6Step148EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step148EntryFFresh,arenaWires]
  · norm_num [s6Step148EntryFBefore,s6Step148EntryFFresh,arenaWires]
  · simp only [s6Step148EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step148EntryF_checked : planRowResizeLog s6Step148EntryFBefore s6Step148EntryFRow 195 s6Step148EntryFFresh=
    some (s6Step148EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩,growRow 795 s6Step148EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step148EntryFBefore s6Step148EntryFAfter s6Step148EntryFRow 195 s6Step148EntryFFresh
    s6Step148EntryF_distinct s6Step148EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step148EntryF_reserved
  have rowEq : WindowRow.mk (s6Step148EntryFRow.payload++s6Step148EntryFFresh) s6Step148EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step148EntryFvAfter : Arena := s6Step148EntryFBefore

private def s6Step148EntryFvBefore : Arena := s6Step148EntryFBefore

private theorem s6Step148EntryFv_Incoming : rowsOwned s6Step148EntryFvBefore [s6Step148EntryFvRow,s6Step148EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step148EntryFRow,s6Step148EntryGRow,s6Step148EntryFvRow,s6Step148EntryGvRow] 2 s6Step148EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step148EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step148EntryFv_Outgoing : rowsOwned s6Step148EntryGvAfter [s6Step148EntryFvOut,s6Step148EntryGvOut] :=
  hmrRows_owned_drop s6Step148EntryGvAfter [s6Step148EntryFOut,s6Step148EntryGOut,s6Step148EntryFvOut,s6Step148EntryGvOut] 2 s6Step148EntryBank_outgoingOwned

private theorem s6Step148EntryFv_distinct : (s6Step148EntryFvRow.sign::s6Step148EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148EntryFv_owned : (s6Step148EntryFvRow.sign::s6Step148EntryFvRow.payload).toFinset⊆s6Step148EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step148EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148EntryFv_reserved : s6Step148EntryFvBefore.reserve s6Step148EntryFvFresh.toFinset=some s6Step148EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step148EntryFvFresh,arenaWires]
  · norm_num [s6Step148EntryFvBefore,s6Step148EntryFBefore,s6Step148EntryFvFresh,arenaWires]
  · simp only [s6Step148EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step148EntryFv_checked : planRowResizeLog s6Step148EntryFvBefore s6Step148EntryFvRow 88 s6Step148EntryFvFresh=
    some (s6Step148EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩,growRow 776 s6Step148EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step148EntryFvBefore s6Step148EntryFvAfter s6Step148EntryFvRow 88 s6Step148EntryFvFresh
    s6Step148EntryFv_distinct s6Step148EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step148EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step148EntryFvRow.payload++s6Step148EntryFvFresh) s6Step148EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step148EntryGAfter : Arena := s6Step148EntryFBefore

private def s6Step148EntryGBefore : Arena := s6Step148EntryFBefore

private theorem s6Step148EntryG_Incoming : rowsOwned s6Step148EntryGBefore [s6Step148EntryGRow,s6Step148EntryFvRow,s6Step148EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step148EntryFRow,s6Step148EntryGRow,s6Step148EntryFvRow,s6Step148EntryGvRow] 1 s6Step148EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step148EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step148EntryG_Outgoing : rowsOwned s6Step148EntryGvAfter [s6Step148EntryGOut,s6Step148EntryFvOut,s6Step148EntryGvOut] :=
  hmrRows_owned_drop s6Step148EntryGvAfter [s6Step148EntryFOut,s6Step148EntryGOut,s6Step148EntryFvOut,s6Step148EntryGvOut] 1 s6Step148EntryBank_outgoingOwned

private theorem s6Step148EntryG_distinct : (s6Step148EntryGRow.sign::s6Step148EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148EntryG_owned : (s6Step148EntryGRow.sign::s6Step148EntryGRow.payload).toFinset⊆s6Step148EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step148EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148EntryG_reserved : s6Step148EntryGBefore.reserve s6Step148EntryGFresh.toFinset=some s6Step148EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step148EntryGFresh,arenaWires]
  · norm_num [s6Step148EntryGBefore,s6Step148EntryFBefore,s6Step148EntryGFresh,arenaWires]
  · simp only [s6Step148EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step148EntryG_checked : planRowResizeLog s6Step148EntryGBefore s6Step148EntryGRow 195 s6Step148EntryGFresh=
    some (s6Step148EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194],777⟩,growRow 777 s6Step148EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step148EntryGBefore s6Step148EntryGAfter s6Step148EntryGRow 195 s6Step148EntryGFresh
    s6Step148EntryG_distinct s6Step148EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step148EntryG_reserved
  have rowEq : WindowRow.mk (s6Step148EntryGRow.payload++s6Step148EntryGFresh) s6Step148EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step148EntryGvBefore : Arena := s6Step148EntryFBefore

private theorem s6Step148EntryGv_Incoming : rowsOwned s6Step148EntryGvBefore [s6Step148EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step148EntryFRow,s6Step148EntryGRow,s6Step148EntryFvRow,s6Step148EntryGvRow] 3 s6Step148EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step148EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step148EntryGv_Outgoing : rowsOwned s6Step148EntryGvAfter [s6Step148EntryGvOut] :=
  hmrRows_owned_drop s6Step148EntryGvAfter [s6Step148EntryFOut,s6Step148EntryGOut,s6Step148EntryFvOut,s6Step148EntryGvOut] 3 s6Step148EntryBank_outgoingOwned

private theorem s6Step148EntryGv_distinct : (s6Step148EntryGvRow.sign::s6Step148EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148EntryGv_owned : (s6Step148EntryGvRow.sign::s6Step148EntryGvRow.payload).toFinset⊆s6Step148EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step148EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148EntryGv_reserved : s6Step148EntryGvBefore.reserve s6Step148EntryGvFresh.toFinset=some s6Step148EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step148EntryGvFresh,arenaWires]
  · norm_num [s6Step148EntryGvBefore,s6Step148EntryFBefore,s6Step148EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step148EntryGvBefore s6Step148EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step148EntryGvFresh rfl rfl
    · norm_num [s6Step148EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step148EntryGv_checked : planRowResizeLog s6Step148EntryGvBefore s6Step148EntryGvRow 88 s6Step148EntryGvFresh=
    some (s6Step148EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802],775⟩,growRow 775 s6Step148EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step148EntryGvBefore s6Step148EntryGvAfter s6Step148EntryGvRow 88 s6Step148EntryGvFresh
    s6Step148EntryGv_distinct s6Step148EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step148EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step148EntryGvRow.payload++s6Step148EntryGvFresh) s6Step148EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step148EntryBank_rows : planWindowRowsLog s6Step148EntryFBefore [(s6Step148EntryFRow,195),(s6Step148EntryGRow,195),(s6Step148EntryFvRow,88),(s6Step148EntryGvRow,88)] [s6Step148EntryFFresh,s6Step148EntryGFresh,s6Step148EntryFvFresh,s6Step148EntryGvFresh]=
    some (s6Step148EntryGvAfter,[s6Step148EntryFOut,s6Step148EntryGOut,s6Step148EntryFvOut,s6Step148EntryGvOut],(growRow 795 s6Step148EntryFFresh ++ (growRow 777 s6Step148EntryGFresh ++ (growRow 776 s6Step148EntryFvFresh ++ (growRow 775 s6Step148EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step148EntryGvAfter [] []=some (s6Step148EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step148EntryGvBefore s6Step148EntryGvAfter s6Step148EntryGvAfter
    s6Step148EntryGvRow s6Step148EntryGvOut 88 s6Step148EntryGvFresh [] [] []
    (growRow 775 s6Step148EntryGvFresh) ([]) s6Step148EntryGv_Incoming s6Step148EntryGv_checked h4 s6Step148EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step148EntryFvBefore s6Step148EntryFvAfter s6Step148EntryGvAfter
    s6Step148EntryFvRow s6Step148EntryFvOut 88 s6Step148EntryFvFresh [(s6Step148EntryGvRow,88)] [s6Step148EntryGvFresh] [s6Step148EntryGvOut]
    (growRow 776 s6Step148EntryFvFresh) ((growRow 775 s6Step148EntryGvFresh ++ [])) s6Step148EntryFv_Incoming s6Step148EntryFv_checked h3 s6Step148EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step148EntryGBefore s6Step148EntryGAfter s6Step148EntryGvAfter
    s6Step148EntryGRow s6Step148EntryGOut 195 s6Step148EntryGFresh [(s6Step148EntryFvRow,88),(s6Step148EntryGvRow,88)] [s6Step148EntryFvFresh,s6Step148EntryGvFresh] [s6Step148EntryFvOut,s6Step148EntryGvOut]
    (growRow 777 s6Step148EntryGFresh) ((growRow 776 s6Step148EntryFvFresh ++ (growRow 775 s6Step148EntryGvFresh ++ []))) s6Step148EntryG_Incoming s6Step148EntryG_checked h2 s6Step148EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step148EntryFBefore s6Step148EntryFAfter s6Step148EntryGvAfter
    s6Step148EntryFRow s6Step148EntryFOut 195 s6Step148EntryFFresh [(s6Step148EntryGRow,195),(s6Step148EntryFvRow,88),(s6Step148EntryGvRow,88)] [s6Step148EntryGFresh,s6Step148EntryFvFresh,s6Step148EntryGvFresh] [s6Step148EntryGOut,s6Step148EntryFvOut,s6Step148EntryGvOut]
    (growRow 795 s6Step148EntryFFresh) ((growRow 777 s6Step148EntryGFresh ++ (growRow 776 s6Step148EntryFvFresh ++ (growRow 775 s6Step148EntryGvFresh ++ [])))) s6Step148EntryF_Incoming s6Step148EntryF_checked h1 s6Step148EntryF_Outgoing
  exact h0

private theorem s6Step148EntryBank_checked : compileHmrBankResizeLog .entry s6Step148EntryFBefore ⟨s6Step148EntryFRow,s6Step148EntryGRow,s6Step148EntryFvRow,s6Step148EntryGvRow⟩ ⟨195,195,88,88⟩ [s6Step148EntryFFresh,s6Step148EntryGFresh,s6Step148EntryFvFresh,s6Step148EntryGvFresh]=
    some (s6Step148EntryGvAfter,⟨s6Step148EntryFOut,s6Step148EntryGOut,s6Step148EntryFvOut,s6Step148EntryGvOut⟩,(growRow 795 s6Step148EntryFFresh ++ (growRow 777 s6Step148EntryGFresh ++ (growRow 776 s6Step148EntryFvFresh ++ (growRow 775 s6Step148EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step148EntryBank_rows]
  rfl

private def s6Step148ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,194),(195,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,194),(195,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148ExitFBefore : Arena := s6Step148ExitGAfter

private def s6Step148ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 768],795⟩

private def s6Step148ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 908],776⟩

private def s6Step148ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 877],777⟩

private def s6Step148ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 879],775⟩

private theorem s6Step148ExitBank_incomingDistinct : ([s6Step148ExitGRow,s6Step148ExitFRow,s6Step148ExitFvRow,s6Step148ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148ExitF_Incoming : rowsOwned s6Step148ExitFBefore [s6Step148ExitFRow,s6Step148ExitFvRow,s6Step148ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step148ExitGRow,s6Step148ExitFRow,s6Step148ExitFvRow,s6Step148ExitGvRow] 1 s6Step148ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step148ExitFBefore (fun q => ([(0,194),(195,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step148ExitBank_outgoingOwned : rowsOwned s6Step148ExitGvAfter [s6Step148ExitGOut,s6Step148ExitFOut,s6Step148ExitFvOut,s6Step148ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step148ExitGvAfter (fun q => ([(0,194),(195,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step148ExitF_Outgoing : rowsOwned s6Step148ExitGvAfter [s6Step148ExitFOut,s6Step148ExitFvOut,s6Step148ExitGvOut] :=
  hmrRows_owned_drop s6Step148ExitGvAfter [s6Step148ExitGOut,s6Step148ExitFOut,s6Step148ExitFvOut,s6Step148ExitGvOut] 1 s6Step148ExitBank_outgoingOwned

private theorem s6Step148ExitF_distinct : (s6Step148ExitFRow.sign::s6Step148ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148ExitF_owned : (s6Step148ExitFRow.sign::s6Step148ExitFRow.payload).toFinset⊆s6Step148ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step148ExitFBefore (fun q => ([(0,194),(195,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148ExitF_retired : s6Step148ExitFBefore.retireSet s6Step148ExitFExtra.toFinset=s6Step148ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step148ExitFBefore s6Step148ExitFAfter s6Step148ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step148ExitFBefore s6Step148ExitFAfter (fun q => ([(0,194),(195,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,194),(195,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step148ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step148ExitF_checked : planRowResizeLog s6Step148ExitFBefore s6Step148ExitFRow 195 []=
    some (s6Step148ExitFAfter,s6Step148ExitFOut,shrinkRow 795 s6Step148ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step148ExitFBefore s6Step148ExitFRow 195 s6Step148ExitF_distinct s6Step148ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step148ExitFRow.payload.take 195) s6Step148ExitFRow.sign=s6Step148ExitFOut := by decide +kernel
  have hi : s6Step148ExitFRow.payload.drop 195=s6Step148ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step148ExitF_retired] at result
  exact result

private def s6Step148ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,194),(195,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148ExitFvBefore : Arena := s6Step148ExitFAfter

private theorem s6Step148ExitFv_Incoming : rowsOwned s6Step148ExitFvBefore [s6Step148ExitFvRow,s6Step148ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step148ExitGRow,s6Step148ExitFRow,s6Step148ExitFvRow,s6Step148ExitGvRow] 2 s6Step148ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step148ExitFvBefore (fun q => ([(0,194),(195,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step148ExitFv_Outgoing : rowsOwned s6Step148ExitGvAfter [s6Step148ExitFvOut,s6Step148ExitGvOut] :=
  hmrRows_owned_drop s6Step148ExitGvAfter [s6Step148ExitGOut,s6Step148ExitFOut,s6Step148ExitFvOut,s6Step148ExitGvOut] 2 s6Step148ExitBank_outgoingOwned

private theorem s6Step148ExitFv_distinct : (s6Step148ExitFvRow.sign::s6Step148ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148ExitFv_owned : (s6Step148ExitFvRow.sign::s6Step148ExitFvRow.payload).toFinset⊆s6Step148ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step148ExitFvBefore (fun q => ([(0,194),(195,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148ExitFv_retired : s6Step148ExitFvBefore.retireSet s6Step148ExitFvExtra.toFinset=s6Step148ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step148ExitFvBefore s6Step148ExitFvAfter s6Step148ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step148ExitFvBefore s6Step148ExitFvAfter (fun q => ([(0,194),(195,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,194),(195,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step148ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step148ExitFv_checked : planRowResizeLog s6Step148ExitFvBefore s6Step148ExitFvRow 88 []=
    some (s6Step148ExitFvAfter,s6Step148ExitFvOut,shrinkRow 776 s6Step148ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step148ExitFvBefore s6Step148ExitFvRow 88 s6Step148ExitFv_distinct s6Step148ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step148ExitFvRow.payload.take 88) s6Step148ExitFvRow.sign=s6Step148ExitFvOut := by decide +kernel
  have hi : s6Step148ExitFvRow.payload.drop 88=s6Step148ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step148ExitFv_retired] at result
  exact result

private def s6Step148ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step148ExitG_Incoming : rowsOwned s6Step148ExitGBefore [s6Step148ExitGRow,s6Step148ExitFRow,s6Step148ExitFvRow,s6Step148ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step148ExitGRow,s6Step148ExitFRow,s6Step148ExitFvRow,s6Step148ExitGvRow] 0 s6Step148ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step148ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step148ExitG_Outgoing : rowsOwned s6Step148ExitGvAfter [s6Step148ExitGOut,s6Step148ExitFOut,s6Step148ExitFvOut,s6Step148ExitGvOut] :=
  hmrRows_owned_drop s6Step148ExitGvAfter [s6Step148ExitGOut,s6Step148ExitFOut,s6Step148ExitFvOut,s6Step148ExitGvOut] 0 s6Step148ExitBank_outgoingOwned

private theorem s6Step148ExitG_distinct : (s6Step148ExitGRow.sign::s6Step148ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148ExitG_owned : (s6Step148ExitGRow.sign::s6Step148ExitGRow.payload).toFinset⊆s6Step148ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step148ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148ExitG_retired : s6Step148ExitGBefore.retireSet s6Step148ExitGExtra.toFinset=s6Step148ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step148ExitGBefore s6Step148ExitGAfter s6Step148ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step148ExitGBefore s6Step148ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,194),(195,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step148ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step148ExitG_checked : planRowResizeLog s6Step148ExitGBefore s6Step148ExitGRow 194 []=
    some (s6Step148ExitGAfter,s6Step148ExitGOut,shrinkRow 777 s6Step148ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step148ExitGBefore s6Step148ExitGRow 194 s6Step148ExitG_distinct s6Step148ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step148ExitGRow.payload.take 194) s6Step148ExitGRow.sign=s6Step148ExitGOut := by decide +kernel
  have hi : s6Step148ExitGRow.payload.drop 194=s6Step148ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step148ExitG_retired] at result
  exact result

private def s6Step148ExitGvBefore : Arena := s6Step148ExitFvAfter

private theorem s6Step148ExitGv_Incoming : rowsOwned s6Step148ExitGvBefore [s6Step148ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step148ExitGRow,s6Step148ExitFRow,s6Step148ExitFvRow,s6Step148ExitGvRow] 3 s6Step148ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step148ExitGvBefore (fun q => ([(0,194),(195,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step148ExitGv_Outgoing : rowsOwned s6Step148ExitGvAfter [s6Step148ExitGvOut] :=
  hmrRows_owned_drop s6Step148ExitGvAfter [s6Step148ExitGOut,s6Step148ExitFOut,s6Step148ExitFvOut,s6Step148ExitGvOut] 3 s6Step148ExitBank_outgoingOwned

private theorem s6Step148ExitGv_distinct : (s6Step148ExitGvRow.sign::s6Step148ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148ExitGv_owned : (s6Step148ExitGvRow.sign::s6Step148ExitGvRow.payload).toFinset⊆s6Step148ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step148ExitGvBefore (fun q => ([(0,194),(195,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148ExitGv_retired : s6Step148ExitGvBefore.retireSet s6Step148ExitGvExtra.toFinset=s6Step148ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step148ExitGvBefore s6Step148ExitGvAfter s6Step148ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step148ExitGvBefore s6Step148ExitGvAfter (fun q => ([(0,194),(195,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,194),(195,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step148ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step148ExitGv_checked : planRowResizeLog s6Step148ExitGvBefore s6Step148ExitGvRow 88 []=
    some (s6Step148ExitGvAfter,s6Step148ExitGvOut,shrinkRow 775 s6Step148ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step148ExitGvBefore s6Step148ExitGvRow 88 s6Step148ExitGv_distinct s6Step148ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step148ExitGvRow.payload.take 88) s6Step148ExitGvRow.sign=s6Step148ExitGvOut := by decide +kernel
  have hi : s6Step148ExitGvRow.payload.drop 88=s6Step148ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step148ExitGv_retired] at result
  exact result

private theorem s6Step148ExitBank_rows : planWindowRowsLog s6Step148ExitGBefore [(s6Step148ExitGRow,194),(s6Step148ExitFRow,195),(s6Step148ExitFvRow,88),(s6Step148ExitGvRow,88)] [[],[],[],[]]=
    some (s6Step148ExitGvAfter,[s6Step148ExitGOut,s6Step148ExitFOut,s6Step148ExitFvOut,s6Step148ExitGvOut],(shrinkRow 777 s6Step148ExitGExtra ++ (shrinkRow 795 s6Step148ExitFExtra ++ (shrinkRow 776 s6Step148ExitFvExtra ++ (shrinkRow 775 s6Step148ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step148ExitGvAfter [] []=some (s6Step148ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step148ExitGvBefore s6Step148ExitGvAfter s6Step148ExitGvAfter
    s6Step148ExitGvRow s6Step148ExitGvOut 88 [] [] [] []
    (shrinkRow 775 s6Step148ExitGvExtra) ([]) s6Step148ExitGv_Incoming s6Step148ExitGv_checked h4 s6Step148ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step148ExitFvBefore s6Step148ExitFvAfter s6Step148ExitGvAfter
    s6Step148ExitFvRow s6Step148ExitFvOut 88 [] [(s6Step148ExitGvRow,88)] [[]] [s6Step148ExitGvOut]
    (shrinkRow 776 s6Step148ExitFvExtra) ((shrinkRow 775 s6Step148ExitGvExtra ++ [])) s6Step148ExitFv_Incoming s6Step148ExitFv_checked h3 s6Step148ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step148ExitFBefore s6Step148ExitFAfter s6Step148ExitGvAfter
    s6Step148ExitFRow s6Step148ExitFOut 195 [] [(s6Step148ExitFvRow,88),(s6Step148ExitGvRow,88)] [[],[]] [s6Step148ExitFvOut,s6Step148ExitGvOut]
    (shrinkRow 795 s6Step148ExitFExtra) ((shrinkRow 776 s6Step148ExitFvExtra ++ (shrinkRow 775 s6Step148ExitGvExtra ++ []))) s6Step148ExitF_Incoming s6Step148ExitF_checked h2 s6Step148ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step148ExitGBefore s6Step148ExitGAfter s6Step148ExitGvAfter
    s6Step148ExitGRow s6Step148ExitGOut 194 [] [(s6Step148ExitFRow,195),(s6Step148ExitFvRow,88),(s6Step148ExitGvRow,88)] [[],[],[]] [s6Step148ExitFOut,s6Step148ExitFvOut,s6Step148ExitGvOut]
    (shrinkRow 777 s6Step148ExitGExtra) ((shrinkRow 795 s6Step148ExitFExtra ++ (shrinkRow 776 s6Step148ExitFvExtra ++ (shrinkRow 775 s6Step148ExitGvExtra ++ [])))) s6Step148ExitG_Incoming s6Step148ExitG_checked h1 s6Step148ExitG_Outgoing
  exact h0

private theorem s6Step148ExitBank_checked : compileHmrBankResizeLog .exit s6Step148ExitGBefore ⟨s6Step148ExitFRow,s6Step148ExitGRow,s6Step148ExitFvRow,s6Step148ExitGvRow⟩ ⟨195,194,88,88⟩ [[],[],[],[]]=
    some (s6Step148ExitGvAfter,⟨s6Step148ExitFOut,s6Step148ExitGOut,s6Step148ExitFvOut,s6Step148ExitGvOut⟩,(shrinkRow 777 s6Step148ExitGExtra ++ (shrinkRow 795 s6Step148ExitFExtra ++ (shrinkRow 776 s6Step148ExitFvExtra ++ (shrinkRow 775 s6Step148ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step148ExitBank_rows]
  rfl

private theorem s6Step148Add0_apart : Disjoint s6Step148Add0Arena.live s6Step148Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step148Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step148Add0_card : s6Step148Add0Arena.live.card=882 := by
  decide +kernel

private theorem s6Step148Add0_borrowed : s6Step148Add0Arena.checkBorrow (hmrHybridCount s6Step148Add0Arena s6Step148Add0B.length) s6Step148Add0Work=some s6Step148Add0During := by
  have len : s6Step148Add0Work.length=hmrHybridCount s6Step148Add0Arena s6Step148Add0B.length := by
    rw [hmrHybridCount,s6Step148Add0_card]
    decide +kernel
  have nd : s6Step148Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step148Add0Arena s6Step148Add0During s6Step148Add0Work.toFinset s6Step148Add0_bounded s6Step148Add0_apart rfl

private theorem s6Step148Add0_distinct : (887::858::807::(s6Step148Add0A++s6Step148Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148Add0_owned : (887::858::807::(s6Step148Add0A++s6Step148Add0B)).toFinset⊆s6Step148Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step148Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step148Add0_checked : compileHmrHybridCinLog s6Step148Add0Arena 858 887 807 s6Step148Add0A s6Step148Add0B s6Step148Add0Work=some s6Step148Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step148Add0Arena s6Step148Add0During 858 887 807 s6Step148Add0A s6Step148Add0B s6Step148Add0Work
    (by decide +kernel) (by decide +kernel) s6Step148Add0_distinct
    (fun q hq => s6Step148Add0_owned (List.mem_toFinset.mpr hq)) s6Step148Add0_borrowed

private theorem s6Step148Add1_apart : Disjoint s6Step148Add1Arena.live s6Step148Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step148Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step148Add1_card : s6Step148Add1Arena.live.card=882 := by
  decide +kernel

private theorem s6Step148Add1_borrowed : s6Step148Add1Arena.checkBorrow (hmrHybridCount s6Step148Add1Arena s6Step148Add1B.length) s6Step148Add1Work=some s6Step148Add1During := by
  have len : s6Step148Add1Work.length=hmrHybridCount s6Step148Add1Arena s6Step148Add1B.length := by
    rw [hmrHybridCount,s6Step148Add1_card]
    decide +kernel
  have nd : s6Step148Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step148Add1Arena s6Step148Add1During s6Step148Add1Work.toFinset s6Step148Add1_bounded s6Step148Add1_apart rfl

private theorem s6Step148Add1_distinct : (887::858::807::(s6Step148Add1A++s6Step148Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148Add1_owned : (887::858::807::(s6Step148Add1A++s6Step148Add1B)).toFinset⊆s6Step148Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step148Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step148Add1_checked : compileHmrHybridCinLog s6Step148Add1Arena 858 887 807 s6Step148Add1A s6Step148Add1B s6Step148Add1Work=some s6Step148Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step148Add1Arena s6Step148Add1During 858 887 807 s6Step148Add1A s6Step148Add1B s6Step148Add1Work
    (by decide +kernel) (by decide +kernel) s6Step148Add1_distinct
    (fun q hq => s6Step148Add1_owned (List.mem_toFinset.mpr hq)) s6Step148Add1_borrowed

private theorem s6Step148F4_apart : Disjoint (s6Step148Add0A++s6Step148Add0B).toFinset (s6Step148Add1A++s6Step148Add1B).toFinset := by
  have nd : ((s6Step148Add0A++s6Step148Add0B)++(s6Step148Add1A++s6Step148Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step148F4_carry : s6Step148F4FlagArena.checkBorrow 1 [807]=some s6Step148Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step148F4FlagArena,s6Step148HeadFvAfter,arenaWires]
  · change s6Step148Add0Arena.live=(s6Step148HeadFvAfter.live∪{887})∪{807}
    apply hmrArena_union_pair_of_filter_check s6Step148HeadFvAfter s6Step148Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) 887 807 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step148F4_distinct : (855::858::887::807::((s6Step148Add0A++s6Step148Add1A)++(s6Step148Add0B++s6Step148Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148F4_flag : s6Step148HeadFvAfter.checkBorrow 1 [887]=some s6Step148F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step148HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step148F4_owned : (855::858::((s6Step148Add0A++s6Step148Add1A)++(s6Step148Add0B++s6Step148Add1B))).toFinset⊆s6Step148HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step148HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148F4_checked : compileHmrHybridF4Log s6Step148HeadFvAfter 855 858 s6Step148Add0A s6Step148Add0B s6Step148Add1A s6Step148Add1B [887] [807] s6Step148Add0Work s6Step148Add1Work=some s6Step148F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step148HeadFvAfter s6Step148F4FlagArena s6Step148Add0Arena s6Step148Add0During s6Step148Add1During 855 858
    s6Step148Add0A s6Step148Add0B s6Step148Add1A s6Step148Add1B [887] [807] s6Step148Add0Work s6Step148Add1Work
    (fun q hq => s6Step148F4_owned (List.mem_toFinset.mpr hq)) s6Step148F4_flag s6Step148F4_carry
    s6Step148F4_distinct s6Step148F4_apart s6Step148Add0_checked s6Step148Add1_checked

private theorem s6Step148Front_branch : s6Step148FrontSigmaArena.checkBorrow 1 [858]=some s6Step148HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step148FrontSigmaArena,s6Step148EntryGvAfter,arenaWires]
  · change s6Step148HeadGBefore.live=(s6Step148EntryGvAfter.live∪{855})∪{858}
    apply hmrArena_union_pair_of_filter_check s6Step148EntryGvAfter s6Step148HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 855 858 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step148Front_entry : HmrFrontEntryValid s6Step148EntryFBefore s6Step148FrontBank 195 88 ⟨195,194,88,88⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step148FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step148EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step148EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step148FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step148Front_sigma : s6Step148EntryGvAfter.checkBorrow 1 [855]=some s6Step148FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step148EntryGvAfter,arenaWires]
  · rfl

private def s6Step148HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148HeadFBefore : Arena := s6Step148HeadGAfter

private def s6Step148HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩

private def s6Step148HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩

private def s6Step148HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194],777⟩

private def s6Step148HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802],775⟩

private theorem s6Step148HeadBank_incomingDistinct : ([s6Step148HeadGRow,s6Step148HeadFRow,s6Step148HeadGvRow,s6Step148HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148HeadF_Incoming : rowsOwned s6Step148HeadFBefore [s6Step148HeadFRow,s6Step148HeadGvRow,s6Step148HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step148HeadGRow,s6Step148HeadFRow,s6Step148HeadGvRow,s6Step148HeadFvRow] 1 s6Step148HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step148HeadFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step148HeadBank_outgoingOwned : rowsOwned s6Step148HeadFvAfter [s6Step148HeadGOut,s6Step148HeadFOut,s6Step148HeadGvOut,s6Step148HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step148HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step148HeadF_Outgoing : rowsOwned s6Step148HeadFvAfter [s6Step148HeadFOut,s6Step148HeadGvOut,s6Step148HeadFvOut] :=
  hmrRows_owned_drop s6Step148HeadFvAfter [s6Step148HeadGOut,s6Step148HeadFOut,s6Step148HeadGvOut,s6Step148HeadFvOut] 1 s6Step148HeadBank_outgoingOwned

private theorem s6Step148HeadF_distinct : (s6Step148HeadFRow.sign::s6Step148HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148HeadF_owned : (s6Step148HeadFRow.sign::s6Step148HeadFRow.payload).toFinset⊆s6Step148HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step148HeadFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148HeadF_reserved : s6Step148HeadFBefore.reserve s6Step148HeadFFresh.toFinset=some s6Step148HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step148HeadFFresh,arenaWires]
  · norm_num [s6Step148HeadFBefore,s6Step148HeadGAfter,s6Step148HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step148HeadFBefore s6Step148HeadFAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step148HeadFFresh rfl rfl
    · norm_num [s6Step148HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step148HeadF_checked : planRowResizeLog s6Step148HeadFBefore s6Step148HeadFRow 196 s6Step148HeadFFresh=
    some (s6Step148HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 768],795⟩,growRow 795 s6Step148HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step148HeadFBefore s6Step148HeadFAfter s6Step148HeadFRow 196 s6Step148HeadFFresh
    s6Step148HeadF_distinct s6Step148HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step148HeadF_reserved
  have rowEq : WindowRow.mk (s6Step148HeadFRow.payload++s6Step148HeadFFresh) s6Step148HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 768],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step148HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step148HeadFvBefore : Arena := s6Step148HeadGvAfter

private theorem s6Step148HeadFv_Incoming : rowsOwned s6Step148HeadFvBefore [s6Step148HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step148HeadGRow,s6Step148HeadFRow,s6Step148HeadGvRow,s6Step148HeadFvRow] 3 s6Step148HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step148HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step148HeadFv_Outgoing : rowsOwned s6Step148HeadFvAfter [s6Step148HeadFvOut] :=
  hmrRows_owned_drop s6Step148HeadFvAfter [s6Step148HeadGOut,s6Step148HeadFOut,s6Step148HeadGvOut,s6Step148HeadFvOut] 3 s6Step148HeadBank_outgoingOwned

private theorem s6Step148HeadFv_distinct : (s6Step148HeadFvRow.sign::s6Step148HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148HeadFv_owned : (s6Step148HeadFvRow.sign::s6Step148HeadFvRow.payload).toFinset⊆s6Step148HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step148HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148HeadFv_reserved : s6Step148HeadFvBefore.reserve s6Step148HeadFvFresh.toFinset=some s6Step148HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step148HeadFvFresh,arenaWires]
  · norm_num [s6Step148HeadFvBefore,s6Step148HeadGvAfter,s6Step148HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step148HeadFvBefore s6Step148HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step148HeadFvFresh rfl rfl
    · norm_num [s6Step148HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step148HeadFv_checked : planRowResizeLog s6Step148HeadFvBefore s6Step148HeadFvRow 89 s6Step148HeadFvFresh=
    some (s6Step148HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 908],776⟩,growRow 776 s6Step148HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step148HeadFvBefore s6Step148HeadFvAfter s6Step148HeadFvRow 89 s6Step148HeadFvFresh
    s6Step148HeadFv_distinct s6Step148HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step148HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step148HeadFvRow.payload++s6Step148HeadFvFresh) s6Step148HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 908],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step148HeadG_Incoming : rowsOwned s6Step148HeadGBefore [s6Step148HeadGRow,s6Step148HeadFRow,s6Step148HeadGvRow,s6Step148HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step148HeadGRow,s6Step148HeadFRow,s6Step148HeadGvRow,s6Step148HeadFvRow] 0 s6Step148HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step148HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step148HeadG_Outgoing : rowsOwned s6Step148HeadFvAfter [s6Step148HeadGOut,s6Step148HeadFOut,s6Step148HeadGvOut,s6Step148HeadFvOut] :=
  hmrRows_owned_drop s6Step148HeadFvAfter [s6Step148HeadGOut,s6Step148HeadFOut,s6Step148HeadGvOut,s6Step148HeadFvOut] 0 s6Step148HeadBank_outgoingOwned

private theorem s6Step148HeadG_distinct : (s6Step148HeadGRow.sign::s6Step148HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148HeadG_owned : (s6Step148HeadGRow.sign::s6Step148HeadGRow.payload).toFinset⊆s6Step148HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step148HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148HeadG_reserved : s6Step148HeadGBefore.reserve s6Step148HeadGFresh.toFinset=some s6Step148HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step148HeadGFresh,arenaWires]
  · norm_num [s6Step148HeadGBefore,s6Step148HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step148HeadGBefore s6Step148HeadGAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step148HeadGFresh rfl rfl
    · norm_num [s6Step148HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step148HeadG_checked : planRowResizeLog s6Step148HeadGBefore s6Step148HeadGRow 196 s6Step148HeadGFresh=
    some (s6Step148HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 877],777⟩,growRow 777 s6Step148HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step148HeadGBefore s6Step148HeadGAfter s6Step148HeadGRow 196 s6Step148HeadGFresh
    s6Step148HeadG_distinct s6Step148HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step148HeadG_reserved
  have rowEq : WindowRow.mk (s6Step148HeadGRow.payload++s6Step148HeadGFresh) s6Step148HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 877],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step148HeadGvBefore : Arena := s6Step148HeadFAfter

private theorem s6Step148HeadGv_Incoming : rowsOwned s6Step148HeadGvBefore [s6Step148HeadGvRow,s6Step148HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step148HeadGRow,s6Step148HeadFRow,s6Step148HeadGvRow,s6Step148HeadFvRow] 2 s6Step148HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step148HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step148HeadGv_Outgoing : rowsOwned s6Step148HeadFvAfter [s6Step148HeadGvOut,s6Step148HeadFvOut] :=
  hmrRows_owned_drop s6Step148HeadFvAfter [s6Step148HeadGOut,s6Step148HeadFOut,s6Step148HeadGvOut,s6Step148HeadFvOut] 2 s6Step148HeadBank_outgoingOwned

private theorem s6Step148HeadGv_distinct : (s6Step148HeadGvRow.sign::s6Step148HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step148HeadGv_owned : (s6Step148HeadGvRow.sign::s6Step148HeadGvRow.payload).toFinset⊆s6Step148HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step148HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step148HeadGv_reserved : s6Step148HeadGvBefore.reserve s6Step148HeadGvFresh.toFinset=some s6Step148HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step148HeadGvFresh,arenaWires]
  · norm_num [s6Step148HeadGvBefore,s6Step148HeadFAfter,s6Step148HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step148HeadGvBefore s6Step148HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step148HeadGvFresh rfl rfl
    · norm_num [s6Step148HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step148HeadGv_checked : planRowResizeLog s6Step148HeadGvBefore s6Step148HeadGvRow 89 s6Step148HeadGvFresh=
    some (s6Step148HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 879],775⟩,growRow 775 s6Step148HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step148HeadGvBefore s6Step148HeadGvAfter s6Step148HeadGvRow 89 s6Step148HeadGvFresh
    s6Step148HeadGv_distinct s6Step148HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step148HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step148HeadGvRow.payload++s6Step148HeadGvFresh) s6Step148HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 879],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step148HeadBank_rows : planWindowRowsLog s6Step148HeadGBefore [(s6Step148HeadGRow,196),(s6Step148HeadFRow,196),(s6Step148HeadGvRow,89),(s6Step148HeadFvRow,89)] [s6Step148HeadGFresh,s6Step148HeadFFresh,s6Step148HeadGvFresh,s6Step148HeadFvFresh]=
    some (s6Step148HeadFvAfter,[s6Step148HeadGOut,s6Step148HeadFOut,s6Step148HeadGvOut,s6Step148HeadFvOut],(growRow 777 s6Step148HeadGFresh ++ (growRow 795 s6Step148HeadFFresh ++ (growRow 775 s6Step148HeadGvFresh ++ (growRow 776 s6Step148HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step148HeadFvAfter [] []=some (s6Step148HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step148HeadFvBefore s6Step148HeadFvAfter s6Step148HeadFvAfter
    s6Step148HeadFvRow s6Step148HeadFvOut 89 s6Step148HeadFvFresh [] [] []
    (growRow 776 s6Step148HeadFvFresh) ([]) s6Step148HeadFv_Incoming s6Step148HeadFv_checked h4 s6Step148HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step148HeadGvBefore s6Step148HeadGvAfter s6Step148HeadFvAfter
    s6Step148HeadGvRow s6Step148HeadGvOut 89 s6Step148HeadGvFresh [(s6Step148HeadFvRow,89)] [s6Step148HeadFvFresh] [s6Step148HeadFvOut]
    (growRow 775 s6Step148HeadGvFresh) ((growRow 776 s6Step148HeadFvFresh ++ [])) s6Step148HeadGv_Incoming s6Step148HeadGv_checked h3 s6Step148HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step148HeadFBefore s6Step148HeadFAfter s6Step148HeadFvAfter
    s6Step148HeadFRow s6Step148HeadFOut 196 s6Step148HeadFFresh [(s6Step148HeadGvRow,89),(s6Step148HeadFvRow,89)] [s6Step148HeadGvFresh,s6Step148HeadFvFresh] [s6Step148HeadGvOut,s6Step148HeadFvOut]
    (growRow 795 s6Step148HeadFFresh) ((growRow 775 s6Step148HeadGvFresh ++ (growRow 776 s6Step148HeadFvFresh ++ []))) s6Step148HeadF_Incoming s6Step148HeadF_checked h2 s6Step148HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step148HeadGBefore s6Step148HeadGAfter s6Step148HeadFvAfter
    s6Step148HeadGRow s6Step148HeadGOut 196 s6Step148HeadGFresh [(s6Step148HeadFRow,196),(s6Step148HeadGvRow,89),(s6Step148HeadFvRow,89)] [s6Step148HeadFFresh,s6Step148HeadGvFresh,s6Step148HeadFvFresh] [s6Step148HeadFOut,s6Step148HeadGvOut,s6Step148HeadFvOut]
    (growRow 777 s6Step148HeadGFresh) ((growRow 795 s6Step148HeadFFresh ++ (growRow 775 s6Step148HeadGvFresh ++ (growRow 776 s6Step148HeadFvFresh ++ [])))) s6Step148HeadG_Incoming s6Step148HeadG_checked h1 s6Step148HeadG_Outgoing
  exact h0

private theorem s6Step148HeadBank_checked : compileHmrBankResizeLog .headroom s6Step148HeadGBefore ⟨s6Step148HeadFRow,s6Step148HeadGRow,s6Step148HeadFvRow,s6Step148HeadGvRow⟩ ⟨196,196,89,89⟩ [s6Step148HeadGFresh,s6Step148HeadFFresh,s6Step148HeadGvFresh,s6Step148HeadFvFresh]=
    some (s6Step148HeadFvAfter,⟨s6Step148HeadFOut,s6Step148HeadGOut,s6Step148HeadFvOut,s6Step148HeadGvOut⟩,(growRow 777 s6Step148HeadGFresh ++ (growRow 795 s6Step148HeadFFresh ++ (growRow 775 s6Step148HeadGvFresh ++ (growRow 776 s6Step148HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step148HeadBank_rows]
  rfl

private theorem s6Step148Front_checked : compileHmrSourceFrontLog s6Step148EntryFBefore s6Step148FrontBank 195 88 ⟨195,194,88,88⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step148FrontLog=some s6Step148FrontPlan := by
  have pairEq : s6Step148FrontPair=⟨s6Step148HeadFRow,s6Step148HeadGRow,s6Step148HeadFvRow,s6Step148HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step148FrontHead=⟨s6Step148ExitFRow,s6Step148ExitGRow,s6Step148ExitFvRow,s6Step148ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step148Add0A=s6Step148FrontHead.f.wires := by decide +kernel
  have gEq : s6Step148Add0B=s6Step148FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step148Add1A=s6Step148FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step148Add1B=s6Step148FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step148EntryFBefore s6Step148FrontBank 195 88 ⟨195,194,88,88⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step148FrontLog s6Step148FrontPlan
  · exact s6Step148Front_entry
  · exact s6Step148EntryBank_checked
  · exact s6Step148Front_sigma
  · rfl
  · exact s6Step148Front_branch
  · rfl
  · simpa only [s6Step148FrontPlan,pairEq] using s6Step148HeadBank_checked
  · simpa only [s6Step148FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step148F4_checked
  · exact s6Step148Counter_checked
  · rfl
  · simpa only [s6Step148FrontPlan,headEq] using s6Step148ExitBank_checked

private theorem s6Step148Complete_explicit_checked : compileHmrEarlyStepLog s6Step148EntryFBefore s6Step148FrontBank 195 88 ⟨195,194,88,88⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step148CompleteLog=some s6Step148CompletePlan := by
  let Q := s6Step148EarlyControlPlan
  have hq := s6Step148EarlyControl_plan_checked
  have fv1 : s6Step148CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step148CompleteOut.fv.payload[2]?.getD s6Step148CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step148CompleteOut.fv.payload[3]?.getD s6Step148CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step148CompleteOut.fv.payload[4]?.getD s6Step148CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step148EntryFBefore s6Step148EarlyControlArena s6Step148FrontBank 195 88 ⟨195,194,88,88⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step148CompleteLog s6Step148FrontPlan Q
    s6Step148Front_checked s6Step148Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step148Complete_owned s6Step148Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step148EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 s6Step148CompleteOut.fv.second (s6Step148CompleteOut.fv.payload[2]?.getD s6Step148CompleteOut.fv.sign) (s6Step148CompleteOut.fv.payload[3]?.getD s6Step148CompleteOut.fv.sign) (s6Step148CompleteOut.fv.payload[4]?.getD s6Step148CompleteOut.fv.sign) 858 42 s6Step148EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep148Arena : Arena := s6Step148EntryFBefore
def s6PrivateStep148Bank : WindowBank := s6Step148FrontBank
def s6PrivateStep148Spec : HmrSourceWalkStepLog := ⟨195,88,⟨195,194,88,88⟩,42,.early s6Step148CompleteLog⟩
def s6PrivateStep148Plan : HmrSourceStepPlan := .early s6Step148CompletePlan
theorem s6PrivateStep148_source : s6PrivateStep148Spec=s6ObservedLogs144[4] := rfl
theorem s6PrivateStep148_checked : compileHmrSourceStepLog s6PrivateStep148Arena s6PrivateStep148Bank
    s6PrivateStep148Spec.fgWidth s6PrivateStep148Spec.vWidth s6PrivateStep148Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 148 s6PrivateStep148Spec.need none s6PrivateStep148Spec.log=some s6PrivateStep148Plan := by
  change compileHmrSourceStepLog s6Step148EntryFBefore s6Step148FrontBank 195 88 ⟨195,194,88,88⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 148 42 none (.early s6Step148CompleteLog)=some (.early s6Step148CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 148<498)]
  rw [s6Step148Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
