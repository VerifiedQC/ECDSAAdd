import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep141
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

private def s6Step143CompleteMoves : List (Wire × Wire) := [(780,197),(794,453)]

private def s6Step143EarlyControlLog : HmrEarlyControlLog := ⟨[794, 780, 807, 867, 802],[768],[879],[875, 882, 891, 903, 791, 825],[]⟩

private def s6Step143FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[802], [867], [807], [786]],[[], [], [], []]⟩,[855],[927],[768],[879],[875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[768, 879, 875, 882]⟩

private def s6Step143CompleteLog : HmrEarlyStepLog := ⟨s6Step143FrontLog,s6Step143CompleteMoves,s6Step143EarlyControlLog⟩

private def s6Step143ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452],795⟩

private def s6Step143ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩

private def s6Step143ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],777⟩

private def s6Step143ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩

private def s6Step143FrontOut : WindowBank := ⟨s6Step143ExitFOut,s6Step143ExitGOut,s6Step143ExitFvOut,s6Step143ExitGvOut⟩

private def s6Step143CompleteOut : WindowBank := s6Step143FrontOut.repacked s6Step143CompleteMoves

private def s6Step143EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step143EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step143EarlyControlPositiveArena,[768],s6Step143EarlyControlEqualityArena,[879],⟨⟨855,false⟩,[⟨⟨768,false⟩,879⟩]⟩⟩

private def s6Step143EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step143EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step143EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,794⟩,⟨⟨772,false⟩,780⟩,⟨⟨771,false⟩,807⟩,⟨⟨770,false⟩,867⟩,⟨⟨769,false⟩,802⟩]⟩

private def s6Step143EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step143EarlyControlZeroArena,s6Step143EarlyControlZeroPlan,s6Step143EarlyControlClassPlan,s6Step143EarlyControlFlagArena,s6Step143EarlyControlFittedArena,s6Step143EarlyControlHistoryArena,s6Step143EarlyControlSigmaArena,s6Step143EarlyControlOutputArena,s6Step143EarlyControlLog⟩

private def s6Step143CounterWork : List Wire := [768, 879, 875, 882]

private theorem s6Step143Counter_bounded : s6Step143CounterWork.toFinset⊆arenaWires := by norm_num [s6Step143CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step143HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143CounterDuring : Arena := ⟨s6Step143HeadFvAfter.live∪s6Step143CounterWork.toFinset,Finset.union_subset s6Step143HeadFvAfter.bounded s6Step143Counter_bounded⟩

private def s6Step143EntryFFresh : List Wire := []

private def s6Step143EntryFvFresh : List Wire := []

private def s6Step143EntryGFresh : List Wire := []

private def s6Step143EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143EntryGvAfter : Arena := s6Step143EntryFBefore

private def s6Step143EntryGvFresh : List Wire := []

private def s6Step143ExitFExtra : List Wire := [453, 867]

private def s6Step143ExitGExtra : List Wire := [197, 802]

private def s6Step143ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,197),(198,453),(454,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143ExitGvExtra : List Wire := [807]

private def s6Step143Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step143Add0Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step143Add0_bounded : s6Step143Add0Work.toFinset⊆arenaWires := by
  have h : s6Step143Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step143Add0During : Arena := ⟨s6Step143Add0Arena.live∪s6Step143Add0Work.toFinset,Finset.union_subset s6Step143Add0Arena.bounded s6Step143Add0_bounded⟩

private def s6Step143Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step143Add1Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step143Add1_bounded : s6Step143Add1Work.toFinset⊆arenaWires := by
  have h : s6Step143Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step143Add1During : Arena := ⟨s6Step143Add1Arena.live∪s6Step143Add1Work.toFinset,Finset.union_subset s6Step143Add1Arena.bounded s6Step143Add1_bounded⟩

private def s6Step143F4FlagArena : Arena := ⟨s6Step143HeadFvAfter.live∪{768},Finset.union_subset s6Step143HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step143F4Plan : HmrHybridF4Plan := ⟨s6Step143F4FlagArena,[768],s6Step143Add0Arena,[879],s6Step143Add0During,s6Step143Add0Work,s6Step143Add1During,s6Step143Add1Work⟩

private def s6Step143HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 867],795⟩

private def s6Step143HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩

private def s6Step143HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 802],777⟩

private def s6Step143HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 807],775⟩

private def s6Step143FrontHead : WindowBank := ⟨s6Step143HeadFOut,s6Step143HeadGOut,s6Step143HeadFvOut,s6Step143HeadGvOut⟩

private def s6Step143EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453],795⟩

private def s6Step143EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩

private def s6Step143EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],777⟩

private def s6Step143EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩

private def s6Step143FrontPair : WindowBank := ⟨s6Step143EntryFOut,s6Step143EntryGOut,s6Step143EntryFvOut,s6Step143EntryGvOut⟩

private def s6Step143FrontSigmaArena : Arena := ⟨s6Step143EntryGvAfter.live∪{855},Finset.union_subset s6Step143EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step143HeadFFresh : List Wire := [867]

private def s6Step143HeadFvFresh : List Wire := [786]

private def s6Step143HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143HeadGFresh : List Wire := [802]

private def s6Step143HeadGvFresh : List Wire := [807]

private def s6Step143FrontPlan : HmrSourceFront := ⟨s6Step143EntryGvAfter,s6Step143FrontPair,(growRow 795 s6Step143EntryFFresh ++ (growRow 777 s6Step143EntryGFresh ++ (growRow 776 s6Step143EntryFvFresh ++ (growRow 775 s6Step143EntryGvFresh ++ [])))),s6Step143FrontSigmaArena,[855],s6Step143HeadGBefore,[927],
  s6Step143HeadFvAfter,s6Step143FrontHead,(growRow 777 s6Step143HeadGFresh ++ (growRow 795 s6Step143HeadFFresh ++ (growRow 775 s6Step143HeadGvFresh ++ (growRow 776 s6Step143HeadFvFresh ++ [])))),s6Step143F4Plan,s6Step143CounterDuring,s6Step143CounterWork,s6Step143ExitGvAfter,s6Step143FrontOut,(shrinkRow 777 s6Step143ExitGExtra ++ (shrinkRow 795 s6Step143ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step143ExitGvExtra ++ []))))⟩

private def s6Step143CompletePlan : HmrEarlyStepPlan := ⟨s6Step143FrontPlan,s6Step143EarlyControlArena,s6Step143EarlyControlPlan,s6Step143CompleteMoves⟩

