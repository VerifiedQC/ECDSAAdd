import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep135
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

private def s6Step137CompleteMoves : List (Wire × Wire) := [(768,457)]

private def s6Step137EarlyControlLog : HmrEarlyControlLog := ⟨[768, 862, 813, 869, 807],[822],[875],[882, 891, 903, 791, 825, 836],[904]⟩

private def s6Step137FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [869, 807], [], []],[[822], [813], [862], [843]],[[], [], [], []]⟩,[850],[879],[875],[882],[891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903]⟩

private def s6Step137CompleteLog : HmrEarlyStepLog := ⟨s6Step137FrontLog,s6Step137CompleteMoves,s6Step137EarlyControlLog⟩

private def s6Step137ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456],795⟩

private def s6Step137ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩

private def s6Step137ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],777⟩

private def s6Step137ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833],775⟩

private def s6Step137FrontOut : WindowBank := ⟨s6Step137ExitFOut,s6Step137ExitGOut,s6Step137ExitFvOut,s6Step137ExitGvOut⟩

private def s6Step137CompleteOut : WindowBank := s6Step137FrontOut.repacked s6Step137CompleteMoves

private def s6Step137EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step137EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step137EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step137EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step137EarlyControlPositiveArena,[822],s6Step137EarlyControlEqualityArena,[875],⟨⟨850,false⟩,[⟨⟨822,false⟩,875⟩]⟩⟩

private def s6Step137EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step137EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step137EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step137EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step137EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step137EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step137EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,768⟩,⟨⟨772,false⟩,862⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,869⟩,⟨⟨769,false⟩,807⟩]⟩

private def s6Step137EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step137EarlyControlZeroArena,s6Step137EarlyControlZeroPlan,s6Step137EarlyControlClassPlan,s6Step137EarlyControlFlagArena,s6Step137EarlyControlFittedArena,s6Step137EarlyControlHistoryArena,s6Step137EarlyControlSigmaArena,s6Step137EarlyControlOutputArena,s6Step137EarlyControlLog⟩

private def s6Step137CounterWork : List Wire := [875, 882, 891, 903]

private theorem s6Step137Counter_bounded : s6Step137CounterWork.toFinset⊆arenaWires := by norm_num [s6Step137CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step137HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step137CounterDuring : Arena := ⟨s6Step137HeadFvAfter.live∪s6Step137CounterWork.toFinset,Finset.union_subset s6Step137HeadFvAfter.bounded s6Step137Counter_bounded⟩

private def s6Step137EntryFFresh : List Wire := []

private def s6Step137EntryFvFresh : List Wire := []

private def s6Step137EntryGFresh : List Wire := [869, 807]

private def s6Step137EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step137EntryGvAfter : Arena := s6Step137EntryGAfter

private def s6Step137EntryGvFresh : List Wire := []

private def s6Step137ExitFExtra : List Wire := [457, 813]

private def s6Step137ExitGExtra : List Wire := [869, 807, 822]

private def s6Step137ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,457),(458,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step137ExitGvExtra : List Wire := [862]

private def s6Step137Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step137Add0Work : List Wire := [891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step137Add0_bounded : s6Step137Add0Work.toFinset⊆arenaWires := by
  have h : s6Step137Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step137Add0During : Arena := ⟨s6Step137Add0Arena.live∪s6Step137Add0Work.toFinset,Finset.union_subset s6Step137Add0Arena.bounded s6Step137Add0_bounded⟩

private def s6Step137Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step137Add1Work : List Wire := [891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step137Add1_bounded : s6Step137Add1Work.toFinset⊆arenaWires := by
  have h : s6Step137Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step137Add1During : Arena := ⟨s6Step137Add1Arena.live∪s6Step137Add1Work.toFinset,Finset.union_subset s6Step137Add1Arena.bounded s6Step137Add1_bounded⟩

private def s6Step137F4FlagArena : Arena := ⟨s6Step137HeadFvAfter.live∪{875},Finset.union_subset s6Step137HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step137F4Plan : HmrHybridF4Plan := ⟨s6Step137F4FlagArena,[875],s6Step137Add0Arena,[882],s6Step137Add0During,s6Step137Add0Work,s6Step137Add1During,s6Step137Add1Work⟩

private def s6Step137HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 813],795⟩

private def s6Step137HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩

private def s6Step137HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 869, 807, 822],777⟩

private def s6Step137HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862],775⟩

private def s6Step137FrontHead : WindowBank := ⟨s6Step137HeadFOut,s6Step137HeadGOut,s6Step137HeadFvOut,s6Step137HeadGvOut⟩

private def s6Step137EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩

private def s6Step137EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854],776⟩

private def s6Step137EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 869, 807],777⟩

private def s6Step137EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833],775⟩

private def s6Step137FrontPair : WindowBank := ⟨s6Step137EntryFOut,s6Step137EntryGOut,s6Step137EntryFvOut,s6Step137EntryGvOut⟩

private def s6Step137FrontSigmaArena : Arena := ⟨s6Step137EntryGvAfter.live∪{850},Finset.union_subset s6Step137EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step137HeadFFresh : List Wire := [813]

private def s6Step137HeadFvFresh : List Wire := [843]

private def s6Step137HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(850,862),(863,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step137HeadGFresh : List Wire := [822]

private def s6Step137HeadGvFresh : List Wire := [862]

private def s6Step137FrontPlan : HmrSourceFront := ⟨s6Step137EntryGvAfter,s6Step137FrontPair,(growRow 795 s6Step137EntryFFresh ++ (growRow 777 s6Step137EntryGFresh ++ (growRow 776 s6Step137EntryFvFresh ++ (growRow 775 s6Step137EntryGvFresh ++ [])))),s6Step137FrontSigmaArena,[850],s6Step137HeadGBefore,[879],
  s6Step137HeadFvAfter,s6Step137FrontHead,(growRow 777 s6Step137HeadGFresh ++ (growRow 795 s6Step137HeadFFresh ++ (growRow 775 s6Step137HeadGvFresh ++ (growRow 776 s6Step137HeadFvFresh ++ [])))),s6Step137F4Plan,s6Step137CounterDuring,s6Step137CounterWork,s6Step137ExitGvAfter,s6Step137FrontOut,(shrinkRow 777 s6Step137ExitGExtra ++ (shrinkRow 795 s6Step137ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step137ExitGvExtra ++ []))))⟩

private def s6Step137CompletePlan : HmrEarlyStepPlan := ⟨s6Step137FrontPlan,s6Step137EarlyControlArena,s6Step137EarlyControlPlan,s6Step137CompleteMoves⟩

