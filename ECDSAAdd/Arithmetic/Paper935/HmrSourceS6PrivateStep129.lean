import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep127
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

private def s6Step129CompleteMoves : List (Wire × Wire) := [(839,204)]

private def s6Step129EarlyControlLog : HmrEarlyControlLog := ⟨[839, 813, 822, 838, 833],[850],[879],[875, 882, 891, 903, 791, 825],[]⟩

private def s6Step129FrontLog : HmrFrontAllocationLog := ⟨⟨[[822], [], [], []],[[833], [838], [813], [841]],[[], [], [], []]⟩,[854],[898],[850],[879],[875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[850, 879, 875, 882]⟩

private def s6Step129CompleteLog : HmrEarlyStepLog := ⟨s6Step129FrontLog,s6Step129CompleteMoves,s6Step129EarlyControlLog⟩

private def s6Step129ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459],795⟩

private def s6Step129ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩

private def s6Step129ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203],777⟩

private def s6Step129ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796],775⟩

private def s6Step129FrontOut : WindowBank := ⟨s6Step129ExitFOut,s6Step129ExitGOut,s6Step129ExitFvOut,s6Step129ExitGvOut⟩

private def s6Step129CompleteOut : WindowBank := s6Step129FrontOut.repacked s6Step129CompleteMoves

private def s6Step129EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step129EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step129EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step129EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step129EarlyControlPositiveArena,[850],s6Step129EarlyControlEqualityArena,[879],⟨⟨854,false⟩,[⟨⟨850,false⟩,879⟩]⟩⟩

private def s6Step129EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step129EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step129EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step129EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step129EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step129EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step129EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,839⟩,⟨⟨772,false⟩,813⟩,⟨⟨771,false⟩,822⟩,⟨⟨770,false⟩,838⟩,⟨⟨769,false⟩,833⟩]⟩

private def s6Step129EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step129EarlyControlZeroArena,s6Step129EarlyControlZeroPlan,s6Step129EarlyControlClassPlan,s6Step129EarlyControlFlagArena,s6Step129EarlyControlFittedArena,s6Step129EarlyControlHistoryArena,s6Step129EarlyControlSigmaArena,s6Step129EarlyControlOutputArena,s6Step129EarlyControlLog⟩

private def s6Step129CounterWork : List Wire := [850, 879, 875, 882]

private theorem s6Step129Counter_bounded : s6Step129CounterWork.toFinset⊆arenaWires := by norm_num [s6Step129CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step129HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step129CounterDuring : Arena := ⟨s6Step129HeadFvAfter.live∪s6Step129CounterWork.toFinset,Finset.union_subset s6Step129HeadFvAfter.bounded s6Step129Counter_bounded⟩

private def s6Step129EntryFFresh : List Wire := [822]

private def s6Step129EntryFvFresh : List Wire := []

private def s6Step129EntryGFresh : List Wire := []

private def s6Step129EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step129EntryGvAfter : Arena := s6Step129EntryFAfter

private def s6Step129EntryGvFresh : List Wire := []

private def s6Step129ExitFExtra : List Wire := [822, 838]

private def s6Step129ExitGExtra : List Wire := [204, 833]

private def s6Step129ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,204),(205,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step129ExitGvExtra : List Wire := [813]

private def s6Step129Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step129Add0Work : List Wire := [875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step129Add0_bounded : s6Step129Add0Work.toFinset⊆arenaWires := by
  have h : s6Step129Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step129Add0During : Arena := ⟨s6Step129Add0Arena.live∪s6Step129Add0Work.toFinset,Finset.union_subset s6Step129Add0Arena.bounded s6Step129Add0_bounded⟩

private def s6Step129Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step129Add1Work : List Wire := [875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step129Add1_bounded : s6Step129Add1Work.toFinset⊆arenaWires := by
  have h : s6Step129Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step129Add1During : Arena := ⟨s6Step129Add1Arena.live∪s6Step129Add1Work.toFinset,Finset.union_subset s6Step129Add1Arena.bounded s6Step129Add1_bounded⟩

private def s6Step129F4FlagArena : Arena := ⟨s6Step129HeadFvAfter.live∪{850},Finset.union_subset s6Step129HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step129F4Plan : HmrHybridF4Plan := ⟨s6Step129F4FlagArena,[850],s6Step129Add0Arena,[879],s6Step129Add0During,s6Step129Add0Work,s6Step129Add1During,s6Step129Add1Work⟩

private def s6Step129HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 822, 838],795⟩

private def s6Step129HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩

private def s6Step129HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 833],777⟩

private def s6Step129HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 813],775⟩

private def s6Step129FrontHead : WindowBank := ⟨s6Step129HeadFOut,s6Step129HeadGOut,s6Step129HeadFvOut,s6Step129HeadGvOut⟩

private def s6Step129EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 822],795⟩

private def s6Step129EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩

private def s6Step129EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],777⟩

private def s6Step129EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796],775⟩

private def s6Step129FrontPair : WindowBank := ⟨s6Step129EntryFOut,s6Step129EntryGOut,s6Step129EntryFvOut,s6Step129EntryGvOut⟩

private def s6Step129FrontSigmaArena : Arena := ⟨s6Step129EntryGvAfter.live∪{854},Finset.union_subset s6Step129EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step129HeadFFresh : List Wire := [838]

private def s6Step129HeadFvFresh : List Wire := [841]

private def s6Step129HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step129HeadGFresh : List Wire := [833]

private def s6Step129HeadGvFresh : List Wire := [813]

private def s6Step129FrontPlan : HmrSourceFront := ⟨s6Step129EntryGvAfter,s6Step129FrontPair,(growRow 795 s6Step129EntryFFresh ++ (growRow 777 s6Step129EntryGFresh ++ (growRow 776 s6Step129EntryFvFresh ++ (growRow 775 s6Step129EntryGvFresh ++ [])))),s6Step129FrontSigmaArena,[854],s6Step129HeadGBefore,[898],
  s6Step129HeadFvAfter,s6Step129FrontHead,(growRow 777 s6Step129HeadGFresh ++ (growRow 795 s6Step129HeadFFresh ++ (growRow 775 s6Step129HeadGvFresh ++ (growRow 776 s6Step129HeadFvFresh ++ [])))),s6Step129F4Plan,s6Step129CounterDuring,s6Step129CounterWork,s6Step129ExitGvAfter,s6Step129FrontOut,(shrinkRow 777 s6Step129ExitGExtra ++ (shrinkRow 795 s6Step129ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step129ExitGvExtra ++ []))))⟩

private def s6Step129CompletePlan : HmrEarlyStepPlan := ⟨s6Step129FrontPlan,s6Step129EarlyControlArena,s6Step129EarlyControlPlan,s6Step129CompleteMoves⟩

