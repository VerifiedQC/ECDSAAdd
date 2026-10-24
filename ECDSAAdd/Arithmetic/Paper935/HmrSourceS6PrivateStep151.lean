import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep149
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

private def s6Step151CompleteMoves : List (Wire × Wire) := [(874,449)]

private def s6Step151EarlyControlLog : HmrEarlyControlLog := ⟨[874, 768, 859, 879, 887],[875],[882],[891, 903, 791, 825, 810, 894],[]⟩

private def s6Step151FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [908], [], [768]],[[887], [879], [859], [858]],[[], [], [], []]⟩,[779],[881],[875],[882],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903]⟩

private def s6Step151CompleteLog : HmrEarlyStepLog := ⟨s6Step151FrontLog,s6Step151CompleteMoves,s6Step151EarlyControlLog⟩

private def s6Step151ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448],795⟩

private def s6Step151ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858],776⟩

private def s6Step151ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908],777⟩

private def s6Step151ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855],775⟩

private def s6Step151FrontOut : WindowBank := ⟨s6Step151ExitFOut,s6Step151ExitGOut,s6Step151ExitFvOut,s6Step151ExitGvOut⟩

private def s6Step151CompleteOut : WindowBank := s6Step151FrontOut.repacked s6Step151CompleteMoves

private def s6Step151EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step151EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step151EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step151EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step151EarlyControlPositiveArena,[875],s6Step151EarlyControlEqualityArena,[882],⟨⟨779,false⟩,[⟨⟨875,false⟩,882⟩]⟩⟩

private def s6Step151EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step151EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step151EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step151EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step151EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step151EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step151EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,874⟩,⟨⟨772,false⟩,768⟩,⟨⟨771,false⟩,859⟩,⟨⟨770,false⟩,879⟩,⟨⟨769,false⟩,887⟩]⟩

private def s6Step151EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step151EarlyControlZeroArena,s6Step151EarlyControlZeroPlan,s6Step151EarlyControlClassPlan,s6Step151EarlyControlFlagArena,s6Step151EarlyControlFittedArena,s6Step151EarlyControlHistoryArena,s6Step151EarlyControlSigmaArena,s6Step151EarlyControlOutputArena,s6Step151EarlyControlLog⟩

private def s6Step151CounterWork : List Wire := [875, 882, 891, 903]

private theorem s6Step151Counter_bounded : s6Step151CounterWork.toFinset⊆arenaWires := by norm_num [s6Step151CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step151HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step151CounterDuring : Arena := ⟨s6Step151HeadFvAfter.live∪s6Step151CounterWork.toFinset,Finset.union_subset s6Step151HeadFvAfter.bounded s6Step151Counter_bounded⟩

private def s6Step151EntryFFresh : List Wire := []

private def s6Step151EntryFvFresh : List Wire := []

private def s6Step151EntryGFresh : List Wire := [908]

private def s6Step151EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step151EntryGvFresh : List Wire := [768]

private def s6Step151ExitFExtra : List Wire := [449, 879]

private def s6Step151ExitGExtra : List Wire := [887]

private def s6Step151ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,449),(450,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step151ExitGvExtra : List Wire := [768, 859]

private def s6Step151Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step151Add0Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step151Add0_bounded : s6Step151Add0Work.toFinset⊆arenaWires := by
  have h : s6Step151Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step151Add0During : Arena := ⟨s6Step151Add0Arena.live∪s6Step151Add0Work.toFinset,Finset.union_subset s6Step151Add0Arena.bounded s6Step151Add0_bounded⟩

private def s6Step151Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step151Add1Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step151Add1_bounded : s6Step151Add1Work.toFinset⊆arenaWires := by
  have h : s6Step151Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step151Add1During : Arena := ⟨s6Step151Add1Arena.live∪s6Step151Add1Work.toFinset,Finset.union_subset s6Step151Add1Arena.bounded s6Step151Add1_bounded⟩

private def s6Step151F4FlagArena : Arena := ⟨s6Step151HeadFvAfter.live∪{875},Finset.union_subset s6Step151HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step151F4Plan : HmrHybridF4Plan := ⟨s6Step151F4FlagArena,[875],s6Step151Add0Arena,[882],s6Step151Add0During,s6Step151Add0Work,s6Step151Add1During,s6Step151Add1Work⟩

private def s6Step151HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 879],795⟩

private def s6Step151HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858],776⟩

private def s6Step151HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908, 887],777⟩

private def s6Step151HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 768, 859],775⟩

private def s6Step151FrontHead : WindowBank := ⟨s6Step151HeadFOut,s6Step151HeadGOut,s6Step151HeadFvOut,s6Step151HeadGvOut⟩

private def s6Step151EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449],795⟩

private def s6Step151EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807],776⟩

private def s6Step151EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908],777⟩

private def s6Step151EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 768],775⟩

private def s6Step151FrontPair : WindowBank := ⟨s6Step151EntryFOut,s6Step151EntryGOut,s6Step151EntryFvOut,s6Step151EntryGvOut⟩

private def s6Step151FrontSigmaArena : Arena := ⟨s6Step151EntryGvAfter.live∪{779},Finset.union_subset s6Step151EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step151HeadFFresh : List Wire := [879]

private def s6Step151HeadFvFresh : List Wire := [858]

private def s6Step151HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step151HeadGFresh : List Wire := [887]

private def s6Step151HeadGvFresh : List Wire := [859]

private def s6Step151FrontPlan : HmrSourceFront := ⟨s6Step151EntryGvAfter,s6Step151FrontPair,(growRow 795 s6Step151EntryFFresh ++ (growRow 777 s6Step151EntryGFresh ++ (growRow 776 s6Step151EntryFvFresh ++ (growRow 775 s6Step151EntryGvFresh ++ [])))),s6Step151FrontSigmaArena,[779],s6Step151HeadGBefore,[881],
  s6Step151HeadFvAfter,s6Step151FrontHead,(growRow 777 s6Step151HeadGFresh ++ (growRow 795 s6Step151HeadFFresh ++ (growRow 775 s6Step151HeadGvFresh ++ (growRow 776 s6Step151HeadFvFresh ++ [])))),s6Step151F4Plan,s6Step151CounterDuring,s6Step151CounterWork,s6Step151ExitGvAfter,s6Step151FrontOut,(shrinkRow 777 s6Step151ExitGExtra ++ (shrinkRow 795 s6Step151ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step151ExitGvExtra ++ []))))⟩

private def s6Step151CompletePlan : HmrEarlyStepPlan := ⟨s6Step151FrontPlan,s6Step151EarlyControlArena,s6Step151EarlyControlPlan,s6Step151CompleteMoves⟩

