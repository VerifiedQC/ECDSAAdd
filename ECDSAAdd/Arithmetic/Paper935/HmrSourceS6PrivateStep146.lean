import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep144
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

private def s6Step146CompleteMoves : List (Wire × Wire) := [(877,195)]

private def s6Step146EarlyControlLog : HmrEarlyControlLog := ⟨[877, 855, 802, 807, 908],[768],[879],[875, 882, 891, 903, 791, 825],[]⟩

private def s6Step146FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [855]],[[908], [807], [802], [867]],[[], [], [], []]⟩,[794],[887],[768],[879],[875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[768, 879, 875, 882]⟩

private def s6Step146CompleteLog : HmrEarlyStepLog := ⟨s6Step146FrontLog,s6Step146CompleteMoves,s6Step146EarlyControlLog⟩

private def s6Step146ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451],795⟩

private def s6Step146ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩

private def s6Step146ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194],777⟩

private def s6Step146ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927],775⟩

private def s6Step146FrontOut : WindowBank := ⟨s6Step146ExitFOut,s6Step146ExitGOut,s6Step146ExitFvOut,s6Step146ExitGvOut⟩

private def s6Step146CompleteOut : WindowBank := s6Step146FrontOut.repacked s6Step146CompleteMoves

private def s6Step146EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step146EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step146EarlyControlPositiveArena,[768],s6Step146EarlyControlEqualityArena,[879],⟨⟨794,false⟩,[⟨⟨768,false⟩,879⟩]⟩⟩

private def s6Step146EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step146EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step146EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,877⟩,⟨⟨772,false⟩,855⟩,⟨⟨771,false⟩,802⟩,⟨⟨770,false⟩,807⟩,⟨⟨769,false⟩,908⟩]⟩

private def s6Step146EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step146EarlyControlZeroArena,s6Step146EarlyControlZeroPlan,s6Step146EarlyControlClassPlan,s6Step146EarlyControlFlagArena,s6Step146EarlyControlFittedArena,s6Step146EarlyControlHistoryArena,s6Step146EarlyControlSigmaArena,s6Step146EarlyControlOutputArena,s6Step146EarlyControlLog⟩

private def s6Step146CounterWork : List Wire := [768, 879, 875, 882]

private theorem s6Step146Counter_bounded : s6Step146CounterWork.toFinset⊆arenaWires := by norm_num [s6Step146CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step146HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146CounterDuring : Arena := ⟨s6Step146HeadFvAfter.live∪s6Step146CounterWork.toFinset,Finset.union_subset s6Step146HeadFvAfter.bounded s6Step146Counter_bounded⟩

private def s6Step146EntryFFresh : List Wire := []

private def s6Step146EntryFvFresh : List Wire := []

private def s6Step146EntryGFresh : List Wire := []

private def s6Step146EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146EntryGvFresh : List Wire := [855]

private def s6Step146ExitFExtra : List Wire := [807]

private def s6Step146ExitGExtra : List Wire := [195, 908]

private def s6Step146ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146ExitGvExtra : List Wire := [855, 802]

private def s6Step146Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step146Add0Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step146Add0_bounded : s6Step146Add0Work.toFinset⊆arenaWires := by
  have h : s6Step146Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step146Add0During : Arena := ⟨s6Step146Add0Arena.live∪s6Step146Add0Work.toFinset,Finset.union_subset s6Step146Add0Arena.bounded s6Step146Add0_bounded⟩

private def s6Step146Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step146Add1Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step146Add1_bounded : s6Step146Add1Work.toFinset⊆arenaWires := by
  have h : s6Step146Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step146Add1During : Arena := ⟨s6Step146Add1Arena.live∪s6Step146Add1Work.toFinset,Finset.union_subset s6Step146Add1Arena.bounded s6Step146Add1_bounded⟩

private def s6Step146F4FlagArena : Arena := ⟨s6Step146HeadFvAfter.live∪{768},Finset.union_subset s6Step146HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step146F4Plan : HmrHybridF4Plan := ⟨s6Step146F4FlagArena,[768],s6Step146Add0Arena,[879],s6Step146Add0During,s6Step146Add0Work,s6Step146Add1During,s6Step146Add1Work⟩

private def s6Step146HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 807],795⟩

private def s6Step146HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩

private def s6Step146HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 908],777⟩

private def s6Step146HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 855, 802],775⟩

private def s6Step146FrontHead : WindowBank := ⟨s6Step146HeadFOut,s6Step146HeadGOut,s6Step146HeadFvOut,s6Step146HeadGvOut⟩

private def s6Step146EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451],795⟩

private def s6Step146EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780],776⟩

private def s6Step146EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195],777⟩

private def s6Step146EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 855],775⟩

private def s6Step146FrontPair : WindowBank := ⟨s6Step146EntryFOut,s6Step146EntryGOut,s6Step146EntryFvOut,s6Step146EntryGvOut⟩

private def s6Step146FrontSigmaArena : Arena := ⟨s6Step146EntryGvAfter.live∪{794},Finset.union_subset s6Step146EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step146HeadFFresh : List Wire := [807]

private def s6Step146HeadFvFresh : List Wire := [867]

private def s6Step146HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146HeadGFresh : List Wire := [908]

private def s6Step146HeadGvFresh : List Wire := [802]

private def s6Step146FrontPlan : HmrSourceFront := ⟨s6Step146EntryGvAfter,s6Step146FrontPair,(growRow 795 s6Step146EntryFFresh ++ (growRow 777 s6Step146EntryGFresh ++ (growRow 776 s6Step146EntryFvFresh ++ (growRow 775 s6Step146EntryGvFresh ++ [])))),s6Step146FrontSigmaArena,[794],s6Step146HeadGBefore,[887],
  s6Step146HeadFvAfter,s6Step146FrontHead,(growRow 777 s6Step146HeadGFresh ++ (growRow 795 s6Step146HeadFFresh ++ (growRow 775 s6Step146HeadGvFresh ++ (growRow 776 s6Step146HeadFvFresh ++ [])))),s6Step146F4Plan,s6Step146CounterDuring,s6Step146CounterWork,s6Step146ExitGvAfter,s6Step146FrontOut,(shrinkRow 777 s6Step146ExitGExtra ++ (shrinkRow 795 s6Step146ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step146ExitGvExtra ++ []))))⟩

private def s6Step146CompletePlan : HmrEarlyStepPlan := ⟨s6Step146FrontPlan,s6Step146EarlyControlArena,s6Step146EarlyControlPlan,s6Step146CompleteMoves⟩

