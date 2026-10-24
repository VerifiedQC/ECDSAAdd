import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep143
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

private def s6Step145CompleteMoves : List (Wire × Wire) := [(908,196),(887,452)]

private def s6Step145EarlyControlLog : HmrEarlyControlLog := ⟨[887, 908, 807, 802, 867],[768],[879],[875, 882, 891, 903, 791, 825],[]⟩

private def s6Step145FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[867], [802], [807], [780]],[[], [], [], []]⟩,[794],[855],[768],[879],[875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[768, 879, 875, 882]⟩

private def s6Step145CompleteLog : HmrEarlyStepLog := ⟨s6Step145FrontLog,s6Step145CompleteMoves,s6Step145EarlyControlLog⟩

private def s6Step145ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451],795⟩

private def s6Step145ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780],776⟩

private def s6Step145ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195],777⟩

private def s6Step145ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927],775⟩

private def s6Step145FrontOut : WindowBank := ⟨s6Step145ExitFOut,s6Step145ExitGOut,s6Step145ExitFvOut,s6Step145ExitGvOut⟩

private def s6Step145CompleteOut : WindowBank := s6Step145FrontOut.repacked s6Step145CompleteMoves

private def s6Step145EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step145EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step145EarlyControlPositiveArena,[768],s6Step145EarlyControlEqualityArena,[879],⟨⟨794,false⟩,[⟨⟨768,false⟩,879⟩]⟩⟩

private def s6Step145EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step145EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step145EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,908⟩,⟨⟨771,false⟩,807⟩,⟨⟨770,false⟩,802⟩,⟨⟨769,false⟩,867⟩]⟩

private def s6Step145EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step145EarlyControlZeroArena,s6Step145EarlyControlZeroPlan,s6Step145EarlyControlClassPlan,s6Step145EarlyControlFlagArena,s6Step145EarlyControlFittedArena,s6Step145EarlyControlHistoryArena,s6Step145EarlyControlSigmaArena,s6Step145EarlyControlOutputArena,s6Step145EarlyControlLog⟩

private def s6Step145CounterWork : List Wire := [768, 879, 875, 882]

private theorem s6Step145Counter_bounded : s6Step145CounterWork.toFinset⊆arenaWires := by norm_num [s6Step145CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step145HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145CounterDuring : Arena := ⟨s6Step145HeadFvAfter.live∪s6Step145CounterWork.toFinset,Finset.union_subset s6Step145HeadFvAfter.bounded s6Step145Counter_bounded⟩

private def s6Step145EntryFFresh : List Wire := []

private def s6Step145EntryFvFresh : List Wire := []

private def s6Step145EntryGFresh : List Wire := []

private def s6Step145EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145EntryGvAfter : Arena := s6Step145EntryFBefore

private def s6Step145EntryGvFresh : List Wire := []

private def s6Step145ExitFExtra : List Wire := [452, 802]

private def s6Step145ExitGExtra : List Wire := [196, 867]

private def s6Step145ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,196),(197,452),(453,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145ExitGvExtra : List Wire := [807]

private def s6Step145Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step145Add0Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step145Add0_bounded : s6Step145Add0Work.toFinset⊆arenaWires := by
  have h : s6Step145Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step145Add0During : Arena := ⟨s6Step145Add0Arena.live∪s6Step145Add0Work.toFinset,Finset.union_subset s6Step145Add0Arena.bounded s6Step145Add0_bounded⟩

private def s6Step145Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step145Add1Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step145Add1_bounded : s6Step145Add1Work.toFinset⊆arenaWires := by
  have h : s6Step145Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step145Add1During : Arena := ⟨s6Step145Add1Arena.live∪s6Step145Add1Work.toFinset,Finset.union_subset s6Step145Add1Arena.bounded s6Step145Add1_bounded⟩

private def s6Step145F4FlagArena : Arena := ⟨s6Step145HeadFvAfter.live∪{768},Finset.union_subset s6Step145HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step145F4Plan : HmrHybridF4Plan := ⟨s6Step145F4FlagArena,[768],s6Step145Add0Arena,[879],s6Step145Add0During,s6Step145Add0Work,s6Step145Add1During,s6Step145Add1Work⟩

private def s6Step145HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 802],795⟩

private def s6Step145HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780],776⟩

private def s6Step145HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 867],777⟩

private def s6Step145HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 807],775⟩

private def s6Step145FrontHead : WindowBank := ⟨s6Step145HeadFOut,s6Step145HeadGOut,s6Step145HeadFvOut,s6Step145HeadGvOut⟩

private def s6Step145EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452],795⟩

private def s6Step145EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩

private def s6Step145EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],777⟩

private def s6Step145EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927],775⟩

private def s6Step145FrontPair : WindowBank := ⟨s6Step145EntryFOut,s6Step145EntryGOut,s6Step145EntryFvOut,s6Step145EntryGvOut⟩

private def s6Step145FrontSigmaArena : Arena := ⟨s6Step145EntryGvAfter.live∪{794},Finset.union_subset s6Step145EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step145HeadFFresh : List Wire := [802]

private def s6Step145HeadFvFresh : List Wire := [780]

private def s6Step145HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145HeadGFresh : List Wire := [867]

private def s6Step145HeadGvFresh : List Wire := [807]

private def s6Step145FrontPlan : HmrSourceFront := ⟨s6Step145EntryGvAfter,s6Step145FrontPair,(growRow 795 s6Step145EntryFFresh ++ (growRow 777 s6Step145EntryGFresh ++ (growRow 776 s6Step145EntryFvFresh ++ (growRow 775 s6Step145EntryGvFresh ++ [])))),s6Step145FrontSigmaArena,[794],s6Step145HeadGBefore,[855],
  s6Step145HeadFvAfter,s6Step145FrontHead,(growRow 777 s6Step145HeadGFresh ++ (growRow 795 s6Step145HeadFFresh ++ (growRow 775 s6Step145HeadGvFresh ++ (growRow 776 s6Step145HeadFvFresh ++ [])))),s6Step145F4Plan,s6Step145CounterDuring,s6Step145CounterWork,s6Step145ExitGvAfter,s6Step145FrontOut,(shrinkRow 777 s6Step145ExitGExtra ++ (shrinkRow 795 s6Step145ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step145ExitGvExtra ++ []))))⟩

private def s6Step145CompletePlan : HmrEarlyStepPlan := ⟨s6Step145FrontPlan,s6Step145EarlyControlArena,s6Step145EarlyControlPlan,s6Step145CompleteMoves⟩

