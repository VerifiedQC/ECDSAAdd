import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep134
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

private def s6Step136CompleteMoves : List (Wire × Wire) := []

private def s6Step136EarlyControlLog : HmrEarlyControlLog := ⟨[850, 879, 822, 813, 862],[843],[875],[882, 891, 903, 791, 825, 836],[]⟩

private def s6Step136FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [813, 862], [], [860, 833]],[[843], [822], [850], [879]],[[], [], [], []]⟩,[807],[869],[875],[882],[891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903]⟩

private def s6Step136CompleteLog : HmrEarlyStepLog := ⟨s6Step136FrontLog,s6Step136CompleteMoves,s6Step136EarlyControlLog⟩

private def s6Step136ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩

private def s6Step136ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854],776⟩

private def s6Step136ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],777⟩

private def s6Step136ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833],775⟩

private def s6Step136FrontOut : WindowBank := ⟨s6Step136ExitFOut,s6Step136ExitGOut,s6Step136ExitFvOut,s6Step136ExitGvOut⟩

private def s6Step136CompleteOut : WindowBank := s6Step136FrontOut.repacked s6Step136CompleteMoves

private def s6Step136EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step136EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step136EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step136EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step136EarlyControlPositiveArena,[843],s6Step136EarlyControlEqualityArena,[875],⟨⟨807,false⟩,[⟨⟨843,false⟩,875⟩]⟩⟩

private def s6Step136EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step136EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step136EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step136EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step136EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step136EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step136EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,850⟩,⟨⟨772,false⟩,879⟩,⟨⟨771,false⟩,822⟩,⟨⟨770,false⟩,813⟩,⟨⟨769,false⟩,862⟩]⟩

private def s6Step136EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step136EarlyControlZeroArena,s6Step136EarlyControlZeroPlan,s6Step136EarlyControlClassPlan,s6Step136EarlyControlFlagArena,s6Step136EarlyControlFittedArena,s6Step136EarlyControlHistoryArena,s6Step136EarlyControlSigmaArena,s6Step136EarlyControlOutputArena,s6Step136EarlyControlLog⟩

private def s6Step136CounterWork : List Wire := [875, 882, 891, 903]

private theorem s6Step136Counter_bounded : s6Step136CounterWork.toFinset⊆arenaWires := by norm_num [s6Step136CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step136HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step136CounterDuring : Arena := ⟨s6Step136HeadFvAfter.live∪s6Step136CounterWork.toFinset,Finset.union_subset s6Step136HeadFvAfter.bounded s6Step136Counter_bounded⟩

private def s6Step136EntryFFresh : List Wire := []

private def s6Step136EntryFvFresh : List Wire := []

private def s6Step136EntryGFresh : List Wire := [813, 862]

private def s6Step136EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step136EntryGvFresh : List Wire := [860, 833]

private def s6Step136ExitFExtra : List Wire := [822]

private def s6Step136ExitFvExtra : List Wire := [879]

private def s6Step136ExitGExtra : List Wire := [813, 862, 843]

private def s6Step136ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step136ExitGvExtra : List Wire := [850]

private def s6Step136Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step136Add0Work : List Wire := [891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step136Add0_bounded : s6Step136Add0Work.toFinset⊆arenaWires := by
  have h : s6Step136Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step136Add0During : Arena := ⟨s6Step136Add0Arena.live∪s6Step136Add0Work.toFinset,Finset.union_subset s6Step136Add0Arena.bounded s6Step136Add0_bounded⟩

private def s6Step136Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step136Add1Work : List Wire := [891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step136Add1_bounded : s6Step136Add1Work.toFinset⊆arenaWires := by
  have h : s6Step136Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step136Add1During : Arena := ⟨s6Step136Add1Arena.live∪s6Step136Add1Work.toFinset,Finset.union_subset s6Step136Add1Arena.bounded s6Step136Add1_bounded⟩

private def s6Step136F4FlagArena : Arena := ⟨s6Step136HeadFvAfter.live∪{875},Finset.union_subset s6Step136HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step136F4Plan : HmrHybridF4Plan := ⟨s6Step136F4FlagArena,[875],s6Step136Add0Arena,[882],s6Step136Add0During,s6Step136Add0Work,s6Step136Add1During,s6Step136Add1Work⟩

private def s6Step136HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 822],795⟩

private def s6Step136HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 879],776⟩

private def s6Step136HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 813, 862, 843],777⟩

private def s6Step136HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 850],775⟩

private def s6Step136FrontHead : WindowBank := ⟨s6Step136HeadFOut,s6Step136HeadGOut,s6Step136HeadFvOut,s6Step136HeadGvOut⟩

private def s6Step136EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩

private def s6Step136EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854],776⟩

private def s6Step136EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 813, 862],777⟩

private def s6Step136EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833],775⟩

private def s6Step136FrontPair : WindowBank := ⟨s6Step136EntryFOut,s6Step136EntryGOut,s6Step136EntryFvOut,s6Step136EntryGvOut⟩

private def s6Step136FrontSigmaArena : Arena := ⟨s6Step136EntryGvAfter.live∪{807},Finset.union_subset s6Step136EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step136HeadFFresh : List Wire := [822]

private def s6Step136HeadFvFresh : List Wire := [879]

private def s6Step136HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step136HeadGFresh : List Wire := [843]

private def s6Step136HeadGvFresh : List Wire := [850]

private def s6Step136FrontPlan : HmrSourceFront := ⟨s6Step136EntryGvAfter,s6Step136FrontPair,(growRow 795 s6Step136EntryFFresh ++ (growRow 777 s6Step136EntryGFresh ++ (growRow 776 s6Step136EntryFvFresh ++ (growRow 775 s6Step136EntryGvFresh ++ [])))),s6Step136FrontSigmaArena,[807],s6Step136HeadGBefore,[869],
  s6Step136HeadFvAfter,s6Step136FrontHead,(growRow 777 s6Step136HeadGFresh ++ (growRow 795 s6Step136HeadFFresh ++ (growRow 775 s6Step136HeadGvFresh ++ (growRow 776 s6Step136HeadFvFresh ++ [])))),s6Step136F4Plan,s6Step136CounterDuring,s6Step136CounterWork,s6Step136ExitGvAfter,s6Step136FrontOut,(shrinkRow 777 s6Step136ExitGExtra ++ (shrinkRow 795 s6Step136ExitFExtra ++ (shrinkRow 776 s6Step136ExitFvExtra ++ (shrinkRow 775 s6Step136ExitGvExtra ++ []))))⟩

private def s6Step136CompletePlan : HmrEarlyStepPlan := ⟨s6Step136FrontPlan,s6Step136EarlyControlArena,s6Step136EarlyControlPlan,s6Step136CompleteMoves⟩