private theorem s6Step146Complete_apart : List.Disjoint (s6Step146CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [794, 887, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step146CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[794, 887, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step146Complete_owned : (s6Step146CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step146EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step146EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step146CompleteRelocationMove0Borrowed : Arena := ⟨s6Step146ExitGvAfter.live∪{195},Finset.union_subset s6Step146ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step146CompleteRelocation_move0_owned : 877∈s6Step146ExitGvAfter.live := by norm_num [s6Step146ExitGvAfter,arenaWires]

private theorem s6Step146CompleteRelocation_move0_reserve : s6Step146ExitGvAfter.reserve {195}=some s6Step146CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step146ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step146CompleteRelocation_move0_retire : s6Step146CompleteRelocationMove0Borrowed.retireSet {877}=s6Step146EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step146CompleteRelocationMove0Borrowed s6Step146EarlyControlArena {877}
  change s6Step146EarlyControlArena.live=(s6Step146ExitGvAfter.live∪{195})\{877}
  apply hmrArena_update_of_filter_check s6Step146ExitGvAfter s6Step146EarlyControlArena (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [195] [877] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step146CompleteRelocation_checked : s6Step146ExitGvAfter.checkRepack [(877,195)]=some s6Step146EarlyControlArena := by
  have tail1 : s6Step146EarlyControlArena.checkRepack []=some s6Step146EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step146ExitGvAfter s6Step146CompleteRelocationMove0Borrowed s6Step146EarlyControlArena s6Step146EarlyControlArena 877 195 []
    s6Step146CompleteRelocation_move0_owned s6Step146CompleteRelocation_move0_reserve s6Step146CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step146Complete_repack : s6Step146ExitGvAfter.checkRepack s6Step146CompleteMoves=some s6Step146EarlyControlArena := by
  simpa only [s6Step146CompleteMoves] using s6Step146CompleteRelocation_checked

private theorem s6Step146EarlyControl_branchOwned : ([887] : List Wire).toFinset⊆s6Step146EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step146EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146EarlyControl_branch : compileHmrBranchRetirement s6Step146EarlyControlSigmaArena 887=some s6Step146EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step146EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step146EarlyControlSigmaArena s6Step146EarlyControlOutputArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [887] rfl rfl
    decide +kernel

private theorem s6Step146EarlyControl_classEqualityBorrow : s6Step146EarlyControlPositiveArena.checkBorrow (([794, 768] : List Wire).length-1) s6Step146EarlyControlLog.classWork=some s6Step146EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step146EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step146EarlyControlPositiveArena s6Step146EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step146EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step146EarlyControl_classEqualityOwned : ([794, 768] : List Wire).toFinset⊆s6Step146EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step146EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146EarlyControl_classEquality : compileHmrEqualityLog s6Step146EarlyControlPositiveArena [794, 768] 0 s6Step146EarlyControlLog.classWork=some (s6Step146EarlyControlEqualityArena,s6Step146EarlyControlLog.classWork,s6Step146EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step146EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step146EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step146EarlyControl_classOwned : ([769, 908, 794] : List Wire).toFinset⊆s6Step146EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step146EarlyControlZeroArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146EarlyControl_positiveBorrow : s6Step146EarlyControlZeroArena.checkBorrow (1) s6Step146EarlyControlLog.positiveWork=some s6Step146EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step146EarlyControlZeroArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step146EarlyControlZeroArena s6Step146EarlyControlPositiveArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step146EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step146EarlyControl_class : compileHmrSourceClassLog s6Step146EarlyControlZeroArena false 769 s6Step146EarlyControlZeroPlan.top 0 794 s6Step146EarlyControlLog.positiveWork s6Step146EarlyControlLog.classWork=some s6Step146EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step146EarlyControlClassPlan s6Step146EarlyControlZeroArena false 769 s6Step146EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s6Step146EarlyControl_classOwned
  · exact s6Step146EarlyControl_positiveBorrow
  · exact s6Step146EarlyControl_classEquality

private theorem s6Step146EarlyControl_entryRecordOwned : ([887, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step146EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step146EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146EarlyControl_entrySigmaOwned : ([794, 254] : List Wire).toFinset⊆s6Step146EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step146EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146EarlyControl_fitBorrow : s6Step146EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step146EarlyControlLog.recordFresh=some s6Step146EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step146EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step146EarlyControlFittedArena,s6Step146EarlyControlFlagArena,s6Step146EarlyControlLog,arenaWires]

private theorem s6Step146EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step146EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step146EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step146EarlyControl_fit : compileHmrRecordGrowLog s6Step146EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step146EarlyControlLog.recordFresh=some s6Step146EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step146EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step146EarlyControl_fitBorrow

private theorem s6Step146EarlyControl_flagsBorrow : s6Step146EarlyControlEqualityArena.checkBorrow (6) s6Step146EarlyControlLog.flagWork=some s6Step146EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step146EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step146EarlyControlFlagArena,s6Step146EarlyControlEqualityArena,s6Step146EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step146EarlyControl_flagsOwned : ([879, 253, 252, 251] : List Wire).toFinset⊆s6Step146EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step146EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step146EarlyControl_flags : compileHmrFlagsLog s6Step146EarlyControlClassPlan.equalityArena s6Step146EarlyControlClassPlan.equality.top 253 252 251 s6Step146EarlyControlLog.flagWork=some s6Step146EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step146EarlyControl_flagsOwned⟩
  · exact s6Step146EarlyControl_flagsBorrow

private theorem s6Step146EarlyControl_historyBorrow : s6Step146EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step146EarlyControlLog.recordFresh=some s6Step146EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step146EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step146EarlyControlArena s6Step146EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step146EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step146EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step146EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step146EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146EarlyControl_history : compileHmrRecordGrowLog s6Step146EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step146EarlyControlLog.recordFresh=some s6Step146EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step146EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step146EarlyControl_historyBorrow

private theorem s6Step146EarlyControl_sigmaOwned : ([254, 794] : List Wire).toFinset⊆s6Step146EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step146EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s6Step146EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step146EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146EarlyControl_sigmaRelease : s6Step146EarlyControlHistoryArena.release {794} (fun _ => false)=some s6Step146EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step146EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step146EarlyControlHistoryArena s6Step146EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [794] rfl rfl
    decide +kernel

private theorem s6Step146EarlyControl_sigma : compileHmrSigmaDropLog s6Step146EarlyControlHistoryArena false 0 0 254 794 []=some s6Step146EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step146EarlyControl_sigmaOwned⟩
  · exact s6Step146EarlyControl_sigmaRelease

private theorem s6Step146EarlyControl_zeroBorrow : s6Step146EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step146EarlyControlLog.zeroWork=some s6Step146EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step146EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step146EarlyControlArena s6Step146EarlyControlZeroArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step146EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step146EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step146EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step146EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,877),(878,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146EarlyControl_zero : compileHmrEqualityLog s6Step146EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step146EarlyControlLog.zeroWork=some (s6Step146EarlyControlZeroArena,s6Step146EarlyControlLog.zeroWork,s6Step146EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step146EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step146EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step146EarlyControl_logged : s6Step146EarlyControlPlan.Logged s6Step146EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 794 254 253 252 251 887 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step146EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step146EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step146EarlyControl_zero
  · exact s6Step146EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step146EarlyControl_flags
  · exact s6Step146EarlyControl_fit
  · exact s6Step146EarlyControl_history
  · exact s6Step146EarlyControl_sigma
  · exact s6Step146EarlyControl_branch

private theorem s6Step146EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step146EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 794 254 253 252 251 887 42 s6Step146EarlyControlLog=some s6Step146EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step146EarlyControlPlan s6Step146EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 794 254 253 252 251 887 42 s6Step146EarlyControl_logged

private def s6Step146EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451],795⟩

private def s6Step146EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780],776⟩

private def s6Step146EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195],777⟩

private def s6Step146EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927],775⟩

private def s6Step146FrontBank : WindowBank := ⟨s6Step146EntryFRow,s6Step146EntryGRow,s6Step146EntryFvRow,s6Step146EntryGvRow⟩

private def s6Step146Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 807, 795]

private def s6Step146Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 908, 777]

private def s6Step146Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 776]

private def s6Step146Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 855, 802, 775]

private theorem s6Step146Counter_apart : Disjoint s6Step146HeadFvAfter.live s6Step146CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step146HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146Counter_borrowed : s6Step146HeadFvAfter.checkBorrow 4 s6Step146CounterWork=some s6Step146CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step146HeadFvAfter s6Step146CounterDuring s6Step146CounterWork.toFinset s6Step146Counter_bounded s6Step146Counter_apart rfl

