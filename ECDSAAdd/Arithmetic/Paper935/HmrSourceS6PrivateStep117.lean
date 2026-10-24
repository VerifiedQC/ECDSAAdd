import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep115
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

private def s6Step117CompleteMoves : List (Wire × Wire) := [(778,466),(888,467)]

private def s6Step117EarlyControlLog : HmrEarlyControlLog := ⟨[888, 778, 880, 907, 803],[868],[879],[865, 796, 891, 903, 791, 825],[]⟩

private def s6Step117FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [868], [], []],[[879], [803], [880], [907]],[[], [], [], []]⟩,[882],[813],[865],[796],[891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 796, 891, 903]⟩

private def s6Step117CompleteLog : HmrEarlyStepLog := ⟨s6Step117FrontLog,s6Step117CompleteMoves,s6Step117EarlyControlLog⟩

private def s6Step117ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step117ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩

private def s6Step117ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],777⟩

private def s6Step117ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823],775⟩

private def s6Step117FrontOut : WindowBank := ⟨s6Step117ExitFOut,s6Step117ExitGOut,s6Step117ExitFvOut,s6Step117ExitGvOut⟩

private def s6Step117CompleteOut : WindowBank := s6Step117FrontOut.repacked s6Step117CompleteMoves

private def s6Step117EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step117EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step117EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step117EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step117EarlyControlPositiveArena,[868],s6Step117EarlyControlEqualityArena,[879],⟨⟨882,false⟩,[⟨⟨868,false⟩,879⟩]⟩⟩

private def s6Step117EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step117EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step117EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step117EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step117EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step117EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step117EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,888⟩,⟨⟨772,false⟩,778⟩,⟨⟨771,false⟩,880⟩,⟨⟨770,false⟩,907⟩,⟨⟨769,false⟩,803⟩]⟩

private def s6Step117EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step117EarlyControlZeroArena,s6Step117EarlyControlZeroPlan,s6Step117EarlyControlClassPlan,s6Step117EarlyControlFlagArena,s6Step117EarlyControlFittedArena,s6Step117EarlyControlHistoryArena,s6Step117EarlyControlSigmaArena,s6Step117EarlyControlOutputArena,s6Step117EarlyControlLog⟩

private def s6Step117CounterWork : List Wire := [865, 796, 891, 903]

private theorem s6Step117Counter_bounded : s6Step117CounterWork.toFinset⊆arenaWires := by norm_num [s6Step117CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step117HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step117CounterDuring : Arena := ⟨s6Step117HeadFvAfter.live∪s6Step117CounterWork.toFinset,Finset.union_subset s6Step117HeadFvAfter.bounded s6Step117Counter_bounded⟩

private def s6Step117EntryFFresh : List Wire := []

private def s6Step117EntryFvFresh : List Wire := []

private def s6Step117EntryGFresh : List Wire := [868]

private def s6Step117EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step117EntryGvAfter : Arena := s6Step117EntryGAfter

private def s6Step117EntryGvFresh : List Wire := []

private def s6Step117ExitFExtra : List Wire := [466, 467, 803]

private def s6Step117ExitFvExtra : List Wire := [907]

private def s6Step117ExitGExtra : List Wire := [868, 879]

private def s6Step117ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,466),(468,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step117ExitGvExtra : List Wire := [880]

private def s6Step117Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step117Add0Work : List Wire := [891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step117Add0_bounded : s6Step117Add0Work.toFinset⊆arenaWires := by
  have h : s6Step117Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step117Add0During : Arena := ⟨s6Step117Add0Arena.live∪s6Step117Add0Work.toFinset,Finset.union_subset s6Step117Add0Arena.bounded s6Step117Add0_bounded⟩

private def s6Step117Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step117Add1Work : List Wire := [891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step117Add1_bounded : s6Step117Add1Work.toFinset⊆arenaWires := by
  have h : s6Step117Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step117Add1During : Arena := ⟨s6Step117Add1Arena.live∪s6Step117Add1Work.toFinset,Finset.union_subset s6Step117Add1Arena.bounded s6Step117Add1_bounded⟩

private def s6Step117F4FlagArena : Arena := ⟨s6Step117HeadFvAfter.live∪{865},Finset.union_subset s6Step117HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step117F4Plan : HmrHybridF4Plan := ⟨s6Step117F4FlagArena,[865],s6Step117Add0Arena,[796],s6Step117Add0During,s6Step117Add0Work,s6Step117Add1During,s6Step117Add1Work⟩

private def s6Step117HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 803],795⟩

private def s6Step117HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 907],776⟩

private def s6Step117HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 868, 879],777⟩

private def s6Step117HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 880],775⟩

private def s6Step117FrontHead : WindowBank := ⟨s6Step117HeadFOut,s6Step117HeadGOut,s6Step117HeadFvOut,s6Step117HeadGvOut⟩

private def s6Step117EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step117EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩

private def s6Step117EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 868],777⟩

private def s6Step117EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823],775⟩

private def s6Step117FrontPair : WindowBank := ⟨s6Step117EntryFOut,s6Step117EntryGOut,s6Step117EntryFvOut,s6Step117EntryGvOut⟩

private def s6Step117FrontSigmaArena : Arena := ⟨s6Step117EntryGvAfter.live∪{882},Finset.union_subset s6Step117EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step117HeadFFresh : List Wire := [803]

private def s6Step117HeadFvFresh : List Wire := [907]

private def s6Step117HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step117HeadGFresh : List Wire := [879]

private def s6Step117HeadGvFresh : List Wire := [880]

private def s6Step117FrontPlan : HmrSourceFront := ⟨s6Step117EntryGvAfter,s6Step117FrontPair,(growRow 795 s6Step117EntryFFresh ++ (growRow 777 s6Step117EntryGFresh ++ (growRow 776 s6Step117EntryFvFresh ++ (growRow 775 s6Step117EntryGvFresh ++ [])))),s6Step117FrontSigmaArena,[882],s6Step117HeadGBefore,[813],
  s6Step117HeadFvAfter,s6Step117FrontHead,(growRow 777 s6Step117HeadGFresh ++ (growRow 795 s6Step117HeadFFresh ++ (growRow 775 s6Step117HeadGvFresh ++ (growRow 776 s6Step117HeadFvFresh ++ [])))),s6Step117F4Plan,s6Step117CounterDuring,s6Step117CounterWork,s6Step117ExitGvAfter,s6Step117FrontOut,(shrinkRow 777 s6Step117ExitGExtra ++ (shrinkRow 795 s6Step117ExitFExtra ++ (shrinkRow 776 s6Step117ExitFvExtra ++ (shrinkRow 775 s6Step117ExitGvExtra ++ []))))⟩

private def s6Step117CompletePlan : HmrEarlyStepPlan := ⟨s6Step117FrontPlan,s6Step117EarlyControlArena,s6Step117EarlyControlPlan,s6Step117CompleteMoves⟩

