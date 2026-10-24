import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep130
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

private def s6Step132CompleteMoves : List (Wire × Wire) := []

private def s6Step132EarlyControlLog : HmrEarlyControlLog := ⟨[843, 833, 854, 838, 822],[813],[850],[879, 875, 882, 891, 903, 791],[]⟩

private def s6Step132FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [854], [], []],[[838], [833], [843], [853]],[[], [], [], []]⟩,[839],[807],[822],[813],[850, 879, 875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[850, 879, 875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 813, 850, 879]⟩

private def s6Step132CompleteLog : HmrEarlyStepLog := ⟨s6Step132FrontLog,s6Step132CompleteMoves,s6Step132EarlyControlLog⟩

private def s6Step132ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩

private def s6Step132ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩

private def s6Step132ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],777⟩

private def s6Step132ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩

private def s6Step132FrontOut : WindowBank := ⟨s6Step132ExitFOut,s6Step132ExitGOut,s6Step132ExitFvOut,s6Step132ExitGvOut⟩

private def s6Step132CompleteOut : WindowBank := s6Step132FrontOut.repacked s6Step132CompleteMoves

private def s6Step132EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step132EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step132EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step132EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step132EarlyControlPositiveArena,[813],s6Step132EarlyControlEqualityArena,[850],⟨⟨839,false⟩,[⟨⟨813,false⟩,850⟩]⟩⟩

private def s6Step132EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step132EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step132EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step132EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step132EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step132EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step132EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,843⟩,⟨⟨772,false⟩,833⟩,⟨⟨771,false⟩,854⟩,⟨⟨770,false⟩,838⟩,⟨⟨769,false⟩,822⟩]⟩

private def s6Step132EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step132EarlyControlZeroArena,s6Step132EarlyControlZeroPlan,s6Step132EarlyControlClassPlan,s6Step132EarlyControlFlagArena,s6Step132EarlyControlFittedArena,s6Step132EarlyControlHistoryArena,s6Step132EarlyControlSigmaArena,s6Step132EarlyControlOutputArena,s6Step132EarlyControlLog⟩

private def s6Step132CounterWork : List Wire := [822, 813, 850, 879]

private theorem s6Step132Counter_bounded : s6Step132CounterWork.toFinset⊆arenaWires := by norm_num [s6Step132CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step132HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step132CounterDuring : Arena := ⟨s6Step132HeadFvAfter.live∪s6Step132CounterWork.toFinset,Finset.union_subset s6Step132HeadFvAfter.bounded s6Step132Counter_bounded⟩

private def s6Step132EntryFFresh : List Wire := []

private def s6Step132EntryFvFresh : List Wire := []

private def s6Step132EntryGFresh : List Wire := [854]

private def s6Step132EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step132EntryGvAfter : Arena := s6Step132EntryGAfter

private def s6Step132EntryGvFresh : List Wire := []

private def s6Step132ExitFExtra : List Wire := [833]

private def s6Step132ExitGExtra : List Wire := [854, 838]

private def s6Step132ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step132ExitGvExtra : List Wire := [843]

private def s6Step132Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step132Add0Work : List Wire := [850, 879, 875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step132Add0_bounded : s6Step132Add0Work.toFinset⊆arenaWires := by
  have h : s6Step132Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step132Add0During : Arena := ⟨s6Step132Add0Arena.live∪s6Step132Add0Work.toFinset,Finset.union_subset s6Step132Add0Arena.bounded s6Step132Add0_bounded⟩

private def s6Step132Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step132Add1Work : List Wire := [850, 879, 875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step132Add1_bounded : s6Step132Add1Work.toFinset⊆arenaWires := by
  have h : s6Step132Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step132Add1During : Arena := ⟨s6Step132Add1Arena.live∪s6Step132Add1Work.toFinset,Finset.union_subset s6Step132Add1Arena.bounded s6Step132Add1_bounded⟩

private def s6Step132F4FlagArena : Arena := ⟨s6Step132HeadFvAfter.live∪{822},Finset.union_subset s6Step132HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step132F4Plan : HmrHybridF4Plan := ⟨s6Step132F4FlagArena,[822],s6Step132Add0Arena,[813],s6Step132Add0During,s6Step132Add0Work,s6Step132Add1During,s6Step132Add1Work⟩

private def s6Step132HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 833],795⟩

private def s6Step132HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩

private def s6Step132HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 854, 838],777⟩

private def s6Step132HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 843],775⟩

private def s6Step132FrontHead : WindowBank := ⟨s6Step132HeadFOut,s6Step132HeadGOut,s6Step132HeadFvOut,s6Step132HeadGvOut⟩

private def s6Step132EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩

private def s6Step132EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩

private def s6Step132EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 854],777⟩

private def s6Step132EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩

private def s6Step132FrontPair : WindowBank := ⟨s6Step132EntryFOut,s6Step132EntryGOut,s6Step132EntryFvOut,s6Step132EntryGvOut⟩

private def s6Step132FrontSigmaArena : Arena := ⟨s6Step132EntryGvAfter.live∪{839},Finset.union_subset s6Step132EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step132HeadFFresh : List Wire := [833]

private def s6Step132HeadFvFresh : List Wire := [853]

private def s6Step132HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step132HeadGFresh : List Wire := [838]

private def s6Step132HeadGvFresh : List Wire := [843]

private def s6Step132FrontPlan : HmrSourceFront := ⟨s6Step132EntryGvAfter,s6Step132FrontPair,(growRow 795 s6Step132EntryFFresh ++ (growRow 777 s6Step132EntryGFresh ++ (growRow 776 s6Step132EntryFvFresh ++ (growRow 775 s6Step132EntryGvFresh ++ [])))),s6Step132FrontSigmaArena,[839],s6Step132HeadGBefore,[807],
  s6Step132HeadFvAfter,s6Step132FrontHead,(growRow 777 s6Step132HeadGFresh ++ (growRow 795 s6Step132HeadFFresh ++ (growRow 775 s6Step132HeadGvFresh ++ (growRow 776 s6Step132HeadFvFresh ++ [])))),s6Step132F4Plan,s6Step132CounterDuring,s6Step132CounterWork,s6Step132ExitGvAfter,s6Step132FrontOut,(shrinkRow 777 s6Step132ExitGExtra ++ (shrinkRow 795 s6Step132ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step132ExitGvExtra ++ []))))⟩

private def s6Step132CompletePlan : HmrEarlyStepPlan := ⟨s6Step132FrontPlan,s6Step132EarlyControlArena,s6Step132EarlyControlPlan,s6Step132CompleteMoves⟩