private theorem s6Step146Counter_owned : (794::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step146HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step146HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146Counter_checked : compileHmrCounterStepLog s6Step146HeadFvAfter true 794 [774, 773, 772, 771, 770, 769] s6Step146CounterWork=some s6Step146CounterDuring := by
  have owned : ∀q∈794::[774, 773, 772, 771, 770, 769],q∈s6Step146HeadFvAfter.live := fun q hq => s6Step146Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step146Counter_borrowed

private def s6Step146EntryFAfter : Arena := s6Step146EntryFBefore

private theorem s6Step146EntryBank_incomingDistinct : ([s6Step146EntryFRow,s6Step146EntryGRow,s6Step146EntryFvRow,s6Step146EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146EntryF_Incoming : rowsOwned s6Step146EntryFBefore [s6Step146EntryFRow,s6Step146EntryGRow,s6Step146EntryFvRow,s6Step146EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step146EntryFRow,s6Step146EntryGRow,s6Step146EntryFvRow,s6Step146EntryGvRow] 0 s6Step146EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step146EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step146EntryBank_outgoingOwned : rowsOwned s6Step146EntryGvAfter [s6Step146EntryFOut,s6Step146EntryGOut,s6Step146EntryFvOut,s6Step146EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step146EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step146EntryF_Outgoing : rowsOwned s6Step146EntryGvAfter [s6Step146EntryFOut,s6Step146EntryGOut,s6Step146EntryFvOut,s6Step146EntryGvOut] :=
  hmrRows_owned_drop s6Step146EntryGvAfter [s6Step146EntryFOut,s6Step146EntryGOut,s6Step146EntryFvOut,s6Step146EntryGvOut] 0 s6Step146EntryBank_outgoingOwned

private theorem s6Step146EntryF_distinct : (s6Step146EntryFRow.sign::s6Step146EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146EntryF_owned : (s6Step146EntryFRow.sign::s6Step146EntryFRow.payload).toFinset⊆s6Step146EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step146EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146EntryF_reserved : s6Step146EntryFBefore.reserve s6Step146EntryFFresh.toFinset=some s6Step146EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step146EntryFFresh,arenaWires]
  · norm_num [s6Step146EntryFBefore,s6Step146EntryFFresh,arenaWires]
  · simp only [s6Step146EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step146EntryF_checked : planRowResizeLog s6Step146EntryFBefore s6Step146EntryFRow 196 s6Step146EntryFFresh=
    some (s6Step146EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451],795⟩,growRow 795 s6Step146EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step146EntryFBefore s6Step146EntryFAfter s6Step146EntryFRow 196 s6Step146EntryFFresh
    s6Step146EntryF_distinct s6Step146EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step146EntryF_reserved
  have rowEq : WindowRow.mk (s6Step146EntryFRow.payload++s6Step146EntryFFresh) s6Step146EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step146EntryFvAfter : Arena := s6Step146EntryFBefore

private def s6Step146EntryFvBefore : Arena := s6Step146EntryFBefore

private theorem s6Step146EntryFv_Incoming : rowsOwned s6Step146EntryFvBefore [s6Step146EntryFvRow,s6Step146EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step146EntryFRow,s6Step146EntryGRow,s6Step146EntryFvRow,s6Step146EntryGvRow] 2 s6Step146EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step146EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step146EntryFv_Outgoing : rowsOwned s6Step146EntryGvAfter [s6Step146EntryFvOut,s6Step146EntryGvOut] :=
  hmrRows_owned_drop s6Step146EntryGvAfter [s6Step146EntryFOut,s6Step146EntryGOut,s6Step146EntryFvOut,s6Step146EntryGvOut] 2 s6Step146EntryBank_outgoingOwned

private theorem s6Step146EntryFv_distinct : (s6Step146EntryFvRow.sign::s6Step146EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146EntryFv_owned : (s6Step146EntryFvRow.sign::s6Step146EntryFvRow.payload).toFinset⊆s6Step146EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step146EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146EntryFv_reserved : s6Step146EntryFvBefore.reserve s6Step146EntryFvFresh.toFinset=some s6Step146EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step146EntryFvFresh,arenaWires]
  · norm_num [s6Step146EntryFvBefore,s6Step146EntryFBefore,s6Step146EntryFvFresh,arenaWires]
  · simp only [s6Step146EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step146EntryFv_checked : planRowResizeLog s6Step146EntryFvBefore s6Step146EntryFvRow 87 s6Step146EntryFvFresh=
    some (s6Step146EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780],776⟩,growRow 776 s6Step146EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step146EntryFvBefore s6Step146EntryFvAfter s6Step146EntryFvRow 87 s6Step146EntryFvFresh
    s6Step146EntryFv_distinct s6Step146EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step146EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step146EntryFvRow.payload++s6Step146EntryFvFresh) s6Step146EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step146EntryGAfter : Arena := s6Step146EntryFBefore

private def s6Step146EntryGBefore : Arena := s6Step146EntryFBefore

private theorem s6Step146EntryG_Incoming : rowsOwned s6Step146EntryGBefore [s6Step146EntryGRow,s6Step146EntryFvRow,s6Step146EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step146EntryFRow,s6Step146EntryGRow,s6Step146EntryFvRow,s6Step146EntryGvRow] 1 s6Step146EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step146EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step146EntryG_Outgoing : rowsOwned s6Step146EntryGvAfter [s6Step146EntryGOut,s6Step146EntryFvOut,s6Step146EntryGvOut] :=
  hmrRows_owned_drop s6Step146EntryGvAfter [s6Step146EntryFOut,s6Step146EntryGOut,s6Step146EntryFvOut,s6Step146EntryGvOut] 1 s6Step146EntryBank_outgoingOwned

private theorem s6Step146EntryG_distinct : (s6Step146EntryGRow.sign::s6Step146EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146EntryG_owned : (s6Step146EntryGRow.sign::s6Step146EntryGRow.payload).toFinset⊆s6Step146EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step146EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146EntryG_reserved : s6Step146EntryGBefore.reserve s6Step146EntryGFresh.toFinset=some s6Step146EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step146EntryGFresh,arenaWires]
  · norm_num [s6Step146EntryGBefore,s6Step146EntryFBefore,s6Step146EntryGFresh,arenaWires]
  · simp only [s6Step146EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step146EntryG_checked : planRowResizeLog s6Step146EntryGBefore s6Step146EntryGRow 196 s6Step146EntryGFresh=
    some (s6Step146EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195],777⟩,growRow 777 s6Step146EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step146EntryGBefore s6Step146EntryGAfter s6Step146EntryGRow 196 s6Step146EntryGFresh
    s6Step146EntryG_distinct s6Step146EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step146EntryG_reserved
  have rowEq : WindowRow.mk (s6Step146EntryGRow.payload++s6Step146EntryGFresh) s6Step146EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step146EntryGvBefore : Arena := s6Step146EntryFBefore

private theorem s6Step146EntryGv_Incoming : rowsOwned s6Step146EntryGvBefore [s6Step146EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step146EntryFRow,s6Step146EntryGRow,s6Step146EntryFvRow,s6Step146EntryGvRow] 3 s6Step146EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step146EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step146EntryGv_Outgoing : rowsOwned s6Step146EntryGvAfter [s6Step146EntryGvOut] :=
  hmrRows_owned_drop s6Step146EntryGvAfter [s6Step146EntryFOut,s6Step146EntryGOut,s6Step146EntryFvOut,s6Step146EntryGvOut] 3 s6Step146EntryBank_outgoingOwned

private theorem s6Step146EntryGv_distinct : (s6Step146EntryGvRow.sign::s6Step146EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146EntryGv_owned : (s6Step146EntryGvRow.sign::s6Step146EntryGvRow.payload).toFinset⊆s6Step146EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step146EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146EntryGv_reserved : s6Step146EntryGvBefore.reserve s6Step146EntryGvFresh.toFinset=some s6Step146EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step146EntryGvFresh,arenaWires]
  · norm_num [s6Step146EntryGvBefore,s6Step146EntryFBefore,s6Step146EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step146EntryGvBefore s6Step146EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step146EntryGvFresh rfl rfl
    · norm_num [s6Step146EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step146EntryGv_checked : planRowResizeLog s6Step146EntryGvBefore s6Step146EntryGvRow 87 s6Step146EntryGvFresh=
    some (s6Step146EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 855],775⟩,growRow 775 s6Step146EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step146EntryGvBefore s6Step146EntryGvAfter s6Step146EntryGvRow 87 s6Step146EntryGvFresh
    s6Step146EntryGv_distinct s6Step146EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step146EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step146EntryGvRow.payload++s6Step146EntryGvFresh) s6Step146EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 855],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step146EntryBank_rows : planWindowRowsLog s6Step146EntryFBefore [(s6Step146EntryFRow,196),(s6Step146EntryGRow,196),(s6Step146EntryFvRow,87),(s6Step146EntryGvRow,87)] [s6Step146EntryFFresh,s6Step146EntryGFresh,s6Step146EntryFvFresh,s6Step146EntryGvFresh]=
    some (s6Step146EntryGvAfter,[s6Step146EntryFOut,s6Step146EntryGOut,s6Step146EntryFvOut,s6Step146EntryGvOut],(growRow 795 s6Step146EntryFFresh ++ (growRow 777 s6Step146EntryGFresh ++ (growRow 776 s6Step146EntryFvFresh ++ (growRow 775 s6Step146EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step146EntryGvAfter [] []=some (s6Step146EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step146EntryGvBefore s6Step146EntryGvAfter s6Step146EntryGvAfter
    s6Step146EntryGvRow s6Step146EntryGvOut 87 s6Step146EntryGvFresh [] [] []
    (growRow 775 s6Step146EntryGvFresh) ([]) s6Step146EntryGv_Incoming s6Step146EntryGv_checked h4 s6Step146EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step146EntryFvBefore s6Step146EntryFvAfter s6Step146EntryGvAfter
    s6Step146EntryFvRow s6Step146EntryFvOut 87 s6Step146EntryFvFresh [(s6Step146EntryGvRow,87)] [s6Step146EntryGvFresh] [s6Step146EntryGvOut]
    (growRow 776 s6Step146EntryFvFresh) ((growRow 775 s6Step146EntryGvFresh ++ [])) s6Step146EntryFv_Incoming s6Step146EntryFv_checked h3 s6Step146EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step146EntryGBefore s6Step146EntryGAfter s6Step146EntryGvAfter
    s6Step146EntryGRow s6Step146EntryGOut 196 s6Step146EntryGFresh [(s6Step146EntryFvRow,87),(s6Step146EntryGvRow,87)] [s6Step146EntryFvFresh,s6Step146EntryGvFresh] [s6Step146EntryFvOut,s6Step146EntryGvOut]
    (growRow 777 s6Step146EntryGFresh) ((growRow 776 s6Step146EntryFvFresh ++ (growRow 775 s6Step146EntryGvFresh ++ []))) s6Step146EntryG_Incoming s6Step146EntryG_checked h2 s6Step146EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step146EntryFBefore s6Step146EntryFAfter s6Step146EntryGvAfter
    s6Step146EntryFRow s6Step146EntryFOut 196 s6Step146EntryFFresh [(s6Step146EntryGRow,196),(s6Step146EntryFvRow,87),(s6Step146EntryGvRow,87)] [s6Step146EntryGFresh,s6Step146EntryFvFresh,s6Step146EntryGvFresh] [s6Step146EntryGOut,s6Step146EntryFvOut,s6Step146EntryGvOut]
    (growRow 795 s6Step146EntryFFresh) ((growRow 777 s6Step146EntryGFresh ++ (growRow 776 s6Step146EntryFvFresh ++ (growRow 775 s6Step146EntryGvFresh ++ [])))) s6Step146EntryF_Incoming s6Step146EntryF_checked h1 s6Step146EntryF_Outgoing
  exact h0

private theorem s6Step146EntryBank_checked : compileHmrBankResizeLog .entry s6Step146EntryFBefore ⟨s6Step146EntryFRow,s6Step146EntryGRow,s6Step146EntryFvRow,s6Step146EntryGvRow⟩ ⟨196,196,87,87⟩ [s6Step146EntryFFresh,s6Step146EntryGFresh,s6Step146EntryFvFresh,s6Step146EntryGvFresh]=
    some (s6Step146EntryGvAfter,⟨s6Step146EntryFOut,s6Step146EntryGOut,s6Step146EntryFvOut,s6Step146EntryGvOut⟩,(growRow 795 s6Step146EntryFFresh ++ (growRow 777 s6Step146EntryGFresh ++ (growRow 776 s6Step146EntryFvFresh ++ (growRow 775 s6Step146EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step146EntryBank_rows]
  rfl

private def s6Step146ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146ExitFBefore : Arena := s6Step146ExitGAfter

private def s6Step146ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 807],795⟩

private def s6Step146ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩

private def s6Step146ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 908],777⟩

private def s6Step146ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 855, 802],775⟩

private theorem s6Step146ExitBank_incomingDistinct : ([s6Step146ExitGRow,s6Step146ExitFRow,s6Step146ExitFvRow,s6Step146ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146ExitF_Incoming : rowsOwned s6Step146ExitFBefore [s6Step146ExitFRow,s6Step146ExitFvRow,s6Step146ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step146ExitGRow,s6Step146ExitFRow,s6Step146ExitFvRow,s6Step146ExitGvRow] 1 s6Step146ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step146ExitFBefore (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step146ExitBank_outgoingOwned : rowsOwned s6Step146ExitGvAfter [s6Step146ExitGOut,s6Step146ExitFOut,s6Step146ExitFvOut,s6Step146ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step146ExitGvAfter (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step146ExitF_Outgoing : rowsOwned s6Step146ExitGvAfter [s6Step146ExitFOut,s6Step146ExitFvOut,s6Step146ExitGvOut] :=
  hmrRows_owned_drop s6Step146ExitGvAfter [s6Step146ExitGOut,s6Step146ExitFOut,s6Step146ExitFvOut,s6Step146ExitGvOut] 1 s6Step146ExitBank_outgoingOwned

private theorem s6Step146ExitF_distinct : (s6Step146ExitFRow.sign::s6Step146ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146ExitF_owned : (s6Step146ExitFRow.sign::s6Step146ExitFRow.payload).toFinset⊆s6Step146ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step146ExitFBefore (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146ExitF_retired : s6Step146ExitFBefore.retireSet s6Step146ExitFExtra.toFinset=s6Step146ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step146ExitFBefore s6Step146ExitFAfter s6Step146ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step146ExitFBefore s6Step146ExitFAfter (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step146ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step146ExitF_checked : planRowResizeLog s6Step146ExitFBefore s6Step146ExitFRow 196 []=
    some (s6Step146ExitFAfter,s6Step146ExitFOut,shrinkRow 795 s6Step146ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step146ExitFBefore s6Step146ExitFRow 196 s6Step146ExitF_distinct s6Step146ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step146ExitFRow.payload.take 196) s6Step146ExitFRow.sign=s6Step146ExitFOut := by decide +kernel
  have hi : s6Step146ExitFRow.payload.drop 196=s6Step146ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step146ExitF_retired] at result
  exact result

private def s6Step146ExitFvAfter : Arena := s6Step146ExitFAfter

private def s6Step146ExitFvBefore : Arena := s6Step146ExitFAfter

private theorem s6Step146ExitFv_Incoming : rowsOwned s6Step146ExitFvBefore [s6Step146ExitFvRow,s6Step146ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step146ExitGRow,s6Step146ExitFRow,s6Step146ExitFvRow,s6Step146ExitGvRow] 2 s6Step146ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step146ExitFvBefore (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step146ExitFv_Outgoing : rowsOwned s6Step146ExitGvAfter [s6Step146ExitFvOut,s6Step146ExitGvOut] :=
  hmrRows_owned_drop s6Step146ExitGvAfter [s6Step146ExitGOut,s6Step146ExitFOut,s6Step146ExitFvOut,s6Step146ExitGvOut] 2 s6Step146ExitBank_outgoingOwned

private theorem s6Step146ExitFv_distinct : (s6Step146ExitFvRow.sign::s6Step146ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146ExitFv_owned : (s6Step146ExitFvRow.sign::s6Step146ExitFvRow.payload).toFinset⊆s6Step146ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step146ExitFvBefore (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146ExitFv_reserved : s6Step146ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step146ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step146ExitFv_checked : planRowResizeLog s6Step146ExitFvBefore s6Step146ExitFvRow 88 []=
    some (s6Step146ExitFvAfter,s6Step146ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step146ExitFvBefore s6Step146ExitFvAfter s6Step146ExitFvRow 88 []
    s6Step146ExitFv_distinct s6Step146ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step146ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step146ExitFvRow.payload++[]) s6Step146ExitFvRow.sign=s6Step146ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step146ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step146ExitG_Incoming : rowsOwned s6Step146ExitGBefore [s6Step146ExitGRow,s6Step146ExitFRow,s6Step146ExitFvRow,s6Step146ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step146ExitGRow,s6Step146ExitFRow,s6Step146ExitFvRow,s6Step146ExitGvRow] 0 s6Step146ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step146ExitGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step146ExitG_Outgoing : rowsOwned s6Step146ExitGvAfter [s6Step146ExitGOut,s6Step146ExitFOut,s6Step146ExitFvOut,s6Step146ExitGvOut] :=
  hmrRows_owned_drop s6Step146ExitGvAfter [s6Step146ExitGOut,s6Step146ExitFOut,s6Step146ExitFvOut,s6Step146ExitGvOut] 0 s6Step146ExitBank_outgoingOwned

private theorem s6Step146ExitG_distinct : (s6Step146ExitGRow.sign::s6Step146ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146ExitG_owned : (s6Step146ExitGRow.sign::s6Step146ExitGRow.payload).toFinset⊆s6Step146ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step146ExitGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146ExitG_retired : s6Step146ExitGBefore.retireSet s6Step146ExitGExtra.toFinset=s6Step146ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step146ExitGBefore s6Step146ExitGAfter s6Step146ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step146ExitGBefore s6Step146ExitGAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step146ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step146ExitG_checked : planRowResizeLog s6Step146ExitGBefore s6Step146ExitGRow 195 []=
    some (s6Step146ExitGAfter,s6Step146ExitGOut,shrinkRow 777 s6Step146ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step146ExitGBefore s6Step146ExitGRow 195 s6Step146ExitG_distinct s6Step146ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step146ExitGRow.payload.take 195) s6Step146ExitGRow.sign=s6Step146ExitGOut := by decide +kernel
  have hi : s6Step146ExitGRow.payload.drop 195=s6Step146ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step146ExitG_retired] at result
  exact result

private def s6Step146ExitGvBefore : Arena := s6Step146ExitFAfter

private theorem s6Step146ExitGv_Incoming : rowsOwned s6Step146ExitGvBefore [s6Step146ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step146ExitGRow,s6Step146ExitFRow,s6Step146ExitFvRow,s6Step146ExitGvRow] 3 s6Step146ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step146ExitGvBefore (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step146ExitGv_Outgoing : rowsOwned s6Step146ExitGvAfter [s6Step146ExitGvOut] :=
  hmrRows_owned_drop s6Step146ExitGvAfter [s6Step146ExitGOut,s6Step146ExitFOut,s6Step146ExitFvOut,s6Step146ExitGvOut] 3 s6Step146ExitBank_outgoingOwned

private theorem s6Step146ExitGv_distinct : (s6Step146ExitGvRow.sign::s6Step146ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146ExitGv_owned : (s6Step146ExitGvRow.sign::s6Step146ExitGvRow.payload).toFinset⊆s6Step146ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step146ExitGvBefore (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146ExitGv_retired : s6Step146ExitGvBefore.retireSet s6Step146ExitGvExtra.toFinset=s6Step146ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step146ExitGvBefore s6Step146ExitGvAfter s6Step146ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step146ExitGvBefore s6Step146ExitGvAfter (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,195),(196,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step146ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step146ExitGv_checked : planRowResizeLog s6Step146ExitGvBefore s6Step146ExitGvRow 86 []=
    some (s6Step146ExitGvAfter,s6Step146ExitGvOut,shrinkRow 775 s6Step146ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step146ExitGvBefore s6Step146ExitGvRow 86 s6Step146ExitGv_distinct s6Step146ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step146ExitGvRow.payload.take 86) s6Step146ExitGvRow.sign=s6Step146ExitGvOut := by decide +kernel
  have hi : s6Step146ExitGvRow.payload.drop 86=s6Step146ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step146ExitGv_retired] at result
  exact result

private theorem s6Step146ExitBank_rows : planWindowRowsLog s6Step146ExitGBefore [(s6Step146ExitGRow,195),(s6Step146ExitFRow,196),(s6Step146ExitFvRow,88),(s6Step146ExitGvRow,86)] [[],[],[],[]]=
    some (s6Step146ExitGvAfter,[s6Step146ExitGOut,s6Step146ExitFOut,s6Step146ExitFvOut,s6Step146ExitGvOut],(shrinkRow 777 s6Step146ExitGExtra ++ (shrinkRow 795 s6Step146ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step146ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step146ExitGvAfter [] []=some (s6Step146ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step146ExitGvBefore s6Step146ExitGvAfter s6Step146ExitGvAfter
    s6Step146ExitGvRow s6Step146ExitGvOut 86 [] [] [] []
    (shrinkRow 775 s6Step146ExitGvExtra) ([]) s6Step146ExitGv_Incoming s6Step146ExitGv_checked h4 s6Step146ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step146ExitFvBefore s6Step146ExitFvAfter s6Step146ExitGvAfter
    s6Step146ExitFvRow s6Step146ExitFvOut 88 [] [(s6Step146ExitGvRow,86)] [[]] [s6Step146ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step146ExitGvExtra ++ [])) s6Step146ExitFv_Incoming s6Step146ExitFv_checked h3 s6Step146ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step146ExitFBefore s6Step146ExitFAfter s6Step146ExitGvAfter
    s6Step146ExitFRow s6Step146ExitFOut 196 [] [(s6Step146ExitFvRow,88),(s6Step146ExitGvRow,86)] [[],[]] [s6Step146ExitFvOut,s6Step146ExitGvOut]
    (shrinkRow 795 s6Step146ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step146ExitGvExtra ++ []))) s6Step146ExitF_Incoming s6Step146ExitF_checked h2 s6Step146ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step146ExitGBefore s6Step146ExitGAfter s6Step146ExitGvAfter
    s6Step146ExitGRow s6Step146ExitGOut 195 [] [(s6Step146ExitFRow,196),(s6Step146ExitFvRow,88),(s6Step146ExitGvRow,86)] [[],[],[]] [s6Step146ExitFOut,s6Step146ExitFvOut,s6Step146ExitGvOut]
    (shrinkRow 777 s6Step146ExitGExtra) ((shrinkRow 795 s6Step146ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step146ExitGvExtra ++ [])))) s6Step146ExitG_Incoming s6Step146ExitG_checked h1 s6Step146ExitG_Outgoing
  exact h0

private theorem s6Step146ExitBank_checked : compileHmrBankResizeLog .exit s6Step146ExitGBefore ⟨s6Step146ExitFRow,s6Step146ExitGRow,s6Step146ExitFvRow,s6Step146ExitGvRow⟩ ⟨196,195,88,86⟩ [[],[],[],[]]=
    some (s6Step146ExitGvAfter,⟨s6Step146ExitFOut,s6Step146ExitGOut,s6Step146ExitFvOut,s6Step146ExitGvOut⟩,(shrinkRow 777 s6Step146ExitGExtra ++ (shrinkRow 795 s6Step146ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step146ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step146ExitBank_rows]
  rfl

private theorem s6Step146Add0_apart : Disjoint s6Step146Add0Arena.live s6Step146Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step146Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step146Add0_card : s6Step146Add0Arena.live.card=882 := by
  decide +kernel

private theorem s6Step146Add0_borrowed : s6Step146Add0Arena.checkBorrow (hmrHybridCount s6Step146Add0Arena s6Step146Add0B.length) s6Step146Add0Work=some s6Step146Add0During := by
  have len : s6Step146Add0Work.length=hmrHybridCount s6Step146Add0Arena s6Step146Add0B.length := by
    rw [hmrHybridCount,s6Step146Add0_card]
    decide +kernel
  have nd : s6Step146Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step146Add0Arena s6Step146Add0During s6Step146Add0Work.toFinset s6Step146Add0_bounded s6Step146Add0_apart rfl

private theorem s6Step146Add0_distinct : (768::887::879::(s6Step146Add0A++s6Step146Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146Add0_owned : (768::887::879::(s6Step146Add0A++s6Step146Add0B)).toFinset⊆s6Step146Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step146Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step146Add0_checked : compileHmrHybridCinLog s6Step146Add0Arena 887 768 879 s6Step146Add0A s6Step146Add0B s6Step146Add0Work=some s6Step146Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step146Add0Arena s6Step146Add0During 887 768 879 s6Step146Add0A s6Step146Add0B s6Step146Add0Work
    (by decide +kernel) (by decide +kernel) s6Step146Add0_distinct
    (fun q hq => s6Step146Add0_owned (List.mem_toFinset.mpr hq)) s6Step146Add0_borrowed

private theorem s6Step146Add1_apart : Disjoint s6Step146Add1Arena.live s6Step146Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step146Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step146Add1_card : s6Step146Add1Arena.live.card=882 := by
  decide +kernel

private theorem s6Step146Add1_borrowed : s6Step146Add1Arena.checkBorrow (hmrHybridCount s6Step146Add1Arena s6Step146Add1B.length) s6Step146Add1Work=some s6Step146Add1During := by
  have len : s6Step146Add1Work.length=hmrHybridCount s6Step146Add1Arena s6Step146Add1B.length := by
    rw [hmrHybridCount,s6Step146Add1_card]
    decide +kernel
  have nd : s6Step146Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step146Add1Arena s6Step146Add1During s6Step146Add1Work.toFinset s6Step146Add1_bounded s6Step146Add1_apart rfl

private theorem s6Step146Add1_distinct : (768::887::879::(s6Step146Add1A++s6Step146Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146Add1_owned : (768::887::879::(s6Step146Add1A++s6Step146Add1B)).toFinset⊆s6Step146Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step146Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step146Add1_checked : compileHmrHybridCinLog s6Step146Add1Arena 887 768 879 s6Step146Add1A s6Step146Add1B s6Step146Add1Work=some s6Step146Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step146Add1Arena s6Step146Add1During 887 768 879 s6Step146Add1A s6Step146Add1B s6Step146Add1Work
    (by decide +kernel) (by decide +kernel) s6Step146Add1_distinct
    (fun q hq => s6Step146Add1_owned (List.mem_toFinset.mpr hq)) s6Step146Add1_borrowed

private theorem s6Step146F4_apart : Disjoint (s6Step146Add0A++s6Step146Add0B).toFinset (s6Step146Add1A++s6Step146Add1B).toFinset := by
  have nd : ((s6Step146Add0A++s6Step146Add0B)++(s6Step146Add1A++s6Step146Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step146F4_carry : s6Step146F4FlagArena.checkBorrow 1 [879]=some s6Step146Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step146F4FlagArena,s6Step146HeadFvAfter,arenaWires]
  · change s6Step146Add0Arena.live=(s6Step146HeadFvAfter.live∪{768})∪{879}
    apply hmrArena_union_pair_of_filter_check s6Step146HeadFvAfter s6Step146Add0Arena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) 768 879 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step146F4_distinct : (794::887::768::879::((s6Step146Add0A++s6Step146Add1A)++(s6Step146Add0B++s6Step146Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146F4_flag : s6Step146HeadFvAfter.checkBorrow 1 [768]=some s6Step146F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step146HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step146F4_owned : (794::887::((s6Step146Add0A++s6Step146Add1A)++(s6Step146Add0B++s6Step146Add1B))).toFinset⊆s6Step146HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step146HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146F4_checked : compileHmrHybridF4Log s6Step146HeadFvAfter 794 887 s6Step146Add0A s6Step146Add0B s6Step146Add1A s6Step146Add1B [768] [879] s6Step146Add0Work s6Step146Add1Work=some s6Step146F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step146HeadFvAfter s6Step146F4FlagArena s6Step146Add0Arena s6Step146Add0During s6Step146Add1During 794 887
    s6Step146Add0A s6Step146Add0B s6Step146Add1A s6Step146Add1B [768] [879] s6Step146Add0Work s6Step146Add1Work
    (fun q hq => s6Step146F4_owned (List.mem_toFinset.mpr hq)) s6Step146F4_flag s6Step146F4_carry
    s6Step146F4_distinct s6Step146F4_apart s6Step146Add0_checked s6Step146Add1_checked

private theorem s6Step146Front_branch : s6Step146FrontSigmaArena.checkBorrow 1 [887]=some s6Step146HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step146FrontSigmaArena,s6Step146EntryGvAfter,arenaWires]
  · change s6Step146HeadGBefore.live=(s6Step146EntryGvAfter.live∪{794})∪{887}
    apply hmrArena_union_pair_of_filter_check s6Step146EntryGvAfter s6Step146HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 794 887 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step146Front_entry : HmrFrontEntryValid s6Step146EntryFBefore s6Step146FrontBank 196 87 ⟨196,195,88,86⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step146FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step146EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step146EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step146FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step146Front_sigma : s6Step146EntryGvAfter.checkBorrow 1 [794]=some s6Step146FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step146EntryGvAfter,arenaWires]
  · rfl

private def s6Step146HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146HeadFBefore : Arena := s6Step146HeadGAfter

private def s6Step146HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451],795⟩

private def s6Step146HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780],776⟩

private def s6Step146HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195],777⟩

private def s6Step146HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 855],775⟩

private theorem s6Step146HeadBank_incomingDistinct : ([s6Step146HeadGRow,s6Step146HeadFRow,s6Step146HeadGvRow,s6Step146HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146HeadF_Incoming : rowsOwned s6Step146HeadFBefore [s6Step146HeadFRow,s6Step146HeadGvRow,s6Step146HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step146HeadGRow,s6Step146HeadFRow,s6Step146HeadGvRow,s6Step146HeadFvRow] 1 s6Step146HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step146HeadFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step146HeadBank_outgoingOwned : rowsOwned s6Step146HeadFvAfter [s6Step146HeadGOut,s6Step146HeadFOut,s6Step146HeadGvOut,s6Step146HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step146HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step146HeadF_Outgoing : rowsOwned s6Step146HeadFvAfter [s6Step146HeadFOut,s6Step146HeadGvOut,s6Step146HeadFvOut] :=
  hmrRows_owned_drop s6Step146HeadFvAfter [s6Step146HeadGOut,s6Step146HeadFOut,s6Step146HeadGvOut,s6Step146HeadFvOut] 1 s6Step146HeadBank_outgoingOwned

private theorem s6Step146HeadF_distinct : (s6Step146HeadFRow.sign::s6Step146HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146HeadF_owned : (s6Step146HeadFRow.sign::s6Step146HeadFRow.payload).toFinset⊆s6Step146HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step146HeadFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146HeadF_reserved : s6Step146HeadFBefore.reserve s6Step146HeadFFresh.toFinset=some s6Step146HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step146HeadFFresh,arenaWires]
  · norm_num [s6Step146HeadFBefore,s6Step146HeadGAfter,s6Step146HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step146HeadFBefore s6Step146HeadFAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step146HeadFFresh rfl rfl
    · norm_num [s6Step146HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step146HeadF_checked : planRowResizeLog s6Step146HeadFBefore s6Step146HeadFRow 197 s6Step146HeadFFresh=
    some (s6Step146HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 807],795⟩,growRow 795 s6Step146HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step146HeadFBefore s6Step146HeadFAfter s6Step146HeadFRow 197 s6Step146HeadFFresh
    s6Step146HeadF_distinct s6Step146HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step146HeadF_reserved
  have rowEq : WindowRow.mk (s6Step146HeadFRow.payload++s6Step146HeadFFresh) s6Step146HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 807],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step146HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step146HeadFvBefore : Arena := s6Step146HeadGvAfter

private theorem s6Step146HeadFv_Incoming : rowsOwned s6Step146HeadFvBefore [s6Step146HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step146HeadGRow,s6Step146HeadFRow,s6Step146HeadGvRow,s6Step146HeadFvRow] 3 s6Step146HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step146HeadFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step146HeadFv_Outgoing : rowsOwned s6Step146HeadFvAfter [s6Step146HeadFvOut] :=
  hmrRows_owned_drop s6Step146HeadFvAfter [s6Step146HeadGOut,s6Step146HeadFOut,s6Step146HeadGvOut,s6Step146HeadFvOut] 3 s6Step146HeadBank_outgoingOwned

private theorem s6Step146HeadFv_distinct : (s6Step146HeadFvRow.sign::s6Step146HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146HeadFv_owned : (s6Step146HeadFvRow.sign::s6Step146HeadFvRow.payload).toFinset⊆s6Step146HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step146HeadFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146HeadFv_reserved : s6Step146HeadFvBefore.reserve s6Step146HeadFvFresh.toFinset=some s6Step146HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step146HeadFvFresh,arenaWires]
  · norm_num [s6Step146HeadFvBefore,s6Step146HeadGvAfter,s6Step146HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step146HeadFvBefore s6Step146HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step146HeadFvFresh rfl rfl
    · norm_num [s6Step146HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step146HeadFv_checked : planRowResizeLog s6Step146HeadFvBefore s6Step146HeadFvRow 88 s6Step146HeadFvFresh=
    some (s6Step146HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩,growRow 776 s6Step146HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step146HeadFvBefore s6Step146HeadFvAfter s6Step146HeadFvRow 88 s6Step146HeadFvFresh
    s6Step146HeadFv_distinct s6Step146HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step146HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step146HeadFvRow.payload++s6Step146HeadFvFresh) s6Step146HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step146HeadG_Incoming : rowsOwned s6Step146HeadGBefore [s6Step146HeadGRow,s6Step146HeadFRow,s6Step146HeadGvRow,s6Step146HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step146HeadGRow,s6Step146HeadFRow,s6Step146HeadGvRow,s6Step146HeadFvRow] 0 s6Step146HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step146HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step146HeadG_Outgoing : rowsOwned s6Step146HeadFvAfter [s6Step146HeadGOut,s6Step146HeadFOut,s6Step146HeadGvOut,s6Step146HeadFvOut] :=
  hmrRows_owned_drop s6Step146HeadFvAfter [s6Step146HeadGOut,s6Step146HeadFOut,s6Step146HeadGvOut,s6Step146HeadFvOut] 0 s6Step146HeadBank_outgoingOwned

private theorem s6Step146HeadG_distinct : (s6Step146HeadGRow.sign::s6Step146HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146HeadG_owned : (s6Step146HeadGRow.sign::s6Step146HeadGRow.payload).toFinset⊆s6Step146HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step146HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146HeadG_reserved : s6Step146HeadGBefore.reserve s6Step146HeadGFresh.toFinset=some s6Step146HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step146HeadGFresh,arenaWires]
  · norm_num [s6Step146HeadGBefore,s6Step146HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step146HeadGBefore s6Step146HeadGAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step146HeadGFresh rfl rfl
    · norm_num [s6Step146HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step146HeadG_checked : planRowResizeLog s6Step146HeadGBefore s6Step146HeadGRow 197 s6Step146HeadGFresh=
    some (s6Step146HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 908],777⟩,growRow 777 s6Step146HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step146HeadGBefore s6Step146HeadGAfter s6Step146HeadGRow 197 s6Step146HeadGFresh
    s6Step146HeadG_distinct s6Step146HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step146HeadG_reserved
  have rowEq : WindowRow.mk (s6Step146HeadGRow.payload++s6Step146HeadGFresh) s6Step146HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 908],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step146HeadGvBefore : Arena := s6Step146HeadFAfter

private theorem s6Step146HeadGv_Incoming : rowsOwned s6Step146HeadGvBefore [s6Step146HeadGvRow,s6Step146HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step146HeadGRow,s6Step146HeadFRow,s6Step146HeadGvRow,s6Step146HeadFvRow] 2 s6Step146HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step146HeadGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step146HeadGv_Outgoing : rowsOwned s6Step146HeadFvAfter [s6Step146HeadGvOut,s6Step146HeadFvOut] :=
  hmrRows_owned_drop s6Step146HeadFvAfter [s6Step146HeadGOut,s6Step146HeadFOut,s6Step146HeadGvOut,s6Step146HeadFvOut] 2 s6Step146HeadBank_outgoingOwned

private theorem s6Step146HeadGv_distinct : (s6Step146HeadGvRow.sign::s6Step146HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step146HeadGv_owned : (s6Step146HeadGvRow.sign::s6Step146HeadGvRow.payload).toFinset⊆s6Step146HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step146HeadGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step146HeadGv_reserved : s6Step146HeadGvBefore.reserve s6Step146HeadGvFresh.toFinset=some s6Step146HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step146HeadGvFresh,arenaWires]
  · norm_num [s6Step146HeadGvBefore,s6Step146HeadFAfter,s6Step146HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step146HeadGvBefore s6Step146HeadGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step146HeadGvFresh rfl rfl
    · norm_num [s6Step146HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step146HeadGv_checked : planRowResizeLog s6Step146HeadGvBefore s6Step146HeadGvRow 88 s6Step146HeadGvFresh=
    some (s6Step146HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 855, 802],775⟩,growRow 775 s6Step146HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step146HeadGvBefore s6Step146HeadGvAfter s6Step146HeadGvRow 88 s6Step146HeadGvFresh
    s6Step146HeadGv_distinct s6Step146HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step146HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step146HeadGvRow.payload++s6Step146HeadGvFresh) s6Step146HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 855, 802],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step146HeadBank_rows : planWindowRowsLog s6Step146HeadGBefore [(s6Step146HeadGRow,197),(s6Step146HeadFRow,197),(s6Step146HeadGvRow,88),(s6Step146HeadFvRow,88)] [s6Step146HeadGFresh,s6Step146HeadFFresh,s6Step146HeadGvFresh,s6Step146HeadFvFresh]=
    some (s6Step146HeadFvAfter,[s6Step146HeadGOut,s6Step146HeadFOut,s6Step146HeadGvOut,s6Step146HeadFvOut],(growRow 777 s6Step146HeadGFresh ++ (growRow 795 s6Step146HeadFFresh ++ (growRow 775 s6Step146HeadGvFresh ++ (growRow 776 s6Step146HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step146HeadFvAfter [] []=some (s6Step146HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step146HeadFvBefore s6Step146HeadFvAfter s6Step146HeadFvAfter
    s6Step146HeadFvRow s6Step146HeadFvOut 88 s6Step146HeadFvFresh [] [] []
    (growRow 776 s6Step146HeadFvFresh) ([]) s6Step146HeadFv_Incoming s6Step146HeadFv_checked h4 s6Step146HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step146HeadGvBefore s6Step146HeadGvAfter s6Step146HeadFvAfter
    s6Step146HeadGvRow s6Step146HeadGvOut 88 s6Step146HeadGvFresh [(s6Step146HeadFvRow,88)] [s6Step146HeadFvFresh] [s6Step146HeadFvOut]
    (growRow 775 s6Step146HeadGvFresh) ((growRow 776 s6Step146HeadFvFresh ++ [])) s6Step146HeadGv_Incoming s6Step146HeadGv_checked h3 s6Step146HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step146HeadFBefore s6Step146HeadFAfter s6Step146HeadFvAfter
    s6Step146HeadFRow s6Step146HeadFOut 197 s6Step146HeadFFresh [(s6Step146HeadGvRow,88),(s6Step146HeadFvRow,88)] [s6Step146HeadGvFresh,s6Step146HeadFvFresh] [s6Step146HeadGvOut,s6Step146HeadFvOut]
    (growRow 795 s6Step146HeadFFresh) ((growRow 775 s6Step146HeadGvFresh ++ (growRow 776 s6Step146HeadFvFresh ++ []))) s6Step146HeadF_Incoming s6Step146HeadF_checked h2 s6Step146HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step146HeadGBefore s6Step146HeadGAfter s6Step146HeadFvAfter
    s6Step146HeadGRow s6Step146HeadGOut 197 s6Step146HeadGFresh [(s6Step146HeadFRow,197),(s6Step146HeadGvRow,88),(s6Step146HeadFvRow,88)] [s6Step146HeadFFresh,s6Step146HeadGvFresh,s6Step146HeadFvFresh] [s6Step146HeadFOut,s6Step146HeadGvOut,s6Step146HeadFvOut]
    (growRow 777 s6Step146HeadGFresh) ((growRow 795 s6Step146HeadFFresh ++ (growRow 775 s6Step146HeadGvFresh ++ (growRow 776 s6Step146HeadFvFresh ++ [])))) s6Step146HeadG_Incoming s6Step146HeadG_checked h1 s6Step146HeadG_Outgoing
  exact h0

private theorem s6Step146HeadBank_checked : compileHmrBankResizeLog .headroom s6Step146HeadGBefore ⟨s6Step146HeadFRow,s6Step146HeadGRow,s6Step146HeadFvRow,s6Step146HeadGvRow⟩ ⟨197,197,88,88⟩ [s6Step146HeadGFresh,s6Step146HeadFFresh,s6Step146HeadGvFresh,s6Step146HeadFvFresh]=
    some (s6Step146HeadFvAfter,⟨s6Step146HeadFOut,s6Step146HeadGOut,s6Step146HeadFvOut,s6Step146HeadGvOut⟩,(growRow 777 s6Step146HeadGFresh ++ (growRow 795 s6Step146HeadFFresh ++ (growRow 775 s6Step146HeadGvFresh ++ (growRow 776 s6Step146HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step146HeadBank_rows]
  rfl

private theorem s6Step146Front_checked : compileHmrSourceFrontLog s6Step146EntryFBefore s6Step146FrontBank 196 87 ⟨196,195,88,86⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step146FrontLog=some s6Step146FrontPlan := by
  have pairEq : s6Step146FrontPair=⟨s6Step146HeadFRow,s6Step146HeadGRow,s6Step146HeadFvRow,s6Step146HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step146FrontHead=⟨s6Step146ExitFRow,s6Step146ExitGRow,s6Step146ExitFvRow,s6Step146ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step146Add0A=s6Step146FrontHead.f.wires := by decide +kernel
  have gEq : s6Step146Add0B=s6Step146FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step146Add1A=s6Step146FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step146Add1B=s6Step146FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step146EntryFBefore s6Step146FrontBank 196 87 ⟨196,195,88,86⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step146FrontLog s6Step146FrontPlan
  · exact s6Step146Front_entry
  · exact s6Step146EntryBank_checked
  · exact s6Step146Front_sigma
  · rfl
  · exact s6Step146Front_branch
  · rfl
  · simpa only [s6Step146FrontPlan,pairEq] using s6Step146HeadBank_checked
  · simpa only [s6Step146FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step146F4_checked
  · exact s6Step146Counter_checked
  · rfl
  · simpa only [s6Step146FrontPlan,headEq] using s6Step146ExitBank_checked

private theorem s6Step146Complete_explicit_checked : compileHmrEarlyStepLog s6Step146EntryFBefore s6Step146FrontBank 196 87 ⟨196,195,88,86⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step146CompleteLog=some s6Step146CompletePlan := by
  let Q := s6Step146EarlyControlPlan
  have hq := s6Step146EarlyControl_plan_checked
  have fv1 : s6Step146CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step146CompleteOut.fv.payload[2]?.getD s6Step146CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step146CompleteOut.fv.payload[3]?.getD s6Step146CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step146CompleteOut.fv.payload[4]?.getD s6Step146CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step146EntryFBefore s6Step146EarlyControlArena s6Step146FrontBank 196 87 ⟨196,195,88,86⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step146CompleteLog s6Step146FrontPlan Q
    s6Step146Front_checked s6Step146Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step146Complete_owned s6Step146Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step146EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 794 s6Step146CompleteOut.fv.second (s6Step146CompleteOut.fv.payload[2]?.getD s6Step146CompleteOut.fv.sign) (s6Step146CompleteOut.fv.payload[3]?.getD s6Step146CompleteOut.fv.sign) (s6Step146CompleteOut.fv.payload[4]?.getD s6Step146CompleteOut.fv.sign) 887 42 s6Step146EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep146Arena : Arena := s6Step146EntryFBefore
def s6PrivateStep146Bank : WindowBank := s6Step146FrontBank
def s6PrivateStep146Spec : HmrSourceWalkStepLog := ⟨196,87,⟨196,195,88,86⟩,42,.early s6Step146CompleteLog⟩
def s6PrivateStep146Plan : HmrSourceStepPlan := .early s6Step146CompletePlan
theorem s6PrivateStep146_source : s6PrivateStep146Spec=s6ObservedLogs144[2] := rfl
theorem s6PrivateStep146_checked : compileHmrSourceStepLog s6PrivateStep146Arena s6PrivateStep146Bank
    s6PrivateStep146Spec.fgWidth s6PrivateStep146Spec.vWidth s6PrivateStep146Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 146 s6PrivateStep146Spec.need none s6PrivateStep146Spec.log=some s6PrivateStep146Plan := by
  change compileHmrSourceStepLog s6Step146EntryFBefore s6Step146FrontBank 196 87 ⟨196,195,88,86⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 146 42 none (.early s6Step146CompleteLog)=some (.early s6Step146CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 146<498)]
  rw [s6Step146Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