private theorem s6Step117Complete_apart : List.Disjoint (s6Step117CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [882, 813, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step117CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[882, 813, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step117Complete_owned : (s6Step117CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step117EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step117EarlyControlArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step117CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,467),(468,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step117CompleteRelocationMove0Borrowed : Arena := ⟨s6Step117ExitGvAfter.live∪{466},Finset.union_subset s6Step117ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step117CompleteRelocationMove1Borrowed : Arena := ⟨s6Step117CompleteRelocationMove0After.live∪{467},Finset.union_subset s6Step117CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step117CompleteRelocation_move0_owned : 778∈s6Step117ExitGvAfter.live := by norm_num [s6Step117ExitGvAfter,arenaWires]

private theorem s6Step117CompleteRelocation_move0_reserve : s6Step117ExitGvAfter.reserve {466}=some s6Step117CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step117ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step117CompleteRelocation_move0_retire : s6Step117CompleteRelocationMove0Borrowed.retireSet {778}=s6Step117CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step117CompleteRelocationMove0Borrowed s6Step117CompleteRelocationMove0After {778}
  change s6Step117CompleteRelocationMove0After.live=(s6Step117ExitGvAfter.live∪{466})\{778}
  apply hmrArena_update_of_filter_check s6Step117ExitGvAfter s6Step117CompleteRelocationMove0After (fun q => ([(0,466),(468,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,467),(468,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [466] [778] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step117CompleteRelocation_move1_owned : 888∈s6Step117CompleteRelocationMove0After.live := by norm_num [s6Step117CompleteRelocationMove0After,arenaWires]

private theorem s6Step117CompleteRelocation_move1_reserve : s6Step117CompleteRelocationMove0After.reserve {467}=some s6Step117CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step117CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step117CompleteRelocation_move1_retire : s6Step117CompleteRelocationMove1Borrowed.retireSet {888}=s6Step117EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step117CompleteRelocationMove1Borrowed s6Step117EarlyControlArena {888}
  change s6Step117EarlyControlArena.live=(s6Step117CompleteRelocationMove0After.live∪{467})\{888}
  apply hmrArena_update_of_filter_check s6Step117CompleteRelocationMove0After s6Step117EarlyControlArena (fun q => ([(0,467),(468,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [467] [888] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step117CompleteRelocation_checked : s6Step117ExitGvAfter.checkRepack [(778,466),(888,467)]=some s6Step117EarlyControlArena := by
  have tail2 : s6Step117EarlyControlArena.checkRepack []=some s6Step117EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step117CompleteRelocationMove0After s6Step117CompleteRelocationMove1Borrowed s6Step117EarlyControlArena s6Step117EarlyControlArena 888 467 []
    s6Step117CompleteRelocation_move1_owned s6Step117CompleteRelocation_move1_reserve s6Step117CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step117ExitGvAfter s6Step117CompleteRelocationMove0Borrowed s6Step117CompleteRelocationMove0After s6Step117EarlyControlArena 778 466 [(888,467)]
    s6Step117CompleteRelocation_move0_owned s6Step117CompleteRelocation_move0_reserve s6Step117CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step117Complete_repack : s6Step117ExitGvAfter.checkRepack s6Step117CompleteMoves=some s6Step117EarlyControlArena := by
  simpa only [s6Step117CompleteMoves] using s6Step117CompleteRelocation_checked

private theorem s6Step117EarlyControl_branchOwned : ([813] : List Wire).toFinset⊆s6Step117EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step117EarlyControlSigmaArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step117EarlyControl_branch : compileHmrBranchRetirement s6Step117EarlyControlSigmaArena 813=some s6Step117EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step117EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step117EarlyControlSigmaArena s6Step117EarlyControlOutputArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [813] rfl rfl
    decide +kernel

private theorem s6Step117EarlyControl_classEqualityBorrow : s6Step117EarlyControlPositiveArena.checkBorrow (([882, 868] : List Wire).length-1) s6Step117EarlyControlLog.classWork=some s6Step117EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step117EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step117EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step117EarlyControlEqualityArena,s6Step117EarlyControlPositiveArena,s6Step117EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step117EarlyControl_classEqualityOwned : ([882, 868] : List Wire).toFinset⊆s6Step117EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step117EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117EarlyControl_classEquality : compileHmrEqualityLog s6Step117EarlyControlPositiveArena [882, 868] 0 s6Step117EarlyControlLog.classWork=some (s6Step117EarlyControlEqualityArena,s6Step117EarlyControlLog.classWork,s6Step117EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step117EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step117EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step117EarlyControl_classOwned : ([769, 803, 882] : List Wire).toFinset⊆s6Step117EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step117EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117EarlyControl_positiveBorrow : s6Step117EarlyControlZeroArena.checkBorrow (1) s6Step117EarlyControlLog.positiveWork=some s6Step117EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step117EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step117EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step117EarlyControlPositiveArena,s6Step117EarlyControlZeroArena,s6Step117EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step117EarlyControl_class : compileHmrSourceClassLog s6Step117EarlyControlZeroArena false 769 s6Step117EarlyControlZeroPlan.top 0 882 s6Step117EarlyControlLog.positiveWork s6Step117EarlyControlLog.classWork=some s6Step117EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step117EarlyControlClassPlan s6Step117EarlyControlZeroArena false 769 s6Step117EarlyControlZeroPlan.top 0 882
  constructor
  · decide +kernel
  · exact s6Step117EarlyControl_classOwned
  · exact s6Step117EarlyControl_positiveBorrow
  · exact s6Step117EarlyControl_classEquality

private theorem s6Step117EarlyControl_entryRecordOwned : ([813, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step117EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step117EarlyControlArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step117EarlyControl_entrySigmaOwned : ([882, 254] : List Wire).toFinset⊆s6Step117EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step117EarlyControlArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step117EarlyControl_fitBorrow : s6Step117EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step117EarlyControlLog.recordFresh=some s6Step117EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step117EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step117EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step117EarlyControlFittedArena,s6Step117EarlyControlFlagArena,s6Step117EarlyControlLog,arenaWires]

private theorem s6Step117EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step117EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step117EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117EarlyControl_fit : compileHmrRecordGrowLog s6Step117EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step117EarlyControlLog.recordFresh=some s6Step117EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step117EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step117EarlyControl_fitBorrow

private theorem s6Step117EarlyControl_flagsBorrow : s6Step117EarlyControlEqualityArena.checkBorrow (6) s6Step117EarlyControlLog.flagWork=some s6Step117EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step117EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step117EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step117EarlyControlFlagArena,s6Step117EarlyControlEqualityArena,s6Step117EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step117EarlyControl_flagsOwned : ([879, 253, 252, 251] : List Wire).toFinset⊆s6Step117EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step117EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117EarlyControl_flags : compileHmrFlagsLog s6Step117EarlyControlClassPlan.equalityArena s6Step117EarlyControlClassPlan.equality.top 253 252 251 s6Step117EarlyControlLog.flagWork=some s6Step117EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step117EarlyControl_flagsOwned⟩
  · exact s6Step117EarlyControl_flagsBorrow

private theorem s6Step117EarlyControl_historyBorrow : s6Step117EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step117EarlyControlLog.recordFresh=some s6Step117EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step117EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step117EarlyControlArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step117EarlyControlArena s6Step117EarlyControlHistoryArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step117EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step117EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step117EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step117EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step117EarlyControlArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step117EarlyControl_history : compileHmrRecordGrowLog s6Step117EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step117EarlyControlLog.recordFresh=some s6Step117EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step117EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step117EarlyControl_historyBorrow

private theorem s6Step117EarlyControl_sigmaOwned : ([254, 882] : List Wire).toFinset⊆s6Step117EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step117EarlyControlHistoryArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step117EarlyControl_sigmaReleaseOwned : ([882] : List Wire).toFinset⊆s6Step117EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step117EarlyControlHistoryArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step117EarlyControl_sigmaRelease : s6Step117EarlyControlHistoryArena.release {882} (fun _ => false)=some s6Step117EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step117EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step117EarlyControlHistoryArena s6Step117EarlyControlSigmaArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [882] rfl rfl
    decide +kernel

private theorem s6Step117EarlyControl_sigma : compileHmrSigmaDropLog s6Step117EarlyControlHistoryArena false 0 0 254 882 []=some s6Step117EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step117EarlyControl_sigmaOwned⟩
  · exact s6Step117EarlyControl_sigmaRelease

private theorem s6Step117EarlyControl_zeroBorrow : s6Step117EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step117EarlyControlLog.zeroWork=some s6Step117EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step117EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step117EarlyControlArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step117EarlyControlArena s6Step117EarlyControlZeroArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step117EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step117EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step117EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step117EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step117EarlyControlArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step117EarlyControl_zero : compileHmrEqualityLog s6Step117EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step117EarlyControlLog.zeroWork=some (s6Step117EarlyControlZeroArena,s6Step117EarlyControlLog.zeroWork,s6Step117EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step117EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step117EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step117EarlyControl_logged : s6Step117EarlyControlPlan.Logged s6Step117EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 882 254 253 252 251 813 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step117EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step117EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step117EarlyControl_zero
  · exact s6Step117EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step117EarlyControl_flags
  · exact s6Step117EarlyControl_fit
  · exact s6Step117EarlyControl_history
  · exact s6Step117EarlyControl_sigma
  · exact s6Step117EarlyControl_branch

private theorem s6Step117EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step117EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 882 254 253 252 251 813 37 s6Step117EarlyControlLog=some s6Step117EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step117EarlyControlPlan s6Step117EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 882 254 253 252 251 813 37 s6Step117EarlyControl_logged

private def s6Step117EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step117EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step117EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩

private def s6Step117EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],777⟩

private def s6Step117EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823],775⟩

private def s6Step117FrontBank : WindowBank := ⟨s6Step117EntryFRow,s6Step117EntryGRow,s6Step117EntryFvRow,s6Step117EntryGvRow⟩

private def s6Step117Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 803, 795]

private def s6Step117Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 868, 879, 777]

private def s6Step117Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 907, 776]

private def s6Step117Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 880, 775]

private theorem s6Step117Counter_apart : Disjoint s6Step117HeadFvAfter.live s6Step117CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step117HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117Counter_borrowed : s6Step117HeadFvAfter.checkBorrow 4 s6Step117CounterWork=some s6Step117CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step117HeadFvAfter s6Step117CounterDuring s6Step117CounterWork.toFinset s6Step117Counter_bounded s6Step117Counter_apart rfl

private theorem s6Step117Counter_owned : (882::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step117HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step117HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117Counter_checked : compileHmrCounterStepLog s6Step117HeadFvAfter true 882 [774, 773, 772, 771, 770, 769] s6Step117CounterWork=some s6Step117CounterDuring := by
  have owned : ∀q∈882::[774, 773, 772, 771, 770, 769],q∈s6Step117HeadFvAfter.live := fun q hq => s6Step117Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step117Counter_borrowed

private def s6Step117EntryFAfter : Arena := s6Step117EntryFBefore

private theorem s6Step117EntryBank_incomingDistinct : ([s6Step117EntryFRow,s6Step117EntryGRow,s6Step117EntryFvRow,s6Step117EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117EntryF_Incoming : rowsOwned s6Step117EntryFBefore [s6Step117EntryFRow,s6Step117EntryGRow,s6Step117EntryFvRow,s6Step117EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step117EntryFRow,s6Step117EntryGRow,s6Step117EntryFvRow,s6Step117EntryGvRow] 0 s6Step117EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step117EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step117EntryBank_outgoingOwned : rowsOwned s6Step117EntryGvAfter [s6Step117EntryFOut,s6Step117EntryGOut,s6Step117EntryFvOut,s6Step117EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step117EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step117EntryF_Outgoing : rowsOwned s6Step117EntryGvAfter [s6Step117EntryFOut,s6Step117EntryGOut,s6Step117EntryFvOut,s6Step117EntryGvOut] :=
  hmrRows_owned_drop s6Step117EntryGvAfter [s6Step117EntryFOut,s6Step117EntryGOut,s6Step117EntryFvOut,s6Step117EntryGvOut] 0 s6Step117EntryBank_outgoingOwned

private theorem s6Step117EntryF_distinct : (s6Step117EntryFRow.sign::s6Step117EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117EntryF_owned : (s6Step117EntryFRow.sign::s6Step117EntryFRow.payload).toFinset⊆s6Step117EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step117EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step117EntryF_reserved : s6Step117EntryFBefore.reserve s6Step117EntryFFresh.toFinset=some s6Step117EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step117EntryFFresh,arenaWires]
  · norm_num [s6Step117EntryFBefore,s6Step117EntryFFresh,arenaWires]
  · simp only [s6Step117EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step117EntryF_checked : planRowResizeLog s6Step117EntryFBefore s6Step117EntryFRow 212 s6Step117EntryFFresh=
    some (s6Step117EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩,growRow 795 s6Step117EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step117EntryFBefore s6Step117EntryFAfter s6Step117EntryFRow 212 s6Step117EntryFFresh
    s6Step117EntryF_distinct s6Step117EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step117EntryF_reserved
  have rowEq : WindowRow.mk (s6Step117EntryFRow.payload++s6Step117EntryFFresh) s6Step117EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step117EntryFvAfter : Arena := s6Step117EntryGAfter

private def s6Step117EntryFvBefore : Arena := s6Step117EntryGAfter

private theorem s6Step117EntryFv_Incoming : rowsOwned s6Step117EntryFvBefore [s6Step117EntryFvRow,s6Step117EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step117EntryFRow,s6Step117EntryGRow,s6Step117EntryFvRow,s6Step117EntryGvRow] 2 s6Step117EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step117EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step117EntryFv_Outgoing : rowsOwned s6Step117EntryGvAfter [s6Step117EntryFvOut,s6Step117EntryGvOut] :=
  hmrRows_owned_drop s6Step117EntryGvAfter [s6Step117EntryFOut,s6Step117EntryGOut,s6Step117EntryFvOut,s6Step117EntryGvOut] 2 s6Step117EntryBank_outgoingOwned

private theorem s6Step117EntryFv_distinct : (s6Step117EntryFvRow.sign::s6Step117EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117EntryFv_owned : (s6Step117EntryFvRow.sign::s6Step117EntryFvRow.payload).toFinset⊆s6Step117EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step117EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117EntryFv_reserved : s6Step117EntryFvBefore.reserve s6Step117EntryFvFresh.toFinset=some s6Step117EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step117EntryFvFresh,arenaWires]
  · norm_num [s6Step117EntryFvBefore,s6Step117EntryGAfter,s6Step117EntryFvFresh,arenaWires]
  · simp only [s6Step117EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step117EntryFv_checked : planRowResizeLog s6Step117EntryFvBefore s6Step117EntryFvRow 72 s6Step117EntryFvFresh=
    some (s6Step117EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩,growRow 776 s6Step117EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step117EntryFvBefore s6Step117EntryFvAfter s6Step117EntryFvRow 72 s6Step117EntryFvFresh
    s6Step117EntryFv_distinct s6Step117EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step117EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step117EntryFvRow.payload++s6Step117EntryFvFresh) s6Step117EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step117EntryGBefore : Arena := s6Step117EntryFBefore

private theorem s6Step117EntryG_Incoming : rowsOwned s6Step117EntryGBefore [s6Step117EntryGRow,s6Step117EntryFvRow,s6Step117EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step117EntryFRow,s6Step117EntryGRow,s6Step117EntryFvRow,s6Step117EntryGvRow] 1 s6Step117EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step117EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step117EntryG_Outgoing : rowsOwned s6Step117EntryGvAfter [s6Step117EntryGOut,s6Step117EntryFvOut,s6Step117EntryGvOut] :=
  hmrRows_owned_drop s6Step117EntryGvAfter [s6Step117EntryFOut,s6Step117EntryGOut,s6Step117EntryFvOut,s6Step117EntryGvOut] 1 s6Step117EntryBank_outgoingOwned

private theorem s6Step117EntryG_distinct : (s6Step117EntryGRow.sign::s6Step117EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117EntryG_owned : (s6Step117EntryGRow.sign::s6Step117EntryGRow.payload).toFinset⊆s6Step117EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step117EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step117EntryG_reserved : s6Step117EntryGBefore.reserve s6Step117EntryGFresh.toFinset=some s6Step117EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step117EntryGFresh,arenaWires]
  · norm_num [s6Step117EntryGBefore,s6Step117EntryFBefore,s6Step117EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step117EntryGBefore s6Step117EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step117EntryGFresh rfl rfl
    · norm_num [s6Step117EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step117EntryG_checked : planRowResizeLog s6Step117EntryGBefore s6Step117EntryGRow 212 s6Step117EntryGFresh=
    some (s6Step117EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 868],777⟩,growRow 777 s6Step117EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step117EntryGBefore s6Step117EntryGAfter s6Step117EntryGRow 212 s6Step117EntryGFresh
    s6Step117EntryG_distinct s6Step117EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step117EntryG_reserved
  have rowEq : WindowRow.mk (s6Step117EntryGRow.payload++s6Step117EntryGFresh) s6Step117EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 868],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step117EntryGvBefore : Arena := s6Step117EntryGAfter

private theorem s6Step117EntryGv_Incoming : rowsOwned s6Step117EntryGvBefore [s6Step117EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step117EntryFRow,s6Step117EntryGRow,s6Step117EntryFvRow,s6Step117EntryGvRow] 3 s6Step117EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step117EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step117EntryGv_Outgoing : rowsOwned s6Step117EntryGvAfter [s6Step117EntryGvOut] :=
  hmrRows_owned_drop s6Step117EntryGvAfter [s6Step117EntryFOut,s6Step117EntryGOut,s6Step117EntryFvOut,s6Step117EntryGvOut] 3 s6Step117EntryBank_outgoingOwned

private theorem s6Step117EntryGv_distinct : (s6Step117EntryGvRow.sign::s6Step117EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117EntryGv_owned : (s6Step117EntryGvRow.sign::s6Step117EntryGvRow.payload).toFinset⊆s6Step117EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step117EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117EntryGv_reserved : s6Step117EntryGvBefore.reserve s6Step117EntryGvFresh.toFinset=some s6Step117EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step117EntryGvFresh,arenaWires]
  · norm_num [s6Step117EntryGvBefore,s6Step117EntryGAfter,s6Step117EntryGvFresh,arenaWires]
  · simp only [s6Step117EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step117EntryGv_checked : planRowResizeLog s6Step117EntryGvBefore s6Step117EntryGvRow 72 s6Step117EntryGvFresh=
    some (s6Step117EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823],775⟩,growRow 775 s6Step117EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step117EntryGvBefore s6Step117EntryGvAfter s6Step117EntryGvRow 72 s6Step117EntryGvFresh
    s6Step117EntryGv_distinct s6Step117EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step117EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step117EntryGvRow.payload++s6Step117EntryGvFresh) s6Step117EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step117EntryBank_rows : planWindowRowsLog s6Step117EntryFBefore [(s6Step117EntryFRow,212),(s6Step117EntryGRow,212),(s6Step117EntryFvRow,72),(s6Step117EntryGvRow,72)] [s6Step117EntryFFresh,s6Step117EntryGFresh,s6Step117EntryFvFresh,s6Step117EntryGvFresh]=
    some (s6Step117EntryGvAfter,[s6Step117EntryFOut,s6Step117EntryGOut,s6Step117EntryFvOut,s6Step117EntryGvOut],(growRow 795 s6Step117EntryFFresh ++ (growRow 777 s6Step117EntryGFresh ++ (growRow 776 s6Step117EntryFvFresh ++ (growRow 775 s6Step117EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step117EntryGvAfter [] []=some (s6Step117EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step117EntryGvBefore s6Step117EntryGvAfter s6Step117EntryGvAfter
    s6Step117EntryGvRow s6Step117EntryGvOut 72 s6Step117EntryGvFresh [] [] []
    (growRow 775 s6Step117EntryGvFresh) ([]) s6Step117EntryGv_Incoming s6Step117EntryGv_checked h4 s6Step117EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step117EntryFvBefore s6Step117EntryFvAfter s6Step117EntryGvAfter
    s6Step117EntryFvRow s6Step117EntryFvOut 72 s6Step117EntryFvFresh [(s6Step117EntryGvRow,72)] [s6Step117EntryGvFresh] [s6Step117EntryGvOut]
    (growRow 776 s6Step117EntryFvFresh) ((growRow 775 s6Step117EntryGvFresh ++ [])) s6Step117EntryFv_Incoming s6Step117EntryFv_checked h3 s6Step117EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step117EntryGBefore s6Step117EntryGAfter s6Step117EntryGvAfter
    s6Step117EntryGRow s6Step117EntryGOut 212 s6Step117EntryGFresh [(s6Step117EntryFvRow,72),(s6Step117EntryGvRow,72)] [s6Step117EntryFvFresh,s6Step117EntryGvFresh] [s6Step117EntryFvOut,s6Step117EntryGvOut]
    (growRow 777 s6Step117EntryGFresh) ((growRow 776 s6Step117EntryFvFresh ++ (growRow 775 s6Step117EntryGvFresh ++ []))) s6Step117EntryG_Incoming s6Step117EntryG_checked h2 s6Step117EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step117EntryFBefore s6Step117EntryFAfter s6Step117EntryGvAfter
    s6Step117EntryFRow s6Step117EntryFOut 212 s6Step117EntryFFresh [(s6Step117EntryGRow,212),(s6Step117EntryFvRow,72),(s6Step117EntryGvRow,72)] [s6Step117EntryGFresh,s6Step117EntryFvFresh,s6Step117EntryGvFresh] [s6Step117EntryGOut,s6Step117EntryFvOut,s6Step117EntryGvOut]
    (growRow 795 s6Step117EntryFFresh) ((growRow 777 s6Step117EntryGFresh ++ (growRow 776 s6Step117EntryFvFresh ++ (growRow 775 s6Step117EntryGvFresh ++ [])))) s6Step117EntryF_Incoming s6Step117EntryF_checked h1 s6Step117EntryF_Outgoing
  exact h0

private theorem s6Step117EntryBank_checked : compileHmrBankResizeLog .entry s6Step117EntryFBefore ⟨s6Step117EntryFRow,s6Step117EntryGRow,s6Step117EntryFvRow,s6Step117EntryGvRow⟩ ⟨212,212,72,72⟩ [s6Step117EntryFFresh,s6Step117EntryGFresh,s6Step117EntryFvFresh,s6Step117EntryGvFresh]=
    some (s6Step117EntryGvAfter,⟨s6Step117EntryFOut,s6Step117EntryGOut,s6Step117EntryFvOut,s6Step117EntryGvOut⟩,(growRow 795 s6Step117EntryFFresh ++ (growRow 777 s6Step117EntryGFresh ++ (growRow 776 s6Step117EntryFvFresh ++ (growRow 775 s6Step117EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step117EntryBank_rows]
  rfl

private def s6Step117ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,466),(468,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step117ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step117ExitFBefore : Arena := s6Step117ExitGAfter

private def s6Step117ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 803],795⟩

private def s6Step117ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 907],776⟩

private def s6Step117ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 868, 879],777⟩

private def s6Step117ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 880],775⟩

private theorem s6Step117ExitBank_incomingDistinct : ([s6Step117ExitGRow,s6Step117ExitFRow,s6Step117ExitFvRow,s6Step117ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117ExitF_Incoming : rowsOwned s6Step117ExitFBefore [s6Step117ExitFRow,s6Step117ExitFvRow,s6Step117ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step117ExitGRow,s6Step117ExitFRow,s6Step117ExitFvRow,s6Step117ExitGvRow] 1 s6Step117ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step117ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step117ExitBank_outgoingOwned : rowsOwned s6Step117ExitGvAfter [s6Step117ExitGOut,s6Step117ExitFOut,s6Step117ExitFvOut,s6Step117ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step117ExitGvAfter (fun q => ([(0,466),(468,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step117ExitF_Outgoing : rowsOwned s6Step117ExitGvAfter [s6Step117ExitFOut,s6Step117ExitFvOut,s6Step117ExitGvOut] :=
  hmrRows_owned_drop s6Step117ExitGvAfter [s6Step117ExitGOut,s6Step117ExitFOut,s6Step117ExitFvOut,s6Step117ExitGvOut] 1 s6Step117ExitBank_outgoingOwned

private theorem s6Step117ExitF_distinct : (s6Step117ExitFRow.sign::s6Step117ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117ExitF_owned : (s6Step117ExitFRow.sign::s6Step117ExitFRow.payload).toFinset⊆s6Step117ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step117ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117ExitF_retired : s6Step117ExitFBefore.retireSet s6Step117ExitFExtra.toFinset=s6Step117ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step117ExitFBefore s6Step117ExitFAfter s6Step117ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step117ExitFBefore s6Step117ExitFAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,466),(468,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step117ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step117ExitF_checked : planRowResizeLog s6Step117ExitFBefore s6Step117ExitFRow 210 []=
    some (s6Step117ExitFAfter,s6Step117ExitFOut,shrinkRow 795 s6Step117ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step117ExitFBefore s6Step117ExitFRow 210 s6Step117ExitF_distinct s6Step117ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step117ExitFRow.payload.take 210) s6Step117ExitFRow.sign=s6Step117ExitFOut := by decide +kernel
  have hi : s6Step117ExitFRow.payload.drop 210=s6Step117ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step117ExitF_retired] at result
  exact result

private def s6Step117ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,466),(468,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step117ExitFvBefore : Arena := s6Step117ExitFAfter

private theorem s6Step117ExitFv_Incoming : rowsOwned s6Step117ExitFvBefore [s6Step117ExitFvRow,s6Step117ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step117ExitGRow,s6Step117ExitFRow,s6Step117ExitFvRow,s6Step117ExitGvRow] 2 s6Step117ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step117ExitFvBefore (fun q => ([(0,466),(468,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step117ExitFv_Outgoing : rowsOwned s6Step117ExitGvAfter [s6Step117ExitFvOut,s6Step117ExitGvOut] :=
  hmrRows_owned_drop s6Step117ExitGvAfter [s6Step117ExitGOut,s6Step117ExitFOut,s6Step117ExitFvOut,s6Step117ExitGvOut] 2 s6Step117ExitBank_outgoingOwned

private theorem s6Step117ExitFv_distinct : (s6Step117ExitFvRow.sign::s6Step117ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117ExitFv_owned : (s6Step117ExitFvRow.sign::s6Step117ExitFvRow.payload).toFinset⊆s6Step117ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step117ExitFvBefore (fun q => ([(0,466),(468,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step117ExitFv_retired : s6Step117ExitFvBefore.retireSet s6Step117ExitFvExtra.toFinset=s6Step117ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step117ExitFvBefore s6Step117ExitFvAfter s6Step117ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step117ExitFvBefore s6Step117ExitFvAfter (fun q => ([(0,466),(468,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,466),(468,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step117ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step117ExitFv_checked : planRowResizeLog s6Step117ExitFvBefore s6Step117ExitFvRow 72 []=
    some (s6Step117ExitFvAfter,s6Step117ExitFvOut,shrinkRow 776 s6Step117ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step117ExitFvBefore s6Step117ExitFvRow 72 s6Step117ExitFv_distinct s6Step117ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step117ExitFvRow.payload.take 72) s6Step117ExitFvRow.sign=s6Step117ExitFvOut := by decide +kernel
  have hi : s6Step117ExitFvRow.payload.drop 72=s6Step117ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step117ExitFv_retired] at result
  exact result

private def s6Step117ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step117ExitG_Incoming : rowsOwned s6Step117ExitGBefore [s6Step117ExitGRow,s6Step117ExitFRow,s6Step117ExitFvRow,s6Step117ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step117ExitGRow,s6Step117ExitFRow,s6Step117ExitFvRow,s6Step117ExitGvRow] 0 s6Step117ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step117ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step117ExitG_Outgoing : rowsOwned s6Step117ExitGvAfter [s6Step117ExitGOut,s6Step117ExitFOut,s6Step117ExitFvOut,s6Step117ExitGvOut] :=
  hmrRows_owned_drop s6Step117ExitGvAfter [s6Step117ExitGOut,s6Step117ExitFOut,s6Step117ExitFvOut,s6Step117ExitGvOut] 0 s6Step117ExitBank_outgoingOwned

private theorem s6Step117ExitG_distinct : (s6Step117ExitGRow.sign::s6Step117ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117ExitG_owned : (s6Step117ExitGRow.sign::s6Step117ExitGRow.payload).toFinset⊆s6Step117ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step117ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117ExitG_retired : s6Step117ExitGBefore.retireSet s6Step117ExitGExtra.toFinset=s6Step117ExitGAfter := by
  unfold Arena.retireSet s6Step117ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step117ExitGBefore,s6Step117ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step117ExitG_checked : planRowResizeLog s6Step117ExitGBefore s6Step117ExitGRow 211 []=
    some (s6Step117ExitGAfter,s6Step117ExitGOut,shrinkRow 777 s6Step117ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step117ExitGBefore s6Step117ExitGRow 211 s6Step117ExitG_distinct s6Step117ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step117ExitGRow.payload.take 211) s6Step117ExitGRow.sign=s6Step117ExitGOut := by decide +kernel
  have hi : s6Step117ExitGRow.payload.drop 211=s6Step117ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step117ExitG_retired] at result
  exact result

private def s6Step117ExitGvBefore : Arena := s6Step117ExitFvAfter

private theorem s6Step117ExitGv_Incoming : rowsOwned s6Step117ExitGvBefore [s6Step117ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step117ExitGRow,s6Step117ExitFRow,s6Step117ExitFvRow,s6Step117ExitGvRow] 3 s6Step117ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step117ExitGvBefore (fun q => ([(0,466),(468,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step117ExitGv_Outgoing : rowsOwned s6Step117ExitGvAfter [s6Step117ExitGvOut] :=
  hmrRows_owned_drop s6Step117ExitGvAfter [s6Step117ExitGOut,s6Step117ExitFOut,s6Step117ExitFvOut,s6Step117ExitGvOut] 3 s6Step117ExitBank_outgoingOwned

private theorem s6Step117ExitGv_distinct : (s6Step117ExitGvRow.sign::s6Step117ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117ExitGv_owned : (s6Step117ExitGvRow.sign::s6Step117ExitGvRow.payload).toFinset⊆s6Step117ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step117ExitGvBefore (fun q => ([(0,466),(468,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step117ExitGv_retired : s6Step117ExitGvBefore.retireSet s6Step117ExitGvExtra.toFinset=s6Step117ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step117ExitGvBefore s6Step117ExitGvAfter s6Step117ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step117ExitGvBefore s6Step117ExitGvAfter (fun q => ([(0,466),(468,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,466),(468,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step117ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step117ExitGv_checked : planRowResizeLog s6Step117ExitGvBefore s6Step117ExitGvRow 72 []=
    some (s6Step117ExitGvAfter,s6Step117ExitGvOut,shrinkRow 775 s6Step117ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step117ExitGvBefore s6Step117ExitGvRow 72 s6Step117ExitGv_distinct s6Step117ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step117ExitGvRow.payload.take 72) s6Step117ExitGvRow.sign=s6Step117ExitGvOut := by decide +kernel
  have hi : s6Step117ExitGvRow.payload.drop 72=s6Step117ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step117ExitGv_retired] at result
  exact result

private theorem s6Step117ExitBank_rows : planWindowRowsLog s6Step117ExitGBefore [(s6Step117ExitGRow,211),(s6Step117ExitFRow,210),(s6Step117ExitFvRow,72),(s6Step117ExitGvRow,72)] [[],[],[],[]]=
    some (s6Step117ExitGvAfter,[s6Step117ExitGOut,s6Step117ExitFOut,s6Step117ExitFvOut,s6Step117ExitGvOut],(shrinkRow 777 s6Step117ExitGExtra ++ (shrinkRow 795 s6Step117ExitFExtra ++ (shrinkRow 776 s6Step117ExitFvExtra ++ (shrinkRow 775 s6Step117ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step117ExitGvAfter [] []=some (s6Step117ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step117ExitGvBefore s6Step117ExitGvAfter s6Step117ExitGvAfter
    s6Step117ExitGvRow s6Step117ExitGvOut 72 [] [] [] []
    (shrinkRow 775 s6Step117ExitGvExtra) ([]) s6Step117ExitGv_Incoming s6Step117ExitGv_checked h4 s6Step117ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step117ExitFvBefore s6Step117ExitFvAfter s6Step117ExitGvAfter
    s6Step117ExitFvRow s6Step117ExitFvOut 72 [] [(s6Step117ExitGvRow,72)] [[]] [s6Step117ExitGvOut]
    (shrinkRow 776 s6Step117ExitFvExtra) ((shrinkRow 775 s6Step117ExitGvExtra ++ [])) s6Step117ExitFv_Incoming s6Step117ExitFv_checked h3 s6Step117ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step117ExitFBefore s6Step117ExitFAfter s6Step117ExitGvAfter
    s6Step117ExitFRow s6Step117ExitFOut 210 [] [(s6Step117ExitFvRow,72),(s6Step117ExitGvRow,72)] [[],[]] [s6Step117ExitFvOut,s6Step117ExitGvOut]
    (shrinkRow 795 s6Step117ExitFExtra) ((shrinkRow 776 s6Step117ExitFvExtra ++ (shrinkRow 775 s6Step117ExitGvExtra ++ []))) s6Step117ExitF_Incoming s6Step117ExitF_checked h2 s6Step117ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step117ExitGBefore s6Step117ExitGAfter s6Step117ExitGvAfter
    s6Step117ExitGRow s6Step117ExitGOut 211 [] [(s6Step117ExitFRow,210),(s6Step117ExitFvRow,72),(s6Step117ExitGvRow,72)] [[],[],[]] [s6Step117ExitFOut,s6Step117ExitFvOut,s6Step117ExitGvOut]
    (shrinkRow 777 s6Step117ExitGExtra) ((shrinkRow 795 s6Step117ExitFExtra ++ (shrinkRow 776 s6Step117ExitFvExtra ++ (shrinkRow 775 s6Step117ExitGvExtra ++ [])))) s6Step117ExitG_Incoming s6Step117ExitG_checked h1 s6Step117ExitG_Outgoing
  exact h0

private theorem s6Step117ExitBank_checked : compileHmrBankResizeLog .exit s6Step117ExitGBefore ⟨s6Step117ExitFRow,s6Step117ExitGRow,s6Step117ExitFvRow,s6Step117ExitGvRow⟩ ⟨210,211,72,72⟩ [[],[],[],[]]=
    some (s6Step117ExitGvAfter,⟨s6Step117ExitFOut,s6Step117ExitGOut,s6Step117ExitFvOut,s6Step117ExitGvOut⟩,(shrinkRow 777 s6Step117ExitGExtra ++ (shrinkRow 795 s6Step117ExitFExtra ++ (shrinkRow 776 s6Step117ExitFvExtra ++ (shrinkRow 775 s6Step117ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step117ExitBank_rows]
  rfl

private theorem s6Step117Add0_apart : Disjoint s6Step117Add0Arena.live s6Step117Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step117Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117Add0_card : s6Step117Add0Arena.live.card=879 := by
  decide +kernel

private theorem s6Step117Add0_borrowed : s6Step117Add0Arena.checkBorrow (hmrHybridCount s6Step117Add0Arena s6Step117Add0B.length) s6Step117Add0Work=some s6Step117Add0During := by
  have len : s6Step117Add0Work.length=hmrHybridCount s6Step117Add0Arena s6Step117Add0B.length := by
    rw [hmrHybridCount,s6Step117Add0_card]
    decide +kernel
  have nd : s6Step117Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step117Add0Arena s6Step117Add0During s6Step117Add0Work.toFinset s6Step117Add0_bounded s6Step117Add0_apart rfl

private theorem s6Step117Add0_distinct : (865::813::796::(s6Step117Add0A++s6Step117Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117Add0_owned : (865::813::796::(s6Step117Add0A++s6Step117Add0B)).toFinset⊆s6Step117Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step117Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117Add0_checked : compileHmrHybridCinLog s6Step117Add0Arena 813 865 796 s6Step117Add0A s6Step117Add0B s6Step117Add0Work=some s6Step117Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step117Add0Arena s6Step117Add0During 813 865 796 s6Step117Add0A s6Step117Add0B s6Step117Add0Work
    (by decide +kernel) (by decide +kernel) s6Step117Add0_distinct
    (fun q hq => s6Step117Add0_owned (List.mem_toFinset.mpr hq)) s6Step117Add0_borrowed

private theorem s6Step117Add1_apart : Disjoint s6Step117Add1Arena.live s6Step117Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step117Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117Add1_card : s6Step117Add1Arena.live.card=879 := by
  decide +kernel

private theorem s6Step117Add1_borrowed : s6Step117Add1Arena.checkBorrow (hmrHybridCount s6Step117Add1Arena s6Step117Add1B.length) s6Step117Add1Work=some s6Step117Add1During := by
  have len : s6Step117Add1Work.length=hmrHybridCount s6Step117Add1Arena s6Step117Add1B.length := by
    rw [hmrHybridCount,s6Step117Add1_card]
    decide +kernel
  have nd : s6Step117Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step117Add1Arena s6Step117Add1During s6Step117Add1Work.toFinset s6Step117Add1_bounded s6Step117Add1_apart rfl

private theorem s6Step117Add1_distinct : (865::813::796::(s6Step117Add1A++s6Step117Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117Add1_owned : (865::813::796::(s6Step117Add1A++s6Step117Add1B)).toFinset⊆s6Step117Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step117Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117Add1_checked : compileHmrHybridCinLog s6Step117Add1Arena 813 865 796 s6Step117Add1A s6Step117Add1B s6Step117Add1Work=some s6Step117Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step117Add1Arena s6Step117Add1During 813 865 796 s6Step117Add1A s6Step117Add1B s6Step117Add1Work
    (by decide +kernel) (by decide +kernel) s6Step117Add1_distinct
    (fun q hq => s6Step117Add1_owned (List.mem_toFinset.mpr hq)) s6Step117Add1_borrowed

private theorem s6Step117F4_apart : Disjoint (s6Step117Add0A++s6Step117Add0B).toFinset (s6Step117Add1A++s6Step117Add1B).toFinset := by
  have nd : ((s6Step117Add0A++s6Step117Add0B)++(s6Step117Add1A++s6Step117Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step117F4_carry : s6Step117F4FlagArena.checkBorrow 1 [796]=some s6Step117Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step117F4FlagArena,s6Step117HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step117F4FlagArena,s6Step117HeadFvAfter,s6Step117Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step117F4_distinct : (882::813::865::796::((s6Step117Add0A++s6Step117Add1A)++(s6Step117Add0B++s6Step117Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117F4_flag : s6Step117HeadFvAfter.checkBorrow 1 [865]=some s6Step117F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step117HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step117F4_owned : (882::813::((s6Step117Add0A++s6Step117Add1A)++(s6Step117Add0B++s6Step117Add1B))).toFinset⊆s6Step117HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step117HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117F4_checked : compileHmrHybridF4Log s6Step117HeadFvAfter 882 813 s6Step117Add0A s6Step117Add0B s6Step117Add1A s6Step117Add1B [865] [796] s6Step117Add0Work s6Step117Add1Work=some s6Step117F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step117HeadFvAfter s6Step117F4FlagArena s6Step117Add0Arena s6Step117Add0During s6Step117Add1During 882 813
    s6Step117Add0A s6Step117Add0B s6Step117Add1A s6Step117Add1B [865] [796] s6Step117Add0Work s6Step117Add1Work
    (fun q hq => s6Step117F4_owned (List.mem_toFinset.mpr hq)) s6Step117F4_flag s6Step117F4_carry
    s6Step117F4_distinct s6Step117F4_apart s6Step117Add0_checked s6Step117Add1_checked

private theorem s6Step117Front_branch : s6Step117FrontSigmaArena.checkBorrow 1 [813]=some s6Step117HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step117FrontSigmaArena,s6Step117EntryGvAfter,s6Step117EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step117FrontSigmaArena,s6Step117EntryGvAfter,s6Step117EntryGAfter,s6Step117HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step117Front_entry : HmrFrontEntryValid s6Step117EntryFBefore s6Step117FrontBank 212 72 ⟨210,211,72,72⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step117FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step117EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step117EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step117FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step117Front_sigma : s6Step117EntryGvAfter.checkBorrow 1 [882]=some s6Step117FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step117EntryGvAfter,s6Step117EntryGAfter,arenaWires]
  · rfl

private def s6Step117HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step117HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step117HeadFBefore : Arena := s6Step117HeadGAfter

private def s6Step117HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467],795⟩

private def s6Step117HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩

private def s6Step117HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 868],777⟩

private def s6Step117HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823],775⟩

private theorem s6Step117HeadBank_incomingDistinct : ([s6Step117HeadGRow,s6Step117HeadFRow,s6Step117HeadGvRow,s6Step117HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117HeadF_Incoming : rowsOwned s6Step117HeadFBefore [s6Step117HeadFRow,s6Step117HeadGvRow,s6Step117HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step117HeadGRow,s6Step117HeadFRow,s6Step117HeadGvRow,s6Step117HeadFvRow] 1 s6Step117HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step117HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step117HeadBank_outgoingOwned : rowsOwned s6Step117HeadFvAfter [s6Step117HeadGOut,s6Step117HeadFOut,s6Step117HeadGvOut,s6Step117HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step117HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step117HeadF_Outgoing : rowsOwned s6Step117HeadFvAfter [s6Step117HeadFOut,s6Step117HeadGvOut,s6Step117HeadFvOut] :=
  hmrRows_owned_drop s6Step117HeadFvAfter [s6Step117HeadGOut,s6Step117HeadFOut,s6Step117HeadGvOut,s6Step117HeadFvOut] 1 s6Step117HeadBank_outgoingOwned

private theorem s6Step117HeadF_distinct : (s6Step117HeadFRow.sign::s6Step117HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117HeadF_owned : (s6Step117HeadFRow.sign::s6Step117HeadFRow.payload).toFinset⊆s6Step117HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step117HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117HeadF_reserved : s6Step117HeadFBefore.reserve s6Step117HeadFFresh.toFinset=some s6Step117HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step117HeadFFresh,arenaWires]
  · norm_num [s6Step117HeadFBefore,s6Step117HeadGAfter,s6Step117HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step117HeadFAfter,s6Step117HeadFBefore,s6Step117HeadGAfter,s6Step117HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step117HeadF_checked : planRowResizeLog s6Step117HeadFBefore s6Step117HeadFRow 213 s6Step117HeadFFresh=
    some (s6Step117HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 803],795⟩,growRow 795 s6Step117HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step117HeadFBefore s6Step117HeadFAfter s6Step117HeadFRow 213 s6Step117HeadFFresh
    s6Step117HeadF_distinct s6Step117HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step117HeadF_reserved
  have rowEq : WindowRow.mk (s6Step117HeadFRow.payload++s6Step117HeadFFresh) s6Step117HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 803],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step117HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step117HeadFvBefore : Arena := s6Step117HeadGvAfter

private theorem s6Step117HeadFv_Incoming : rowsOwned s6Step117HeadFvBefore [s6Step117HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step117HeadGRow,s6Step117HeadFRow,s6Step117HeadGvRow,s6Step117HeadFvRow] 3 s6Step117HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step117HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step117HeadFv_Outgoing : rowsOwned s6Step117HeadFvAfter [s6Step117HeadFvOut] :=
  hmrRows_owned_drop s6Step117HeadFvAfter [s6Step117HeadGOut,s6Step117HeadFOut,s6Step117HeadGvOut,s6Step117HeadFvOut] 3 s6Step117HeadBank_outgoingOwned

private theorem s6Step117HeadFv_distinct : (s6Step117HeadFvRow.sign::s6Step117HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117HeadFv_owned : (s6Step117HeadFvRow.sign::s6Step117HeadFvRow.payload).toFinset⊆s6Step117HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step117HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117HeadFv_reserved : s6Step117HeadFvBefore.reserve s6Step117HeadFvFresh.toFinset=some s6Step117HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step117HeadFvFresh,arenaWires]
  · norm_num [s6Step117HeadFvBefore,s6Step117HeadGvAfter,s6Step117HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step117HeadFvAfter,s6Step117HeadFvBefore,s6Step117HeadGvAfter,s6Step117HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step117HeadFv_checked : planRowResizeLog s6Step117HeadFvBefore s6Step117HeadFvRow 73 s6Step117HeadFvFresh=
    some (s6Step117HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 907],776⟩,growRow 776 s6Step117HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step117HeadFvBefore s6Step117HeadFvAfter s6Step117HeadFvRow 73 s6Step117HeadFvFresh
    s6Step117HeadFv_distinct s6Step117HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step117HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step117HeadFvRow.payload++s6Step117HeadFvFresh) s6Step117HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 907],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step117HeadG_Incoming : rowsOwned s6Step117HeadGBefore [s6Step117HeadGRow,s6Step117HeadFRow,s6Step117HeadGvRow,s6Step117HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step117HeadGRow,s6Step117HeadFRow,s6Step117HeadGvRow,s6Step117HeadFvRow] 0 s6Step117HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step117HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step117HeadG_Outgoing : rowsOwned s6Step117HeadFvAfter [s6Step117HeadGOut,s6Step117HeadFOut,s6Step117HeadGvOut,s6Step117HeadFvOut] :=
  hmrRows_owned_drop s6Step117HeadFvAfter [s6Step117HeadGOut,s6Step117HeadFOut,s6Step117HeadGvOut,s6Step117HeadFvOut] 0 s6Step117HeadBank_outgoingOwned

private theorem s6Step117HeadG_distinct : (s6Step117HeadGRow.sign::s6Step117HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117HeadG_owned : (s6Step117HeadGRow.sign::s6Step117HeadGRow.payload).toFinset⊆s6Step117HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step117HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117HeadG_reserved : s6Step117HeadGBefore.reserve s6Step117HeadGFresh.toFinset=some s6Step117HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step117HeadGFresh,arenaWires]
  · norm_num [s6Step117HeadGBefore,s6Step117HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step117HeadGAfter,s6Step117HeadGBefore,s6Step117HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step117HeadG_checked : planRowResizeLog s6Step117HeadGBefore s6Step117HeadGRow 213 s6Step117HeadGFresh=
    some (s6Step117HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 868, 879],777⟩,growRow 777 s6Step117HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step117HeadGBefore s6Step117HeadGAfter s6Step117HeadGRow 213 s6Step117HeadGFresh
    s6Step117HeadG_distinct s6Step117HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step117HeadG_reserved
  have rowEq : WindowRow.mk (s6Step117HeadGRow.payload++s6Step117HeadGFresh) s6Step117HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 868, 879],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step117HeadGvBefore : Arena := s6Step117HeadFAfter

private theorem s6Step117HeadGv_Incoming : rowsOwned s6Step117HeadGvBefore [s6Step117HeadGvRow,s6Step117HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step117HeadGRow,s6Step117HeadFRow,s6Step117HeadGvRow,s6Step117HeadFvRow] 2 s6Step117HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step117HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step117HeadGv_Outgoing : rowsOwned s6Step117HeadFvAfter [s6Step117HeadGvOut,s6Step117HeadFvOut] :=
  hmrRows_owned_drop s6Step117HeadFvAfter [s6Step117HeadGOut,s6Step117HeadFOut,s6Step117HeadGvOut,s6Step117HeadFvOut] 2 s6Step117HeadBank_outgoingOwned

private theorem s6Step117HeadGv_distinct : (s6Step117HeadGvRow.sign::s6Step117HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step117HeadGv_owned : (s6Step117HeadGvRow.sign::s6Step117HeadGvRow.payload).toFinset⊆s6Step117HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step117HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step117HeadGv_reserved : s6Step117HeadGvBefore.reserve s6Step117HeadGvFresh.toFinset=some s6Step117HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step117HeadGvFresh,arenaWires]
  · norm_num [s6Step117HeadGvBefore,s6Step117HeadFAfter,s6Step117HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step117HeadGvAfter,s6Step117HeadGvBefore,s6Step117HeadFAfter,s6Step117HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step117HeadGv_checked : planRowResizeLog s6Step117HeadGvBefore s6Step117HeadGvRow 73 s6Step117HeadGvFresh=
    some (s6Step117HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 880],775⟩,growRow 775 s6Step117HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step117HeadGvBefore s6Step117HeadGvAfter s6Step117HeadGvRow 73 s6Step117HeadGvFresh
    s6Step117HeadGv_distinct s6Step117HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step117HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step117HeadGvRow.payload++s6Step117HeadGvFresh) s6Step117HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 778, 888, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 880],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step117HeadBank_rows : planWindowRowsLog s6Step117HeadGBefore [(s6Step117HeadGRow,213),(s6Step117HeadFRow,213),(s6Step117HeadGvRow,73),(s6Step117HeadFvRow,73)] [s6Step117HeadGFresh,s6Step117HeadFFresh,s6Step117HeadGvFresh,s6Step117HeadFvFresh]=
    some (s6Step117HeadFvAfter,[s6Step117HeadGOut,s6Step117HeadFOut,s6Step117HeadGvOut,s6Step117HeadFvOut],(growRow 777 s6Step117HeadGFresh ++ (growRow 795 s6Step117HeadFFresh ++ (growRow 775 s6Step117HeadGvFresh ++ (growRow 776 s6Step117HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step117HeadFvAfter [] []=some (s6Step117HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step117HeadFvBefore s6Step117HeadFvAfter s6Step117HeadFvAfter
    s6Step117HeadFvRow s6Step117HeadFvOut 73 s6Step117HeadFvFresh [] [] []
    (growRow 776 s6Step117HeadFvFresh) ([]) s6Step117HeadFv_Incoming s6Step117HeadFv_checked h4 s6Step117HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step117HeadGvBefore s6Step117HeadGvAfter s6Step117HeadFvAfter
    s6Step117HeadGvRow s6Step117HeadGvOut 73 s6Step117HeadGvFresh [(s6Step117HeadFvRow,73)] [s6Step117HeadFvFresh] [s6Step117HeadFvOut]
    (growRow 775 s6Step117HeadGvFresh) ((growRow 776 s6Step117HeadFvFresh ++ [])) s6Step117HeadGv_Incoming s6Step117HeadGv_checked h3 s6Step117HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step117HeadFBefore s6Step117HeadFAfter s6Step117HeadFvAfter
    s6Step117HeadFRow s6Step117HeadFOut 213 s6Step117HeadFFresh [(s6Step117HeadGvRow,73),(s6Step117HeadFvRow,73)] [s6Step117HeadGvFresh,s6Step117HeadFvFresh] [s6Step117HeadGvOut,s6Step117HeadFvOut]
    (growRow 795 s6Step117HeadFFresh) ((growRow 775 s6Step117HeadGvFresh ++ (growRow 776 s6Step117HeadFvFresh ++ []))) s6Step117HeadF_Incoming s6Step117HeadF_checked h2 s6Step117HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step117HeadGBefore s6Step117HeadGAfter s6Step117HeadFvAfter
    s6Step117HeadGRow s6Step117HeadGOut 213 s6Step117HeadGFresh [(s6Step117HeadFRow,213),(s6Step117HeadGvRow,73),(s6Step117HeadFvRow,73)] [s6Step117HeadFFresh,s6Step117HeadGvFresh,s6Step117HeadFvFresh] [s6Step117HeadFOut,s6Step117HeadGvOut,s6Step117HeadFvOut]
    (growRow 777 s6Step117HeadGFresh) ((growRow 795 s6Step117HeadFFresh ++ (growRow 775 s6Step117HeadGvFresh ++ (growRow 776 s6Step117HeadFvFresh ++ [])))) s6Step117HeadG_Incoming s6Step117HeadG_checked h1 s6Step117HeadG_Outgoing
  exact h0

private theorem s6Step117HeadBank_checked : compileHmrBankResizeLog .headroom s6Step117HeadGBefore ⟨s6Step117HeadFRow,s6Step117HeadGRow,s6Step117HeadFvRow,s6Step117HeadGvRow⟩ ⟨213,213,73,73⟩ [s6Step117HeadGFresh,s6Step117HeadFFresh,s6Step117HeadGvFresh,s6Step117HeadFvFresh]=
    some (s6Step117HeadFvAfter,⟨s6Step117HeadFOut,s6Step117HeadGOut,s6Step117HeadFvOut,s6Step117HeadGvOut⟩,(growRow 777 s6Step117HeadGFresh ++ (growRow 795 s6Step117HeadFFresh ++ (growRow 775 s6Step117HeadGvFresh ++ (growRow 776 s6Step117HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step117HeadBank_rows]
  rfl

private theorem s6Step117Front_checked : compileHmrSourceFrontLog s6Step117EntryFBefore s6Step117FrontBank 212 72 ⟨210,211,72,72⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step117FrontLog=some s6Step117FrontPlan := by
  have pairEq : s6Step117FrontPair=⟨s6Step117HeadFRow,s6Step117HeadGRow,s6Step117HeadFvRow,s6Step117HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step117FrontHead=⟨s6Step117ExitFRow,s6Step117ExitGRow,s6Step117ExitFvRow,s6Step117ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step117Add0A=s6Step117FrontHead.f.wires := by decide +kernel
  have gEq : s6Step117Add0B=s6Step117FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step117Add1A=s6Step117FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step117Add1B=s6Step117FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step117EntryFBefore s6Step117FrontBank 212 72 ⟨210,211,72,72⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step117FrontLog s6Step117FrontPlan
  · exact s6Step117Front_entry
  · exact s6Step117EntryBank_checked
  · exact s6Step117Front_sigma
  · rfl
  · exact s6Step117Front_branch
  · rfl
  · simpa only [s6Step117FrontPlan,pairEq] using s6Step117HeadBank_checked
  · simpa only [s6Step117FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step117F4_checked
  · exact s6Step117Counter_checked
  · rfl
  · simpa only [s6Step117FrontPlan,headEq] using s6Step117ExitBank_checked

private theorem s6Step117Complete_explicit_checked : compileHmrEarlyStepLog s6Step117EntryFBefore s6Step117FrontBank 212 72 ⟨210,211,72,72⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step117CompleteLog=some s6Step117CompletePlan := by
  let Q := s6Step117EarlyControlPlan
  have hq := s6Step117EarlyControl_plan_checked
  have fv1 : s6Step117CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step117CompleteOut.fv.payload[2]?.getD s6Step117CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step117CompleteOut.fv.payload[3]?.getD s6Step117CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step117CompleteOut.fv.payload[4]?.getD s6Step117CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step117EntryFBefore s6Step117EarlyControlArena s6Step117FrontBank 212 72 ⟨210,211,72,72⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step117CompleteLog s6Step117FrontPlan Q
    s6Step117Front_checked s6Step117Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step117Complete_owned s6Step117Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step117EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 882 s6Step117CompleteOut.fv.second (s6Step117CompleteOut.fv.payload[2]?.getD s6Step117CompleteOut.fv.sign) (s6Step117CompleteOut.fv.payload[3]?.getD s6Step117CompleteOut.fv.sign) (s6Step117CompleteOut.fv.payload[4]?.getD s6Step117CompleteOut.fv.sign) 813 37 s6Step117EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep117Arena : Arena := s6Step117EntryFBefore
def s6PrivateStep117Bank : WindowBank := s6Step117FrontBank
def s6PrivateStep117Spec : HmrSourceWalkStepLog := ⟨212,72,⟨210,211,72,72⟩,37,.early s6Step117CompleteLog⟩
def s6PrivateStep117Plan : HmrSourceStepPlan := .early s6Step117CompletePlan
theorem s6PrivateStep117_source : s6PrivateStep117Spec=s6ObservedLogs112[5] := rfl
theorem s6PrivateStep117_checked : compileHmrSourceStepLog s6PrivateStep117Arena s6PrivateStep117Bank
    s6PrivateStep117Spec.fgWidth s6PrivateStep117Spec.vWidth s6PrivateStep117Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 117 s6PrivateStep117Spec.need none s6PrivateStep117Spec.log=some s6PrivateStep117Plan := by
  change compileHmrSourceStepLog s6Step117EntryFBefore s6Step117FrontBank 212 72 ⟨210,211,72,72⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 117 37 none (.early s6Step117CompleteLog)=some (.early s6Step117CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 117<498)]
  rw [s6Step117Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
