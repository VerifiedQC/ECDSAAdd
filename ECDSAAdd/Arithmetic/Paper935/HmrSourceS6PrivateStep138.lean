import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep136
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

private def s6Step138CompleteMoves : List (Wire × Wire) := [(867,456)]

private def s6Step138EarlyControlLog : HmrEarlyControlLog := ⟨[867, 850, 807, 822, 869],[879],[813],[875, 882, 891, 903, 791, 825],[836]⟩

private def s6Step138FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [879], [], [850]],[[813], [869], [807], [822]],[[], [], [], []]⟩,[768],[862],[875],[882],[891, 903, 791, 825, 836, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 836, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903]⟩

private def s6Step138CompleteLog : HmrEarlyStepLog := ⟨s6Step138FrontLog,s6Step138CompleteMoves,s6Step138EarlyControlLog⟩

private def s6Step138ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455],795⟩

private def s6Step138ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩

private def s6Step138ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],777⟩

private def s6Step138ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833],775⟩

private def s6Step138FrontOut : WindowBank := ⟨s6Step138ExitFOut,s6Step138ExitGOut,s6Step138ExitFvOut,s6Step138ExitGvOut⟩

private def s6Step138CompleteOut : WindowBank := s6Step138FrontOut.repacked s6Step138CompleteMoves

private def s6Step138EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step138EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step138EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step138EarlyControlPositiveArena,[879],s6Step138EarlyControlEqualityArena,[813],⟨⟨768,false⟩,[⟨⟨879,false⟩,813⟩]⟩⟩

private def s6Step138EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step138EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step138EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,862),(863,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,867⟩,⟨⟨772,false⟩,850⟩,⟨⟨771,false⟩,807⟩,⟨⟨770,false⟩,822⟩,⟨⟨769,false⟩,869⟩]⟩

private def s6Step138EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step138EarlyControlZeroArena,s6Step138EarlyControlZeroPlan,s6Step138EarlyControlClassPlan,s6Step138EarlyControlFlagArena,s6Step138EarlyControlFittedArena,s6Step138EarlyControlHistoryArena,s6Step138EarlyControlSigmaArena,s6Step138EarlyControlOutputArena,s6Step138EarlyControlLog⟩

private def s6Step138CounterWork : List Wire := [875, 882, 891, 903]

private theorem s6Step138Counter_bounded : s6Step138CounterWork.toFinset⊆arenaWires := by norm_num [s6Step138CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step138HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step138CounterDuring : Arena := ⟨s6Step138HeadFvAfter.live∪s6Step138CounterWork.toFinset,Finset.union_subset s6Step138HeadFvAfter.bounded s6Step138Counter_bounded⟩

private def s6Step138EntryFFresh : List Wire := []

private def s6Step138EntryFvFresh : List Wire := []

private def s6Step138EntryGFresh : List Wire := [879]

private def s6Step138EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138EntryGvFresh : List Wire := [850]

private def s6Step138ExitFExtra : List Wire := [456, 869]

private def s6Step138ExitFvExtra : List Wire := [822]

private def s6Step138ExitGExtra : List Wire := [879, 813]

private def s6Step138ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,456),(457,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138ExitGvExtra : List Wire := [850, 807]

private def s6Step138Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step138Add0Work : List Wire := [891, 903, 791, 825, 836, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step138Add0_bounded : s6Step138Add0Work.toFinset⊆arenaWires := by
  have h : s6Step138Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step138Add0During : Arena := ⟨s6Step138Add0Arena.live∪s6Step138Add0Work.toFinset,Finset.union_subset s6Step138Add0Arena.bounded s6Step138Add0_bounded⟩

private def s6Step138Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step138Add1Work : List Wire := [891, 903, 791, 825, 836, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step138Add1_bounded : s6Step138Add1Work.toFinset⊆arenaWires := by
  have h : s6Step138Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step138Add1During : Arena := ⟨s6Step138Add1Arena.live∪s6Step138Add1Work.toFinset,Finset.union_subset s6Step138Add1Arena.bounded s6Step138Add1_bounded⟩

private def s6Step138F4FlagArena : Arena := ⟨s6Step138HeadFvAfter.live∪{875},Finset.union_subset s6Step138HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step138F4Plan : HmrHybridF4Plan := ⟨s6Step138F4FlagArena,[875],s6Step138Add0Arena,[882],s6Step138Add0During,s6Step138Add0Work,s6Step138Add1During,s6Step138Add1Work⟩

private def s6Step138HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 869],795⟩

private def s6Step138HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 822],776⟩

private def s6Step138HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 879, 813],777⟩

private def s6Step138HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 850, 807],775⟩

private def s6Step138FrontHead : WindowBank := ⟨s6Step138HeadFOut,s6Step138HeadGOut,s6Step138HeadFvOut,s6Step138HeadGvOut⟩

private def s6Step138EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456],795⟩

private def s6Step138EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩

private def s6Step138EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 879],777⟩

private def s6Step138EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 850],775⟩

private def s6Step138FrontPair : WindowBank := ⟨s6Step138EntryFOut,s6Step138EntryGOut,s6Step138EntryFvOut,s6Step138EntryGvOut⟩

private def s6Step138FrontSigmaArena : Arena := ⟨s6Step138EntryGvAfter.live∪{768},Finset.union_subset s6Step138EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step138HeadFFresh : List Wire := [869]

private def s6Step138HeadFvFresh : List Wire := [822]

private def s6Step138HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138HeadGFresh : List Wire := [813]

private def s6Step138HeadGvFresh : List Wire := [807]

private def s6Step138FrontPlan : HmrSourceFront := ⟨s6Step138EntryGvAfter,s6Step138FrontPair,(growRow 795 s6Step138EntryFFresh ++ (growRow 777 s6Step138EntryGFresh ++ (growRow 776 s6Step138EntryFvFresh ++ (growRow 775 s6Step138EntryGvFresh ++ [])))),s6Step138FrontSigmaArena,[768],s6Step138HeadGBefore,[862],
  s6Step138HeadFvAfter,s6Step138FrontHead,(growRow 777 s6Step138HeadGFresh ++ (growRow 795 s6Step138HeadFFresh ++ (growRow 775 s6Step138HeadGvFresh ++ (growRow 776 s6Step138HeadFvFresh ++ [])))),s6Step138F4Plan,s6Step138CounterDuring,s6Step138CounterWork,s6Step138ExitGvAfter,s6Step138FrontOut,(shrinkRow 777 s6Step138ExitGExtra ++ (shrinkRow 795 s6Step138ExitFExtra ++ (shrinkRow 776 s6Step138ExitFvExtra ++ (shrinkRow 775 s6Step138ExitGvExtra ++ []))))⟩

private def s6Step138CompletePlan : HmrEarlyStepPlan := ⟨s6Step138FrontPlan,s6Step138EarlyControlArena,s6Step138EarlyControlPlan,s6Step138CompleteMoves⟩