private theorem s6Step137Complete_apart : List.Disjoint (s6Step137CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [850, 879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step137CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[850, 879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step137Complete_owned : (s6Step137CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step137EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step137EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step137CompleteRelocationMove0Borrowed : Arena := ⟨s6Step137ExitGvAfter.live∪{457},Finset.union_subset s6Step137ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step137CompleteRelocation_move0_owned : 768∈s6Step137ExitGvAfter.live := by norm_num [s6Step137ExitGvAfter,arenaWires]

private theorem s6Step137CompleteRelocation_move0_reserve : s6Step137ExitGvAfter.reserve {457}=some s6Step137CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step137ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step137CompleteRelocation_move0_retire : s6Step137CompleteRelocationMove0Borrowed.retireSet {768}=s6Step137EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step137CompleteRelocationMove0Borrowed s6Step137EarlyControlArena {768}
  change s6Step137EarlyControlArena.live=(s6Step137ExitGvAfter.live∪{457})\{768}
  apply hmrArena_update_of_filter_check s6Step137ExitGvAfter s6Step137EarlyControlArena (fun q => ([(0,457),(458,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [457] [768] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step137CompleteRelocation_checked : s6Step137ExitGvAfter.checkRepack [(768,457)]=some s6Step137EarlyControlArena := by
  have tail1 : s6Step137EarlyControlArena.checkRepack []=some s6Step137EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step137ExitGvAfter s6Step137CompleteRelocationMove0Borrowed s6Step137EarlyControlArena s6Step137EarlyControlArena 768 457 []
    s6Step137CompleteRelocation_move0_owned s6Step137CompleteRelocation_move0_reserve s6Step137CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step137Complete_repack : s6Step137ExitGvAfter.checkRepack s6Step137CompleteMoves=some s6Step137EarlyControlArena := by
  simpa only [s6Step137CompleteMoves] using s6Step137CompleteRelocation_checked

private theorem s6Step137EarlyControl_branchOwned : ([879] : List Wire).toFinset⊆s6Step137EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step137EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step137EarlyControl_branch : compileHmrBranchRetirement s6Step137EarlyControlSigmaArena 879=some s6Step137EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step137EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step137EarlyControlSigmaArena s6Step137EarlyControlOutputArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [879] rfl rfl
    decide +kernel

private theorem s6Step137EarlyControl_classEqualityBorrow : s6Step137EarlyControlPositiveArena.checkBorrow (([850, 822] : List Wire).length-1) s6Step137EarlyControlLog.classWork=some s6Step137EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step137EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step137EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step137EarlyControlEqualityArena,s6Step137EarlyControlPositiveArena,s6Step137EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step137EarlyControl_classEqualityOwned : ([850, 822] : List Wire).toFinset⊆s6Step137EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step137EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step137EarlyControl_classEquality : compileHmrEqualityLog s6Step137EarlyControlPositiveArena [850, 822] 0 s6Step137EarlyControlLog.classWork=some (s6Step137EarlyControlEqualityArena,s6Step137EarlyControlLog.classWork,s6Step137EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step137EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step137EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step137EarlyControl_classOwned : ([769, 807, 850] : List Wire).toFinset⊆s6Step137EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step137EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step137EarlyControl_positiveBorrow : s6Step137EarlyControlZeroArena.checkBorrow (1) s6Step137EarlyControlLog.positiveWork=some s6Step137EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step137EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step137EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step137EarlyControlPositiveArena,s6Step137EarlyControlZeroArena,s6Step137EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step137EarlyControl_class : compileHmrSourceClassLog s6Step137EarlyControlZeroArena false 769 s6Step137EarlyControlZeroPlan.top 0 850 s6Step137EarlyControlLog.positiveWork s6Step137EarlyControlLog.classWork=some s6Step137EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step137EarlyControlClassPlan s6Step137EarlyControlZeroArena false 769 s6Step137EarlyControlZeroPlan.top 0 850
  constructor
  · decide +kernel
  · exact s6Step137EarlyControl_classOwned
  · exact s6Step137EarlyControl_positiveBorrow
  · exact s6Step137EarlyControl_classEquality

private theorem s6Step137EarlyControl_entryRecordOwned : ([879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step137EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step137EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step137EarlyControl_entrySigmaOwned : ([850, 254] : List Wire).toFinset⊆s6Step137EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step137EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step137EarlyControl_fitBorrow : s6Step137EarlyControlFlagArena.checkBorrow ((38-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step137EarlyControlLog.recordFresh=some s6Step137EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step137EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step137EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step137EarlyControlFittedArena,s6Step137EarlyControlFlagArena,s6Step137EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step137EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step137EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step137EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step137EarlyControl_fit : compileHmrRecordGrowLog s6Step137EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 38 s6Step137EarlyControlLog.recordFresh=some s6Step137EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step137EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step137EarlyControl_fitBorrow

private theorem s6Step137EarlyControl_flagsBorrow : s6Step137EarlyControlEqualityArena.checkBorrow (6) s6Step137EarlyControlLog.flagWork=some s6Step137EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step137EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step137EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step137EarlyControlFlagArena,s6Step137EarlyControlEqualityArena,s6Step137EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step137EarlyControl_flagsOwned : ([875, 253, 252, 251] : List Wire).toFinset⊆s6Step137EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step137EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step137EarlyControl_flags : compileHmrFlagsLog s6Step137EarlyControlClassPlan.equalityArena s6Step137EarlyControlClassPlan.equality.top 253 252 251 s6Step137EarlyControlLog.flagWork=some s6Step137EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step137EarlyControl_flagsOwned⟩
  · exact s6Step137EarlyControl_flagsBorrow

private theorem s6Step137EarlyControl_historyBorrow : s6Step137EarlyControlArena.checkBorrow ((38-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step137EarlyControlLog.recordFresh=some s6Step137EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step137EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step137EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step137EarlyControlArena s6Step137EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step137EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step137EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step137EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step137EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step137EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step137EarlyControl_history : compileHmrRecordGrowLog s6Step137EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 38 s6Step137EarlyControlLog.recordFresh=some s6Step137EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step137EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step137EarlyControl_historyBorrow

private theorem s6Step137EarlyControl_sigmaOwned : ([254, 850] : List Wire).toFinset⊆s6Step137EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step137EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step137EarlyControl_sigmaReleaseOwned : ([850] : List Wire).toFinset⊆s6Step137EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step137EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step137EarlyControl_sigmaRelease : s6Step137EarlyControlHistoryArena.release {850} (fun _ => false)=some s6Step137EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step137EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step137EarlyControlHistoryArena s6Step137EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [850] rfl rfl
    decide +kernel

private theorem s6Step137EarlyControl_sigma : compileHmrSigmaDropLog s6Step137EarlyControlHistoryArena false 0 0 254 850 []=some s6Step137EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step137EarlyControl_sigmaOwned⟩
  · exact s6Step137EarlyControl_sigmaRelease

private theorem s6Step137EarlyControl_zeroBorrow : s6Step137EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step137EarlyControlLog.zeroWork=some s6Step137EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step137EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step137EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step137EarlyControlArena s6Step137EarlyControlZeroArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step137EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step137EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step137EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step137EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step137EarlyControlArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step137EarlyControl_zero : compileHmrEqualityLog s6Step137EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step137EarlyControlLog.zeroWork=some (s6Step137EarlyControlZeroArena,s6Step137EarlyControlLog.zeroWork,s6Step137EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step137EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step137EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step137EarlyControl_logged : s6Step137EarlyControlPlan.Logged s6Step137EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 850 254 253 252 251 879 38 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step137EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step137EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step137EarlyControl_zero
  · exact s6Step137EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step137EarlyControl_flags
  · exact s6Step137EarlyControl_fit
  · exact s6Step137EarlyControl_history
  · exact s6Step137EarlyControl_sigma
  · exact s6Step137EarlyControl_branch

private theorem s6Step137EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step137EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 850 254 253 252 251 879 38 s6Step137EarlyControlLog=some s6Step137EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step137EarlyControlPlan s6Step137EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 850 254 253 252 251 879 38 s6Step137EarlyControl_logged

private def s6Step137EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step137EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩

private def s6Step137EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854],776⟩

private def s6Step137EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],777⟩

private def s6Step137EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833],775⟩

private def s6Step137FrontBank : WindowBank := ⟨s6Step137EntryFRow,s6Step137EntryGRow,s6Step137EntryFvRow,s6Step137EntryGvRow⟩

private def s6Step137Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 813, 795]

private def s6Step137Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 869, 807, 822, 777]

private def s6Step137Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 776]

private def s6Step137Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 775]

private theorem s6Step137Counter_apart : Disjoint s6Step137HeadFvAfter.live s6Step137CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step137HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step137Counter_borrowed : s6Step137HeadFvAfter.checkBorrow 4 s6Step137CounterWork=some s6Step137CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step137HeadFvAfter s6Step137CounterDuring s6Step137CounterWork.toFinset s6Step137Counter_bounded s6Step137Counter_apart rfl

private theorem s6Step137Counter_owned : (850::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step137HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step137HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step137Counter_checked : compileHmrCounterStepLog s6Step137HeadFvAfter true 850 [774, 773, 772, 771, 770, 769] s6Step137CounterWork=some s6Step137CounterDuring := by
  have owned : ∀q∈850::[774, 773, 772, 771, 770, 769],q∈s6Step137HeadFvAfter.live := fun q hq => s6Step137Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step137Counter_borrowed

private def s6Step137EntryFAfter : Arena := s6Step137EntryFBefore

private theorem s6Step137EntryBank_incomingDistinct : ([s6Step137EntryFRow,s6Step137EntryGRow,s6Step137EntryFvRow,s6Step137EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137EntryF_Incoming : rowsOwned s6Step137EntryFBefore [s6Step137EntryFRow,s6Step137EntryGRow,s6Step137EntryFvRow,s6Step137EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step137EntryFRow,s6Step137EntryGRow,s6Step137EntryFvRow,s6Step137EntryGvRow] 0 s6Step137EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step137EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step137EntryBank_outgoingOwned : rowsOwned s6Step137EntryGvAfter [s6Step137EntryFOut,s6Step137EntryGOut,s6Step137EntryFvOut,s6Step137EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step137EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step137EntryF_Outgoing : rowsOwned s6Step137EntryGvAfter [s6Step137EntryFOut,s6Step137EntryGOut,s6Step137EntryFvOut,s6Step137EntryGvOut] :=
  hmrRows_owned_drop s6Step137EntryGvAfter [s6Step137EntryFOut,s6Step137EntryGOut,s6Step137EntryFvOut,s6Step137EntryGvOut] 0 s6Step137EntryBank_outgoingOwned

private theorem s6Step137EntryF_distinct : (s6Step137EntryFRow.sign::s6Step137EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137EntryF_owned : (s6Step137EntryFRow.sign::s6Step137EntryFRow.payload).toFinset⊆s6Step137EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step137EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step137EntryF_reserved : s6Step137EntryFBefore.reserve s6Step137EntryFFresh.toFinset=some s6Step137EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step137EntryFFresh,arenaWires]
  · norm_num [s6Step137EntryFBefore,s6Step137EntryFFresh,arenaWires]
  · simp only [s6Step137EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step137EntryF_checked : planRowResizeLog s6Step137EntryFBefore s6Step137EntryFRow 202 s6Step137EntryFFresh=
    some (s6Step137EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩,growRow 795 s6Step137EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step137EntryFBefore s6Step137EntryFAfter s6Step137EntryFRow 202 s6Step137EntryFFresh
    s6Step137EntryF_distinct s6Step137EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step137EntryF_reserved
  have rowEq : WindowRow.mk (s6Step137EntryFRow.payload++s6Step137EntryFFresh) s6Step137EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step137EntryFvAfter : Arena := s6Step137EntryGAfter

private def s6Step137EntryFvBefore : Arena := s6Step137EntryGAfter

private theorem s6Step137EntryFv_Incoming : rowsOwned s6Step137EntryFvBefore [s6Step137EntryFvRow,s6Step137EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step137EntryFRow,s6Step137EntryGRow,s6Step137EntryFvRow,s6Step137EntryGvRow] 2 s6Step137EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step137EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step137EntryFv_Outgoing : rowsOwned s6Step137EntryGvAfter [s6Step137EntryFvOut,s6Step137EntryGvOut] :=
  hmrRows_owned_drop s6Step137EntryGvAfter [s6Step137EntryFOut,s6Step137EntryGOut,s6Step137EntryFvOut,s6Step137EntryGvOut] 2 s6Step137EntryBank_outgoingOwned

private theorem s6Step137EntryFv_distinct : (s6Step137EntryFvRow.sign::s6Step137EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137EntryFv_owned : (s6Step137EntryFvRow.sign::s6Step137EntryFvRow.payload).toFinset⊆s6Step137EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step137EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step137EntryFv_reserved : s6Step137EntryFvBefore.reserve s6Step137EntryFvFresh.toFinset=some s6Step137EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step137EntryFvFresh,arenaWires]
  · norm_num [s6Step137EntryFvBefore,s6Step137EntryGAfter,s6Step137EntryFvFresh,arenaWires]
  · simp only [s6Step137EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step137EntryFv_checked : planRowResizeLog s6Step137EntryFvBefore s6Step137EntryFvRow 82 s6Step137EntryFvFresh=
    some (s6Step137EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854],776⟩,growRow 776 s6Step137EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step137EntryFvBefore s6Step137EntryFvAfter s6Step137EntryFvRow 82 s6Step137EntryFvFresh
    s6Step137EntryFv_distinct s6Step137EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step137EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step137EntryFvRow.payload++s6Step137EntryFvFresh) s6Step137EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step137EntryGBefore : Arena := s6Step137EntryFBefore

private theorem s6Step137EntryG_Incoming : rowsOwned s6Step137EntryGBefore [s6Step137EntryGRow,s6Step137EntryFvRow,s6Step137EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step137EntryFRow,s6Step137EntryGRow,s6Step137EntryFvRow,s6Step137EntryGvRow] 1 s6Step137EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step137EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step137EntryG_Outgoing : rowsOwned s6Step137EntryGvAfter [s6Step137EntryGOut,s6Step137EntryFvOut,s6Step137EntryGvOut] :=
  hmrRows_owned_drop s6Step137EntryGvAfter [s6Step137EntryFOut,s6Step137EntryGOut,s6Step137EntryFvOut,s6Step137EntryGvOut] 1 s6Step137EntryBank_outgoingOwned

private theorem s6Step137EntryG_distinct : (s6Step137EntryGRow.sign::s6Step137EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137EntryG_owned : (s6Step137EntryGRow.sign::s6Step137EntryGRow.payload).toFinset⊆s6Step137EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step137EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step137EntryG_reserved : s6Step137EntryGBefore.reserve s6Step137EntryGFresh.toFinset=some s6Step137EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step137EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step137EntryGBefore,s6Step137EntryFBefore,s6Step137EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step137EntryGBefore s6Step137EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step137EntryGFresh rfl rfl
    · norm_num [s6Step137EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step137EntryG_checked : planRowResizeLog s6Step137EntryGBefore s6Step137EntryGRow 202 s6Step137EntryGFresh=
    some (s6Step137EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 869, 807],777⟩,growRow 777 s6Step137EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step137EntryGBefore s6Step137EntryGAfter s6Step137EntryGRow 202 s6Step137EntryGFresh
    s6Step137EntryG_distinct s6Step137EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step137EntryG_reserved
  have rowEq : WindowRow.mk (s6Step137EntryGRow.payload++s6Step137EntryGFresh) s6Step137EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 869, 807],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step137EntryGvBefore : Arena := s6Step137EntryGAfter

private theorem s6Step137EntryGv_Incoming : rowsOwned s6Step137EntryGvBefore [s6Step137EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step137EntryFRow,s6Step137EntryGRow,s6Step137EntryFvRow,s6Step137EntryGvRow] 3 s6Step137EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step137EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step137EntryGv_Outgoing : rowsOwned s6Step137EntryGvAfter [s6Step137EntryGvOut] :=
  hmrRows_owned_drop s6Step137EntryGvAfter [s6Step137EntryFOut,s6Step137EntryGOut,s6Step137EntryFvOut,s6Step137EntryGvOut] 3 s6Step137EntryBank_outgoingOwned

private theorem s6Step137EntryGv_distinct : (s6Step137EntryGvRow.sign::s6Step137EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137EntryGv_owned : (s6Step137EntryGvRow.sign::s6Step137EntryGvRow.payload).toFinset⊆s6Step137EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step137EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step137EntryGv_reserved : s6Step137EntryGvBefore.reserve s6Step137EntryGvFresh.toFinset=some s6Step137EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step137EntryGvFresh,arenaWires]
  · norm_num [s6Step137EntryGvBefore,s6Step137EntryGAfter,s6Step137EntryGvFresh,arenaWires]
  · simp only [s6Step137EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step137EntryGv_checked : planRowResizeLog s6Step137EntryGvBefore s6Step137EntryGvRow 82 s6Step137EntryGvFresh=
    some (s6Step137EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833],775⟩,growRow 775 s6Step137EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step137EntryGvBefore s6Step137EntryGvAfter s6Step137EntryGvRow 82 s6Step137EntryGvFresh
    s6Step137EntryGv_distinct s6Step137EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step137EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step137EntryGvRow.payload++s6Step137EntryGvFresh) s6Step137EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step137EntryBank_rows : planWindowRowsLog s6Step137EntryFBefore [(s6Step137EntryFRow,202),(s6Step137EntryGRow,202),(s6Step137EntryFvRow,82),(s6Step137EntryGvRow,82)] [s6Step137EntryFFresh,s6Step137EntryGFresh,s6Step137EntryFvFresh,s6Step137EntryGvFresh]=
    some (s6Step137EntryGvAfter,[s6Step137EntryFOut,s6Step137EntryGOut,s6Step137EntryFvOut,s6Step137EntryGvOut],(growRow 795 s6Step137EntryFFresh ++ (growRow 777 s6Step137EntryGFresh ++ (growRow 776 s6Step137EntryFvFresh ++ (growRow 775 s6Step137EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step137EntryGvAfter [] []=some (s6Step137EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step137EntryGvBefore s6Step137EntryGvAfter s6Step137EntryGvAfter
    s6Step137EntryGvRow s6Step137EntryGvOut 82 s6Step137EntryGvFresh [] [] []
    (growRow 775 s6Step137EntryGvFresh) ([]) s6Step137EntryGv_Incoming s6Step137EntryGv_checked h4 s6Step137EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step137EntryFvBefore s6Step137EntryFvAfter s6Step137EntryGvAfter
    s6Step137EntryFvRow s6Step137EntryFvOut 82 s6Step137EntryFvFresh [(s6Step137EntryGvRow,82)] [s6Step137EntryGvFresh] [s6Step137EntryGvOut]
    (growRow 776 s6Step137EntryFvFresh) ((growRow 775 s6Step137EntryGvFresh ++ [])) s6Step137EntryFv_Incoming s6Step137EntryFv_checked h3 s6Step137EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step137EntryGBefore s6Step137EntryGAfter s6Step137EntryGvAfter
    s6Step137EntryGRow s6Step137EntryGOut 202 s6Step137EntryGFresh [(s6Step137EntryFvRow,82),(s6Step137EntryGvRow,82)] [s6Step137EntryFvFresh,s6Step137EntryGvFresh] [s6Step137EntryFvOut,s6Step137EntryGvOut]
    (growRow 777 s6Step137EntryGFresh) ((growRow 776 s6Step137EntryFvFresh ++ (growRow 775 s6Step137EntryGvFresh ++ []))) s6Step137EntryG_Incoming s6Step137EntryG_checked h2 s6Step137EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step137EntryFBefore s6Step137EntryFAfter s6Step137EntryGvAfter
    s6Step137EntryFRow s6Step137EntryFOut 202 s6Step137EntryFFresh [(s6Step137EntryGRow,202),(s6Step137EntryFvRow,82),(s6Step137EntryGvRow,82)] [s6Step137EntryGFresh,s6Step137EntryFvFresh,s6Step137EntryGvFresh] [s6Step137EntryGOut,s6Step137EntryFvOut,s6Step137EntryGvOut]
    (growRow 795 s6Step137EntryFFresh) ((growRow 777 s6Step137EntryGFresh ++ (growRow 776 s6Step137EntryFvFresh ++ (growRow 775 s6Step137EntryGvFresh ++ [])))) s6Step137EntryF_Incoming s6Step137EntryF_checked h1 s6Step137EntryF_Outgoing
  exact h0

private theorem s6Step137EntryBank_checked : compileHmrBankResizeLog .entry s6Step137EntryFBefore ⟨s6Step137EntryFRow,s6Step137EntryGRow,s6Step137EntryFvRow,s6Step137EntryGvRow⟩ ⟨202,202,82,82⟩ [s6Step137EntryFFresh,s6Step137EntryGFresh,s6Step137EntryFvFresh,s6Step137EntryGvFresh]=
    some (s6Step137EntryGvAfter,⟨s6Step137EntryFOut,s6Step137EntryGOut,s6Step137EntryFvOut,s6Step137EntryGvOut⟩,(growRow 795 s6Step137EntryFFresh ++ (growRow 777 s6Step137EntryGFresh ++ (growRow 776 s6Step137EntryFvFresh ++ (growRow 775 s6Step137EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step137EntryBank_rows]
  rfl

private def s6Step137ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,457),(458,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step137ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step137ExitFBefore : Arena := s6Step137ExitGAfter

private def s6Step137ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 813],795⟩

private def s6Step137ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩

private def s6Step137ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 869, 807, 822],777⟩

private def s6Step137ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862],775⟩

private theorem s6Step137ExitBank_incomingDistinct : ([s6Step137ExitGRow,s6Step137ExitFRow,s6Step137ExitFvRow,s6Step137ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137ExitF_Incoming : rowsOwned s6Step137ExitFBefore [s6Step137ExitFRow,s6Step137ExitFvRow,s6Step137ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step137ExitGRow,s6Step137ExitFRow,s6Step137ExitFvRow,s6Step137ExitGvRow] 1 s6Step137ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step137ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step137ExitBank_outgoingOwned : rowsOwned s6Step137ExitGvAfter [s6Step137ExitGOut,s6Step137ExitFOut,s6Step137ExitFvOut,s6Step137ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step137ExitGvAfter (fun q => ([(0,457),(458,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step137ExitF_Outgoing : rowsOwned s6Step137ExitGvAfter [s6Step137ExitFOut,s6Step137ExitFvOut,s6Step137ExitGvOut] :=
  hmrRows_owned_drop s6Step137ExitGvAfter [s6Step137ExitGOut,s6Step137ExitFOut,s6Step137ExitFvOut,s6Step137ExitGvOut] 1 s6Step137ExitBank_outgoingOwned

private theorem s6Step137ExitF_distinct : (s6Step137ExitFRow.sign::s6Step137ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137ExitF_owned : (s6Step137ExitFRow.sign::s6Step137ExitFRow.payload).toFinset⊆s6Step137ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step137ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step137ExitF_retired : s6Step137ExitFBefore.retireSet s6Step137ExitFExtra.toFinset=s6Step137ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step137ExitFBefore s6Step137ExitFAfter s6Step137ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step137ExitFBefore s6Step137ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,457),(458,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step137ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step137ExitF_checked : planRowResizeLog s6Step137ExitFBefore s6Step137ExitFRow 201 []=
    some (s6Step137ExitFAfter,s6Step137ExitFOut,shrinkRow 795 s6Step137ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step137ExitFBefore s6Step137ExitFRow 201 s6Step137ExitF_distinct s6Step137ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step137ExitFRow.payload.take 201) s6Step137ExitFRow.sign=s6Step137ExitFOut := by decide +kernel
  have hi : s6Step137ExitFRow.payload.drop 201=s6Step137ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step137ExitF_retired] at result
  exact result

private def s6Step137ExitFvAfter : Arena := s6Step137ExitFAfter

private def s6Step137ExitFvBefore : Arena := s6Step137ExitFAfter

private theorem s6Step137ExitFv_Incoming : rowsOwned s6Step137ExitFvBefore [s6Step137ExitFvRow,s6Step137ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step137ExitGRow,s6Step137ExitFRow,s6Step137ExitFvRow,s6Step137ExitGvRow] 2 s6Step137ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step137ExitFvBefore (fun q => ([(0,457),(458,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step137ExitFv_Outgoing : rowsOwned s6Step137ExitGvAfter [s6Step137ExitFvOut,s6Step137ExitGvOut] :=
  hmrRows_owned_drop s6Step137ExitGvAfter [s6Step137ExitGOut,s6Step137ExitFOut,s6Step137ExitFvOut,s6Step137ExitGvOut] 2 s6Step137ExitBank_outgoingOwned

private theorem s6Step137ExitFv_distinct : (s6Step137ExitFvRow.sign::s6Step137ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137ExitFv_owned : (s6Step137ExitFvRow.sign::s6Step137ExitFvRow.payload).toFinset⊆s6Step137ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step137ExitFvBefore (fun q => ([(0,457),(458,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step137ExitFv_reserved : s6Step137ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step137ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step137ExitFv_checked : planRowResizeLog s6Step137ExitFvBefore s6Step137ExitFvRow 83 []=
    some (s6Step137ExitFvAfter,s6Step137ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step137ExitFvBefore s6Step137ExitFvAfter s6Step137ExitFvRow 83 []
    s6Step137ExitFv_distinct s6Step137ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step137ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step137ExitFvRow.payload++[]) s6Step137ExitFvRow.sign=s6Step137ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step137ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step137ExitG_Incoming : rowsOwned s6Step137ExitGBefore [s6Step137ExitGRow,s6Step137ExitFRow,s6Step137ExitFvRow,s6Step137ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step137ExitGRow,s6Step137ExitFRow,s6Step137ExitFvRow,s6Step137ExitGvRow] 0 s6Step137ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step137ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step137ExitG_Outgoing : rowsOwned s6Step137ExitGvAfter [s6Step137ExitGOut,s6Step137ExitFOut,s6Step137ExitFvOut,s6Step137ExitGvOut] :=
  hmrRows_owned_drop s6Step137ExitGvAfter [s6Step137ExitGOut,s6Step137ExitFOut,s6Step137ExitFvOut,s6Step137ExitGvOut] 0 s6Step137ExitBank_outgoingOwned

private theorem s6Step137ExitG_distinct : (s6Step137ExitGRow.sign::s6Step137ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137ExitG_owned : (s6Step137ExitGRow.sign::s6Step137ExitGRow.payload).toFinset⊆s6Step137ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step137ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step137ExitG_retired : s6Step137ExitGBefore.retireSet s6Step137ExitGExtra.toFinset=s6Step137ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step137ExitGBefore s6Step137ExitGAfter s6Step137ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step137ExitGBefore s6Step137ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step137ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step137ExitG_checked : planRowResizeLog s6Step137ExitGBefore s6Step137ExitGRow 200 []=
    some (s6Step137ExitGAfter,s6Step137ExitGOut,shrinkRow 777 s6Step137ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step137ExitGBefore s6Step137ExitGRow 200 s6Step137ExitG_distinct s6Step137ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step137ExitGRow.payload.take 200) s6Step137ExitGRow.sign=s6Step137ExitGOut := by decide +kernel
  have hi : s6Step137ExitGRow.payload.drop 200=s6Step137ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step137ExitG_retired] at result
  exact result

private def s6Step137ExitGvBefore : Arena := s6Step137ExitFAfter

private theorem s6Step137ExitGv_Incoming : rowsOwned s6Step137ExitGvBefore [s6Step137ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step137ExitGRow,s6Step137ExitFRow,s6Step137ExitFvRow,s6Step137ExitGvRow] 3 s6Step137ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step137ExitGvBefore (fun q => ([(0,457),(458,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step137ExitGv_Outgoing : rowsOwned s6Step137ExitGvAfter [s6Step137ExitGvOut] :=
  hmrRows_owned_drop s6Step137ExitGvAfter [s6Step137ExitGOut,s6Step137ExitFOut,s6Step137ExitFvOut,s6Step137ExitGvOut] 3 s6Step137ExitBank_outgoingOwned

private theorem s6Step137ExitGv_distinct : (s6Step137ExitGvRow.sign::s6Step137ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137ExitGv_owned : (s6Step137ExitGvRow.sign::s6Step137ExitGvRow.payload).toFinset⊆s6Step137ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step137ExitGvBefore (fun q => ([(0,457),(458,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step137ExitGv_retired : s6Step137ExitGvBefore.retireSet s6Step137ExitGvExtra.toFinset=s6Step137ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step137ExitGvBefore s6Step137ExitGvAfter s6Step137ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step137ExitGvBefore s6Step137ExitGvAfter (fun q => ([(0,457),(458,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,457),(458,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,862),(863,869),(870,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step137ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step137ExitGv_checked : planRowResizeLog s6Step137ExitGvBefore s6Step137ExitGvRow 82 []=
    some (s6Step137ExitGvAfter,s6Step137ExitGvOut,shrinkRow 775 s6Step137ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step137ExitGvBefore s6Step137ExitGvRow 82 s6Step137ExitGv_distinct s6Step137ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step137ExitGvRow.payload.take 82) s6Step137ExitGvRow.sign=s6Step137ExitGvOut := by decide +kernel
  have hi : s6Step137ExitGvRow.payload.drop 82=s6Step137ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step137ExitGv_retired] at result
  exact result

private theorem s6Step137ExitBank_rows : planWindowRowsLog s6Step137ExitGBefore [(s6Step137ExitGRow,200),(s6Step137ExitFRow,201),(s6Step137ExitFvRow,83),(s6Step137ExitGvRow,82)] [[],[],[],[]]=
    some (s6Step137ExitGvAfter,[s6Step137ExitGOut,s6Step137ExitFOut,s6Step137ExitFvOut,s6Step137ExitGvOut],(shrinkRow 777 s6Step137ExitGExtra ++ (shrinkRow 795 s6Step137ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step137ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step137ExitGvAfter [] []=some (s6Step137ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step137ExitGvBefore s6Step137ExitGvAfter s6Step137ExitGvAfter
    s6Step137ExitGvRow s6Step137ExitGvOut 82 [] [] [] []
    (shrinkRow 775 s6Step137ExitGvExtra) ([]) s6Step137ExitGv_Incoming s6Step137ExitGv_checked h4 s6Step137ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step137ExitFvBefore s6Step137ExitFvAfter s6Step137ExitGvAfter
    s6Step137ExitFvRow s6Step137ExitFvOut 83 [] [(s6Step137ExitGvRow,82)] [[]] [s6Step137ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step137ExitGvExtra ++ [])) s6Step137ExitFv_Incoming s6Step137ExitFv_checked h3 s6Step137ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step137ExitFBefore s6Step137ExitFAfter s6Step137ExitGvAfter
    s6Step137ExitFRow s6Step137ExitFOut 201 [] [(s6Step137ExitFvRow,83),(s6Step137ExitGvRow,82)] [[],[]] [s6Step137ExitFvOut,s6Step137ExitGvOut]
    (shrinkRow 795 s6Step137ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step137ExitGvExtra ++ []))) s6Step137ExitF_Incoming s6Step137ExitF_checked h2 s6Step137ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step137ExitGBefore s6Step137ExitGAfter s6Step137ExitGvAfter
    s6Step137ExitGRow s6Step137ExitGOut 200 [] [(s6Step137ExitFRow,201),(s6Step137ExitFvRow,83),(s6Step137ExitGvRow,82)] [[],[],[]] [s6Step137ExitFOut,s6Step137ExitFvOut,s6Step137ExitGvOut]
    (shrinkRow 777 s6Step137ExitGExtra) ((shrinkRow 795 s6Step137ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step137ExitGvExtra ++ [])))) s6Step137ExitG_Incoming s6Step137ExitG_checked h1 s6Step137ExitG_Outgoing
  exact h0

private theorem s6Step137ExitBank_checked : compileHmrBankResizeLog .exit s6Step137ExitGBefore ⟨s6Step137ExitFRow,s6Step137ExitGRow,s6Step137ExitFvRow,s6Step137ExitGvRow⟩ ⟨201,200,83,82⟩ [[],[],[],[]]=
    some (s6Step137ExitGvAfter,⟨s6Step137ExitFOut,s6Step137ExitGOut,s6Step137ExitFvOut,s6Step137ExitGvOut⟩,(shrinkRow 777 s6Step137ExitGExtra ++ (shrinkRow 795 s6Step137ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step137ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step137ExitBank_rows]
  rfl

private theorem s6Step137Add0_apart : Disjoint s6Step137Add0Arena.live s6Step137Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step137Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step137Add0_card : s6Step137Add0Arena.live.card=879 := by
  decide +kernel

private theorem s6Step137Add0_borrowed : s6Step137Add0Arena.checkBorrow (hmrHybridCount s6Step137Add0Arena s6Step137Add0B.length) s6Step137Add0Work=some s6Step137Add0During := by
  have len : s6Step137Add0Work.length=hmrHybridCount s6Step137Add0Arena s6Step137Add0B.length := by
    rw [hmrHybridCount,s6Step137Add0_card]
    decide +kernel
  have nd : s6Step137Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step137Add0Arena s6Step137Add0During s6Step137Add0Work.toFinset s6Step137Add0_bounded s6Step137Add0_apart rfl

private theorem s6Step137Add0_distinct : (875::879::882::(s6Step137Add0A++s6Step137Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137Add0_owned : (875::879::882::(s6Step137Add0A++s6Step137Add0B)).toFinset⊆s6Step137Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step137Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step137Add0_checked : compileHmrHybridCinLog s6Step137Add0Arena 879 875 882 s6Step137Add0A s6Step137Add0B s6Step137Add0Work=some s6Step137Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step137Add0Arena s6Step137Add0During 879 875 882 s6Step137Add0A s6Step137Add0B s6Step137Add0Work
    (by decide +kernel) (by decide +kernel) s6Step137Add0_distinct
    (fun q hq => s6Step137Add0_owned (List.mem_toFinset.mpr hq)) s6Step137Add0_borrowed

private theorem s6Step137Add1_apart : Disjoint s6Step137Add1Arena.live s6Step137Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step137Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step137Add1_card : s6Step137Add1Arena.live.card=879 := by
  decide +kernel

private theorem s6Step137Add1_borrowed : s6Step137Add1Arena.checkBorrow (hmrHybridCount s6Step137Add1Arena s6Step137Add1B.length) s6Step137Add1Work=some s6Step137Add1During := by
  have len : s6Step137Add1Work.length=hmrHybridCount s6Step137Add1Arena s6Step137Add1B.length := by
    rw [hmrHybridCount,s6Step137Add1_card]
    decide +kernel
  have nd : s6Step137Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step137Add1Arena s6Step137Add1During s6Step137Add1Work.toFinset s6Step137Add1_bounded s6Step137Add1_apart rfl

private theorem s6Step137Add1_distinct : (875::879::882::(s6Step137Add1A++s6Step137Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137Add1_owned : (875::879::882::(s6Step137Add1A++s6Step137Add1B)).toFinset⊆s6Step137Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step137Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step137Add1_checked : compileHmrHybridCinLog s6Step137Add1Arena 879 875 882 s6Step137Add1A s6Step137Add1B s6Step137Add1Work=some s6Step137Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step137Add1Arena s6Step137Add1During 879 875 882 s6Step137Add1A s6Step137Add1B s6Step137Add1Work
    (by decide +kernel) (by decide +kernel) s6Step137Add1_distinct
    (fun q hq => s6Step137Add1_owned (List.mem_toFinset.mpr hq)) s6Step137Add1_borrowed

private theorem s6Step137F4_apart : Disjoint (s6Step137Add0A++s6Step137Add0B).toFinset (s6Step137Add1A++s6Step137Add1B).toFinset := by
  have nd : ((s6Step137Add0A++s6Step137Add0B)++(s6Step137Add1A++s6Step137Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step137F4_carry : s6Step137F4FlagArena.checkBorrow 1 [882]=some s6Step137Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step137F4FlagArena,s6Step137HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step137F4FlagArena,s6Step137HeadFvAfter,s6Step137Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step137F4_distinct : (850::879::875::882::((s6Step137Add0A++s6Step137Add1A)++(s6Step137Add0B++s6Step137Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137F4_flag : s6Step137HeadFvAfter.checkBorrow 1 [875]=some s6Step137F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step137HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step137F4_owned : (850::879::((s6Step137Add0A++s6Step137Add1A)++(s6Step137Add0B++s6Step137Add1B))).toFinset⊆s6Step137HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step137HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step137F4_checked : compileHmrHybridF4Log s6Step137HeadFvAfter 850 879 s6Step137Add0A s6Step137Add0B s6Step137Add1A s6Step137Add1B [875] [882] s6Step137Add0Work s6Step137Add1Work=some s6Step137F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step137HeadFvAfter s6Step137F4FlagArena s6Step137Add0Arena s6Step137Add0During s6Step137Add1During 850 879
    s6Step137Add0A s6Step137Add0B s6Step137Add1A s6Step137Add1B [875] [882] s6Step137Add0Work s6Step137Add1Work
    (fun q hq => s6Step137F4_owned (List.mem_toFinset.mpr hq)) s6Step137F4_flag s6Step137F4_carry
    s6Step137F4_distinct s6Step137F4_apart s6Step137Add0_checked s6Step137Add1_checked

private theorem s6Step137Front_branch : s6Step137FrontSigmaArena.checkBorrow 1 [879]=some s6Step137HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step137FrontSigmaArena,s6Step137EntryGvAfter,s6Step137EntryGAfter,arenaWires]
  · change s6Step137HeadGBefore.live=(s6Step137EntryGvAfter.live∪{850})∪{879}
    apply hmrArena_union_pair_of_filter_check s6Step137EntryGvAfter s6Step137HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(850,862),(863,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 850 879 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step137Front_entry : HmrFrontEntryValid s6Step137EntryFBefore s6Step137FrontBank 202 82 ⟨201,200,83,82⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step137FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step137EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step137EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,862),(863,869),(870,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step137FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step137Front_sigma : s6Step137EntryGvAfter.checkBorrow 1 [850]=some s6Step137FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step137EntryGvAfter,s6Step137EntryGAfter,arenaWires]
  · rfl

private def s6Step137HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step137HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step137HeadFBefore : Arena := s6Step137HeadGAfter

private def s6Step137HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457],795⟩

private def s6Step137HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854],776⟩

private def s6Step137HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 869, 807],777⟩

private def s6Step137HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833],775⟩

private theorem s6Step137HeadBank_incomingDistinct : ([s6Step137HeadGRow,s6Step137HeadFRow,s6Step137HeadGvRow,s6Step137HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137HeadF_Incoming : rowsOwned s6Step137HeadFBefore [s6Step137HeadFRow,s6Step137HeadGvRow,s6Step137HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step137HeadGRow,s6Step137HeadFRow,s6Step137HeadGvRow,s6Step137HeadFvRow] 1 s6Step137HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step137HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step137HeadBank_outgoingOwned : rowsOwned s6Step137HeadFvAfter [s6Step137HeadGOut,s6Step137HeadFOut,s6Step137HeadGvOut,s6Step137HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step137HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step137HeadF_Outgoing : rowsOwned s6Step137HeadFvAfter [s6Step137HeadFOut,s6Step137HeadGvOut,s6Step137HeadFvOut] :=
  hmrRows_owned_drop s6Step137HeadFvAfter [s6Step137HeadGOut,s6Step137HeadFOut,s6Step137HeadGvOut,s6Step137HeadFvOut] 1 s6Step137HeadBank_outgoingOwned

private theorem s6Step137HeadF_distinct : (s6Step137HeadFRow.sign::s6Step137HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137HeadF_owned : (s6Step137HeadFRow.sign::s6Step137HeadFRow.payload).toFinset⊆s6Step137HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step137HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step137HeadF_reserved : s6Step137HeadFBefore.reserve s6Step137HeadFFresh.toFinset=some s6Step137HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step137HeadFFresh,arenaWires]
  · norm_num [s6Step137HeadFBefore,s6Step137HeadGAfter,s6Step137HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step137HeadFAfter,s6Step137HeadFBefore,s6Step137HeadGAfter,s6Step137HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step137HeadF_checked : planRowResizeLog s6Step137HeadFBefore s6Step137HeadFRow 203 s6Step137HeadFFresh=
    some (s6Step137HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 813],795⟩,growRow 795 s6Step137HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step137HeadFBefore s6Step137HeadFAfter s6Step137HeadFRow 203 s6Step137HeadFFresh
    s6Step137HeadF_distinct s6Step137HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step137HeadF_reserved
  have rowEq : WindowRow.mk (s6Step137HeadFRow.payload++s6Step137HeadFFresh) s6Step137HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 813],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step137HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step137HeadFvBefore : Arena := s6Step137HeadGvAfter

private theorem s6Step137HeadFv_Incoming : rowsOwned s6Step137HeadFvBefore [s6Step137HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step137HeadGRow,s6Step137HeadFRow,s6Step137HeadGvRow,s6Step137HeadFvRow] 3 s6Step137HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step137HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step137HeadFv_Outgoing : rowsOwned s6Step137HeadFvAfter [s6Step137HeadFvOut] :=
  hmrRows_owned_drop s6Step137HeadFvAfter [s6Step137HeadGOut,s6Step137HeadFOut,s6Step137HeadGvOut,s6Step137HeadFvOut] 3 s6Step137HeadBank_outgoingOwned

private theorem s6Step137HeadFv_distinct : (s6Step137HeadFvRow.sign::s6Step137HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137HeadFv_owned : (s6Step137HeadFvRow.sign::s6Step137HeadFvRow.payload).toFinset⊆s6Step137HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step137HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step137HeadFv_reserved : s6Step137HeadFvBefore.reserve s6Step137HeadFvFresh.toFinset=some s6Step137HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step137HeadFvFresh,arenaWires]
  · norm_num [s6Step137HeadFvBefore,s6Step137HeadGvAfter,s6Step137HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step137HeadFvAfter,s6Step137HeadFvBefore,s6Step137HeadGvAfter,s6Step137HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step137HeadFv_checked : planRowResizeLog s6Step137HeadFvBefore s6Step137HeadFvRow 83 s6Step137HeadFvFresh=
    some (s6Step137HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩,growRow 776 s6Step137HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step137HeadFvBefore s6Step137HeadFvAfter s6Step137HeadFvRow 83 s6Step137HeadFvFresh
    s6Step137HeadFv_distinct s6Step137HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step137HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step137HeadFvRow.payload++s6Step137HeadFvFresh) s6Step137HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step137HeadG_Incoming : rowsOwned s6Step137HeadGBefore [s6Step137HeadGRow,s6Step137HeadFRow,s6Step137HeadGvRow,s6Step137HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step137HeadGRow,s6Step137HeadFRow,s6Step137HeadGvRow,s6Step137HeadFvRow] 0 s6Step137HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step137HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(850,862),(863,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step137HeadG_Outgoing : rowsOwned s6Step137HeadFvAfter [s6Step137HeadGOut,s6Step137HeadFOut,s6Step137HeadGvOut,s6Step137HeadFvOut] :=
  hmrRows_owned_drop s6Step137HeadFvAfter [s6Step137HeadGOut,s6Step137HeadFOut,s6Step137HeadGvOut,s6Step137HeadFvOut] 0 s6Step137HeadBank_outgoingOwned

private theorem s6Step137HeadG_distinct : (s6Step137HeadGRow.sign::s6Step137HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137HeadG_owned : (s6Step137HeadGRow.sign::s6Step137HeadGRow.payload).toFinset⊆s6Step137HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step137HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(850,862),(863,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step137HeadG_reserved : s6Step137HeadGBefore.reserve s6Step137HeadGFresh.toFinset=some s6Step137HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step137HeadGFresh,arenaWires]
  · norm_num [s6Step137HeadGBefore,s6Step137HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step137HeadGBefore s6Step137HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(850,862),(863,875),(876,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step137HeadGFresh rfl rfl
    · norm_num [s6Step137HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step137HeadG_checked : planRowResizeLog s6Step137HeadGBefore s6Step137HeadGRow 203 s6Step137HeadGFresh=
    some (s6Step137HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 869, 807, 822],777⟩,growRow 777 s6Step137HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step137HeadGBefore s6Step137HeadGAfter s6Step137HeadGRow 203 s6Step137HeadGFresh
    s6Step137HeadG_distinct s6Step137HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step137HeadG_reserved
  have rowEq : WindowRow.mk (s6Step137HeadGRow.payload++s6Step137HeadGFresh) s6Step137HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 869, 807, 822],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step137HeadGvBefore : Arena := s6Step137HeadFAfter

private theorem s6Step137HeadGv_Incoming : rowsOwned s6Step137HeadGvBefore [s6Step137HeadGvRow,s6Step137HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step137HeadGRow,s6Step137HeadFRow,s6Step137HeadGvRow,s6Step137HeadFvRow] 2 s6Step137HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step137HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step137HeadGv_Outgoing : rowsOwned s6Step137HeadFvAfter [s6Step137HeadGvOut,s6Step137HeadFvOut] :=
  hmrRows_owned_drop s6Step137HeadFvAfter [s6Step137HeadGOut,s6Step137HeadFOut,s6Step137HeadGvOut,s6Step137HeadFvOut] 2 s6Step137HeadBank_outgoingOwned

private theorem s6Step137HeadGv_distinct : (s6Step137HeadGvRow.sign::s6Step137HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step137HeadGv_owned : (s6Step137HeadGvRow.sign::s6Step137HeadGvRow.payload).toFinset⊆s6Step137HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step137HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step137HeadGv_reserved : s6Step137HeadGvBefore.reserve s6Step137HeadGvFresh.toFinset=some s6Step137HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step137HeadGvFresh,arenaWires]
  · norm_num [s6Step137HeadGvBefore,s6Step137HeadFAfter,s6Step137HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step137HeadGvAfter,s6Step137HeadGvBefore,s6Step137HeadFAfter,s6Step137HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step137HeadGv_checked : planRowResizeLog s6Step137HeadGvBefore s6Step137HeadGvRow 83 s6Step137HeadGvFresh=
    some (s6Step137HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862],775⟩,growRow 775 s6Step137HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step137HeadGvBefore s6Step137HeadGvAfter s6Step137HeadGvRow 83 s6Step137HeadGvFresh
    s6Step137HeadGv_distinct s6Step137HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step137HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step137HeadGvRow.payload++s6Step137HeadGvFresh) s6Step137HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step137HeadBank_rows : planWindowRowsLog s6Step137HeadGBefore [(s6Step137HeadGRow,203),(s6Step137HeadFRow,203),(s6Step137HeadGvRow,83),(s6Step137HeadFvRow,83)] [s6Step137HeadGFresh,s6Step137HeadFFresh,s6Step137HeadGvFresh,s6Step137HeadFvFresh]=
    some (s6Step137HeadFvAfter,[s6Step137HeadGOut,s6Step137HeadFOut,s6Step137HeadGvOut,s6Step137HeadFvOut],(growRow 777 s6Step137HeadGFresh ++ (growRow 795 s6Step137HeadFFresh ++ (growRow 775 s6Step137HeadGvFresh ++ (growRow 776 s6Step137HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step137HeadFvAfter [] []=some (s6Step137HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step137HeadFvBefore s6Step137HeadFvAfter s6Step137HeadFvAfter
    s6Step137HeadFvRow s6Step137HeadFvOut 83 s6Step137HeadFvFresh [] [] []
    (growRow 776 s6Step137HeadFvFresh) ([]) s6Step137HeadFv_Incoming s6Step137HeadFv_checked h4 s6Step137HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step137HeadGvBefore s6Step137HeadGvAfter s6Step137HeadFvAfter
    s6Step137HeadGvRow s6Step137HeadGvOut 83 s6Step137HeadGvFresh [(s6Step137HeadFvRow,83)] [s6Step137HeadFvFresh] [s6Step137HeadFvOut]
    (growRow 775 s6Step137HeadGvFresh) ((growRow 776 s6Step137HeadFvFresh ++ [])) s6Step137HeadGv_Incoming s6Step137HeadGv_checked h3 s6Step137HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step137HeadFBefore s6Step137HeadFAfter s6Step137HeadFvAfter
    s6Step137HeadFRow s6Step137HeadFOut 203 s6Step137HeadFFresh [(s6Step137HeadGvRow,83),(s6Step137HeadFvRow,83)] [s6Step137HeadGvFresh,s6Step137HeadFvFresh] [s6Step137HeadGvOut,s6Step137HeadFvOut]
    (growRow 795 s6Step137HeadFFresh) ((growRow 775 s6Step137HeadGvFresh ++ (growRow 776 s6Step137HeadFvFresh ++ []))) s6Step137HeadF_Incoming s6Step137HeadF_checked h2 s6Step137HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step137HeadGBefore s6Step137HeadGAfter s6Step137HeadFvAfter
    s6Step137HeadGRow s6Step137HeadGOut 203 s6Step137HeadGFresh [(s6Step137HeadFRow,203),(s6Step137HeadGvRow,83),(s6Step137HeadFvRow,83)] [s6Step137HeadFFresh,s6Step137HeadGvFresh,s6Step137HeadFvFresh] [s6Step137HeadFOut,s6Step137HeadGvOut,s6Step137HeadFvOut]
    (growRow 777 s6Step137HeadGFresh) ((growRow 795 s6Step137HeadFFresh ++ (growRow 775 s6Step137HeadGvFresh ++ (growRow 776 s6Step137HeadFvFresh ++ [])))) s6Step137HeadG_Incoming s6Step137HeadG_checked h1 s6Step137HeadG_Outgoing
  exact h0

private theorem s6Step137HeadBank_checked : compileHmrBankResizeLog .headroom s6Step137HeadGBefore ⟨s6Step137HeadFRow,s6Step137HeadGRow,s6Step137HeadFvRow,s6Step137HeadGvRow⟩ ⟨203,203,83,83⟩ [s6Step137HeadGFresh,s6Step137HeadFFresh,s6Step137HeadGvFresh,s6Step137HeadFvFresh]=
    some (s6Step137HeadFvAfter,⟨s6Step137HeadFOut,s6Step137HeadGOut,s6Step137HeadFvOut,s6Step137HeadGvOut⟩,(growRow 777 s6Step137HeadGFresh ++ (growRow 795 s6Step137HeadFFresh ++ (growRow 775 s6Step137HeadGvFresh ++ (growRow 776 s6Step137HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step137HeadBank_rows]
  rfl

private theorem s6Step137Front_checked : compileHmrSourceFrontLog s6Step137EntryFBefore s6Step137FrontBank 202 82 ⟨201,200,83,82⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step137FrontLog=some s6Step137FrontPlan := by
  have pairEq : s6Step137FrontPair=⟨s6Step137HeadFRow,s6Step137HeadGRow,s6Step137HeadFvRow,s6Step137HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step137FrontHead=⟨s6Step137ExitFRow,s6Step137ExitGRow,s6Step137ExitFvRow,s6Step137ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step137Add0A=s6Step137FrontHead.f.wires := by decide +kernel
  have gEq : s6Step137Add0B=s6Step137FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step137Add1A=s6Step137FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step137Add1B=s6Step137FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step137EntryFBefore s6Step137FrontBank 202 82 ⟨201,200,83,82⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step137FrontLog s6Step137FrontPlan
  · exact s6Step137Front_entry
  · exact s6Step137EntryBank_checked
  · exact s6Step137Front_sigma
  · rfl
  · exact s6Step137Front_branch
  · rfl
  · simpa only [s6Step137FrontPlan,pairEq] using s6Step137HeadBank_checked
  · simpa only [s6Step137FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step137F4_checked
  · exact s6Step137Counter_checked
  · rfl
  · simpa only [s6Step137FrontPlan,headEq] using s6Step137ExitBank_checked

private theorem s6Step137Complete_explicit_checked : compileHmrEarlyStepLog s6Step137EntryFBefore s6Step137FrontBank 202 82 ⟨201,200,83,82⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 38 s6Step137CompleteLog=some s6Step137CompletePlan := by
  let Q := s6Step137EarlyControlPlan
  have hq := s6Step137EarlyControl_plan_checked
  have fv1 : s6Step137CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step137CompleteOut.fv.payload[2]?.getD s6Step137CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step137CompleteOut.fv.payload[3]?.getD s6Step137CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step137CompleteOut.fv.payload[4]?.getD s6Step137CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step137EntryFBefore s6Step137EarlyControlArena s6Step137FrontBank 202 82 ⟨201,200,83,82⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 38 s6Step137CompleteLog s6Step137FrontPlan Q
    s6Step137Front_checked s6Step137Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step137Complete_owned s6Step137Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step137EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 850 s6Step137CompleteOut.fv.second (s6Step137CompleteOut.fv.payload[2]?.getD s6Step137CompleteOut.fv.sign) (s6Step137CompleteOut.fv.payload[3]?.getD s6Step137CompleteOut.fv.sign) (s6Step137CompleteOut.fv.payload[4]?.getD s6Step137CompleteOut.fv.sign) 879 38 s6Step137EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep137Arena : Arena := s6Step137EntryFBefore
def s6PrivateStep137Bank : WindowBank := s6Step137FrontBank
def s6PrivateStep137Spec : HmrSourceWalkStepLog := ⟨202,82,⟨201,200,83,82⟩,38,.early s6Step137CompleteLog⟩
def s6PrivateStep137Plan : HmrSourceStepPlan := .early s6Step137CompletePlan
theorem s6PrivateStep137_source : s6PrivateStep137Spec=s6ObservedLogs128[9] := rfl
theorem s6PrivateStep137_checked : compileHmrSourceStepLog s6PrivateStep137Arena s6PrivateStep137Bank
    s6PrivateStep137Spec.fgWidth s6PrivateStep137Spec.vWidth s6PrivateStep137Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 137 s6PrivateStep137Spec.need none s6PrivateStep137Spec.log=some s6PrivateStep137Plan := by
  change compileHmrSourceStepLog s6Step137EntryFBefore s6Step137FrontBank 202 82 ⟨201,200,83,82⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 137 38 none (.early s6Step137CompleteLog)=some (.early s6Step137CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 137<498)]
  rw [s6Step137Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