private theorem s6Step143Complete_apart : List.Disjoint (s6Step143CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [855, 927, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step143CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[855, 927, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step143Complete_owned : (s6Step143CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step143EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step143EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step143CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,453),(454,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143CompleteRelocationMove0Borrowed : Arena := ⟨s6Step143ExitGvAfter.live∪{197},Finset.union_subset s6Step143ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step143CompleteRelocationMove1Borrowed : Arena := ⟨s6Step143CompleteRelocationMove0After.live∪{453},Finset.union_subset s6Step143CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step143CompleteRelocation_move0_owned : 780∈s6Step143ExitGvAfter.live := by norm_num [s6Step143ExitGvAfter,arenaWires]

private theorem s6Step143CompleteRelocation_move0_reserve : s6Step143ExitGvAfter.reserve {197}=some s6Step143CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step143ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step143CompleteRelocation_move0_retire : s6Step143CompleteRelocationMove0Borrowed.retireSet {780}=s6Step143CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step143CompleteRelocationMove0Borrowed s6Step143CompleteRelocationMove0After {780}
  change s6Step143CompleteRelocationMove0After.live=(s6Step143ExitGvAfter.live∪{197})\{780}
  apply hmrArena_update_of_filter_check s6Step143ExitGvAfter s6Step143CompleteRelocationMove0After (fun q => ([(0,197),(198,453),(454,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,453),(454,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [197] [780] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step143CompleteRelocation_move1_owned : 794∈s6Step143CompleteRelocationMove0After.live := by norm_num [s6Step143CompleteRelocationMove0After,arenaWires]

private theorem s6Step143CompleteRelocation_move1_reserve : s6Step143CompleteRelocationMove0After.reserve {453}=some s6Step143CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step143CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step143CompleteRelocation_move1_retire : s6Step143CompleteRelocationMove1Borrowed.retireSet {794}=s6Step143EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step143CompleteRelocationMove1Borrowed s6Step143EarlyControlArena {794}
  change s6Step143EarlyControlArena.live=(s6Step143CompleteRelocationMove0After.live∪{453})\{794}
  apply hmrArena_update_of_filter_check s6Step143CompleteRelocationMove0After s6Step143EarlyControlArena (fun q => ([(0,453),(454,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [453] [794] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step143CompleteRelocation_checked : s6Step143ExitGvAfter.checkRepack [(780,197),(794,453)]=some s6Step143EarlyControlArena := by
  have tail2 : s6Step143EarlyControlArena.checkRepack []=some s6Step143EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step143CompleteRelocationMove0After s6Step143CompleteRelocationMove1Borrowed s6Step143EarlyControlArena s6Step143EarlyControlArena 794 453 []
    s6Step143CompleteRelocation_move1_owned s6Step143CompleteRelocation_move1_reserve s6Step143CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step143ExitGvAfter s6Step143CompleteRelocationMove0Borrowed s6Step143CompleteRelocationMove0After s6Step143EarlyControlArena 780 197 [(794,453)]
    s6Step143CompleteRelocation_move0_owned s6Step143CompleteRelocation_move0_reserve s6Step143CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step143Complete_repack : s6Step143ExitGvAfter.checkRepack s6Step143CompleteMoves=some s6Step143EarlyControlArena := by
  simpa only [s6Step143CompleteMoves] using s6Step143CompleteRelocation_checked

private theorem s6Step143EarlyControl_branchOwned : ([927] : List Wire).toFinset⊆s6Step143EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step143EarlyControlSigmaArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143EarlyControl_branch : compileHmrBranchRetirement s6Step143EarlyControlSigmaArena 927=some s6Step143EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step143EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step143EarlyControlSigmaArena s6Step143EarlyControlOutputArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [927] rfl rfl
    decide +kernel

private theorem s6Step143EarlyControl_classEqualityBorrow : s6Step143EarlyControlPositiveArena.checkBorrow (([855, 768] : List Wire).length-1) s6Step143EarlyControlLog.classWork=some s6Step143EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step143EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step143EarlyControlPositiveArena s6Step143EarlyControlEqualityArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step143EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step143EarlyControl_classEqualityOwned : ([855, 768] : List Wire).toFinset⊆s6Step143EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step143EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143EarlyControl_classEquality : compileHmrEqualityLog s6Step143EarlyControlPositiveArena [855, 768] 0 s6Step143EarlyControlLog.classWork=some (s6Step143EarlyControlEqualityArena,s6Step143EarlyControlLog.classWork,s6Step143EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step143EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step143EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step143EarlyControl_classOwned : ([769, 802, 855] : List Wire).toFinset⊆s6Step143EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step143EarlyControlZeroArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143EarlyControl_positiveBorrow : s6Step143EarlyControlZeroArena.checkBorrow (1) s6Step143EarlyControlLog.positiveWork=some s6Step143EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step143EarlyControlZeroArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step143EarlyControlZeroArena s6Step143EarlyControlPositiveArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step143EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step143EarlyControl_class : compileHmrSourceClassLog s6Step143EarlyControlZeroArena false 769 s6Step143EarlyControlZeroPlan.top 0 855 s6Step143EarlyControlLog.positiveWork s6Step143EarlyControlLog.classWork=some s6Step143EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step143EarlyControlClassPlan s6Step143EarlyControlZeroArena false 769 s6Step143EarlyControlZeroPlan.top 0 855
  constructor
  · decide +kernel
  · exact s6Step143EarlyControl_classOwned
  · exact s6Step143EarlyControl_positiveBorrow
  · exact s6Step143EarlyControl_classEquality

private theorem s6Step143EarlyControl_entryRecordOwned : ([927, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step143EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step143EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143EarlyControl_entrySigmaOwned : ([855, 254] : List Wire).toFinset⊆s6Step143EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step143EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143EarlyControl_fitBorrow : s6Step143EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step143EarlyControlLog.recordFresh=some s6Step143EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step143EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step143EarlyControlFittedArena,s6Step143EarlyControlFlagArena,s6Step143EarlyControlLog,arenaWires]

private theorem s6Step143EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step143EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step143EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step143EarlyControl_fit : compileHmrRecordGrowLog s6Step143EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step143EarlyControlLog.recordFresh=some s6Step143EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step143EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step143EarlyControl_fitBorrow

private theorem s6Step143EarlyControl_flagsBorrow : s6Step143EarlyControlEqualityArena.checkBorrow (6) s6Step143EarlyControlLog.flagWork=some s6Step143EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step143EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step143EarlyControlFlagArena,s6Step143EarlyControlEqualityArena,s6Step143EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step143EarlyControl_flagsOwned : ([879, 253, 252, 251] : List Wire).toFinset⊆s6Step143EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step143EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step143EarlyControl_flags : compileHmrFlagsLog s6Step143EarlyControlClassPlan.equalityArena s6Step143EarlyControlClassPlan.equality.top 253 252 251 s6Step143EarlyControlLog.flagWork=some s6Step143EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step143EarlyControl_flagsOwned⟩
  · exact s6Step143EarlyControl_flagsBorrow

private theorem s6Step143EarlyControl_historyBorrow : s6Step143EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step143EarlyControlLog.recordFresh=some s6Step143EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step143EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step143EarlyControlArena s6Step143EarlyControlHistoryArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step143EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step143EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step143EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step143EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143EarlyControl_history : compileHmrRecordGrowLog s6Step143EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step143EarlyControlLog.recordFresh=some s6Step143EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step143EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step143EarlyControl_historyBorrow

private theorem s6Step143EarlyControl_sigmaOwned : ([254, 855] : List Wire).toFinset⊆s6Step143EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step143EarlyControlHistoryArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143EarlyControl_sigmaReleaseOwned : ([855] : List Wire).toFinset⊆s6Step143EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step143EarlyControlHistoryArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143EarlyControl_sigmaRelease : s6Step143EarlyControlHistoryArena.release {855} (fun _ => false)=some s6Step143EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step143EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step143EarlyControlHistoryArena s6Step143EarlyControlSigmaArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [855] rfl rfl
    decide +kernel

private theorem s6Step143EarlyControl_sigma : compileHmrSigmaDropLog s6Step143EarlyControlHistoryArena false 0 0 254 855 []=some s6Step143EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step143EarlyControl_sigmaOwned⟩
  · exact s6Step143EarlyControl_sigmaRelease

private theorem s6Step143EarlyControl_zeroBorrow : s6Step143EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step143EarlyControlLog.zeroWork=some s6Step143EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step143EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step143EarlyControlArena s6Step143EarlyControlZeroArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step143EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step143EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step143EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step143EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143EarlyControl_zero : compileHmrEqualityLog s6Step143EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step143EarlyControlLog.zeroWork=some (s6Step143EarlyControlZeroArena,s6Step143EarlyControlLog.zeroWork,s6Step143EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step143EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step143EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step143EarlyControl_logged : s6Step143EarlyControlPlan.Logged s6Step143EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 254 253 252 251 927 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step143EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step143EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step143EarlyControl_zero
  · exact s6Step143EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step143EarlyControl_flags
  · exact s6Step143EarlyControl_fit
  · exact s6Step143EarlyControl_history
  · exact s6Step143EarlyControl_sigma
  · exact s6Step143EarlyControl_branch

private theorem s6Step143EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step143EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 254 253 252 251 927 42 s6Step143EarlyControlLog=some s6Step143EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step143EarlyControlPlan s6Step143EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 254 253 252 251 927 42 s6Step143EarlyControl_logged

private def s6Step143EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453],795⟩

private def s6Step143EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩

private def s6Step143EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],777⟩

private def s6Step143EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩

private def s6Step143FrontBank : WindowBank := ⟨s6Step143EntryFRow,s6Step143EntryGRow,s6Step143EntryFvRow,s6Step143EntryGvRow⟩

private def s6Step143Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 867, 795]

private def s6Step143Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 802, 777]

private def s6Step143Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 776]

private def s6Step143Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 807, 775]

private theorem s6Step143Counter_apart : Disjoint s6Step143HeadFvAfter.live s6Step143CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step143HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143Counter_borrowed : s6Step143HeadFvAfter.checkBorrow 4 s6Step143CounterWork=some s6Step143CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step143HeadFvAfter s6Step143CounterDuring s6Step143CounterWork.toFinset s6Step143Counter_bounded s6Step143Counter_apart rfl

private theorem s6Step143Counter_owned : (855::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step143HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step143HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143Counter_checked : compileHmrCounterStepLog s6Step143HeadFvAfter true 855 [774, 773, 772, 771, 770, 769] s6Step143CounterWork=some s6Step143CounterDuring := by
  have owned : ∀q∈855::[774, 773, 772, 771, 770, 769],q∈s6Step143HeadFvAfter.live := fun q hq => s6Step143Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step143Counter_borrowed

private def s6Step143EntryFAfter : Arena := s6Step143EntryFBefore

private theorem s6Step143EntryBank_incomingDistinct : ([s6Step143EntryFRow,s6Step143EntryGRow,s6Step143EntryFvRow,s6Step143EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143EntryF_Incoming : rowsOwned s6Step143EntryFBefore [s6Step143EntryFRow,s6Step143EntryGRow,s6Step143EntryFvRow,s6Step143EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step143EntryFRow,s6Step143EntryGRow,s6Step143EntryFvRow,s6Step143EntryGvRow] 0 s6Step143EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step143EntryFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step143EntryBank_outgoingOwned : rowsOwned s6Step143EntryGvAfter [s6Step143EntryFOut,s6Step143EntryGOut,s6Step143EntryFvOut,s6Step143EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step143EntryGvAfter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step143EntryF_Outgoing : rowsOwned s6Step143EntryGvAfter [s6Step143EntryFOut,s6Step143EntryGOut,s6Step143EntryFvOut,s6Step143EntryGvOut] :=
  hmrRows_owned_drop s6Step143EntryGvAfter [s6Step143EntryFOut,s6Step143EntryGOut,s6Step143EntryFvOut,s6Step143EntryGvOut] 0 s6Step143EntryBank_outgoingOwned

private theorem s6Step143EntryF_distinct : (s6Step143EntryFRow.sign::s6Step143EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143EntryF_owned : (s6Step143EntryFRow.sign::s6Step143EntryFRow.payload).toFinset⊆s6Step143EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step143EntryFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143EntryF_reserved : s6Step143EntryFBefore.reserve s6Step143EntryFFresh.toFinset=some s6Step143EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step143EntryFFresh,arenaWires]
  · norm_num [s6Step143EntryFBefore,s6Step143EntryFFresh,arenaWires]
  · simp only [s6Step143EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step143EntryF_checked : planRowResizeLog s6Step143EntryFBefore s6Step143EntryFRow 198 s6Step143EntryFFresh=
    some (s6Step143EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453],795⟩,growRow 795 s6Step143EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step143EntryFBefore s6Step143EntryFAfter s6Step143EntryFRow 198 s6Step143EntryFFresh
    s6Step143EntryF_distinct s6Step143EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step143EntryF_reserved
  have rowEq : WindowRow.mk (s6Step143EntryFRow.payload++s6Step143EntryFFresh) s6Step143EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step143EntryFvAfter : Arena := s6Step143EntryFBefore

private def s6Step143EntryFvBefore : Arena := s6Step143EntryFBefore

private theorem s6Step143EntryFv_Incoming : rowsOwned s6Step143EntryFvBefore [s6Step143EntryFvRow,s6Step143EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step143EntryFRow,s6Step143EntryGRow,s6Step143EntryFvRow,s6Step143EntryGvRow] 2 s6Step143EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step143EntryFvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step143EntryFv_Outgoing : rowsOwned s6Step143EntryGvAfter [s6Step143EntryFvOut,s6Step143EntryGvOut] :=
  hmrRows_owned_drop s6Step143EntryGvAfter [s6Step143EntryFOut,s6Step143EntryGOut,s6Step143EntryFvOut,s6Step143EntryGvOut] 2 s6Step143EntryBank_outgoingOwned

private theorem s6Step143EntryFv_distinct : (s6Step143EntryFvRow.sign::s6Step143EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143EntryFv_owned : (s6Step143EntryFvRow.sign::s6Step143EntryFvRow.payload).toFinset⊆s6Step143EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step143EntryFvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143EntryFv_reserved : s6Step143EntryFvBefore.reserve s6Step143EntryFvFresh.toFinset=some s6Step143EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step143EntryFvFresh,arenaWires]
  · norm_num [s6Step143EntryFvBefore,s6Step143EntryFBefore,s6Step143EntryFvFresh,arenaWires]
  · simp only [s6Step143EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step143EntryFv_checked : planRowResizeLog s6Step143EntryFvBefore s6Step143EntryFvRow 85 s6Step143EntryFvFresh=
    some (s6Step143EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩,growRow 776 s6Step143EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step143EntryFvBefore s6Step143EntryFvAfter s6Step143EntryFvRow 85 s6Step143EntryFvFresh
    s6Step143EntryFv_distinct s6Step143EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step143EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step143EntryFvRow.payload++s6Step143EntryFvFresh) s6Step143EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step143EntryGAfter : Arena := s6Step143EntryFBefore

private def s6Step143EntryGBefore : Arena := s6Step143EntryFBefore

private theorem s6Step143EntryG_Incoming : rowsOwned s6Step143EntryGBefore [s6Step143EntryGRow,s6Step143EntryFvRow,s6Step143EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step143EntryFRow,s6Step143EntryGRow,s6Step143EntryFvRow,s6Step143EntryGvRow] 1 s6Step143EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step143EntryGBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step143EntryG_Outgoing : rowsOwned s6Step143EntryGvAfter [s6Step143EntryGOut,s6Step143EntryFvOut,s6Step143EntryGvOut] :=
  hmrRows_owned_drop s6Step143EntryGvAfter [s6Step143EntryFOut,s6Step143EntryGOut,s6Step143EntryFvOut,s6Step143EntryGvOut] 1 s6Step143EntryBank_outgoingOwned

private theorem s6Step143EntryG_distinct : (s6Step143EntryGRow.sign::s6Step143EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143EntryG_owned : (s6Step143EntryGRow.sign::s6Step143EntryGRow.payload).toFinset⊆s6Step143EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step143EntryGBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143EntryG_reserved : s6Step143EntryGBefore.reserve s6Step143EntryGFresh.toFinset=some s6Step143EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step143EntryGFresh,arenaWires]
  · norm_num [s6Step143EntryGBefore,s6Step143EntryFBefore,s6Step143EntryGFresh,arenaWires]
  · simp only [s6Step143EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step143EntryG_checked : planRowResizeLog s6Step143EntryGBefore s6Step143EntryGRow 198 s6Step143EntryGFresh=
    some (s6Step143EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],777⟩,growRow 777 s6Step143EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step143EntryGBefore s6Step143EntryGAfter s6Step143EntryGRow 198 s6Step143EntryGFresh
    s6Step143EntryG_distinct s6Step143EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step143EntryG_reserved
  have rowEq : WindowRow.mk (s6Step143EntryGRow.payload++s6Step143EntryGFresh) s6Step143EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step143EntryGvBefore : Arena := s6Step143EntryFBefore

private theorem s6Step143EntryGv_Incoming : rowsOwned s6Step143EntryGvBefore [s6Step143EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step143EntryFRow,s6Step143EntryGRow,s6Step143EntryFvRow,s6Step143EntryGvRow] 3 s6Step143EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step143EntryGvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step143EntryGv_Outgoing : rowsOwned s6Step143EntryGvAfter [s6Step143EntryGvOut] :=
  hmrRows_owned_drop s6Step143EntryGvAfter [s6Step143EntryFOut,s6Step143EntryGOut,s6Step143EntryFvOut,s6Step143EntryGvOut] 3 s6Step143EntryBank_outgoingOwned

private theorem s6Step143EntryGv_distinct : (s6Step143EntryGvRow.sign::s6Step143EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143EntryGv_owned : (s6Step143EntryGvRow.sign::s6Step143EntryGvRow.payload).toFinset⊆s6Step143EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step143EntryGvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143EntryGv_reserved : s6Step143EntryGvBefore.reserve s6Step143EntryGvFresh.toFinset=some s6Step143EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step143EntryGvFresh,arenaWires]
  · norm_num [s6Step143EntryGvBefore,s6Step143EntryFBefore,s6Step143EntryGvFresh,arenaWires]
  · simp only [s6Step143EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step143EntryGv_checked : planRowResizeLog s6Step143EntryGvBefore s6Step143EntryGvRow 85 s6Step143EntryGvFresh=
    some (s6Step143EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩,growRow 775 s6Step143EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step143EntryGvBefore s6Step143EntryGvAfter s6Step143EntryGvRow 85 s6Step143EntryGvFresh
    s6Step143EntryGv_distinct s6Step143EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step143EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step143EntryGvRow.payload++s6Step143EntryGvFresh) s6Step143EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step143EntryBank_rows : planWindowRowsLog s6Step143EntryFBefore [(s6Step143EntryFRow,198),(s6Step143EntryGRow,198),(s6Step143EntryFvRow,85),(s6Step143EntryGvRow,85)] [s6Step143EntryFFresh,s6Step143EntryGFresh,s6Step143EntryFvFresh,s6Step143EntryGvFresh]=
    some (s6Step143EntryGvAfter,[s6Step143EntryFOut,s6Step143EntryGOut,s6Step143EntryFvOut,s6Step143EntryGvOut],(growRow 795 s6Step143EntryFFresh ++ (growRow 777 s6Step143EntryGFresh ++ (growRow 776 s6Step143EntryFvFresh ++ (growRow 775 s6Step143EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step143EntryGvAfter [] []=some (s6Step143EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step143EntryGvBefore s6Step143EntryGvAfter s6Step143EntryGvAfter
    s6Step143EntryGvRow s6Step143EntryGvOut 85 s6Step143EntryGvFresh [] [] []
    (growRow 775 s6Step143EntryGvFresh) ([]) s6Step143EntryGv_Incoming s6Step143EntryGv_checked h4 s6Step143EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step143EntryFvBefore s6Step143EntryFvAfter s6Step143EntryGvAfter
    s6Step143EntryFvRow s6Step143EntryFvOut 85 s6Step143EntryFvFresh [(s6Step143EntryGvRow,85)] [s6Step143EntryGvFresh] [s6Step143EntryGvOut]
    (growRow 776 s6Step143EntryFvFresh) ((growRow 775 s6Step143EntryGvFresh ++ [])) s6Step143EntryFv_Incoming s6Step143EntryFv_checked h3 s6Step143EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step143EntryGBefore s6Step143EntryGAfter s6Step143EntryGvAfter
    s6Step143EntryGRow s6Step143EntryGOut 198 s6Step143EntryGFresh [(s6Step143EntryFvRow,85),(s6Step143EntryGvRow,85)] [s6Step143EntryFvFresh,s6Step143EntryGvFresh] [s6Step143EntryFvOut,s6Step143EntryGvOut]
    (growRow 777 s6Step143EntryGFresh) ((growRow 776 s6Step143EntryFvFresh ++ (growRow 775 s6Step143EntryGvFresh ++ []))) s6Step143EntryG_Incoming s6Step143EntryG_checked h2 s6Step143EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step143EntryFBefore s6Step143EntryFAfter s6Step143EntryGvAfter
    s6Step143EntryFRow s6Step143EntryFOut 198 s6Step143EntryFFresh [(s6Step143EntryGRow,198),(s6Step143EntryFvRow,85),(s6Step143EntryGvRow,85)] [s6Step143EntryGFresh,s6Step143EntryFvFresh,s6Step143EntryGvFresh] [s6Step143EntryGOut,s6Step143EntryFvOut,s6Step143EntryGvOut]
    (growRow 795 s6Step143EntryFFresh) ((growRow 777 s6Step143EntryGFresh ++ (growRow 776 s6Step143EntryFvFresh ++ (growRow 775 s6Step143EntryGvFresh ++ [])))) s6Step143EntryF_Incoming s6Step143EntryF_checked h1 s6Step143EntryF_Outgoing
  exact h0

private theorem s6Step143EntryBank_checked : compileHmrBankResizeLog .entry s6Step143EntryFBefore ⟨s6Step143EntryFRow,s6Step143EntryGRow,s6Step143EntryFvRow,s6Step143EntryGvRow⟩ ⟨198,198,85,85⟩ [s6Step143EntryFFresh,s6Step143EntryGFresh,s6Step143EntryFvFresh,s6Step143EntryGvFresh]=
    some (s6Step143EntryGvAfter,⟨s6Step143EntryFOut,s6Step143EntryGOut,s6Step143EntryFvOut,s6Step143EntryGvOut⟩,(growRow 795 s6Step143EntryFFresh ++ (growRow 777 s6Step143EntryGFresh ++ (growRow 776 s6Step143EntryFvFresh ++ (growRow 775 s6Step143EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step143EntryBank_rows]
  rfl

private def s6Step143ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,197),(198,453),(454,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,197),(198,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143ExitFBefore : Arena := s6Step143ExitGAfter

private def s6Step143ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 867],795⟩

private def s6Step143ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩

private def s6Step143ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 802],777⟩

private def s6Step143ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 807],775⟩

private theorem s6Step143ExitBank_incomingDistinct : ([s6Step143ExitGRow,s6Step143ExitFRow,s6Step143ExitFvRow,s6Step143ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143ExitF_Incoming : rowsOwned s6Step143ExitFBefore [s6Step143ExitFRow,s6Step143ExitFvRow,s6Step143ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step143ExitGRow,s6Step143ExitFRow,s6Step143ExitFvRow,s6Step143ExitGvRow] 1 s6Step143ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step143ExitFBefore (fun q => ([(0,197),(198,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step143ExitBank_outgoingOwned : rowsOwned s6Step143ExitGvAfter [s6Step143ExitGOut,s6Step143ExitFOut,s6Step143ExitFvOut,s6Step143ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step143ExitGvAfter (fun q => ([(0,197),(198,453),(454,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step143ExitF_Outgoing : rowsOwned s6Step143ExitGvAfter [s6Step143ExitFOut,s6Step143ExitFvOut,s6Step143ExitGvOut] :=
  hmrRows_owned_drop s6Step143ExitGvAfter [s6Step143ExitGOut,s6Step143ExitFOut,s6Step143ExitFvOut,s6Step143ExitGvOut] 1 s6Step143ExitBank_outgoingOwned

private theorem s6Step143ExitF_distinct : (s6Step143ExitFRow.sign::s6Step143ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143ExitF_owned : (s6Step143ExitFRow.sign::s6Step143ExitFRow.payload).toFinset⊆s6Step143ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step143ExitFBefore (fun q => ([(0,197),(198,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143ExitF_retired : s6Step143ExitFBefore.retireSet s6Step143ExitFExtra.toFinset=s6Step143ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step143ExitFBefore s6Step143ExitFAfter s6Step143ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step143ExitFBefore s6Step143ExitFAfter (fun q => ([(0,197),(198,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,197),(198,453),(454,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step143ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step143ExitF_checked : planRowResizeLog s6Step143ExitFBefore s6Step143ExitFRow 197 []=
    some (s6Step143ExitFAfter,s6Step143ExitFOut,shrinkRow 795 s6Step143ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step143ExitFBefore s6Step143ExitFRow 197 s6Step143ExitF_distinct s6Step143ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step143ExitFRow.payload.take 197) s6Step143ExitFRow.sign=s6Step143ExitFOut := by decide +kernel
  have hi : s6Step143ExitFRow.payload.drop 197=s6Step143ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step143ExitF_retired] at result
  exact result

private def s6Step143ExitFvAfter : Arena := s6Step143ExitFAfter

private def s6Step143ExitFvBefore : Arena := s6Step143ExitFAfter

private theorem s6Step143ExitFv_Incoming : rowsOwned s6Step143ExitFvBefore [s6Step143ExitFvRow,s6Step143ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step143ExitGRow,s6Step143ExitFRow,s6Step143ExitFvRow,s6Step143ExitGvRow] 2 s6Step143ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step143ExitFvBefore (fun q => ([(0,197),(198,453),(454,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step143ExitFv_Outgoing : rowsOwned s6Step143ExitGvAfter [s6Step143ExitFvOut,s6Step143ExitGvOut] :=
  hmrRows_owned_drop s6Step143ExitGvAfter [s6Step143ExitGOut,s6Step143ExitFOut,s6Step143ExitFvOut,s6Step143ExitGvOut] 2 s6Step143ExitBank_outgoingOwned

private theorem s6Step143ExitFv_distinct : (s6Step143ExitFvRow.sign::s6Step143ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143ExitFv_owned : (s6Step143ExitFvRow.sign::s6Step143ExitFvRow.payload).toFinset⊆s6Step143ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step143ExitFvBefore (fun q => ([(0,197),(198,453),(454,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143ExitFv_reserved : s6Step143ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step143ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step143ExitFv_checked : planRowResizeLog s6Step143ExitFvBefore s6Step143ExitFvRow 86 []=
    some (s6Step143ExitFvAfter,s6Step143ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step143ExitFvBefore s6Step143ExitFvAfter s6Step143ExitFvRow 86 []
    s6Step143ExitFv_distinct s6Step143ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step143ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step143ExitFvRow.payload++[]) s6Step143ExitFvRow.sign=s6Step143ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step143ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step143ExitG_Incoming : rowsOwned s6Step143ExitGBefore [s6Step143ExitGRow,s6Step143ExitFRow,s6Step143ExitFvRow,s6Step143ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step143ExitGRow,s6Step143ExitFRow,s6Step143ExitFvRow,s6Step143ExitGvRow] 0 s6Step143ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step143ExitGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step143ExitG_Outgoing : rowsOwned s6Step143ExitGvAfter [s6Step143ExitGOut,s6Step143ExitFOut,s6Step143ExitFvOut,s6Step143ExitGvOut] :=
  hmrRows_owned_drop s6Step143ExitGvAfter [s6Step143ExitGOut,s6Step143ExitFOut,s6Step143ExitFvOut,s6Step143ExitGvOut] 0 s6Step143ExitBank_outgoingOwned

private theorem s6Step143ExitG_distinct : (s6Step143ExitGRow.sign::s6Step143ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143ExitG_owned : (s6Step143ExitGRow.sign::s6Step143ExitGRow.payload).toFinset⊆s6Step143ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step143ExitGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143ExitG_retired : s6Step143ExitGBefore.retireSet s6Step143ExitGExtra.toFinset=s6Step143ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step143ExitGBefore s6Step143ExitGAfter s6Step143ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step143ExitGBefore s6Step143ExitGAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,197),(198,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step143ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step143ExitG_checked : planRowResizeLog s6Step143ExitGBefore s6Step143ExitGRow 197 []=
    some (s6Step143ExitGAfter,s6Step143ExitGOut,shrinkRow 777 s6Step143ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step143ExitGBefore s6Step143ExitGRow 197 s6Step143ExitG_distinct s6Step143ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step143ExitGRow.payload.take 197) s6Step143ExitGRow.sign=s6Step143ExitGOut := by decide +kernel
  have hi : s6Step143ExitGRow.payload.drop 197=s6Step143ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step143ExitG_retired] at result
  exact result

private def s6Step143ExitGvBefore : Arena := s6Step143ExitFAfter

private theorem s6Step143ExitGv_Incoming : rowsOwned s6Step143ExitGvBefore [s6Step143ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step143ExitGRow,s6Step143ExitFRow,s6Step143ExitFvRow,s6Step143ExitGvRow] 3 s6Step143ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step143ExitGvBefore (fun q => ([(0,197),(198,453),(454,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step143ExitGv_Outgoing : rowsOwned s6Step143ExitGvAfter [s6Step143ExitGvOut] :=
  hmrRows_owned_drop s6Step143ExitGvAfter [s6Step143ExitGOut,s6Step143ExitFOut,s6Step143ExitFvOut,s6Step143ExitGvOut] 3 s6Step143ExitBank_outgoingOwned

private theorem s6Step143ExitGv_distinct : (s6Step143ExitGvRow.sign::s6Step143ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143ExitGv_owned : (s6Step143ExitGvRow.sign::s6Step143ExitGvRow.payload).toFinset⊆s6Step143ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step143ExitGvBefore (fun q => ([(0,197),(198,453),(454,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143ExitGv_retired : s6Step143ExitGvBefore.retireSet s6Step143ExitGvExtra.toFinset=s6Step143ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step143ExitGvBefore s6Step143ExitGvAfter s6Step143ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step143ExitGvBefore s6Step143ExitGvAfter (fun q => ([(0,197),(198,453),(454,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,197),(198,453),(454,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step143ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step143ExitGv_checked : planRowResizeLog s6Step143ExitGvBefore s6Step143ExitGvRow 85 []=
    some (s6Step143ExitGvAfter,s6Step143ExitGvOut,shrinkRow 775 s6Step143ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step143ExitGvBefore s6Step143ExitGvRow 85 s6Step143ExitGv_distinct s6Step143ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step143ExitGvRow.payload.take 85) s6Step143ExitGvRow.sign=s6Step143ExitGvOut := by decide +kernel
  have hi : s6Step143ExitGvRow.payload.drop 85=s6Step143ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step143ExitGv_retired] at result
  exact result

private theorem s6Step143ExitBank_rows : planWindowRowsLog s6Step143ExitGBefore [(s6Step143ExitGRow,197),(s6Step143ExitFRow,197),(s6Step143ExitFvRow,86),(s6Step143ExitGvRow,85)] [[],[],[],[]]=
    some (s6Step143ExitGvAfter,[s6Step143ExitGOut,s6Step143ExitFOut,s6Step143ExitFvOut,s6Step143ExitGvOut],(shrinkRow 777 s6Step143ExitGExtra ++ (shrinkRow 795 s6Step143ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step143ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step143ExitGvAfter [] []=some (s6Step143ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step143ExitGvBefore s6Step143ExitGvAfter s6Step143ExitGvAfter
    s6Step143ExitGvRow s6Step143ExitGvOut 85 [] [] [] []
    (shrinkRow 775 s6Step143ExitGvExtra) ([]) s6Step143ExitGv_Incoming s6Step143ExitGv_checked h4 s6Step143ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step143ExitFvBefore s6Step143ExitFvAfter s6Step143ExitGvAfter
    s6Step143ExitFvRow s6Step143ExitFvOut 86 [] [(s6Step143ExitGvRow,85)] [[]] [s6Step143ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step143ExitGvExtra ++ [])) s6Step143ExitFv_Incoming s6Step143ExitFv_checked h3 s6Step143ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step143ExitFBefore s6Step143ExitFAfter s6Step143ExitGvAfter
    s6Step143ExitFRow s6Step143ExitFOut 197 [] [(s6Step143ExitFvRow,86),(s6Step143ExitGvRow,85)] [[],[]] [s6Step143ExitFvOut,s6Step143ExitGvOut]
    (shrinkRow 795 s6Step143ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step143ExitGvExtra ++ []))) s6Step143ExitF_Incoming s6Step143ExitF_checked h2 s6Step143ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step143ExitGBefore s6Step143ExitGAfter s6Step143ExitGvAfter
    s6Step143ExitGRow s6Step143ExitGOut 197 [] [(s6Step143ExitFRow,197),(s6Step143ExitFvRow,86),(s6Step143ExitGvRow,85)] [[],[],[]] [s6Step143ExitFOut,s6Step143ExitFvOut,s6Step143ExitGvOut]
    (shrinkRow 777 s6Step143ExitGExtra) ((shrinkRow 795 s6Step143ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step143ExitGvExtra ++ [])))) s6Step143ExitG_Incoming s6Step143ExitG_checked h1 s6Step143ExitG_Outgoing
  exact h0

private theorem s6Step143ExitBank_checked : compileHmrBankResizeLog .exit s6Step143ExitGBefore ⟨s6Step143ExitFRow,s6Step143ExitGRow,s6Step143ExitFvRow,s6Step143ExitGvRow⟩ ⟨197,197,86,85⟩ [[],[],[],[]]=
    some (s6Step143ExitGvAfter,⟨s6Step143ExitFOut,s6Step143ExitGOut,s6Step143ExitFvOut,s6Step143ExitGvOut⟩,(shrinkRow 777 s6Step143ExitGExtra ++ (shrinkRow 795 s6Step143ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step143ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step143ExitBank_rows]
  rfl

private theorem s6Step143Add0_apart : Disjoint s6Step143Add0Arena.live s6Step143Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step143Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step143Add0_card : s6Step143Add0Arena.live.card=882 := by
  decide +kernel

private theorem s6Step143Add0_borrowed : s6Step143Add0Arena.checkBorrow (hmrHybridCount s6Step143Add0Arena s6Step143Add0B.length) s6Step143Add0Work=some s6Step143Add0During := by
  have len : s6Step143Add0Work.length=hmrHybridCount s6Step143Add0Arena s6Step143Add0B.length := by
    rw [hmrHybridCount,s6Step143Add0_card]
    decide +kernel
  have nd : s6Step143Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step143Add0Arena s6Step143Add0During s6Step143Add0Work.toFinset s6Step143Add0_bounded s6Step143Add0_apart rfl

private theorem s6Step143Add0_distinct : (768::927::879::(s6Step143Add0A++s6Step143Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143Add0_owned : (768::927::879::(s6Step143Add0A++s6Step143Add0B)).toFinset⊆s6Step143Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step143Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step143Add0_checked : compileHmrHybridCinLog s6Step143Add0Arena 927 768 879 s6Step143Add0A s6Step143Add0B s6Step143Add0Work=some s6Step143Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step143Add0Arena s6Step143Add0During 927 768 879 s6Step143Add0A s6Step143Add0B s6Step143Add0Work
    (by decide +kernel) (by decide +kernel) s6Step143Add0_distinct
    (fun q hq => s6Step143Add0_owned (List.mem_toFinset.mpr hq)) s6Step143Add0_borrowed

private theorem s6Step143Add1_apart : Disjoint s6Step143Add1Arena.live s6Step143Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step143Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step143Add1_card : s6Step143Add1Arena.live.card=882 := by
  decide +kernel

private theorem s6Step143Add1_borrowed : s6Step143Add1Arena.checkBorrow (hmrHybridCount s6Step143Add1Arena s6Step143Add1B.length) s6Step143Add1Work=some s6Step143Add1During := by
  have len : s6Step143Add1Work.length=hmrHybridCount s6Step143Add1Arena s6Step143Add1B.length := by
    rw [hmrHybridCount,s6Step143Add1_card]
    decide +kernel
  have nd : s6Step143Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step143Add1Arena s6Step143Add1During s6Step143Add1Work.toFinset s6Step143Add1_bounded s6Step143Add1_apart rfl

private theorem s6Step143Add1_distinct : (768::927::879::(s6Step143Add1A++s6Step143Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143Add1_owned : (768::927::879::(s6Step143Add1A++s6Step143Add1B)).toFinset⊆s6Step143Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step143Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step143Add1_checked : compileHmrHybridCinLog s6Step143Add1Arena 927 768 879 s6Step143Add1A s6Step143Add1B s6Step143Add1Work=some s6Step143Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step143Add1Arena s6Step143Add1During 927 768 879 s6Step143Add1A s6Step143Add1B s6Step143Add1Work
    (by decide +kernel) (by decide +kernel) s6Step143Add1_distinct
    (fun q hq => s6Step143Add1_owned (List.mem_toFinset.mpr hq)) s6Step143Add1_borrowed

private theorem s6Step143F4_apart : Disjoint (s6Step143Add0A++s6Step143Add0B).toFinset (s6Step143Add1A++s6Step143Add1B).toFinset := by
  have nd : ((s6Step143Add0A++s6Step143Add0B)++(s6Step143Add1A++s6Step143Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step143F4_carry : s6Step143F4FlagArena.checkBorrow 1 [879]=some s6Step143Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step143F4FlagArena,s6Step143HeadFvAfter,arenaWires]
  · change s6Step143Add0Arena.live=(s6Step143HeadFvAfter.live∪{768})∪{879}
    apply hmrArena_union_pair_of_filter_check s6Step143HeadFvAfter s6Step143Add0Arena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) 768 879 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step143F4_distinct : (855::927::768::879::((s6Step143Add0A++s6Step143Add1A)++(s6Step143Add0B++s6Step143Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143F4_flag : s6Step143HeadFvAfter.checkBorrow 1 [768]=some s6Step143F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step143HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step143F4_owned : (855::927::((s6Step143Add0A++s6Step143Add1A)++(s6Step143Add0B++s6Step143Add1B))).toFinset⊆s6Step143HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step143HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143F4_checked : compileHmrHybridF4Log s6Step143HeadFvAfter 855 927 s6Step143Add0A s6Step143Add0B s6Step143Add1A s6Step143Add1B [768] [879] s6Step143Add0Work s6Step143Add1Work=some s6Step143F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step143HeadFvAfter s6Step143F4FlagArena s6Step143Add0Arena s6Step143Add0During s6Step143Add1During 855 927
    s6Step143Add0A s6Step143Add0B s6Step143Add1A s6Step143Add1B [768] [879] s6Step143Add0Work s6Step143Add1Work
    (fun q hq => s6Step143F4_owned (List.mem_toFinset.mpr hq)) s6Step143F4_flag s6Step143F4_carry
    s6Step143F4_distinct s6Step143F4_apart s6Step143Add0_checked s6Step143Add1_checked

private theorem s6Step143Front_branch : s6Step143FrontSigmaArena.checkBorrow 1 [927]=some s6Step143HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step143FrontSigmaArena,s6Step143EntryGvAfter,s6Step143EntryFBefore,arenaWires]
  · change s6Step143HeadGBefore.live=(s6Step143EntryGvAfter.live∪{855})∪{927}
    apply hmrArena_union_pair_of_filter_check s6Step143EntryGvAfter s6Step143HeadGBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 855 927 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step143Front_entry : HmrFrontEntryValid s6Step143EntryFBefore s6Step143FrontBank 198 85 ⟨197,197,86,85⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step143FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step143EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step143EntryFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step143FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step143Front_sigma : s6Step143EntryGvAfter.checkBorrow 1 [855]=some s6Step143FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step143EntryGvAfter,s6Step143EntryFBefore,arenaWires]
  · rfl

private def s6Step143HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143HeadFBefore : Arena := s6Step143HeadGAfter

private def s6Step143HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453],795⟩

private def s6Step143HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩

private def s6Step143HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],777⟩

private def s6Step143HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩

private theorem s6Step143HeadBank_incomingDistinct : ([s6Step143HeadGRow,s6Step143HeadFRow,s6Step143HeadGvRow,s6Step143HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143HeadF_Incoming : rowsOwned s6Step143HeadFBefore [s6Step143HeadFRow,s6Step143HeadGvRow,s6Step143HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step143HeadGRow,s6Step143HeadFRow,s6Step143HeadGvRow,s6Step143HeadFvRow] 1 s6Step143HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step143HeadFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step143HeadBank_outgoingOwned : rowsOwned s6Step143HeadFvAfter [s6Step143HeadGOut,s6Step143HeadFOut,s6Step143HeadGvOut,s6Step143HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step143HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step143HeadF_Outgoing : rowsOwned s6Step143HeadFvAfter [s6Step143HeadFOut,s6Step143HeadGvOut,s6Step143HeadFvOut] :=
  hmrRows_owned_drop s6Step143HeadFvAfter [s6Step143HeadGOut,s6Step143HeadFOut,s6Step143HeadGvOut,s6Step143HeadFvOut] 1 s6Step143HeadBank_outgoingOwned

private theorem s6Step143HeadF_distinct : (s6Step143HeadFRow.sign::s6Step143HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143HeadF_owned : (s6Step143HeadFRow.sign::s6Step143HeadFRow.payload).toFinset⊆s6Step143HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step143HeadFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143HeadF_reserved : s6Step143HeadFBefore.reserve s6Step143HeadFFresh.toFinset=some s6Step143HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step143HeadFFresh,arenaWires]
  · norm_num [s6Step143HeadFBefore,s6Step143HeadGAfter,s6Step143HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step143HeadFBefore s6Step143HeadFAfter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step143HeadFFresh rfl rfl
    · norm_num [s6Step143HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step143HeadF_checked : planRowResizeLog s6Step143HeadFBefore s6Step143HeadFRow 199 s6Step143HeadFFresh=
    some (s6Step143HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 867],795⟩,growRow 795 s6Step143HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step143HeadFBefore s6Step143HeadFAfter s6Step143HeadFRow 199 s6Step143HeadFFresh
    s6Step143HeadF_distinct s6Step143HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step143HeadF_reserved
  have rowEq : WindowRow.mk (s6Step143HeadFRow.payload++s6Step143HeadFFresh) s6Step143HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 867],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step143HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step143HeadFvBefore : Arena := s6Step143HeadGvAfter

private theorem s6Step143HeadFv_Incoming : rowsOwned s6Step143HeadFvBefore [s6Step143HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step143HeadGRow,s6Step143HeadFRow,s6Step143HeadGvRow,s6Step143HeadFvRow] 3 s6Step143HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step143HeadFvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step143HeadFv_Outgoing : rowsOwned s6Step143HeadFvAfter [s6Step143HeadFvOut] :=
  hmrRows_owned_drop s6Step143HeadFvAfter [s6Step143HeadGOut,s6Step143HeadFOut,s6Step143HeadGvOut,s6Step143HeadFvOut] 3 s6Step143HeadBank_outgoingOwned

private theorem s6Step143HeadFv_distinct : (s6Step143HeadFvRow.sign::s6Step143HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143HeadFv_owned : (s6Step143HeadFvRow.sign::s6Step143HeadFvRow.payload).toFinset⊆s6Step143HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step143HeadFvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143HeadFv_reserved : s6Step143HeadFvBefore.reserve s6Step143HeadFvFresh.toFinset=some s6Step143HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step143HeadFvFresh,arenaWires]
  · norm_num [s6Step143HeadFvBefore,s6Step143HeadGvAfter,s6Step143HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step143HeadFvBefore s6Step143HeadFvAfter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step143HeadFvFresh rfl rfl
    · norm_num [s6Step143HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step143HeadFv_checked : planRowResizeLog s6Step143HeadFvBefore s6Step143HeadFvRow 86 s6Step143HeadFvFresh=
    some (s6Step143HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩,growRow 776 s6Step143HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step143HeadFvBefore s6Step143HeadFvAfter s6Step143HeadFvRow 86 s6Step143HeadFvFresh
    s6Step143HeadFv_distinct s6Step143HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step143HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step143HeadFvRow.payload++s6Step143HeadFvFresh) s6Step143HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step143HeadG_Incoming : rowsOwned s6Step143HeadGBefore [s6Step143HeadGRow,s6Step143HeadFRow,s6Step143HeadGvRow,s6Step143HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step143HeadGRow,s6Step143HeadFRow,s6Step143HeadGvRow,s6Step143HeadFvRow] 0 s6Step143HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step143HeadGBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step143HeadG_Outgoing : rowsOwned s6Step143HeadFvAfter [s6Step143HeadGOut,s6Step143HeadFOut,s6Step143HeadGvOut,s6Step143HeadFvOut] :=
  hmrRows_owned_drop s6Step143HeadFvAfter [s6Step143HeadGOut,s6Step143HeadFOut,s6Step143HeadGvOut,s6Step143HeadFvOut] 0 s6Step143HeadBank_outgoingOwned

private theorem s6Step143HeadG_distinct : (s6Step143HeadGRow.sign::s6Step143HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143HeadG_owned : (s6Step143HeadGRow.sign::s6Step143HeadGRow.payload).toFinset⊆s6Step143HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step143HeadGBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143HeadG_reserved : s6Step143HeadGBefore.reserve s6Step143HeadGFresh.toFinset=some s6Step143HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step143HeadGFresh,arenaWires]
  · norm_num [s6Step143HeadGBefore,s6Step143HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step143HeadGBefore s6Step143HeadGAfter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step143HeadGFresh rfl rfl
    · norm_num [s6Step143HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step143HeadG_checked : planRowResizeLog s6Step143HeadGBefore s6Step143HeadGRow 199 s6Step143HeadGFresh=
    some (s6Step143HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 802],777⟩,growRow 777 s6Step143HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step143HeadGBefore s6Step143HeadGAfter s6Step143HeadGRow 199 s6Step143HeadGFresh
    s6Step143HeadG_distinct s6Step143HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step143HeadG_reserved
  have rowEq : WindowRow.mk (s6Step143HeadGRow.payload++s6Step143HeadGFresh) s6Step143HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 802],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step143HeadGvBefore : Arena := s6Step143HeadFAfter

private theorem s6Step143HeadGv_Incoming : rowsOwned s6Step143HeadGvBefore [s6Step143HeadGvRow,s6Step143HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step143HeadGRow,s6Step143HeadFRow,s6Step143HeadGvRow,s6Step143HeadFvRow] 2 s6Step143HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step143HeadGvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step143HeadGv_Outgoing : rowsOwned s6Step143HeadFvAfter [s6Step143HeadGvOut,s6Step143HeadFvOut] :=
  hmrRows_owned_drop s6Step143HeadFvAfter [s6Step143HeadGOut,s6Step143HeadFOut,s6Step143HeadGvOut,s6Step143HeadFvOut] 2 s6Step143HeadBank_outgoingOwned

private theorem s6Step143HeadGv_distinct : (s6Step143HeadGvRow.sign::s6Step143HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step143HeadGv_owned : (s6Step143HeadGvRow.sign::s6Step143HeadGvRow.payload).toFinset⊆s6Step143HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step143HeadGvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step143HeadGv_reserved : s6Step143HeadGvBefore.reserve s6Step143HeadGvFresh.toFinset=some s6Step143HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step143HeadGvFresh,arenaWires]
  · norm_num [s6Step143HeadGvBefore,s6Step143HeadFAfter,s6Step143HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step143HeadGvBefore s6Step143HeadGvAfter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step143HeadGvFresh rfl rfl
    · norm_num [s6Step143HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step143HeadGv_checked : planRowResizeLog s6Step143HeadGvBefore s6Step143HeadGvRow 86 s6Step143HeadGvFresh=
    some (s6Step143HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 807],775⟩,growRow 775 s6Step143HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step143HeadGvBefore s6Step143HeadGvAfter s6Step143HeadGvRow 86 s6Step143HeadGvFresh
    s6Step143HeadGv_distinct s6Step143HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step143HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step143HeadGvRow.payload++s6Step143HeadGvFresh) s6Step143HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 807],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step143HeadBank_rows : planWindowRowsLog s6Step143HeadGBefore [(s6Step143HeadGRow,199),(s6Step143HeadFRow,199),(s6Step143HeadGvRow,86),(s6Step143HeadFvRow,86)] [s6Step143HeadGFresh,s6Step143HeadFFresh,s6Step143HeadGvFresh,s6Step143HeadFvFresh]=
    some (s6Step143HeadFvAfter,[s6Step143HeadGOut,s6Step143HeadFOut,s6Step143HeadGvOut,s6Step143HeadFvOut],(growRow 777 s6Step143HeadGFresh ++ (growRow 795 s6Step143HeadFFresh ++ (growRow 775 s6Step143HeadGvFresh ++ (growRow 776 s6Step143HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step143HeadFvAfter [] []=some (s6Step143HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step143HeadFvBefore s6Step143HeadFvAfter s6Step143HeadFvAfter
    s6Step143HeadFvRow s6Step143HeadFvOut 86 s6Step143HeadFvFresh [] [] []
    (growRow 776 s6Step143HeadFvFresh) ([]) s6Step143HeadFv_Incoming s6Step143HeadFv_checked h4 s6Step143HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step143HeadGvBefore s6Step143HeadGvAfter s6Step143HeadFvAfter
    s6Step143HeadGvRow s6Step143HeadGvOut 86 s6Step143HeadGvFresh [(s6Step143HeadFvRow,86)] [s6Step143HeadFvFresh] [s6Step143HeadFvOut]
    (growRow 775 s6Step143HeadGvFresh) ((growRow 776 s6Step143HeadFvFresh ++ [])) s6Step143HeadGv_Incoming s6Step143HeadGv_checked h3 s6Step143HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step143HeadFBefore s6Step143HeadFAfter s6Step143HeadFvAfter
    s6Step143HeadFRow s6Step143HeadFOut 199 s6Step143HeadFFresh [(s6Step143HeadGvRow,86),(s6Step143HeadFvRow,86)] [s6Step143HeadGvFresh,s6Step143HeadFvFresh] [s6Step143HeadGvOut,s6Step143HeadFvOut]
    (growRow 795 s6Step143HeadFFresh) ((growRow 775 s6Step143HeadGvFresh ++ (growRow 776 s6Step143HeadFvFresh ++ []))) s6Step143HeadF_Incoming s6Step143HeadF_checked h2 s6Step143HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step143HeadGBefore s6Step143HeadGAfter s6Step143HeadFvAfter
    s6Step143HeadGRow s6Step143HeadGOut 199 s6Step143HeadGFresh [(s6Step143HeadFRow,199),(s6Step143HeadGvRow,86),(s6Step143HeadFvRow,86)] [s6Step143HeadFFresh,s6Step143HeadGvFresh,s6Step143HeadFvFresh] [s6Step143HeadFOut,s6Step143HeadGvOut,s6Step143HeadFvOut]
    (growRow 777 s6Step143HeadGFresh) ((growRow 795 s6Step143HeadFFresh ++ (growRow 775 s6Step143HeadGvFresh ++ (growRow 776 s6Step143HeadFvFresh ++ [])))) s6Step143HeadG_Incoming s6Step143HeadG_checked h1 s6Step143HeadG_Outgoing
  exact h0

private theorem s6Step143HeadBank_checked : compileHmrBankResizeLog .headroom s6Step143HeadGBefore ⟨s6Step143HeadFRow,s6Step143HeadGRow,s6Step143HeadFvRow,s6Step143HeadGvRow⟩ ⟨199,199,86,86⟩ [s6Step143HeadGFresh,s6Step143HeadFFresh,s6Step143HeadGvFresh,s6Step143HeadFvFresh]=
    some (s6Step143HeadFvAfter,⟨s6Step143HeadFOut,s6Step143HeadGOut,s6Step143HeadFvOut,s6Step143HeadGvOut⟩,(growRow 777 s6Step143HeadGFresh ++ (growRow 795 s6Step143HeadFFresh ++ (growRow 775 s6Step143HeadGvFresh ++ (growRow 776 s6Step143HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step143HeadBank_rows]
  rfl

private theorem s6Step143Front_checked : compileHmrSourceFrontLog s6Step143EntryFBefore s6Step143FrontBank 198 85 ⟨197,197,86,85⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step143FrontLog=some s6Step143FrontPlan := by
  have pairEq : s6Step143FrontPair=⟨s6Step143HeadFRow,s6Step143HeadGRow,s6Step143HeadFvRow,s6Step143HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step143FrontHead=⟨s6Step143ExitFRow,s6Step143ExitGRow,s6Step143ExitFvRow,s6Step143ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step143Add0A=s6Step143FrontHead.f.wires := by decide +kernel
  have gEq : s6Step143Add0B=s6Step143FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step143Add1A=s6Step143FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step143Add1B=s6Step143FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step143EntryFBefore s6Step143FrontBank 198 85 ⟨197,197,86,85⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step143FrontLog s6Step143FrontPlan
  · exact s6Step143Front_entry
  · exact s6Step143EntryBank_checked
  · exact s6Step143Front_sigma
  · rfl
  · exact s6Step143Front_branch
  · rfl
  · simpa only [s6Step143FrontPlan,pairEq] using s6Step143HeadBank_checked
  · simpa only [s6Step143FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step143F4_checked
  · exact s6Step143Counter_checked
  · rfl
  · simpa only [s6Step143FrontPlan,headEq] using s6Step143ExitBank_checked

private theorem s6Step143Complete_explicit_checked : compileHmrEarlyStepLog s6Step143EntryFBefore s6Step143FrontBank 198 85 ⟨197,197,86,85⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step143CompleteLog=some s6Step143CompletePlan := by
  let Q := s6Step143EarlyControlPlan
  have hq := s6Step143EarlyControl_plan_checked
  have fv1 : s6Step143CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step143CompleteOut.fv.payload[2]?.getD s6Step143CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step143CompleteOut.fv.payload[3]?.getD s6Step143CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step143CompleteOut.fv.payload[4]?.getD s6Step143CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step143EntryFBefore s6Step143EarlyControlArena s6Step143FrontBank 198 85 ⟨197,197,86,85⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step143CompleteLog s6Step143FrontPlan Q
    s6Step143Front_checked s6Step143Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step143Complete_owned s6Step143Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step143EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 s6Step143CompleteOut.fv.second (s6Step143CompleteOut.fv.payload[2]?.getD s6Step143CompleteOut.fv.sign) (s6Step143CompleteOut.fv.payload[3]?.getD s6Step143CompleteOut.fv.sign) (s6Step143CompleteOut.fv.payload[4]?.getD s6Step143CompleteOut.fv.sign) 927 42 s6Step143EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep143Arena : Arena := s6Step143EntryFBefore
def s6PrivateStep143Bank : WindowBank := s6Step143FrontBank
def s6PrivateStep143Spec : HmrSourceWalkStepLog := ⟨198,85,⟨197,197,86,85⟩,42,.early s6Step143CompleteLog⟩
def s6PrivateStep143Plan : HmrSourceStepPlan := .early s6Step143CompletePlan
theorem s6PrivateStep143_source : s6PrivateStep143Spec=s6ObservedLogs128[15] := rfl
theorem s6PrivateStep143_checked : compileHmrSourceStepLog s6PrivateStep143Arena s6PrivateStep143Bank
    s6PrivateStep143Spec.fgWidth s6PrivateStep143Spec.vWidth s6PrivateStep143Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 143 s6PrivateStep143Spec.need none s6PrivateStep143Spec.log=some s6PrivateStep143Plan := by
  change compileHmrSourceStepLog s6Step143EntryFBefore s6Step143FrontBank 198 85 ⟨197,197,86,85⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 143 42 none (.early s6Step143CompleteLog)=some (.early s6Step143CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 143<498)]
  rw [s6Step143Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