private theorem s6Step136Complete_apart : List.Disjoint (s6Step136CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [807, 869, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step136CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[807, 869, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step136Complete_owned : (s6Step136CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step136EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step136EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136Complete_repack : s6Step136ExitGvAfter.checkRepack s6Step136CompleteMoves=some s6Step136EarlyControlArena := by rfl

private theorem s6Step136EarlyControl_branchOwned : ([869] : List Wire).toFinset⊆s6Step136EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step136EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136EarlyControl_branch : compileHmrBranchRetirement s6Step136EarlyControlSigmaArena 869=some s6Step136EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step136EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step136EarlyControlSigmaArena s6Step136EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [869] rfl rfl
    decide +kernel

private theorem s6Step136EarlyControl_classEqualityBorrow : s6Step136EarlyControlPositiveArena.checkBorrow (([807, 843] : List Wire).length-1) s6Step136EarlyControlLog.classWork=some s6Step136EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step136EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step136EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step136EarlyControlEqualityArena,s6Step136EarlyControlPositiveArena,s6Step136EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step136EarlyControl_classEqualityOwned : ([807, 843] : List Wire).toFinset⊆s6Step136EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step136EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step136EarlyControl_classEquality : compileHmrEqualityLog s6Step136EarlyControlPositiveArena [807, 843] 0 s6Step136EarlyControlLog.classWork=some (s6Step136EarlyControlEqualityArena,s6Step136EarlyControlLog.classWork,s6Step136EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step136EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step136EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step136EarlyControl_classOwned : ([769, 862, 807] : List Wire).toFinset⊆s6Step136EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step136EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step136EarlyControl_positiveBorrow : s6Step136EarlyControlZeroArena.checkBorrow (1) s6Step136EarlyControlLog.positiveWork=some s6Step136EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step136EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step136EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step136EarlyControlPositiveArena,s6Step136EarlyControlZeroArena,s6Step136EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step136EarlyControl_class : compileHmrSourceClassLog s6Step136EarlyControlZeroArena false 769 s6Step136EarlyControlZeroPlan.top 0 807 s6Step136EarlyControlLog.positiveWork s6Step136EarlyControlLog.classWork=some s6Step136EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step136EarlyControlClassPlan s6Step136EarlyControlZeroArena false 769 s6Step136EarlyControlZeroPlan.top 0 807
  constructor
  · decide +kernel
  · exact s6Step136EarlyControl_classOwned
  · exact s6Step136EarlyControl_positiveBorrow
  · exact s6Step136EarlyControl_classEquality

private theorem s6Step136EarlyControl_entryRecordOwned : ([869, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step136EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step136EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136EarlyControl_entrySigmaOwned : ([807, 254] : List Wire).toFinset⊆s6Step136EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step136EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136EarlyControl_fitBorrow : s6Step136EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step136EarlyControlLog.recordFresh=some s6Step136EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step136EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step136EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step136EarlyControlFittedArena,s6Step136EarlyControlFlagArena,s6Step136EarlyControlLog,arenaWires]

private theorem s6Step136EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step136EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step136EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step136EarlyControl_fit : compileHmrRecordGrowLog s6Step136EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step136EarlyControlLog.recordFresh=some s6Step136EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step136EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step136EarlyControl_fitBorrow

private theorem s6Step136EarlyControl_flagsBorrow : s6Step136EarlyControlEqualityArena.checkBorrow (6) s6Step136EarlyControlLog.flagWork=some s6Step136EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step136EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step136EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step136EarlyControlFlagArena,s6Step136EarlyControlEqualityArena,s6Step136EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step136EarlyControl_flagsOwned : ([875, 253, 252, 251] : List Wire).toFinset⊆s6Step136EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step136EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step136EarlyControl_flags : compileHmrFlagsLog s6Step136EarlyControlClassPlan.equalityArena s6Step136EarlyControlClassPlan.equality.top 253 252 251 s6Step136EarlyControlLog.flagWork=some s6Step136EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step136EarlyControl_flagsOwned⟩
  · exact s6Step136EarlyControl_flagsBorrow

private theorem s6Step136EarlyControl_historyBorrow : s6Step136EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step136EarlyControlLog.recordFresh=some s6Step136EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step136EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step136EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step136EarlyControlArena s6Step136EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step136EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step136EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step136EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step136EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step136EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136EarlyControl_history : compileHmrRecordGrowLog s6Step136EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step136EarlyControlLog.recordFresh=some s6Step136EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step136EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step136EarlyControl_historyBorrow

private theorem s6Step136EarlyControl_sigmaOwned : ([254, 807] : List Wire).toFinset⊆s6Step136EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step136EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136EarlyControl_sigmaReleaseOwned : ([807] : List Wire).toFinset⊆s6Step136EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step136EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136EarlyControl_sigmaRelease : s6Step136EarlyControlHistoryArena.release {807} (fun _ => false)=some s6Step136EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step136EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step136EarlyControlHistoryArena s6Step136EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [807] rfl rfl
    decide +kernel

private theorem s6Step136EarlyControl_sigma : compileHmrSigmaDropLog s6Step136EarlyControlHistoryArena false 0 0 254 807 []=some s6Step136EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step136EarlyControl_sigmaOwned⟩
  · exact s6Step136EarlyControl_sigmaRelease

private theorem s6Step136EarlyControl_zeroBorrow : s6Step136EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step136EarlyControlLog.zeroWork=some s6Step136EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step136EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step136EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step136EarlyControlArena s6Step136EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step136EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step136EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step136EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step136EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step136EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136EarlyControl_zero : compileHmrEqualityLog s6Step136EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step136EarlyControlLog.zeroWork=some (s6Step136EarlyControlZeroArena,s6Step136EarlyControlLog.zeroWork,s6Step136EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step136EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step136EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step136EarlyControl_logged : s6Step136EarlyControlPlan.Logged s6Step136EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 807 254 253 252 251 869 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step136EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step136EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step136EarlyControl_zero
  · exact s6Step136EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step136EarlyControl_flags
  · exact s6Step136EarlyControl_fit
  · exact s6Step136EarlyControl_history
  · exact s6Step136EarlyControl_sigma
  · exact s6Step136EarlyControl_branch

private theorem s6Step136EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step136EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 807 254 253 252 251 869 37 s6Step136EarlyControlLog=some s6Step136EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step136EarlyControlPlan s6Step136EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 807 254 253 252 251 869 37 s6Step136EarlyControl_logged

private def s6Step136EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,860),(861,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step136EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩

private def s6Step136EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854],776⟩

private def s6Step136EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],777⟩

private def s6Step136EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839],775⟩

private def s6Step136FrontBank : WindowBank := ⟨s6Step136EntryFRow,s6Step136EntryGRow,s6Step136EntryFvRow,s6Step136EntryGvRow⟩

private def s6Step136Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 822, 795]

private def s6Step136Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 813, 862, 843, 777]

private def s6Step136Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 879, 776]

private def s6Step136Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 850, 775]

private theorem s6Step136Counter_apart : Disjoint s6Step136HeadFvAfter.live s6Step136CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step136HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step136Counter_borrowed : s6Step136HeadFvAfter.checkBorrow 4 s6Step136CounterWork=some s6Step136CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step136HeadFvAfter s6Step136CounterDuring s6Step136CounterWork.toFinset s6Step136Counter_bounded s6Step136Counter_apart rfl