private theorem s6Step151Complete_apart : List.Disjoint (s6Step151CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [779, 881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step151CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[779, 881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step151Complete_owned : (s6Step151CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step151EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step151EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step151CompleteRelocationMove0Borrowed : Arena := ⟨s6Step151ExitGvAfter.live∪{449},Finset.union_subset s6Step151ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step151CompleteRelocation_move0_owned : 874∈s6Step151ExitGvAfter.live := by norm_num [s6Step151ExitGvAfter,arenaWires]

private theorem s6Step151CompleteRelocation_move0_reserve : s6Step151ExitGvAfter.reserve {449}=some s6Step151CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step151ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step151CompleteRelocation_move0_retire : s6Step151CompleteRelocationMove0Borrowed.retireSet {874}=s6Step151EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step151CompleteRelocationMove0Borrowed s6Step151EarlyControlArena {874}
  change s6Step151EarlyControlArena.live=(s6Step151ExitGvAfter.live∪{449})\{874}
  apply hmrArena_update_of_filter_check s6Step151ExitGvAfter s6Step151EarlyControlArena (fun q => ([(0,449),(450,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [449] [874] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step151CompleteRelocation_checked : s6Step151ExitGvAfter.checkRepack [(874,449)]=some s6Step151EarlyControlArena := by
  have tail1 : s6Step151EarlyControlArena.checkRepack []=some s6Step151EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step151ExitGvAfter s6Step151CompleteRelocationMove0Borrowed s6Step151EarlyControlArena s6Step151EarlyControlArena 874 449 []
    s6Step151CompleteRelocation_move0_owned s6Step151CompleteRelocation_move0_reserve s6Step151CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step151Complete_repack : s6Step151ExitGvAfter.checkRepack s6Step151CompleteMoves=some s6Step151EarlyControlArena := by
  simpa only [s6Step151CompleteMoves] using s6Step151CompleteRelocation_checked

private theorem s6Step151EarlyControl_branchOwned : ([881] : List Wire).toFinset⊆s6Step151EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step151EarlyControlSigmaArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151EarlyControl_branch : compileHmrBranchRetirement s6Step151EarlyControlSigmaArena 881=some s6Step151EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step151EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step151EarlyControlSigmaArena s6Step151EarlyControlOutputArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [881] rfl rfl
    decide +kernel

private theorem s6Step151EarlyControl_classEqualityBorrow : s6Step151EarlyControlPositiveArena.checkBorrow (([779, 875] : List Wire).length-1) s6Step151EarlyControlLog.classWork=some s6Step151EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step151EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step151EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step151EarlyControlEqualityArena,s6Step151EarlyControlPositiveArena,s6Step151EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step151EarlyControl_classEqualityOwned : ([779, 875] : List Wire).toFinset⊆s6Step151EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step151EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step151EarlyControl_classEquality : compileHmrEqualityLog s6Step151EarlyControlPositiveArena [779, 875] 0 s6Step151EarlyControlLog.classWork=some (s6Step151EarlyControlEqualityArena,s6Step151EarlyControlLog.classWork,s6Step151EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step151EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step151EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step151EarlyControl_classOwned : ([769, 887, 779] : List Wire).toFinset⊆s6Step151EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step151EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step151EarlyControl_positiveBorrow : s6Step151EarlyControlZeroArena.checkBorrow (1) s6Step151EarlyControlLog.positiveWork=some s6Step151EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step151EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step151EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step151EarlyControlPositiveArena,s6Step151EarlyControlZeroArena,s6Step151EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step151EarlyControl_class : compileHmrSourceClassLog s6Step151EarlyControlZeroArena false 769 s6Step151EarlyControlZeroPlan.top 0 779 s6Step151EarlyControlLog.positiveWork s6Step151EarlyControlLog.classWork=some s6Step151EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step151EarlyControlClassPlan s6Step151EarlyControlZeroArena false 769 s6Step151EarlyControlZeroPlan.top 0 779
  constructor
  · decide +kernel
  · exact s6Step151EarlyControl_classOwned
  · exact s6Step151EarlyControl_positiveBorrow
  · exact s6Step151EarlyControl_classEquality

private theorem s6Step151EarlyControl_entryRecordOwned : ([881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step151EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step151EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151EarlyControl_entrySigmaOwned : ([779, 254] : List Wire).toFinset⊆s6Step151EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step151EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151EarlyControl_fitBorrow : s6Step151EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step151EarlyControlLog.recordFresh=some s6Step151EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step151EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step151EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step151EarlyControlFittedArena,s6Step151EarlyControlFlagArena,s6Step151EarlyControlLog,arenaWires]

private theorem s6Step151EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step151EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step151EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step151EarlyControl_fit : compileHmrRecordGrowLog s6Step151EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step151EarlyControlLog.recordFresh=some s6Step151EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step151EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step151EarlyControl_fitBorrow

private theorem s6Step151EarlyControl_flagsBorrow : s6Step151EarlyControlEqualityArena.checkBorrow (6) s6Step151EarlyControlLog.flagWork=some s6Step151EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step151EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step151EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step151EarlyControlFlagArena,s6Step151EarlyControlEqualityArena,s6Step151EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step151EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s6Step151EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step151EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step151EarlyControl_flags : compileHmrFlagsLog s6Step151EarlyControlClassPlan.equalityArena s6Step151EarlyControlClassPlan.equality.top 253 252 251 s6Step151EarlyControlLog.flagWork=some s6Step151EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step151EarlyControl_flagsOwned⟩
  · exact s6Step151EarlyControl_flagsBorrow

private theorem s6Step151EarlyControl_historyBorrow : s6Step151EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step151EarlyControlLog.recordFresh=some s6Step151EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step151EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step151EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step151EarlyControlArena s6Step151EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step151EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step151EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step151EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step151EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step151EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151EarlyControl_history : compileHmrRecordGrowLog s6Step151EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step151EarlyControlLog.recordFresh=some s6Step151EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step151EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step151EarlyControl_historyBorrow

private theorem s6Step151EarlyControl_sigmaOwned : ([254, 779] : List Wire).toFinset⊆s6Step151EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step151EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151EarlyControl_sigmaReleaseOwned : ([779] : List Wire).toFinset⊆s6Step151EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step151EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151EarlyControl_sigmaRelease : s6Step151EarlyControlHistoryArena.release {779} (fun _ => false)=some s6Step151EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step151EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step151EarlyControlHistoryArena s6Step151EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [779] rfl rfl
    decide +kernel

private theorem s6Step151EarlyControl_sigma : compileHmrSigmaDropLog s6Step151EarlyControlHistoryArena false 0 0 254 779 []=some s6Step151EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step151EarlyControl_sigmaOwned⟩
  · exact s6Step151EarlyControl_sigmaRelease

private theorem s6Step151EarlyControl_zeroBorrow : s6Step151EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step151EarlyControlLog.zeroWork=some s6Step151EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step151EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step151EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step151EarlyControlArena s6Step151EarlyControlZeroArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step151EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step151EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step151EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step151EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step151EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151EarlyControl_zero : compileHmrEqualityLog s6Step151EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step151EarlyControlLog.zeroWork=some (s6Step151EarlyControlZeroArena,s6Step151EarlyControlLog.zeroWork,s6Step151EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step151EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step151EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step151EarlyControl_logged : s6Step151EarlyControlPlan.Logged s6Step151EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 779 254 253 252 251 881 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step151EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step151EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step151EarlyControl_zero
  · exact s6Step151EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step151EarlyControl_flags
  · exact s6Step151EarlyControl_fit
  · exact s6Step151EarlyControl_history
  · exact s6Step151EarlyControl_sigma
  · exact s6Step151EarlyControl_branch

private theorem s6Step151EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step151EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 779 254 253 252 251 881 42 s6Step151EarlyControlLog=some s6Step151EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step151EarlyControlPlan s6Step151EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 779 254 253 252 251 881 42 s6Step151EarlyControl_logged

private def s6Step151EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step151EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449],795⟩

private def s6Step151EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807],776⟩

private def s6Step151EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],777⟩

private def s6Step151EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855],775⟩

private def s6Step151FrontBank : WindowBank := ⟨s6Step151EntryFRow,s6Step151EntryGRow,s6Step151EntryFvRow,s6Step151EntryGvRow⟩

private def s6Step151Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 879, 795]

private def s6Step151Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908, 887, 777]

private def s6Step151Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 776]

private def s6Step151Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 768, 859, 775]

private theorem s6Step151Counter_apart : Disjoint s6Step151HeadFvAfter.live s6Step151CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step151HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step151Counter_borrowed : s6Step151HeadFvAfter.checkBorrow 4 s6Step151CounterWork=some s6Step151CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step151HeadFvAfter s6Step151CounterDuring s6Step151CounterWork.toFinset s6Step151Counter_bounded s6Step151Counter_apart rfl

private theorem s6Step151Counter_owned : (779::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step151HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step151HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step151Counter_checked : compileHmrCounterStepLog s6Step151HeadFvAfter true 779 [774, 773, 772, 771, 770, 769] s6Step151CounterWork=some s6Step151CounterDuring := by
  have owned : ∀q∈779::[774, 773, 772, 771, 770, 769],q∈s6Step151HeadFvAfter.live := fun q hq => s6Step151Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step151Counter_borrowed

private def s6Step151EntryFAfter : Arena := s6Step151EntryFBefore

private theorem s6Step151EntryBank_incomingDistinct : ([s6Step151EntryFRow,s6Step151EntryGRow,s6Step151EntryFvRow,s6Step151EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151EntryF_Incoming : rowsOwned s6Step151EntryFBefore [s6Step151EntryFRow,s6Step151EntryGRow,s6Step151EntryFvRow,s6Step151EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step151EntryFRow,s6Step151EntryGRow,s6Step151EntryFvRow,s6Step151EntryGvRow] 0 s6Step151EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step151EntryFBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step151EntryBank_outgoingOwned : rowsOwned s6Step151EntryGvAfter [s6Step151EntryFOut,s6Step151EntryGOut,s6Step151EntryFvOut,s6Step151EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step151EntryGvAfter (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step151EntryF_Outgoing : rowsOwned s6Step151EntryGvAfter [s6Step151EntryFOut,s6Step151EntryGOut,s6Step151EntryFvOut,s6Step151EntryGvOut] :=
  hmrRows_owned_drop s6Step151EntryGvAfter [s6Step151EntryFOut,s6Step151EntryGOut,s6Step151EntryFvOut,s6Step151EntryGvOut] 0 s6Step151EntryBank_outgoingOwned

private theorem s6Step151EntryF_distinct : (s6Step151EntryFRow.sign::s6Step151EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151EntryF_owned : (s6Step151EntryFRow.sign::s6Step151EntryFRow.payload).toFinset⊆s6Step151EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step151EntryFBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151EntryF_reserved : s6Step151EntryFBefore.reserve s6Step151EntryFFresh.toFinset=some s6Step151EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step151EntryFFresh,arenaWires]
  · norm_num [s6Step151EntryFBefore,s6Step151EntryFFresh,arenaWires]
  · simp only [s6Step151EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step151EntryF_checked : planRowResizeLog s6Step151EntryFBefore s6Step151EntryFRow 194 s6Step151EntryFFresh=
    some (s6Step151EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449],795⟩,growRow 795 s6Step151EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step151EntryFBefore s6Step151EntryFAfter s6Step151EntryFRow 194 s6Step151EntryFFresh
    s6Step151EntryF_distinct s6Step151EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step151EntryF_reserved
  have rowEq : WindowRow.mk (s6Step151EntryFRow.payload++s6Step151EntryFFresh) s6Step151EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step151EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step151EntryFvAfter : Arena := s6Step151EntryGAfter

private def s6Step151EntryFvBefore : Arena := s6Step151EntryGAfter

private theorem s6Step151EntryFv_Incoming : rowsOwned s6Step151EntryFvBefore [s6Step151EntryFvRow,s6Step151EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step151EntryFRow,s6Step151EntryGRow,s6Step151EntryFvRow,s6Step151EntryGvRow] 2 s6Step151EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step151EntryFvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step151EntryFv_Outgoing : rowsOwned s6Step151EntryGvAfter [s6Step151EntryFvOut,s6Step151EntryGvOut] :=
  hmrRows_owned_drop s6Step151EntryGvAfter [s6Step151EntryFOut,s6Step151EntryGOut,s6Step151EntryFvOut,s6Step151EntryGvOut] 2 s6Step151EntryBank_outgoingOwned

private theorem s6Step151EntryFv_distinct : (s6Step151EntryFvRow.sign::s6Step151EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151EntryFv_owned : (s6Step151EntryFvRow.sign::s6Step151EntryFvRow.payload).toFinset⊆s6Step151EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step151EntryFvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151EntryFv_reserved : s6Step151EntryFvBefore.reserve s6Step151EntryFvFresh.toFinset=some s6Step151EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step151EntryFvFresh,arenaWires]
  · norm_num [s6Step151EntryFvBefore,s6Step151EntryGAfter,s6Step151EntryFvFresh,arenaWires]
  · simp only [s6Step151EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step151EntryFv_checked : planRowResizeLog s6Step151EntryFvBefore s6Step151EntryFvRow 90 s6Step151EntryFvFresh=
    some (s6Step151EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807],776⟩,growRow 776 s6Step151EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step151EntryFvBefore s6Step151EntryFvAfter s6Step151EntryFvRow 90 s6Step151EntryFvFresh
    s6Step151EntryFv_distinct s6Step151EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step151EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step151EntryFvRow.payload++s6Step151EntryFvFresh) s6Step151EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step151EntryGBefore : Arena := s6Step151EntryFBefore

private theorem s6Step151EntryG_Incoming : rowsOwned s6Step151EntryGBefore [s6Step151EntryGRow,s6Step151EntryFvRow,s6Step151EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step151EntryFRow,s6Step151EntryGRow,s6Step151EntryFvRow,s6Step151EntryGvRow] 1 s6Step151EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step151EntryGBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step151EntryG_Outgoing : rowsOwned s6Step151EntryGvAfter [s6Step151EntryGOut,s6Step151EntryFvOut,s6Step151EntryGvOut] :=
  hmrRows_owned_drop s6Step151EntryGvAfter [s6Step151EntryFOut,s6Step151EntryGOut,s6Step151EntryFvOut,s6Step151EntryGvOut] 1 s6Step151EntryBank_outgoingOwned

private theorem s6Step151EntryG_distinct : (s6Step151EntryGRow.sign::s6Step151EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151EntryG_owned : (s6Step151EntryGRow.sign::s6Step151EntryGRow.payload).toFinset⊆s6Step151EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step151EntryGBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151EntryG_reserved : s6Step151EntryGBefore.reserve s6Step151EntryGFresh.toFinset=some s6Step151EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step151EntryGFresh,arenaWires]
  · norm_num [s6Step151EntryGBefore,s6Step151EntryFBefore,s6Step151EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step151EntryGBefore s6Step151EntryGAfter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step151EntryGFresh rfl rfl
    · norm_num [s6Step151EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step151EntryG_checked : planRowResizeLog s6Step151EntryGBefore s6Step151EntryGRow 194 s6Step151EntryGFresh=
    some (s6Step151EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908],777⟩,growRow 777 s6Step151EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step151EntryGBefore s6Step151EntryGAfter s6Step151EntryGRow 194 s6Step151EntryGFresh
    s6Step151EntryG_distinct s6Step151EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step151EntryG_reserved
  have rowEq : WindowRow.mk (s6Step151EntryGRow.payload++s6Step151EntryGFresh) s6Step151EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step151EntryGvBefore : Arena := s6Step151EntryGAfter

private theorem s6Step151EntryGv_Incoming : rowsOwned s6Step151EntryGvBefore [s6Step151EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step151EntryFRow,s6Step151EntryGRow,s6Step151EntryFvRow,s6Step151EntryGvRow] 3 s6Step151EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step151EntryGvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step151EntryGv_Outgoing : rowsOwned s6Step151EntryGvAfter [s6Step151EntryGvOut] :=
  hmrRows_owned_drop s6Step151EntryGvAfter [s6Step151EntryFOut,s6Step151EntryGOut,s6Step151EntryFvOut,s6Step151EntryGvOut] 3 s6Step151EntryBank_outgoingOwned

private theorem s6Step151EntryGv_distinct : (s6Step151EntryGvRow.sign::s6Step151EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151EntryGv_owned : (s6Step151EntryGvRow.sign::s6Step151EntryGvRow.payload).toFinset⊆s6Step151EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step151EntryGvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151EntryGv_reserved : s6Step151EntryGvBefore.reserve s6Step151EntryGvFresh.toFinset=some s6Step151EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step151EntryGvFresh,arenaWires]
  · norm_num [s6Step151EntryGvBefore,s6Step151EntryGAfter,s6Step151EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step151EntryGvBefore s6Step151EntryGvAfter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step151EntryGvFresh rfl rfl
    · norm_num [s6Step151EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step151EntryGv_checked : planRowResizeLog s6Step151EntryGvBefore s6Step151EntryGvRow 90 s6Step151EntryGvFresh=
    some (s6Step151EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 768],775⟩,growRow 775 s6Step151EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step151EntryGvBefore s6Step151EntryGvAfter s6Step151EntryGvRow 90 s6Step151EntryGvFresh
    s6Step151EntryGv_distinct s6Step151EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step151EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step151EntryGvRow.payload++s6Step151EntryGvFresh) s6Step151EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 768],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step151EntryBank_rows : planWindowRowsLog s6Step151EntryFBefore [(s6Step151EntryFRow,194),(s6Step151EntryGRow,194),(s6Step151EntryFvRow,90),(s6Step151EntryGvRow,90)] [s6Step151EntryFFresh,s6Step151EntryGFresh,s6Step151EntryFvFresh,s6Step151EntryGvFresh]=
    some (s6Step151EntryGvAfter,[s6Step151EntryFOut,s6Step151EntryGOut,s6Step151EntryFvOut,s6Step151EntryGvOut],(growRow 795 s6Step151EntryFFresh ++ (growRow 777 s6Step151EntryGFresh ++ (growRow 776 s6Step151EntryFvFresh ++ (growRow 775 s6Step151EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step151EntryGvAfter [] []=some (s6Step151EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step151EntryGvBefore s6Step151EntryGvAfter s6Step151EntryGvAfter
    s6Step151EntryGvRow s6Step151EntryGvOut 90 s6Step151EntryGvFresh [] [] []
    (growRow 775 s6Step151EntryGvFresh) ([]) s6Step151EntryGv_Incoming s6Step151EntryGv_checked h4 s6Step151EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step151EntryFvBefore s6Step151EntryFvAfter s6Step151EntryGvAfter
    s6Step151EntryFvRow s6Step151EntryFvOut 90 s6Step151EntryFvFresh [(s6Step151EntryGvRow,90)] [s6Step151EntryGvFresh] [s6Step151EntryGvOut]
    (growRow 776 s6Step151EntryFvFresh) ((growRow 775 s6Step151EntryGvFresh ++ [])) s6Step151EntryFv_Incoming s6Step151EntryFv_checked h3 s6Step151EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step151EntryGBefore s6Step151EntryGAfter s6Step151EntryGvAfter
    s6Step151EntryGRow s6Step151EntryGOut 194 s6Step151EntryGFresh [(s6Step151EntryFvRow,90),(s6Step151EntryGvRow,90)] [s6Step151EntryFvFresh,s6Step151EntryGvFresh] [s6Step151EntryFvOut,s6Step151EntryGvOut]
    (growRow 777 s6Step151EntryGFresh) ((growRow 776 s6Step151EntryFvFresh ++ (growRow 775 s6Step151EntryGvFresh ++ []))) s6Step151EntryG_Incoming s6Step151EntryG_checked h2 s6Step151EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step151EntryFBefore s6Step151EntryFAfter s6Step151EntryGvAfter
    s6Step151EntryFRow s6Step151EntryFOut 194 s6Step151EntryFFresh [(s6Step151EntryGRow,194),(s6Step151EntryFvRow,90),(s6Step151EntryGvRow,90)] [s6Step151EntryGFresh,s6Step151EntryFvFresh,s6Step151EntryGvFresh] [s6Step151EntryGOut,s6Step151EntryFvOut,s6Step151EntryGvOut]
    (growRow 795 s6Step151EntryFFresh) ((growRow 777 s6Step151EntryGFresh ++ (growRow 776 s6Step151EntryFvFresh ++ (growRow 775 s6Step151EntryGvFresh ++ [])))) s6Step151EntryF_Incoming s6Step151EntryF_checked h1 s6Step151EntryF_Outgoing
  exact h0

private theorem s6Step151EntryBank_checked : compileHmrBankResizeLog .entry s6Step151EntryFBefore ⟨s6Step151EntryFRow,s6Step151EntryGRow,s6Step151EntryFvRow,s6Step151EntryGvRow⟩ ⟨194,194,90,90⟩ [s6Step151EntryFFresh,s6Step151EntryGFresh,s6Step151EntryFvFresh,s6Step151EntryGvFresh]=
    some (s6Step151EntryGvAfter,⟨s6Step151EntryFOut,s6Step151EntryGOut,s6Step151EntryFvOut,s6Step151EntryGvOut⟩,(growRow 795 s6Step151EntryFFresh ++ (growRow 777 s6Step151EntryGFresh ++ (growRow 776 s6Step151EntryFvFresh ++ (growRow 775 s6Step151EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step151EntryBank_rows]
  rfl

private def s6Step151ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,449),(450,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step151ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step151ExitFBefore : Arena := s6Step151ExitGAfter

private def s6Step151ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 879],795⟩

private def s6Step151ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858],776⟩

private def s6Step151ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908, 887],777⟩

private def s6Step151ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 768, 859],775⟩

private theorem s6Step151ExitBank_incomingDistinct : ([s6Step151ExitGRow,s6Step151ExitFRow,s6Step151ExitFvRow,s6Step151ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151ExitF_Incoming : rowsOwned s6Step151ExitFBefore [s6Step151ExitFRow,s6Step151ExitFvRow,s6Step151ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step151ExitGRow,s6Step151ExitFRow,s6Step151ExitFvRow,s6Step151ExitGvRow] 1 s6Step151ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step151ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step151ExitBank_outgoingOwned : rowsOwned s6Step151ExitGvAfter [s6Step151ExitGOut,s6Step151ExitFOut,s6Step151ExitFvOut,s6Step151ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step151ExitGvAfter (fun q => ([(0,449),(450,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step151ExitF_Outgoing : rowsOwned s6Step151ExitGvAfter [s6Step151ExitFOut,s6Step151ExitFvOut,s6Step151ExitGvOut] :=
  hmrRows_owned_drop s6Step151ExitGvAfter [s6Step151ExitGOut,s6Step151ExitFOut,s6Step151ExitFvOut,s6Step151ExitGvOut] 1 s6Step151ExitBank_outgoingOwned

private theorem s6Step151ExitF_distinct : (s6Step151ExitFRow.sign::s6Step151ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151ExitF_owned : (s6Step151ExitFRow.sign::s6Step151ExitFRow.payload).toFinset⊆s6Step151ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step151ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151ExitF_retired : s6Step151ExitFBefore.retireSet s6Step151ExitFExtra.toFinset=s6Step151ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step151ExitFBefore s6Step151ExitFAfter s6Step151ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step151ExitFBefore s6Step151ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,449),(450,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step151ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step151ExitF_checked : planRowResizeLog s6Step151ExitFBefore s6Step151ExitFRow 193 []=
    some (s6Step151ExitFAfter,s6Step151ExitFOut,shrinkRow 795 s6Step151ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step151ExitFBefore s6Step151ExitFRow 193 s6Step151ExitF_distinct s6Step151ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step151ExitFRow.payload.take 193) s6Step151ExitFRow.sign=s6Step151ExitFOut := by decide +kernel
  have hi : s6Step151ExitFRow.payload.drop 193=s6Step151ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step151ExitF_retired] at result
  exact result

private def s6Step151ExitFvAfter : Arena := s6Step151ExitFAfter

private def s6Step151ExitFvBefore : Arena := s6Step151ExitFAfter

private theorem s6Step151ExitFv_Incoming : rowsOwned s6Step151ExitFvBefore [s6Step151ExitFvRow,s6Step151ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step151ExitGRow,s6Step151ExitFRow,s6Step151ExitFvRow,s6Step151ExitGvRow] 2 s6Step151ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step151ExitFvBefore (fun q => ([(0,449),(450,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step151ExitFv_Outgoing : rowsOwned s6Step151ExitGvAfter [s6Step151ExitFvOut,s6Step151ExitGvOut] :=
  hmrRows_owned_drop s6Step151ExitGvAfter [s6Step151ExitGOut,s6Step151ExitFOut,s6Step151ExitFvOut,s6Step151ExitGvOut] 2 s6Step151ExitBank_outgoingOwned

private theorem s6Step151ExitFv_distinct : (s6Step151ExitFvRow.sign::s6Step151ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151ExitFv_owned : (s6Step151ExitFvRow.sign::s6Step151ExitFvRow.payload).toFinset⊆s6Step151ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step151ExitFvBefore (fun q => ([(0,449),(450,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151ExitFv_reserved : s6Step151ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step151ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step151ExitFv_checked : planRowResizeLog s6Step151ExitFvBefore s6Step151ExitFvRow 91 []=
    some (s6Step151ExitFvAfter,s6Step151ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step151ExitFvBefore s6Step151ExitFvAfter s6Step151ExitFvRow 91 []
    s6Step151ExitFv_distinct s6Step151ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step151ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step151ExitFvRow.payload++[]) s6Step151ExitFvRow.sign=s6Step151ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step151ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step151ExitG_Incoming : rowsOwned s6Step151ExitGBefore [s6Step151ExitGRow,s6Step151ExitFRow,s6Step151ExitFvRow,s6Step151ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step151ExitGRow,s6Step151ExitFRow,s6Step151ExitFvRow,s6Step151ExitGvRow] 0 s6Step151ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step151ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step151ExitG_Outgoing : rowsOwned s6Step151ExitGvAfter [s6Step151ExitGOut,s6Step151ExitFOut,s6Step151ExitFvOut,s6Step151ExitGvOut] :=
  hmrRows_owned_drop s6Step151ExitGvAfter [s6Step151ExitGOut,s6Step151ExitFOut,s6Step151ExitFvOut,s6Step151ExitGvOut] 0 s6Step151ExitBank_outgoingOwned

private theorem s6Step151ExitG_distinct : (s6Step151ExitGRow.sign::s6Step151ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151ExitG_owned : (s6Step151ExitGRow.sign::s6Step151ExitGRow.payload).toFinset⊆s6Step151ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step151ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step151ExitG_retired : s6Step151ExitGBefore.retireSet s6Step151ExitGExtra.toFinset=s6Step151ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step151ExitGBefore s6Step151ExitGAfter s6Step151ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step151ExitGBefore s6Step151ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step151ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step151ExitG_checked : planRowResizeLog s6Step151ExitGBefore s6Step151ExitGRow 194 []=
    some (s6Step151ExitGAfter,s6Step151ExitGOut,shrinkRow 777 s6Step151ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step151ExitGBefore s6Step151ExitGRow 194 s6Step151ExitG_distinct s6Step151ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step151ExitGRow.payload.take 194) s6Step151ExitGRow.sign=s6Step151ExitGOut := by decide +kernel
  have hi : s6Step151ExitGRow.payload.drop 194=s6Step151ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step151ExitG_retired] at result
  exact result

private def s6Step151ExitGvBefore : Arena := s6Step151ExitFAfter

private theorem s6Step151ExitGv_Incoming : rowsOwned s6Step151ExitGvBefore [s6Step151ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step151ExitGRow,s6Step151ExitFRow,s6Step151ExitFvRow,s6Step151ExitGvRow] 3 s6Step151ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step151ExitGvBefore (fun q => ([(0,449),(450,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step151ExitGv_Outgoing : rowsOwned s6Step151ExitGvAfter [s6Step151ExitGvOut] :=
  hmrRows_owned_drop s6Step151ExitGvAfter [s6Step151ExitGOut,s6Step151ExitFOut,s6Step151ExitFvOut,s6Step151ExitGvOut] 3 s6Step151ExitBank_outgoingOwned

private theorem s6Step151ExitGv_distinct : (s6Step151ExitGvRow.sign::s6Step151ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151ExitGv_owned : (s6Step151ExitGvRow.sign::s6Step151ExitGvRow.payload).toFinset⊆s6Step151ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step151ExitGvBefore (fun q => ([(0,449),(450,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151ExitGv_retired : s6Step151ExitGvBefore.retireSet s6Step151ExitGvExtra.toFinset=s6Step151ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step151ExitGvBefore s6Step151ExitGvAfter s6Step151ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step151ExitGvBefore s6Step151ExitGvAfter (fun q => ([(0,449),(450,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,449),(450,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step151ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step151ExitGv_checked : planRowResizeLog s6Step151ExitGvBefore s6Step151ExitGvRow 89 []=
    some (s6Step151ExitGvAfter,s6Step151ExitGvOut,shrinkRow 775 s6Step151ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step151ExitGvBefore s6Step151ExitGvRow 89 s6Step151ExitGv_distinct s6Step151ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step151ExitGvRow.payload.take 89) s6Step151ExitGvRow.sign=s6Step151ExitGvOut := by decide +kernel
  have hi : s6Step151ExitGvRow.payload.drop 89=s6Step151ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step151ExitGv_retired] at result
  exact result

private theorem s6Step151ExitBank_rows : planWindowRowsLog s6Step151ExitGBefore [(s6Step151ExitGRow,194),(s6Step151ExitFRow,193),(s6Step151ExitFvRow,91),(s6Step151ExitGvRow,89)] [[],[],[],[]]=
    some (s6Step151ExitGvAfter,[s6Step151ExitGOut,s6Step151ExitFOut,s6Step151ExitFvOut,s6Step151ExitGvOut],(shrinkRow 777 s6Step151ExitGExtra ++ (shrinkRow 795 s6Step151ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step151ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step151ExitGvAfter [] []=some (s6Step151ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step151ExitGvBefore s6Step151ExitGvAfter s6Step151ExitGvAfter
    s6Step151ExitGvRow s6Step151ExitGvOut 89 [] [] [] []
    (shrinkRow 775 s6Step151ExitGvExtra) ([]) s6Step151ExitGv_Incoming s6Step151ExitGv_checked h4 s6Step151ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step151ExitFvBefore s6Step151ExitFvAfter s6Step151ExitGvAfter
    s6Step151ExitFvRow s6Step151ExitFvOut 91 [] [(s6Step151ExitGvRow,89)] [[]] [s6Step151ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step151ExitGvExtra ++ [])) s6Step151ExitFv_Incoming s6Step151ExitFv_checked h3 s6Step151ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step151ExitFBefore s6Step151ExitFAfter s6Step151ExitGvAfter
    s6Step151ExitFRow s6Step151ExitFOut 193 [] [(s6Step151ExitFvRow,91),(s6Step151ExitGvRow,89)] [[],[]] [s6Step151ExitFvOut,s6Step151ExitGvOut]
    (shrinkRow 795 s6Step151ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step151ExitGvExtra ++ []))) s6Step151ExitF_Incoming s6Step151ExitF_checked h2 s6Step151ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step151ExitGBefore s6Step151ExitGAfter s6Step151ExitGvAfter
    s6Step151ExitGRow s6Step151ExitGOut 194 [] [(s6Step151ExitFRow,193),(s6Step151ExitFvRow,91),(s6Step151ExitGvRow,89)] [[],[],[]] [s6Step151ExitFOut,s6Step151ExitFvOut,s6Step151ExitGvOut]
    (shrinkRow 777 s6Step151ExitGExtra) ((shrinkRow 795 s6Step151ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step151ExitGvExtra ++ [])))) s6Step151ExitG_Incoming s6Step151ExitG_checked h1 s6Step151ExitG_Outgoing
  exact h0

private theorem s6Step151ExitBank_checked : compileHmrBankResizeLog .exit s6Step151ExitGBefore ⟨s6Step151ExitFRow,s6Step151ExitGRow,s6Step151ExitFvRow,s6Step151ExitGvRow⟩ ⟨193,194,91,89⟩ [[],[],[],[]]=
    some (s6Step151ExitGvAfter,⟨s6Step151ExitFOut,s6Step151ExitGOut,s6Step151ExitFvOut,s6Step151ExitGvOut⟩,(shrinkRow 777 s6Step151ExitGExtra ++ (shrinkRow 795 s6Step151ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step151ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step151ExitBank_rows]
  rfl

private theorem s6Step151Add0_apart : Disjoint s6Step151Add0Arena.live s6Step151Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step151Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step151Add0_card : s6Step151Add0Arena.live.card=884 := by
  decide +kernel

private theorem s6Step151Add0_borrowed : s6Step151Add0Arena.checkBorrow (hmrHybridCount s6Step151Add0Arena s6Step151Add0B.length) s6Step151Add0Work=some s6Step151Add0During := by
  have len : s6Step151Add0Work.length=hmrHybridCount s6Step151Add0Arena s6Step151Add0B.length := by
    rw [hmrHybridCount,s6Step151Add0_card]
    decide +kernel
  have nd : s6Step151Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step151Add0Arena s6Step151Add0During s6Step151Add0Work.toFinset s6Step151Add0_bounded s6Step151Add0_apart rfl

private theorem s6Step151Add0_distinct : (875::881::882::(s6Step151Add0A++s6Step151Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151Add0_owned : (875::881::882::(s6Step151Add0A++s6Step151Add0B)).toFinset⊆s6Step151Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step151Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step151Add0_checked : compileHmrHybridCinLog s6Step151Add0Arena 881 875 882 s6Step151Add0A s6Step151Add0B s6Step151Add0Work=some s6Step151Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step151Add0Arena s6Step151Add0During 881 875 882 s6Step151Add0A s6Step151Add0B s6Step151Add0Work
    (by decide +kernel) (by decide +kernel) s6Step151Add0_distinct
    (fun q hq => s6Step151Add0_owned (List.mem_toFinset.mpr hq)) s6Step151Add0_borrowed

private theorem s6Step151Add1_apart : Disjoint s6Step151Add1Arena.live s6Step151Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step151Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step151Add1_card : s6Step151Add1Arena.live.card=884 := by
  decide +kernel

private theorem s6Step151Add1_borrowed : s6Step151Add1Arena.checkBorrow (hmrHybridCount s6Step151Add1Arena s6Step151Add1B.length) s6Step151Add1Work=some s6Step151Add1During := by
  have len : s6Step151Add1Work.length=hmrHybridCount s6Step151Add1Arena s6Step151Add1B.length := by
    rw [hmrHybridCount,s6Step151Add1_card]
    decide +kernel
  have nd : s6Step151Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step151Add1Arena s6Step151Add1During s6Step151Add1Work.toFinset s6Step151Add1_bounded s6Step151Add1_apart rfl

private theorem s6Step151Add1_distinct : (875::881::882::(s6Step151Add1A++s6Step151Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151Add1_owned : (875::881::882::(s6Step151Add1A++s6Step151Add1B)).toFinset⊆s6Step151Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step151Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step151Add1_checked : compileHmrHybridCinLog s6Step151Add1Arena 881 875 882 s6Step151Add1A s6Step151Add1B s6Step151Add1Work=some s6Step151Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step151Add1Arena s6Step151Add1During 881 875 882 s6Step151Add1A s6Step151Add1B s6Step151Add1Work
    (by decide +kernel) (by decide +kernel) s6Step151Add1_distinct
    (fun q hq => s6Step151Add1_owned (List.mem_toFinset.mpr hq)) s6Step151Add1_borrowed

private theorem s6Step151F4_apart : Disjoint (s6Step151Add0A++s6Step151Add0B).toFinset (s6Step151Add1A++s6Step151Add1B).toFinset := by
  have nd : ((s6Step151Add0A++s6Step151Add0B)++(s6Step151Add1A++s6Step151Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step151F4_carry : s6Step151F4FlagArena.checkBorrow 1 [882]=some s6Step151Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step151F4FlagArena,s6Step151HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step151F4FlagArena,s6Step151HeadFvAfter,s6Step151Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step151F4_distinct : (779::881::875::882::((s6Step151Add0A++s6Step151Add1A)++(s6Step151Add0B++s6Step151Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151F4_flag : s6Step151HeadFvAfter.checkBorrow 1 [875]=some s6Step151F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step151HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step151F4_owned : (779::881::((s6Step151Add0A++s6Step151Add1A)++(s6Step151Add0B++s6Step151Add1B))).toFinset⊆s6Step151HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step151HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step151F4_checked : compileHmrHybridF4Log s6Step151HeadFvAfter 779 881 s6Step151Add0A s6Step151Add0B s6Step151Add1A s6Step151Add1B [875] [882] s6Step151Add0Work s6Step151Add1Work=some s6Step151F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step151HeadFvAfter s6Step151F4FlagArena s6Step151Add0Arena s6Step151Add0During s6Step151Add1During 779 881
    s6Step151Add0A s6Step151Add0B s6Step151Add1A s6Step151Add1B [875] [882] s6Step151Add0Work s6Step151Add1Work
    (fun q hq => s6Step151F4_owned (List.mem_toFinset.mpr hq)) s6Step151F4_flag s6Step151F4_carry
    s6Step151F4_distinct s6Step151F4_apart s6Step151Add0_checked s6Step151Add1_checked

private theorem s6Step151Front_branch : s6Step151FrontSigmaArena.checkBorrow 1 [881]=some s6Step151HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step151FrontSigmaArena,s6Step151EntryGvAfter,arenaWires]
  · change s6Step151HeadGBefore.live=(s6Step151EntryGvAfter.live∪{779})∪{881}
    apply hmrArena_union_pair_of_filter_check s6Step151EntryGvAfter s6Step151HeadGBefore (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 779 881 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step151Front_entry : HmrFrontEntryValid s6Step151EntryFBefore s6Step151FrontBank 194 90 ⟨193,194,91,89⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step151FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step151EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step151EntryFBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step151FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step151Front_sigma : s6Step151EntryGvAfter.checkBorrow 1 [779]=some s6Step151FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step151EntryGvAfter,arenaWires]
  · rfl

private def s6Step151HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step151HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step151HeadFBefore : Arena := s6Step151HeadGAfter

private def s6Step151HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449],795⟩

private def s6Step151HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807],776⟩

private def s6Step151HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908],777⟩

private def s6Step151HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 768],775⟩

private theorem s6Step151HeadBank_incomingDistinct : ([s6Step151HeadGRow,s6Step151HeadFRow,s6Step151HeadGvRow,s6Step151HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151HeadF_Incoming : rowsOwned s6Step151HeadFBefore [s6Step151HeadFRow,s6Step151HeadGvRow,s6Step151HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step151HeadGRow,s6Step151HeadFRow,s6Step151HeadGvRow,s6Step151HeadFvRow] 1 s6Step151HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step151HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step151HeadBank_outgoingOwned : rowsOwned s6Step151HeadFvAfter [s6Step151HeadGOut,s6Step151HeadFOut,s6Step151HeadGvOut,s6Step151HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step151HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step151HeadF_Outgoing : rowsOwned s6Step151HeadFvAfter [s6Step151HeadFOut,s6Step151HeadGvOut,s6Step151HeadFvOut] :=
  hmrRows_owned_drop s6Step151HeadFvAfter [s6Step151HeadGOut,s6Step151HeadFOut,s6Step151HeadGvOut,s6Step151HeadFvOut] 1 s6Step151HeadBank_outgoingOwned

private theorem s6Step151HeadF_distinct : (s6Step151HeadFRow.sign::s6Step151HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151HeadF_owned : (s6Step151HeadFRow.sign::s6Step151HeadFRow.payload).toFinset⊆s6Step151HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step151HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151HeadF_reserved : s6Step151HeadFBefore.reserve s6Step151HeadFFresh.toFinset=some s6Step151HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step151HeadFFresh,arenaWires]
  · norm_num [s6Step151HeadFBefore,s6Step151HeadGAfter,s6Step151HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step151HeadFBefore s6Step151HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step151HeadFFresh rfl rfl
    · norm_num [s6Step151HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step151HeadF_checked : planRowResizeLog s6Step151HeadFBefore s6Step151HeadFRow 195 s6Step151HeadFFresh=
    some (s6Step151HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 879],795⟩,growRow 795 s6Step151HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step151HeadFBefore s6Step151HeadFAfter s6Step151HeadFRow 195 s6Step151HeadFFresh
    s6Step151HeadF_distinct s6Step151HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step151HeadF_reserved
  have rowEq : WindowRow.mk (s6Step151HeadFRow.payload++s6Step151HeadFFresh) s6Step151HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 879],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step151HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step151HeadFvBefore : Arena := s6Step151HeadGvAfter

private theorem s6Step151HeadFv_Incoming : rowsOwned s6Step151HeadFvBefore [s6Step151HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step151HeadGRow,s6Step151HeadFRow,s6Step151HeadGvRow,s6Step151HeadFvRow] 3 s6Step151HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step151HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step151HeadFv_Outgoing : rowsOwned s6Step151HeadFvAfter [s6Step151HeadFvOut] :=
  hmrRows_owned_drop s6Step151HeadFvAfter [s6Step151HeadGOut,s6Step151HeadFOut,s6Step151HeadGvOut,s6Step151HeadFvOut] 3 s6Step151HeadBank_outgoingOwned

private theorem s6Step151HeadFv_distinct : (s6Step151HeadFvRow.sign::s6Step151HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151HeadFv_owned : (s6Step151HeadFvRow.sign::s6Step151HeadFvRow.payload).toFinset⊆s6Step151HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step151HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151HeadFv_reserved : s6Step151HeadFvBefore.reserve s6Step151HeadFvFresh.toFinset=some s6Step151HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step151HeadFvFresh,arenaWires]
  · norm_num [s6Step151HeadFvBefore,s6Step151HeadGvAfter,s6Step151HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step151HeadFvBefore s6Step151HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step151HeadFvFresh rfl rfl
    · norm_num [s6Step151HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step151HeadFv_checked : planRowResizeLog s6Step151HeadFvBefore s6Step151HeadFvRow 91 s6Step151HeadFvFresh=
    some (s6Step151HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858],776⟩,growRow 776 s6Step151HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step151HeadFvBefore s6Step151HeadFvAfter s6Step151HeadFvRow 91 s6Step151HeadFvFresh
    s6Step151HeadFv_distinct s6Step151HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step151HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step151HeadFvRow.payload++s6Step151HeadFvFresh) s6Step151HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step151HeadG_Incoming : rowsOwned s6Step151HeadGBefore [s6Step151HeadGRow,s6Step151HeadFRow,s6Step151HeadGvRow,s6Step151HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step151HeadGRow,s6Step151HeadFRow,s6Step151HeadGvRow,s6Step151HeadFvRow] 0 s6Step151HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step151HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step151HeadG_Outgoing : rowsOwned s6Step151HeadFvAfter [s6Step151HeadGOut,s6Step151HeadFOut,s6Step151HeadGvOut,s6Step151HeadFvOut] :=
  hmrRows_owned_drop s6Step151HeadFvAfter [s6Step151HeadGOut,s6Step151HeadFOut,s6Step151HeadGvOut,s6Step151HeadFvOut] 0 s6Step151HeadBank_outgoingOwned

private theorem s6Step151HeadG_distinct : (s6Step151HeadGRow.sign::s6Step151HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151HeadG_owned : (s6Step151HeadGRow.sign::s6Step151HeadGRow.payload).toFinset⊆s6Step151HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step151HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151HeadG_reserved : s6Step151HeadGBefore.reserve s6Step151HeadGFresh.toFinset=some s6Step151HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step151HeadGFresh,arenaWires]
  · norm_num [s6Step151HeadGBefore,s6Step151HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step151HeadGBefore s6Step151HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step151HeadGFresh rfl rfl
    · norm_num [s6Step151HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step151HeadG_checked : planRowResizeLog s6Step151HeadGBefore s6Step151HeadGRow 195 s6Step151HeadGFresh=
    some (s6Step151HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908, 887],777⟩,growRow 777 s6Step151HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step151HeadGBefore s6Step151HeadGAfter s6Step151HeadGRow 195 s6Step151HeadGFresh
    s6Step151HeadG_distinct s6Step151HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step151HeadG_reserved
  have rowEq : WindowRow.mk (s6Step151HeadGRow.payload++s6Step151HeadGFresh) s6Step151HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908, 887],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step151HeadGvBefore : Arena := s6Step151HeadFAfter

private theorem s6Step151HeadGv_Incoming : rowsOwned s6Step151HeadGvBefore [s6Step151HeadGvRow,s6Step151HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step151HeadGRow,s6Step151HeadFRow,s6Step151HeadGvRow,s6Step151HeadFvRow] 2 s6Step151HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step151HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step151HeadGv_Outgoing : rowsOwned s6Step151HeadFvAfter [s6Step151HeadGvOut,s6Step151HeadFvOut] :=
  hmrRows_owned_drop s6Step151HeadFvAfter [s6Step151HeadGOut,s6Step151HeadFOut,s6Step151HeadGvOut,s6Step151HeadFvOut] 2 s6Step151HeadBank_outgoingOwned

private theorem s6Step151HeadGv_distinct : (s6Step151HeadGvRow.sign::s6Step151HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step151HeadGv_owned : (s6Step151HeadGvRow.sign::s6Step151HeadGvRow.payload).toFinset⊆s6Step151HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step151HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step151HeadGv_reserved : s6Step151HeadGvBefore.reserve s6Step151HeadGvFresh.toFinset=some s6Step151HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step151HeadGvFresh,arenaWires]
  · norm_num [s6Step151HeadGvBefore,s6Step151HeadFAfter,s6Step151HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step151HeadGvBefore s6Step151HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(860,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,858),(859,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step151HeadGvFresh rfl rfl
    · norm_num [s6Step151HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step151HeadGv_checked : planRowResizeLog s6Step151HeadGvBefore s6Step151HeadGvRow 91 s6Step151HeadGvFresh=
    some (s6Step151HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 768, 859],775⟩,growRow 775 s6Step151HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step151HeadGvBefore s6Step151HeadGvAfter s6Step151HeadGvRow 91 s6Step151HeadGvFresh
    s6Step151HeadGv_distinct s6Step151HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step151HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step151HeadGvRow.payload++s6Step151HeadGvFresh) s6Step151HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 768, 859],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step151HeadBank_rows : planWindowRowsLog s6Step151HeadGBefore [(s6Step151HeadGRow,195),(s6Step151HeadFRow,195),(s6Step151HeadGvRow,91),(s6Step151HeadFvRow,91)] [s6Step151HeadGFresh,s6Step151HeadFFresh,s6Step151HeadGvFresh,s6Step151HeadFvFresh]=
    some (s6Step151HeadFvAfter,[s6Step151HeadGOut,s6Step151HeadFOut,s6Step151HeadGvOut,s6Step151HeadFvOut],(growRow 777 s6Step151HeadGFresh ++ (growRow 795 s6Step151HeadFFresh ++ (growRow 775 s6Step151HeadGvFresh ++ (growRow 776 s6Step151HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step151HeadFvAfter [] []=some (s6Step151HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step151HeadFvBefore s6Step151HeadFvAfter s6Step151HeadFvAfter
    s6Step151HeadFvRow s6Step151HeadFvOut 91 s6Step151HeadFvFresh [] [] []
    (growRow 776 s6Step151HeadFvFresh) ([]) s6Step151HeadFv_Incoming s6Step151HeadFv_checked h4 s6Step151HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step151HeadGvBefore s6Step151HeadGvAfter s6Step151HeadFvAfter
    s6Step151HeadGvRow s6Step151HeadGvOut 91 s6Step151HeadGvFresh [(s6Step151HeadFvRow,91)] [s6Step151HeadFvFresh] [s6Step151HeadFvOut]
    (growRow 775 s6Step151HeadGvFresh) ((growRow 776 s6Step151HeadFvFresh ++ [])) s6Step151HeadGv_Incoming s6Step151HeadGv_checked h3 s6Step151HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step151HeadFBefore s6Step151HeadFAfter s6Step151HeadFvAfter
    s6Step151HeadFRow s6Step151HeadFOut 195 s6Step151HeadFFresh [(s6Step151HeadGvRow,91),(s6Step151HeadFvRow,91)] [s6Step151HeadGvFresh,s6Step151HeadFvFresh] [s6Step151HeadGvOut,s6Step151HeadFvOut]
    (growRow 795 s6Step151HeadFFresh) ((growRow 775 s6Step151HeadGvFresh ++ (growRow 776 s6Step151HeadFvFresh ++ []))) s6Step151HeadF_Incoming s6Step151HeadF_checked h2 s6Step151HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step151HeadGBefore s6Step151HeadGAfter s6Step151HeadFvAfter
    s6Step151HeadGRow s6Step151HeadGOut 195 s6Step151HeadGFresh [(s6Step151HeadFRow,195),(s6Step151HeadGvRow,91),(s6Step151HeadFvRow,91)] [s6Step151HeadFFresh,s6Step151HeadGvFresh,s6Step151HeadFvFresh] [s6Step151HeadFOut,s6Step151HeadGvOut,s6Step151HeadFvOut]
    (growRow 777 s6Step151HeadGFresh) ((growRow 795 s6Step151HeadFFresh ++ (growRow 775 s6Step151HeadGvFresh ++ (growRow 776 s6Step151HeadFvFresh ++ [])))) s6Step151HeadG_Incoming s6Step151HeadG_checked h1 s6Step151HeadG_Outgoing
  exact h0

private theorem s6Step151HeadBank_checked : compileHmrBankResizeLog .headroom s6Step151HeadGBefore ⟨s6Step151HeadFRow,s6Step151HeadGRow,s6Step151HeadFvRow,s6Step151HeadGvRow⟩ ⟨195,195,91,91⟩ [s6Step151HeadGFresh,s6Step151HeadFFresh,s6Step151HeadGvFresh,s6Step151HeadFvFresh]=
    some (s6Step151HeadFvAfter,⟨s6Step151HeadFOut,s6Step151HeadGOut,s6Step151HeadFvOut,s6Step151HeadGvOut⟩,(growRow 777 s6Step151HeadGFresh ++ (growRow 795 s6Step151HeadFFresh ++ (growRow 775 s6Step151HeadGvFresh ++ (growRow 776 s6Step151HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step151HeadBank_rows]
  rfl

private theorem s6Step151Front_checked : compileHmrSourceFrontLog s6Step151EntryFBefore s6Step151FrontBank 194 90 ⟨193,194,91,89⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step151FrontLog=some s6Step151FrontPlan := by
  have pairEq : s6Step151FrontPair=⟨s6Step151HeadFRow,s6Step151HeadGRow,s6Step151HeadFvRow,s6Step151HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step151FrontHead=⟨s6Step151ExitFRow,s6Step151ExitGRow,s6Step151ExitFvRow,s6Step151ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step151Add0A=s6Step151FrontHead.f.wires := by decide +kernel
  have gEq : s6Step151Add0B=s6Step151FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step151Add1A=s6Step151FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step151Add1B=s6Step151FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step151EntryFBefore s6Step151FrontBank 194 90 ⟨193,194,91,89⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step151FrontLog s6Step151FrontPlan
  · exact s6Step151Front_entry
  · exact s6Step151EntryBank_checked
  · exact s6Step151Front_sigma
  · rfl
  · exact s6Step151Front_branch
  · rfl
  · simpa only [s6Step151FrontPlan,pairEq] using s6Step151HeadBank_checked
  · simpa only [s6Step151FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step151F4_checked
  · exact s6Step151Counter_checked
  · rfl
  · simpa only [s6Step151FrontPlan,headEq] using s6Step151ExitBank_checked

private theorem s6Step151Complete_explicit_checked : compileHmrEarlyStepLog s6Step151EntryFBefore s6Step151FrontBank 194 90 ⟨193,194,91,89⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step151CompleteLog=some s6Step151CompletePlan := by
  let Q := s6Step151EarlyControlPlan
  have hq := s6Step151EarlyControl_plan_checked
  have fv1 : s6Step151CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step151CompleteOut.fv.payload[2]?.getD s6Step151CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step151CompleteOut.fv.payload[3]?.getD s6Step151CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step151CompleteOut.fv.payload[4]?.getD s6Step151CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step151EntryFBefore s6Step151EarlyControlArena s6Step151FrontBank 194 90 ⟨193,194,91,89⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step151CompleteLog s6Step151FrontPlan Q
    s6Step151Front_checked s6Step151Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step151Complete_owned s6Step151Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step151EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 779 s6Step151CompleteOut.fv.second (s6Step151CompleteOut.fv.payload[2]?.getD s6Step151CompleteOut.fv.sign) (s6Step151CompleteOut.fv.payload[3]?.getD s6Step151CompleteOut.fv.sign) (s6Step151CompleteOut.fv.payload[4]?.getD s6Step151CompleteOut.fv.sign) 881 42 s6Step151EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep151Arena : Arena := s6Step151EntryFBefore
def s6PrivateStep151Bank : WindowBank := s6Step151FrontBank
def s6PrivateStep151Spec : HmrSourceWalkStepLog := ⟨194,90,⟨193,194,91,89⟩,42,.early s6Step151CompleteLog⟩
def s6PrivateStep151Plan : HmrSourceStepPlan := .early s6Step151CompletePlan
theorem s6PrivateStep151_source : s6PrivateStep151Spec=s6ObservedLogs144[7] := rfl
theorem s6PrivateStep151_checked : compileHmrSourceStepLog s6PrivateStep151Arena s6PrivateStep151Bank
    s6PrivateStep151Spec.fgWidth s6PrivateStep151Spec.vWidth s6PrivateStep151Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 151 s6PrivateStep151Spec.need none s6PrivateStep151Spec.log=some s6PrivateStep151Plan := by
  change compileHmrSourceStepLog s6Step151EntryFBefore s6Step151FrontBank 194 90 ⟨193,194,91,89⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 151 42 none (.early s6Step151CompleteLog)=some (.early s6Step151CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 151<498)]
  rw [s6Step151Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