private theorem s6Step132Complete_apart : List.Disjoint (s6Step132CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [839, 807, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step132CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[839, 807, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step132Complete_owned : (s6Step132CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step132EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step132EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132Complete_repack : s6Step132ExitGvAfter.checkRepack s6Step132CompleteMoves=some s6Step132EarlyControlArena := by rfl

private theorem s6Step132EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s6Step132EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step132EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132EarlyControl_branch : compileHmrBranchRetirement s6Step132EarlyControlSigmaArena 807=some s6Step132EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step132EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step132EarlyControlSigmaArena s6Step132EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [807] rfl rfl
    decide +kernel

private theorem s6Step132EarlyControl_classEqualityBorrow : s6Step132EarlyControlPositiveArena.checkBorrow (([839, 813] : List Wire).length-1) s6Step132EarlyControlLog.classWork=some s6Step132EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step132EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step132EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step132EarlyControlEqualityArena,s6Step132EarlyControlPositiveArena,s6Step132EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step132EarlyControl_classEqualityOwned : ([839, 813] : List Wire).toFinset⊆s6Step132EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step132EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step132EarlyControl_classEquality : compileHmrEqualityLog s6Step132EarlyControlPositiveArena [839, 813] 0 s6Step132EarlyControlLog.classWork=some (s6Step132EarlyControlEqualityArena,s6Step132EarlyControlLog.classWork,s6Step132EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step132EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step132EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step132EarlyControl_classOwned : ([769, 822, 839] : List Wire).toFinset⊆s6Step132EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step132EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step132EarlyControl_positiveBorrow : s6Step132EarlyControlZeroArena.checkBorrow (1) s6Step132EarlyControlLog.positiveWork=some s6Step132EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step132EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step132EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step132EarlyControlPositiveArena,s6Step132EarlyControlZeroArena,s6Step132EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step132EarlyControl_class : compileHmrSourceClassLog s6Step132EarlyControlZeroArena false 769 s6Step132EarlyControlZeroPlan.top 0 839 s6Step132EarlyControlLog.positiveWork s6Step132EarlyControlLog.classWork=some s6Step132EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step132EarlyControlClassPlan s6Step132EarlyControlZeroArena false 769 s6Step132EarlyControlZeroPlan.top 0 839
  constructor
  · decide +kernel
  · exact s6Step132EarlyControl_classOwned
  · exact s6Step132EarlyControl_positiveBorrow
  · exact s6Step132EarlyControl_classEquality

private theorem s6Step132EarlyControl_entryRecordOwned : ([807, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step132EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step132EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132EarlyControl_entrySigmaOwned : ([839, 254] : List Wire).toFinset⊆s6Step132EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step132EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132EarlyControl_fitBorrow : s6Step132EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step132EarlyControlLog.recordFresh=some s6Step132EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step132EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step132EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step132EarlyControlFittedArena,s6Step132EarlyControlFlagArena,s6Step132EarlyControlLog,arenaWires]

private theorem s6Step132EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step132EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step132EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step132EarlyControl_fit : compileHmrRecordGrowLog s6Step132EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step132EarlyControlLog.recordFresh=some s6Step132EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step132EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step132EarlyControl_fitBorrow

private theorem s6Step132EarlyControl_flagsBorrow : s6Step132EarlyControlEqualityArena.checkBorrow (6) s6Step132EarlyControlLog.flagWork=some s6Step132EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step132EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step132EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step132EarlyControlFlagArena,s6Step132EarlyControlEqualityArena,s6Step132EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step132EarlyControl_flagsOwned : ([850, 253, 252, 251] : List Wire).toFinset⊆s6Step132EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step132EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step132EarlyControl_flags : compileHmrFlagsLog s6Step132EarlyControlClassPlan.equalityArena s6Step132EarlyControlClassPlan.equality.top 253 252 251 s6Step132EarlyControlLog.flagWork=some s6Step132EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step132EarlyControl_flagsOwned⟩
  · exact s6Step132EarlyControl_flagsBorrow

private theorem s6Step132EarlyControl_historyBorrow : s6Step132EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step132EarlyControlLog.recordFresh=some s6Step132EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step132EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step132EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step132EarlyControlArena s6Step132EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step132EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step132EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step132EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step132EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step132EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132EarlyControl_history : compileHmrRecordGrowLog s6Step132EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step132EarlyControlLog.recordFresh=some s6Step132EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step132EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step132EarlyControl_historyBorrow

private theorem s6Step132EarlyControl_sigmaOwned : ([254, 839] : List Wire).toFinset⊆s6Step132EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step132EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132EarlyControl_sigmaReleaseOwned : ([839] : List Wire).toFinset⊆s6Step132EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step132EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132EarlyControl_sigmaRelease : s6Step132EarlyControlHistoryArena.release {839} (fun _ => false)=some s6Step132EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step132EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step132EarlyControlHistoryArena s6Step132EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [839] rfl rfl
    decide +kernel

private theorem s6Step132EarlyControl_sigma : compileHmrSigmaDropLog s6Step132EarlyControlHistoryArena false 0 0 254 839 []=some s6Step132EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step132EarlyControl_sigmaOwned⟩
  · exact s6Step132EarlyControl_sigmaRelease

private theorem s6Step132EarlyControl_zeroBorrow : s6Step132EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step132EarlyControlLog.zeroWork=some s6Step132EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step132EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step132EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step132EarlyControlArena s6Step132EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step132EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step132EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step132EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step132EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step132EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132EarlyControl_zero : compileHmrEqualityLog s6Step132EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step132EarlyControlLog.zeroWork=some (s6Step132EarlyControlZeroArena,s6Step132EarlyControlLog.zeroWork,s6Step132EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step132EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step132EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step132EarlyControl_logged : s6Step132EarlyControlPlan.Logged s6Step132EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 839 254 253 252 251 807 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step132EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step132EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step132EarlyControl_zero
  · exact s6Step132EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step132EarlyControl_flags
  · exact s6Step132EarlyControl_fit
  · exact s6Step132EarlyControl_history
  · exact s6Step132EarlyControl_sigma
  · exact s6Step132EarlyControl_branch

private theorem s6Step132EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step132EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 839 254 253 252 251 807 37 s6Step132EarlyControlLog=some s6Step132EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step132EarlyControlPlan s6Step132EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 839 254 253 252 251 807 37 s6Step132EarlyControl_logged

private def s6Step132EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step132EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩

private def s6Step132EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩

private def s6Step132EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],777⟩

private def s6Step132EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩

private def s6Step132FrontBank : WindowBank := ⟨s6Step132EntryFRow,s6Step132EntryGRow,s6Step132EntryFvRow,s6Step132EntryGvRow⟩

private def s6Step132Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 833, 795]

private def s6Step132Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 854, 838, 777]

private def s6Step132Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 776]

private def s6Step132Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 843, 775]

private theorem s6Step132Counter_apart : Disjoint s6Step132HeadFvAfter.live s6Step132CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step132HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132Counter_borrowed : s6Step132HeadFvAfter.checkBorrow 4 s6Step132CounterWork=some s6Step132CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step132HeadFvAfter s6Step132CounterDuring s6Step132CounterWork.toFinset s6Step132Counter_bounded s6Step132Counter_apart rfl

private theorem s6Step132Counter_owned : (839::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step132HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step132HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132Counter_checked : compileHmrCounterStepLog s6Step132HeadFvAfter true 839 [774, 773, 772, 771, 770, 769] s6Step132CounterWork=some s6Step132CounterDuring := by
  have owned : ∀q∈839::[774, 773, 772, 771, 770, 769],q∈s6Step132HeadFvAfter.live := fun q hq => s6Step132Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step132Counter_borrowed

private def s6Step132EntryFAfter : Arena := s6Step132EntryFBefore

private theorem s6Step132EntryBank_incomingDistinct : ([s6Step132EntryFRow,s6Step132EntryGRow,s6Step132EntryFvRow,s6Step132EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132EntryF_Incoming : rowsOwned s6Step132EntryFBefore [s6Step132EntryFRow,s6Step132EntryGRow,s6Step132EntryFvRow,s6Step132EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step132EntryFRow,s6Step132EntryGRow,s6Step132EntryFvRow,s6Step132EntryGvRow] 0 s6Step132EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step132EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step132EntryBank_outgoingOwned : rowsOwned s6Step132EntryGvAfter [s6Step132EntryFOut,s6Step132EntryGOut,s6Step132EntryFvOut,s6Step132EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step132EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step132EntryF_Outgoing : rowsOwned s6Step132EntryGvAfter [s6Step132EntryFOut,s6Step132EntryGOut,s6Step132EntryFvOut,s6Step132EntryGvOut] :=
  hmrRows_owned_drop s6Step132EntryGvAfter [s6Step132EntryFOut,s6Step132EntryGOut,s6Step132EntryFvOut,s6Step132EntryGvOut] 0 s6Step132EntryBank_outgoingOwned

private theorem s6Step132EntryF_distinct : (s6Step132EntryFRow.sign::s6Step132EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132EntryF_owned : (s6Step132EntryFRow.sign::s6Step132EntryFRow.payload).toFinset⊆s6Step132EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step132EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132EntryF_reserved : s6Step132EntryFBefore.reserve s6Step132EntryFFresh.toFinset=some s6Step132EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step132EntryFFresh,arenaWires]
  · norm_num [s6Step132EntryFBefore,s6Step132EntryFFresh,arenaWires]
  · simp only [s6Step132EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step132EntryF_checked : planRowResizeLog s6Step132EntryFBefore s6Step132EntryFRow 203 s6Step132EntryFFresh=
    some (s6Step132EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩,growRow 795 s6Step132EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step132EntryFBefore s6Step132EntryFAfter s6Step132EntryFRow 203 s6Step132EntryFFresh
    s6Step132EntryF_distinct s6Step132EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step132EntryF_reserved
  have rowEq : WindowRow.mk (s6Step132EntryFRow.payload++s6Step132EntryFFresh) s6Step132EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step132EntryFvAfter : Arena := s6Step132EntryGAfter

private def s6Step132EntryFvBefore : Arena := s6Step132EntryGAfter

private theorem s6Step132EntryFv_Incoming : rowsOwned s6Step132EntryFvBefore [s6Step132EntryFvRow,s6Step132EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step132EntryFRow,s6Step132EntryGRow,s6Step132EntryFvRow,s6Step132EntryGvRow] 2 s6Step132EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step132EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step132EntryFv_Outgoing : rowsOwned s6Step132EntryGvAfter [s6Step132EntryFvOut,s6Step132EntryGvOut] :=
  hmrRows_owned_drop s6Step132EntryGvAfter [s6Step132EntryFOut,s6Step132EntryGOut,s6Step132EntryFvOut,s6Step132EntryGvOut] 2 s6Step132EntryBank_outgoingOwned

private theorem s6Step132EntryFv_distinct : (s6Step132EntryFvRow.sign::s6Step132EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132EntryFv_owned : (s6Step132EntryFvRow.sign::s6Step132EntryFvRow.payload).toFinset⊆s6Step132EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step132EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132EntryFv_reserved : s6Step132EntryFvBefore.reserve s6Step132EntryFvFresh.toFinset=some s6Step132EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step132EntryFvFresh,arenaWires]
  · norm_num [s6Step132EntryFvBefore,s6Step132EntryGAfter,s6Step132EntryFvFresh,arenaWires]
  · simp only [s6Step132EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step132EntryFv_checked : planRowResizeLog s6Step132EntryFvBefore s6Step132EntryFvRow 79 s6Step132EntryFvFresh=
    some (s6Step132EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩,growRow 776 s6Step132EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step132EntryFvBefore s6Step132EntryFvAfter s6Step132EntryFvRow 79 s6Step132EntryFvFresh
    s6Step132EntryFv_distinct s6Step132EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step132EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step132EntryFvRow.payload++s6Step132EntryFvFresh) s6Step132EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step132EntryGBefore : Arena := s6Step132EntryFBefore

private theorem s6Step132EntryG_Incoming : rowsOwned s6Step132EntryGBefore [s6Step132EntryGRow,s6Step132EntryFvRow,s6Step132EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step132EntryFRow,s6Step132EntryGRow,s6Step132EntryFvRow,s6Step132EntryGvRow] 1 s6Step132EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step132EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step132EntryG_Outgoing : rowsOwned s6Step132EntryGvAfter [s6Step132EntryGOut,s6Step132EntryFvOut,s6Step132EntryGvOut] :=
  hmrRows_owned_drop s6Step132EntryGvAfter [s6Step132EntryFOut,s6Step132EntryGOut,s6Step132EntryFvOut,s6Step132EntryGvOut] 1 s6Step132EntryBank_outgoingOwned

private theorem s6Step132EntryG_distinct : (s6Step132EntryGRow.sign::s6Step132EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132EntryG_owned : (s6Step132EntryGRow.sign::s6Step132EntryGRow.payload).toFinset⊆s6Step132EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step132EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132EntryG_reserved : s6Step132EntryGBefore.reserve s6Step132EntryGFresh.toFinset=some s6Step132EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step132EntryGFresh,arenaWires]
  · norm_num [s6Step132EntryGBefore,s6Step132EntryFBefore,s6Step132EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step132EntryGBefore s6Step132EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step132EntryGFresh rfl rfl
    · norm_num [s6Step132EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step132EntryG_checked : planRowResizeLog s6Step132EntryGBefore s6Step132EntryGRow 203 s6Step132EntryGFresh=
    some (s6Step132EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 854],777⟩,growRow 777 s6Step132EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step132EntryGBefore s6Step132EntryGAfter s6Step132EntryGRow 203 s6Step132EntryGFresh
    s6Step132EntryG_distinct s6Step132EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step132EntryG_reserved
  have rowEq : WindowRow.mk (s6Step132EntryGRow.payload++s6Step132EntryGFresh) s6Step132EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 854],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step132EntryGvBefore : Arena := s6Step132EntryGAfter

private theorem s6Step132EntryGv_Incoming : rowsOwned s6Step132EntryGvBefore [s6Step132EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step132EntryFRow,s6Step132EntryGRow,s6Step132EntryFvRow,s6Step132EntryGvRow] 3 s6Step132EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step132EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step132EntryGv_Outgoing : rowsOwned s6Step132EntryGvAfter [s6Step132EntryGvOut] :=
  hmrRows_owned_drop s6Step132EntryGvAfter [s6Step132EntryFOut,s6Step132EntryGOut,s6Step132EntryFvOut,s6Step132EntryGvOut] 3 s6Step132EntryBank_outgoingOwned

private theorem s6Step132EntryGv_distinct : (s6Step132EntryGvRow.sign::s6Step132EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132EntryGv_owned : (s6Step132EntryGvRow.sign::s6Step132EntryGvRow.payload).toFinset⊆s6Step132EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step132EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132EntryGv_reserved : s6Step132EntryGvBefore.reserve s6Step132EntryGvFresh.toFinset=some s6Step132EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step132EntryGvFresh,arenaWires]
  · norm_num [s6Step132EntryGvBefore,s6Step132EntryGAfter,s6Step132EntryGvFresh,arenaWires]
  · simp only [s6Step132EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step132EntryGv_checked : planRowResizeLog s6Step132EntryGvBefore s6Step132EntryGvRow 79 s6Step132EntryGvFresh=
    some (s6Step132EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩,growRow 775 s6Step132EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step132EntryGvBefore s6Step132EntryGvAfter s6Step132EntryGvRow 79 s6Step132EntryGvFresh
    s6Step132EntryGv_distinct s6Step132EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step132EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step132EntryGvRow.payload++s6Step132EntryGvFresh) s6Step132EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step132EntryBank_rows : planWindowRowsLog s6Step132EntryFBefore [(s6Step132EntryFRow,203),(s6Step132EntryGRow,203),(s6Step132EntryFvRow,79),(s6Step132EntryGvRow,79)] [s6Step132EntryFFresh,s6Step132EntryGFresh,s6Step132EntryFvFresh,s6Step132EntryGvFresh]=
    some (s6Step132EntryGvAfter,[s6Step132EntryFOut,s6Step132EntryGOut,s6Step132EntryFvOut,s6Step132EntryGvOut],(growRow 795 s6Step132EntryFFresh ++ (growRow 777 s6Step132EntryGFresh ++ (growRow 776 s6Step132EntryFvFresh ++ (growRow 775 s6Step132EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step132EntryGvAfter [] []=some (s6Step132EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step132EntryGvBefore s6Step132EntryGvAfter s6Step132EntryGvAfter
    s6Step132EntryGvRow s6Step132EntryGvOut 79 s6Step132EntryGvFresh [] [] []
    (growRow 775 s6Step132EntryGvFresh) ([]) s6Step132EntryGv_Incoming s6Step132EntryGv_checked h4 s6Step132EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step132EntryFvBefore s6Step132EntryFvAfter s6Step132EntryGvAfter
    s6Step132EntryFvRow s6Step132EntryFvOut 79 s6Step132EntryFvFresh [(s6Step132EntryGvRow,79)] [s6Step132EntryGvFresh] [s6Step132EntryGvOut]
    (growRow 776 s6Step132EntryFvFresh) ((growRow 775 s6Step132EntryGvFresh ++ [])) s6Step132EntryFv_Incoming s6Step132EntryFv_checked h3 s6Step132EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step132EntryGBefore s6Step132EntryGAfter s6Step132EntryGvAfter
    s6Step132EntryGRow s6Step132EntryGOut 203 s6Step132EntryGFresh [(s6Step132EntryFvRow,79),(s6Step132EntryGvRow,79)] [s6Step132EntryFvFresh,s6Step132EntryGvFresh] [s6Step132EntryFvOut,s6Step132EntryGvOut]
    (growRow 777 s6Step132EntryGFresh) ((growRow 776 s6Step132EntryFvFresh ++ (growRow 775 s6Step132EntryGvFresh ++ []))) s6Step132EntryG_Incoming s6Step132EntryG_checked h2 s6Step132EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step132EntryFBefore s6Step132EntryFAfter s6Step132EntryGvAfter
    s6Step132EntryFRow s6Step132EntryFOut 203 s6Step132EntryFFresh [(s6Step132EntryGRow,203),(s6Step132EntryFvRow,79),(s6Step132EntryGvRow,79)] [s6Step132EntryGFresh,s6Step132EntryFvFresh,s6Step132EntryGvFresh] [s6Step132EntryGOut,s6Step132EntryFvOut,s6Step132EntryGvOut]
    (growRow 795 s6Step132EntryFFresh) ((growRow 777 s6Step132EntryGFresh ++ (growRow 776 s6Step132EntryFvFresh ++ (growRow 775 s6Step132EntryGvFresh ++ [])))) s6Step132EntryF_Incoming s6Step132EntryF_checked h1 s6Step132EntryF_Outgoing
  exact h0

private theorem s6Step132EntryBank_checked : compileHmrBankResizeLog .entry s6Step132EntryFBefore ⟨s6Step132EntryFRow,s6Step132EntryGRow,s6Step132EntryFvRow,s6Step132EntryGvRow⟩ ⟨203,203,79,79⟩ [s6Step132EntryFFresh,s6Step132EntryGFresh,s6Step132EntryFvFresh,s6Step132EntryGvFresh]=
    some (s6Step132EntryGvAfter,⟨s6Step132EntryFOut,s6Step132EntryGOut,s6Step132EntryFvOut,s6Step132EntryGvOut⟩,(growRow 795 s6Step132EntryFFresh ++ (growRow 777 s6Step132EntryGFresh ++ (growRow 776 s6Step132EntryFvFresh ++ (growRow 775 s6Step132EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step132EntryBank_rows]
  rfl

private def s6Step132ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step132ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step132ExitFBefore : Arena := s6Step132ExitGAfter

private def s6Step132ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 833],795⟩

private def s6Step132ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩

private def s6Step132ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 854, 838],777⟩

private def s6Step132ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 843],775⟩

private theorem s6Step132ExitBank_incomingDistinct : ([s6Step132ExitGRow,s6Step132ExitFRow,s6Step132ExitFvRow,s6Step132ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132ExitF_Incoming : rowsOwned s6Step132ExitFBefore [s6Step132ExitFRow,s6Step132ExitFvRow,s6Step132ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step132ExitGRow,s6Step132ExitFRow,s6Step132ExitFvRow,s6Step132ExitGvRow] 1 s6Step132ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step132ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step132ExitBank_outgoingOwned : rowsOwned s6Step132ExitGvAfter [s6Step132ExitGOut,s6Step132ExitFOut,s6Step132ExitFvOut,s6Step132ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step132ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step132ExitF_Outgoing : rowsOwned s6Step132ExitGvAfter [s6Step132ExitFOut,s6Step132ExitFvOut,s6Step132ExitGvOut] :=
  hmrRows_owned_drop s6Step132ExitGvAfter [s6Step132ExitGOut,s6Step132ExitFOut,s6Step132ExitFvOut,s6Step132ExitGvOut] 1 s6Step132ExitBank_outgoingOwned

private theorem s6Step132ExitF_distinct : (s6Step132ExitFRow.sign::s6Step132ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132ExitF_owned : (s6Step132ExitFRow.sign::s6Step132ExitFRow.payload).toFinset⊆s6Step132ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step132ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132ExitF_retired : s6Step132ExitFBefore.retireSet s6Step132ExitFExtra.toFinset=s6Step132ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step132ExitFBefore s6Step132ExitFAfter s6Step132ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step132ExitFBefore s6Step132ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step132ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step132ExitF_checked : planRowResizeLog s6Step132ExitFBefore s6Step132ExitFRow 203 []=
    some (s6Step132ExitFAfter,s6Step132ExitFOut,shrinkRow 795 s6Step132ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step132ExitFBefore s6Step132ExitFRow 203 s6Step132ExitF_distinct s6Step132ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step132ExitFRow.payload.take 203) s6Step132ExitFRow.sign=s6Step132ExitFOut := by decide +kernel
  have hi : s6Step132ExitFRow.payload.drop 203=s6Step132ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step132ExitF_retired] at result
  exact result

private def s6Step132ExitFvAfter : Arena := s6Step132ExitFAfter

private def s6Step132ExitFvBefore : Arena := s6Step132ExitFAfter

private theorem s6Step132ExitFv_Incoming : rowsOwned s6Step132ExitFvBefore [s6Step132ExitFvRow,s6Step132ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step132ExitGRow,s6Step132ExitFRow,s6Step132ExitFvRow,s6Step132ExitGvRow] 2 s6Step132ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step132ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step132ExitFv_Outgoing : rowsOwned s6Step132ExitGvAfter [s6Step132ExitFvOut,s6Step132ExitGvOut] :=
  hmrRows_owned_drop s6Step132ExitGvAfter [s6Step132ExitGOut,s6Step132ExitFOut,s6Step132ExitFvOut,s6Step132ExitGvOut] 2 s6Step132ExitBank_outgoingOwned

private theorem s6Step132ExitFv_distinct : (s6Step132ExitFvRow.sign::s6Step132ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132ExitFv_owned : (s6Step132ExitFvRow.sign::s6Step132ExitFvRow.payload).toFinset⊆s6Step132ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step132ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132ExitFv_reserved : s6Step132ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step132ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step132ExitFv_checked : planRowResizeLog s6Step132ExitFvBefore s6Step132ExitFvRow 80 []=
    some (s6Step132ExitFvAfter,s6Step132ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step132ExitFvBefore s6Step132ExitFvAfter s6Step132ExitFvRow 80 []
    s6Step132ExitFv_distinct s6Step132ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step132ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step132ExitFvRow.payload++[]) s6Step132ExitFvRow.sign=s6Step132ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step132ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step132ExitG_Incoming : rowsOwned s6Step132ExitGBefore [s6Step132ExitGRow,s6Step132ExitFRow,s6Step132ExitFvRow,s6Step132ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step132ExitGRow,s6Step132ExitFRow,s6Step132ExitFvRow,s6Step132ExitGvRow] 0 s6Step132ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step132ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step132ExitG_Outgoing : rowsOwned s6Step132ExitGvAfter [s6Step132ExitGOut,s6Step132ExitFOut,s6Step132ExitFvOut,s6Step132ExitGvOut] :=
  hmrRows_owned_drop s6Step132ExitGvAfter [s6Step132ExitGOut,s6Step132ExitFOut,s6Step132ExitFvOut,s6Step132ExitGvOut] 0 s6Step132ExitBank_outgoingOwned

private theorem s6Step132ExitG_distinct : (s6Step132ExitGRow.sign::s6Step132ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132ExitG_owned : (s6Step132ExitGRow.sign::s6Step132ExitGRow.payload).toFinset⊆s6Step132ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step132ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132ExitG_retired : s6Step132ExitGBefore.retireSet s6Step132ExitGExtra.toFinset=s6Step132ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step132ExitGBefore s6Step132ExitGAfter s6Step132ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step132ExitGBefore s6Step132ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step132ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step132ExitG_checked : planRowResizeLog s6Step132ExitGBefore s6Step132ExitGRow 202 []=
    some (s6Step132ExitGAfter,s6Step132ExitGOut,shrinkRow 777 s6Step132ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step132ExitGBefore s6Step132ExitGRow 202 s6Step132ExitG_distinct s6Step132ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step132ExitGRow.payload.take 202) s6Step132ExitGRow.sign=s6Step132ExitGOut := by decide +kernel
  have hi : s6Step132ExitGRow.payload.drop 202=s6Step132ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step132ExitG_retired] at result
  exact result

private def s6Step132ExitGvBefore : Arena := s6Step132ExitFAfter

private theorem s6Step132ExitGv_Incoming : rowsOwned s6Step132ExitGvBefore [s6Step132ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step132ExitGRow,s6Step132ExitFRow,s6Step132ExitFvRow,s6Step132ExitGvRow] 3 s6Step132ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step132ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step132ExitGv_Outgoing : rowsOwned s6Step132ExitGvAfter [s6Step132ExitGvOut] :=
  hmrRows_owned_drop s6Step132ExitGvAfter [s6Step132ExitGOut,s6Step132ExitFOut,s6Step132ExitFvOut,s6Step132ExitGvOut] 3 s6Step132ExitBank_outgoingOwned

private theorem s6Step132ExitGv_distinct : (s6Step132ExitGvRow.sign::s6Step132ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132ExitGv_owned : (s6Step132ExitGvRow.sign::s6Step132ExitGvRow.payload).toFinset⊆s6Step132ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step132ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132ExitGv_retired : s6Step132ExitGvBefore.retireSet s6Step132ExitGvExtra.toFinset=s6Step132ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step132ExitGvBefore s6Step132ExitGvAfter s6Step132ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step132ExitGvBefore s6Step132ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step132ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step132ExitGv_checked : planRowResizeLog s6Step132ExitGvBefore s6Step132ExitGvRow 79 []=
    some (s6Step132ExitGvAfter,s6Step132ExitGvOut,shrinkRow 775 s6Step132ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step132ExitGvBefore s6Step132ExitGvRow 79 s6Step132ExitGv_distinct s6Step132ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step132ExitGvRow.payload.take 79) s6Step132ExitGvRow.sign=s6Step132ExitGvOut := by decide +kernel
  have hi : s6Step132ExitGvRow.payload.drop 79=s6Step132ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step132ExitGv_retired] at result
  exact result

private theorem s6Step132ExitBank_rows : planWindowRowsLog s6Step132ExitGBefore [(s6Step132ExitGRow,202),(s6Step132ExitFRow,203),(s6Step132ExitFvRow,80),(s6Step132ExitGvRow,79)] [[],[],[],[]]=
    some (s6Step132ExitGvAfter,[s6Step132ExitGOut,s6Step132ExitFOut,s6Step132ExitFvOut,s6Step132ExitGvOut],(shrinkRow 777 s6Step132ExitGExtra ++ (shrinkRow 795 s6Step132ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step132ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step132ExitGvAfter [] []=some (s6Step132ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step132ExitGvBefore s6Step132ExitGvAfter s6Step132ExitGvAfter
    s6Step132ExitGvRow s6Step132ExitGvOut 79 [] [] [] []
    (shrinkRow 775 s6Step132ExitGvExtra) ([]) s6Step132ExitGv_Incoming s6Step132ExitGv_checked h4 s6Step132ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step132ExitFvBefore s6Step132ExitFvAfter s6Step132ExitGvAfter
    s6Step132ExitFvRow s6Step132ExitFvOut 80 [] [(s6Step132ExitGvRow,79)] [[]] [s6Step132ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step132ExitGvExtra ++ [])) s6Step132ExitFv_Incoming s6Step132ExitFv_checked h3 s6Step132ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step132ExitFBefore s6Step132ExitFAfter s6Step132ExitGvAfter
    s6Step132ExitFRow s6Step132ExitFOut 203 [] [(s6Step132ExitFvRow,80),(s6Step132ExitGvRow,79)] [[],[]] [s6Step132ExitFvOut,s6Step132ExitGvOut]
    (shrinkRow 795 s6Step132ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step132ExitGvExtra ++ []))) s6Step132ExitF_Incoming s6Step132ExitF_checked h2 s6Step132ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step132ExitGBefore s6Step132ExitGAfter s6Step132ExitGvAfter
    s6Step132ExitGRow s6Step132ExitGOut 202 [] [(s6Step132ExitFRow,203),(s6Step132ExitFvRow,80),(s6Step132ExitGvRow,79)] [[],[],[]] [s6Step132ExitFOut,s6Step132ExitFvOut,s6Step132ExitGvOut]
    (shrinkRow 777 s6Step132ExitGExtra) ((shrinkRow 795 s6Step132ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step132ExitGvExtra ++ [])))) s6Step132ExitG_Incoming s6Step132ExitG_checked h1 s6Step132ExitG_Outgoing
  exact h0

private theorem s6Step132ExitBank_checked : compileHmrBankResizeLog .exit s6Step132ExitGBefore ⟨s6Step132ExitFRow,s6Step132ExitGRow,s6Step132ExitFvRow,s6Step132ExitGvRow⟩ ⟨203,202,80,79⟩ [[],[],[],[]]=
    some (s6Step132ExitGvAfter,⟨s6Step132ExitFOut,s6Step132ExitGOut,s6Step132ExitFvOut,s6Step132ExitGvOut⟩,(shrinkRow 777 s6Step132ExitGExtra ++ (shrinkRow 795 s6Step132ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step132ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step132ExitBank_rows]
  rfl

private theorem s6Step132Add0_apart : Disjoint s6Step132Add0Arena.live s6Step132Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step132Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step132Add0_card : s6Step132Add0Arena.live.card=875 := by
  decide +kernel

private theorem s6Step132Add0_borrowed : s6Step132Add0Arena.checkBorrow (hmrHybridCount s6Step132Add0Arena s6Step132Add0B.length) s6Step132Add0Work=some s6Step132Add0During := by
  have len : s6Step132Add0Work.length=hmrHybridCount s6Step132Add0Arena s6Step132Add0B.length := by
    rw [hmrHybridCount,s6Step132Add0_card]
    decide +kernel
  have nd : s6Step132Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step132Add0Arena s6Step132Add0During s6Step132Add0Work.toFinset s6Step132Add0_bounded s6Step132Add0_apart rfl

private theorem s6Step132Add0_distinct : (822::807::813::(s6Step132Add0A++s6Step132Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132Add0_owned : (822::807::813::(s6Step132Add0A++s6Step132Add0B)).toFinset⊆s6Step132Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step132Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step132Add0_checked : compileHmrHybridCinLog s6Step132Add0Arena 807 822 813 s6Step132Add0A s6Step132Add0B s6Step132Add0Work=some s6Step132Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step132Add0Arena s6Step132Add0During 807 822 813 s6Step132Add0A s6Step132Add0B s6Step132Add0Work
    (by decide +kernel) (by decide +kernel) s6Step132Add0_distinct
    (fun q hq => s6Step132Add0_owned (List.mem_toFinset.mpr hq)) s6Step132Add0_borrowed

private theorem s6Step132Add1_apart : Disjoint s6Step132Add1Arena.live s6Step132Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step132Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step132Add1_card : s6Step132Add1Arena.live.card=875 := by
  decide +kernel

private theorem s6Step132Add1_borrowed : s6Step132Add1Arena.checkBorrow (hmrHybridCount s6Step132Add1Arena s6Step132Add1B.length) s6Step132Add1Work=some s6Step132Add1During := by
  have len : s6Step132Add1Work.length=hmrHybridCount s6Step132Add1Arena s6Step132Add1B.length := by
    rw [hmrHybridCount,s6Step132Add1_card]
    decide +kernel
  have nd : s6Step132Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step132Add1Arena s6Step132Add1During s6Step132Add1Work.toFinset s6Step132Add1_bounded s6Step132Add1_apart rfl

private theorem s6Step132Add1_distinct : (822::807::813::(s6Step132Add1A++s6Step132Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132Add1_owned : (822::807::813::(s6Step132Add1A++s6Step132Add1B)).toFinset⊆s6Step132Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step132Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step132Add1_checked : compileHmrHybridCinLog s6Step132Add1Arena 807 822 813 s6Step132Add1A s6Step132Add1B s6Step132Add1Work=some s6Step132Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step132Add1Arena s6Step132Add1During 807 822 813 s6Step132Add1A s6Step132Add1B s6Step132Add1Work
    (by decide +kernel) (by decide +kernel) s6Step132Add1_distinct
    (fun q hq => s6Step132Add1_owned (List.mem_toFinset.mpr hq)) s6Step132Add1_borrowed

private theorem s6Step132F4_apart : Disjoint (s6Step132Add0A++s6Step132Add0B).toFinset (s6Step132Add1A++s6Step132Add1B).toFinset := by
  have nd : ((s6Step132Add0A++s6Step132Add0B)++(s6Step132Add1A++s6Step132Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step132F4_carry : s6Step132F4FlagArena.checkBorrow 1 [813]=some s6Step132Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step132F4FlagArena,s6Step132HeadFvAfter,arenaWires]
  · change s6Step132Add0Arena.live=(s6Step132HeadFvAfter.live∪{822})∪{813}
    apply hmrArena_union_pair_of_filter_check s6Step132HeadFvAfter s6Step132Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 822 813 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step132F4_distinct : (839::807::822::813::((s6Step132Add0A++s6Step132Add1A)++(s6Step132Add0B++s6Step132Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132F4_flag : s6Step132HeadFvAfter.checkBorrow 1 [822]=some s6Step132F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step132HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step132F4_owned : (839::807::((s6Step132Add0A++s6Step132Add1A)++(s6Step132Add0B++s6Step132Add1B))).toFinset⊆s6Step132HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step132HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132F4_checked : compileHmrHybridF4Log s6Step132HeadFvAfter 839 807 s6Step132Add0A s6Step132Add0B s6Step132Add1A s6Step132Add1B [822] [813] s6Step132Add0Work s6Step132Add1Work=some s6Step132F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step132HeadFvAfter s6Step132F4FlagArena s6Step132Add0Arena s6Step132Add0During s6Step132Add1During 839 807
    s6Step132Add0A s6Step132Add0B s6Step132Add1A s6Step132Add1B [822] [813] s6Step132Add0Work s6Step132Add1Work
    (fun q hq => s6Step132F4_owned (List.mem_toFinset.mpr hq)) s6Step132F4_flag s6Step132F4_carry
    s6Step132F4_distinct s6Step132F4_apart s6Step132Add0_checked s6Step132Add1_checked

private theorem s6Step132Front_branch : s6Step132FrontSigmaArena.checkBorrow 1 [807]=some s6Step132HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step132FrontSigmaArena,s6Step132EntryGvAfter,s6Step132EntryGAfter,arenaWires]
  · change s6Step132HeadGBefore.live=(s6Step132EntryGvAfter.live∪{839})∪{807}
    apply hmrArena_union_pair_of_filter_check s6Step132EntryGvAfter s6Step132HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 839 807 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step132Front_entry : HmrFrontEntryValid s6Step132EntryFBefore s6Step132FrontBank 203 79 ⟨203,202,80,79⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step132FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step132EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step132EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step132FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step132Front_sigma : s6Step132EntryGvAfter.checkBorrow 1 [839]=some s6Step132FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step132EntryGvAfter,s6Step132EntryGAfter,arenaWires]
  · rfl

private def s6Step132HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step132HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step132HeadFBefore : Arena := s6Step132HeadGAfter

private def s6Step132HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩

private def s6Step132HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩

private def s6Step132HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 854],777⟩

private def s6Step132HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩

private theorem s6Step132HeadBank_incomingDistinct : ([s6Step132HeadGRow,s6Step132HeadFRow,s6Step132HeadGvRow,s6Step132HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132HeadF_Incoming : rowsOwned s6Step132HeadFBefore [s6Step132HeadFRow,s6Step132HeadGvRow,s6Step132HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step132HeadGRow,s6Step132HeadFRow,s6Step132HeadGvRow,s6Step132HeadFvRow] 1 s6Step132HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step132HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step132HeadBank_outgoingOwned : rowsOwned s6Step132HeadFvAfter [s6Step132HeadGOut,s6Step132HeadFOut,s6Step132HeadGvOut,s6Step132HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step132HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step132HeadF_Outgoing : rowsOwned s6Step132HeadFvAfter [s6Step132HeadFOut,s6Step132HeadGvOut,s6Step132HeadFvOut] :=
  hmrRows_owned_drop s6Step132HeadFvAfter [s6Step132HeadGOut,s6Step132HeadFOut,s6Step132HeadGvOut,s6Step132HeadFvOut] 1 s6Step132HeadBank_outgoingOwned

private theorem s6Step132HeadF_distinct : (s6Step132HeadFRow.sign::s6Step132HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132HeadF_owned : (s6Step132HeadFRow.sign::s6Step132HeadFRow.payload).toFinset⊆s6Step132HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step132HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132HeadF_reserved : s6Step132HeadFBefore.reserve s6Step132HeadFFresh.toFinset=some s6Step132HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step132HeadFFresh,arenaWires]
  · norm_num [s6Step132HeadFBefore,s6Step132HeadGAfter,s6Step132HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step132HeadFBefore s6Step132HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step132HeadFFresh rfl rfl
    · norm_num [s6Step132HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step132HeadF_checked : planRowResizeLog s6Step132HeadFBefore s6Step132HeadFRow 204 s6Step132HeadFFresh=
    some (s6Step132HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 833],795⟩,growRow 795 s6Step132HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step132HeadFBefore s6Step132HeadFAfter s6Step132HeadFRow 204 s6Step132HeadFFresh
    s6Step132HeadF_distinct s6Step132HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step132HeadF_reserved
  have rowEq : WindowRow.mk (s6Step132HeadFRow.payload++s6Step132HeadFFresh) s6Step132HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 833],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step132HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step132HeadFvBefore : Arena := s6Step132HeadGvAfter

private theorem s6Step132HeadFv_Incoming : rowsOwned s6Step132HeadFvBefore [s6Step132HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step132HeadGRow,s6Step132HeadFRow,s6Step132HeadGvRow,s6Step132HeadFvRow] 3 s6Step132HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step132HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step132HeadFv_Outgoing : rowsOwned s6Step132HeadFvAfter [s6Step132HeadFvOut] :=
  hmrRows_owned_drop s6Step132HeadFvAfter [s6Step132HeadGOut,s6Step132HeadFOut,s6Step132HeadGvOut,s6Step132HeadFvOut] 3 s6Step132HeadBank_outgoingOwned

private theorem s6Step132HeadFv_distinct : (s6Step132HeadFvRow.sign::s6Step132HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132HeadFv_owned : (s6Step132HeadFvRow.sign::s6Step132HeadFvRow.payload).toFinset⊆s6Step132HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step132HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132HeadFv_reserved : s6Step132HeadFvBefore.reserve s6Step132HeadFvFresh.toFinset=some s6Step132HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step132HeadFvFresh,arenaWires]
  · norm_num [s6Step132HeadFvBefore,s6Step132HeadGvAfter,s6Step132HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step132HeadFvBefore s6Step132HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step132HeadFvFresh rfl rfl
    · norm_num [s6Step132HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step132HeadFv_checked : planRowResizeLog s6Step132HeadFvBefore s6Step132HeadFvRow 80 s6Step132HeadFvFresh=
    some (s6Step132HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩,growRow 776 s6Step132HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step132HeadFvBefore s6Step132HeadFvAfter s6Step132HeadFvRow 80 s6Step132HeadFvFresh
    s6Step132HeadFv_distinct s6Step132HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step132HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step132HeadFvRow.payload++s6Step132HeadFvFresh) s6Step132HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step132HeadG_Incoming : rowsOwned s6Step132HeadGBefore [s6Step132HeadGRow,s6Step132HeadFRow,s6Step132HeadGvRow,s6Step132HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step132HeadGRow,s6Step132HeadFRow,s6Step132HeadGvRow,s6Step132HeadFvRow] 0 s6Step132HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step132HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step132HeadG_Outgoing : rowsOwned s6Step132HeadFvAfter [s6Step132HeadGOut,s6Step132HeadFOut,s6Step132HeadGvOut,s6Step132HeadFvOut] :=
  hmrRows_owned_drop s6Step132HeadFvAfter [s6Step132HeadGOut,s6Step132HeadFOut,s6Step132HeadGvOut,s6Step132HeadFvOut] 0 s6Step132HeadBank_outgoingOwned

private theorem s6Step132HeadG_distinct : (s6Step132HeadGRow.sign::s6Step132HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132HeadG_owned : (s6Step132HeadGRow.sign::s6Step132HeadGRow.payload).toFinset⊆s6Step132HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step132HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132HeadG_reserved : s6Step132HeadGBefore.reserve s6Step132HeadGFresh.toFinset=some s6Step132HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step132HeadGFresh,arenaWires]
  · norm_num [s6Step132HeadGBefore,s6Step132HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step132HeadGBefore s6Step132HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step132HeadGFresh rfl rfl
    · norm_num [s6Step132HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step132HeadG_checked : planRowResizeLog s6Step132HeadGBefore s6Step132HeadGRow 204 s6Step132HeadGFresh=
    some (s6Step132HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 854, 838],777⟩,growRow 777 s6Step132HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step132HeadGBefore s6Step132HeadGAfter s6Step132HeadGRow 204 s6Step132HeadGFresh
    s6Step132HeadG_distinct s6Step132HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step132HeadG_reserved
  have rowEq : WindowRow.mk (s6Step132HeadGRow.payload++s6Step132HeadGFresh) s6Step132HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 854, 838],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step132HeadGvBefore : Arena := s6Step132HeadFAfter

private theorem s6Step132HeadGv_Incoming : rowsOwned s6Step132HeadGvBefore [s6Step132HeadGvRow,s6Step132HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step132HeadGRow,s6Step132HeadFRow,s6Step132HeadGvRow,s6Step132HeadFvRow] 2 s6Step132HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step132HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step132HeadGv_Outgoing : rowsOwned s6Step132HeadFvAfter [s6Step132HeadGvOut,s6Step132HeadFvOut] :=
  hmrRows_owned_drop s6Step132HeadFvAfter [s6Step132HeadGOut,s6Step132HeadFOut,s6Step132HeadGvOut,s6Step132HeadFvOut] 2 s6Step132HeadBank_outgoingOwned

private theorem s6Step132HeadGv_distinct : (s6Step132HeadGvRow.sign::s6Step132HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step132HeadGv_owned : (s6Step132HeadGvRow.sign::s6Step132HeadGvRow.payload).toFinset⊆s6Step132HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step132HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step132HeadGv_reserved : s6Step132HeadGvBefore.reserve s6Step132HeadGvFresh.toFinset=some s6Step132HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step132HeadGvFresh,arenaWires]
  · norm_num [s6Step132HeadGvBefore,s6Step132HeadFAfter,s6Step132HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step132HeadGvBefore s6Step132HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step132HeadGvFresh rfl rfl
    · norm_num [s6Step132HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step132HeadGv_checked : planRowResizeLog s6Step132HeadGvBefore s6Step132HeadGvRow 80 s6Step132HeadGvFresh=
    some (s6Step132HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 843],775⟩,growRow 775 s6Step132HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step132HeadGvBefore s6Step132HeadGvAfter s6Step132HeadGvRow 80 s6Step132HeadGvFresh
    s6Step132HeadGv_distinct s6Step132HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step132HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step132HeadGvRow.payload++s6Step132HeadGvFresh) s6Step132HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 843],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step132HeadBank_rows : planWindowRowsLog s6Step132HeadGBefore [(s6Step132HeadGRow,204),(s6Step132HeadFRow,204),(s6Step132HeadGvRow,80),(s6Step132HeadFvRow,80)] [s6Step132HeadGFresh,s6Step132HeadFFresh,s6Step132HeadGvFresh,s6Step132HeadFvFresh]=
    some (s6Step132HeadFvAfter,[s6Step132HeadGOut,s6Step132HeadFOut,s6Step132HeadGvOut,s6Step132HeadFvOut],(growRow 777 s6Step132HeadGFresh ++ (growRow 795 s6Step132HeadFFresh ++ (growRow 775 s6Step132HeadGvFresh ++ (growRow 776 s6Step132HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step132HeadFvAfter [] []=some (s6Step132HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step132HeadFvBefore s6Step132HeadFvAfter s6Step132HeadFvAfter
    s6Step132HeadFvRow s6Step132HeadFvOut 80 s6Step132HeadFvFresh [] [] []
    (growRow 776 s6Step132HeadFvFresh) ([]) s6Step132HeadFv_Incoming s6Step132HeadFv_checked h4 s6Step132HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step132HeadGvBefore s6Step132HeadGvAfter s6Step132HeadFvAfter
    s6Step132HeadGvRow s6Step132HeadGvOut 80 s6Step132HeadGvFresh [(s6Step132HeadFvRow,80)] [s6Step132HeadFvFresh] [s6Step132HeadFvOut]
    (growRow 775 s6Step132HeadGvFresh) ((growRow 776 s6Step132HeadFvFresh ++ [])) s6Step132HeadGv_Incoming s6Step132HeadGv_checked h3 s6Step132HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step132HeadFBefore s6Step132HeadFAfter s6Step132HeadFvAfter
    s6Step132HeadFRow s6Step132HeadFOut 204 s6Step132HeadFFresh [(s6Step132HeadGvRow,80),(s6Step132HeadFvRow,80)] [s6Step132HeadGvFresh,s6Step132HeadFvFresh] [s6Step132HeadGvOut,s6Step132HeadFvOut]
    (growRow 795 s6Step132HeadFFresh) ((growRow 775 s6Step132HeadGvFresh ++ (growRow 776 s6Step132HeadFvFresh ++ []))) s6Step132HeadF_Incoming s6Step132HeadF_checked h2 s6Step132HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step132HeadGBefore s6Step132HeadGAfter s6Step132HeadFvAfter
    s6Step132HeadGRow s6Step132HeadGOut 204 s6Step132HeadGFresh [(s6Step132HeadFRow,204),(s6Step132HeadGvRow,80),(s6Step132HeadFvRow,80)] [s6Step132HeadFFresh,s6Step132HeadGvFresh,s6Step132HeadFvFresh] [s6Step132HeadFOut,s6Step132HeadGvOut,s6Step132HeadFvOut]
    (growRow 777 s6Step132HeadGFresh) ((growRow 795 s6Step132HeadFFresh ++ (growRow 775 s6Step132HeadGvFresh ++ (growRow 776 s6Step132HeadFvFresh ++ [])))) s6Step132HeadG_Incoming s6Step132HeadG_checked h1 s6Step132HeadG_Outgoing
  exact h0

private theorem s6Step132HeadBank_checked : compileHmrBankResizeLog .headroom s6Step132HeadGBefore ⟨s6Step132HeadFRow,s6Step132HeadGRow,s6Step132HeadFvRow,s6Step132HeadGvRow⟩ ⟨204,204,80,80⟩ [s6Step132HeadGFresh,s6Step132HeadFFresh,s6Step132HeadGvFresh,s6Step132HeadFvFresh]=
    some (s6Step132HeadFvAfter,⟨s6Step132HeadFOut,s6Step132HeadGOut,s6Step132HeadFvOut,s6Step132HeadGvOut⟩,(growRow 777 s6Step132HeadGFresh ++ (growRow 795 s6Step132HeadFFresh ++ (growRow 775 s6Step132HeadGvFresh ++ (growRow 776 s6Step132HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step132HeadBank_rows]
  rfl

private theorem s6Step132Front_checked : compileHmrSourceFrontLog s6Step132EntryFBefore s6Step132FrontBank 203 79 ⟨203,202,80,79⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step132FrontLog=some s6Step132FrontPlan := by
  have pairEq : s6Step132FrontPair=⟨s6Step132HeadFRow,s6Step132HeadGRow,s6Step132HeadFvRow,s6Step132HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step132FrontHead=⟨s6Step132ExitFRow,s6Step132ExitGRow,s6Step132ExitFvRow,s6Step132ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step132Add0A=s6Step132FrontHead.f.wires := by decide +kernel
  have gEq : s6Step132Add0B=s6Step132FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step132Add1A=s6Step132FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step132Add1B=s6Step132FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step132EntryFBefore s6Step132FrontBank 203 79 ⟨203,202,80,79⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step132FrontLog s6Step132FrontPlan
  · exact s6Step132Front_entry
  · exact s6Step132EntryBank_checked
  · exact s6Step132Front_sigma
  · rfl
  · exact s6Step132Front_branch
  · rfl
  · simpa only [s6Step132FrontPlan,pairEq] using s6Step132HeadBank_checked
  · simpa only [s6Step132FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step132F4_checked
  · exact s6Step132Counter_checked
  · rfl
  · simpa only [s6Step132FrontPlan,headEq] using s6Step132ExitBank_checked

private theorem s6Step132Complete_explicit_checked : compileHmrEarlyStepLog s6Step132EntryFBefore s6Step132FrontBank 203 79 ⟨203,202,80,79⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step132CompleteLog=some s6Step132CompletePlan := by
  let Q := s6Step132EarlyControlPlan
  have hq := s6Step132EarlyControl_plan_checked
  have fv1 : s6Step132CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step132CompleteOut.fv.payload[2]?.getD s6Step132CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step132CompleteOut.fv.payload[3]?.getD s6Step132CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step132CompleteOut.fv.payload[4]?.getD s6Step132CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step132EntryFBefore s6Step132EarlyControlArena s6Step132FrontBank 203 79 ⟨203,202,80,79⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step132CompleteLog s6Step132FrontPlan Q
    s6Step132Front_checked s6Step132Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step132Complete_owned s6Step132Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step132EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 839 s6Step132CompleteOut.fv.second (s6Step132CompleteOut.fv.payload[2]?.getD s6Step132CompleteOut.fv.sign) (s6Step132CompleteOut.fv.payload[3]?.getD s6Step132CompleteOut.fv.sign) (s6Step132CompleteOut.fv.payload[4]?.getD s6Step132CompleteOut.fv.sign) 807 37 s6Step132EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep132Arena : Arena := s6Step132EntryFBefore
def s6PrivateStep132Bank : WindowBank := s6Step132FrontBank
def s6PrivateStep132Spec : HmrSourceWalkStepLog := ⟨203,79,⟨203,202,80,79⟩,37,.early s6Step132CompleteLog⟩
def s6PrivateStep132Plan : HmrSourceStepPlan := .early s6Step132CompletePlan
theorem s6PrivateStep132_source : s6PrivateStep132Spec=s6ObservedLogs128[4] := rfl
theorem s6PrivateStep132_checked : compileHmrSourceStepLog s6PrivateStep132Arena s6PrivateStep132Bank
    s6PrivateStep132Spec.fgWidth s6PrivateStep132Spec.vWidth s6PrivateStep132Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 132 s6PrivateStep132Spec.need none s6PrivateStep132Spec.log=some s6PrivateStep132Plan := by
  change compileHmrSourceStepLog s6Step132EntryFBefore s6Step132FrontBank 203 79 ⟨203,202,80,79⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 132 37 none (.early s6Step132CompleteLog)=some (.early s6Step132CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 132<498)]
  rw [s6Step132Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
