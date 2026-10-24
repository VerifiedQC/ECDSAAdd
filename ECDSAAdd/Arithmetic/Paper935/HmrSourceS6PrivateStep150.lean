import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep148
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

private def s6Step150CompleteMoves : List (Wire × Wire) := [(881,193),(779,450)]

private def s6Step150EarlyControlLog : HmrEarlyControlLog := ⟨[779, 881, 887, 879, 859],[858],[875],[882, 891, 903, 791, 825, 810],[]⟩

private def s6Step150FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [859], [], [855]],[[858], [879], [887], [807]],[[], [], [], []]⟩,[768],[908],[875],[882],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903]⟩

private def s6Step150CompleteLog : HmrEarlyStepLog := ⟨s6Step150FrontLog,s6Step150CompleteMoves,s6Step150EarlyControlLog⟩

private def s6Step150ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449],795⟩

private def s6Step150ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807],776⟩

private def s6Step150ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],777⟩

private def s6Step150ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855],775⟩

private def s6Step150FrontOut : WindowBank := ⟨s6Step150ExitFOut,s6Step150ExitGOut,s6Step150ExitFvOut,s6Step150ExitGvOut⟩

private def s6Step150CompleteOut : WindowBank := s6Step150FrontOut.repacked s6Step150CompleteMoves

private def s6Step150EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step150EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step150EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step150EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step150EarlyControlPositiveArena,[858],s6Step150EarlyControlEqualityArena,[875],⟨⟨768,false⟩,[⟨⟨858,false⟩,875⟩]⟩⟩

private def s6Step150EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step150EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step150EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step150EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step150EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step150EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step150EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,779⟩,⟨⟨772,false⟩,881⟩,⟨⟨771,false⟩,887⟩,⟨⟨770,false⟩,879⟩,⟨⟨769,false⟩,859⟩]⟩

private def s6Step150EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step150EarlyControlZeroArena,s6Step150EarlyControlZeroPlan,s6Step150EarlyControlClassPlan,s6Step150EarlyControlFlagArena,s6Step150EarlyControlFittedArena,s6Step150EarlyControlHistoryArena,s6Step150EarlyControlSigmaArena,s6Step150EarlyControlOutputArena,s6Step150EarlyControlLog⟩

private def s6Step150CounterWork : List Wire := [875, 882, 891, 903]

private theorem s6Step150Counter_bounded : s6Step150CounterWork.toFinset⊆arenaWires := by norm_num [s6Step150CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step150HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step150CounterDuring : Arena := ⟨s6Step150HeadFvAfter.live∪s6Step150CounterWork.toFinset,Finset.union_subset s6Step150HeadFvAfter.bounded s6Step150Counter_bounded⟩

private def s6Step150EntryFFresh : List Wire := []

private def s6Step150EntryFvFresh : List Wire := []

private def s6Step150EntryGFresh : List Wire := [859]

private def s6Step150EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step150EntryGvFresh : List Wire := [855]

private def s6Step150ExitFExtra : List Wire := [450, 879]

private def s6Step150ExitGExtra : List Wire := [193, 859, 858]

private def s6Step150ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,193),(194,450),(451,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step150ExitGvExtra : List Wire := [887]

private def s6Step150Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step150Add0Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step150Add0_bounded : s6Step150Add0Work.toFinset⊆arenaWires := by
  have h : s6Step150Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step150Add0During : Arena := ⟨s6Step150Add0Arena.live∪s6Step150Add0Work.toFinset,Finset.union_subset s6Step150Add0Arena.bounded s6Step150Add0_bounded⟩

private def s6Step150Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step150Add1Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step150Add1_bounded : s6Step150Add1Work.toFinset⊆arenaWires := by
  have h : s6Step150Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step150Add1During : Arena := ⟨s6Step150Add1Arena.live∪s6Step150Add1Work.toFinset,Finset.union_subset s6Step150Add1Arena.bounded s6Step150Add1_bounded⟩

private def s6Step150F4FlagArena : Arena := ⟨s6Step150HeadFvAfter.live∪{875},Finset.union_subset s6Step150HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step150F4Plan : HmrHybridF4Plan := ⟨s6Step150F4FlagArena,[875],s6Step150Add0Arena,[882],s6Step150Add0During,s6Step150Add0Work,s6Step150Add1During,s6Step150Add1Work⟩

private def s6Step150HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 879],795⟩

private def s6Step150HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807],776⟩

private def s6Step150HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 859, 858],777⟩

private def s6Step150HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 887],775⟩

private def s6Step150FrontHead : WindowBank := ⟨s6Step150HeadFOut,s6Step150HeadGOut,s6Step150HeadFvOut,s6Step150HeadGvOut⟩

private def s6Step150EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩

private def s6Step150EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877],776⟩

private def s6Step150EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 859],777⟩

private def s6Step150EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855],775⟩

private def s6Step150FrontPair : WindowBank := ⟨s6Step150EntryFOut,s6Step150EntryGOut,s6Step150EntryFvOut,s6Step150EntryGvOut⟩

private def s6Step150FrontSigmaArena : Arena := ⟨s6Step150EntryGvAfter.live∪{768},Finset.union_subset s6Step150EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step150HeadFFresh : List Wire := [879]

private def s6Step150HeadFvFresh : List Wire := [807]

private def s6Step150HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step150HeadGFresh : List Wire := [858]

private def s6Step150HeadGvFresh : List Wire := [887]

private def s6Step150FrontPlan : HmrSourceFront := ⟨s6Step150EntryGvAfter,s6Step150FrontPair,(growRow 795 s6Step150EntryFFresh ++ (growRow 777 s6Step150EntryGFresh ++ (growRow 776 s6Step150EntryFvFresh ++ (growRow 775 s6Step150EntryGvFresh ++ [])))),s6Step150FrontSigmaArena,[768],s6Step150HeadGBefore,[908],
  s6Step150HeadFvAfter,s6Step150FrontHead,(growRow 777 s6Step150HeadGFresh ++ (growRow 795 s6Step150HeadFFresh ++ (growRow 775 s6Step150HeadGvFresh ++ (growRow 776 s6Step150HeadFvFresh ++ [])))),s6Step150F4Plan,s6Step150CounterDuring,s6Step150CounterWork,s6Step150ExitGvAfter,s6Step150FrontOut,(shrinkRow 777 s6Step150ExitGExtra ++ (shrinkRow 795 s6Step150ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step150ExitGvExtra ++ []))))⟩

private def s6Step150CompletePlan : HmrEarlyStepPlan := ⟨s6Step150FrontPlan,s6Step150EarlyControlArena,s6Step150EarlyControlPlan,s6Step150CompleteMoves⟩