private theorem s6Step145Complete_apart : List.Disjoint (s6Step145CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [794, 855, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step145CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[794, 855, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step145Complete_owned : (s6Step145CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step145EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step145EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step145CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,452),(453,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145CompleteRelocationMove0Borrowed : Arena := ⟨s6Step145ExitGvAfter.live∪{196},Finset.union_subset s6Step145ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step145CompleteRelocationMove1Borrowed : Arena := ⟨s6Step145CompleteRelocationMove0After.live∪{452},Finset.union_subset s6Step145CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step145CompleteRelocation_move0_owned : 908∈s6Step145ExitGvAfter.live := by norm_num [s6Step145ExitGvAfter,arenaWires]

private theorem s6Step145CompleteRelocation_move0_reserve : s6Step145ExitGvAfter.reserve {196}=some s6Step145CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step145ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step145CompleteRelocation_move0_retire : s6Step145CompleteRelocationMove0Borrowed.retireSet {908}=s6Step145CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step145CompleteRelocationMove0Borrowed s6Step145CompleteRelocationMove0After {908}
  change s6Step145CompleteRelocationMove0After.live=(s6Step145ExitGvAfter.live∪{196})\{908}
  apply hmrArena_update_of_filter_check s6Step145ExitGvAfter s6Step145CompleteRelocationMove0After (fun q => ([(0,196),(197,452),(453,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,452),(453,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [196] [908] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step145CompleteRelocation_move1_owned : 887∈s6Step145CompleteRelocationMove0After.live := by norm_num [s6Step145CompleteRelocationMove0After,arenaWires]

private theorem s6Step145CompleteRelocation_move1_reserve : s6Step145CompleteRelocationMove0After.reserve {452}=some s6Step145CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step145CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step145CompleteRelocation_move1_retire : s6Step145CompleteRelocationMove1Borrowed.retireSet {887}=s6Step145EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step145CompleteRelocationMove1Borrowed s6Step145EarlyControlArena {887}
  change s6Step145EarlyControlArena.live=(s6Step145CompleteRelocationMove0After.live∪{452})\{887}
  apply hmrArena_update_of_filter_check s6Step145CompleteRelocationMove0After s6Step145EarlyControlArena (fun q => ([(0,452),(453,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [452] [887] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step145CompleteRelocation_checked : s6Step145ExitGvAfter.checkRepack [(908,196),(887,452)]=some s6Step145EarlyControlArena := by
  have tail2 : s6Step145EarlyControlArena.checkRepack []=some s6Step145EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step145CompleteRelocationMove0After s6Step145CompleteRelocationMove1Borrowed s6Step145EarlyControlArena s6Step145EarlyControlArena 887 452 []
    s6Step145CompleteRelocation_move1_owned s6Step145CompleteRelocation_move1_reserve s6Step145CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step145ExitGvAfter s6Step145CompleteRelocationMove0Borrowed s6Step145CompleteRelocationMove0After s6Step145EarlyControlArena 908 196 [(887,452)]
    s6Step145CompleteRelocation_move0_owned s6Step145CompleteRelocation_move0_reserve s6Step145CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step145Complete_repack : s6Step145ExitGvAfter.checkRepack s6Step145CompleteMoves=some s6Step145EarlyControlArena := by
  simpa only [s6Step145CompleteMoves] using s6Step145CompleteRelocation_checked

private theorem s6Step145EarlyControl_branchOwned : ([855] : List Wire).toFinset⊆s6Step145EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step145EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145EarlyControl_branch : compileHmrBranchRetirement s6Step145EarlyControlSigmaArena 855=some s6Step145EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step145EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step145EarlyControlSigmaArena s6Step145EarlyControlOutputArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [855] rfl rfl
    decide +kernel

private theorem s6Step145EarlyControl_classEqualityBorrow : s6Step145EarlyControlPositiveArena.checkBorrow (([794, 768] : List Wire).length-1) s6Step145EarlyControlLog.classWork=some s6Step145EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step145EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step145EarlyControlPositiveArena s6Step145EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step145EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step145EarlyControl_classEqualityOwned : ([794, 768] : List Wire).toFinset⊆s6Step145EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step145EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145EarlyControl_classEquality : compileHmrEqualityLog s6Step145EarlyControlPositiveArena [794, 768] 0 s6Step145EarlyControlLog.classWork=some (s6Step145EarlyControlEqualityArena,s6Step145EarlyControlLog.classWork,s6Step145EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step145EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step145EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step145EarlyControl_classOwned : ([769, 867, 794] : List Wire).toFinset⊆s6Step145EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step145EarlyControlZeroArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145EarlyControl_positiveBorrow : s6Step145EarlyControlZeroArena.checkBorrow (1) s6Step145EarlyControlLog.positiveWork=some s6Step145EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step145EarlyControlZeroArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step145EarlyControlZeroArena s6Step145EarlyControlPositiveArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step145EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step145EarlyControl_class : compileHmrSourceClassLog s6Step145EarlyControlZeroArena false 769 s6Step145EarlyControlZeroPlan.top 0 794 s6Step145EarlyControlLog.positiveWork s6Step145EarlyControlLog.classWork=some s6Step145EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step145EarlyControlClassPlan s6Step145EarlyControlZeroArena false 769 s6Step145EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s6Step145EarlyControl_classOwned
  · exact s6Step145EarlyControl_positiveBorrow
  · exact s6Step145EarlyControl_classEquality

private theorem s6Step145EarlyControl_entryRecordOwned : ([855, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step145EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step145EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145EarlyControl_entrySigmaOwned : ([794, 254] : List Wire).toFinset⊆s6Step145EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step145EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145EarlyControl_fitBorrow : s6Step145EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step145EarlyControlLog.recordFresh=some s6Step145EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step145EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step145EarlyControlFittedArena,s6Step145EarlyControlFlagArena,s6Step145EarlyControlLog,arenaWires]

private theorem s6Step145EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step145EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step145EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step145EarlyControl_fit : compileHmrRecordGrowLog s6Step145EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step145EarlyControlLog.recordFresh=some s6Step145EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step145EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step145EarlyControl_fitBorrow

private theorem s6Step145EarlyControl_flagsBorrow : s6Step145EarlyControlEqualityArena.checkBorrow (6) s6Step145EarlyControlLog.flagWork=some s6Step145EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step145EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step145EarlyControlFlagArena,s6Step145EarlyControlEqualityArena,s6Step145EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step145EarlyControl_flagsOwned : ([879, 253, 252, 251] : List Wire).toFinset⊆s6Step145EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step145EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step145EarlyControl_flags : compileHmrFlagsLog s6Step145EarlyControlClassPlan.equalityArena s6Step145EarlyControlClassPlan.equality.top 253 252 251 s6Step145EarlyControlLog.flagWork=some s6Step145EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step145EarlyControl_flagsOwned⟩
  · exact s6Step145EarlyControl_flagsBorrow

private theorem s6Step145EarlyControl_historyBorrow : s6Step145EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step145EarlyControlLog.recordFresh=some s6Step145EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step145EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step145EarlyControlArena s6Step145EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step145EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step145EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step145EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step145EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145EarlyControl_history : compileHmrRecordGrowLog s6Step145EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step145EarlyControlLog.recordFresh=some s6Step145EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step145EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step145EarlyControl_historyBorrow

private theorem s6Step145EarlyControl_sigmaOwned : ([254, 794] : List Wire).toFinset⊆s6Step145EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step145EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s6Step145EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step145EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145EarlyControl_sigmaRelease : s6Step145EarlyControlHistoryArena.release {794} (fun _ => false)=some s6Step145EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step145EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step145EarlyControlHistoryArena s6Step145EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [794] rfl rfl
    decide +kernel

private theorem s6Step145EarlyControl_sigma : compileHmrSigmaDropLog s6Step145EarlyControlHistoryArena false 0 0 254 794 []=some s6Step145EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step145EarlyControl_sigmaOwned⟩
  · exact s6Step145EarlyControl_sigmaRelease

private theorem s6Step145EarlyControl_zeroBorrow : s6Step145EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step145EarlyControlLog.zeroWork=some s6Step145EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step145EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step145EarlyControlArena s6Step145EarlyControlZeroArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step145EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step145EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step145EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step145EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145EarlyControl_zero : compileHmrEqualityLog s6Step145EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step145EarlyControlLog.zeroWork=some (s6Step145EarlyControlZeroArena,s6Step145EarlyControlLog.zeroWork,s6Step145EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step145EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step145EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step145EarlyControl_logged : s6Step145EarlyControlPlan.Logged s6Step145EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 794 254 253 252 251 855 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step145EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step145EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step145EarlyControl_zero
  · exact s6Step145EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step145EarlyControl_flags
  · exact s6Step145EarlyControl_fit
  · exact s6Step145EarlyControl_history
  · exact s6Step145EarlyControl_sigma
  · exact s6Step145EarlyControl_branch

private theorem s6Step145EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step145EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 794 254 253 252 251 855 42 s6Step145EarlyControlLog=some s6Step145EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step145EarlyControlPlan s6Step145EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 794 254 253 252 251 855 42 s6Step145EarlyControl_logged

private def s6Step145EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452],795⟩

private def s6Step145EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩

private def s6Step145EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],777⟩

private def s6Step145EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927],775⟩

private def s6Step145FrontBank : WindowBank := ⟨s6Step145EntryFRow,s6Step145EntryGRow,s6Step145EntryFvRow,s6Step145EntryGvRow⟩

private def s6Step145Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 802, 795]

private def s6Step145Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 867, 777]

private def s6Step145Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 776]

private def s6Step145Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 807, 775]

private theorem s6Step145Counter_apart : Disjoint s6Step145HeadFvAfter.live s6Step145CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step145HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145Counter_borrowed : s6Step145HeadFvAfter.checkBorrow 4 s6Step145CounterWork=some s6Step145CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step145HeadFvAfter s6Step145CounterDuring s6Step145CounterWork.toFinset s6Step145Counter_bounded s6Step145Counter_apart rfl

private theorem s6Step145Counter_owned : (794::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step145HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step145HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145Counter_checked : compileHmrCounterStepLog s6Step145HeadFvAfter true 794 [774, 773, 772, 771, 770, 769] s6Step145CounterWork=some s6Step145CounterDuring := by
  have owned : ∀q∈794::[774, 773, 772, 771, 770, 769],q∈s6Step145HeadFvAfter.live := fun q hq => s6Step145Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step145Counter_borrowed

private def s6Step145EntryFAfter : Arena := s6Step145EntryFBefore

private theorem s6Step145EntryBank_incomingDistinct : ([s6Step145EntryFRow,s6Step145EntryGRow,s6Step145EntryFvRow,s6Step145EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145EntryF_Incoming : rowsOwned s6Step145EntryFBefore [s6Step145EntryFRow,s6Step145EntryGRow,s6Step145EntryFvRow,s6Step145EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step145EntryFRow,s6Step145EntryGRow,s6Step145EntryFvRow,s6Step145EntryGvRow] 0 s6Step145EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step145EntryFBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step145EntryBank_outgoingOwned : rowsOwned s6Step145EntryGvAfter [s6Step145EntryFOut,s6Step145EntryGOut,s6Step145EntryFvOut,s6Step145EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step145EntryGvAfter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step145EntryF_Outgoing : rowsOwned s6Step145EntryGvAfter [s6Step145EntryFOut,s6Step145EntryGOut,s6Step145EntryFvOut,s6Step145EntryGvOut] :=
  hmrRows_owned_drop s6Step145EntryGvAfter [s6Step145EntryFOut,s6Step145EntryGOut,s6Step145EntryFvOut,s6Step145EntryGvOut] 0 s6Step145EntryBank_outgoingOwned

private theorem s6Step145EntryF_distinct : (s6Step145EntryFRow.sign::s6Step145EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145EntryF_owned : (s6Step145EntryFRow.sign::s6Step145EntryFRow.payload).toFinset⊆s6Step145EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step145EntryFBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145EntryF_reserved : s6Step145EntryFBefore.reserve s6Step145EntryFFresh.toFinset=some s6Step145EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step145EntryFFresh,arenaWires]
  · norm_num [s6Step145EntryFBefore,s6Step145EntryFFresh,arenaWires]
  · simp only [s6Step145EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step145EntryF_checked : planRowResizeLog s6Step145EntryFBefore s6Step145EntryFRow 197 s6Step145EntryFFresh=
    some (s6Step145EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452],795⟩,growRow 795 s6Step145EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step145EntryFBefore s6Step145EntryFAfter s6Step145EntryFRow 197 s6Step145EntryFFresh
    s6Step145EntryF_distinct s6Step145EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step145EntryF_reserved
  have rowEq : WindowRow.mk (s6Step145EntryFRow.payload++s6Step145EntryFFresh) s6Step145EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step145EntryFvAfter : Arena := s6Step145EntryFBefore

private def s6Step145EntryFvBefore : Arena := s6Step145EntryFBefore

private theorem s6Step145EntryFv_Incoming : rowsOwned s6Step145EntryFvBefore [s6Step145EntryFvRow,s6Step145EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step145EntryFRow,s6Step145EntryGRow,s6Step145EntryFvRow,s6Step145EntryGvRow] 2 s6Step145EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step145EntryFvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step145EntryFv_Outgoing : rowsOwned s6Step145EntryGvAfter [s6Step145EntryFvOut,s6Step145EntryGvOut] :=
  hmrRows_owned_drop s6Step145EntryGvAfter [s6Step145EntryFOut,s6Step145EntryGOut,s6Step145EntryFvOut,s6Step145EntryGvOut] 2 s6Step145EntryBank_outgoingOwned

private theorem s6Step145EntryFv_distinct : (s6Step145EntryFvRow.sign::s6Step145EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145EntryFv_owned : (s6Step145EntryFvRow.sign::s6Step145EntryFvRow.payload).toFinset⊆s6Step145EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step145EntryFvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145EntryFv_reserved : s6Step145EntryFvBefore.reserve s6Step145EntryFvFresh.toFinset=some s6Step145EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step145EntryFvFresh,arenaWires]
  · norm_num [s6Step145EntryFvBefore,s6Step145EntryFBefore,s6Step145EntryFvFresh,arenaWires]
  · simp only [s6Step145EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step145EntryFv_checked : planRowResizeLog s6Step145EntryFvBefore s6Step145EntryFvRow 86 s6Step145EntryFvFresh=
    some (s6Step145EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩,growRow 776 s6Step145EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step145EntryFvBefore s6Step145EntryFvAfter s6Step145EntryFvRow 86 s6Step145EntryFvFresh
    s6Step145EntryFv_distinct s6Step145EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step145EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step145EntryFvRow.payload++s6Step145EntryFvFresh) s6Step145EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step145EntryGAfter : Arena := s6Step145EntryFBefore

private def s6Step145EntryGBefore : Arena := s6Step145EntryFBefore

private theorem s6Step145EntryG_Incoming : rowsOwned s6Step145EntryGBefore [s6Step145EntryGRow,s6Step145EntryFvRow,s6Step145EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step145EntryFRow,s6Step145EntryGRow,s6Step145EntryFvRow,s6Step145EntryGvRow] 1 s6Step145EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step145EntryGBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step145EntryG_Outgoing : rowsOwned s6Step145EntryGvAfter [s6Step145EntryGOut,s6Step145EntryFvOut,s6Step145EntryGvOut] :=
  hmrRows_owned_drop s6Step145EntryGvAfter [s6Step145EntryFOut,s6Step145EntryGOut,s6Step145EntryFvOut,s6Step145EntryGvOut] 1 s6Step145EntryBank_outgoingOwned

private theorem s6Step145EntryG_distinct : (s6Step145EntryGRow.sign::s6Step145EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145EntryG_owned : (s6Step145EntryGRow.sign::s6Step145EntryGRow.payload).toFinset⊆s6Step145EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step145EntryGBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145EntryG_reserved : s6Step145EntryGBefore.reserve s6Step145EntryGFresh.toFinset=some s6Step145EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step145EntryGFresh,arenaWires]
  · norm_num [s6Step145EntryGBefore,s6Step145EntryFBefore,s6Step145EntryGFresh,arenaWires]
  · simp only [s6Step145EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step145EntryG_checked : planRowResizeLog s6Step145EntryGBefore s6Step145EntryGRow 197 s6Step145EntryGFresh=
    some (s6Step145EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],777⟩,growRow 777 s6Step145EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step145EntryGBefore s6Step145EntryGAfter s6Step145EntryGRow 197 s6Step145EntryGFresh
    s6Step145EntryG_distinct s6Step145EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step145EntryG_reserved
  have rowEq : WindowRow.mk (s6Step145EntryGRow.payload++s6Step145EntryGFresh) s6Step145EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step145EntryGvBefore : Arena := s6Step145EntryFBefore

private theorem s6Step145EntryGv_Incoming : rowsOwned s6Step145EntryGvBefore [s6Step145EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step145EntryFRow,s6Step145EntryGRow,s6Step145EntryFvRow,s6Step145EntryGvRow] 3 s6Step145EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step145EntryGvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step145EntryGv_Outgoing : rowsOwned s6Step145EntryGvAfter [s6Step145EntryGvOut] :=
  hmrRows_owned_drop s6Step145EntryGvAfter [s6Step145EntryFOut,s6Step145EntryGOut,s6Step145EntryFvOut,s6Step145EntryGvOut] 3 s6Step145EntryBank_outgoingOwned

private theorem s6Step145EntryGv_distinct : (s6Step145EntryGvRow.sign::s6Step145EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145EntryGv_owned : (s6Step145EntryGvRow.sign::s6Step145EntryGvRow.payload).toFinset⊆s6Step145EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step145EntryGvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145EntryGv_reserved : s6Step145EntryGvBefore.reserve s6Step145EntryGvFresh.toFinset=some s6Step145EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step145EntryGvFresh,arenaWires]
  · norm_num [s6Step145EntryGvBefore,s6Step145EntryFBefore,s6Step145EntryGvFresh,arenaWires]
  · simp only [s6Step145EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step145EntryGv_checked : planRowResizeLog s6Step145EntryGvBefore s6Step145EntryGvRow 86 s6Step145EntryGvFresh=
    some (s6Step145EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927],775⟩,growRow 775 s6Step145EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step145EntryGvBefore s6Step145EntryGvAfter s6Step145EntryGvRow 86 s6Step145EntryGvFresh
    s6Step145EntryGv_distinct s6Step145EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step145EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step145EntryGvRow.payload++s6Step145EntryGvFresh) s6Step145EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step145EntryBank_rows : planWindowRowsLog s6Step145EntryFBefore [(s6Step145EntryFRow,197),(s6Step145EntryGRow,197),(s6Step145EntryFvRow,86),(s6Step145EntryGvRow,86)] [s6Step145EntryFFresh,s6Step145EntryGFresh,s6Step145EntryFvFresh,s6Step145EntryGvFresh]=
    some (s6Step145EntryGvAfter,[s6Step145EntryFOut,s6Step145EntryGOut,s6Step145EntryFvOut,s6Step145EntryGvOut],(growRow 795 s6Step145EntryFFresh ++ (growRow 777 s6Step145EntryGFresh ++ (growRow 776 s6Step145EntryFvFresh ++ (growRow 775 s6Step145EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step145EntryGvAfter [] []=some (s6Step145EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step145EntryGvBefore s6Step145EntryGvAfter s6Step145EntryGvAfter
    s6Step145EntryGvRow s6Step145EntryGvOut 86 s6Step145EntryGvFresh [] [] []
    (growRow 775 s6Step145EntryGvFresh) ([]) s6Step145EntryGv_Incoming s6Step145EntryGv_checked h4 s6Step145EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step145EntryFvBefore s6Step145EntryFvAfter s6Step145EntryGvAfter
    s6Step145EntryFvRow s6Step145EntryFvOut 86 s6Step145EntryFvFresh [(s6Step145EntryGvRow,86)] [s6Step145EntryGvFresh] [s6Step145EntryGvOut]
    (growRow 776 s6Step145EntryFvFresh) ((growRow 775 s6Step145EntryGvFresh ++ [])) s6Step145EntryFv_Incoming s6Step145EntryFv_checked h3 s6Step145EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step145EntryGBefore s6Step145EntryGAfter s6Step145EntryGvAfter
    s6Step145EntryGRow s6Step145EntryGOut 197 s6Step145EntryGFresh [(s6Step145EntryFvRow,86),(s6Step145EntryGvRow,86)] [s6Step145EntryFvFresh,s6Step145EntryGvFresh] [s6Step145EntryFvOut,s6Step145EntryGvOut]
    (growRow 777 s6Step145EntryGFresh) ((growRow 776 s6Step145EntryFvFresh ++ (growRow 775 s6Step145EntryGvFresh ++ []))) s6Step145EntryG_Incoming s6Step145EntryG_checked h2 s6Step145EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step145EntryFBefore s6Step145EntryFAfter s6Step145EntryGvAfter
    s6Step145EntryFRow s6Step145EntryFOut 197 s6Step145EntryFFresh [(s6Step145EntryGRow,197),(s6Step145EntryFvRow,86),(s6Step145EntryGvRow,86)] [s6Step145EntryGFresh,s6Step145EntryFvFresh,s6Step145EntryGvFresh] [s6Step145EntryGOut,s6Step145EntryFvOut,s6Step145EntryGvOut]
    (growRow 795 s6Step145EntryFFresh) ((growRow 777 s6Step145EntryGFresh ++ (growRow 776 s6Step145EntryFvFresh ++ (growRow 775 s6Step145EntryGvFresh ++ [])))) s6Step145EntryF_Incoming s6Step145EntryF_checked h1 s6Step145EntryF_Outgoing
  exact h0

private theorem s6Step145EntryBank_checked : compileHmrBankResizeLog .entry s6Step145EntryFBefore ⟨s6Step145EntryFRow,s6Step145EntryGRow,s6Step145EntryFvRow,s6Step145EntryGvRow⟩ ⟨197,197,86,86⟩ [s6Step145EntryFFresh,s6Step145EntryGFresh,s6Step145EntryFvFresh,s6Step145EntryGvFresh]=
    some (s6Step145EntryGvAfter,⟨s6Step145EntryFOut,s6Step145EntryGOut,s6Step145EntryFvOut,s6Step145EntryGvOut⟩,(growRow 795 s6Step145EntryFFresh ++ (growRow 777 s6Step145EntryGFresh ++ (growRow 776 s6Step145EntryFvFresh ++ (growRow 775 s6Step145EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step145EntryBank_rows]
  rfl

private def s6Step145ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,196),(197,452),(453,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,196),(197,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145ExitFBefore : Arena := s6Step145ExitGAfter

private def s6Step145ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 802],795⟩

private def s6Step145ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780],776⟩

private def s6Step145ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 867],777⟩

private def s6Step145ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 807],775⟩

private theorem s6Step145ExitBank_incomingDistinct : ([s6Step145ExitGRow,s6Step145ExitFRow,s6Step145ExitFvRow,s6Step145ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145ExitF_Incoming : rowsOwned s6Step145ExitFBefore [s6Step145ExitFRow,s6Step145ExitFvRow,s6Step145ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step145ExitGRow,s6Step145ExitFRow,s6Step145ExitFvRow,s6Step145ExitGvRow] 1 s6Step145ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step145ExitFBefore (fun q => ([(0,196),(197,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step145ExitBank_outgoingOwned : rowsOwned s6Step145ExitGvAfter [s6Step145ExitGOut,s6Step145ExitFOut,s6Step145ExitFvOut,s6Step145ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step145ExitGvAfter (fun q => ([(0,196),(197,452),(453,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step145ExitF_Outgoing : rowsOwned s6Step145ExitGvAfter [s6Step145ExitFOut,s6Step145ExitFvOut,s6Step145ExitGvOut] :=
  hmrRows_owned_drop s6Step145ExitGvAfter [s6Step145ExitGOut,s6Step145ExitFOut,s6Step145ExitFvOut,s6Step145ExitGvOut] 1 s6Step145ExitBank_outgoingOwned

private theorem s6Step145ExitF_distinct : (s6Step145ExitFRow.sign::s6Step145ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145ExitF_owned : (s6Step145ExitFRow.sign::s6Step145ExitFRow.payload).toFinset⊆s6Step145ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step145ExitFBefore (fun q => ([(0,196),(197,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145ExitF_retired : s6Step145ExitFBefore.retireSet s6Step145ExitFExtra.toFinset=s6Step145ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step145ExitFBefore s6Step145ExitFAfter s6Step145ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step145ExitFBefore s6Step145ExitFAfter (fun q => ([(0,196),(197,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,196),(197,452),(453,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step145ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step145ExitF_checked : planRowResizeLog s6Step145ExitFBefore s6Step145ExitFRow 196 []=
    some (s6Step145ExitFAfter,s6Step145ExitFOut,shrinkRow 795 s6Step145ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step145ExitFBefore s6Step145ExitFRow 196 s6Step145ExitF_distinct s6Step145ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step145ExitFRow.payload.take 196) s6Step145ExitFRow.sign=s6Step145ExitFOut := by decide +kernel
  have hi : s6Step145ExitFRow.payload.drop 196=s6Step145ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step145ExitF_retired] at result
  exact result

private def s6Step145ExitFvAfter : Arena := s6Step145ExitFAfter

private def s6Step145ExitFvBefore : Arena := s6Step145ExitFAfter

private theorem s6Step145ExitFv_Incoming : rowsOwned s6Step145ExitFvBefore [s6Step145ExitFvRow,s6Step145ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step145ExitGRow,s6Step145ExitFRow,s6Step145ExitFvRow,s6Step145ExitGvRow] 2 s6Step145ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step145ExitFvBefore (fun q => ([(0,196),(197,452),(453,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step145ExitFv_Outgoing : rowsOwned s6Step145ExitGvAfter [s6Step145ExitFvOut,s6Step145ExitGvOut] :=
  hmrRows_owned_drop s6Step145ExitGvAfter [s6Step145ExitGOut,s6Step145ExitFOut,s6Step145ExitFvOut,s6Step145ExitGvOut] 2 s6Step145ExitBank_outgoingOwned

private theorem s6Step145ExitFv_distinct : (s6Step145ExitFvRow.sign::s6Step145ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145ExitFv_owned : (s6Step145ExitFvRow.sign::s6Step145ExitFvRow.payload).toFinset⊆s6Step145ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step145ExitFvBefore (fun q => ([(0,196),(197,452),(453,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145ExitFv_reserved : s6Step145ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step145ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step145ExitFv_checked : planRowResizeLog s6Step145ExitFvBefore s6Step145ExitFvRow 87 []=
    some (s6Step145ExitFvAfter,s6Step145ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step145ExitFvBefore s6Step145ExitFvAfter s6Step145ExitFvRow 87 []
    s6Step145ExitFv_distinct s6Step145ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step145ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step145ExitFvRow.payload++[]) s6Step145ExitFvRow.sign=s6Step145ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step145ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step145ExitG_Incoming : rowsOwned s6Step145ExitGBefore [s6Step145ExitGRow,s6Step145ExitFRow,s6Step145ExitFvRow,s6Step145ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step145ExitGRow,s6Step145ExitFRow,s6Step145ExitFvRow,s6Step145ExitGvRow] 0 s6Step145ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step145ExitGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step145ExitG_Outgoing : rowsOwned s6Step145ExitGvAfter [s6Step145ExitGOut,s6Step145ExitFOut,s6Step145ExitFvOut,s6Step145ExitGvOut] :=
  hmrRows_owned_drop s6Step145ExitGvAfter [s6Step145ExitGOut,s6Step145ExitFOut,s6Step145ExitFvOut,s6Step145ExitGvOut] 0 s6Step145ExitBank_outgoingOwned

private theorem s6Step145ExitG_distinct : (s6Step145ExitGRow.sign::s6Step145ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145ExitG_owned : (s6Step145ExitGRow.sign::s6Step145ExitGRow.payload).toFinset⊆s6Step145ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step145ExitGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145ExitG_retired : s6Step145ExitGBefore.retireSet s6Step145ExitGExtra.toFinset=s6Step145ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step145ExitGBefore s6Step145ExitGAfter s6Step145ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step145ExitGBefore s6Step145ExitGAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,196),(197,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step145ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step145ExitG_checked : planRowResizeLog s6Step145ExitGBefore s6Step145ExitGRow 196 []=
    some (s6Step145ExitGAfter,s6Step145ExitGOut,shrinkRow 777 s6Step145ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step145ExitGBefore s6Step145ExitGRow 196 s6Step145ExitG_distinct s6Step145ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step145ExitGRow.payload.take 196) s6Step145ExitGRow.sign=s6Step145ExitGOut := by decide +kernel
  have hi : s6Step145ExitGRow.payload.drop 196=s6Step145ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step145ExitG_retired] at result
  exact result

private def s6Step145ExitGvBefore : Arena := s6Step145ExitFAfter

private theorem s6Step145ExitGv_Incoming : rowsOwned s6Step145ExitGvBefore [s6Step145ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step145ExitGRow,s6Step145ExitFRow,s6Step145ExitFvRow,s6Step145ExitGvRow] 3 s6Step145ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step145ExitGvBefore (fun q => ([(0,196),(197,452),(453,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step145ExitGv_Outgoing : rowsOwned s6Step145ExitGvAfter [s6Step145ExitGvOut] :=
  hmrRows_owned_drop s6Step145ExitGvAfter [s6Step145ExitGOut,s6Step145ExitFOut,s6Step145ExitFvOut,s6Step145ExitGvOut] 3 s6Step145ExitBank_outgoingOwned

private theorem s6Step145ExitGv_distinct : (s6Step145ExitGvRow.sign::s6Step145ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145ExitGv_owned : (s6Step145ExitGvRow.sign::s6Step145ExitGvRow.payload).toFinset⊆s6Step145ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step145ExitGvBefore (fun q => ([(0,196),(197,452),(453,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145ExitGv_retired : s6Step145ExitGvBefore.retireSet s6Step145ExitGvExtra.toFinset=s6Step145ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step145ExitGvBefore s6Step145ExitGvAfter s6Step145ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step145ExitGvBefore s6Step145ExitGvAfter (fun q => ([(0,196),(197,452),(453,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,196),(197,452),(453,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step145ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step145ExitGv_checked : planRowResizeLog s6Step145ExitGvBefore s6Step145ExitGvRow 86 []=
    some (s6Step145ExitGvAfter,s6Step145ExitGvOut,shrinkRow 775 s6Step145ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step145ExitGvBefore s6Step145ExitGvRow 86 s6Step145ExitGv_distinct s6Step145ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step145ExitGvRow.payload.take 86) s6Step145ExitGvRow.sign=s6Step145ExitGvOut := by decide +kernel
  have hi : s6Step145ExitGvRow.payload.drop 86=s6Step145ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step145ExitGv_retired] at result
  exact result

private theorem s6Step145ExitBank_rows : planWindowRowsLog s6Step145ExitGBefore [(s6Step145ExitGRow,196),(s6Step145ExitFRow,196),(s6Step145ExitFvRow,87),(s6Step145ExitGvRow,86)] [[],[],[],[]]=
    some (s6Step145ExitGvAfter,[s6Step145ExitGOut,s6Step145ExitFOut,s6Step145ExitFvOut,s6Step145ExitGvOut],(shrinkRow 777 s6Step145ExitGExtra ++ (shrinkRow 795 s6Step145ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step145ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step145ExitGvAfter [] []=some (s6Step145ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step145ExitGvBefore s6Step145ExitGvAfter s6Step145ExitGvAfter
    s6Step145ExitGvRow s6Step145ExitGvOut 86 [] [] [] []
    (shrinkRow 775 s6Step145ExitGvExtra) ([]) s6Step145ExitGv_Incoming s6Step145ExitGv_checked h4 s6Step145ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step145ExitFvBefore s6Step145ExitFvAfter s6Step145ExitGvAfter
    s6Step145ExitFvRow s6Step145ExitFvOut 87 [] [(s6Step145ExitGvRow,86)] [[]] [s6Step145ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step145ExitGvExtra ++ [])) s6Step145ExitFv_Incoming s6Step145ExitFv_checked h3 s6Step145ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step145ExitFBefore s6Step145ExitFAfter s6Step145ExitGvAfter
    s6Step145ExitFRow s6Step145ExitFOut 196 [] [(s6Step145ExitFvRow,87),(s6Step145ExitGvRow,86)] [[],[]] [s6Step145ExitFvOut,s6Step145ExitGvOut]
    (shrinkRow 795 s6Step145ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step145ExitGvExtra ++ []))) s6Step145ExitF_Incoming s6Step145ExitF_checked h2 s6Step145ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step145ExitGBefore s6Step145ExitGAfter s6Step145ExitGvAfter
    s6Step145ExitGRow s6Step145ExitGOut 196 [] [(s6Step145ExitFRow,196),(s6Step145ExitFvRow,87),(s6Step145ExitGvRow,86)] [[],[],[]] [s6Step145ExitFOut,s6Step145ExitFvOut,s6Step145ExitGvOut]
    (shrinkRow 777 s6Step145ExitGExtra) ((shrinkRow 795 s6Step145ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step145ExitGvExtra ++ [])))) s6Step145ExitG_Incoming s6Step145ExitG_checked h1 s6Step145ExitG_Outgoing
  exact h0

private theorem s6Step145ExitBank_checked : compileHmrBankResizeLog .exit s6Step145ExitGBefore ⟨s6Step145ExitFRow,s6Step145ExitGRow,s6Step145ExitFvRow,s6Step145ExitGvRow⟩ ⟨196,196,87,86⟩ [[],[],[],[]]=
    some (s6Step145ExitGvAfter,⟨s6Step145ExitFOut,s6Step145ExitGOut,s6Step145ExitFvOut,s6Step145ExitGvOut⟩,(shrinkRow 777 s6Step145ExitGExtra ++ (shrinkRow 795 s6Step145ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step145ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step145ExitBank_rows]
  rfl

private theorem s6Step145Add0_apart : Disjoint s6Step145Add0Arena.live s6Step145Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step145Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step145Add0_card : s6Step145Add0Arena.live.card=882 := by
  decide +kernel

private theorem s6Step145Add0_borrowed : s6Step145Add0Arena.checkBorrow (hmrHybridCount s6Step145Add0Arena s6Step145Add0B.length) s6Step145Add0Work=some s6Step145Add0During := by
  have len : s6Step145Add0Work.length=hmrHybridCount s6Step145Add0Arena s6Step145Add0B.length := by
    rw [hmrHybridCount,s6Step145Add0_card]
    decide +kernel
  have nd : s6Step145Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step145Add0Arena s6Step145Add0During s6Step145Add0Work.toFinset s6Step145Add0_bounded s6Step145Add0_apart rfl

private theorem s6Step145Add0_distinct : (768::855::879::(s6Step145Add0A++s6Step145Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145Add0_owned : (768::855::879::(s6Step145Add0A++s6Step145Add0B)).toFinset⊆s6Step145Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step145Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step145Add0_checked : compileHmrHybridCinLog s6Step145Add0Arena 855 768 879 s6Step145Add0A s6Step145Add0B s6Step145Add0Work=some s6Step145Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step145Add0Arena s6Step145Add0During 855 768 879 s6Step145Add0A s6Step145Add0B s6Step145Add0Work
    (by decide +kernel) (by decide +kernel) s6Step145Add0_distinct
    (fun q hq => s6Step145Add0_owned (List.mem_toFinset.mpr hq)) s6Step145Add0_borrowed

private theorem s6Step145Add1_apart : Disjoint s6Step145Add1Arena.live s6Step145Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step145Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step145Add1_card : s6Step145Add1Arena.live.card=882 := by
  decide +kernel

private theorem s6Step145Add1_borrowed : s6Step145Add1Arena.checkBorrow (hmrHybridCount s6Step145Add1Arena s6Step145Add1B.length) s6Step145Add1Work=some s6Step145Add1During := by
  have len : s6Step145Add1Work.length=hmrHybridCount s6Step145Add1Arena s6Step145Add1B.length := by
    rw [hmrHybridCount,s6Step145Add1_card]
    decide +kernel
  have nd : s6Step145Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step145Add1Arena s6Step145Add1During s6Step145Add1Work.toFinset s6Step145Add1_bounded s6Step145Add1_apart rfl

private theorem s6Step145Add1_distinct : (768::855::879::(s6Step145Add1A++s6Step145Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145Add1_owned : (768::855::879::(s6Step145Add1A++s6Step145Add1B)).toFinset⊆s6Step145Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step145Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step145Add1_checked : compileHmrHybridCinLog s6Step145Add1Arena 855 768 879 s6Step145Add1A s6Step145Add1B s6Step145Add1Work=some s6Step145Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step145Add1Arena s6Step145Add1During 855 768 879 s6Step145Add1A s6Step145Add1B s6Step145Add1Work
    (by decide +kernel) (by decide +kernel) s6Step145Add1_distinct
    (fun q hq => s6Step145Add1_owned (List.mem_toFinset.mpr hq)) s6Step145Add1_borrowed

private theorem s6Step145F4_apart : Disjoint (s6Step145Add0A++s6Step145Add0B).toFinset (s6Step145Add1A++s6Step145Add1B).toFinset := by
  have nd : ((s6Step145Add0A++s6Step145Add0B)++(s6Step145Add1A++s6Step145Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step145F4_carry : s6Step145F4FlagArena.checkBorrow 1 [879]=some s6Step145Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step145F4FlagArena,s6Step145HeadFvAfter,arenaWires]
  · change s6Step145Add0Arena.live=(s6Step145HeadFvAfter.live∪{768})∪{879}
    apply hmrArena_union_pair_of_filter_check s6Step145HeadFvAfter s6Step145Add0Arena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) 768 879 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step145F4_distinct : (794::855::768::879::((s6Step145Add0A++s6Step145Add1A)++(s6Step145Add0B++s6Step145Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145F4_flag : s6Step145HeadFvAfter.checkBorrow 1 [768]=some s6Step145F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step145HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step145F4_owned : (794::855::((s6Step145Add0A++s6Step145Add1A)++(s6Step145Add0B++s6Step145Add1B))).toFinset⊆s6Step145HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step145HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145F4_checked : compileHmrHybridF4Log s6Step145HeadFvAfter 794 855 s6Step145Add0A s6Step145Add0B s6Step145Add1A s6Step145Add1B [768] [879] s6Step145Add0Work s6Step145Add1Work=some s6Step145F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step145HeadFvAfter s6Step145F4FlagArena s6Step145Add0Arena s6Step145Add0During s6Step145Add1During 794 855
    s6Step145Add0A s6Step145Add0B s6Step145Add1A s6Step145Add1B [768] [879] s6Step145Add0Work s6Step145Add1Work
    (fun q hq => s6Step145F4_owned (List.mem_toFinset.mpr hq)) s6Step145F4_flag s6Step145F4_carry
    s6Step145F4_distinct s6Step145F4_apart s6Step145Add0_checked s6Step145Add1_checked

private theorem s6Step145Front_branch : s6Step145FrontSigmaArena.checkBorrow 1 [855]=some s6Step145HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step145FrontSigmaArena,s6Step145EntryGvAfter,s6Step145EntryFBefore,arenaWires]
  · change s6Step145HeadGBefore.live=(s6Step145EntryGvAfter.live∪{794})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step145EntryGvAfter s6Step145HeadGBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 794 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step145Front_entry : HmrFrontEntryValid s6Step145EntryFBefore s6Step145FrontBank 197 86 ⟨196,196,87,86⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step145FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step145EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step145EntryFBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step145FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step145Front_sigma : s6Step145EntryGvAfter.checkBorrow 1 [794]=some s6Step145FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step145EntryGvAfter,s6Step145EntryFBefore,arenaWires]
  · rfl

private def s6Step145HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145HeadFBefore : Arena := s6Step145HeadGAfter

private def s6Step145HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452],795⟩

private def s6Step145HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩

private def s6Step145HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],777⟩

private def s6Step145HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927],775⟩

private theorem s6Step145HeadBank_incomingDistinct : ([s6Step145HeadGRow,s6Step145HeadFRow,s6Step145HeadGvRow,s6Step145HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145HeadF_Incoming : rowsOwned s6Step145HeadFBefore [s6Step145HeadFRow,s6Step145HeadGvRow,s6Step145HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step145HeadGRow,s6Step145HeadFRow,s6Step145HeadGvRow,s6Step145HeadFvRow] 1 s6Step145HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step145HeadFBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step145HeadBank_outgoingOwned : rowsOwned s6Step145HeadFvAfter [s6Step145HeadGOut,s6Step145HeadFOut,s6Step145HeadGvOut,s6Step145HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step145HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step145HeadF_Outgoing : rowsOwned s6Step145HeadFvAfter [s6Step145HeadFOut,s6Step145HeadGvOut,s6Step145HeadFvOut] :=
  hmrRows_owned_drop s6Step145HeadFvAfter [s6Step145HeadGOut,s6Step145HeadFOut,s6Step145HeadGvOut,s6Step145HeadFvOut] 1 s6Step145HeadBank_outgoingOwned

private theorem s6Step145HeadF_distinct : (s6Step145HeadFRow.sign::s6Step145HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145HeadF_owned : (s6Step145HeadFRow.sign::s6Step145HeadFRow.payload).toFinset⊆s6Step145HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step145HeadFBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145HeadF_reserved : s6Step145HeadFBefore.reserve s6Step145HeadFFresh.toFinset=some s6Step145HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step145HeadFFresh,arenaWires]
  · norm_num [s6Step145HeadFBefore,s6Step145HeadGAfter,s6Step145HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step145HeadFBefore s6Step145HeadFAfter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step145HeadFFresh rfl rfl
    · norm_num [s6Step145HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step145HeadF_checked : planRowResizeLog s6Step145HeadFBefore s6Step145HeadFRow 198 s6Step145HeadFFresh=
    some (s6Step145HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 802],795⟩,growRow 795 s6Step145HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step145HeadFBefore s6Step145HeadFAfter s6Step145HeadFRow 198 s6Step145HeadFFresh
    s6Step145HeadF_distinct s6Step145HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step145HeadF_reserved
  have rowEq : WindowRow.mk (s6Step145HeadFRow.payload++s6Step145HeadFFresh) s6Step145HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 802],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step145HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step145HeadFvBefore : Arena := s6Step145HeadGvAfter

private theorem s6Step145HeadFv_Incoming : rowsOwned s6Step145HeadFvBefore [s6Step145HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step145HeadGRow,s6Step145HeadFRow,s6Step145HeadGvRow,s6Step145HeadFvRow] 3 s6Step145HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step145HeadFvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step145HeadFv_Outgoing : rowsOwned s6Step145HeadFvAfter [s6Step145HeadFvOut] :=
  hmrRows_owned_drop s6Step145HeadFvAfter [s6Step145HeadGOut,s6Step145HeadFOut,s6Step145HeadGvOut,s6Step145HeadFvOut] 3 s6Step145HeadBank_outgoingOwned

private theorem s6Step145HeadFv_distinct : (s6Step145HeadFvRow.sign::s6Step145HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145HeadFv_owned : (s6Step145HeadFvRow.sign::s6Step145HeadFvRow.payload).toFinset⊆s6Step145HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step145HeadFvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145HeadFv_reserved : s6Step145HeadFvBefore.reserve s6Step145HeadFvFresh.toFinset=some s6Step145HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step145HeadFvFresh,arenaWires]
  · norm_num [s6Step145HeadFvBefore,s6Step145HeadGvAfter,s6Step145HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step145HeadFvBefore s6Step145HeadFvAfter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step145HeadFvFresh rfl rfl
    · norm_num [s6Step145HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step145HeadFv_checked : planRowResizeLog s6Step145HeadFvBefore s6Step145HeadFvRow 87 s6Step145HeadFvFresh=
    some (s6Step145HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780],776⟩,growRow 776 s6Step145HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step145HeadFvBefore s6Step145HeadFvAfter s6Step145HeadFvRow 87 s6Step145HeadFvFresh
    s6Step145HeadFv_distinct s6Step145HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step145HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step145HeadFvRow.payload++s6Step145HeadFvFresh) s6Step145HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step145HeadG_Incoming : rowsOwned s6Step145HeadGBefore [s6Step145HeadGRow,s6Step145HeadFRow,s6Step145HeadGvRow,s6Step145HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step145HeadGRow,s6Step145HeadFRow,s6Step145HeadGvRow,s6Step145HeadFvRow] 0 s6Step145HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step145HeadGBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step145HeadG_Outgoing : rowsOwned s6Step145HeadFvAfter [s6Step145HeadGOut,s6Step145HeadFOut,s6Step145HeadGvOut,s6Step145HeadFvOut] :=
  hmrRows_owned_drop s6Step145HeadFvAfter [s6Step145HeadGOut,s6Step145HeadFOut,s6Step145HeadGvOut,s6Step145HeadFvOut] 0 s6Step145HeadBank_outgoingOwned

private theorem s6Step145HeadG_distinct : (s6Step145HeadGRow.sign::s6Step145HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145HeadG_owned : (s6Step145HeadGRow.sign::s6Step145HeadGRow.payload).toFinset⊆s6Step145HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step145HeadGBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145HeadG_reserved : s6Step145HeadGBefore.reserve s6Step145HeadGFresh.toFinset=some s6Step145HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step145HeadGFresh,arenaWires]
  · norm_num [s6Step145HeadGBefore,s6Step145HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step145HeadGBefore s6Step145HeadGAfter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step145HeadGFresh rfl rfl
    · norm_num [s6Step145HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step145HeadG_checked : planRowResizeLog s6Step145HeadGBefore s6Step145HeadGRow 198 s6Step145HeadGFresh=
    some (s6Step145HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 867],777⟩,growRow 777 s6Step145HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step145HeadGBefore s6Step145HeadGAfter s6Step145HeadGRow 198 s6Step145HeadGFresh
    s6Step145HeadG_distinct s6Step145HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step145HeadG_reserved
  have rowEq : WindowRow.mk (s6Step145HeadGRow.payload++s6Step145HeadGFresh) s6Step145HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 867],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step145HeadGvBefore : Arena := s6Step145HeadFAfter

private theorem s6Step145HeadGv_Incoming : rowsOwned s6Step145HeadGvBefore [s6Step145HeadGvRow,s6Step145HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step145HeadGRow,s6Step145HeadFRow,s6Step145HeadGvRow,s6Step145HeadFvRow] 2 s6Step145HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step145HeadGvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step145HeadGv_Outgoing : rowsOwned s6Step145HeadFvAfter [s6Step145HeadGvOut,s6Step145HeadFvOut] :=
  hmrRows_owned_drop s6Step145HeadFvAfter [s6Step145HeadGOut,s6Step145HeadFOut,s6Step145HeadGvOut,s6Step145HeadFvOut] 2 s6Step145HeadBank_outgoingOwned

private theorem s6Step145HeadGv_distinct : (s6Step145HeadGvRow.sign::s6Step145HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step145HeadGv_owned : (s6Step145HeadGvRow.sign::s6Step145HeadGvRow.payload).toFinset⊆s6Step145HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step145HeadGvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step145HeadGv_reserved : s6Step145HeadGvBefore.reserve s6Step145HeadGvFresh.toFinset=some s6Step145HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step145HeadGvFresh,arenaWires]
  · norm_num [s6Step145HeadGvBefore,s6Step145HeadFAfter,s6Step145HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step145HeadGvBefore s6Step145HeadGvAfter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step145HeadGvFresh rfl rfl
    · norm_num [s6Step145HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step145HeadGv_checked : planRowResizeLog s6Step145HeadGvBefore s6Step145HeadGvRow 87 s6Step145HeadGvFresh=
    some (s6Step145HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 807],775⟩,growRow 775 s6Step145HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step145HeadGvBefore s6Step145HeadGvAfter s6Step145HeadGvRow 87 s6Step145HeadGvFresh
    s6Step145HeadGv_distinct s6Step145HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step145HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step145HeadGvRow.payload++s6Step145HeadGvFresh) s6Step145HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 807],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step145HeadBank_rows : planWindowRowsLog s6Step145HeadGBefore [(s6Step145HeadGRow,198),(s6Step145HeadFRow,198),(s6Step145HeadGvRow,87),(s6Step145HeadFvRow,87)] [s6Step145HeadGFresh,s6Step145HeadFFresh,s6Step145HeadGvFresh,s6Step145HeadFvFresh]=
    some (s6Step145HeadFvAfter,[s6Step145HeadGOut,s6Step145HeadFOut,s6Step145HeadGvOut,s6Step145HeadFvOut],(growRow 777 s6Step145HeadGFresh ++ (growRow 795 s6Step145HeadFFresh ++ (growRow 775 s6Step145HeadGvFresh ++ (growRow 776 s6Step145HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step145HeadFvAfter [] []=some (s6Step145HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step145HeadFvBefore s6Step145HeadFvAfter s6Step145HeadFvAfter
    s6Step145HeadFvRow s6Step145HeadFvOut 87 s6Step145HeadFvFresh [] [] []
    (growRow 776 s6Step145HeadFvFresh) ([]) s6Step145HeadFv_Incoming s6Step145HeadFv_checked h4 s6Step145HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step145HeadGvBefore s6Step145HeadGvAfter s6Step145HeadFvAfter
    s6Step145HeadGvRow s6Step145HeadGvOut 87 s6Step145HeadGvFresh [(s6Step145HeadFvRow,87)] [s6Step145HeadFvFresh] [s6Step145HeadFvOut]
    (growRow 775 s6Step145HeadGvFresh) ((growRow 776 s6Step145HeadFvFresh ++ [])) s6Step145HeadGv_Incoming s6Step145HeadGv_checked h3 s6Step145HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step145HeadFBefore s6Step145HeadFAfter s6Step145HeadFvAfter
    s6Step145HeadFRow s6Step145HeadFOut 198 s6Step145HeadFFresh [(s6Step145HeadGvRow,87),(s6Step145HeadFvRow,87)] [s6Step145HeadGvFresh,s6Step145HeadFvFresh] [s6Step145HeadGvOut,s6Step145HeadFvOut]
    (growRow 795 s6Step145HeadFFresh) ((growRow 775 s6Step145HeadGvFresh ++ (growRow 776 s6Step145HeadFvFresh ++ []))) s6Step145HeadF_Incoming s6Step145HeadF_checked h2 s6Step145HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step145HeadGBefore s6Step145HeadGAfter s6Step145HeadFvAfter
    s6Step145HeadGRow s6Step145HeadGOut 198 s6Step145HeadGFresh [(s6Step145HeadFRow,198),(s6Step145HeadGvRow,87),(s6Step145HeadFvRow,87)] [s6Step145HeadFFresh,s6Step145HeadGvFresh,s6Step145HeadFvFresh] [s6Step145HeadFOut,s6Step145HeadGvOut,s6Step145HeadFvOut]
    (growRow 777 s6Step145HeadGFresh) ((growRow 795 s6Step145HeadFFresh ++ (growRow 775 s6Step145HeadGvFresh ++ (growRow 776 s6Step145HeadFvFresh ++ [])))) s6Step145HeadG_Incoming s6Step145HeadG_checked h1 s6Step145HeadG_Outgoing
  exact h0

private theorem s6Step145HeadBank_checked : compileHmrBankResizeLog .headroom s6Step145HeadGBefore ⟨s6Step145HeadFRow,s6Step145HeadGRow,s6Step145HeadFvRow,s6Step145HeadGvRow⟩ ⟨198,198,87,87⟩ [s6Step145HeadGFresh,s6Step145HeadFFresh,s6Step145HeadGvFresh,s6Step145HeadFvFresh]=
    some (s6Step145HeadFvAfter,⟨s6Step145HeadFOut,s6Step145HeadGOut,s6Step145HeadFvOut,s6Step145HeadGvOut⟩,(growRow 777 s6Step145HeadGFresh ++ (growRow 795 s6Step145HeadFFresh ++ (growRow 775 s6Step145HeadGvFresh ++ (growRow 776 s6Step145HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step145HeadBank_rows]
  rfl

private theorem s6Step145Front_checked : compileHmrSourceFrontLog s6Step145EntryFBefore s6Step145FrontBank 197 86 ⟨196,196,87,86⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step145FrontLog=some s6Step145FrontPlan := by
  have pairEq : s6Step145FrontPair=⟨s6Step145HeadFRow,s6Step145HeadGRow,s6Step145HeadFvRow,s6Step145HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step145FrontHead=⟨s6Step145ExitFRow,s6Step145ExitGRow,s6Step145ExitFvRow,s6Step145ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step145Add0A=s6Step145FrontHead.f.wires := by decide +kernel
  have gEq : s6Step145Add0B=s6Step145FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step145Add1A=s6Step145FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step145Add1B=s6Step145FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step145EntryFBefore s6Step145FrontBank 197 86 ⟨196,196,87,86⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step145FrontLog s6Step145FrontPlan
  · exact s6Step145Front_entry
  · exact s6Step145EntryBank_checked
  · exact s6Step145Front_sigma
  · rfl
  · exact s6Step145Front_branch
  · rfl
  · simpa only [s6Step145FrontPlan,pairEq] using s6Step145HeadBank_checked
  · simpa only [s6Step145FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step145F4_checked
  · exact s6Step145Counter_checked
  · rfl
  · simpa only [s6Step145FrontPlan,headEq] using s6Step145ExitBank_checked

private theorem s6Step145Complete_explicit_checked : compileHmrEarlyStepLog s6Step145EntryFBefore s6Step145FrontBank 197 86 ⟨196,196,87,86⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step145CompleteLog=some s6Step145CompletePlan := by
  let Q := s6Step145EarlyControlPlan
  have hq := s6Step145EarlyControl_plan_checked
  have fv1 : s6Step145CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step145CompleteOut.fv.payload[2]?.getD s6Step145CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step145CompleteOut.fv.payload[3]?.getD s6Step145CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step145CompleteOut.fv.payload[4]?.getD s6Step145CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step145EntryFBefore s6Step145EarlyControlArena s6Step145FrontBank 197 86 ⟨196,196,87,86⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step145CompleteLog s6Step145FrontPlan Q
    s6Step145Front_checked s6Step145Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step145Complete_owned s6Step145Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step145EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 794 s6Step145CompleteOut.fv.second (s6Step145CompleteOut.fv.payload[2]?.getD s6Step145CompleteOut.fv.sign) (s6Step145CompleteOut.fv.payload[3]?.getD s6Step145CompleteOut.fv.sign) (s6Step145CompleteOut.fv.payload[4]?.getD s6Step145CompleteOut.fv.sign) 855 42 s6Step145EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep145Arena : Arena := s6Step145EntryFBefore
def s6PrivateStep145Bank : WindowBank := s6Step145FrontBank
def s6PrivateStep145Spec : HmrSourceWalkStepLog := ⟨197,86,⟨196,196,87,86⟩,42,.early s6Step145CompleteLog⟩
def s6PrivateStep145Plan : HmrSourceStepPlan := .early s6Step145CompletePlan
theorem s6PrivateStep145_source : s6PrivateStep145Spec=s6ObservedLogs144[1] := rfl
theorem s6PrivateStep145_checked : compileHmrSourceStepLog s6PrivateStep145Arena s6PrivateStep145Bank
    s6PrivateStep145Spec.fgWidth s6PrivateStep145Spec.vWidth s6PrivateStep145Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 145 s6PrivateStep145Spec.need none s6PrivateStep145Spec.log=some s6PrivateStep145Plan := by
  change compileHmrSourceStepLog s6Step145EntryFBefore s6Step145FrontBank 197 86 ⟨196,196,87,86⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 145 42 none (.early s6Step145CompleteLog)=some (.early s6Step145CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 145<498)]
  rw [s6Step145Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