private theorem s6Step136Counter_owned : (807::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step136HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step136HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step136Counter_checked : compileHmrCounterStepLog s6Step136HeadFvAfter true 807 [774, 773, 772, 771, 770, 769] s6Step136CounterWork=some s6Step136CounterDuring := by
  have owned : ∀q∈807::[774, 773, 772, 771, 770, 769],q∈s6Step136HeadFvAfter.live := fun q hq => s6Step136Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step136Counter_borrowed

private def s6Step136EntryFAfter : Arena := s6Step136EntryFBefore

private theorem s6Step136EntryBank_incomingDistinct : ([s6Step136EntryFRow,s6Step136EntryGRow,s6Step136EntryFvRow,s6Step136EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136EntryF_Incoming : rowsOwned s6Step136EntryFBefore [s6Step136EntryFRow,s6Step136EntryGRow,s6Step136EntryFvRow,s6Step136EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step136EntryFRow,s6Step136EntryGRow,s6Step136EntryFvRow,s6Step136EntryGvRow] 0 s6Step136EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step136EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,860),(861,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step136EntryBank_outgoingOwned : rowsOwned s6Step136EntryGvAfter [s6Step136EntryFOut,s6Step136EntryGOut,s6Step136EntryFvOut,s6Step136EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step136EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step136EntryF_Outgoing : rowsOwned s6Step136EntryGvAfter [s6Step136EntryFOut,s6Step136EntryGOut,s6Step136EntryFvOut,s6Step136EntryGvOut] :=
  hmrRows_owned_drop s6Step136EntryGvAfter [s6Step136EntryFOut,s6Step136EntryGOut,s6Step136EntryFvOut,s6Step136EntryGvOut] 0 s6Step136EntryBank_outgoingOwned

private theorem s6Step136EntryF_distinct : (s6Step136EntryFRow.sign::s6Step136EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136EntryF_owned : (s6Step136EntryFRow.sign::s6Step136EntryFRow.payload).toFinset⊆s6Step136EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step136EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,860),(861,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136EntryF_reserved : s6Step136EntryFBefore.reserve s6Step136EntryFFresh.toFinset=some s6Step136EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step136EntryFFresh,arenaWires]
  · norm_num [s6Step136EntryFBefore,s6Step136EntryFFresh,arenaWires]
  · simp only [s6Step136EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step136EntryF_checked : planRowResizeLog s6Step136EntryFBefore s6Step136EntryFRow 202 s6Step136EntryFFresh=
    some (s6Step136EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩,growRow 795 s6Step136EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step136EntryFBefore s6Step136EntryFAfter s6Step136EntryFRow 202 s6Step136EntryFFresh
    s6Step136EntryF_distinct s6Step136EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step136EntryF_reserved
  have rowEq : WindowRow.mk (s6Step136EntryFRow.payload++s6Step136EntryFFresh) s6Step136EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step136EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,860),(861,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step136EntryFvAfter : Arena := s6Step136EntryGAfter

private def s6Step136EntryFvBefore : Arena := s6Step136EntryGAfter

private theorem s6Step136EntryFv_Incoming : rowsOwned s6Step136EntryFvBefore [s6Step136EntryFvRow,s6Step136EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step136EntryFRow,s6Step136EntryGRow,s6Step136EntryFvRow,s6Step136EntryGvRow] 2 s6Step136EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step136EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,860),(861,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step136EntryFv_Outgoing : rowsOwned s6Step136EntryGvAfter [s6Step136EntryFvOut,s6Step136EntryGvOut] :=
  hmrRows_owned_drop s6Step136EntryGvAfter [s6Step136EntryFOut,s6Step136EntryGOut,s6Step136EntryFvOut,s6Step136EntryGvOut] 2 s6Step136EntryBank_outgoingOwned

private theorem s6Step136EntryFv_distinct : (s6Step136EntryFvRow.sign::s6Step136EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136EntryFv_owned : (s6Step136EntryFvRow.sign::s6Step136EntryFvRow.payload).toFinset⊆s6Step136EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step136EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,860),(861,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136EntryFv_reserved : s6Step136EntryFvBefore.reserve s6Step136EntryFvFresh.toFinset=some s6Step136EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step136EntryFvFresh,arenaWires]
  · norm_num [s6Step136EntryFvBefore,s6Step136EntryGAfter,s6Step136EntryFvFresh,arenaWires]
  · simp only [s6Step136EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step136EntryFv_checked : planRowResizeLog s6Step136EntryFvBefore s6Step136EntryFvRow 82 s6Step136EntryFvFresh=
    some (s6Step136EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854],776⟩,growRow 776 s6Step136EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step136EntryFvBefore s6Step136EntryFvAfter s6Step136EntryFvRow 82 s6Step136EntryFvFresh
    s6Step136EntryFv_distinct s6Step136EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step136EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step136EntryFvRow.payload++s6Step136EntryFvFresh) s6Step136EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step136EntryGBefore : Arena := s6Step136EntryFBefore

private theorem s6Step136EntryG_Incoming : rowsOwned s6Step136EntryGBefore [s6Step136EntryGRow,s6Step136EntryFvRow,s6Step136EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step136EntryFRow,s6Step136EntryGRow,s6Step136EntryFvRow,s6Step136EntryGvRow] 1 s6Step136EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step136EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,860),(861,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step136EntryG_Outgoing : rowsOwned s6Step136EntryGvAfter [s6Step136EntryGOut,s6Step136EntryFvOut,s6Step136EntryGvOut] :=
  hmrRows_owned_drop s6Step136EntryGvAfter [s6Step136EntryFOut,s6Step136EntryGOut,s6Step136EntryFvOut,s6Step136EntryGvOut] 1 s6Step136EntryBank_outgoingOwned

private theorem s6Step136EntryG_distinct : (s6Step136EntryGRow.sign::s6Step136EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136EntryG_owned : (s6Step136EntryGRow.sign::s6Step136EntryGRow.payload).toFinset⊆s6Step136EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step136EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,860),(861,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136EntryG_reserved : s6Step136EntryGBefore.reserve s6Step136EntryGFresh.toFinset=some s6Step136EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step136EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step136EntryGBefore,s6Step136EntryFBefore,s6Step136EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step136EntryGBefore s6Step136EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,860),(861,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,860),(861,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step136EntryGFresh rfl rfl
    · norm_num [s6Step136EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step136EntryG_checked : planRowResizeLog s6Step136EntryGBefore s6Step136EntryGRow 202 s6Step136EntryGFresh=
    some (s6Step136EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 813, 862],777⟩,growRow 777 s6Step136EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step136EntryGBefore s6Step136EntryGAfter s6Step136EntryGRow 202 s6Step136EntryGFresh
    s6Step136EntryG_distinct s6Step136EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step136EntryG_reserved
  have rowEq : WindowRow.mk (s6Step136EntryGRow.payload++s6Step136EntryGFresh) s6Step136EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 813, 862],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step136EntryGvBefore : Arena := s6Step136EntryGAfter

private theorem s6Step136EntryGv_Incoming : rowsOwned s6Step136EntryGvBefore [s6Step136EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step136EntryFRow,s6Step136EntryGRow,s6Step136EntryFvRow,s6Step136EntryGvRow] 3 s6Step136EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step136EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,860),(861,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step136EntryGv_Outgoing : rowsOwned s6Step136EntryGvAfter [s6Step136EntryGvOut] :=
  hmrRows_owned_drop s6Step136EntryGvAfter [s6Step136EntryFOut,s6Step136EntryGOut,s6Step136EntryFvOut,s6Step136EntryGvOut] 3 s6Step136EntryBank_outgoingOwned

private theorem s6Step136EntryGv_distinct : (s6Step136EntryGvRow.sign::s6Step136EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136EntryGv_owned : (s6Step136EntryGvRow.sign::s6Step136EntryGvRow.payload).toFinset⊆s6Step136EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step136EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,860),(861,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136EntryGv_reserved : s6Step136EntryGvBefore.reserve s6Step136EntryGvFresh.toFinset=some s6Step136EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step136EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step136EntryGvBefore,s6Step136EntryGAfter,s6Step136EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step136EntryGvBefore s6Step136EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,860),(861,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step136EntryGvFresh rfl rfl
    · norm_num [s6Step136EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step136EntryGv_checked : planRowResizeLog s6Step136EntryGvBefore s6Step136EntryGvRow 82 s6Step136EntryGvFresh=
    some (s6Step136EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833],775⟩,growRow 775 s6Step136EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step136EntryGvBefore s6Step136EntryGvAfter s6Step136EntryGvRow 82 s6Step136EntryGvFresh
    s6Step136EntryGv_distinct s6Step136EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step136EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step136EntryGvRow.payload++s6Step136EntryGvFresh) s6Step136EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step136EntryBank_rows : planWindowRowsLog s6Step136EntryFBefore [(s6Step136EntryFRow,202),(s6Step136EntryGRow,202),(s6Step136EntryFvRow,82),(s6Step136EntryGvRow,82)] [s6Step136EntryFFresh,s6Step136EntryGFresh,s6Step136EntryFvFresh,s6Step136EntryGvFresh]=
    some (s6Step136EntryGvAfter,[s6Step136EntryFOut,s6Step136EntryGOut,s6Step136EntryFvOut,s6Step136EntryGvOut],(growRow 795 s6Step136EntryFFresh ++ (growRow 777 s6Step136EntryGFresh ++ (growRow 776 s6Step136EntryFvFresh ++ (growRow 775 s6Step136EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step136EntryGvAfter [] []=some (s6Step136EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step136EntryGvBefore s6Step136EntryGvAfter s6Step136EntryGvAfter
    s6Step136EntryGvRow s6Step136EntryGvOut 82 s6Step136EntryGvFresh [] [] []
    (growRow 775 s6Step136EntryGvFresh) ([]) s6Step136EntryGv_Incoming s6Step136EntryGv_checked h4 s6Step136EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step136EntryFvBefore s6Step136EntryFvAfter s6Step136EntryGvAfter
    s6Step136EntryFvRow s6Step136EntryFvOut 82 s6Step136EntryFvFresh [(s6Step136EntryGvRow,82)] [s6Step136EntryGvFresh] [s6Step136EntryGvOut]
    (growRow 776 s6Step136EntryFvFresh) ((growRow 775 s6Step136EntryGvFresh ++ [])) s6Step136EntryFv_Incoming s6Step136EntryFv_checked h3 s6Step136EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step136EntryGBefore s6Step136EntryGAfter s6Step136EntryGvAfter
    s6Step136EntryGRow s6Step136EntryGOut 202 s6Step136EntryGFresh [(s6Step136EntryFvRow,82),(s6Step136EntryGvRow,82)] [s6Step136EntryFvFresh,s6Step136EntryGvFresh] [s6Step136EntryFvOut,s6Step136EntryGvOut]
    (growRow 777 s6Step136EntryGFresh) ((growRow 776 s6Step136EntryFvFresh ++ (growRow 775 s6Step136EntryGvFresh ++ []))) s6Step136EntryG_Incoming s6Step136EntryG_checked h2 s6Step136EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step136EntryFBefore s6Step136EntryFAfter s6Step136EntryGvAfter
    s6Step136EntryFRow s6Step136EntryFOut 202 s6Step136EntryFFresh [(s6Step136EntryGRow,202),(s6Step136EntryFvRow,82),(s6Step136EntryGvRow,82)] [s6Step136EntryGFresh,s6Step136EntryFvFresh,s6Step136EntryGvFresh] [s6Step136EntryGOut,s6Step136EntryFvOut,s6Step136EntryGvOut]
    (growRow 795 s6Step136EntryFFresh) ((growRow 777 s6Step136EntryGFresh ++ (growRow 776 s6Step136EntryFvFresh ++ (growRow 775 s6Step136EntryGvFresh ++ [])))) s6Step136EntryF_Incoming s6Step136EntryF_checked h1 s6Step136EntryF_Outgoing
  exact h0

private theorem s6Step136EntryBank_checked : compileHmrBankResizeLog .entry s6Step136EntryFBefore ⟨s6Step136EntryFRow,s6Step136EntryGRow,s6Step136EntryFvRow,s6Step136EntryGvRow⟩ ⟨202,202,82,82⟩ [s6Step136EntryFFresh,s6Step136EntryGFresh,s6Step136EntryFvFresh,s6Step136EntryGvFresh]=
    some (s6Step136EntryGvAfter,⟨s6Step136EntryFOut,s6Step136EntryGOut,s6Step136EntryFvOut,s6Step136EntryGvOut⟩,(growRow 795 s6Step136EntryFFresh ++ (growRow 777 s6Step136EntryGFresh ++ (growRow 776 s6Step136EntryFvFresh ++ (growRow 775 s6Step136EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step136EntryBank_rows]
  rfl

private def s6Step136ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(850,862),(863,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step136ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step136ExitFBefore : Arena := s6Step136ExitGAfter

private def s6Step136ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 822],795⟩

private def s6Step136ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 879],776⟩

private def s6Step136ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 813, 862, 843],777⟩

private def s6Step136ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 850],775⟩

private theorem s6Step136ExitBank_incomingDistinct : ([s6Step136ExitGRow,s6Step136ExitFRow,s6Step136ExitFvRow,s6Step136ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136ExitF_Incoming : rowsOwned s6Step136ExitFBefore [s6Step136ExitFRow,s6Step136ExitFvRow,s6Step136ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step136ExitGRow,s6Step136ExitFRow,s6Step136ExitFvRow,s6Step136ExitGvRow] 1 s6Step136ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step136ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step136ExitBank_outgoingOwned : rowsOwned s6Step136ExitGvAfter [s6Step136ExitGOut,s6Step136ExitFOut,s6Step136ExitFvOut,s6Step136ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step136ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step136ExitF_Outgoing : rowsOwned s6Step136ExitGvAfter [s6Step136ExitFOut,s6Step136ExitFvOut,s6Step136ExitGvOut] :=
  hmrRows_owned_drop s6Step136ExitGvAfter [s6Step136ExitGOut,s6Step136ExitFOut,s6Step136ExitFvOut,s6Step136ExitGvOut] 1 s6Step136ExitBank_outgoingOwned

private theorem s6Step136ExitF_distinct : (s6Step136ExitFRow.sign::s6Step136ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136ExitF_owned : (s6Step136ExitFRow.sign::s6Step136ExitFRow.payload).toFinset⊆s6Step136ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step136ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step136ExitF_retired : s6Step136ExitFBefore.retireSet s6Step136ExitFExtra.toFinset=s6Step136ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step136ExitFBefore s6Step136ExitFAfter s6Step136ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step136ExitFBefore s6Step136ExitFAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(850,862),(863,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step136ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step136ExitF_checked : planRowResizeLog s6Step136ExitFBefore s6Step136ExitFRow 202 []=
    some (s6Step136ExitFAfter,s6Step136ExitFOut,shrinkRow 795 s6Step136ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step136ExitFBefore s6Step136ExitFRow 202 s6Step136ExitF_distinct s6Step136ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step136ExitFRow.payload.take 202) s6Step136ExitFRow.sign=s6Step136ExitFOut := by decide +kernel
  have hi : s6Step136ExitFRow.payload.drop 202=s6Step136ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step136ExitF_retired] at result
  exact result

private def s6Step136ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(850,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step136ExitFvBefore : Arena := s6Step136ExitFAfter

private theorem s6Step136ExitFv_Incoming : rowsOwned s6Step136ExitFvBefore [s6Step136ExitFvRow,s6Step136ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step136ExitGRow,s6Step136ExitFRow,s6Step136ExitFvRow,s6Step136ExitGvRow] 2 s6Step136ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step136ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(850,862),(863,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step136ExitFv_Outgoing : rowsOwned s6Step136ExitGvAfter [s6Step136ExitFvOut,s6Step136ExitGvOut] :=
  hmrRows_owned_drop s6Step136ExitGvAfter [s6Step136ExitGOut,s6Step136ExitFOut,s6Step136ExitFvOut,s6Step136ExitGvOut] 2 s6Step136ExitBank_outgoingOwned

private theorem s6Step136ExitFv_distinct : (s6Step136ExitFvRow.sign::s6Step136ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136ExitFv_owned : (s6Step136ExitFvRow.sign::s6Step136ExitFvRow.payload).toFinset⊆s6Step136ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step136ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(850,862),(863,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136ExitFv_retired : s6Step136ExitFvBefore.retireSet s6Step136ExitFvExtra.toFinset=s6Step136ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step136ExitFvBefore s6Step136ExitFvAfter s6Step136ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step136ExitFvBefore s6Step136ExitFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(850,862),(863,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(850,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step136ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step136ExitFv_checked : planRowResizeLog s6Step136ExitFvBefore s6Step136ExitFvRow 82 []=
    some (s6Step136ExitFvAfter,s6Step136ExitFvOut,shrinkRow 776 s6Step136ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step136ExitFvBefore s6Step136ExitFvRow 82 s6Step136ExitFv_distinct s6Step136ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step136ExitFvRow.payload.take 82) s6Step136ExitFvRow.sign=s6Step136ExitFvOut := by decide +kernel
  have hi : s6Step136ExitFvRow.payload.drop 82=s6Step136ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step136ExitFv_retired] at result
  exact result

private def s6Step136ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step136ExitG_Incoming : rowsOwned s6Step136ExitGBefore [s6Step136ExitGRow,s6Step136ExitFRow,s6Step136ExitFvRow,s6Step136ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step136ExitGRow,s6Step136ExitFRow,s6Step136ExitFvRow,s6Step136ExitGvRow] 0 s6Step136ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step136ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step136ExitG_Outgoing : rowsOwned s6Step136ExitGvAfter [s6Step136ExitGOut,s6Step136ExitFOut,s6Step136ExitFvOut,s6Step136ExitGvOut] :=
  hmrRows_owned_drop s6Step136ExitGvAfter [s6Step136ExitGOut,s6Step136ExitFOut,s6Step136ExitFvOut,s6Step136ExitGvOut] 0 s6Step136ExitBank_outgoingOwned

private theorem s6Step136ExitG_distinct : (s6Step136ExitGRow.sign::s6Step136ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136ExitG_owned : (s6Step136ExitGRow.sign::s6Step136ExitGRow.payload).toFinset⊆s6Step136ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step136ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step136ExitG_retired : s6Step136ExitGBefore.retireSet s6Step136ExitGExtra.toFinset=s6Step136ExitGAfter := by
  unfold Arena.retireSet s6Step136ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step136ExitGBefore,s6Step136ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step136ExitG_checked : planRowResizeLog s6Step136ExitGBefore s6Step136ExitGRow 200 []=
    some (s6Step136ExitGAfter,s6Step136ExitGOut,shrinkRow 777 s6Step136ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step136ExitGBefore s6Step136ExitGRow 200 s6Step136ExitG_distinct s6Step136ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step136ExitGRow.payload.take 200) s6Step136ExitGRow.sign=s6Step136ExitGOut := by decide +kernel
  have hi : s6Step136ExitGRow.payload.drop 200=s6Step136ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step136ExitG_retired] at result
  exact result

private def s6Step136ExitGvBefore : Arena := s6Step136ExitFvAfter

private theorem s6Step136ExitGv_Incoming : rowsOwned s6Step136ExitGvBefore [s6Step136ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step136ExitGRow,s6Step136ExitFRow,s6Step136ExitFvRow,s6Step136ExitGvRow] 3 s6Step136ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step136ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(850,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step136ExitGv_Outgoing : rowsOwned s6Step136ExitGvAfter [s6Step136ExitGvOut] :=
  hmrRows_owned_drop s6Step136ExitGvAfter [s6Step136ExitGOut,s6Step136ExitFOut,s6Step136ExitFvOut,s6Step136ExitGvOut] 3 s6Step136ExitBank_outgoingOwned

private theorem s6Step136ExitGv_distinct : (s6Step136ExitGvRow.sign::s6Step136ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136ExitGv_owned : (s6Step136ExitGvRow.sign::s6Step136ExitGvRow.payload).toFinset⊆s6Step136ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step136ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(850,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136ExitGv_retired : s6Step136ExitGvBefore.retireSet s6Step136ExitGvExtra.toFinset=s6Step136ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step136ExitGvBefore s6Step136ExitGvAfter s6Step136ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step136ExitGvBefore s6Step136ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(850,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step136ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step136ExitGv_checked : planRowResizeLog s6Step136ExitGvBefore s6Step136ExitGvRow 82 []=
    some (s6Step136ExitGvAfter,s6Step136ExitGvOut,shrinkRow 775 s6Step136ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step136ExitGvBefore s6Step136ExitGvRow 82 s6Step136ExitGv_distinct s6Step136ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step136ExitGvRow.payload.take 82) s6Step136ExitGvRow.sign=s6Step136ExitGvOut := by decide +kernel
  have hi : s6Step136ExitGvRow.payload.drop 82=s6Step136ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step136ExitGv_retired] at result
  exact result

private theorem s6Step136ExitBank_rows : planWindowRowsLog s6Step136ExitGBefore [(s6Step136ExitGRow,200),(s6Step136ExitFRow,202),(s6Step136ExitFvRow,82),(s6Step136ExitGvRow,82)] [[],[],[],[]]=
    some (s6Step136ExitGvAfter,[s6Step136ExitGOut,s6Step136ExitFOut,s6Step136ExitFvOut,s6Step136ExitGvOut],(shrinkRow 777 s6Step136ExitGExtra ++ (shrinkRow 795 s6Step136ExitFExtra ++ (shrinkRow 776 s6Step136ExitFvExtra ++ (shrinkRow 775 s6Step136ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step136ExitGvAfter [] []=some (s6Step136ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step136ExitGvBefore s6Step136ExitGvAfter s6Step136ExitGvAfter
    s6Step136ExitGvRow s6Step136ExitGvOut 82 [] [] [] []
    (shrinkRow 775 s6Step136ExitGvExtra) ([]) s6Step136ExitGv_Incoming s6Step136ExitGv_checked h4 s6Step136ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step136ExitFvBefore s6Step136ExitFvAfter s6Step136ExitGvAfter
    s6Step136ExitFvRow s6Step136ExitFvOut 82 [] [(s6Step136ExitGvRow,82)] [[]] [s6Step136ExitGvOut]
    (shrinkRow 776 s6Step136ExitFvExtra) ((shrinkRow 775 s6Step136ExitGvExtra ++ [])) s6Step136ExitFv_Incoming s6Step136ExitFv_checked h3 s6Step136ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step136ExitFBefore s6Step136ExitFAfter s6Step136ExitGvAfter
    s6Step136ExitFRow s6Step136ExitFOut 202 [] [(s6Step136ExitFvRow,82),(s6Step136ExitGvRow,82)] [[],[]] [s6Step136ExitFvOut,s6Step136ExitGvOut]
    (shrinkRow 795 s6Step136ExitFExtra) ((shrinkRow 776 s6Step136ExitFvExtra ++ (shrinkRow 775 s6Step136ExitGvExtra ++ []))) s6Step136ExitF_Incoming s6Step136ExitF_checked h2 s6Step136ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step136ExitGBefore s6Step136ExitGAfter s6Step136ExitGvAfter
    s6Step136ExitGRow s6Step136ExitGOut 200 [] [(s6Step136ExitFRow,202),(s6Step136ExitFvRow,82),(s6Step136ExitGvRow,82)] [[],[],[]] [s6Step136ExitFOut,s6Step136ExitFvOut,s6Step136ExitGvOut]
    (shrinkRow 777 s6Step136ExitGExtra) ((shrinkRow 795 s6Step136ExitFExtra ++ (shrinkRow 776 s6Step136ExitFvExtra ++ (shrinkRow 775 s6Step136ExitGvExtra ++ [])))) s6Step136ExitG_Incoming s6Step136ExitG_checked h1 s6Step136ExitG_Outgoing
  exact h0

private theorem s6Step136ExitBank_checked : compileHmrBankResizeLog .exit s6Step136ExitGBefore ⟨s6Step136ExitFRow,s6Step136ExitGRow,s6Step136ExitFvRow,s6Step136ExitGvRow⟩ ⟨202,200,82,82⟩ [[],[],[],[]]=
    some (s6Step136ExitGvAfter,⟨s6Step136ExitFOut,s6Step136ExitGOut,s6Step136ExitFvOut,s6Step136ExitGvOut⟩,(shrinkRow 777 s6Step136ExitGExtra ++ (shrinkRow 795 s6Step136ExitFExtra ++ (shrinkRow 776 s6Step136ExitFvExtra ++ (shrinkRow 775 s6Step136ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step136ExitBank_rows]
  rfl

private theorem s6Step136Add0_apart : Disjoint s6Step136Add0Arena.live s6Step136Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step136Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step136Add0_card : s6Step136Add0Arena.live.card=879 := by
  decide +kernel

private theorem s6Step136Add0_borrowed : s6Step136Add0Arena.checkBorrow (hmrHybridCount s6Step136Add0Arena s6Step136Add0B.length) s6Step136Add0Work=some s6Step136Add0During := by
  have len : s6Step136Add0Work.length=hmrHybridCount s6Step136Add0Arena s6Step136Add0B.length := by
    rw [hmrHybridCount,s6Step136Add0_card]
    decide +kernel
  have nd : s6Step136Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step136Add0Arena s6Step136Add0During s6Step136Add0Work.toFinset s6Step136Add0_bounded s6Step136Add0_apart rfl

private theorem s6Step136Add0_distinct : (875::869::882::(s6Step136Add0A++s6Step136Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136Add0_owned : (875::869::882::(s6Step136Add0A++s6Step136Add0B)).toFinset⊆s6Step136Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step136Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step136Add0_checked : compileHmrHybridCinLog s6Step136Add0Arena 869 875 882 s6Step136Add0A s6Step136Add0B s6Step136Add0Work=some s6Step136Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step136Add0Arena s6Step136Add0During 869 875 882 s6Step136Add0A s6Step136Add0B s6Step136Add0Work
    (by decide +kernel) (by decide +kernel) s6Step136Add0_distinct
    (fun q hq => s6Step136Add0_owned (List.mem_toFinset.mpr hq)) s6Step136Add0_borrowed

private theorem s6Step136Add1_apart : Disjoint s6Step136Add1Arena.live s6Step136Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step136Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step136Add1_card : s6Step136Add1Arena.live.card=879 := by
  decide +kernel

private theorem s6Step136Add1_borrowed : s6Step136Add1Arena.checkBorrow (hmrHybridCount s6Step136Add1Arena s6Step136Add1B.length) s6Step136Add1Work=some s6Step136Add1During := by
  have len : s6Step136Add1Work.length=hmrHybridCount s6Step136Add1Arena s6Step136Add1B.length := by
    rw [hmrHybridCount,s6Step136Add1_card]
    decide +kernel
  have nd : s6Step136Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step136Add1Arena s6Step136Add1During s6Step136Add1Work.toFinset s6Step136Add1_bounded s6Step136Add1_apart rfl

private theorem s6Step136Add1_distinct : (875::869::882::(s6Step136Add1A++s6Step136Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136Add1_owned : (875::869::882::(s6Step136Add1A++s6Step136Add1B)).toFinset⊆s6Step136Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step136Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step136Add1_checked : compileHmrHybridCinLog s6Step136Add1Arena 869 875 882 s6Step136Add1A s6Step136Add1B s6Step136Add1Work=some s6Step136Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step136Add1Arena s6Step136Add1During 869 875 882 s6Step136Add1A s6Step136Add1B s6Step136Add1Work
    (by decide +kernel) (by decide +kernel) s6Step136Add1_distinct
    (fun q hq => s6Step136Add1_owned (List.mem_toFinset.mpr hq)) s6Step136Add1_borrowed

private theorem s6Step136F4_apart : Disjoint (s6Step136Add0A++s6Step136Add0B).toFinset (s6Step136Add1A++s6Step136Add1B).toFinset := by
  have nd : ((s6Step136Add0A++s6Step136Add0B)++(s6Step136Add1A++s6Step136Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step136F4_carry : s6Step136F4FlagArena.checkBorrow 1 [882]=some s6Step136Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step136F4FlagArena,s6Step136HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step136F4FlagArena,s6Step136HeadFvAfter,s6Step136Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step136F4_distinct : (807::869::875::882::((s6Step136Add0A++s6Step136Add1A)++(s6Step136Add0B++s6Step136Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136F4_flag : s6Step136HeadFvAfter.checkBorrow 1 [875]=some s6Step136F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step136HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step136F4_owned : (807::869::((s6Step136Add0A++s6Step136Add1A)++(s6Step136Add0B++s6Step136Add1B))).toFinset⊆s6Step136HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step136HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step136F4_checked : compileHmrHybridF4Log s6Step136HeadFvAfter 807 869 s6Step136Add0A s6Step136Add0B s6Step136Add1A s6Step136Add1B [875] [882] s6Step136Add0Work s6Step136Add1Work=some s6Step136F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step136HeadFvAfter s6Step136F4FlagArena s6Step136Add0Arena s6Step136Add0During s6Step136Add1During 807 869
    s6Step136Add0A s6Step136Add0B s6Step136Add1A s6Step136Add1B [875] [882] s6Step136Add0Work s6Step136Add1Work
    (fun q hq => s6Step136F4_owned (List.mem_toFinset.mpr hq)) s6Step136F4_flag s6Step136F4_carry
    s6Step136F4_distinct s6Step136F4_apart s6Step136Add0_checked s6Step136Add1_checked

private theorem s6Step136Front_branch : s6Step136FrontSigmaArena.checkBorrow 1 [869]=some s6Step136HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step136FrontSigmaArena,s6Step136EntryGvAfter,arenaWires]
  · change s6Step136HeadGBefore.live=(s6Step136EntryGvAfter.live∪{807})∪{869}
    apply hmrArena_union_pair_of_filter_check s6Step136EntryGvAfter s6Step136HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 807 869 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step136Front_entry : HmrFrontEntryValid s6Step136EntryFBefore s6Step136FrontBank 202 82 ⟨202,200,82,82⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step136FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step136EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step136EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,860),(861,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step136FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step136Front_sigma : s6Step136EntryGvAfter.checkBorrow 1 [807]=some s6Step136FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step136EntryGvAfter,arenaWires]
  · rfl

private def s6Step136HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step136HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step136HeadFBefore : Arena := s6Step136HeadGAfter

private def s6Step136HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩

private def s6Step136HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854],776⟩

private def s6Step136HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 813, 862],777⟩

private def s6Step136HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833],775⟩

private theorem s6Step136HeadBank_incomingDistinct : ([s6Step136HeadGRow,s6Step136HeadFRow,s6Step136HeadGvRow,s6Step136HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136HeadF_Incoming : rowsOwned s6Step136HeadFBefore [s6Step136HeadFRow,s6Step136HeadGvRow,s6Step136HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step136HeadGRow,s6Step136HeadFRow,s6Step136HeadGvRow,s6Step136HeadFvRow] 1 s6Step136HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step136HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step136HeadBank_outgoingOwned : rowsOwned s6Step136HeadFvAfter [s6Step136HeadGOut,s6Step136HeadFOut,s6Step136HeadGvOut,s6Step136HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step136HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step136HeadF_Outgoing : rowsOwned s6Step136HeadFvAfter [s6Step136HeadFOut,s6Step136HeadGvOut,s6Step136HeadFvOut] :=
  hmrRows_owned_drop s6Step136HeadFvAfter [s6Step136HeadGOut,s6Step136HeadFOut,s6Step136HeadGvOut,s6Step136HeadFvOut] 1 s6Step136HeadBank_outgoingOwned

private theorem s6Step136HeadF_distinct : (s6Step136HeadFRow.sign::s6Step136HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136HeadF_owned : (s6Step136HeadFRow.sign::s6Step136HeadFRow.payload).toFinset⊆s6Step136HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step136HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136HeadF_reserved : s6Step136HeadFBefore.reserve s6Step136HeadFFresh.toFinset=some s6Step136HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step136HeadFFresh,arenaWires]
  · norm_num [s6Step136HeadFBefore,s6Step136HeadGAfter,s6Step136HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step136HeadFBefore s6Step136HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step136HeadFFresh rfl rfl
    · norm_num [s6Step136HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step136HeadF_checked : planRowResizeLog s6Step136HeadFBefore s6Step136HeadFRow 203 s6Step136HeadFFresh=
    some (s6Step136HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 822],795⟩,growRow 795 s6Step136HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step136HeadFBefore s6Step136HeadFAfter s6Step136HeadFRow 203 s6Step136HeadFFresh
    s6Step136HeadF_distinct s6Step136HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step136HeadF_reserved
  have rowEq : WindowRow.mk (s6Step136HeadFRow.payload++s6Step136HeadFFresh) s6Step136HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 822],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step136HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step136HeadFvBefore : Arena := s6Step136HeadGvAfter

private theorem s6Step136HeadFv_Incoming : rowsOwned s6Step136HeadFvBefore [s6Step136HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step136HeadGRow,s6Step136HeadFRow,s6Step136HeadGvRow,s6Step136HeadFvRow] 3 s6Step136HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step136HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step136HeadFv_Outgoing : rowsOwned s6Step136HeadFvAfter [s6Step136HeadFvOut] :=
  hmrRows_owned_drop s6Step136HeadFvAfter [s6Step136HeadGOut,s6Step136HeadFOut,s6Step136HeadGvOut,s6Step136HeadFvOut] 3 s6Step136HeadBank_outgoingOwned

private theorem s6Step136HeadFv_distinct : (s6Step136HeadFvRow.sign::s6Step136HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136HeadFv_owned : (s6Step136HeadFvRow.sign::s6Step136HeadFvRow.payload).toFinset⊆s6Step136HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step136HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step136HeadFv_reserved : s6Step136HeadFvBefore.reserve s6Step136HeadFvFresh.toFinset=some s6Step136HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step136HeadFvFresh,arenaWires]
  · norm_num [s6Step136HeadFvBefore,s6Step136HeadGvAfter,s6Step136HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step136HeadFvAfter,s6Step136HeadFvBefore,s6Step136HeadGvAfter,s6Step136HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step136HeadFv_checked : planRowResizeLog s6Step136HeadFvBefore s6Step136HeadFvRow 83 s6Step136HeadFvFresh=
    some (s6Step136HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 879],776⟩,growRow 776 s6Step136HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step136HeadFvBefore s6Step136HeadFvAfter s6Step136HeadFvRow 83 s6Step136HeadFvFresh
    s6Step136HeadFv_distinct s6Step136HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step136HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step136HeadFvRow.payload++s6Step136HeadFvFresh) s6Step136HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 879],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step136HeadG_Incoming : rowsOwned s6Step136HeadGBefore [s6Step136HeadGRow,s6Step136HeadFRow,s6Step136HeadGvRow,s6Step136HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step136HeadGRow,s6Step136HeadFRow,s6Step136HeadGvRow,s6Step136HeadFvRow] 0 s6Step136HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step136HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step136HeadG_Outgoing : rowsOwned s6Step136HeadFvAfter [s6Step136HeadGOut,s6Step136HeadFOut,s6Step136HeadGvOut,s6Step136HeadFvOut] :=
  hmrRows_owned_drop s6Step136HeadFvAfter [s6Step136HeadGOut,s6Step136HeadFOut,s6Step136HeadGvOut,s6Step136HeadFvOut] 0 s6Step136HeadBank_outgoingOwned

private theorem s6Step136HeadG_distinct : (s6Step136HeadGRow.sign::s6Step136HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136HeadG_owned : (s6Step136HeadGRow.sign::s6Step136HeadGRow.payload).toFinset⊆s6Step136HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step136HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step136HeadG_reserved : s6Step136HeadGBefore.reserve s6Step136HeadGFresh.toFinset=some s6Step136HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step136HeadGFresh,arenaWires]
  · norm_num [s6Step136HeadGBefore,s6Step136HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step136HeadGBefore s6Step136HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step136HeadGFresh rfl rfl
    · norm_num [s6Step136HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step136HeadG_checked : planRowResizeLog s6Step136HeadGBefore s6Step136HeadGRow 203 s6Step136HeadGFresh=
    some (s6Step136HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 813, 862, 843],777⟩,growRow 777 s6Step136HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step136HeadGBefore s6Step136HeadGAfter s6Step136HeadGRow 203 s6Step136HeadGFresh
    s6Step136HeadG_distinct s6Step136HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step136HeadG_reserved
  have rowEq : WindowRow.mk (s6Step136HeadGRow.payload++s6Step136HeadGFresh) s6Step136HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 813, 862, 843],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step136HeadGvBefore : Arena := s6Step136HeadFAfter

private theorem s6Step136HeadGv_Incoming : rowsOwned s6Step136HeadGvBefore [s6Step136HeadGvRow,s6Step136HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step136HeadGRow,s6Step136HeadFRow,s6Step136HeadGvRow,s6Step136HeadFvRow] 2 s6Step136HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step136HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step136HeadGv_Outgoing : rowsOwned s6Step136HeadFvAfter [s6Step136HeadGvOut,s6Step136HeadFvOut] :=
  hmrRows_owned_drop s6Step136HeadFvAfter [s6Step136HeadGOut,s6Step136HeadFOut,s6Step136HeadGvOut,s6Step136HeadFvOut] 2 s6Step136HeadBank_outgoingOwned

private theorem s6Step136HeadGv_distinct : (s6Step136HeadGvRow.sign::s6Step136HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step136HeadGv_owned : (s6Step136HeadGvRow.sign::s6Step136HeadGvRow.payload).toFinset⊆s6Step136HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step136HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step136HeadGv_reserved : s6Step136HeadGvBefore.reserve s6Step136HeadGvFresh.toFinset=some s6Step136HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step136HeadGvFresh,arenaWires]
  · norm_num [s6Step136HeadGvBefore,s6Step136HeadFAfter,s6Step136HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step136HeadGvAfter,s6Step136HeadGvBefore,s6Step136HeadFAfter,s6Step136HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step136HeadGv_checked : planRowResizeLog s6Step136HeadGvBefore s6Step136HeadGvRow 83 s6Step136HeadGvFresh=
    some (s6Step136HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 850],775⟩,growRow 775 s6Step136HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step136HeadGvBefore s6Step136HeadGvAfter s6Step136HeadGvRow 83 s6Step136HeadGvFresh
    s6Step136HeadGv_distinct s6Step136HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step136HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step136HeadGvRow.payload++s6Step136HeadGvFresh) s6Step136HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 850],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step136HeadBank_rows : planWindowRowsLog s6Step136HeadGBefore [(s6Step136HeadGRow,203),(s6Step136HeadFRow,203),(s6Step136HeadGvRow,83),(s6Step136HeadFvRow,83)] [s6Step136HeadGFresh,s6Step136HeadFFresh,s6Step136HeadGvFresh,s6Step136HeadFvFresh]=
    some (s6Step136HeadFvAfter,[s6Step136HeadGOut,s6Step136HeadFOut,s6Step136HeadGvOut,s6Step136HeadFvOut],(growRow 777 s6Step136HeadGFresh ++ (growRow 795 s6Step136HeadFFresh ++ (growRow 775 s6Step136HeadGvFresh ++ (growRow 776 s6Step136HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step136HeadFvAfter [] []=some (s6Step136HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step136HeadFvBefore s6Step136HeadFvAfter s6Step136HeadFvAfter
    s6Step136HeadFvRow s6Step136HeadFvOut 83 s6Step136HeadFvFresh [] [] []
    (growRow 776 s6Step136HeadFvFresh) ([]) s6Step136HeadFv_Incoming s6Step136HeadFv_checked h4 s6Step136HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step136HeadGvBefore s6Step136HeadGvAfter s6Step136HeadFvAfter
    s6Step136HeadGvRow s6Step136HeadGvOut 83 s6Step136HeadGvFresh [(s6Step136HeadFvRow,83)] [s6Step136HeadFvFresh] [s6Step136HeadFvOut]
    (growRow 775 s6Step136HeadGvFresh) ((growRow 776 s6Step136HeadFvFresh ++ [])) s6Step136HeadGv_Incoming s6Step136HeadGv_checked h3 s6Step136HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step136HeadFBefore s6Step136HeadFAfter s6Step136HeadFvAfter
    s6Step136HeadFRow s6Step136HeadFOut 203 s6Step136HeadFFresh [(s6Step136HeadGvRow,83),(s6Step136HeadFvRow,83)] [s6Step136HeadGvFresh,s6Step136HeadFvFresh] [s6Step136HeadGvOut,s6Step136HeadFvOut]
    (growRow 795 s6Step136HeadFFresh) ((growRow 775 s6Step136HeadGvFresh ++ (growRow 776 s6Step136HeadFvFresh ++ []))) s6Step136HeadF_Incoming s6Step136HeadF_checked h2 s6Step136HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step136HeadGBefore s6Step136HeadGAfter s6Step136HeadFvAfter
    s6Step136HeadGRow s6Step136HeadGOut 203 s6Step136HeadGFresh [(s6Step136HeadFRow,203),(s6Step136HeadGvRow,83),(s6Step136HeadFvRow,83)] [s6Step136HeadFFresh,s6Step136HeadGvFresh,s6Step136HeadFvFresh] [s6Step136HeadFOut,s6Step136HeadGvOut,s6Step136HeadFvOut]
    (growRow 777 s6Step136HeadGFresh) ((growRow 795 s6Step136HeadFFresh ++ (growRow 775 s6Step136HeadGvFresh ++ (growRow 776 s6Step136HeadFvFresh ++ [])))) s6Step136HeadG_Incoming s6Step136HeadG_checked h1 s6Step136HeadG_Outgoing
  exact h0

private theorem s6Step136HeadBank_checked : compileHmrBankResizeLog .headroom s6Step136HeadGBefore ⟨s6Step136HeadFRow,s6Step136HeadGRow,s6Step136HeadFvRow,s6Step136HeadGvRow⟩ ⟨203,203,83,83⟩ [s6Step136HeadGFresh,s6Step136HeadFFresh,s6Step136HeadGvFresh,s6Step136HeadFvFresh]=
    some (s6Step136HeadFvAfter,⟨s6Step136HeadFOut,s6Step136HeadGOut,s6Step136HeadFvOut,s6Step136HeadGvOut⟩,(growRow 777 s6Step136HeadGFresh ++ (growRow 795 s6Step136HeadFFresh ++ (growRow 775 s6Step136HeadGvFresh ++ (growRow 776 s6Step136HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step136HeadBank_rows]
  rfl

private theorem s6Step136Front_checked : compileHmrSourceFrontLog s6Step136EntryFBefore s6Step136FrontBank 202 82 ⟨202,200,82,82⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step136FrontLog=some s6Step136FrontPlan := by
  have pairEq : s6Step136FrontPair=⟨s6Step136HeadFRow,s6Step136HeadGRow,s6Step136HeadFvRow,s6Step136HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step136FrontHead=⟨s6Step136ExitFRow,s6Step136ExitGRow,s6Step136ExitFvRow,s6Step136ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step136Add0A=s6Step136FrontHead.f.wires := by decide +kernel
  have gEq : s6Step136Add0B=s6Step136FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step136Add1A=s6Step136FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step136Add1B=s6Step136FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step136EntryFBefore s6Step136FrontBank 202 82 ⟨202,200,82,82⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step136FrontLog s6Step136FrontPlan
  · exact s6Step136Front_entry
  · exact s6Step136EntryBank_checked
  · exact s6Step136Front_sigma
  · rfl
  · exact s6Step136Front_branch
  · rfl
  · simpa only [s6Step136FrontPlan,pairEq] using s6Step136HeadBank_checked
  · simpa only [s6Step136FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step136F4_checked
  · exact s6Step136Counter_checked
  · rfl
  · simpa only [s6Step136FrontPlan,headEq] using s6Step136ExitBank_checked

private theorem s6Step136Complete_explicit_checked : compileHmrEarlyStepLog s6Step136EntryFBefore s6Step136FrontBank 202 82 ⟨202,200,82,82⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step136CompleteLog=some s6Step136CompletePlan := by
  let Q := s6Step136EarlyControlPlan
  have hq := s6Step136EarlyControl_plan_checked
  have fv1 : s6Step136CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step136CompleteOut.fv.payload[2]?.getD s6Step136CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step136CompleteOut.fv.payload[3]?.getD s6Step136CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step136CompleteOut.fv.payload[4]?.getD s6Step136CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step136EntryFBefore s6Step136EarlyControlArena s6Step136FrontBank 202 82 ⟨202,200,82,82⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step136CompleteLog s6Step136FrontPlan Q
    s6Step136Front_checked s6Step136Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step136Complete_owned s6Step136Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step136EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 807 s6Step136CompleteOut.fv.second (s6Step136CompleteOut.fv.payload[2]?.getD s6Step136CompleteOut.fv.sign) (s6Step136CompleteOut.fv.payload[3]?.getD s6Step136CompleteOut.fv.sign) (s6Step136CompleteOut.fv.payload[4]?.getD s6Step136CompleteOut.fv.sign) 869 37 s6Step136EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep136Arena : Arena := s6Step136EntryFBefore
def s6PrivateStep136Bank : WindowBank := s6Step136FrontBank
def s6PrivateStep136Spec : HmrSourceWalkStepLog := ⟨202,82,⟨202,200,82,82⟩,37,.early s6Step136CompleteLog⟩
def s6PrivateStep136Plan : HmrSourceStepPlan := .early s6Step136CompletePlan
theorem s6PrivateStep136_source : s6PrivateStep136Spec=s6ObservedLogs128[8] := rfl
theorem s6PrivateStep136_checked : compileHmrSourceStepLog s6PrivateStep136Arena s6PrivateStep136Bank
    s6PrivateStep136Spec.fgWidth s6PrivateStep136Spec.vWidth s6PrivateStep136Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 136 s6PrivateStep136Spec.need none s6PrivateStep136Spec.log=some s6PrivateStep136Plan := by
  change compileHmrSourceStepLog s6Step136EntryFBefore s6Step136FrontBank 202 82 ⟨202,200,82,82⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 136 37 none (.early s6Step136CompleteLog)=some (.early s6Step136CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 136<498)]
  rw [s6Step136Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