private theorem s6Step138Complete_apart : List.Disjoint (s6Step138CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [768, 862, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904] := by
  have nd : ((s6Step138CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[768, 862, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step138Complete_owned : (s6Step138CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step138EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step138EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step138CompleteRelocationMove0Borrowed : Arena := ⟨s6Step138ExitGvAfter.live∪{456},Finset.union_subset s6Step138ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step138CompleteRelocation_move0_owned : 867∈s6Step138ExitGvAfter.live := by norm_num [s6Step138ExitGvAfter,arenaWires]

private theorem s6Step138CompleteRelocation_move0_reserve : s6Step138ExitGvAfter.reserve {456}=some s6Step138CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step138ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step138CompleteRelocation_move0_retire : s6Step138CompleteRelocationMove0Borrowed.retireSet {867}=s6Step138EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step138CompleteRelocationMove0Borrowed s6Step138EarlyControlArena {867}
  change s6Step138EarlyControlArena.live=(s6Step138ExitGvAfter.live∪{456})\{867}
  apply hmrArena_update_of_filter_check s6Step138ExitGvAfter s6Step138EarlyControlArena (fun q => ([(0,456),(457,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [456] [867] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step138CompleteRelocation_checked : s6Step138ExitGvAfter.checkRepack [(867,456)]=some s6Step138EarlyControlArena := by
  have tail1 : s6Step138EarlyControlArena.checkRepack []=some s6Step138EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step138ExitGvAfter s6Step138CompleteRelocationMove0Borrowed s6Step138EarlyControlArena s6Step138EarlyControlArena 867 456 []
    s6Step138CompleteRelocation_move0_owned s6Step138CompleteRelocation_move0_reserve s6Step138CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step138Complete_repack : s6Step138ExitGvAfter.checkRepack s6Step138CompleteMoves=some s6Step138EarlyControlArena := by
  simpa only [s6Step138CompleteMoves] using s6Step138CompleteRelocation_checked

private theorem s6Step138EarlyControl_branchOwned : ([862] : List Wire).toFinset⊆s6Step138EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step138EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138EarlyControl_branch : compileHmrBranchRetirement s6Step138EarlyControlSigmaArena 862=some s6Step138EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step138EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step138EarlyControlSigmaArena s6Step138EarlyControlOutputArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,862),(863,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [862] rfl rfl
    decide +kernel

private theorem s6Step138EarlyControl_classEqualityBorrow : s6Step138EarlyControlPositiveArena.checkBorrow (([768, 879] : List Wire).length-1) s6Step138EarlyControlLog.classWork=some s6Step138EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step138EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step138EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step138EarlyControlEqualityArena,s6Step138EarlyControlPositiveArena,s6Step138EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step138EarlyControl_classEqualityOwned : ([768, 879] : List Wire).toFinset⊆s6Step138EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step138EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step138EarlyControl_classEquality : compileHmrEqualityLog s6Step138EarlyControlPositiveArena [768, 879] 0 s6Step138EarlyControlLog.classWork=some (s6Step138EarlyControlEqualityArena,s6Step138EarlyControlLog.classWork,s6Step138EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step138EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step138EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step138EarlyControl_classOwned : ([769, 869, 768] : List Wire).toFinset⊆s6Step138EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step138EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138EarlyControl_positiveBorrow : s6Step138EarlyControlZeroArena.checkBorrow (1) s6Step138EarlyControlLog.positiveWork=some s6Step138EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step138EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step138EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step138EarlyControlZeroArena s6Step138EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step138EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step138EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step138EarlyControl_class : compileHmrSourceClassLog s6Step138EarlyControlZeroArena false 769 s6Step138EarlyControlZeroPlan.top 0 768 s6Step138EarlyControlLog.positiveWork s6Step138EarlyControlLog.classWork=some s6Step138EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step138EarlyControlClassPlan s6Step138EarlyControlZeroArena false 769 s6Step138EarlyControlZeroPlan.top 0 768
  constructor
  · decide +kernel
  · exact s6Step138EarlyControl_classOwned
  · exact s6Step138EarlyControl_positiveBorrow
  · exact s6Step138EarlyControl_classEquality

private theorem s6Step138EarlyControl_entryRecordOwned : ([862, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904] : List Wire).toFinset⊆s6Step138EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step138EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138EarlyControl_entrySigmaOwned : ([768, 254] : List Wire).toFinset⊆s6Step138EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step138EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138EarlyControl_fitBorrow : s6Step138EarlyControlFlagArena.checkBorrow ((39-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904] : List Wire).length)) s6Step138EarlyControlLog.recordFresh=some s6Step138EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step138EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step138EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step138EarlyControlFittedArena,s6Step138EarlyControlFlagArena,s6Step138EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step138EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904] : List Wire).toFinset⊆s6Step138EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step138EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step138EarlyControl_fit : compileHmrRecordGrowLog s6Step138EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904] 39 s6Step138EarlyControlLog.recordFresh=some s6Step138EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step138EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step138EarlyControl_fitBorrow

private theorem s6Step138EarlyControl_flagsBorrow : s6Step138EarlyControlEqualityArena.checkBorrow (6) s6Step138EarlyControlLog.flagWork=some s6Step138EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step138EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step138EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step138EarlyControlFlagArena,s6Step138EarlyControlEqualityArena,s6Step138EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step138EarlyControl_flagsOwned : ([813, 253, 252, 251] : List Wire).toFinset⊆s6Step138EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step138EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step138EarlyControl_flags : compileHmrFlagsLog s6Step138EarlyControlClassPlan.equalityArena s6Step138EarlyControlClassPlan.equality.top 253 252 251 s6Step138EarlyControlLog.flagWork=some s6Step138EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step138EarlyControl_flagsOwned⟩
  · exact s6Step138EarlyControl_flagsBorrow

private theorem s6Step138EarlyControl_historyBorrow : s6Step138EarlyControlArena.checkBorrow ((39-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904] : List Wire).length)) s6Step138EarlyControlLog.recordFresh=some s6Step138EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step138EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step138EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step138EarlyControlArena s6Step138EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step138EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step138EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step138EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904] : List Wire).toFinset⊆s6Step138EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step138EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138EarlyControl_history : compileHmrRecordGrowLog s6Step138EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904] 39 s6Step138EarlyControlLog.recordFresh=some s6Step138EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step138EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step138EarlyControl_historyBorrow

private theorem s6Step138EarlyControl_sigmaOwned : ([254, 768] : List Wire).toFinset⊆s6Step138EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step138EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138EarlyControl_sigmaReleaseOwned : ([768] : List Wire).toFinset⊆s6Step138EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step138EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138EarlyControl_sigmaRelease : s6Step138EarlyControlHistoryArena.release {768} (fun _ => false)=some s6Step138EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step138EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step138EarlyControlHistoryArena s6Step138EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [768] rfl rfl
    decide +kernel

private theorem s6Step138EarlyControl_sigma : compileHmrSigmaDropLog s6Step138EarlyControlHistoryArena false 0 0 254 768 []=some s6Step138EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step138EarlyControl_sigmaOwned⟩
  · exact s6Step138EarlyControl_sigmaRelease

private theorem s6Step138EarlyControl_zeroBorrow : s6Step138EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step138EarlyControlLog.zeroWork=some s6Step138EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step138EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step138EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step138EarlyControlArena s6Step138EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step138EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step138EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step138EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step138EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step138EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,867),(868,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138EarlyControl_zero : compileHmrEqualityLog s6Step138EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step138EarlyControlLog.zeroWork=some (s6Step138EarlyControlZeroArena,s6Step138EarlyControlLog.zeroWork,s6Step138EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step138EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step138EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step138EarlyControl_logged : s6Step138EarlyControlPlan.Logged s6Step138EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904] 769 768 254 253 252 251 862 39 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step138EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step138EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step138EarlyControl_zero
  · exact s6Step138EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step138EarlyControl_flags
  · exact s6Step138EarlyControl_fit
  · exact s6Step138EarlyControl_history
  · exact s6Step138EarlyControl_sigma
  · exact s6Step138EarlyControl_branch

private theorem s6Step138EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step138EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904] 769 768 254 253 252 251 862 39 s6Step138EarlyControlLog=some s6Step138EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step138EarlyControlPlan s6Step138EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904] 769 768 254 253 252 251 862 39 s6Step138EarlyControl_logged

private def s6Step138EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456],795⟩

private def s6Step138EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩

private def s6Step138EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],777⟩

private def s6Step138EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833],775⟩

private def s6Step138FrontBank : WindowBank := ⟨s6Step138EntryFRow,s6Step138EntryGRow,s6Step138EntryFvRow,s6Step138EntryGvRow⟩

private def s6Step138Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 869, 795]

private def s6Step138Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 879, 813, 777]

private def s6Step138Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 822, 776]

private def s6Step138Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 850, 807, 775]