private theorem s6Step150Complete_apart : List.Disjoint (s6Step150CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [768, 908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step150CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[768, 908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step150Complete_owned : (s6Step150CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step150EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step150EarlyControlArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step150CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,450),(451,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step150CompleteRelocationMove0Borrowed : Arena := ⟨s6Step150ExitGvAfter.live∪{193},Finset.union_subset s6Step150ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step150CompleteRelocationMove1Borrowed : Arena := ⟨s6Step150CompleteRelocationMove0After.live∪{450},Finset.union_subset s6Step150CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step150CompleteRelocation_move0_owned : 881∈s6Step150ExitGvAfter.live := by norm_num [s6Step150ExitGvAfter,arenaWires]

private theorem s6Step150CompleteRelocation_move0_reserve : s6Step150ExitGvAfter.reserve {193}=some s6Step150CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step150ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step150CompleteRelocation_move0_retire : s6Step150CompleteRelocationMove0Borrowed.retireSet {881}=s6Step150CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step150CompleteRelocationMove0Borrowed s6Step150CompleteRelocationMove0After {881}
  change s6Step150CompleteRelocationMove0After.live=(s6Step150ExitGvAfter.live∪{193})\{881}
  apply hmrArena_update_of_filter_check s6Step150ExitGvAfter s6Step150CompleteRelocationMove0After (fun q => ([(0,193),(194,450),(451,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,450),(451,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [193] [881] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step150CompleteRelocation_move1_owned : 779∈s6Step150CompleteRelocationMove0After.live := by norm_num [s6Step150CompleteRelocationMove0After,arenaWires]

private theorem s6Step150CompleteRelocation_move1_reserve : s6Step150CompleteRelocationMove0After.reserve {450}=some s6Step150CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step150CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step150CompleteRelocation_move1_retire : s6Step150CompleteRelocationMove1Borrowed.retireSet {779}=s6Step150EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step150CompleteRelocationMove1Borrowed s6Step150EarlyControlArena {779}
  change s6Step150EarlyControlArena.live=(s6Step150CompleteRelocationMove0After.live∪{450})\{779}
  apply hmrArena_update_of_filter_check s6Step150CompleteRelocationMove0After s6Step150EarlyControlArena (fun q => ([(0,450),(451,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [450] [779] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step150CompleteRelocation_checked : s6Step150ExitGvAfter.checkRepack [(881,193),(779,450)]=some s6Step150EarlyControlArena := by
  have tail2 : s6Step150EarlyControlArena.checkRepack []=some s6Step150EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step150CompleteRelocationMove0After s6Step150CompleteRelocationMove1Borrowed s6Step150EarlyControlArena s6Step150EarlyControlArena 779 450 []
    s6Step150CompleteRelocation_move1_owned s6Step150CompleteRelocation_move1_reserve s6Step150CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step150ExitGvAfter s6Step150CompleteRelocationMove0Borrowed s6Step150CompleteRelocationMove0After s6Step150EarlyControlArena 881 193 [(779,450)]
    s6Step150CompleteRelocation_move0_owned s6Step150CompleteRelocation_move0_reserve s6Step150CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step150Complete_repack : s6Step150ExitGvAfter.checkRepack s6Step150CompleteMoves=some s6Step150EarlyControlArena := by
  simpa only [s6Step150CompleteMoves] using s6Step150CompleteRelocation_checked

private theorem s6Step150EarlyControl_branchOwned : ([908] : List Wire).toFinset⊆s6Step150EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step150EarlyControlSigmaArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150EarlyControl_branch : compileHmrBranchRetirement s6Step150EarlyControlSigmaArena 908=some s6Step150EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step150EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step150EarlyControlSigmaArena s6Step150EarlyControlOutputArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [908] rfl rfl
    decide +kernel

private theorem s6Step150EarlyControl_classEqualityBorrow : s6Step150EarlyControlPositiveArena.checkBorrow (([768, 858] : List Wire).length-1) s6Step150EarlyControlLog.classWork=some s6Step150EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step150EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step150EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step150EarlyControlEqualityArena,s6Step150EarlyControlPositiveArena,s6Step150EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step150EarlyControl_classEqualityOwned : ([768, 858] : List Wire).toFinset⊆s6Step150EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step150EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step150EarlyControl_classEquality : compileHmrEqualityLog s6Step150EarlyControlPositiveArena [768, 858] 0 s6Step150EarlyControlLog.classWork=some (s6Step150EarlyControlEqualityArena,s6Step150EarlyControlLog.classWork,s6Step150EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step150EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step150EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step150EarlyControl_classOwned : ([769, 859, 768] : List Wire).toFinset⊆s6Step150EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step150EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150EarlyControl_positiveBorrow : s6Step150EarlyControlZeroArena.checkBorrow (1) s6Step150EarlyControlLog.positiveWork=some s6Step150EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step150EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step150EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step150EarlyControlZeroArena s6Step150EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step150EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step150EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step150EarlyControl_class : compileHmrSourceClassLog s6Step150EarlyControlZeroArena false 769 s6Step150EarlyControlZeroPlan.top 0 768 s6Step150EarlyControlLog.positiveWork s6Step150EarlyControlLog.classWork=some s6Step150EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step150EarlyControlClassPlan s6Step150EarlyControlZeroArena false 769 s6Step150EarlyControlZeroPlan.top 0 768
  constructor
  · decide +kernel
  · exact s6Step150EarlyControl_classOwned
  · exact s6Step150EarlyControl_positiveBorrow
  · exact s6Step150EarlyControl_classEquality

private theorem s6Step150EarlyControl_entryRecordOwned : ([908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step150EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step150EarlyControlArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150EarlyControl_entrySigmaOwned : ([768, 254] : List Wire).toFinset⊆s6Step150EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step150EarlyControlArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150EarlyControl_fitBorrow : s6Step150EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step150EarlyControlLog.recordFresh=some s6Step150EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step150EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step150EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step150EarlyControlFittedArena,s6Step150EarlyControlFlagArena,s6Step150EarlyControlLog,arenaWires]

private theorem s6Step150EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step150EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step150EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step150EarlyControl_fit : compileHmrRecordGrowLog s6Step150EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step150EarlyControlLog.recordFresh=some s6Step150EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step150EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step150EarlyControl_fitBorrow

private theorem s6Step150EarlyControl_flagsBorrow : s6Step150EarlyControlEqualityArena.checkBorrow (6) s6Step150EarlyControlLog.flagWork=some s6Step150EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step150EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step150EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step150EarlyControlFlagArena,s6Step150EarlyControlEqualityArena,s6Step150EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step150EarlyControl_flagsOwned : ([875, 253, 252, 251] : List Wire).toFinset⊆s6Step150EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step150EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step150EarlyControl_flags : compileHmrFlagsLog s6Step150EarlyControlClassPlan.equalityArena s6Step150EarlyControlClassPlan.equality.top 253 252 251 s6Step150EarlyControlLog.flagWork=some s6Step150EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step150EarlyControl_flagsOwned⟩
  · exact s6Step150EarlyControl_flagsBorrow

private theorem s6Step150EarlyControl_historyBorrow : s6Step150EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step150EarlyControlLog.recordFresh=some s6Step150EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step150EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step150EarlyControlArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step150EarlyControlArena s6Step150EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step150EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step150EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step150EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step150EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step150EarlyControlArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150EarlyControl_history : compileHmrRecordGrowLog s6Step150EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step150EarlyControlLog.recordFresh=some s6Step150EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step150EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step150EarlyControl_historyBorrow

private theorem s6Step150EarlyControl_sigmaOwned : ([254, 768] : List Wire).toFinset⊆s6Step150EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step150EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150EarlyControl_sigmaReleaseOwned : ([768] : List Wire).toFinset⊆s6Step150EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step150EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150EarlyControl_sigmaRelease : s6Step150EarlyControlHistoryArena.release {768} (fun _ => false)=some s6Step150EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step150EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step150EarlyControlHistoryArena s6Step150EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [768] rfl rfl
    decide +kernel

private theorem s6Step150EarlyControl_sigma : compileHmrSigmaDropLog s6Step150EarlyControlHistoryArena false 0 0 254 768 []=some s6Step150EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step150EarlyControl_sigmaOwned⟩
  · exact s6Step150EarlyControl_sigmaRelease

private theorem s6Step150EarlyControl_zeroBorrow : s6Step150EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step150EarlyControlLog.zeroWork=some s6Step150EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step150EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step150EarlyControlArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step150EarlyControlArena s6Step150EarlyControlZeroArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step150EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step150EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step150EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step150EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step150EarlyControlArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150EarlyControl_zero : compileHmrEqualityLog s6Step150EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step150EarlyControlLog.zeroWork=some (s6Step150EarlyControlZeroArena,s6Step150EarlyControlLog.zeroWork,s6Step150EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step150EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step150EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step150EarlyControl_logged : s6Step150EarlyControlPlan.Logged s6Step150EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 908 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step150EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step150EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step150EarlyControl_zero
  · exact s6Step150EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step150EarlyControl_flags
  · exact s6Step150EarlyControl_fit
  · exact s6Step150EarlyControl_history
  · exact s6Step150EarlyControl_sigma
  · exact s6Step150EarlyControl_branch

private theorem s6Step150EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step150EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 908 42 s6Step150EarlyControlLog=some s6Step150EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step150EarlyControlPlan s6Step150EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 908 42 s6Step150EarlyControl_logged

private def s6Step150EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step150EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩

private def s6Step150EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877],776⟩

private def s6Step150EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193],777⟩

private def s6Step150EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802],775⟩

private def s6Step150FrontBank : WindowBank := ⟨s6Step150EntryFRow,s6Step150EntryGRow,s6Step150EntryFvRow,s6Step150EntryGvRow⟩

private def s6Step150Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 879, 795]

private def s6Step150Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 859, 858, 777]

private def s6Step150Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 776]

private def s6Step150Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 887, 775]

private theorem s6Step150Counter_apart : Disjoint s6Step150HeadFvAfter.live s6Step150CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step150HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step150Counter_borrowed : s6Step150HeadFvAfter.checkBorrow 4 s6Step150CounterWork=some s6Step150CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step150HeadFvAfter s6Step150CounterDuring s6Step150CounterWork.toFinset s6Step150Counter_bounded s6Step150Counter_apart rfl

private theorem s6Step150Counter_owned : (768::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step150HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step150HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step150Counter_checked : compileHmrCounterStepLog s6Step150HeadFvAfter true 768 [774, 773, 772, 771, 770, 769] s6Step150CounterWork=some s6Step150CounterDuring := by
  have owned : ∀q∈768::[774, 773, 772, 771, 770, 769],q∈s6Step150HeadFvAfter.live := fun q hq => s6Step150Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step150Counter_borrowed

private def s6Step150EntryFAfter : Arena := s6Step150EntryFBefore

private theorem s6Step150EntryBank_incomingDistinct : ([s6Step150EntryFRow,s6Step150EntryGRow,s6Step150EntryFvRow,s6Step150EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150EntryF_Incoming : rowsOwned s6Step150EntryFBefore [s6Step150EntryFRow,s6Step150EntryGRow,s6Step150EntryFvRow,s6Step150EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step150EntryFRow,s6Step150EntryGRow,s6Step150EntryFvRow,s6Step150EntryGvRow] 0 s6Step150EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step150EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step150EntryBank_outgoingOwned : rowsOwned s6Step150EntryGvAfter [s6Step150EntryFOut,s6Step150EntryGOut,s6Step150EntryFvOut,s6Step150EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step150EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step150EntryF_Outgoing : rowsOwned s6Step150EntryGvAfter [s6Step150EntryFOut,s6Step150EntryGOut,s6Step150EntryFvOut,s6Step150EntryGvOut] :=
  hmrRows_owned_drop s6Step150EntryGvAfter [s6Step150EntryFOut,s6Step150EntryGOut,s6Step150EntryFvOut,s6Step150EntryGvOut] 0 s6Step150EntryBank_outgoingOwned

private theorem s6Step150EntryF_distinct : (s6Step150EntryFRow.sign::s6Step150EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150EntryF_owned : (s6Step150EntryFRow.sign::s6Step150EntryFRow.payload).toFinset⊆s6Step150EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step150EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150EntryF_reserved : s6Step150EntryFBefore.reserve s6Step150EntryFFresh.toFinset=some s6Step150EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step150EntryFFresh,arenaWires]
  · norm_num [s6Step150EntryFBefore,s6Step150EntryFFresh,arenaWires]
  · simp only [s6Step150EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step150EntryF_checked : planRowResizeLog s6Step150EntryFBefore s6Step150EntryFRow 195 s6Step150EntryFFresh=
    some (s6Step150EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩,growRow 795 s6Step150EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step150EntryFBefore s6Step150EntryFAfter s6Step150EntryFRow 195 s6Step150EntryFFresh
    s6Step150EntryF_distinct s6Step150EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step150EntryF_reserved
  have rowEq : WindowRow.mk (s6Step150EntryFRow.payload++s6Step150EntryFFresh) s6Step150EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step150EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step150EntryFvAfter : Arena := s6Step150EntryGAfter

private def s6Step150EntryFvBefore : Arena := s6Step150EntryGAfter

private theorem s6Step150EntryFv_Incoming : rowsOwned s6Step150EntryFvBefore [s6Step150EntryFvRow,s6Step150EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step150EntryFRow,s6Step150EntryGRow,s6Step150EntryFvRow,s6Step150EntryGvRow] 2 s6Step150EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step150EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step150EntryFv_Outgoing : rowsOwned s6Step150EntryGvAfter [s6Step150EntryFvOut,s6Step150EntryGvOut] :=
  hmrRows_owned_drop s6Step150EntryGvAfter [s6Step150EntryFOut,s6Step150EntryGOut,s6Step150EntryFvOut,s6Step150EntryGvOut] 2 s6Step150EntryBank_outgoingOwned

private theorem s6Step150EntryFv_distinct : (s6Step150EntryFvRow.sign::s6Step150EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150EntryFv_owned : (s6Step150EntryFvRow.sign::s6Step150EntryFvRow.payload).toFinset⊆s6Step150EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step150EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150EntryFv_reserved : s6Step150EntryFvBefore.reserve s6Step150EntryFvFresh.toFinset=some s6Step150EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step150EntryFvFresh,arenaWires]
  · norm_num [s6Step150EntryFvBefore,s6Step150EntryGAfter,s6Step150EntryFvFresh,arenaWires]
  · simp only [s6Step150EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step150EntryFv_checked : planRowResizeLog s6Step150EntryFvBefore s6Step150EntryFvRow 89 s6Step150EntryFvFresh=
    some (s6Step150EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877],776⟩,growRow 776 s6Step150EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step150EntryFvBefore s6Step150EntryFvAfter s6Step150EntryFvRow 89 s6Step150EntryFvFresh
    s6Step150EntryFv_distinct s6Step150EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step150EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step150EntryFvRow.payload++s6Step150EntryFvFresh) s6Step150EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step150EntryGBefore : Arena := s6Step150EntryFBefore

private theorem s6Step150EntryG_Incoming : rowsOwned s6Step150EntryGBefore [s6Step150EntryGRow,s6Step150EntryFvRow,s6Step150EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step150EntryFRow,s6Step150EntryGRow,s6Step150EntryFvRow,s6Step150EntryGvRow] 1 s6Step150EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step150EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step150EntryG_Outgoing : rowsOwned s6Step150EntryGvAfter [s6Step150EntryGOut,s6Step150EntryFvOut,s6Step150EntryGvOut] :=
  hmrRows_owned_drop s6Step150EntryGvAfter [s6Step150EntryFOut,s6Step150EntryGOut,s6Step150EntryFvOut,s6Step150EntryGvOut] 1 s6Step150EntryBank_outgoingOwned

private theorem s6Step150EntryG_distinct : (s6Step150EntryGRow.sign::s6Step150EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150EntryG_owned : (s6Step150EntryGRow.sign::s6Step150EntryGRow.payload).toFinset⊆s6Step150EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step150EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150EntryG_reserved : s6Step150EntryGBefore.reserve s6Step150EntryGFresh.toFinset=some s6Step150EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step150EntryGFresh,arenaWires]
  · norm_num [s6Step150EntryGBefore,s6Step150EntryFBefore,s6Step150EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step150EntryGBefore s6Step150EntryGAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step150EntryGFresh rfl rfl
    · norm_num [s6Step150EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step150EntryG_checked : planRowResizeLog s6Step150EntryGBefore s6Step150EntryGRow 195 s6Step150EntryGFresh=
    some (s6Step150EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 859],777⟩,growRow 777 s6Step150EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step150EntryGBefore s6Step150EntryGAfter s6Step150EntryGRow 195 s6Step150EntryGFresh
    s6Step150EntryG_distinct s6Step150EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step150EntryG_reserved
  have rowEq : WindowRow.mk (s6Step150EntryGRow.payload++s6Step150EntryGFresh) s6Step150EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 859],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step150EntryGvBefore : Arena := s6Step150EntryGAfter

private theorem s6Step150EntryGv_Incoming : rowsOwned s6Step150EntryGvBefore [s6Step150EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step150EntryFRow,s6Step150EntryGRow,s6Step150EntryFvRow,s6Step150EntryGvRow] 3 s6Step150EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step150EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step150EntryGv_Outgoing : rowsOwned s6Step150EntryGvAfter [s6Step150EntryGvOut] :=
  hmrRows_owned_drop s6Step150EntryGvAfter [s6Step150EntryFOut,s6Step150EntryGOut,s6Step150EntryFvOut,s6Step150EntryGvOut] 3 s6Step150EntryBank_outgoingOwned

private theorem s6Step150EntryGv_distinct : (s6Step150EntryGvRow.sign::s6Step150EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150EntryGv_owned : (s6Step150EntryGvRow.sign::s6Step150EntryGvRow.payload).toFinset⊆s6Step150EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step150EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150EntryGv_reserved : s6Step150EntryGvBefore.reserve s6Step150EntryGvFresh.toFinset=some s6Step150EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step150EntryGvFresh,arenaWires]
  · norm_num [s6Step150EntryGvBefore,s6Step150EntryGAfter,s6Step150EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step150EntryGvBefore s6Step150EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step150EntryGvFresh rfl rfl
    · norm_num [s6Step150EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step150EntryGv_checked : planRowResizeLog s6Step150EntryGvBefore s6Step150EntryGvRow 89 s6Step150EntryGvFresh=
    some (s6Step150EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855],775⟩,growRow 775 s6Step150EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step150EntryGvBefore s6Step150EntryGvAfter s6Step150EntryGvRow 89 s6Step150EntryGvFresh
    s6Step150EntryGv_distinct s6Step150EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step150EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step150EntryGvRow.payload++s6Step150EntryGvFresh) s6Step150EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step150EntryBank_rows : planWindowRowsLog s6Step150EntryFBefore [(s6Step150EntryFRow,195),(s6Step150EntryGRow,195),(s6Step150EntryFvRow,89),(s6Step150EntryGvRow,89)] [s6Step150EntryFFresh,s6Step150EntryGFresh,s6Step150EntryFvFresh,s6Step150EntryGvFresh]=
    some (s6Step150EntryGvAfter,[s6Step150EntryFOut,s6Step150EntryGOut,s6Step150EntryFvOut,s6Step150EntryGvOut],(growRow 795 s6Step150EntryFFresh ++ (growRow 777 s6Step150EntryGFresh ++ (growRow 776 s6Step150EntryFvFresh ++ (growRow 775 s6Step150EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step150EntryGvAfter [] []=some (s6Step150EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step150EntryGvBefore s6Step150EntryGvAfter s6Step150EntryGvAfter
    s6Step150EntryGvRow s6Step150EntryGvOut 89 s6Step150EntryGvFresh [] [] []
    (growRow 775 s6Step150EntryGvFresh) ([]) s6Step150EntryGv_Incoming s6Step150EntryGv_checked h4 s6Step150EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step150EntryFvBefore s6Step150EntryFvAfter s6Step150EntryGvAfter
    s6Step150EntryFvRow s6Step150EntryFvOut 89 s6Step150EntryFvFresh [(s6Step150EntryGvRow,89)] [s6Step150EntryGvFresh] [s6Step150EntryGvOut]
    (growRow 776 s6Step150EntryFvFresh) ((growRow 775 s6Step150EntryGvFresh ++ [])) s6Step150EntryFv_Incoming s6Step150EntryFv_checked h3 s6Step150EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step150EntryGBefore s6Step150EntryGAfter s6Step150EntryGvAfter
    s6Step150EntryGRow s6Step150EntryGOut 195 s6Step150EntryGFresh [(s6Step150EntryFvRow,89),(s6Step150EntryGvRow,89)] [s6Step150EntryFvFresh,s6Step150EntryGvFresh] [s6Step150EntryFvOut,s6Step150EntryGvOut]
    (growRow 777 s6Step150EntryGFresh) ((growRow 776 s6Step150EntryFvFresh ++ (growRow 775 s6Step150EntryGvFresh ++ []))) s6Step150EntryG_Incoming s6Step150EntryG_checked h2 s6Step150EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step150EntryFBefore s6Step150EntryFAfter s6Step150EntryGvAfter
    s6Step150EntryFRow s6Step150EntryFOut 195 s6Step150EntryFFresh [(s6Step150EntryGRow,195),(s6Step150EntryFvRow,89),(s6Step150EntryGvRow,89)] [s6Step150EntryGFresh,s6Step150EntryFvFresh,s6Step150EntryGvFresh] [s6Step150EntryGOut,s6Step150EntryFvOut,s6Step150EntryGvOut]
    (growRow 795 s6Step150EntryFFresh) ((growRow 777 s6Step150EntryGFresh ++ (growRow 776 s6Step150EntryFvFresh ++ (growRow 775 s6Step150EntryGvFresh ++ [])))) s6Step150EntryF_Incoming s6Step150EntryF_checked h1 s6Step150EntryF_Outgoing
  exact h0

private theorem s6Step150EntryBank_checked : compileHmrBankResizeLog .entry s6Step150EntryFBefore ⟨s6Step150EntryFRow,s6Step150EntryGRow,s6Step150EntryFvRow,s6Step150EntryGvRow⟩ ⟨195,195,89,89⟩ [s6Step150EntryFFresh,s6Step150EntryGFresh,s6Step150EntryFvFresh,s6Step150EntryGvFresh]=
    some (s6Step150EntryGvAfter,⟨s6Step150EntryFOut,s6Step150EntryGOut,s6Step150EntryFvOut,s6Step150EntryGvOut⟩,(growRow 795 s6Step150EntryFFresh ++ (growRow 777 s6Step150EntryGFresh ++ (growRow 776 s6Step150EntryFvFresh ++ (growRow 775 s6Step150EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step150EntryBank_rows]
  rfl

private def s6Step150ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,193),(194,450),(451,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step150ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,193),(194,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step150ExitFBefore : Arena := s6Step150ExitGAfter

private def s6Step150ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 879],795⟩

private def s6Step150ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807],776⟩

private def s6Step150ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 859, 858],777⟩

private def s6Step150ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 887],775⟩

private theorem s6Step150ExitBank_incomingDistinct : ([s6Step150ExitGRow,s6Step150ExitFRow,s6Step150ExitFvRow,s6Step150ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150ExitF_Incoming : rowsOwned s6Step150ExitFBefore [s6Step150ExitFRow,s6Step150ExitFvRow,s6Step150ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step150ExitGRow,s6Step150ExitFRow,s6Step150ExitFvRow,s6Step150ExitGvRow] 1 s6Step150ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step150ExitFBefore (fun q => ([(0,193),(194,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step150ExitBank_outgoingOwned : rowsOwned s6Step150ExitGvAfter [s6Step150ExitGOut,s6Step150ExitFOut,s6Step150ExitFvOut,s6Step150ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step150ExitGvAfter (fun q => ([(0,193),(194,450),(451,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step150ExitF_Outgoing : rowsOwned s6Step150ExitGvAfter [s6Step150ExitFOut,s6Step150ExitFvOut,s6Step150ExitGvOut] :=
  hmrRows_owned_drop s6Step150ExitGvAfter [s6Step150ExitGOut,s6Step150ExitFOut,s6Step150ExitFvOut,s6Step150ExitGvOut] 1 s6Step150ExitBank_outgoingOwned

private theorem s6Step150ExitF_distinct : (s6Step150ExitFRow.sign::s6Step150ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150ExitF_owned : (s6Step150ExitFRow.sign::s6Step150ExitFRow.payload).toFinset⊆s6Step150ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step150ExitFBefore (fun q => ([(0,193),(194,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150ExitF_retired : s6Step150ExitFBefore.retireSet s6Step150ExitFExtra.toFinset=s6Step150ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step150ExitFBefore s6Step150ExitFAfter s6Step150ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step150ExitFBefore s6Step150ExitFAfter (fun q => ([(0,193),(194,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,193),(194,450),(451,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step150ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step150ExitF_checked : planRowResizeLog s6Step150ExitFBefore s6Step150ExitFRow 194 []=
    some (s6Step150ExitFAfter,s6Step150ExitFOut,shrinkRow 795 s6Step150ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step150ExitFBefore s6Step150ExitFRow 194 s6Step150ExitF_distinct s6Step150ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step150ExitFRow.payload.take 194) s6Step150ExitFRow.sign=s6Step150ExitFOut := by decide +kernel
  have hi : s6Step150ExitFRow.payload.drop 194=s6Step150ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step150ExitF_retired] at result
  exact result

private def s6Step150ExitFvAfter : Arena := s6Step150ExitFAfter

private def s6Step150ExitFvBefore : Arena := s6Step150ExitFAfter

private theorem s6Step150ExitFv_Incoming : rowsOwned s6Step150ExitFvBefore [s6Step150ExitFvRow,s6Step150ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step150ExitGRow,s6Step150ExitFRow,s6Step150ExitFvRow,s6Step150ExitGvRow] 2 s6Step150ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step150ExitFvBefore (fun q => ([(0,193),(194,450),(451,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step150ExitFv_Outgoing : rowsOwned s6Step150ExitGvAfter [s6Step150ExitFvOut,s6Step150ExitGvOut] :=
  hmrRows_owned_drop s6Step150ExitGvAfter [s6Step150ExitGOut,s6Step150ExitFOut,s6Step150ExitFvOut,s6Step150ExitGvOut] 2 s6Step150ExitBank_outgoingOwned

private theorem s6Step150ExitFv_distinct : (s6Step150ExitFvRow.sign::s6Step150ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150ExitFv_owned : (s6Step150ExitFvRow.sign::s6Step150ExitFvRow.payload).toFinset⊆s6Step150ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step150ExitFvBefore (fun q => ([(0,193),(194,450),(451,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150ExitFv_reserved : s6Step150ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step150ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step150ExitFv_checked : planRowResizeLog s6Step150ExitFvBefore s6Step150ExitFvRow 90 []=
    some (s6Step150ExitFvAfter,s6Step150ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step150ExitFvBefore s6Step150ExitFvAfter s6Step150ExitFvRow 90 []
    s6Step150ExitFv_distinct s6Step150ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step150ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step150ExitFvRow.payload++[]) s6Step150ExitFvRow.sign=s6Step150ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step150ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step150ExitG_Incoming : rowsOwned s6Step150ExitGBefore [s6Step150ExitGRow,s6Step150ExitFRow,s6Step150ExitFvRow,s6Step150ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step150ExitGRow,s6Step150ExitFRow,s6Step150ExitFvRow,s6Step150ExitGvRow] 0 s6Step150ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step150ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step150ExitG_Outgoing : rowsOwned s6Step150ExitGvAfter [s6Step150ExitGOut,s6Step150ExitFOut,s6Step150ExitFvOut,s6Step150ExitGvOut] :=
  hmrRows_owned_drop s6Step150ExitGvAfter [s6Step150ExitGOut,s6Step150ExitFOut,s6Step150ExitFvOut,s6Step150ExitGvOut] 0 s6Step150ExitBank_outgoingOwned

private theorem s6Step150ExitG_distinct : (s6Step150ExitGRow.sign::s6Step150ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150ExitG_owned : (s6Step150ExitGRow.sign::s6Step150ExitGRow.payload).toFinset⊆s6Step150ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step150ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step150ExitG_retired : s6Step150ExitGBefore.retireSet s6Step150ExitGExtra.toFinset=s6Step150ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step150ExitGBefore s6Step150ExitGAfter s6Step150ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step150ExitGBefore s6Step150ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,193),(194,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step150ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step150ExitG_checked : planRowResizeLog s6Step150ExitGBefore s6Step150ExitGRow 193 []=
    some (s6Step150ExitGAfter,s6Step150ExitGOut,shrinkRow 777 s6Step150ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step150ExitGBefore s6Step150ExitGRow 193 s6Step150ExitG_distinct s6Step150ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step150ExitGRow.payload.take 193) s6Step150ExitGRow.sign=s6Step150ExitGOut := by decide +kernel
  have hi : s6Step150ExitGRow.payload.drop 193=s6Step150ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step150ExitG_retired] at result
  exact result

private def s6Step150ExitGvBefore : Arena := s6Step150ExitFAfter

private theorem s6Step150ExitGv_Incoming : rowsOwned s6Step150ExitGvBefore [s6Step150ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step150ExitGRow,s6Step150ExitFRow,s6Step150ExitFvRow,s6Step150ExitGvRow] 3 s6Step150ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step150ExitGvBefore (fun q => ([(0,193),(194,450),(451,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step150ExitGv_Outgoing : rowsOwned s6Step150ExitGvAfter [s6Step150ExitGvOut] :=
  hmrRows_owned_drop s6Step150ExitGvAfter [s6Step150ExitGOut,s6Step150ExitFOut,s6Step150ExitFvOut,s6Step150ExitGvOut] 3 s6Step150ExitBank_outgoingOwned

private theorem s6Step150ExitGv_distinct : (s6Step150ExitGvRow.sign::s6Step150ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150ExitGv_owned : (s6Step150ExitGvRow.sign::s6Step150ExitGvRow.payload).toFinset⊆s6Step150ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step150ExitGvBefore (fun q => ([(0,193),(194,450),(451,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150ExitGv_retired : s6Step150ExitGvBefore.retireSet s6Step150ExitGvExtra.toFinset=s6Step150ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step150ExitGvBefore s6Step150ExitGvAfter s6Step150ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step150ExitGvBefore s6Step150ExitGvAfter (fun q => ([(0,193),(194,450),(451,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,193),(194,450),(451,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step150ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step150ExitGv_checked : planRowResizeLog s6Step150ExitGvBefore s6Step150ExitGvRow 89 []=
    some (s6Step150ExitGvAfter,s6Step150ExitGvOut,shrinkRow 775 s6Step150ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step150ExitGvBefore s6Step150ExitGvRow 89 s6Step150ExitGv_distinct s6Step150ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step150ExitGvRow.payload.take 89) s6Step150ExitGvRow.sign=s6Step150ExitGvOut := by decide +kernel
  have hi : s6Step150ExitGvRow.payload.drop 89=s6Step150ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step150ExitGv_retired] at result
  exact result

private theorem s6Step150ExitBank_rows : planWindowRowsLog s6Step150ExitGBefore [(s6Step150ExitGRow,193),(s6Step150ExitFRow,194),(s6Step150ExitFvRow,90),(s6Step150ExitGvRow,89)] [[],[],[],[]]=
    some (s6Step150ExitGvAfter,[s6Step150ExitGOut,s6Step150ExitFOut,s6Step150ExitFvOut,s6Step150ExitGvOut],(shrinkRow 777 s6Step150ExitGExtra ++ (shrinkRow 795 s6Step150ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step150ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step150ExitGvAfter [] []=some (s6Step150ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step150ExitGvBefore s6Step150ExitGvAfter s6Step150ExitGvAfter
    s6Step150ExitGvRow s6Step150ExitGvOut 89 [] [] [] []
    (shrinkRow 775 s6Step150ExitGvExtra) ([]) s6Step150ExitGv_Incoming s6Step150ExitGv_checked h4 s6Step150ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step150ExitFvBefore s6Step150ExitFvAfter s6Step150ExitGvAfter
    s6Step150ExitFvRow s6Step150ExitFvOut 90 [] [(s6Step150ExitGvRow,89)] [[]] [s6Step150ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step150ExitGvExtra ++ [])) s6Step150ExitFv_Incoming s6Step150ExitFv_checked h3 s6Step150ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step150ExitFBefore s6Step150ExitFAfter s6Step150ExitGvAfter
    s6Step150ExitFRow s6Step150ExitFOut 194 [] [(s6Step150ExitFvRow,90),(s6Step150ExitGvRow,89)] [[],[]] [s6Step150ExitFvOut,s6Step150ExitGvOut]
    (shrinkRow 795 s6Step150ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step150ExitGvExtra ++ []))) s6Step150ExitF_Incoming s6Step150ExitF_checked h2 s6Step150ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step150ExitGBefore s6Step150ExitGAfter s6Step150ExitGvAfter
    s6Step150ExitGRow s6Step150ExitGOut 193 [] [(s6Step150ExitFRow,194),(s6Step150ExitFvRow,90),(s6Step150ExitGvRow,89)] [[],[],[]] [s6Step150ExitFOut,s6Step150ExitFvOut,s6Step150ExitGvOut]
    (shrinkRow 777 s6Step150ExitGExtra) ((shrinkRow 795 s6Step150ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step150ExitGvExtra ++ [])))) s6Step150ExitG_Incoming s6Step150ExitG_checked h1 s6Step150ExitG_Outgoing
  exact h0

private theorem s6Step150ExitBank_checked : compileHmrBankResizeLog .exit s6Step150ExitGBefore ⟨s6Step150ExitFRow,s6Step150ExitGRow,s6Step150ExitFvRow,s6Step150ExitGvRow⟩ ⟨194,193,90,89⟩ [[],[],[],[]]=
    some (s6Step150ExitGvAfter,⟨s6Step150ExitFOut,s6Step150ExitGOut,s6Step150ExitFvOut,s6Step150ExitGvOut⟩,(shrinkRow 777 s6Step150ExitGExtra ++ (shrinkRow 795 s6Step150ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step150ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step150ExitBank_rows]
  rfl

private theorem s6Step150Add0_apart : Disjoint s6Step150Add0Arena.live s6Step150Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step150Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step150Add0_card : s6Step150Add0Arena.live.card=884 := by
  decide +kernel

private theorem s6Step150Add0_borrowed : s6Step150Add0Arena.checkBorrow (hmrHybridCount s6Step150Add0Arena s6Step150Add0B.length) s6Step150Add0Work=some s6Step150Add0During := by
  have len : s6Step150Add0Work.length=hmrHybridCount s6Step150Add0Arena s6Step150Add0B.length := by
    rw [hmrHybridCount,s6Step150Add0_card]
    decide +kernel
  have nd : s6Step150Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step150Add0Arena s6Step150Add0During s6Step150Add0Work.toFinset s6Step150Add0_bounded s6Step150Add0_apart rfl

private theorem s6Step150Add0_distinct : (875::908::882::(s6Step150Add0A++s6Step150Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150Add0_owned : (875::908::882::(s6Step150Add0A++s6Step150Add0B)).toFinset⊆s6Step150Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step150Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step150Add0_checked : compileHmrHybridCinLog s6Step150Add0Arena 908 875 882 s6Step150Add0A s6Step150Add0B s6Step150Add0Work=some s6Step150Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step150Add0Arena s6Step150Add0During 908 875 882 s6Step150Add0A s6Step150Add0B s6Step150Add0Work
    (by decide +kernel) (by decide +kernel) s6Step150Add0_distinct
    (fun q hq => s6Step150Add0_owned (List.mem_toFinset.mpr hq)) s6Step150Add0_borrowed

private theorem s6Step150Add1_apart : Disjoint s6Step150Add1Arena.live s6Step150Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step150Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step150Add1_card : s6Step150Add1Arena.live.card=884 := by
  decide +kernel

private theorem s6Step150Add1_borrowed : s6Step150Add1Arena.checkBorrow (hmrHybridCount s6Step150Add1Arena s6Step150Add1B.length) s6Step150Add1Work=some s6Step150Add1During := by
  have len : s6Step150Add1Work.length=hmrHybridCount s6Step150Add1Arena s6Step150Add1B.length := by
    rw [hmrHybridCount,s6Step150Add1_card]
    decide +kernel
  have nd : s6Step150Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step150Add1Arena s6Step150Add1During s6Step150Add1Work.toFinset s6Step150Add1_bounded s6Step150Add1_apart rfl

private theorem s6Step150Add1_distinct : (875::908::882::(s6Step150Add1A++s6Step150Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150Add1_owned : (875::908::882::(s6Step150Add1A++s6Step150Add1B)).toFinset⊆s6Step150Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step150Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step150Add1_checked : compileHmrHybridCinLog s6Step150Add1Arena 908 875 882 s6Step150Add1A s6Step150Add1B s6Step150Add1Work=some s6Step150Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step150Add1Arena s6Step150Add1During 908 875 882 s6Step150Add1A s6Step150Add1B s6Step150Add1Work
    (by decide +kernel) (by decide +kernel) s6Step150Add1_distinct
    (fun q hq => s6Step150Add1_owned (List.mem_toFinset.mpr hq)) s6Step150Add1_borrowed

private theorem s6Step150F4_apart : Disjoint (s6Step150Add0A++s6Step150Add0B).toFinset (s6Step150Add1A++s6Step150Add1B).toFinset := by
  have nd : ((s6Step150Add0A++s6Step150Add0B)++(s6Step150Add1A++s6Step150Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step150F4_carry : s6Step150F4FlagArena.checkBorrow 1 [882]=some s6Step150Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step150F4FlagArena,s6Step150HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step150F4FlagArena,s6Step150HeadFvAfter,s6Step150Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step150F4_distinct : (768::908::875::882::((s6Step150Add0A++s6Step150Add1A)++(s6Step150Add0B++s6Step150Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150F4_flag : s6Step150HeadFvAfter.checkBorrow 1 [875]=some s6Step150F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step150HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step150F4_owned : (768::908::((s6Step150Add0A++s6Step150Add1A)++(s6Step150Add0B++s6Step150Add1B))).toFinset⊆s6Step150HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step150HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step150F4_checked : compileHmrHybridF4Log s6Step150HeadFvAfter 768 908 s6Step150Add0A s6Step150Add0B s6Step150Add1A s6Step150Add1B [875] [882] s6Step150Add0Work s6Step150Add1Work=some s6Step150F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step150HeadFvAfter s6Step150F4FlagArena s6Step150Add0Arena s6Step150Add0During s6Step150Add1During 768 908
    s6Step150Add0A s6Step150Add0B s6Step150Add1A s6Step150Add1B [875] [882] s6Step150Add0Work s6Step150Add1Work
    (fun q hq => s6Step150F4_owned (List.mem_toFinset.mpr hq)) s6Step150F4_flag s6Step150F4_carry
    s6Step150F4_distinct s6Step150F4_apart s6Step150Add0_checked s6Step150Add1_checked

private theorem s6Step150Front_branch : s6Step150FrontSigmaArena.checkBorrow 1 [908]=some s6Step150HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step150FrontSigmaArena,s6Step150EntryGvAfter,arenaWires]
  · change s6Step150HeadGBefore.live=(s6Step150EntryGvAfter.live∪{768})∪{908}
    apply hmrArena_union_pair_of_filter_check s6Step150EntryGvAfter s6Step150HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 768 908 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step150Front_entry : HmrFrontEntryValid s6Step150EntryFBefore s6Step150FrontBank 195 89 ⟨194,193,90,89⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step150FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step150EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step150EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step150FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step150Front_sigma : s6Step150EntryGvAfter.checkBorrow 1 [768]=some s6Step150FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step150EntryGvAfter,arenaWires]
  · rfl

private def s6Step150HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step150HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step150HeadFBefore : Arena := s6Step150HeadGAfter

private def s6Step150HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450],795⟩

private def s6Step150HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877],776⟩

private def s6Step150HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 859],777⟩

private def s6Step150HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855],775⟩

private theorem s6Step150HeadBank_incomingDistinct : ([s6Step150HeadGRow,s6Step150HeadFRow,s6Step150HeadGvRow,s6Step150HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150HeadF_Incoming : rowsOwned s6Step150HeadFBefore [s6Step150HeadFRow,s6Step150HeadGvRow,s6Step150HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step150HeadGRow,s6Step150HeadFRow,s6Step150HeadGvRow,s6Step150HeadFvRow] 1 s6Step150HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step150HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step150HeadBank_outgoingOwned : rowsOwned s6Step150HeadFvAfter [s6Step150HeadGOut,s6Step150HeadFOut,s6Step150HeadGvOut,s6Step150HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step150HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step150HeadF_Outgoing : rowsOwned s6Step150HeadFvAfter [s6Step150HeadFOut,s6Step150HeadGvOut,s6Step150HeadFvOut] :=
  hmrRows_owned_drop s6Step150HeadFvAfter [s6Step150HeadGOut,s6Step150HeadFOut,s6Step150HeadGvOut,s6Step150HeadFvOut] 1 s6Step150HeadBank_outgoingOwned

private theorem s6Step150HeadF_distinct : (s6Step150HeadFRow.sign::s6Step150HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150HeadF_owned : (s6Step150HeadFRow.sign::s6Step150HeadFRow.payload).toFinset⊆s6Step150HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step150HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150HeadF_reserved : s6Step150HeadFBefore.reserve s6Step150HeadFFresh.toFinset=some s6Step150HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step150HeadFFresh,arenaWires]
  · norm_num [s6Step150HeadFBefore,s6Step150HeadGAfter,s6Step150HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step150HeadFBefore s6Step150HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step150HeadFFresh rfl rfl
    · norm_num [s6Step150HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step150HeadF_checked : planRowResizeLog s6Step150HeadFBefore s6Step150HeadFRow 196 s6Step150HeadFFresh=
    some (s6Step150HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 879],795⟩,growRow 795 s6Step150HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step150HeadFBefore s6Step150HeadFAfter s6Step150HeadFRow 196 s6Step150HeadFFresh
    s6Step150HeadF_distinct s6Step150HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step150HeadF_reserved
  have rowEq : WindowRow.mk (s6Step150HeadFRow.payload++s6Step150HeadFFresh) s6Step150HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 879],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step150HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step150HeadFvBefore : Arena := s6Step150HeadGvAfter

private theorem s6Step150HeadFv_Incoming : rowsOwned s6Step150HeadFvBefore [s6Step150HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step150HeadGRow,s6Step150HeadFRow,s6Step150HeadGvRow,s6Step150HeadFvRow] 3 s6Step150HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step150HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step150HeadFv_Outgoing : rowsOwned s6Step150HeadFvAfter [s6Step150HeadFvOut] :=
  hmrRows_owned_drop s6Step150HeadFvAfter [s6Step150HeadGOut,s6Step150HeadFOut,s6Step150HeadGvOut,s6Step150HeadFvOut] 3 s6Step150HeadBank_outgoingOwned

private theorem s6Step150HeadFv_distinct : (s6Step150HeadFvRow.sign::s6Step150HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150HeadFv_owned : (s6Step150HeadFvRow.sign::s6Step150HeadFvRow.payload).toFinset⊆s6Step150HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step150HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step150HeadFv_reserved : s6Step150HeadFvBefore.reserve s6Step150HeadFvFresh.toFinset=some s6Step150HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step150HeadFvFresh,arenaWires]
  · norm_num [s6Step150HeadFvBefore,s6Step150HeadGvAfter,s6Step150HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step150HeadFvAfter,s6Step150HeadFvBefore,s6Step150HeadGvAfter,s6Step150HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step150HeadFv_checked : planRowResizeLog s6Step150HeadFvBefore s6Step150HeadFvRow 90 s6Step150HeadFvFresh=
    some (s6Step150HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807],776⟩,growRow 776 s6Step150HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step150HeadFvBefore s6Step150HeadFvAfter s6Step150HeadFvRow 90 s6Step150HeadFvFresh
    s6Step150HeadFv_distinct s6Step150HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step150HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step150HeadFvRow.payload++s6Step150HeadFvFresh) s6Step150HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step150HeadG_Incoming : rowsOwned s6Step150HeadGBefore [s6Step150HeadGRow,s6Step150HeadFRow,s6Step150HeadGvRow,s6Step150HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step150HeadGRow,s6Step150HeadFRow,s6Step150HeadGvRow,s6Step150HeadFvRow] 0 s6Step150HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step150HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step150HeadG_Outgoing : rowsOwned s6Step150HeadFvAfter [s6Step150HeadGOut,s6Step150HeadFOut,s6Step150HeadGvOut,s6Step150HeadFvOut] :=
  hmrRows_owned_drop s6Step150HeadFvAfter [s6Step150HeadGOut,s6Step150HeadFOut,s6Step150HeadGvOut,s6Step150HeadFvOut] 0 s6Step150HeadBank_outgoingOwned

private theorem s6Step150HeadG_distinct : (s6Step150HeadGRow.sign::s6Step150HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150HeadG_owned : (s6Step150HeadGRow.sign::s6Step150HeadGRow.payload).toFinset⊆s6Step150HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step150HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150HeadG_reserved : s6Step150HeadGBefore.reserve s6Step150HeadGFresh.toFinset=some s6Step150HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step150HeadGFresh,arenaWires]
  · norm_num [s6Step150HeadGBefore,s6Step150HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step150HeadGBefore s6Step150HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step150HeadGFresh rfl rfl
    · norm_num [s6Step150HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step150HeadG_checked : planRowResizeLog s6Step150HeadGBefore s6Step150HeadGRow 196 s6Step150HeadGFresh=
    some (s6Step150HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 859, 858],777⟩,growRow 777 s6Step150HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step150HeadGBefore s6Step150HeadGAfter s6Step150HeadGRow 196 s6Step150HeadGFresh
    s6Step150HeadG_distinct s6Step150HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step150HeadG_reserved
  have rowEq : WindowRow.mk (s6Step150HeadGRow.payload++s6Step150HeadGFresh) s6Step150HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 859, 858],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step150HeadGvBefore : Arena := s6Step150HeadFAfter

private theorem s6Step150HeadGv_Incoming : rowsOwned s6Step150HeadGvBefore [s6Step150HeadGvRow,s6Step150HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step150HeadGRow,s6Step150HeadFRow,s6Step150HeadGvRow,s6Step150HeadFvRow] 2 s6Step150HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step150HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step150HeadGv_Outgoing : rowsOwned s6Step150HeadFvAfter [s6Step150HeadGvOut,s6Step150HeadFvOut] :=
  hmrRows_owned_drop s6Step150HeadFvAfter [s6Step150HeadGOut,s6Step150HeadFOut,s6Step150HeadGvOut,s6Step150HeadFvOut] 2 s6Step150HeadBank_outgoingOwned

private theorem s6Step150HeadGv_distinct : (s6Step150HeadGvRow.sign::s6Step150HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step150HeadGv_owned : (s6Step150HeadGvRow.sign::s6Step150HeadGvRow.payload).toFinset⊆s6Step150HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step150HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step150HeadGv_reserved : s6Step150HeadGvBefore.reserve s6Step150HeadGvFresh.toFinset=some s6Step150HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step150HeadGvFresh,arenaWires]
  · norm_num [s6Step150HeadGvBefore,s6Step150HeadFAfter,s6Step150HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step150HeadGvBefore s6Step150HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step150HeadGvFresh rfl rfl
    · norm_num [s6Step150HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step150HeadGv_checked : planRowResizeLog s6Step150HeadGvBefore s6Step150HeadGvRow 90 s6Step150HeadGvFresh=
    some (s6Step150HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 887],775⟩,growRow 775 s6Step150HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step150HeadGvBefore s6Step150HeadGvAfter s6Step150HeadGvRow 90 s6Step150HeadGvFresh
    s6Step150HeadGv_distinct s6Step150HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step150HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step150HeadGvRow.payload++s6Step150HeadGvFresh) s6Step150HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step150HeadBank_rows : planWindowRowsLog s6Step150HeadGBefore [(s6Step150HeadGRow,196),(s6Step150HeadFRow,196),(s6Step150HeadGvRow,90),(s6Step150HeadFvRow,90)] [s6Step150HeadGFresh,s6Step150HeadFFresh,s6Step150HeadGvFresh,s6Step150HeadFvFresh]=
    some (s6Step150HeadFvAfter,[s6Step150HeadGOut,s6Step150HeadFOut,s6Step150HeadGvOut,s6Step150HeadFvOut],(growRow 777 s6Step150HeadGFresh ++ (growRow 795 s6Step150HeadFFresh ++ (growRow 775 s6Step150HeadGvFresh ++ (growRow 776 s6Step150HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step150HeadFvAfter [] []=some (s6Step150HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step150HeadFvBefore s6Step150HeadFvAfter s6Step150HeadFvAfter
    s6Step150HeadFvRow s6Step150HeadFvOut 90 s6Step150HeadFvFresh [] [] []
    (growRow 776 s6Step150HeadFvFresh) ([]) s6Step150HeadFv_Incoming s6Step150HeadFv_checked h4 s6Step150HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step150HeadGvBefore s6Step150HeadGvAfter s6Step150HeadFvAfter
    s6Step150HeadGvRow s6Step150HeadGvOut 90 s6Step150HeadGvFresh [(s6Step150HeadFvRow,90)] [s6Step150HeadFvFresh] [s6Step150HeadFvOut]
    (growRow 775 s6Step150HeadGvFresh) ((growRow 776 s6Step150HeadFvFresh ++ [])) s6Step150HeadGv_Incoming s6Step150HeadGv_checked h3 s6Step150HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step150HeadFBefore s6Step150HeadFAfter s6Step150HeadFvAfter
    s6Step150HeadFRow s6Step150HeadFOut 196 s6Step150HeadFFresh [(s6Step150HeadGvRow,90),(s6Step150HeadFvRow,90)] [s6Step150HeadGvFresh,s6Step150HeadFvFresh] [s6Step150HeadGvOut,s6Step150HeadFvOut]
    (growRow 795 s6Step150HeadFFresh) ((growRow 775 s6Step150HeadGvFresh ++ (growRow 776 s6Step150HeadFvFresh ++ []))) s6Step150HeadF_Incoming s6Step150HeadF_checked h2 s6Step150HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step150HeadGBefore s6Step150HeadGAfter s6Step150HeadFvAfter
    s6Step150HeadGRow s6Step150HeadGOut 196 s6Step150HeadGFresh [(s6Step150HeadFRow,196),(s6Step150HeadGvRow,90),(s6Step150HeadFvRow,90)] [s6Step150HeadFFresh,s6Step150HeadGvFresh,s6Step150HeadFvFresh] [s6Step150HeadFOut,s6Step150HeadGvOut,s6Step150HeadFvOut]
    (growRow 777 s6Step150HeadGFresh) ((growRow 795 s6Step150HeadFFresh ++ (growRow 775 s6Step150HeadGvFresh ++ (growRow 776 s6Step150HeadFvFresh ++ [])))) s6Step150HeadG_Incoming s6Step150HeadG_checked h1 s6Step150HeadG_Outgoing
  exact h0

private theorem s6Step150HeadBank_checked : compileHmrBankResizeLog .headroom s6Step150HeadGBefore ⟨s6Step150HeadFRow,s6Step150HeadGRow,s6Step150HeadFvRow,s6Step150HeadGvRow⟩ ⟨196,196,90,90⟩ [s6Step150HeadGFresh,s6Step150HeadFFresh,s6Step150HeadGvFresh,s6Step150HeadFvFresh]=
    some (s6Step150HeadFvAfter,⟨s6Step150HeadFOut,s6Step150HeadGOut,s6Step150HeadFvOut,s6Step150HeadGvOut⟩,(growRow 777 s6Step150HeadGFresh ++ (growRow 795 s6Step150HeadFFresh ++ (growRow 775 s6Step150HeadGvFresh ++ (growRow 776 s6Step150HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step150HeadBank_rows]
  rfl

private theorem s6Step150Front_checked : compileHmrSourceFrontLog s6Step150EntryFBefore s6Step150FrontBank 195 89 ⟨194,193,90,89⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step150FrontLog=some s6Step150FrontPlan := by
  have pairEq : s6Step150FrontPair=⟨s6Step150HeadFRow,s6Step150HeadGRow,s6Step150HeadFvRow,s6Step150HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step150FrontHead=⟨s6Step150ExitFRow,s6Step150ExitGRow,s6Step150ExitFvRow,s6Step150ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step150Add0A=s6Step150FrontHead.f.wires := by decide +kernel
  have gEq : s6Step150Add0B=s6Step150FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step150Add1A=s6Step150FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step150Add1B=s6Step150FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step150EntryFBefore s6Step150FrontBank 195 89 ⟨194,193,90,89⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step150FrontLog s6Step150FrontPlan
  · exact s6Step150Front_entry
  · exact s6Step150EntryBank_checked
  · exact s6Step150Front_sigma
  · rfl
  · exact s6Step150Front_branch
  · rfl
  · simpa only [s6Step150FrontPlan,pairEq] using s6Step150HeadBank_checked
  · simpa only [s6Step150FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step150F4_checked
  · exact s6Step150Counter_checked
  · rfl
  · simpa only [s6Step150FrontPlan,headEq] using s6Step150ExitBank_checked

private theorem s6Step150Complete_explicit_checked : compileHmrEarlyStepLog s6Step150EntryFBefore s6Step150FrontBank 195 89 ⟨194,193,90,89⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step150CompleteLog=some s6Step150CompletePlan := by
  let Q := s6Step150EarlyControlPlan
  have hq := s6Step150EarlyControl_plan_checked
  have fv1 : s6Step150CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step150CompleteOut.fv.payload[2]?.getD s6Step150CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step150CompleteOut.fv.payload[3]?.getD s6Step150CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step150CompleteOut.fv.payload[4]?.getD s6Step150CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step150EntryFBefore s6Step150EarlyControlArena s6Step150FrontBank 195 89 ⟨194,193,90,89⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step150CompleteLog s6Step150FrontPlan Q
    s6Step150Front_checked s6Step150Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step150Complete_owned s6Step150Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step150EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 s6Step150CompleteOut.fv.second (s6Step150CompleteOut.fv.payload[2]?.getD s6Step150CompleteOut.fv.sign) (s6Step150CompleteOut.fv.payload[3]?.getD s6Step150CompleteOut.fv.sign) (s6Step150CompleteOut.fv.payload[4]?.getD s6Step150CompleteOut.fv.sign) 908 42 s6Step150EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep150Arena : Arena := s6Step150EntryFBefore
def s6PrivateStep150Bank : WindowBank := s6Step150FrontBank
def s6PrivateStep150Spec : HmrSourceWalkStepLog := ⟨195,89,⟨194,193,90,89⟩,42,.early s6Step150CompleteLog⟩
def s6PrivateStep150Plan : HmrSourceStepPlan := .early s6Step150CompletePlan
theorem s6PrivateStep150_source : s6PrivateStep150Spec=s6ObservedLogs144[6] := rfl
theorem s6PrivateStep150_checked : compileHmrSourceStepLog s6PrivateStep150Arena s6PrivateStep150Bank
    s6PrivateStep150Spec.fgWidth s6PrivateStep150Spec.vWidth s6PrivateStep150Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 150 s6PrivateStep150Spec.need none s6PrivateStep150Spec.log=some s6PrivateStep150Plan := by
  change compileHmrSourceStepLog s6Step150EntryFBefore s6Step150FrontBank 195 89 ⟨194,193,90,89⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 150 42 none (.early s6Step150CompleteLog)=some (.early s6Step150CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 150<498)]
  rw [s6Step150Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