private theorem s6Step129Complete_apart : List.Disjoint (s6Step129CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [854, 898, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step129CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[854, 898, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step129Complete_owned : (s6Step129CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step129EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step129EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step129CompleteRelocationMove0Borrowed : Arena := ⟨s6Step129ExitGvAfter.live∪{204},Finset.union_subset s6Step129ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step129CompleteRelocation_move0_owned : 839∈s6Step129ExitGvAfter.live := by norm_num [s6Step129ExitGvAfter,arenaWires]

private theorem s6Step129CompleteRelocation_move0_reserve : s6Step129ExitGvAfter.reserve {204}=some s6Step129CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step129ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step129CompleteRelocation_move0_retire : s6Step129CompleteRelocationMove0Borrowed.retireSet {839}=s6Step129EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step129CompleteRelocationMove0Borrowed s6Step129EarlyControlArena {839}
  change s6Step129EarlyControlArena.live=(s6Step129ExitGvAfter.live∪{204})\{839}
  apply hmrArena_update_of_filter_check s6Step129ExitGvAfter s6Step129EarlyControlArena (fun q => ([(0,204),(205,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [204] [839] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step129CompleteRelocation_checked : s6Step129ExitGvAfter.checkRepack [(839,204)]=some s6Step129EarlyControlArena := by
  have tail1 : s6Step129EarlyControlArena.checkRepack []=some s6Step129EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step129ExitGvAfter s6Step129CompleteRelocationMove0Borrowed s6Step129EarlyControlArena s6Step129EarlyControlArena 839 204 []
    s6Step129CompleteRelocation_move0_owned s6Step129CompleteRelocation_move0_reserve s6Step129CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step129Complete_repack : s6Step129ExitGvAfter.checkRepack s6Step129CompleteMoves=some s6Step129EarlyControlArena := by
  simpa only [s6Step129CompleteMoves] using s6Step129CompleteRelocation_checked

private theorem s6Step129EarlyControl_branchOwned : ([898] : List Wire).toFinset⊆s6Step129EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step129EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step129EarlyControl_branch : compileHmrBranchRetirement s6Step129EarlyControlSigmaArena 898=some s6Step129EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step129EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step129EarlyControlSigmaArena s6Step129EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [898] rfl rfl
    decide +kernel

private theorem s6Step129EarlyControl_classEqualityBorrow : s6Step129EarlyControlPositiveArena.checkBorrow (([854, 850] : List Wire).length-1) s6Step129EarlyControlLog.classWork=some s6Step129EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step129EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step129EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step129EarlyControlEqualityArena,s6Step129EarlyControlPositiveArena,s6Step129EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step129EarlyControl_classEqualityOwned : ([854, 850] : List Wire).toFinset⊆s6Step129EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step129EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129EarlyControl_classEquality : compileHmrEqualityLog s6Step129EarlyControlPositiveArena [854, 850] 0 s6Step129EarlyControlLog.classWork=some (s6Step129EarlyControlEqualityArena,s6Step129EarlyControlLog.classWork,s6Step129EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step129EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step129EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step129EarlyControl_classOwned : ([769, 833, 854] : List Wire).toFinset⊆s6Step129EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step129EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129EarlyControl_positiveBorrow : s6Step129EarlyControlZeroArena.checkBorrow (1) s6Step129EarlyControlLog.positiveWork=some s6Step129EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step129EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step129EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step129EarlyControlPositiveArena,s6Step129EarlyControlZeroArena,s6Step129EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step129EarlyControl_class : compileHmrSourceClassLog s6Step129EarlyControlZeroArena false 769 s6Step129EarlyControlZeroPlan.top 0 854 s6Step129EarlyControlLog.positiveWork s6Step129EarlyControlLog.classWork=some s6Step129EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step129EarlyControlClassPlan s6Step129EarlyControlZeroArena false 769 s6Step129EarlyControlZeroPlan.top 0 854
  constructor
  · decide +kernel
  · exact s6Step129EarlyControl_classOwned
  · exact s6Step129EarlyControl_positiveBorrow
  · exact s6Step129EarlyControl_classEquality

private theorem s6Step129EarlyControl_entryRecordOwned : ([898, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step129EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step129EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step129EarlyControl_entrySigmaOwned : ([854, 254] : List Wire).toFinset⊆s6Step129EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step129EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step129EarlyControl_fitBorrow : s6Step129EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step129EarlyControlLog.recordFresh=some s6Step129EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step129EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step129EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step129EarlyControlFittedArena,s6Step129EarlyControlFlagArena,s6Step129EarlyControlLog,arenaWires]

private theorem s6Step129EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step129EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step129EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129EarlyControl_fit : compileHmrRecordGrowLog s6Step129EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step129EarlyControlLog.recordFresh=some s6Step129EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step129EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step129EarlyControl_fitBorrow

private theorem s6Step129EarlyControl_flagsBorrow : s6Step129EarlyControlEqualityArena.checkBorrow (6) s6Step129EarlyControlLog.flagWork=some s6Step129EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step129EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step129EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step129EarlyControlFlagArena,s6Step129EarlyControlEqualityArena,s6Step129EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step129EarlyControl_flagsOwned : ([879, 253, 252, 251] : List Wire).toFinset⊆s6Step129EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step129EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129EarlyControl_flags : compileHmrFlagsLog s6Step129EarlyControlClassPlan.equalityArena s6Step129EarlyControlClassPlan.equality.top 253 252 251 s6Step129EarlyControlLog.flagWork=some s6Step129EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step129EarlyControl_flagsOwned⟩
  · exact s6Step129EarlyControl_flagsBorrow

private theorem s6Step129EarlyControl_historyBorrow : s6Step129EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step129EarlyControlLog.recordFresh=some s6Step129EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step129EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step129EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step129EarlyControlArena s6Step129EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step129EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step129EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step129EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step129EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step129EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step129EarlyControl_history : compileHmrRecordGrowLog s6Step129EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step129EarlyControlLog.recordFresh=some s6Step129EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step129EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step129EarlyControl_historyBorrow

private theorem s6Step129EarlyControl_sigmaOwned : ([254, 854] : List Wire).toFinset⊆s6Step129EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step129EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step129EarlyControl_sigmaReleaseOwned : ([854] : List Wire).toFinset⊆s6Step129EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step129EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step129EarlyControl_sigmaRelease : s6Step129EarlyControlHistoryArena.release {854} (fun _ => false)=some s6Step129EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step129EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step129EarlyControlHistoryArena s6Step129EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [854] rfl rfl
    decide +kernel

private theorem s6Step129EarlyControl_sigma : compileHmrSigmaDropLog s6Step129EarlyControlHistoryArena false 0 0 254 854 []=some s6Step129EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step129EarlyControl_sigmaOwned⟩
  · exact s6Step129EarlyControl_sigmaRelease

private theorem s6Step129EarlyControl_zeroBorrow : s6Step129EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step129EarlyControlLog.zeroWork=some s6Step129EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step129EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step129EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step129EarlyControlArena s6Step129EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step129EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step129EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step129EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step129EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step129EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step129EarlyControl_zero : compileHmrEqualityLog s6Step129EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step129EarlyControlLog.zeroWork=some (s6Step129EarlyControlZeroArena,s6Step129EarlyControlLog.zeroWork,s6Step129EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step129EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step129EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step129EarlyControl_logged : s6Step129EarlyControlPlan.Logged s6Step129EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 254 253 252 251 898 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step129EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step129EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step129EarlyControl_zero
  · exact s6Step129EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step129EarlyControl_flags
  · exact s6Step129EarlyControl_fit
  · exact s6Step129EarlyControl_history
  · exact s6Step129EarlyControl_sigma
  · exact s6Step129EarlyControl_branch

private theorem s6Step129EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step129EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 254 253 252 251 898 37 s6Step129EarlyControlLog=some s6Step129EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step129EarlyControlPlan s6Step129EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 254 253 252 251 898 37 s6Step129EarlyControl_logged

private def s6Step129EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step129EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459],795⟩

private def s6Step129EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩

private def s6Step129EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],777⟩

private def s6Step129EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796],775⟩

private def s6Step129FrontBank : WindowBank := ⟨s6Step129EntryFRow,s6Step129EntryGRow,s6Step129EntryFvRow,s6Step129EntryGvRow⟩

private def s6Step129Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 822, 838, 795]

private def s6Step129Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 833, 777]

private def s6Step129Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 776]

private def s6Step129Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 813, 775]

private theorem s6Step129Counter_apart : Disjoint s6Step129HeadFvAfter.live s6Step129CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step129HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129Counter_borrowed : s6Step129HeadFvAfter.checkBorrow 4 s6Step129CounterWork=some s6Step129CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step129HeadFvAfter s6Step129CounterDuring s6Step129CounterWork.toFinset s6Step129Counter_bounded s6Step129Counter_apart rfl

private theorem s6Step129Counter_owned : (854::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step129HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step129HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129Counter_checked : compileHmrCounterStepLog s6Step129HeadFvAfter true 854 [774, 773, 772, 771, 770, 769] s6Step129CounterWork=some s6Step129CounterDuring := by
  have owned : ∀q∈854::[774, 773, 772, 771, 770, 769],q∈s6Step129HeadFvAfter.live := fun q hq => s6Step129Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step129Counter_borrowed

private theorem s6Step129EntryBank_incomingDistinct : ([s6Step129EntryFRow,s6Step129EntryGRow,s6Step129EntryFvRow,s6Step129EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129EntryF_Incoming : rowsOwned s6Step129EntryFBefore [s6Step129EntryFRow,s6Step129EntryGRow,s6Step129EntryFvRow,s6Step129EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step129EntryFRow,s6Step129EntryGRow,s6Step129EntryFvRow,s6Step129EntryGvRow] 0 s6Step129EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step129EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step129EntryBank_outgoingOwned : rowsOwned s6Step129EntryGvAfter [s6Step129EntryFOut,s6Step129EntryGOut,s6Step129EntryFvOut,s6Step129EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step129EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step129EntryF_Outgoing : rowsOwned s6Step129EntryGvAfter [s6Step129EntryFOut,s6Step129EntryGOut,s6Step129EntryFvOut,s6Step129EntryGvOut] :=
  hmrRows_owned_drop s6Step129EntryGvAfter [s6Step129EntryFOut,s6Step129EntryGOut,s6Step129EntryFvOut,s6Step129EntryGvOut] 0 s6Step129EntryBank_outgoingOwned

private theorem s6Step129EntryF_distinct : (s6Step129EntryFRow.sign::s6Step129EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129EntryF_owned : (s6Step129EntryFRow.sign::s6Step129EntryFRow.payload).toFinset⊆s6Step129EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step129EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step129EntryF_reserved : s6Step129EntryFBefore.reserve s6Step129EntryFFresh.toFinset=some s6Step129EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step129EntryFFresh,arenaWires]
  · norm_num [s6Step129EntryFBefore,s6Step129EntryFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step129EntryFBefore s6Step129EntryFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step129EntryFFresh rfl rfl
    · norm_num [s6Step129EntryFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step129EntryF_checked : planRowResizeLog s6Step129EntryFBefore s6Step129EntryFRow 205 s6Step129EntryFFresh=
    some (s6Step129EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 822],795⟩,growRow 795 s6Step129EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step129EntryFBefore s6Step129EntryFAfter s6Step129EntryFRow 205 s6Step129EntryFFresh
    s6Step129EntryF_distinct s6Step129EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step129EntryF_reserved
  have rowEq : WindowRow.mk (s6Step129EntryFRow.payload++s6Step129EntryFFresh) s6Step129EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 822],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step129EntryFvAfter : Arena := s6Step129EntryFAfter

private def s6Step129EntryFvBefore : Arena := s6Step129EntryFAfter

private theorem s6Step129EntryFv_Incoming : rowsOwned s6Step129EntryFvBefore [s6Step129EntryFvRow,s6Step129EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step129EntryFRow,s6Step129EntryGRow,s6Step129EntryFvRow,s6Step129EntryGvRow] 2 s6Step129EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step129EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step129EntryFv_Outgoing : rowsOwned s6Step129EntryGvAfter [s6Step129EntryFvOut,s6Step129EntryGvOut] :=
  hmrRows_owned_drop s6Step129EntryGvAfter [s6Step129EntryFOut,s6Step129EntryGOut,s6Step129EntryFvOut,s6Step129EntryGvOut] 2 s6Step129EntryBank_outgoingOwned

private theorem s6Step129EntryFv_distinct : (s6Step129EntryFvRow.sign::s6Step129EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129EntryFv_owned : (s6Step129EntryFvRow.sign::s6Step129EntryFvRow.payload).toFinset⊆s6Step129EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step129EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129EntryFv_reserved : s6Step129EntryFvBefore.reserve s6Step129EntryFvFresh.toFinset=some s6Step129EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step129EntryFvFresh,arenaWires]
  · norm_num [s6Step129EntryFvBefore,s6Step129EntryFAfter,s6Step129EntryFvFresh,arenaWires]
  · simp only [s6Step129EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step129EntryFv_checked : planRowResizeLog s6Step129EntryFvBefore s6Step129EntryFvRow 78 s6Step129EntryFvFresh=
    some (s6Step129EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩,growRow 776 s6Step129EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step129EntryFvBefore s6Step129EntryFvAfter s6Step129EntryFvRow 78 s6Step129EntryFvFresh
    s6Step129EntryFv_distinct s6Step129EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step129EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step129EntryFvRow.payload++s6Step129EntryFvFresh) s6Step129EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step129EntryGAfter : Arena := s6Step129EntryFAfter

private def s6Step129EntryGBefore : Arena := s6Step129EntryFAfter

private theorem s6Step129EntryG_Incoming : rowsOwned s6Step129EntryGBefore [s6Step129EntryGRow,s6Step129EntryFvRow,s6Step129EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step129EntryFRow,s6Step129EntryGRow,s6Step129EntryFvRow,s6Step129EntryGvRow] 1 s6Step129EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step129EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step129EntryG_Outgoing : rowsOwned s6Step129EntryGvAfter [s6Step129EntryGOut,s6Step129EntryFvOut,s6Step129EntryGvOut] :=
  hmrRows_owned_drop s6Step129EntryGvAfter [s6Step129EntryFOut,s6Step129EntryGOut,s6Step129EntryFvOut,s6Step129EntryGvOut] 1 s6Step129EntryBank_outgoingOwned

private theorem s6Step129EntryG_distinct : (s6Step129EntryGRow.sign::s6Step129EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129EntryG_owned : (s6Step129EntryGRow.sign::s6Step129EntryGRow.payload).toFinset⊆s6Step129EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step129EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129EntryG_reserved : s6Step129EntryGBefore.reserve s6Step129EntryGFresh.toFinset=some s6Step129EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step129EntryGFresh,arenaWires]
  · norm_num [s6Step129EntryGBefore,s6Step129EntryFAfter,s6Step129EntryGFresh,arenaWires]
  · simp only [s6Step129EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step129EntryG_checked : planRowResizeLog s6Step129EntryGBefore s6Step129EntryGRow 205 s6Step129EntryGFresh=
    some (s6Step129EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],777⟩,growRow 777 s6Step129EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step129EntryGBefore s6Step129EntryGAfter s6Step129EntryGRow 205 s6Step129EntryGFresh
    s6Step129EntryG_distinct s6Step129EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step129EntryG_reserved
  have rowEq : WindowRow.mk (s6Step129EntryGRow.payload++s6Step129EntryGFresh) s6Step129EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step129EntryGvBefore : Arena := s6Step129EntryFAfter

private theorem s6Step129EntryGv_Incoming : rowsOwned s6Step129EntryGvBefore [s6Step129EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step129EntryFRow,s6Step129EntryGRow,s6Step129EntryFvRow,s6Step129EntryGvRow] 3 s6Step129EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step129EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step129EntryGv_Outgoing : rowsOwned s6Step129EntryGvAfter [s6Step129EntryGvOut] :=
  hmrRows_owned_drop s6Step129EntryGvAfter [s6Step129EntryFOut,s6Step129EntryGOut,s6Step129EntryFvOut,s6Step129EntryGvOut] 3 s6Step129EntryBank_outgoingOwned

private theorem s6Step129EntryGv_distinct : (s6Step129EntryGvRow.sign::s6Step129EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129EntryGv_owned : (s6Step129EntryGvRow.sign::s6Step129EntryGvRow.payload).toFinset⊆s6Step129EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step129EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129EntryGv_reserved : s6Step129EntryGvBefore.reserve s6Step129EntryGvFresh.toFinset=some s6Step129EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step129EntryGvFresh,arenaWires]
  · norm_num [s6Step129EntryGvBefore,s6Step129EntryFAfter,s6Step129EntryGvFresh,arenaWires]
  · simp only [s6Step129EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step129EntryGv_checked : planRowResizeLog s6Step129EntryGvBefore s6Step129EntryGvRow 78 s6Step129EntryGvFresh=
    some (s6Step129EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796],775⟩,growRow 775 s6Step129EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step129EntryGvBefore s6Step129EntryGvAfter s6Step129EntryGvRow 78 s6Step129EntryGvFresh
    s6Step129EntryGv_distinct s6Step129EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step129EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step129EntryGvRow.payload++s6Step129EntryGvFresh) s6Step129EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step129EntryBank_rows : planWindowRowsLog s6Step129EntryFBefore [(s6Step129EntryFRow,205),(s6Step129EntryGRow,205),(s6Step129EntryFvRow,78),(s6Step129EntryGvRow,78)] [s6Step129EntryFFresh,s6Step129EntryGFresh,s6Step129EntryFvFresh,s6Step129EntryGvFresh]=
    some (s6Step129EntryGvAfter,[s6Step129EntryFOut,s6Step129EntryGOut,s6Step129EntryFvOut,s6Step129EntryGvOut],(growRow 795 s6Step129EntryFFresh ++ (growRow 777 s6Step129EntryGFresh ++ (growRow 776 s6Step129EntryFvFresh ++ (growRow 775 s6Step129EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step129EntryGvAfter [] []=some (s6Step129EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step129EntryGvBefore s6Step129EntryGvAfter s6Step129EntryGvAfter
    s6Step129EntryGvRow s6Step129EntryGvOut 78 s6Step129EntryGvFresh [] [] []
    (growRow 775 s6Step129EntryGvFresh) ([]) s6Step129EntryGv_Incoming s6Step129EntryGv_checked h4 s6Step129EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step129EntryFvBefore s6Step129EntryFvAfter s6Step129EntryGvAfter
    s6Step129EntryFvRow s6Step129EntryFvOut 78 s6Step129EntryFvFresh [(s6Step129EntryGvRow,78)] [s6Step129EntryGvFresh] [s6Step129EntryGvOut]
    (growRow 776 s6Step129EntryFvFresh) ((growRow 775 s6Step129EntryGvFresh ++ [])) s6Step129EntryFv_Incoming s6Step129EntryFv_checked h3 s6Step129EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step129EntryGBefore s6Step129EntryGAfter s6Step129EntryGvAfter
    s6Step129EntryGRow s6Step129EntryGOut 205 s6Step129EntryGFresh [(s6Step129EntryFvRow,78),(s6Step129EntryGvRow,78)] [s6Step129EntryFvFresh,s6Step129EntryGvFresh] [s6Step129EntryFvOut,s6Step129EntryGvOut]
    (growRow 777 s6Step129EntryGFresh) ((growRow 776 s6Step129EntryFvFresh ++ (growRow 775 s6Step129EntryGvFresh ++ []))) s6Step129EntryG_Incoming s6Step129EntryG_checked h2 s6Step129EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step129EntryFBefore s6Step129EntryFAfter s6Step129EntryGvAfter
    s6Step129EntryFRow s6Step129EntryFOut 205 s6Step129EntryFFresh [(s6Step129EntryGRow,205),(s6Step129EntryFvRow,78),(s6Step129EntryGvRow,78)] [s6Step129EntryGFresh,s6Step129EntryFvFresh,s6Step129EntryGvFresh] [s6Step129EntryGOut,s6Step129EntryFvOut,s6Step129EntryGvOut]
    (growRow 795 s6Step129EntryFFresh) ((growRow 777 s6Step129EntryGFresh ++ (growRow 776 s6Step129EntryFvFresh ++ (growRow 775 s6Step129EntryGvFresh ++ [])))) s6Step129EntryF_Incoming s6Step129EntryF_checked h1 s6Step129EntryF_Outgoing
  exact h0

private theorem s6Step129EntryBank_checked : compileHmrBankResizeLog .entry s6Step129EntryFBefore ⟨s6Step129EntryFRow,s6Step129EntryGRow,s6Step129EntryFvRow,s6Step129EntryGvRow⟩ ⟨205,205,78,78⟩ [s6Step129EntryFFresh,s6Step129EntryGFresh,s6Step129EntryFvFresh,s6Step129EntryGvFresh]=
    some (s6Step129EntryGvAfter,⟨s6Step129EntryFOut,s6Step129EntryGOut,s6Step129EntryFvOut,s6Step129EntryGvOut⟩,(growRow 795 s6Step129EntryFFresh ++ (growRow 777 s6Step129EntryGFresh ++ (growRow 776 s6Step129EntryFvFresh ++ (growRow 775 s6Step129EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step129EntryBank_rows]
  rfl

private def s6Step129ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,204),(205,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step129ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<204) ∨ (205≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step129ExitFBefore : Arena := s6Step129ExitGAfter

private def s6Step129ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 822, 838],795⟩

private def s6Step129ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩

private def s6Step129ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 833],777⟩

private def s6Step129ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 813],775⟩

private theorem s6Step129ExitBank_incomingDistinct : ([s6Step129ExitGRow,s6Step129ExitFRow,s6Step129ExitFvRow,s6Step129ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129ExitF_Incoming : rowsOwned s6Step129ExitFBefore [s6Step129ExitFRow,s6Step129ExitFvRow,s6Step129ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step129ExitGRow,s6Step129ExitFRow,s6Step129ExitFvRow,s6Step129ExitGvRow] 1 s6Step129ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step129ExitFBefore (fun q => (0≤q ∧ q<204) ∨ (205≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step129ExitBank_outgoingOwned : rowsOwned s6Step129ExitGvAfter [s6Step129ExitGOut,s6Step129ExitFOut,s6Step129ExitFvOut,s6Step129ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step129ExitGvAfter (fun q => ([(0,204),(205,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step129ExitF_Outgoing : rowsOwned s6Step129ExitGvAfter [s6Step129ExitFOut,s6Step129ExitFvOut,s6Step129ExitGvOut] :=
  hmrRows_owned_drop s6Step129ExitGvAfter [s6Step129ExitGOut,s6Step129ExitFOut,s6Step129ExitFvOut,s6Step129ExitGvOut] 1 s6Step129ExitBank_outgoingOwned

private theorem s6Step129ExitF_distinct : (s6Step129ExitFRow.sign::s6Step129ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129ExitF_owned : (s6Step129ExitFRow.sign::s6Step129ExitFRow.payload).toFinset⊆s6Step129ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step129ExitFBefore (fun q => (0≤q ∧ q<204) ∨ (205≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129ExitF_retired : s6Step129ExitFBefore.retireSet s6Step129ExitFExtra.toFinset=s6Step129ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step129ExitFBefore s6Step129ExitFAfter s6Step129ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step129ExitFBefore s6Step129ExitFAfter (fun q => (0≤q ∧ q<204) ∨ (205≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,204),(205,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step129ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step129ExitF_checked : planRowResizeLog s6Step129ExitFBefore s6Step129ExitFRow 204 []=
    some (s6Step129ExitFAfter,s6Step129ExitFOut,shrinkRow 795 s6Step129ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step129ExitFBefore s6Step129ExitFRow 204 s6Step129ExitF_distinct s6Step129ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step129ExitFRow.payload.take 204) s6Step129ExitFRow.sign=s6Step129ExitFOut := by decide +kernel
  have hi : s6Step129ExitFRow.payload.drop 204=s6Step129ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step129ExitF_retired] at result
  exact result

private def s6Step129ExitFvAfter : Arena := s6Step129ExitFAfter

private def s6Step129ExitFvBefore : Arena := s6Step129ExitFAfter

private theorem s6Step129ExitFv_Incoming : rowsOwned s6Step129ExitFvBefore [s6Step129ExitFvRow,s6Step129ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step129ExitGRow,s6Step129ExitFRow,s6Step129ExitFvRow,s6Step129ExitGvRow] 2 s6Step129ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step129ExitFvBefore (fun q => ([(0,204),(205,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step129ExitFv_Outgoing : rowsOwned s6Step129ExitGvAfter [s6Step129ExitFvOut,s6Step129ExitGvOut] :=
  hmrRows_owned_drop s6Step129ExitGvAfter [s6Step129ExitGOut,s6Step129ExitFOut,s6Step129ExitFvOut,s6Step129ExitGvOut] 2 s6Step129ExitBank_outgoingOwned

private theorem s6Step129ExitFv_distinct : (s6Step129ExitFvRow.sign::s6Step129ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129ExitFv_owned : (s6Step129ExitFvRow.sign::s6Step129ExitFvRow.payload).toFinset⊆s6Step129ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step129ExitFvBefore (fun q => ([(0,204),(205,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step129ExitFv_reserved : s6Step129ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step129ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step129ExitFv_checked : planRowResizeLog s6Step129ExitFvBefore s6Step129ExitFvRow 79 []=
    some (s6Step129ExitFvAfter,s6Step129ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step129ExitFvBefore s6Step129ExitFvAfter s6Step129ExitFvRow 79 []
    s6Step129ExitFv_distinct s6Step129ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step129ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step129ExitFvRow.payload++[]) s6Step129ExitFvRow.sign=s6Step129ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step129ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step129ExitG_Incoming : rowsOwned s6Step129ExitGBefore [s6Step129ExitGRow,s6Step129ExitFRow,s6Step129ExitFvRow,s6Step129ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step129ExitGRow,s6Step129ExitFRow,s6Step129ExitFvRow,s6Step129ExitGvRow] 0 s6Step129ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step129ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step129ExitG_Outgoing : rowsOwned s6Step129ExitGvAfter [s6Step129ExitGOut,s6Step129ExitFOut,s6Step129ExitFvOut,s6Step129ExitGvOut] :=
  hmrRows_owned_drop s6Step129ExitGvAfter [s6Step129ExitGOut,s6Step129ExitFOut,s6Step129ExitFvOut,s6Step129ExitGvOut] 0 s6Step129ExitBank_outgoingOwned

private theorem s6Step129ExitG_distinct : (s6Step129ExitGRow.sign::s6Step129ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129ExitG_owned : (s6Step129ExitGRow.sign::s6Step129ExitGRow.payload).toFinset⊆s6Step129ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step129ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129ExitG_retired : s6Step129ExitGBefore.retireSet s6Step129ExitGExtra.toFinset=s6Step129ExitGAfter := by
  unfold Arena.retireSet s6Step129ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step129ExitGBefore,s6Step129ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step129ExitG_checked : planRowResizeLog s6Step129ExitGBefore s6Step129ExitGRow 204 []=
    some (s6Step129ExitGAfter,s6Step129ExitGOut,shrinkRow 777 s6Step129ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step129ExitGBefore s6Step129ExitGRow 204 s6Step129ExitG_distinct s6Step129ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step129ExitGRow.payload.take 204) s6Step129ExitGRow.sign=s6Step129ExitGOut := by decide +kernel
  have hi : s6Step129ExitGRow.payload.drop 204=s6Step129ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step129ExitG_retired] at result
  exact result

private def s6Step129ExitGvBefore : Arena := s6Step129ExitFAfter

private theorem s6Step129ExitGv_Incoming : rowsOwned s6Step129ExitGvBefore [s6Step129ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step129ExitGRow,s6Step129ExitFRow,s6Step129ExitFvRow,s6Step129ExitGvRow] 3 s6Step129ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step129ExitGvBefore (fun q => ([(0,204),(205,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step129ExitGv_Outgoing : rowsOwned s6Step129ExitGvAfter [s6Step129ExitGvOut] :=
  hmrRows_owned_drop s6Step129ExitGvAfter [s6Step129ExitGOut,s6Step129ExitFOut,s6Step129ExitFvOut,s6Step129ExitGvOut] 3 s6Step129ExitBank_outgoingOwned

private theorem s6Step129ExitGv_distinct : (s6Step129ExitGvRow.sign::s6Step129ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129ExitGv_owned : (s6Step129ExitGvRow.sign::s6Step129ExitGvRow.payload).toFinset⊆s6Step129ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step129ExitGvBefore (fun q => ([(0,204),(205,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step129ExitGv_retired : s6Step129ExitGvBefore.retireSet s6Step129ExitGvExtra.toFinset=s6Step129ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step129ExitGvBefore s6Step129ExitGvAfter s6Step129ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step129ExitGvBefore s6Step129ExitGvAfter (fun q => ([(0,204),(205,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,204),(205,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step129ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step129ExitGv_checked : planRowResizeLog s6Step129ExitGvBefore s6Step129ExitGvRow 78 []=
    some (s6Step129ExitGvAfter,s6Step129ExitGvOut,shrinkRow 775 s6Step129ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step129ExitGvBefore s6Step129ExitGvRow 78 s6Step129ExitGv_distinct s6Step129ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step129ExitGvRow.payload.take 78) s6Step129ExitGvRow.sign=s6Step129ExitGvOut := by decide +kernel
  have hi : s6Step129ExitGvRow.payload.drop 78=s6Step129ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step129ExitGv_retired] at result
  exact result

private theorem s6Step129ExitBank_rows : planWindowRowsLog s6Step129ExitGBefore [(s6Step129ExitGRow,204),(s6Step129ExitFRow,204),(s6Step129ExitFvRow,79),(s6Step129ExitGvRow,78)] [[],[],[],[]]=
    some (s6Step129ExitGvAfter,[s6Step129ExitGOut,s6Step129ExitFOut,s6Step129ExitFvOut,s6Step129ExitGvOut],(shrinkRow 777 s6Step129ExitGExtra ++ (shrinkRow 795 s6Step129ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step129ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step129ExitGvAfter [] []=some (s6Step129ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step129ExitGvBefore s6Step129ExitGvAfter s6Step129ExitGvAfter
    s6Step129ExitGvRow s6Step129ExitGvOut 78 [] [] [] []
    (shrinkRow 775 s6Step129ExitGvExtra) ([]) s6Step129ExitGv_Incoming s6Step129ExitGv_checked h4 s6Step129ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step129ExitFvBefore s6Step129ExitFvAfter s6Step129ExitGvAfter
    s6Step129ExitFvRow s6Step129ExitFvOut 79 [] [(s6Step129ExitGvRow,78)] [[]] [s6Step129ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step129ExitGvExtra ++ [])) s6Step129ExitFv_Incoming s6Step129ExitFv_checked h3 s6Step129ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step129ExitFBefore s6Step129ExitFAfter s6Step129ExitGvAfter
    s6Step129ExitFRow s6Step129ExitFOut 204 [] [(s6Step129ExitFvRow,79),(s6Step129ExitGvRow,78)] [[],[]] [s6Step129ExitFvOut,s6Step129ExitGvOut]
    (shrinkRow 795 s6Step129ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step129ExitGvExtra ++ []))) s6Step129ExitF_Incoming s6Step129ExitF_checked h2 s6Step129ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step129ExitGBefore s6Step129ExitGAfter s6Step129ExitGvAfter
    s6Step129ExitGRow s6Step129ExitGOut 204 [] [(s6Step129ExitFRow,204),(s6Step129ExitFvRow,79),(s6Step129ExitGvRow,78)] [[],[],[]] [s6Step129ExitFOut,s6Step129ExitFvOut,s6Step129ExitGvOut]
    (shrinkRow 777 s6Step129ExitGExtra) ((shrinkRow 795 s6Step129ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step129ExitGvExtra ++ [])))) s6Step129ExitG_Incoming s6Step129ExitG_checked h1 s6Step129ExitG_Outgoing
  exact h0

private theorem s6Step129ExitBank_checked : compileHmrBankResizeLog .exit s6Step129ExitGBefore ⟨s6Step129ExitFRow,s6Step129ExitGRow,s6Step129ExitFvRow,s6Step129ExitGvRow⟩ ⟨204,204,79,78⟩ [[],[],[],[]]=
    some (s6Step129ExitGvAfter,⟨s6Step129ExitFOut,s6Step129ExitGOut,s6Step129ExitFvOut,s6Step129ExitGvOut⟩,(shrinkRow 777 s6Step129ExitGExtra ++ (shrinkRow 795 s6Step129ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step129ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step129ExitBank_rows]
  rfl

private theorem s6Step129Add0_apart : Disjoint s6Step129Add0Arena.live s6Step129Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step129Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129Add0_card : s6Step129Add0Arena.live.card=877 := by
  decide +kernel

private theorem s6Step129Add0_borrowed : s6Step129Add0Arena.checkBorrow (hmrHybridCount s6Step129Add0Arena s6Step129Add0B.length) s6Step129Add0Work=some s6Step129Add0During := by
  have len : s6Step129Add0Work.length=hmrHybridCount s6Step129Add0Arena s6Step129Add0B.length := by
    rw [hmrHybridCount,s6Step129Add0_card]
    decide +kernel
  have nd : s6Step129Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step129Add0Arena s6Step129Add0During s6Step129Add0Work.toFinset s6Step129Add0_bounded s6Step129Add0_apart rfl

private theorem s6Step129Add0_distinct : (850::898::879::(s6Step129Add0A++s6Step129Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129Add0_owned : (850::898::879::(s6Step129Add0A++s6Step129Add0B)).toFinset⊆s6Step129Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step129Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129Add0_checked : compileHmrHybridCinLog s6Step129Add0Arena 898 850 879 s6Step129Add0A s6Step129Add0B s6Step129Add0Work=some s6Step129Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step129Add0Arena s6Step129Add0During 898 850 879 s6Step129Add0A s6Step129Add0B s6Step129Add0Work
    (by decide +kernel) (by decide +kernel) s6Step129Add0_distinct
    (fun q hq => s6Step129Add0_owned (List.mem_toFinset.mpr hq)) s6Step129Add0_borrowed

private theorem s6Step129Add1_apart : Disjoint s6Step129Add1Arena.live s6Step129Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step129Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129Add1_card : s6Step129Add1Arena.live.card=877 := by
  decide +kernel

private theorem s6Step129Add1_borrowed : s6Step129Add1Arena.checkBorrow (hmrHybridCount s6Step129Add1Arena s6Step129Add1B.length) s6Step129Add1Work=some s6Step129Add1During := by
  have len : s6Step129Add1Work.length=hmrHybridCount s6Step129Add1Arena s6Step129Add1B.length := by
    rw [hmrHybridCount,s6Step129Add1_card]
    decide +kernel
  have nd : s6Step129Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step129Add1Arena s6Step129Add1During s6Step129Add1Work.toFinset s6Step129Add1_bounded s6Step129Add1_apart rfl

private theorem s6Step129Add1_distinct : (850::898::879::(s6Step129Add1A++s6Step129Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129Add1_owned : (850::898::879::(s6Step129Add1A++s6Step129Add1B)).toFinset⊆s6Step129Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step129Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129Add1_checked : compileHmrHybridCinLog s6Step129Add1Arena 898 850 879 s6Step129Add1A s6Step129Add1B s6Step129Add1Work=some s6Step129Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step129Add1Arena s6Step129Add1During 898 850 879 s6Step129Add1A s6Step129Add1B s6Step129Add1Work
    (by decide +kernel) (by decide +kernel) s6Step129Add1_distinct
    (fun q hq => s6Step129Add1_owned (List.mem_toFinset.mpr hq)) s6Step129Add1_borrowed

private theorem s6Step129F4_apart : Disjoint (s6Step129Add0A++s6Step129Add0B).toFinset (s6Step129Add1A++s6Step129Add1B).toFinset := by
  have nd : ((s6Step129Add0A++s6Step129Add0B)++(s6Step129Add1A++s6Step129Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step129F4_carry : s6Step129F4FlagArena.checkBorrow 1 [879]=some s6Step129Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step129F4FlagArena,s6Step129HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step129F4FlagArena,s6Step129HeadFvAfter,s6Step129Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step129F4_distinct : (854::898::850::879::((s6Step129Add0A++s6Step129Add1A)++(s6Step129Add0B++s6Step129Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129F4_flag : s6Step129HeadFvAfter.checkBorrow 1 [850]=some s6Step129F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step129HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step129F4_owned : (854::898::((s6Step129Add0A++s6Step129Add1A)++(s6Step129Add0B++s6Step129Add1B))).toFinset⊆s6Step129HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step129HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129F4_checked : compileHmrHybridF4Log s6Step129HeadFvAfter 854 898 s6Step129Add0A s6Step129Add0B s6Step129Add1A s6Step129Add1B [850] [879] s6Step129Add0Work s6Step129Add1Work=some s6Step129F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step129HeadFvAfter s6Step129F4FlagArena s6Step129Add0Arena s6Step129Add0During s6Step129Add1During 854 898
    s6Step129Add0A s6Step129Add0B s6Step129Add1A s6Step129Add1B [850] [879] s6Step129Add0Work s6Step129Add1Work
    (fun q hq => s6Step129F4_owned (List.mem_toFinset.mpr hq)) s6Step129F4_flag s6Step129F4_carry
    s6Step129F4_distinct s6Step129F4_apart s6Step129Add0_checked s6Step129Add1_checked

private theorem s6Step129Front_branch : s6Step129FrontSigmaArena.checkBorrow 1 [898]=some s6Step129HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step129FrontSigmaArena,s6Step129EntryGvAfter,s6Step129EntryFAfter,arenaWires]
  · ext q
    simp only [s6Step129FrontSigmaArena,s6Step129EntryGvAfter,s6Step129EntryFAfter,s6Step129HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step129Front_entry : HmrFrontEntryValid s6Step129EntryFBefore s6Step129FrontBank 205 78 ⟨204,204,79,78⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step129FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step129EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step129EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step129FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step129Front_sigma : s6Step129EntryGvAfter.checkBorrow 1 [854]=some s6Step129FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step129EntryGvAfter,s6Step129EntryFAfter,arenaWires]
  · rfl

private def s6Step129HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step129HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step129HeadFBefore : Arena := s6Step129HeadGAfter

private def s6Step129HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 822],795⟩

private def s6Step129HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩

private def s6Step129HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],777⟩

private def s6Step129HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796],775⟩

private theorem s6Step129HeadBank_incomingDistinct : ([s6Step129HeadGRow,s6Step129HeadFRow,s6Step129HeadGvRow,s6Step129HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129HeadF_Incoming : rowsOwned s6Step129HeadFBefore [s6Step129HeadFRow,s6Step129HeadGvRow,s6Step129HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step129HeadGRow,s6Step129HeadFRow,s6Step129HeadGvRow,s6Step129HeadFvRow] 1 s6Step129HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step129HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step129HeadBank_outgoingOwned : rowsOwned s6Step129HeadFvAfter [s6Step129HeadGOut,s6Step129HeadFOut,s6Step129HeadGvOut,s6Step129HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step129HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step129HeadF_Outgoing : rowsOwned s6Step129HeadFvAfter [s6Step129HeadFOut,s6Step129HeadGvOut,s6Step129HeadFvOut] :=
  hmrRows_owned_drop s6Step129HeadFvAfter [s6Step129HeadGOut,s6Step129HeadFOut,s6Step129HeadGvOut,s6Step129HeadFvOut] 1 s6Step129HeadBank_outgoingOwned

private theorem s6Step129HeadF_distinct : (s6Step129HeadFRow.sign::s6Step129HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129HeadF_owned : (s6Step129HeadFRow.sign::s6Step129HeadFRow.payload).toFinset⊆s6Step129HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step129HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step129HeadF_reserved : s6Step129HeadFBefore.reserve s6Step129HeadFFresh.toFinset=some s6Step129HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step129HeadFFresh,arenaWires]
  · norm_num [s6Step129HeadFBefore,s6Step129HeadGAfter,s6Step129HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step129HeadFBefore s6Step129HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step129HeadFFresh rfl rfl
    · norm_num [s6Step129HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step129HeadF_checked : planRowResizeLog s6Step129HeadFBefore s6Step129HeadFRow 206 s6Step129HeadFFresh=
    some (s6Step129HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 822, 838],795⟩,growRow 795 s6Step129HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step129HeadFBefore s6Step129HeadFAfter s6Step129HeadFRow 206 s6Step129HeadFFresh
    s6Step129HeadF_distinct s6Step129HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step129HeadF_reserved
  have rowEq : WindowRow.mk (s6Step129HeadFRow.payload++s6Step129HeadFFresh) s6Step129HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 822, 838],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step129HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step129HeadFvBefore : Arena := s6Step129HeadGvAfter

private theorem s6Step129HeadFv_Incoming : rowsOwned s6Step129HeadFvBefore [s6Step129HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step129HeadGRow,s6Step129HeadFRow,s6Step129HeadGvRow,s6Step129HeadFvRow] 3 s6Step129HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step129HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step129HeadFv_Outgoing : rowsOwned s6Step129HeadFvAfter [s6Step129HeadFvOut] :=
  hmrRows_owned_drop s6Step129HeadFvAfter [s6Step129HeadGOut,s6Step129HeadFOut,s6Step129HeadGvOut,s6Step129HeadFvOut] 3 s6Step129HeadBank_outgoingOwned

private theorem s6Step129HeadFv_distinct : (s6Step129HeadFvRow.sign::s6Step129HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129HeadFv_owned : (s6Step129HeadFvRow.sign::s6Step129HeadFvRow.payload).toFinset⊆s6Step129HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step129HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129HeadFv_reserved : s6Step129HeadFvBefore.reserve s6Step129HeadFvFresh.toFinset=some s6Step129HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step129HeadFvFresh,arenaWires]
  · norm_num [s6Step129HeadFvBefore,s6Step129HeadGvAfter,s6Step129HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step129HeadFvAfter,s6Step129HeadFvBefore,s6Step129HeadGvAfter,s6Step129HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step129HeadFv_checked : planRowResizeLog s6Step129HeadFvBefore s6Step129HeadFvRow 79 s6Step129HeadFvFresh=
    some (s6Step129HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩,growRow 776 s6Step129HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step129HeadFvBefore s6Step129HeadFvAfter s6Step129HeadFvRow 79 s6Step129HeadFvFresh
    s6Step129HeadFv_distinct s6Step129HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step129HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step129HeadFvRow.payload++s6Step129HeadFvFresh) s6Step129HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step129HeadG_Incoming : rowsOwned s6Step129HeadGBefore [s6Step129HeadGRow,s6Step129HeadFRow,s6Step129HeadGvRow,s6Step129HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step129HeadGRow,s6Step129HeadFRow,s6Step129HeadGvRow,s6Step129HeadFvRow] 0 s6Step129HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step129HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step129HeadG_Outgoing : rowsOwned s6Step129HeadFvAfter [s6Step129HeadGOut,s6Step129HeadFOut,s6Step129HeadGvOut,s6Step129HeadFvOut] :=
  hmrRows_owned_drop s6Step129HeadFvAfter [s6Step129HeadGOut,s6Step129HeadFOut,s6Step129HeadGvOut,s6Step129HeadFvOut] 0 s6Step129HeadBank_outgoingOwned

private theorem s6Step129HeadG_distinct : (s6Step129HeadGRow.sign::s6Step129HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129HeadG_owned : (s6Step129HeadGRow.sign::s6Step129HeadGRow.payload).toFinset⊆s6Step129HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step129HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129HeadG_reserved : s6Step129HeadGBefore.reserve s6Step129HeadGFresh.toFinset=some s6Step129HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step129HeadGFresh,arenaWires]
  · norm_num [s6Step129HeadGBefore,s6Step129HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step129HeadGBefore s6Step129HeadGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step129HeadGFresh rfl rfl
    · norm_num [s6Step129HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step129HeadG_checked : planRowResizeLog s6Step129HeadGBefore s6Step129HeadGRow 206 s6Step129HeadGFresh=
    some (s6Step129HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 833],777⟩,growRow 777 s6Step129HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step129HeadGBefore s6Step129HeadGAfter s6Step129HeadGRow 206 s6Step129HeadGFresh
    s6Step129HeadG_distinct s6Step129HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step129HeadG_reserved
  have rowEq : WindowRow.mk (s6Step129HeadGRow.payload++s6Step129HeadGFresh) s6Step129HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 833],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step129HeadGvBefore : Arena := s6Step129HeadFAfter

private theorem s6Step129HeadGv_Incoming : rowsOwned s6Step129HeadGvBefore [s6Step129HeadGvRow,s6Step129HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step129HeadGRow,s6Step129HeadFRow,s6Step129HeadGvRow,s6Step129HeadFvRow] 2 s6Step129HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step129HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step129HeadGv_Outgoing : rowsOwned s6Step129HeadFvAfter [s6Step129HeadGvOut,s6Step129HeadFvOut] :=
  hmrRows_owned_drop s6Step129HeadFvAfter [s6Step129HeadGOut,s6Step129HeadFOut,s6Step129HeadGvOut,s6Step129HeadFvOut] 2 s6Step129HeadBank_outgoingOwned

private theorem s6Step129HeadGv_distinct : (s6Step129HeadGvRow.sign::s6Step129HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step129HeadGv_owned : (s6Step129HeadGvRow.sign::s6Step129HeadGvRow.payload).toFinset⊆s6Step129HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step129HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step129HeadGv_reserved : s6Step129HeadGvBefore.reserve s6Step129HeadGvFresh.toFinset=some s6Step129HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step129HeadGvFresh,arenaWires]
  · norm_num [s6Step129HeadGvBefore,s6Step129HeadFAfter,s6Step129HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step129HeadGvAfter,s6Step129HeadGvBefore,s6Step129HeadFAfter,s6Step129HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step129HeadGv_checked : planRowResizeLog s6Step129HeadGvBefore s6Step129HeadGvRow 79 s6Step129HeadGvFresh=
    some (s6Step129HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 813],775⟩,growRow 775 s6Step129HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step129HeadGvBefore s6Step129HeadGvAfter s6Step129HeadGvRow 79 s6Step129HeadGvFresh
    s6Step129HeadGv_distinct s6Step129HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step129HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step129HeadGvRow.payload++s6Step129HeadGvFresh) s6Step129HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 813],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step129HeadBank_rows : planWindowRowsLog s6Step129HeadGBefore [(s6Step129HeadGRow,206),(s6Step129HeadFRow,206),(s6Step129HeadGvRow,79),(s6Step129HeadFvRow,79)] [s6Step129HeadGFresh,s6Step129HeadFFresh,s6Step129HeadGvFresh,s6Step129HeadFvFresh]=
    some (s6Step129HeadFvAfter,[s6Step129HeadGOut,s6Step129HeadFOut,s6Step129HeadGvOut,s6Step129HeadFvOut],(growRow 777 s6Step129HeadGFresh ++ (growRow 795 s6Step129HeadFFresh ++ (growRow 775 s6Step129HeadGvFresh ++ (growRow 776 s6Step129HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step129HeadFvAfter [] []=some (s6Step129HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step129HeadFvBefore s6Step129HeadFvAfter s6Step129HeadFvAfter
    s6Step129HeadFvRow s6Step129HeadFvOut 79 s6Step129HeadFvFresh [] [] []
    (growRow 776 s6Step129HeadFvFresh) ([]) s6Step129HeadFv_Incoming s6Step129HeadFv_checked h4 s6Step129HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step129HeadGvBefore s6Step129HeadGvAfter s6Step129HeadFvAfter
    s6Step129HeadGvRow s6Step129HeadGvOut 79 s6Step129HeadGvFresh [(s6Step129HeadFvRow,79)] [s6Step129HeadFvFresh] [s6Step129HeadFvOut]
    (growRow 775 s6Step129HeadGvFresh) ((growRow 776 s6Step129HeadFvFresh ++ [])) s6Step129HeadGv_Incoming s6Step129HeadGv_checked h3 s6Step129HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step129HeadFBefore s6Step129HeadFAfter s6Step129HeadFvAfter
    s6Step129HeadFRow s6Step129HeadFOut 206 s6Step129HeadFFresh [(s6Step129HeadGvRow,79),(s6Step129HeadFvRow,79)] [s6Step129HeadGvFresh,s6Step129HeadFvFresh] [s6Step129HeadGvOut,s6Step129HeadFvOut]
    (growRow 795 s6Step129HeadFFresh) ((growRow 775 s6Step129HeadGvFresh ++ (growRow 776 s6Step129HeadFvFresh ++ []))) s6Step129HeadF_Incoming s6Step129HeadF_checked h2 s6Step129HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step129HeadGBefore s6Step129HeadGAfter s6Step129HeadFvAfter
    s6Step129HeadGRow s6Step129HeadGOut 206 s6Step129HeadGFresh [(s6Step129HeadFRow,206),(s6Step129HeadGvRow,79),(s6Step129HeadFvRow,79)] [s6Step129HeadFFresh,s6Step129HeadGvFresh,s6Step129HeadFvFresh] [s6Step129HeadFOut,s6Step129HeadGvOut,s6Step129HeadFvOut]
    (growRow 777 s6Step129HeadGFresh) ((growRow 795 s6Step129HeadFFresh ++ (growRow 775 s6Step129HeadGvFresh ++ (growRow 776 s6Step129HeadFvFresh ++ [])))) s6Step129HeadG_Incoming s6Step129HeadG_checked h1 s6Step129HeadG_Outgoing
  exact h0

private theorem s6Step129HeadBank_checked : compileHmrBankResizeLog .headroom s6Step129HeadGBefore ⟨s6Step129HeadFRow,s6Step129HeadGRow,s6Step129HeadFvRow,s6Step129HeadGvRow⟩ ⟨206,206,79,79⟩ [s6Step129HeadGFresh,s6Step129HeadFFresh,s6Step129HeadGvFresh,s6Step129HeadFvFresh]=
    some (s6Step129HeadFvAfter,⟨s6Step129HeadFOut,s6Step129HeadGOut,s6Step129HeadFvOut,s6Step129HeadGvOut⟩,(growRow 777 s6Step129HeadGFresh ++ (growRow 795 s6Step129HeadFFresh ++ (growRow 775 s6Step129HeadGvFresh ++ (growRow 776 s6Step129HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step129HeadBank_rows]
  rfl

private theorem s6Step129Front_checked : compileHmrSourceFrontLog s6Step129EntryFBefore s6Step129FrontBank 205 78 ⟨204,204,79,78⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step129FrontLog=some s6Step129FrontPlan := by
  have pairEq : s6Step129FrontPair=⟨s6Step129HeadFRow,s6Step129HeadGRow,s6Step129HeadFvRow,s6Step129HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step129FrontHead=⟨s6Step129ExitFRow,s6Step129ExitGRow,s6Step129ExitFvRow,s6Step129ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step129Add0A=s6Step129FrontHead.f.wires := by decide +kernel
  have gEq : s6Step129Add0B=s6Step129FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step129Add1A=s6Step129FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step129Add1B=s6Step129FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step129EntryFBefore s6Step129FrontBank 205 78 ⟨204,204,79,78⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step129FrontLog s6Step129FrontPlan
  · exact s6Step129Front_entry
  · exact s6Step129EntryBank_checked
  · exact s6Step129Front_sigma
  · rfl
  · exact s6Step129Front_branch
  · rfl
  · simpa only [s6Step129FrontPlan,pairEq] using s6Step129HeadBank_checked
  · simpa only [s6Step129FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step129F4_checked
  · exact s6Step129Counter_checked
  · rfl
  · simpa only [s6Step129FrontPlan,headEq] using s6Step129ExitBank_checked

private theorem s6Step129Complete_explicit_checked : compileHmrEarlyStepLog s6Step129EntryFBefore s6Step129FrontBank 205 78 ⟨204,204,79,78⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step129CompleteLog=some s6Step129CompletePlan := by
  let Q := s6Step129EarlyControlPlan
  have hq := s6Step129EarlyControl_plan_checked
  have fv1 : s6Step129CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step129CompleteOut.fv.payload[2]?.getD s6Step129CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step129CompleteOut.fv.payload[3]?.getD s6Step129CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step129CompleteOut.fv.payload[4]?.getD s6Step129CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step129EntryFBefore s6Step129EarlyControlArena s6Step129FrontBank 205 78 ⟨204,204,79,78⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step129CompleteLog s6Step129FrontPlan Q
    s6Step129Front_checked s6Step129Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step129Complete_owned s6Step129Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step129EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 s6Step129CompleteOut.fv.second (s6Step129CompleteOut.fv.payload[2]?.getD s6Step129CompleteOut.fv.sign) (s6Step129CompleteOut.fv.payload[3]?.getD s6Step129CompleteOut.fv.sign) (s6Step129CompleteOut.fv.payload[4]?.getD s6Step129CompleteOut.fv.sign) 898 37 s6Step129EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep129Arena : Arena := s6Step129EntryFBefore
def s6PrivateStep129Bank : WindowBank := s6Step129FrontBank
def s6PrivateStep129Spec : HmrSourceWalkStepLog := ⟨205,78,⟨204,204,79,78⟩,37,.early s6Step129CompleteLog⟩
def s6PrivateStep129Plan : HmrSourceStepPlan := .early s6Step129CompletePlan
theorem s6PrivateStep129_source : s6PrivateStep129Spec=s6ObservedLogs128[1] := rfl
theorem s6PrivateStep129_checked : compileHmrSourceStepLog s6PrivateStep129Arena s6PrivateStep129Bank
    s6PrivateStep129Spec.fgWidth s6PrivateStep129Spec.vWidth s6PrivateStep129Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 129 s6PrivateStep129Spec.need none s6PrivateStep129Spec.log=some s6PrivateStep129Plan := by
  change compileHmrSourceStepLog s6Step129EntryFBefore s6Step129FrontBank 205 78 ⟨204,204,79,78⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 129 37 none (.early s6Step129CompleteLog)=some (.early s6Step129CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 129<498)]
  rw [s6Step129Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