private theorem s6Step138Counter_apart : Disjoint s6Step138HeadFvAfter.live s6Step138CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step138HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step138Counter_borrowed : s6Step138HeadFvAfter.checkBorrow 4 s6Step138CounterWork=some s6Step138CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step138HeadFvAfter s6Step138CounterDuring s6Step138CounterWork.toFinset s6Step138Counter_bounded s6Step138Counter_apart rfl

private theorem s6Step138Counter_owned : (768::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step138HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step138HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step138Counter_checked : compileHmrCounterStepLog s6Step138HeadFvAfter true 768 [774, 773, 772, 771, 770, 769] s6Step138CounterWork=some s6Step138CounterDuring := by
  have owned : ∀q∈768::[774, 773, 772, 771, 770, 769],q∈s6Step138HeadFvAfter.live := fun q hq => s6Step138Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step138Counter_borrowed

private def s6Step138EntryFAfter : Arena := s6Step138EntryFBefore

private theorem s6Step138EntryBank_incomingDistinct : ([s6Step138EntryFRow,s6Step138EntryGRow,s6Step138EntryFvRow,s6Step138EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138EntryF_Incoming : rowsOwned s6Step138EntryFBefore [s6Step138EntryFRow,s6Step138EntryGRow,s6Step138EntryFvRow,s6Step138EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step138EntryFRow,s6Step138EntryGRow,s6Step138EntryFvRow,s6Step138EntryGvRow] 0 s6Step138EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step138EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step138EntryBank_outgoingOwned : rowsOwned s6Step138EntryGvAfter [s6Step138EntryFOut,s6Step138EntryGOut,s6Step138EntryFvOut,s6Step138EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step138EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step138EntryF_Outgoing : rowsOwned s6Step138EntryGvAfter [s6Step138EntryFOut,s6Step138EntryGOut,s6Step138EntryFvOut,s6Step138EntryGvOut] :=
  hmrRows_owned_drop s6Step138EntryGvAfter [s6Step138EntryFOut,s6Step138EntryGOut,s6Step138EntryFvOut,s6Step138EntryGvOut] 0 s6Step138EntryBank_outgoingOwned

private theorem s6Step138EntryF_distinct : (s6Step138EntryFRow.sign::s6Step138EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138EntryF_owned : (s6Step138EntryFRow.sign::s6Step138EntryFRow.payload).toFinset⊆s6Step138EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step138EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138EntryF_reserved : s6Step138EntryFBefore.reserve s6Step138EntryFFresh.toFinset=some s6Step138EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step138EntryFFresh,arenaWires]
  · norm_num [s6Step138EntryFBefore,s6Step138EntryFFresh,arenaWires]
  · simp only [s6Step138EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step138EntryF_checked : planRowResizeLog s6Step138EntryFBefore s6Step138EntryFRow 201 s6Step138EntryFFresh=
    some (s6Step138EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456],795⟩,growRow 795 s6Step138EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step138EntryFBefore s6Step138EntryFAfter s6Step138EntryFRow 201 s6Step138EntryFFresh
    s6Step138EntryF_distinct s6Step138EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step138EntryF_reserved
  have rowEq : WindowRow.mk (s6Step138EntryFRow.payload++s6Step138EntryFFresh) s6Step138EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step138EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138EntryFvAfter : Arena := s6Step138EntryGAfter

private def s6Step138EntryFvBefore : Arena := s6Step138EntryGAfter

private theorem s6Step138EntryFv_Incoming : rowsOwned s6Step138EntryFvBefore [s6Step138EntryFvRow,s6Step138EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step138EntryFRow,s6Step138EntryGRow,s6Step138EntryFvRow,s6Step138EntryGvRow] 2 s6Step138EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step138EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step138EntryFv_Outgoing : rowsOwned s6Step138EntryGvAfter [s6Step138EntryFvOut,s6Step138EntryGvOut] :=
  hmrRows_owned_drop s6Step138EntryGvAfter [s6Step138EntryFOut,s6Step138EntryGOut,s6Step138EntryFvOut,s6Step138EntryGvOut] 2 s6Step138EntryBank_outgoingOwned

private theorem s6Step138EntryFv_distinct : (s6Step138EntryFvRow.sign::s6Step138EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138EntryFv_owned : (s6Step138EntryFvRow.sign::s6Step138EntryFvRow.payload).toFinset⊆s6Step138EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step138EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138EntryFv_reserved : s6Step138EntryFvBefore.reserve s6Step138EntryFvFresh.toFinset=some s6Step138EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step138EntryFvFresh,arenaWires]
  · norm_num [s6Step138EntryFvBefore,s6Step138EntryGAfter,s6Step138EntryFvFresh,arenaWires]
  · simp only [s6Step138EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step138EntryFv_checked : planRowResizeLog s6Step138EntryFvBefore s6Step138EntryFvRow 83 s6Step138EntryFvFresh=
    some (s6Step138EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩,growRow 776 s6Step138EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step138EntryFvBefore s6Step138EntryFvAfter s6Step138EntryFvRow 83 s6Step138EntryFvFresh
    s6Step138EntryFv_distinct s6Step138EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step138EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step138EntryFvRow.payload++s6Step138EntryFvFresh) s6Step138EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step138EntryGBefore : Arena := s6Step138EntryFBefore

private theorem s6Step138EntryG_Incoming : rowsOwned s6Step138EntryGBefore [s6Step138EntryGRow,s6Step138EntryFvRow,s6Step138EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step138EntryFRow,s6Step138EntryGRow,s6Step138EntryFvRow,s6Step138EntryGvRow] 1 s6Step138EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step138EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step138EntryG_Outgoing : rowsOwned s6Step138EntryGvAfter [s6Step138EntryGOut,s6Step138EntryFvOut,s6Step138EntryGvOut] :=
  hmrRows_owned_drop s6Step138EntryGvAfter [s6Step138EntryFOut,s6Step138EntryGOut,s6Step138EntryFvOut,s6Step138EntryGvOut] 1 s6Step138EntryBank_outgoingOwned

private theorem s6Step138EntryG_distinct : (s6Step138EntryGRow.sign::s6Step138EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138EntryG_owned : (s6Step138EntryGRow.sign::s6Step138EntryGRow.payload).toFinset⊆s6Step138EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step138EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138EntryG_reserved : s6Step138EntryGBefore.reserve s6Step138EntryGFresh.toFinset=some s6Step138EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step138EntryGFresh,arenaWires]
  · norm_num [s6Step138EntryGBefore,s6Step138EntryFBefore,s6Step138EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step138EntryGBefore s6Step138EntryGAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step138EntryGFresh rfl rfl
    · norm_num [s6Step138EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step138EntryG_checked : planRowResizeLog s6Step138EntryGBefore s6Step138EntryGRow 201 s6Step138EntryGFresh=
    some (s6Step138EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 879],777⟩,growRow 777 s6Step138EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step138EntryGBefore s6Step138EntryGAfter s6Step138EntryGRow 201 s6Step138EntryGFresh
    s6Step138EntryG_distinct s6Step138EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step138EntryG_reserved
  have rowEq : WindowRow.mk (s6Step138EntryGRow.payload++s6Step138EntryGFresh) s6Step138EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 879],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step138EntryGvBefore : Arena := s6Step138EntryGAfter

private theorem s6Step138EntryGv_Incoming : rowsOwned s6Step138EntryGvBefore [s6Step138EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step138EntryFRow,s6Step138EntryGRow,s6Step138EntryFvRow,s6Step138EntryGvRow] 3 s6Step138EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step138EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step138EntryGv_Outgoing : rowsOwned s6Step138EntryGvAfter [s6Step138EntryGvOut] :=
  hmrRows_owned_drop s6Step138EntryGvAfter [s6Step138EntryFOut,s6Step138EntryGOut,s6Step138EntryFvOut,s6Step138EntryGvOut] 3 s6Step138EntryBank_outgoingOwned

private theorem s6Step138EntryGv_distinct : (s6Step138EntryGvRow.sign::s6Step138EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138EntryGv_owned : (s6Step138EntryGvRow.sign::s6Step138EntryGvRow.payload).toFinset⊆s6Step138EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step138EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138EntryGv_reserved : s6Step138EntryGvBefore.reserve s6Step138EntryGvFresh.toFinset=some s6Step138EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step138EntryGvFresh,arenaWires]
  · norm_num [s6Step138EntryGvBefore,s6Step138EntryGAfter,s6Step138EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step138EntryGvBefore s6Step138EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step138EntryGvFresh rfl rfl
    · norm_num [s6Step138EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step138EntryGv_checked : planRowResizeLog s6Step138EntryGvBefore s6Step138EntryGvRow 83 s6Step138EntryGvFresh=
    some (s6Step138EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 850],775⟩,growRow 775 s6Step138EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step138EntryGvBefore s6Step138EntryGvAfter s6Step138EntryGvRow 83 s6Step138EntryGvFresh
    s6Step138EntryGv_distinct s6Step138EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step138EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step138EntryGvRow.payload++s6Step138EntryGvFresh) s6Step138EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 850],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step138EntryBank_rows : planWindowRowsLog s6Step138EntryFBefore [(s6Step138EntryFRow,201),(s6Step138EntryGRow,201),(s6Step138EntryFvRow,83),(s6Step138EntryGvRow,83)] [s6Step138EntryFFresh,s6Step138EntryGFresh,s6Step138EntryFvFresh,s6Step138EntryGvFresh]=
    some (s6Step138EntryGvAfter,[s6Step138EntryFOut,s6Step138EntryGOut,s6Step138EntryFvOut,s6Step138EntryGvOut],(growRow 795 s6Step138EntryFFresh ++ (growRow 777 s6Step138EntryGFresh ++ (growRow 776 s6Step138EntryFvFresh ++ (growRow 775 s6Step138EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step138EntryGvAfter [] []=some (s6Step138EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step138EntryGvBefore s6Step138EntryGvAfter s6Step138EntryGvAfter
    s6Step138EntryGvRow s6Step138EntryGvOut 83 s6Step138EntryGvFresh [] [] []
    (growRow 775 s6Step138EntryGvFresh) ([]) s6Step138EntryGv_Incoming s6Step138EntryGv_checked h4 s6Step138EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step138EntryFvBefore s6Step138EntryFvAfter s6Step138EntryGvAfter
    s6Step138EntryFvRow s6Step138EntryFvOut 83 s6Step138EntryFvFresh [(s6Step138EntryGvRow,83)] [s6Step138EntryGvFresh] [s6Step138EntryGvOut]
    (growRow 776 s6Step138EntryFvFresh) ((growRow 775 s6Step138EntryGvFresh ++ [])) s6Step138EntryFv_Incoming s6Step138EntryFv_checked h3 s6Step138EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step138EntryGBefore s6Step138EntryGAfter s6Step138EntryGvAfter
    s6Step138EntryGRow s6Step138EntryGOut 201 s6Step138EntryGFresh [(s6Step138EntryFvRow,83),(s6Step138EntryGvRow,83)] [s6Step138EntryFvFresh,s6Step138EntryGvFresh] [s6Step138EntryFvOut,s6Step138EntryGvOut]
    (growRow 777 s6Step138EntryGFresh) ((growRow 776 s6Step138EntryFvFresh ++ (growRow 775 s6Step138EntryGvFresh ++ []))) s6Step138EntryG_Incoming s6Step138EntryG_checked h2 s6Step138EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step138EntryFBefore s6Step138EntryFAfter s6Step138EntryGvAfter
    s6Step138EntryFRow s6Step138EntryFOut 201 s6Step138EntryFFresh [(s6Step138EntryGRow,201),(s6Step138EntryFvRow,83),(s6Step138EntryGvRow,83)] [s6Step138EntryGFresh,s6Step138EntryFvFresh,s6Step138EntryGvFresh] [s6Step138EntryGOut,s6Step138EntryFvOut,s6Step138EntryGvOut]
    (growRow 795 s6Step138EntryFFresh) ((growRow 777 s6Step138EntryGFresh ++ (growRow 776 s6Step138EntryFvFresh ++ (growRow 775 s6Step138EntryGvFresh ++ [])))) s6Step138EntryF_Incoming s6Step138EntryF_checked h1 s6Step138EntryF_Outgoing
  exact h0

private theorem s6Step138EntryBank_checked : compileHmrBankResizeLog .entry s6Step138EntryFBefore ⟨s6Step138EntryFRow,s6Step138EntryGRow,s6Step138EntryFvRow,s6Step138EntryGvRow⟩ ⟨201,201,83,83⟩ [s6Step138EntryFFresh,s6Step138EntryGFresh,s6Step138EntryFvFresh,s6Step138EntryGvFresh]=
    some (s6Step138EntryGvAfter,⟨s6Step138EntryFOut,s6Step138EntryGOut,s6Step138EntryFvOut,s6Step138EntryGvOut⟩,(growRow 795 s6Step138EntryFFresh ++ (growRow 777 s6Step138EntryGFresh ++ (growRow 776 s6Step138EntryFvFresh ++ (growRow 775 s6Step138EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step138EntryBank_rows]
  rfl

private def s6Step138ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,456),(457,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138ExitFBefore : Arena := s6Step138ExitGAfter

private def s6Step138ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 869],795⟩

private def s6Step138ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 822],776⟩

private def s6Step138ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 879, 813],777⟩

private def s6Step138ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 850, 807],775⟩

private theorem s6Step138ExitBank_incomingDistinct : ([s6Step138ExitGRow,s6Step138ExitFRow,s6Step138ExitFvRow,s6Step138ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138ExitF_Incoming : rowsOwned s6Step138ExitFBefore [s6Step138ExitFRow,s6Step138ExitFvRow,s6Step138ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step138ExitGRow,s6Step138ExitFRow,s6Step138ExitFvRow,s6Step138ExitGvRow] 1 s6Step138ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step138ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step138ExitBank_outgoingOwned : rowsOwned s6Step138ExitGvAfter [s6Step138ExitGOut,s6Step138ExitFOut,s6Step138ExitFvOut,s6Step138ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step138ExitGvAfter (fun q => ([(0,456),(457,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step138ExitF_Outgoing : rowsOwned s6Step138ExitGvAfter [s6Step138ExitFOut,s6Step138ExitFvOut,s6Step138ExitGvOut] :=
  hmrRows_owned_drop s6Step138ExitGvAfter [s6Step138ExitGOut,s6Step138ExitFOut,s6Step138ExitFvOut,s6Step138ExitGvOut] 1 s6Step138ExitBank_outgoingOwned

private theorem s6Step138ExitF_distinct : (s6Step138ExitFRow.sign::s6Step138ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138ExitF_owned : (s6Step138ExitFRow.sign::s6Step138ExitFRow.payload).toFinset⊆s6Step138ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step138ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138ExitF_retired : s6Step138ExitFBefore.retireSet s6Step138ExitFExtra.toFinset=s6Step138ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step138ExitFBefore s6Step138ExitFAfter s6Step138ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step138ExitFBefore s6Step138ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,456),(457,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step138ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step138ExitF_checked : planRowResizeLog s6Step138ExitFBefore s6Step138ExitFRow 200 []=
    some (s6Step138ExitFAfter,s6Step138ExitFOut,shrinkRow 795 s6Step138ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step138ExitFBefore s6Step138ExitFRow 200 s6Step138ExitF_distinct s6Step138ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step138ExitFRow.payload.take 200) s6Step138ExitFRow.sign=s6Step138ExitFOut := by decide +kernel
  have hi : s6Step138ExitFRow.payload.drop 200=s6Step138ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step138ExitF_retired] at result
  exact result

private def s6Step138ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,456),(457,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138ExitFvBefore : Arena := s6Step138ExitFAfter

private theorem s6Step138ExitFv_Incoming : rowsOwned s6Step138ExitFvBefore [s6Step138ExitFvRow,s6Step138ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step138ExitGRow,s6Step138ExitFRow,s6Step138ExitFvRow,s6Step138ExitGvRow] 2 s6Step138ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step138ExitFvBefore (fun q => ([(0,456),(457,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step138ExitFv_Outgoing : rowsOwned s6Step138ExitGvAfter [s6Step138ExitFvOut,s6Step138ExitGvOut] :=
  hmrRows_owned_drop s6Step138ExitGvAfter [s6Step138ExitGOut,s6Step138ExitFOut,s6Step138ExitFvOut,s6Step138ExitGvOut] 2 s6Step138ExitBank_outgoingOwned

private theorem s6Step138ExitFv_distinct : (s6Step138ExitFvRow.sign::s6Step138ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138ExitFv_owned : (s6Step138ExitFvRow.sign::s6Step138ExitFvRow.payload).toFinset⊆s6Step138ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step138ExitFvBefore (fun q => ([(0,456),(457,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138ExitFv_retired : s6Step138ExitFvBefore.retireSet s6Step138ExitFvExtra.toFinset=s6Step138ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step138ExitFvBefore s6Step138ExitFvAfter s6Step138ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step138ExitFvBefore s6Step138ExitFvAfter (fun q => ([(0,456),(457,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,456),(457,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step138ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step138ExitFv_checked : planRowResizeLog s6Step138ExitFvBefore s6Step138ExitFvRow 83 []=
    some (s6Step138ExitFvAfter,s6Step138ExitFvOut,shrinkRow 776 s6Step138ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step138ExitFvBefore s6Step138ExitFvRow 83 s6Step138ExitFv_distinct s6Step138ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step138ExitFvRow.payload.take 83) s6Step138ExitFvRow.sign=s6Step138ExitFvOut := by decide +kernel
  have hi : s6Step138ExitFvRow.payload.drop 83=s6Step138ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step138ExitFv_retired] at result
  exact result

private def s6Step138ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step138ExitG_Incoming : rowsOwned s6Step138ExitGBefore [s6Step138ExitGRow,s6Step138ExitFRow,s6Step138ExitFvRow,s6Step138ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step138ExitGRow,s6Step138ExitFRow,s6Step138ExitFvRow,s6Step138ExitGvRow] 0 s6Step138ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step138ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step138ExitG_Outgoing : rowsOwned s6Step138ExitGvAfter [s6Step138ExitGOut,s6Step138ExitFOut,s6Step138ExitFvOut,s6Step138ExitGvOut] :=
  hmrRows_owned_drop s6Step138ExitGvAfter [s6Step138ExitGOut,s6Step138ExitFOut,s6Step138ExitFvOut,s6Step138ExitGvOut] 0 s6Step138ExitBank_outgoingOwned

private theorem s6Step138ExitG_distinct : (s6Step138ExitGRow.sign::s6Step138ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138ExitG_owned : (s6Step138ExitGRow.sign::s6Step138ExitGRow.payload).toFinset⊆s6Step138ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step138ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step138ExitG_retired : s6Step138ExitGBefore.retireSet s6Step138ExitGExtra.toFinset=s6Step138ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step138ExitGBefore s6Step138ExitGAfter s6Step138ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step138ExitGBefore s6Step138ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step138ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step138ExitG_checked : planRowResizeLog s6Step138ExitGBefore s6Step138ExitGRow 200 []=
    some (s6Step138ExitGAfter,s6Step138ExitGOut,shrinkRow 777 s6Step138ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step138ExitGBefore s6Step138ExitGRow 200 s6Step138ExitG_distinct s6Step138ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step138ExitGRow.payload.take 200) s6Step138ExitGRow.sign=s6Step138ExitGOut := by decide +kernel
  have hi : s6Step138ExitGRow.payload.drop 200=s6Step138ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step138ExitG_retired] at result
  exact result

private def s6Step138ExitGvBefore : Arena := s6Step138ExitFvAfter

private theorem s6Step138ExitGv_Incoming : rowsOwned s6Step138ExitGvBefore [s6Step138ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step138ExitGRow,s6Step138ExitFRow,s6Step138ExitFvRow,s6Step138ExitGvRow] 3 s6Step138ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step138ExitGvBefore (fun q => ([(0,456),(457,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step138ExitGv_Outgoing : rowsOwned s6Step138ExitGvAfter [s6Step138ExitGvOut] :=
  hmrRows_owned_drop s6Step138ExitGvAfter [s6Step138ExitGOut,s6Step138ExitFOut,s6Step138ExitFvOut,s6Step138ExitGvOut] 3 s6Step138ExitBank_outgoingOwned

private theorem s6Step138ExitGv_distinct : (s6Step138ExitGvRow.sign::s6Step138ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138ExitGv_owned : (s6Step138ExitGvRow.sign::s6Step138ExitGvRow.payload).toFinset⊆s6Step138ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step138ExitGvBefore (fun q => ([(0,456),(457,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138ExitGv_retired : s6Step138ExitGvBefore.retireSet s6Step138ExitGvExtra.toFinset=s6Step138ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step138ExitGvBefore s6Step138ExitGvAfter s6Step138ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step138ExitGvBefore s6Step138ExitGvAfter (fun q => ([(0,456),(457,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,456),(457,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step138ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step138ExitGv_checked : planRowResizeLog s6Step138ExitGvBefore s6Step138ExitGvRow 82 []=
    some (s6Step138ExitGvAfter,s6Step138ExitGvOut,shrinkRow 775 s6Step138ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step138ExitGvBefore s6Step138ExitGvRow 82 s6Step138ExitGv_distinct s6Step138ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step138ExitGvRow.payload.take 82) s6Step138ExitGvRow.sign=s6Step138ExitGvOut := by decide +kernel
  have hi : s6Step138ExitGvRow.payload.drop 82=s6Step138ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step138ExitGv_retired] at result
  exact result

private theorem s6Step138ExitBank_rows : planWindowRowsLog s6Step138ExitGBefore [(s6Step138ExitGRow,200),(s6Step138ExitFRow,200),(s6Step138ExitFvRow,83),(s6Step138ExitGvRow,82)] [[],[],[],[]]=
    some (s6Step138ExitGvAfter,[s6Step138ExitGOut,s6Step138ExitFOut,s6Step138ExitFvOut,s6Step138ExitGvOut],(shrinkRow 777 s6Step138ExitGExtra ++ (shrinkRow 795 s6Step138ExitFExtra ++ (shrinkRow 776 s6Step138ExitFvExtra ++ (shrinkRow 775 s6Step138ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step138ExitGvAfter [] []=some (s6Step138ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step138ExitGvBefore s6Step138ExitGvAfter s6Step138ExitGvAfter
    s6Step138ExitGvRow s6Step138ExitGvOut 82 [] [] [] []
    (shrinkRow 775 s6Step138ExitGvExtra) ([]) s6Step138ExitGv_Incoming s6Step138ExitGv_checked h4 s6Step138ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step138ExitFvBefore s6Step138ExitFvAfter s6Step138ExitGvAfter
    s6Step138ExitFvRow s6Step138ExitFvOut 83 [] [(s6Step138ExitGvRow,82)] [[]] [s6Step138ExitGvOut]
    (shrinkRow 776 s6Step138ExitFvExtra) ((shrinkRow 775 s6Step138ExitGvExtra ++ [])) s6Step138ExitFv_Incoming s6Step138ExitFv_checked h3 s6Step138ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step138ExitFBefore s6Step138ExitFAfter s6Step138ExitGvAfter
    s6Step138ExitFRow s6Step138ExitFOut 200 [] [(s6Step138ExitFvRow,83),(s6Step138ExitGvRow,82)] [[],[]] [s6Step138ExitFvOut,s6Step138ExitGvOut]
    (shrinkRow 795 s6Step138ExitFExtra) ((shrinkRow 776 s6Step138ExitFvExtra ++ (shrinkRow 775 s6Step138ExitGvExtra ++ []))) s6Step138ExitF_Incoming s6Step138ExitF_checked h2 s6Step138ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step138ExitGBefore s6Step138ExitGAfter s6Step138ExitGvAfter
    s6Step138ExitGRow s6Step138ExitGOut 200 [] [(s6Step138ExitFRow,200),(s6Step138ExitFvRow,83),(s6Step138ExitGvRow,82)] [[],[],[]] [s6Step138ExitFOut,s6Step138ExitFvOut,s6Step138ExitGvOut]
    (shrinkRow 777 s6Step138ExitGExtra) ((shrinkRow 795 s6Step138ExitFExtra ++ (shrinkRow 776 s6Step138ExitFvExtra ++ (shrinkRow 775 s6Step138ExitGvExtra ++ [])))) s6Step138ExitG_Incoming s6Step138ExitG_checked h1 s6Step138ExitG_Outgoing
  exact h0

private theorem s6Step138ExitBank_checked : compileHmrBankResizeLog .exit s6Step138ExitGBefore ⟨s6Step138ExitFRow,s6Step138ExitGRow,s6Step138ExitFvRow,s6Step138ExitGvRow⟩ ⟨200,200,83,82⟩ [[],[],[],[]]=
    some (s6Step138ExitGvAfter,⟨s6Step138ExitFOut,s6Step138ExitGOut,s6Step138ExitFvOut,s6Step138ExitGvOut⟩,(shrinkRow 777 s6Step138ExitGExtra ++ (shrinkRow 795 s6Step138ExitFExtra ++ (shrinkRow 776 s6Step138ExitFvExtra ++ (shrinkRow 775 s6Step138ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step138ExitBank_rows]
  rfl

private theorem s6Step138Add0_apart : Disjoint s6Step138Add0Arena.live s6Step138Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step138Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step138Add0_card : s6Step138Add0Arena.live.card=880 := by
  decide +kernel

private theorem s6Step138Add0_borrowed : s6Step138Add0Arena.checkBorrow (hmrHybridCount s6Step138Add0Arena s6Step138Add0B.length) s6Step138Add0Work=some s6Step138Add0During := by
  have len : s6Step138Add0Work.length=hmrHybridCount s6Step138Add0Arena s6Step138Add0B.length := by
    rw [hmrHybridCount,s6Step138Add0_card]
    decide +kernel
  have nd : s6Step138Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step138Add0Arena s6Step138Add0During s6Step138Add0Work.toFinset s6Step138Add0_bounded s6Step138Add0_apart rfl

private theorem s6Step138Add0_distinct : (875::862::882::(s6Step138Add0A++s6Step138Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138Add0_owned : (875::862::882::(s6Step138Add0A++s6Step138Add0B)).toFinset⊆s6Step138Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step138Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step138Add0_checked : compileHmrHybridCinLog s6Step138Add0Arena 862 875 882 s6Step138Add0A s6Step138Add0B s6Step138Add0Work=some s6Step138Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step138Add0Arena s6Step138Add0During 862 875 882 s6Step138Add0A s6Step138Add0B s6Step138Add0Work
    (by decide +kernel) (by decide +kernel) s6Step138Add0_distinct
    (fun q hq => s6Step138Add0_owned (List.mem_toFinset.mpr hq)) s6Step138Add0_borrowed

private theorem s6Step138Add1_apart : Disjoint s6Step138Add1Arena.live s6Step138Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step138Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step138Add1_card : s6Step138Add1Arena.live.card=880 := by
  decide +kernel

private theorem s6Step138Add1_borrowed : s6Step138Add1Arena.checkBorrow (hmrHybridCount s6Step138Add1Arena s6Step138Add1B.length) s6Step138Add1Work=some s6Step138Add1During := by
  have len : s6Step138Add1Work.length=hmrHybridCount s6Step138Add1Arena s6Step138Add1B.length := by
    rw [hmrHybridCount,s6Step138Add1_card]
    decide +kernel
  have nd : s6Step138Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step138Add1Arena s6Step138Add1During s6Step138Add1Work.toFinset s6Step138Add1_bounded s6Step138Add1_apart rfl

private theorem s6Step138Add1_distinct : (875::862::882::(s6Step138Add1A++s6Step138Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138Add1_owned : (875::862::882::(s6Step138Add1A++s6Step138Add1B)).toFinset⊆s6Step138Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step138Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step138Add1_checked : compileHmrHybridCinLog s6Step138Add1Arena 862 875 882 s6Step138Add1A s6Step138Add1B s6Step138Add1Work=some s6Step138Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step138Add1Arena s6Step138Add1During 862 875 882 s6Step138Add1A s6Step138Add1B s6Step138Add1Work
    (by decide +kernel) (by decide +kernel) s6Step138Add1_distinct
    (fun q hq => s6Step138Add1_owned (List.mem_toFinset.mpr hq)) s6Step138Add1_borrowed

private theorem s6Step138F4_apart : Disjoint (s6Step138Add0A++s6Step138Add0B).toFinset (s6Step138Add1A++s6Step138Add1B).toFinset := by
  have nd : ((s6Step138Add0A++s6Step138Add0B)++(s6Step138Add1A++s6Step138Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step138F4_carry : s6Step138F4FlagArena.checkBorrow 1 [882]=some s6Step138Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step138F4FlagArena,s6Step138HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step138F4FlagArena,s6Step138HeadFvAfter,s6Step138Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step138F4_distinct : (768::862::875::882::((s6Step138Add0A++s6Step138Add1A)++(s6Step138Add0B++s6Step138Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138F4_flag : s6Step138HeadFvAfter.checkBorrow 1 [875]=some s6Step138F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step138HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step138F4_owned : (768::862::((s6Step138Add0A++s6Step138Add1A)++(s6Step138Add0B++s6Step138Add1B))).toFinset⊆s6Step138HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step138HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step138F4_checked : compileHmrHybridF4Log s6Step138HeadFvAfter 768 862 s6Step138Add0A s6Step138Add0B s6Step138Add1A s6Step138Add1B [875] [882] s6Step138Add0Work s6Step138Add1Work=some s6Step138F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step138HeadFvAfter s6Step138F4FlagArena s6Step138Add0Arena s6Step138Add0During s6Step138Add1During 768 862
    s6Step138Add0A s6Step138Add0B s6Step138Add1A s6Step138Add1B [875] [882] s6Step138Add0Work s6Step138Add1Work
    (fun q hq => s6Step138F4_owned (List.mem_toFinset.mpr hq)) s6Step138F4_flag s6Step138F4_carry
    s6Step138F4_distinct s6Step138F4_apart s6Step138Add0_checked s6Step138Add1_checked

private theorem s6Step138Front_branch : s6Step138FrontSigmaArena.checkBorrow 1 [862]=some s6Step138HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step138FrontSigmaArena,s6Step138EntryGvAfter,arenaWires]
  · change s6Step138HeadGBefore.live=(s6Step138EntryGvAfter.live∪{768})∪{862}
    apply hmrArena_union_pair_of_filter_check s6Step138EntryGvAfter s6Step138HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 768 862 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step138Front_entry : HmrFrontEntryValid s6Step138EntryFBefore s6Step138FrontBank 201 83 ⟨200,200,83,82⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step138FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step138EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step138EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step138FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step138Front_sigma : s6Step138EntryGvAfter.checkBorrow 1 [768]=some s6Step138FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step138EntryGvAfter,arenaWires]
  · rfl

private def s6Step138HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138HeadFBefore : Arena := s6Step138HeadGAfter

private def s6Step138HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456],795⟩

private def s6Step138HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩

private def s6Step138HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 879],777⟩

private def s6Step138HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 850],775⟩

private theorem s6Step138HeadBank_incomingDistinct : ([s6Step138HeadGRow,s6Step138HeadFRow,s6Step138HeadGvRow,s6Step138HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138HeadF_Incoming : rowsOwned s6Step138HeadFBefore [s6Step138HeadFRow,s6Step138HeadGvRow,s6Step138HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step138HeadGRow,s6Step138HeadFRow,s6Step138HeadGvRow,s6Step138HeadFvRow] 1 s6Step138HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step138HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step138HeadBank_outgoingOwned : rowsOwned s6Step138HeadFvAfter [s6Step138HeadGOut,s6Step138HeadFOut,s6Step138HeadGvOut,s6Step138HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step138HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step138HeadF_Outgoing : rowsOwned s6Step138HeadFvAfter [s6Step138HeadFOut,s6Step138HeadGvOut,s6Step138HeadFvOut] :=
  hmrRows_owned_drop s6Step138HeadFvAfter [s6Step138HeadGOut,s6Step138HeadFOut,s6Step138HeadGvOut,s6Step138HeadFvOut] 1 s6Step138HeadBank_outgoingOwned

private theorem s6Step138HeadF_distinct : (s6Step138HeadFRow.sign::s6Step138HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138HeadF_owned : (s6Step138HeadFRow.sign::s6Step138HeadFRow.payload).toFinset⊆s6Step138HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step138HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138HeadF_reserved : s6Step138HeadFBefore.reserve s6Step138HeadFFresh.toFinset=some s6Step138HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step138HeadFFresh,arenaWires]
  · norm_num [s6Step138HeadFBefore,s6Step138HeadGAfter,s6Step138HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step138HeadFBefore s6Step138HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step138HeadFFresh rfl rfl
    · norm_num [s6Step138HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step138HeadF_checked : planRowResizeLog s6Step138HeadFBefore s6Step138HeadFRow 202 s6Step138HeadFFresh=
    some (s6Step138HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 869],795⟩,growRow 795 s6Step138HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step138HeadFBefore s6Step138HeadFAfter s6Step138HeadFRow 202 s6Step138HeadFFresh
    s6Step138HeadF_distinct s6Step138HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step138HeadF_reserved
  have rowEq : WindowRow.mk (s6Step138HeadFRow.payload++s6Step138HeadFFresh) s6Step138HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 869],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step138HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step138HeadFvBefore : Arena := s6Step138HeadGvAfter

private theorem s6Step138HeadFv_Incoming : rowsOwned s6Step138HeadFvBefore [s6Step138HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step138HeadGRow,s6Step138HeadFRow,s6Step138HeadGvRow,s6Step138HeadFvRow] 3 s6Step138HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step138HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step138HeadFv_Outgoing : rowsOwned s6Step138HeadFvAfter [s6Step138HeadFvOut] :=
  hmrRows_owned_drop s6Step138HeadFvAfter [s6Step138HeadGOut,s6Step138HeadFOut,s6Step138HeadGvOut,s6Step138HeadFvOut] 3 s6Step138HeadBank_outgoingOwned

private theorem s6Step138HeadFv_distinct : (s6Step138HeadFvRow.sign::s6Step138HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138HeadFv_owned : (s6Step138HeadFvRow.sign::s6Step138HeadFvRow.payload).toFinset⊆s6Step138HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step138HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138HeadFv_reserved : s6Step138HeadFvBefore.reserve s6Step138HeadFvFresh.toFinset=some s6Step138HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step138HeadFvFresh,arenaWires]
  · norm_num [s6Step138HeadFvBefore,s6Step138HeadGvAfter,s6Step138HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step138HeadFvBefore s6Step138HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step138HeadFvFresh rfl rfl
    · norm_num [s6Step138HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step138HeadFv_checked : planRowResizeLog s6Step138HeadFvBefore s6Step138HeadFvRow 84 s6Step138HeadFvFresh=
    some (s6Step138HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 822],776⟩,growRow 776 s6Step138HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step138HeadFvBefore s6Step138HeadFvAfter s6Step138HeadFvRow 84 s6Step138HeadFvFresh
    s6Step138HeadFv_distinct s6Step138HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step138HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step138HeadFvRow.payload++s6Step138HeadFvFresh) s6Step138HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 822],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step138HeadG_Incoming : rowsOwned s6Step138HeadGBefore [s6Step138HeadGRow,s6Step138HeadFRow,s6Step138HeadGvRow,s6Step138HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step138HeadGRow,s6Step138HeadFRow,s6Step138HeadGvRow,s6Step138HeadFvRow] 0 s6Step138HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step138HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step138HeadG_Outgoing : rowsOwned s6Step138HeadFvAfter [s6Step138HeadGOut,s6Step138HeadFOut,s6Step138HeadGvOut,s6Step138HeadFvOut] :=
  hmrRows_owned_drop s6Step138HeadFvAfter [s6Step138HeadGOut,s6Step138HeadFOut,s6Step138HeadGvOut,s6Step138HeadFvOut] 0 s6Step138HeadBank_outgoingOwned

private theorem s6Step138HeadG_distinct : (s6Step138HeadGRow.sign::s6Step138HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138HeadG_owned : (s6Step138HeadGRow.sign::s6Step138HeadGRow.payload).toFinset⊆s6Step138HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step138HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138HeadG_reserved : s6Step138HeadGBefore.reserve s6Step138HeadGFresh.toFinset=some s6Step138HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step138HeadGFresh,arenaWires]
  · norm_num [s6Step138HeadGBefore,s6Step138HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step138HeadGBefore s6Step138HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step138HeadGFresh rfl rfl
    · norm_num [s6Step138HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step138HeadG_checked : planRowResizeLog s6Step138HeadGBefore s6Step138HeadGRow 202 s6Step138HeadGFresh=
    some (s6Step138HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 879, 813],777⟩,growRow 777 s6Step138HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step138HeadGBefore s6Step138HeadGAfter s6Step138HeadGRow 202 s6Step138HeadGFresh
    s6Step138HeadG_distinct s6Step138HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step138HeadG_reserved
  have rowEq : WindowRow.mk (s6Step138HeadGRow.payload++s6Step138HeadGFresh) s6Step138HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 879, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step138HeadGvBefore : Arena := s6Step138HeadFAfter

private theorem s6Step138HeadGv_Incoming : rowsOwned s6Step138HeadGvBefore [s6Step138HeadGvRow,s6Step138HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step138HeadGRow,s6Step138HeadFRow,s6Step138HeadGvRow,s6Step138HeadFvRow] 2 s6Step138HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step138HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step138HeadGv_Outgoing : rowsOwned s6Step138HeadFvAfter [s6Step138HeadGvOut,s6Step138HeadFvOut] :=
  hmrRows_owned_drop s6Step138HeadFvAfter [s6Step138HeadGOut,s6Step138HeadFOut,s6Step138HeadGvOut,s6Step138HeadFvOut] 2 s6Step138HeadBank_outgoingOwned

private theorem s6Step138HeadGv_distinct : (s6Step138HeadGvRow.sign::s6Step138HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step138HeadGv_owned : (s6Step138HeadGvRow.sign::s6Step138HeadGvRow.payload).toFinset⊆s6Step138HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step138HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step138HeadGv_reserved : s6Step138HeadGvBefore.reserve s6Step138HeadGvFresh.toFinset=some s6Step138HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step138HeadGvFresh,arenaWires]
  · norm_num [s6Step138HeadGvBefore,s6Step138HeadFAfter,s6Step138HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step138HeadGvBefore s6Step138HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step138HeadGvFresh rfl rfl
    · norm_num [s6Step138HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step138HeadGv_checked : planRowResizeLog s6Step138HeadGvBefore s6Step138HeadGvRow 84 s6Step138HeadGvFresh=
    some (s6Step138HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 850, 807],775⟩,growRow 775 s6Step138HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step138HeadGvBefore s6Step138HeadGvAfter s6Step138HeadGvRow 84 s6Step138HeadGvFresh
    s6Step138HeadGv_distinct s6Step138HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step138HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step138HeadGvRow.payload++s6Step138HeadGvFresh) s6Step138HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 850, 807],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step138HeadBank_rows : planWindowRowsLog s6Step138HeadGBefore [(s6Step138HeadGRow,202),(s6Step138HeadFRow,202),(s6Step138HeadGvRow,84),(s6Step138HeadFvRow,84)] [s6Step138HeadGFresh,s6Step138HeadFFresh,s6Step138HeadGvFresh,s6Step138HeadFvFresh]=
    some (s6Step138HeadFvAfter,[s6Step138HeadGOut,s6Step138HeadFOut,s6Step138HeadGvOut,s6Step138HeadFvOut],(growRow 777 s6Step138HeadGFresh ++ (growRow 795 s6Step138HeadFFresh ++ (growRow 775 s6Step138HeadGvFresh ++ (growRow 776 s6Step138HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step138HeadFvAfter [] []=some (s6Step138HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step138HeadFvBefore s6Step138HeadFvAfter s6Step138HeadFvAfter
    s6Step138HeadFvRow s6Step138HeadFvOut 84 s6Step138HeadFvFresh [] [] []
    (growRow 776 s6Step138HeadFvFresh) ([]) s6Step138HeadFv_Incoming s6Step138HeadFv_checked h4 s6Step138HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step138HeadGvBefore s6Step138HeadGvAfter s6Step138HeadFvAfter
    s6Step138HeadGvRow s6Step138HeadGvOut 84 s6Step138HeadGvFresh [(s6Step138HeadFvRow,84)] [s6Step138HeadFvFresh] [s6Step138HeadFvOut]
    (growRow 775 s6Step138HeadGvFresh) ((growRow 776 s6Step138HeadFvFresh ++ [])) s6Step138HeadGv_Incoming s6Step138HeadGv_checked h3 s6Step138HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step138HeadFBefore s6Step138HeadFAfter s6Step138HeadFvAfter
    s6Step138HeadFRow s6Step138HeadFOut 202 s6Step138HeadFFresh [(s6Step138HeadGvRow,84),(s6Step138HeadFvRow,84)] [s6Step138HeadGvFresh,s6Step138HeadFvFresh] [s6Step138HeadGvOut,s6Step138HeadFvOut]
    (growRow 795 s6Step138HeadFFresh) ((growRow 775 s6Step138HeadGvFresh ++ (growRow 776 s6Step138HeadFvFresh ++ []))) s6Step138HeadF_Incoming s6Step138HeadF_checked h2 s6Step138HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step138HeadGBefore s6Step138HeadGAfter s6Step138HeadFvAfter
    s6Step138HeadGRow s6Step138HeadGOut 202 s6Step138HeadGFresh [(s6Step138HeadFRow,202),(s6Step138HeadGvRow,84),(s6Step138HeadFvRow,84)] [s6Step138HeadFFresh,s6Step138HeadGvFresh,s6Step138HeadFvFresh] [s6Step138HeadFOut,s6Step138HeadGvOut,s6Step138HeadFvOut]
    (growRow 777 s6Step138HeadGFresh) ((growRow 795 s6Step138HeadFFresh ++ (growRow 775 s6Step138HeadGvFresh ++ (growRow 776 s6Step138HeadFvFresh ++ [])))) s6Step138HeadG_Incoming s6Step138HeadG_checked h1 s6Step138HeadG_Outgoing
  exact h0

private theorem s6Step138HeadBank_checked : compileHmrBankResizeLog .headroom s6Step138HeadGBefore ⟨s6Step138HeadFRow,s6Step138HeadGRow,s6Step138HeadFvRow,s6Step138HeadGvRow⟩ ⟨202,202,84,84⟩ [s6Step138HeadGFresh,s6Step138HeadFFresh,s6Step138HeadGvFresh,s6Step138HeadFvFresh]=
    some (s6Step138HeadFvAfter,⟨s6Step138HeadFOut,s6Step138HeadGOut,s6Step138HeadFvOut,s6Step138HeadGvOut⟩,(growRow 777 s6Step138HeadGFresh ++ (growRow 795 s6Step138HeadFFresh ++ (growRow 775 s6Step138HeadGvFresh ++ (growRow 776 s6Step138HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step138HeadBank_rows]
  rfl

private theorem s6Step138Front_checked : compileHmrSourceFrontLog s6Step138EntryFBefore s6Step138FrontBank 201 83 ⟨200,200,83,82⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step138FrontLog=some s6Step138FrontPlan := by
  have pairEq : s6Step138FrontPair=⟨s6Step138HeadFRow,s6Step138HeadGRow,s6Step138HeadFvRow,s6Step138HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step138FrontHead=⟨s6Step138ExitFRow,s6Step138ExitGRow,s6Step138ExitFvRow,s6Step138ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step138Add0A=s6Step138FrontHead.f.wires := by decide +kernel
  have gEq : s6Step138Add0B=s6Step138FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step138Add1A=s6Step138FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step138Add1B=s6Step138FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step138EntryFBefore s6Step138FrontBank 201 83 ⟨200,200,83,82⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step138FrontLog s6Step138FrontPlan
  · exact s6Step138Front_entry
  · exact s6Step138EntryBank_checked
  · exact s6Step138Front_sigma
  · rfl
  · exact s6Step138Front_branch
  · rfl
  · simpa only [s6Step138FrontPlan,pairEq] using s6Step138HeadBank_checked
  · simpa only [s6Step138FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step138F4_checked
  · exact s6Step138Counter_checked
  · rfl
  · simpa only [s6Step138FrontPlan,headEq] using s6Step138ExitBank_checked

private theorem s6Step138Complete_explicit_checked : compileHmrEarlyStepLog s6Step138EntryFBefore s6Step138FrontBank 201 83 ⟨200,200,83,82⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904] 39 s6Step138CompleteLog=some s6Step138CompletePlan := by
  let Q := s6Step138EarlyControlPlan
  have hq := s6Step138EarlyControl_plan_checked
  have fv1 : s6Step138CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step138CompleteOut.fv.payload[2]?.getD s6Step138CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step138CompleteOut.fv.payload[3]?.getD s6Step138CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step138CompleteOut.fv.payload[4]?.getD s6Step138CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step138EntryFBefore s6Step138EarlyControlArena s6Step138FrontBank 201 83 ⟨200,200,83,82⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904] 39 s6Step138CompleteLog s6Step138FrontPlan Q
    s6Step138Front_checked s6Step138Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step138Complete_owned s6Step138Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step138EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904] 769 768 s6Step138CompleteOut.fv.second (s6Step138CompleteOut.fv.payload[2]?.getD s6Step138CompleteOut.fv.sign) (s6Step138CompleteOut.fv.payload[3]?.getD s6Step138CompleteOut.fv.sign) (s6Step138CompleteOut.fv.payload[4]?.getD s6Step138CompleteOut.fv.sign) 862 39 s6Step138EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep138Arena : Arena := s6Step138EntryFBefore
def s6PrivateStep138Bank : WindowBank := s6Step138FrontBank
def s6PrivateStep138Spec : HmrSourceWalkStepLog := ⟨201,83,⟨200,200,83,82⟩,39,.early s6Step138CompleteLog⟩
def s6PrivateStep138Plan : HmrSourceStepPlan := .early s6Step138CompletePlan
theorem s6PrivateStep138_source : s6PrivateStep138Spec=s6ObservedLogs128[10] := rfl
theorem s6PrivateStep138_checked : compileHmrSourceStepLog s6PrivateStep138Arena s6PrivateStep138Bank
    s6PrivateStep138Spec.fgWidth s6PrivateStep138Spec.vWidth s6PrivateStep138Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904]
    6 498 138 s6PrivateStep138Spec.need none s6PrivateStep138Spec.log=some s6PrivateStep138Plan := by
  change compileHmrSourceStepLog s6Step138EntryFBefore s6Step138FrontBank 201 83 ⟨200,200,83,82⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904] 6 498 138 39 none (.early s6Step138CompleteLog)=some (.early s6Step138CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 138<498)]
  rw [s6Step138Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
