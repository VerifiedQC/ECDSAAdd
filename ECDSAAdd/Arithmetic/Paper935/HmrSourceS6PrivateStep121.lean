import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep119
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

private def s6Step121CompleteMoves : List (Wire × Wire) := [(821,207)]

private def s6Step121EarlyControlLog : HmrEarlyControlLog := ⟨[821, 888, 865, 879, 796],[813],[880],[875, 882, 891, 903, 791, 825],[]⟩

private def s6Step121FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [880, 875], [], [830, 888]],[[882], [813], [865], [796]],[[], [], [], []]⟩,[868],[833],[891],[903],[791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825]⟩

private def s6Step121CompleteLog : HmrEarlyStepLog := ⟨s6Step121FrontLog,s6Step121CompleteMoves,s6Step121EarlyControlLog⟩

private def s6Step121ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step121ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩

private def s6Step121ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206],777⟩

private def s6Step121ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830],775⟩

private def s6Step121FrontOut : WindowBank := ⟨s6Step121ExitFOut,s6Step121ExitGOut,s6Step121ExitFvOut,s6Step121ExitGvOut⟩

private def s6Step121CompleteOut : WindowBank := s6Step121FrontOut.repacked s6Step121CompleteMoves

private def s6Step121EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step121EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step121EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step121EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step121EarlyControlPositiveArena,[813],s6Step121EarlyControlEqualityArena,[880],⟨⟨868,false⟩,[⟨⟨813,false⟩,880⟩]⟩⟩

private def s6Step121EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step121EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step121EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step121EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step121EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step121EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step121EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,821⟩,⟨⟨772,false⟩,888⟩,⟨⟨771,false⟩,865⟩,⟨⟨770,false⟩,879⟩,⟨⟨769,false⟩,796⟩]⟩

private def s6Step121EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step121EarlyControlZeroArena,s6Step121EarlyControlZeroPlan,s6Step121EarlyControlClassPlan,s6Step121EarlyControlFlagArena,s6Step121EarlyControlFittedArena,s6Step121EarlyControlHistoryArena,s6Step121EarlyControlSigmaArena,s6Step121EarlyControlOutputArena,s6Step121EarlyControlLog⟩

private def s6Step121CounterWork : List Wire := [891, 903, 791, 825]

private theorem s6Step121Counter_bounded : s6Step121CounterWork.toFinset⊆arenaWires := by norm_num [s6Step121CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step121HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step121CounterDuring : Arena := ⟨s6Step121HeadFvAfter.live∪s6Step121CounterWork.toFinset,Finset.union_subset s6Step121HeadFvAfter.bounded s6Step121Counter_bounded⟩

private def s6Step121EntryFFresh : List Wire := []

private def s6Step121EntryFvFresh : List Wire := []

private def s6Step121EntryGFresh : List Wire := [880, 875]

private def s6Step121EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step121EntryGvFresh : List Wire := [830, 888]

private def s6Step121ExitFExtra : List Wire := [813]

private def s6Step121ExitFvExtra : List Wire := [879, 796]

private def s6Step121ExitGExtra : List Wire := [207, 880, 875, 882]

private def s6Step121ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step121ExitGvExtra : List Wire := [888, 865]

private def s6Step121Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step121Add0Work : List Wire := [791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step121Add0_bounded : s6Step121Add0Work.toFinset⊆arenaWires := by
  have h : s6Step121Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step121Add0During : Arena := ⟨s6Step121Add0Arena.live∪s6Step121Add0Work.toFinset,Finset.union_subset s6Step121Add0Arena.bounded s6Step121Add0_bounded⟩

private def s6Step121Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step121Add1Work : List Wire := [791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step121Add1_bounded : s6Step121Add1Work.toFinset⊆arenaWires := by
  have h : s6Step121Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step121Add1During : Arena := ⟨s6Step121Add1Arena.live∪s6Step121Add1Work.toFinset,Finset.union_subset s6Step121Add1Arena.bounded s6Step121Add1_bounded⟩

private def s6Step121F4FlagArena : Arena := ⟨s6Step121HeadFvAfter.live∪{891},Finset.union_subset s6Step121HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step121F4Plan : HmrHybridF4Plan := ⟨s6Step121F4FlagArena,[891],s6Step121Add0Arena,[903],s6Step121Add0During,s6Step121Add0Work,s6Step121Add1During,s6Step121Add1Work⟩

private def s6Step121HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813],795⟩

private def s6Step121HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879, 796],776⟩

private def s6Step121HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 880, 875, 882],777⟩

private def s6Step121HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 888, 865],775⟩

private def s6Step121FrontHead : WindowBank := ⟨s6Step121HeadFOut,s6Step121HeadGOut,s6Step121HeadFvOut,s6Step121HeadGvOut⟩

private def s6Step121EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step121EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879],776⟩

private def s6Step121EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 880, 875],777⟩

private def s6Step121EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 888],775⟩

private def s6Step121FrontPair : WindowBank := ⟨s6Step121EntryFOut,s6Step121EntryGOut,s6Step121EntryFvOut,s6Step121EntryGvOut⟩

private def s6Step121FrontSigmaArena : Arena := ⟨s6Step121EntryGvAfter.live∪{868},Finset.union_subset s6Step121EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step121HeadFFresh : List Wire := [813]

private def s6Step121HeadFvFresh : List Wire := [796]

private def s6Step121HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step121HeadGFresh : List Wire := [882]

private def s6Step121HeadGvFresh : List Wire := [865]

private def s6Step121FrontPlan : HmrSourceFront := ⟨s6Step121EntryGvAfter,s6Step121FrontPair,(growRow 795 s6Step121EntryFFresh ++ (growRow 777 s6Step121EntryGFresh ++ (growRow 776 s6Step121EntryFvFresh ++ (growRow 775 s6Step121EntryGvFresh ++ [])))),s6Step121FrontSigmaArena,[868],s6Step121HeadGBefore,[833],
  s6Step121HeadFvAfter,s6Step121FrontHead,(growRow 777 s6Step121HeadGFresh ++ (growRow 795 s6Step121HeadFFresh ++ (growRow 775 s6Step121HeadGvFresh ++ (growRow 776 s6Step121HeadFvFresh ++ [])))),s6Step121F4Plan,s6Step121CounterDuring,s6Step121CounterWork,s6Step121ExitGvAfter,s6Step121FrontOut,(shrinkRow 777 s6Step121ExitGExtra ++ (shrinkRow 795 s6Step121ExitFExtra ++ (shrinkRow 776 s6Step121ExitFvExtra ++ (shrinkRow 775 s6Step121ExitGvExtra ++ []))))⟩

private def s6Step121CompletePlan : HmrEarlyStepPlan := ⟨s6Step121FrontPlan,s6Step121EarlyControlArena,s6Step121EarlyControlPlan,s6Step121CompleteMoves⟩

private theorem s6Step121Complete_apart : List.Disjoint (s6Step121CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [868, 833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step121CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[868, 833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step121Complete_owned : (s6Step121CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step121EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step121EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step121CompleteRelocationMove0Borrowed : Arena := ⟨s6Step121ExitGvAfter.live∪{207},Finset.union_subset s6Step121ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step121CompleteRelocation_move0_owned : 821∈s6Step121ExitGvAfter.live := by norm_num [s6Step121ExitGvAfter,arenaWires]

private theorem s6Step121CompleteRelocation_move0_reserve : s6Step121ExitGvAfter.reserve {207}=some s6Step121CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step121ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step121CompleteRelocation_move0_retire : s6Step121CompleteRelocationMove0Borrowed.retireSet {821}=s6Step121EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step121CompleteRelocationMove0Borrowed s6Step121EarlyControlArena {821}
  change s6Step121EarlyControlArena.live=(s6Step121ExitGvAfter.live∪{207})\{821}
  apply hmrArena_update_of_filter_check s6Step121ExitGvAfter s6Step121EarlyControlArena (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [207] [821] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step121CompleteRelocation_checked : s6Step121ExitGvAfter.checkRepack [(821,207)]=some s6Step121EarlyControlArena := by
  have tail1 : s6Step121EarlyControlArena.checkRepack []=some s6Step121EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step121ExitGvAfter s6Step121CompleteRelocationMove0Borrowed s6Step121EarlyControlArena s6Step121EarlyControlArena 821 207 []
    s6Step121CompleteRelocation_move0_owned s6Step121CompleteRelocation_move0_reserve s6Step121CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step121Complete_repack : s6Step121ExitGvAfter.checkRepack s6Step121CompleteMoves=some s6Step121EarlyControlArena := by
  simpa only [s6Step121CompleteMoves] using s6Step121CompleteRelocation_checked

private theorem s6Step121EarlyControl_branchOwned : ([833] : List Wire).toFinset⊆s6Step121EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step121EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step121EarlyControl_branch : compileHmrBranchRetirement s6Step121EarlyControlSigmaArena 833=some s6Step121EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step121EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step121EarlyControlSigmaArena s6Step121EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [833] rfl rfl
    decide +kernel

private theorem s6Step121EarlyControl_classEqualityBorrow : s6Step121EarlyControlPositiveArena.checkBorrow (([868, 813] : List Wire).length-1) s6Step121EarlyControlLog.classWork=some s6Step121EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step121EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step121EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step121EarlyControlEqualityArena,s6Step121EarlyControlPositiveArena,s6Step121EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step121EarlyControl_classEqualityOwned : ([868, 813] : List Wire).toFinset⊆s6Step121EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step121EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121EarlyControl_classEquality : compileHmrEqualityLog s6Step121EarlyControlPositiveArena [868, 813] 0 s6Step121EarlyControlLog.classWork=some (s6Step121EarlyControlEqualityArena,s6Step121EarlyControlLog.classWork,s6Step121EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step121EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step121EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step121EarlyControl_classOwned : ([769, 796, 868] : List Wire).toFinset⊆s6Step121EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step121EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121EarlyControl_positiveBorrow : s6Step121EarlyControlZeroArena.checkBorrow (1) s6Step121EarlyControlLog.positiveWork=some s6Step121EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step121EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step121EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step121EarlyControlPositiveArena,s6Step121EarlyControlZeroArena,s6Step121EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step121EarlyControl_class : compileHmrSourceClassLog s6Step121EarlyControlZeroArena false 769 s6Step121EarlyControlZeroPlan.top 0 868 s6Step121EarlyControlLog.positiveWork s6Step121EarlyControlLog.classWork=some s6Step121EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step121EarlyControlClassPlan s6Step121EarlyControlZeroArena false 769 s6Step121EarlyControlZeroPlan.top 0 868
  constructor
  · decide +kernel
  · exact s6Step121EarlyControl_classOwned
  · exact s6Step121EarlyControl_positiveBorrow
  · exact s6Step121EarlyControl_classEquality

private theorem s6Step121EarlyControl_entryRecordOwned : ([833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step121EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step121EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step121EarlyControl_entrySigmaOwned : ([868, 254] : List Wire).toFinset⊆s6Step121EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step121EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step121EarlyControl_fitBorrow : s6Step121EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step121EarlyControlLog.recordFresh=some s6Step121EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step121EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step121EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step121EarlyControlFittedArena,s6Step121EarlyControlFlagArena,s6Step121EarlyControlLog,arenaWires]

private theorem s6Step121EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step121EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step121EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121EarlyControl_fit : compileHmrRecordGrowLog s6Step121EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step121EarlyControlLog.recordFresh=some s6Step121EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step121EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step121EarlyControl_fitBorrow

private theorem s6Step121EarlyControl_flagsBorrow : s6Step121EarlyControlEqualityArena.checkBorrow (6) s6Step121EarlyControlLog.flagWork=some s6Step121EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step121EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step121EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step121EarlyControlFlagArena,s6Step121EarlyControlEqualityArena,s6Step121EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step121EarlyControl_flagsOwned : ([880, 253, 252, 251] : List Wire).toFinset⊆s6Step121EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step121EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121EarlyControl_flags : compileHmrFlagsLog s6Step121EarlyControlClassPlan.equalityArena s6Step121EarlyControlClassPlan.equality.top 253 252 251 s6Step121EarlyControlLog.flagWork=some s6Step121EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step121EarlyControl_flagsOwned⟩
  · exact s6Step121EarlyControl_flagsBorrow

private theorem s6Step121EarlyControl_historyBorrow : s6Step121EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step121EarlyControlLog.recordFresh=some s6Step121EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step121EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step121EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step121EarlyControlArena s6Step121EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step121EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step121EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step121EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step121EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step121EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step121EarlyControl_history : compileHmrRecordGrowLog s6Step121EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step121EarlyControlLog.recordFresh=some s6Step121EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step121EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step121EarlyControl_historyBorrow

private theorem s6Step121EarlyControl_sigmaOwned : ([254, 868] : List Wire).toFinset⊆s6Step121EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step121EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step121EarlyControl_sigmaReleaseOwned : ([868] : List Wire).toFinset⊆s6Step121EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step121EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step121EarlyControl_sigmaRelease : s6Step121EarlyControlHistoryArena.release {868} (fun _ => false)=some s6Step121EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step121EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step121EarlyControlHistoryArena s6Step121EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [868] rfl rfl
    decide +kernel

private theorem s6Step121EarlyControl_sigma : compileHmrSigmaDropLog s6Step121EarlyControlHistoryArena false 0 0 254 868 []=some s6Step121EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step121EarlyControl_sigmaOwned⟩
  · exact s6Step121EarlyControl_sigmaRelease

private theorem s6Step121EarlyControl_zeroBorrow : s6Step121EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step121EarlyControlLog.zeroWork=some s6Step121EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step121EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step121EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step121EarlyControlArena s6Step121EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step121EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step121EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step121EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step121EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step121EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step121EarlyControl_zero : compileHmrEqualityLog s6Step121EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step121EarlyControlLog.zeroWork=some (s6Step121EarlyControlZeroArena,s6Step121EarlyControlLog.zeroWork,s6Step121EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step121EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step121EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step121EarlyControl_logged : s6Step121EarlyControlPlan.Logged s6Step121EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 868 254 253 252 251 833 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step121EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step121EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step121EarlyControl_zero
  · exact s6Step121EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step121EarlyControl_flags
  · exact s6Step121EarlyControl_fit
  · exact s6Step121EarlyControl_history
  · exact s6Step121EarlyControl_sigma
  · exact s6Step121EarlyControl_branch

private theorem s6Step121EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step121EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 868 254 253 252 251 833 37 s6Step121EarlyControlLog=some s6Step121EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step121EarlyControlPlan s6Step121EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 868 254 253 252 251 833 37 s6Step121EarlyControl_logged

private def s6Step121EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,880),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step121EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step121EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879],776⟩

private def s6Step121EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207],777⟩

private def s6Step121EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907],775⟩

private def s6Step121FrontBank : WindowBank := ⟨s6Step121EntryFRow,s6Step121EntryGRow,s6Step121EntryFvRow,s6Step121EntryGvRow⟩

private def s6Step121Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813, 795]

private def s6Step121Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 880, 875, 882, 777]

private def s6Step121Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879, 796, 776]

private def s6Step121Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 888, 865, 775]

private theorem s6Step121Counter_apart : Disjoint s6Step121HeadFvAfter.live s6Step121CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step121HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121Counter_borrowed : s6Step121HeadFvAfter.checkBorrow 4 s6Step121CounterWork=some s6Step121CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step121HeadFvAfter s6Step121CounterDuring s6Step121CounterWork.toFinset s6Step121Counter_bounded s6Step121Counter_apart rfl

private theorem s6Step121Counter_owned : (868::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step121HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step121HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121Counter_checked : compileHmrCounterStepLog s6Step121HeadFvAfter true 868 [774, 773, 772, 771, 770, 769] s6Step121CounterWork=some s6Step121CounterDuring := by
  have owned : ∀q∈868::[774, 773, 772, 771, 770, 769],q∈s6Step121HeadFvAfter.live := fun q hq => s6Step121Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step121Counter_borrowed

private def s6Step121EntryFAfter : Arena := s6Step121EntryFBefore

private theorem s6Step121EntryBank_incomingDistinct : ([s6Step121EntryFRow,s6Step121EntryGRow,s6Step121EntryFvRow,s6Step121EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121EntryF_Incoming : rowsOwned s6Step121EntryFBefore [s6Step121EntryFRow,s6Step121EntryGRow,s6Step121EntryFvRow,s6Step121EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step121EntryFRow,s6Step121EntryGRow,s6Step121EntryFvRow,s6Step121EntryGvRow] 0 s6Step121EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step121EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,880),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step121EntryBank_outgoingOwned : rowsOwned s6Step121EntryGvAfter [s6Step121EntryFOut,s6Step121EntryGOut,s6Step121EntryFvOut,s6Step121EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step121EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step121EntryF_Outgoing : rowsOwned s6Step121EntryGvAfter [s6Step121EntryFOut,s6Step121EntryGOut,s6Step121EntryFvOut,s6Step121EntryGvOut] :=
  hmrRows_owned_drop s6Step121EntryGvAfter [s6Step121EntryFOut,s6Step121EntryGOut,s6Step121EntryFvOut,s6Step121EntryGvOut] 0 s6Step121EntryBank_outgoingOwned

private theorem s6Step121EntryF_distinct : (s6Step121EntryFRow.sign::s6Step121EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121EntryF_owned : (s6Step121EntryFRow.sign::s6Step121EntryFRow.payload).toFinset⊆s6Step121EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step121EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,880),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step121EntryF_reserved : s6Step121EntryFBefore.reserve s6Step121EntryFFresh.toFinset=some s6Step121EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step121EntryFFresh,arenaWires]
  · norm_num [s6Step121EntryFBefore,s6Step121EntryFFresh,arenaWires]
  · simp only [s6Step121EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step121EntryF_checked : planRowResizeLog s6Step121EntryFBefore s6Step121EntryFRow 210 s6Step121EntryFFresh=
    some (s6Step121EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩,growRow 795 s6Step121EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step121EntryFBefore s6Step121EntryFAfter s6Step121EntryFRow 210 s6Step121EntryFFresh
    s6Step121EntryF_distinct s6Step121EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step121EntryF_reserved
  have rowEq : WindowRow.mk (s6Step121EntryFRow.payload++s6Step121EntryFFresh) s6Step121EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step121EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step121EntryFvAfter : Arena := s6Step121EntryGAfter

private def s6Step121EntryFvBefore : Arena := s6Step121EntryGAfter

private theorem s6Step121EntryFv_Incoming : rowsOwned s6Step121EntryFvBefore [s6Step121EntryFvRow,s6Step121EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step121EntryFRow,s6Step121EntryGRow,s6Step121EntryFvRow,s6Step121EntryGvRow] 2 s6Step121EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step121EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step121EntryFv_Outgoing : rowsOwned s6Step121EntryGvAfter [s6Step121EntryFvOut,s6Step121EntryGvOut] :=
  hmrRows_owned_drop s6Step121EntryGvAfter [s6Step121EntryFOut,s6Step121EntryGOut,s6Step121EntryFvOut,s6Step121EntryGvOut] 2 s6Step121EntryBank_outgoingOwned

private theorem s6Step121EntryFv_distinct : (s6Step121EntryFvRow.sign::s6Step121EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121EntryFv_owned : (s6Step121EntryFvRow.sign::s6Step121EntryFvRow.payload).toFinset⊆s6Step121EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step121EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step121EntryFv_reserved : s6Step121EntryFvBefore.reserve s6Step121EntryFvFresh.toFinset=some s6Step121EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step121EntryFvFresh,arenaWires]
  · norm_num [s6Step121EntryFvBefore,s6Step121EntryGAfter,s6Step121EntryFvFresh,arenaWires]
  · simp only [s6Step121EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step121EntryFv_checked : planRowResizeLog s6Step121EntryFvBefore s6Step121EntryFvRow 75 s6Step121EntryFvFresh=
    some (s6Step121EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879],776⟩,growRow 776 s6Step121EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step121EntryFvBefore s6Step121EntryFvAfter s6Step121EntryFvRow 75 s6Step121EntryFvFresh
    s6Step121EntryFv_distinct s6Step121EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step121EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step121EntryFvRow.payload++s6Step121EntryFvFresh) s6Step121EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step121EntryGBefore : Arena := s6Step121EntryFBefore

private theorem s6Step121EntryG_Incoming : rowsOwned s6Step121EntryGBefore [s6Step121EntryGRow,s6Step121EntryFvRow,s6Step121EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step121EntryFRow,s6Step121EntryGRow,s6Step121EntryFvRow,s6Step121EntryGvRow] 1 s6Step121EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step121EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,880),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step121EntryG_Outgoing : rowsOwned s6Step121EntryGvAfter [s6Step121EntryGOut,s6Step121EntryFvOut,s6Step121EntryGvOut] :=
  hmrRows_owned_drop s6Step121EntryGvAfter [s6Step121EntryFOut,s6Step121EntryGOut,s6Step121EntryFvOut,s6Step121EntryGvOut] 1 s6Step121EntryBank_outgoingOwned

private theorem s6Step121EntryG_distinct : (s6Step121EntryGRow.sign::s6Step121EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121EntryG_owned : (s6Step121EntryGRow.sign::s6Step121EntryGRow.payload).toFinset⊆s6Step121EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step121EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,880),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step121EntryG_reserved : s6Step121EntryGBefore.reserve s6Step121EntryGFresh.toFinset=some s6Step121EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step121EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step121EntryGBefore,s6Step121EntryFBefore,s6Step121EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step121EntryGBefore s6Step121EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,880),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step121EntryGFresh rfl rfl
    · norm_num [s6Step121EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step121EntryG_checked : planRowResizeLog s6Step121EntryGBefore s6Step121EntryGRow 210 s6Step121EntryGFresh=
    some (s6Step121EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 880, 875],777⟩,growRow 777 s6Step121EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step121EntryGBefore s6Step121EntryGAfter s6Step121EntryGRow 210 s6Step121EntryGFresh
    s6Step121EntryG_distinct s6Step121EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step121EntryG_reserved
  have rowEq : WindowRow.mk (s6Step121EntryGRow.payload++s6Step121EntryGFresh) s6Step121EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 880, 875],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step121EntryGvBefore : Arena := s6Step121EntryGAfter

private theorem s6Step121EntryGv_Incoming : rowsOwned s6Step121EntryGvBefore [s6Step121EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step121EntryFRow,s6Step121EntryGRow,s6Step121EntryFvRow,s6Step121EntryGvRow] 3 s6Step121EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step121EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step121EntryGv_Outgoing : rowsOwned s6Step121EntryGvAfter [s6Step121EntryGvOut] :=
  hmrRows_owned_drop s6Step121EntryGvAfter [s6Step121EntryFOut,s6Step121EntryGOut,s6Step121EntryFvOut,s6Step121EntryGvOut] 3 s6Step121EntryBank_outgoingOwned

private theorem s6Step121EntryGv_distinct : (s6Step121EntryGvRow.sign::s6Step121EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121EntryGv_owned : (s6Step121EntryGvRow.sign::s6Step121EntryGvRow.payload).toFinset⊆s6Step121EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step121EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step121EntryGv_reserved : s6Step121EntryGvBefore.reserve s6Step121EntryGvFresh.toFinset=some s6Step121EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step121EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step121EntryGvBefore,s6Step121EntryGAfter,s6Step121EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step121EntryGvBefore s6Step121EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step121EntryGvFresh rfl rfl
    · norm_num [s6Step121EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step121EntryGv_checked : planRowResizeLog s6Step121EntryGvBefore s6Step121EntryGvRow 75 s6Step121EntryGvFresh=
    some (s6Step121EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 888],775⟩,growRow 775 s6Step121EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step121EntryGvBefore s6Step121EntryGvAfter s6Step121EntryGvRow 75 s6Step121EntryGvFresh
    s6Step121EntryGv_distinct s6Step121EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step121EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step121EntryGvRow.payload++s6Step121EntryGvFresh) s6Step121EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 888],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step121EntryBank_rows : planWindowRowsLog s6Step121EntryFBefore [(s6Step121EntryFRow,210),(s6Step121EntryGRow,210),(s6Step121EntryFvRow,75),(s6Step121EntryGvRow,75)] [s6Step121EntryFFresh,s6Step121EntryGFresh,s6Step121EntryFvFresh,s6Step121EntryGvFresh]=
    some (s6Step121EntryGvAfter,[s6Step121EntryFOut,s6Step121EntryGOut,s6Step121EntryFvOut,s6Step121EntryGvOut],(growRow 795 s6Step121EntryFFresh ++ (growRow 777 s6Step121EntryGFresh ++ (growRow 776 s6Step121EntryFvFresh ++ (growRow 775 s6Step121EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step121EntryGvAfter [] []=some (s6Step121EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step121EntryGvBefore s6Step121EntryGvAfter s6Step121EntryGvAfter
    s6Step121EntryGvRow s6Step121EntryGvOut 75 s6Step121EntryGvFresh [] [] []
    (growRow 775 s6Step121EntryGvFresh) ([]) s6Step121EntryGv_Incoming s6Step121EntryGv_checked h4 s6Step121EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step121EntryFvBefore s6Step121EntryFvAfter s6Step121EntryGvAfter
    s6Step121EntryFvRow s6Step121EntryFvOut 75 s6Step121EntryFvFresh [(s6Step121EntryGvRow,75)] [s6Step121EntryGvFresh] [s6Step121EntryGvOut]
    (growRow 776 s6Step121EntryFvFresh) ((growRow 775 s6Step121EntryGvFresh ++ [])) s6Step121EntryFv_Incoming s6Step121EntryFv_checked h3 s6Step121EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step121EntryGBefore s6Step121EntryGAfter s6Step121EntryGvAfter
    s6Step121EntryGRow s6Step121EntryGOut 210 s6Step121EntryGFresh [(s6Step121EntryFvRow,75),(s6Step121EntryGvRow,75)] [s6Step121EntryFvFresh,s6Step121EntryGvFresh] [s6Step121EntryFvOut,s6Step121EntryGvOut]
    (growRow 777 s6Step121EntryGFresh) ((growRow 776 s6Step121EntryFvFresh ++ (growRow 775 s6Step121EntryGvFresh ++ []))) s6Step121EntryG_Incoming s6Step121EntryG_checked h2 s6Step121EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step121EntryFBefore s6Step121EntryFAfter s6Step121EntryGvAfter
    s6Step121EntryFRow s6Step121EntryFOut 210 s6Step121EntryFFresh [(s6Step121EntryGRow,210),(s6Step121EntryFvRow,75),(s6Step121EntryGvRow,75)] [s6Step121EntryGFresh,s6Step121EntryFvFresh,s6Step121EntryGvFresh] [s6Step121EntryGOut,s6Step121EntryFvOut,s6Step121EntryGvOut]
    (growRow 795 s6Step121EntryFFresh) ((growRow 777 s6Step121EntryGFresh ++ (growRow 776 s6Step121EntryFvFresh ++ (growRow 775 s6Step121EntryGvFresh ++ [])))) s6Step121EntryF_Incoming s6Step121EntryF_checked h1 s6Step121EntryF_Outgoing
  exact h0

private theorem s6Step121EntryBank_checked : compileHmrBankResizeLog .entry s6Step121EntryFBefore ⟨s6Step121EntryFRow,s6Step121EntryGRow,s6Step121EntryFvRow,s6Step121EntryGvRow⟩ ⟨210,210,75,75⟩ [s6Step121EntryFFresh,s6Step121EntryGFresh,s6Step121EntryFvFresh,s6Step121EntryGvFresh]=
    some (s6Step121EntryGvAfter,⟨s6Step121EntryFOut,s6Step121EntryGOut,s6Step121EntryFvOut,s6Step121EntryGvOut⟩,(growRow 795 s6Step121EntryFFresh ++ (growRow 777 s6Step121EntryGFresh ++ (growRow 776 s6Step121EntryFvFresh ++ (growRow 775 s6Step121EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step121EntryBank_rows]
  rfl

private def s6Step121ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,880),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step121ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,880),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step121ExitFBefore : Arena := s6Step121ExitGAfter

private def s6Step121ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813],795⟩

private def s6Step121ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879, 796],776⟩

private def s6Step121ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 880, 875, 882],777⟩

private def s6Step121ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 888, 865],775⟩

private theorem s6Step121ExitBank_incomingDistinct : ([s6Step121ExitGRow,s6Step121ExitFRow,s6Step121ExitFvRow,s6Step121ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121ExitF_Incoming : rowsOwned s6Step121ExitFBefore [s6Step121ExitFRow,s6Step121ExitFvRow,s6Step121ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step121ExitGRow,s6Step121ExitFRow,s6Step121ExitFvRow,s6Step121ExitGvRow] 1 s6Step121ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step121ExitFBefore (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,880),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step121ExitBank_outgoingOwned : rowsOwned s6Step121ExitGvAfter [s6Step121ExitGOut,s6Step121ExitFOut,s6Step121ExitFvOut,s6Step121ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step121ExitGvAfter (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step121ExitF_Outgoing : rowsOwned s6Step121ExitGvAfter [s6Step121ExitFOut,s6Step121ExitFvOut,s6Step121ExitGvOut] :=
  hmrRows_owned_drop s6Step121ExitGvAfter [s6Step121ExitGOut,s6Step121ExitFOut,s6Step121ExitFvOut,s6Step121ExitGvOut] 1 s6Step121ExitBank_outgoingOwned

private theorem s6Step121ExitF_distinct : (s6Step121ExitFRow.sign::s6Step121ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121ExitF_owned : (s6Step121ExitFRow.sign::s6Step121ExitFRow.payload).toFinset⊆s6Step121ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step121ExitFBefore (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,880),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step121ExitF_retired : s6Step121ExitFBefore.retireSet s6Step121ExitFExtra.toFinset=s6Step121ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step121ExitFBefore s6Step121ExitFAfter s6Step121ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step121ExitFBefore s6Step121ExitFAfter (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,880),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,880),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step121ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step121ExitF_checked : planRowResizeLog s6Step121ExitFBefore s6Step121ExitFRow 210 []=
    some (s6Step121ExitFAfter,s6Step121ExitFOut,shrinkRow 795 s6Step121ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step121ExitFBefore s6Step121ExitFRow 210 s6Step121ExitF_distinct s6Step121ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step121ExitFRow.payload.take 210) s6Step121ExitFRow.sign=s6Step121ExitFOut := by decide +kernel
  have hi : s6Step121ExitFRow.payload.drop 210=s6Step121ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step121ExitF_retired] at result
  exact result

private def s6Step121ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step121ExitFvBefore : Arena := s6Step121ExitFAfter

private theorem s6Step121ExitFv_Incoming : rowsOwned s6Step121ExitFvBefore [s6Step121ExitFvRow,s6Step121ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step121ExitGRow,s6Step121ExitFRow,s6Step121ExitFvRow,s6Step121ExitGvRow] 2 s6Step121ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step121ExitFvBefore (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,880),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step121ExitFv_Outgoing : rowsOwned s6Step121ExitGvAfter [s6Step121ExitFvOut,s6Step121ExitGvOut] :=
  hmrRows_owned_drop s6Step121ExitGvAfter [s6Step121ExitGOut,s6Step121ExitFOut,s6Step121ExitFvOut,s6Step121ExitGvOut] 2 s6Step121ExitBank_outgoingOwned

private theorem s6Step121ExitFv_distinct : (s6Step121ExitFvRow.sign::s6Step121ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121ExitFv_owned : (s6Step121ExitFvRow.sign::s6Step121ExitFvRow.payload).toFinset⊆s6Step121ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step121ExitFvBefore (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,880),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step121ExitFv_retired : s6Step121ExitFvBefore.retireSet s6Step121ExitFvExtra.toFinset=s6Step121ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step121ExitFvBefore s6Step121ExitFvAfter s6Step121ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step121ExitFvBefore s6Step121ExitFvAfter (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,880),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step121ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step121ExitFv_checked : planRowResizeLog s6Step121ExitFvBefore s6Step121ExitFvRow 74 []=
    some (s6Step121ExitFvAfter,s6Step121ExitFvOut,shrinkRow 776 s6Step121ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step121ExitFvBefore s6Step121ExitFvRow 74 s6Step121ExitFv_distinct s6Step121ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step121ExitFvRow.payload.take 74) s6Step121ExitFvRow.sign=s6Step121ExitFvOut := by decide +kernel
  have hi : s6Step121ExitFvRow.payload.drop 74=s6Step121ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step121ExitFv_retired] at result
  exact result

private def s6Step121ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step121ExitG_Incoming : rowsOwned s6Step121ExitGBefore [s6Step121ExitGRow,s6Step121ExitFRow,s6Step121ExitFvRow,s6Step121ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step121ExitGRow,s6Step121ExitFRow,s6Step121ExitFvRow,s6Step121ExitGvRow] 0 s6Step121ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step121ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step121ExitG_Outgoing : rowsOwned s6Step121ExitGvAfter [s6Step121ExitGOut,s6Step121ExitFOut,s6Step121ExitFvOut,s6Step121ExitGvOut] :=
  hmrRows_owned_drop s6Step121ExitGvAfter [s6Step121ExitGOut,s6Step121ExitFOut,s6Step121ExitFvOut,s6Step121ExitGvOut] 0 s6Step121ExitBank_outgoingOwned

private theorem s6Step121ExitG_distinct : (s6Step121ExitGRow.sign::s6Step121ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121ExitG_owned : (s6Step121ExitGRow.sign::s6Step121ExitGRow.payload).toFinset⊆s6Step121ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step121ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121ExitG_retired : s6Step121ExitGBefore.retireSet s6Step121ExitGExtra.toFinset=s6Step121ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step121ExitGBefore s6Step121ExitGAfter s6Step121ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step121ExitGBefore s6Step121ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,880),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step121ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step121ExitG_checked : planRowResizeLog s6Step121ExitGBefore s6Step121ExitGRow 207 []=
    some (s6Step121ExitGAfter,s6Step121ExitGOut,shrinkRow 777 s6Step121ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step121ExitGBefore s6Step121ExitGRow 207 s6Step121ExitG_distinct s6Step121ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step121ExitGRow.payload.take 207) s6Step121ExitGRow.sign=s6Step121ExitGOut := by decide +kernel
  have hi : s6Step121ExitGRow.payload.drop 207=s6Step121ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step121ExitG_retired] at result
  exact result

private def s6Step121ExitGvBefore : Arena := s6Step121ExitFvAfter

private theorem s6Step121ExitGv_Incoming : rowsOwned s6Step121ExitGvBefore [s6Step121ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step121ExitGRow,s6Step121ExitFRow,s6Step121ExitFvRow,s6Step121ExitGvRow] 3 s6Step121ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step121ExitGvBefore (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step121ExitGv_Outgoing : rowsOwned s6Step121ExitGvAfter [s6Step121ExitGvOut] :=
  hmrRows_owned_drop s6Step121ExitGvAfter [s6Step121ExitGOut,s6Step121ExitFOut,s6Step121ExitFvOut,s6Step121ExitGvOut] 3 s6Step121ExitBank_outgoingOwned

private theorem s6Step121ExitGv_distinct : (s6Step121ExitGvRow.sign::s6Step121ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121ExitGv_owned : (s6Step121ExitGvRow.sign::s6Step121ExitGvRow.payload).toFinset⊆s6Step121ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step121ExitGvBefore (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step121ExitGv_retired : s6Step121ExitGvBefore.retireSet s6Step121ExitGvExtra.toFinset=s6Step121ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step121ExitGvBefore s6Step121ExitGvAfter s6Step121ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step121ExitGvBefore s6Step121ExitGvAfter (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,875),(876,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,207),(208,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step121ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step121ExitGv_checked : planRowResizeLog s6Step121ExitGvBefore s6Step121ExitGvRow 74 []=
    some (s6Step121ExitGvAfter,s6Step121ExitGvOut,shrinkRow 775 s6Step121ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step121ExitGvBefore s6Step121ExitGvRow 74 s6Step121ExitGv_distinct s6Step121ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step121ExitGvRow.payload.take 74) s6Step121ExitGvRow.sign=s6Step121ExitGvOut := by decide +kernel
  have hi : s6Step121ExitGvRow.payload.drop 74=s6Step121ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step121ExitGv_retired] at result
  exact result

private theorem s6Step121ExitBank_rows : planWindowRowsLog s6Step121ExitGBefore [(s6Step121ExitGRow,207),(s6Step121ExitFRow,210),(s6Step121ExitFvRow,74),(s6Step121ExitGvRow,74)] [[],[],[],[]]=
    some (s6Step121ExitGvAfter,[s6Step121ExitGOut,s6Step121ExitFOut,s6Step121ExitFvOut,s6Step121ExitGvOut],(shrinkRow 777 s6Step121ExitGExtra ++ (shrinkRow 795 s6Step121ExitFExtra ++ (shrinkRow 776 s6Step121ExitFvExtra ++ (shrinkRow 775 s6Step121ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step121ExitGvAfter [] []=some (s6Step121ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step121ExitGvBefore s6Step121ExitGvAfter s6Step121ExitGvAfter
    s6Step121ExitGvRow s6Step121ExitGvOut 74 [] [] [] []
    (shrinkRow 775 s6Step121ExitGvExtra) ([]) s6Step121ExitGv_Incoming s6Step121ExitGv_checked h4 s6Step121ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step121ExitFvBefore s6Step121ExitFvAfter s6Step121ExitGvAfter
    s6Step121ExitFvRow s6Step121ExitFvOut 74 [] [(s6Step121ExitGvRow,74)] [[]] [s6Step121ExitGvOut]
    (shrinkRow 776 s6Step121ExitFvExtra) ((shrinkRow 775 s6Step121ExitGvExtra ++ [])) s6Step121ExitFv_Incoming s6Step121ExitFv_checked h3 s6Step121ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step121ExitFBefore s6Step121ExitFAfter s6Step121ExitGvAfter
    s6Step121ExitFRow s6Step121ExitFOut 210 [] [(s6Step121ExitFvRow,74),(s6Step121ExitGvRow,74)] [[],[]] [s6Step121ExitFvOut,s6Step121ExitGvOut]
    (shrinkRow 795 s6Step121ExitFExtra) ((shrinkRow 776 s6Step121ExitFvExtra ++ (shrinkRow 775 s6Step121ExitGvExtra ++ []))) s6Step121ExitF_Incoming s6Step121ExitF_checked h2 s6Step121ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step121ExitGBefore s6Step121ExitGAfter s6Step121ExitGvAfter
    s6Step121ExitGRow s6Step121ExitGOut 207 [] [(s6Step121ExitFRow,210),(s6Step121ExitFvRow,74),(s6Step121ExitGvRow,74)] [[],[],[]] [s6Step121ExitFOut,s6Step121ExitFvOut,s6Step121ExitGvOut]
    (shrinkRow 777 s6Step121ExitGExtra) ((shrinkRow 795 s6Step121ExitFExtra ++ (shrinkRow 776 s6Step121ExitFvExtra ++ (shrinkRow 775 s6Step121ExitGvExtra ++ [])))) s6Step121ExitG_Incoming s6Step121ExitG_checked h1 s6Step121ExitG_Outgoing
  exact h0

private theorem s6Step121ExitBank_checked : compileHmrBankResizeLog .exit s6Step121ExitGBefore ⟨s6Step121ExitFRow,s6Step121ExitGRow,s6Step121ExitFvRow,s6Step121ExitGvRow⟩ ⟨210,207,74,74⟩ [[],[],[],[]]=
    some (s6Step121ExitGvAfter,⟨s6Step121ExitFOut,s6Step121ExitGOut,s6Step121ExitFvOut,s6Step121ExitGvOut⟩,(shrinkRow 777 s6Step121ExitGExtra ++ (shrinkRow 795 s6Step121ExitFExtra ++ (shrinkRow 776 s6Step121ExitFvExtra ++ (shrinkRow 775 s6Step121ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step121ExitBank_rows]
  rfl

private theorem s6Step121Add0_apart : Disjoint s6Step121Add0Arena.live s6Step121Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step121Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121Add0_card : s6Step121Add0Arena.live.card=881 := by
  decide +kernel

private theorem s6Step121Add0_borrowed : s6Step121Add0Arena.checkBorrow (hmrHybridCount s6Step121Add0Arena s6Step121Add0B.length) s6Step121Add0Work=some s6Step121Add0During := by
  have len : s6Step121Add0Work.length=hmrHybridCount s6Step121Add0Arena s6Step121Add0B.length := by
    rw [hmrHybridCount,s6Step121Add0_card]
    decide +kernel
  have nd : s6Step121Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step121Add0Arena s6Step121Add0During s6Step121Add0Work.toFinset s6Step121Add0_bounded s6Step121Add0_apart rfl

private theorem s6Step121Add0_distinct : (891::833::903::(s6Step121Add0A++s6Step121Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121Add0_owned : (891::833::903::(s6Step121Add0A++s6Step121Add0B)).toFinset⊆s6Step121Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step121Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121Add0_checked : compileHmrHybridCinLog s6Step121Add0Arena 833 891 903 s6Step121Add0A s6Step121Add0B s6Step121Add0Work=some s6Step121Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step121Add0Arena s6Step121Add0During 833 891 903 s6Step121Add0A s6Step121Add0B s6Step121Add0Work
    (by decide +kernel) (by decide +kernel) s6Step121Add0_distinct
    (fun q hq => s6Step121Add0_owned (List.mem_toFinset.mpr hq)) s6Step121Add0_borrowed

private theorem s6Step121Add1_apart : Disjoint s6Step121Add1Arena.live s6Step121Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step121Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121Add1_card : s6Step121Add1Arena.live.card=881 := by
  decide +kernel

private theorem s6Step121Add1_borrowed : s6Step121Add1Arena.checkBorrow (hmrHybridCount s6Step121Add1Arena s6Step121Add1B.length) s6Step121Add1Work=some s6Step121Add1During := by
  have len : s6Step121Add1Work.length=hmrHybridCount s6Step121Add1Arena s6Step121Add1B.length := by
    rw [hmrHybridCount,s6Step121Add1_card]
    decide +kernel
  have nd : s6Step121Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step121Add1Arena s6Step121Add1During s6Step121Add1Work.toFinset s6Step121Add1_bounded s6Step121Add1_apart rfl

private theorem s6Step121Add1_distinct : (891::833::903::(s6Step121Add1A++s6Step121Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121Add1_owned : (891::833::903::(s6Step121Add1A++s6Step121Add1B)).toFinset⊆s6Step121Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step121Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121Add1_checked : compileHmrHybridCinLog s6Step121Add1Arena 833 891 903 s6Step121Add1A s6Step121Add1B s6Step121Add1Work=some s6Step121Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step121Add1Arena s6Step121Add1During 833 891 903 s6Step121Add1A s6Step121Add1B s6Step121Add1Work
    (by decide +kernel) (by decide +kernel) s6Step121Add1_distinct
    (fun q hq => s6Step121Add1_owned (List.mem_toFinset.mpr hq)) s6Step121Add1_borrowed

private theorem s6Step121F4_apart : Disjoint (s6Step121Add0A++s6Step121Add0B).toFinset (s6Step121Add1A++s6Step121Add1B).toFinset := by
  have nd : ((s6Step121Add0A++s6Step121Add0B)++(s6Step121Add1A++s6Step121Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step121F4_carry : s6Step121F4FlagArena.checkBorrow 1 [903]=some s6Step121Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step121F4FlagArena,s6Step121HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step121F4FlagArena,s6Step121HeadFvAfter,s6Step121Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step121F4_distinct : (868::833::891::903::((s6Step121Add0A++s6Step121Add1A)++(s6Step121Add0B++s6Step121Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121F4_flag : s6Step121HeadFvAfter.checkBorrow 1 [891]=some s6Step121F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step121HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step121F4_owned : (868::833::((s6Step121Add0A++s6Step121Add1A)++(s6Step121Add0B++s6Step121Add1B))).toFinset⊆s6Step121HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step121HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121F4_checked : compileHmrHybridF4Log s6Step121HeadFvAfter 868 833 s6Step121Add0A s6Step121Add0B s6Step121Add1A s6Step121Add1B [891] [903] s6Step121Add0Work s6Step121Add1Work=some s6Step121F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step121HeadFvAfter s6Step121F4FlagArena s6Step121Add0Arena s6Step121Add0During s6Step121Add1During 868 833
    s6Step121Add0A s6Step121Add0B s6Step121Add1A s6Step121Add1B [891] [903] s6Step121Add0Work s6Step121Add1Work
    (fun q hq => s6Step121F4_owned (List.mem_toFinset.mpr hq)) s6Step121F4_flag s6Step121F4_carry
    s6Step121F4_distinct s6Step121F4_apart s6Step121Add0_checked s6Step121Add1_checked

private theorem s6Step121Front_branch : s6Step121FrontSigmaArena.checkBorrow 1 [833]=some s6Step121HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step121FrontSigmaArena,s6Step121EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step121FrontSigmaArena,s6Step121EntryGvAfter,s6Step121HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step121Front_entry : HmrFrontEntryValid s6Step121EntryFBefore s6Step121FrontBank 210 75 ⟨210,207,74,74⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step121FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step121EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step121EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,880),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step121FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step121Front_sigma : s6Step121EntryGvAfter.checkBorrow 1 [868]=some s6Step121FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step121EntryGvAfter,arenaWires]
  · rfl

private def s6Step121HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step121HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step121HeadFBefore : Arena := s6Step121HeadGAfter

private def s6Step121HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step121HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879],776⟩

private def s6Step121HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 880, 875],777⟩

private def s6Step121HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 888],775⟩

private theorem s6Step121HeadBank_incomingDistinct : ([s6Step121HeadGRow,s6Step121HeadFRow,s6Step121HeadGvRow,s6Step121HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121HeadF_Incoming : rowsOwned s6Step121HeadFBefore [s6Step121HeadFRow,s6Step121HeadGvRow,s6Step121HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step121HeadGRow,s6Step121HeadFRow,s6Step121HeadGvRow,s6Step121HeadFvRow] 1 s6Step121HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step121HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step121HeadBank_outgoingOwned : rowsOwned s6Step121HeadFvAfter [s6Step121HeadGOut,s6Step121HeadFOut,s6Step121HeadGvOut,s6Step121HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step121HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step121HeadF_Outgoing : rowsOwned s6Step121HeadFvAfter [s6Step121HeadFOut,s6Step121HeadGvOut,s6Step121HeadFvOut] :=
  hmrRows_owned_drop s6Step121HeadFvAfter [s6Step121HeadGOut,s6Step121HeadFOut,s6Step121HeadGvOut,s6Step121HeadFvOut] 1 s6Step121HeadBank_outgoingOwned

private theorem s6Step121HeadF_distinct : (s6Step121HeadFRow.sign::s6Step121HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121HeadF_owned : (s6Step121HeadFRow.sign::s6Step121HeadFRow.payload).toFinset⊆s6Step121HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step121HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121HeadF_reserved : s6Step121HeadFBefore.reserve s6Step121HeadFFresh.toFinset=some s6Step121HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step121HeadFFresh,arenaWires]
  · norm_num [s6Step121HeadFBefore,s6Step121HeadGAfter,s6Step121HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step121HeadFAfter,s6Step121HeadFBefore,s6Step121HeadGAfter,s6Step121HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step121HeadF_checked : planRowResizeLog s6Step121HeadFBefore s6Step121HeadFRow 211 s6Step121HeadFFresh=
    some (s6Step121HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813],795⟩,growRow 795 s6Step121HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step121HeadFBefore s6Step121HeadFAfter s6Step121HeadFRow 211 s6Step121HeadFFresh
    s6Step121HeadF_distinct s6Step121HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step121HeadF_reserved
  have rowEq : WindowRow.mk (s6Step121HeadFRow.payload++s6Step121HeadFFresh) s6Step121HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step121HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step121HeadFvBefore : Arena := s6Step121HeadGvAfter

private theorem s6Step121HeadFv_Incoming : rowsOwned s6Step121HeadFvBefore [s6Step121HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step121HeadGRow,s6Step121HeadFRow,s6Step121HeadGvRow,s6Step121HeadFvRow] 3 s6Step121HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step121HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step121HeadFv_Outgoing : rowsOwned s6Step121HeadFvAfter [s6Step121HeadFvOut] :=
  hmrRows_owned_drop s6Step121HeadFvAfter [s6Step121HeadGOut,s6Step121HeadFOut,s6Step121HeadGvOut,s6Step121HeadFvOut] 3 s6Step121HeadBank_outgoingOwned

private theorem s6Step121HeadFv_distinct : (s6Step121HeadFvRow.sign::s6Step121HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121HeadFv_owned : (s6Step121HeadFvRow.sign::s6Step121HeadFvRow.payload).toFinset⊆s6Step121HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step121HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121HeadFv_reserved : s6Step121HeadFvBefore.reserve s6Step121HeadFvFresh.toFinset=some s6Step121HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step121HeadFvFresh,arenaWires]
  · norm_num [s6Step121HeadFvBefore,s6Step121HeadGvAfter,s6Step121HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step121HeadFvAfter,s6Step121HeadFvBefore,s6Step121HeadGvAfter,s6Step121HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step121HeadFv_checked : planRowResizeLog s6Step121HeadFvBefore s6Step121HeadFvRow 76 s6Step121HeadFvFresh=
    some (s6Step121HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879, 796],776⟩,growRow 776 s6Step121HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step121HeadFvBefore s6Step121HeadFvAfter s6Step121HeadFvRow 76 s6Step121HeadFvFresh
    s6Step121HeadFv_distinct s6Step121HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step121HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step121HeadFvRow.payload++s6Step121HeadFvFresh) s6Step121HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879, 796],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step121HeadG_Incoming : rowsOwned s6Step121HeadGBefore [s6Step121HeadGRow,s6Step121HeadFRow,s6Step121HeadGvRow,s6Step121HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step121HeadGRow,s6Step121HeadFRow,s6Step121HeadGvRow,s6Step121HeadFvRow] 0 s6Step121HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step121HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step121HeadG_Outgoing : rowsOwned s6Step121HeadFvAfter [s6Step121HeadGOut,s6Step121HeadFOut,s6Step121HeadGvOut,s6Step121HeadFvOut] :=
  hmrRows_owned_drop s6Step121HeadFvAfter [s6Step121HeadGOut,s6Step121HeadFOut,s6Step121HeadGvOut,s6Step121HeadFvOut] 0 s6Step121HeadBank_outgoingOwned

private theorem s6Step121HeadG_distinct : (s6Step121HeadGRow.sign::s6Step121HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121HeadG_owned : (s6Step121HeadGRow.sign::s6Step121HeadGRow.payload).toFinset⊆s6Step121HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step121HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121HeadG_reserved : s6Step121HeadGBefore.reserve s6Step121HeadGFresh.toFinset=some s6Step121HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step121HeadGFresh,arenaWires]
  · norm_num [s6Step121HeadGBefore,s6Step121HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step121HeadGAfter,s6Step121HeadGBefore,s6Step121HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step121HeadG_checked : planRowResizeLog s6Step121HeadGBefore s6Step121HeadGRow 211 s6Step121HeadGFresh=
    some (s6Step121HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 880, 875, 882],777⟩,growRow 777 s6Step121HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step121HeadGBefore s6Step121HeadGAfter s6Step121HeadGRow 211 s6Step121HeadGFresh
    s6Step121HeadG_distinct s6Step121HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step121HeadG_reserved
  have rowEq : WindowRow.mk (s6Step121HeadGRow.payload++s6Step121HeadGFresh) s6Step121HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 880, 875, 882],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step121HeadGvBefore : Arena := s6Step121HeadFAfter

private theorem s6Step121HeadGv_Incoming : rowsOwned s6Step121HeadGvBefore [s6Step121HeadGvRow,s6Step121HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step121HeadGRow,s6Step121HeadFRow,s6Step121HeadGvRow,s6Step121HeadFvRow] 2 s6Step121HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step121HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step121HeadGv_Outgoing : rowsOwned s6Step121HeadFvAfter [s6Step121HeadGvOut,s6Step121HeadFvOut] :=
  hmrRows_owned_drop s6Step121HeadFvAfter [s6Step121HeadGOut,s6Step121HeadFOut,s6Step121HeadGvOut,s6Step121HeadFvOut] 2 s6Step121HeadBank_outgoingOwned

private theorem s6Step121HeadGv_distinct : (s6Step121HeadGvRow.sign::s6Step121HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step121HeadGv_owned : (s6Step121HeadGvRow.sign::s6Step121HeadGvRow.payload).toFinset⊆s6Step121HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step121HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step121HeadGv_reserved : s6Step121HeadGvBefore.reserve s6Step121HeadGvFresh.toFinset=some s6Step121HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step121HeadGvFresh,arenaWires]
  · norm_num [s6Step121HeadGvBefore,s6Step121HeadFAfter,s6Step121HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step121HeadGvAfter,s6Step121HeadGvBefore,s6Step121HeadFAfter,s6Step121HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step121HeadGv_checked : planRowResizeLog s6Step121HeadGvBefore s6Step121HeadGvRow 76 s6Step121HeadGvFresh=
    some (s6Step121HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 888, 865],775⟩,growRow 775 s6Step121HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step121HeadGvBefore s6Step121HeadGvAfter s6Step121HeadGvRow 76 s6Step121HeadGvFresh
    s6Step121HeadGv_distinct s6Step121HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step121HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step121HeadGvRow.payload++s6Step121HeadGvFresh) s6Step121HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 888, 865],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step121HeadBank_rows : planWindowRowsLog s6Step121HeadGBefore [(s6Step121HeadGRow,211),(s6Step121HeadFRow,211),(s6Step121HeadGvRow,76),(s6Step121HeadFvRow,76)] [s6Step121HeadGFresh,s6Step121HeadFFresh,s6Step121HeadGvFresh,s6Step121HeadFvFresh]=
    some (s6Step121HeadFvAfter,[s6Step121HeadGOut,s6Step121HeadFOut,s6Step121HeadGvOut,s6Step121HeadFvOut],(growRow 777 s6Step121HeadGFresh ++ (growRow 795 s6Step121HeadFFresh ++ (growRow 775 s6Step121HeadGvFresh ++ (growRow 776 s6Step121HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step121HeadFvAfter [] []=some (s6Step121HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step121HeadFvBefore s6Step121HeadFvAfter s6Step121HeadFvAfter
    s6Step121HeadFvRow s6Step121HeadFvOut 76 s6Step121HeadFvFresh [] [] []
    (growRow 776 s6Step121HeadFvFresh) ([]) s6Step121HeadFv_Incoming s6Step121HeadFv_checked h4 s6Step121HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step121HeadGvBefore s6Step121HeadGvAfter s6Step121HeadFvAfter
    s6Step121HeadGvRow s6Step121HeadGvOut 76 s6Step121HeadGvFresh [(s6Step121HeadFvRow,76)] [s6Step121HeadFvFresh] [s6Step121HeadFvOut]
    (growRow 775 s6Step121HeadGvFresh) ((growRow 776 s6Step121HeadFvFresh ++ [])) s6Step121HeadGv_Incoming s6Step121HeadGv_checked h3 s6Step121HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step121HeadFBefore s6Step121HeadFAfter s6Step121HeadFvAfter
    s6Step121HeadFRow s6Step121HeadFOut 211 s6Step121HeadFFresh [(s6Step121HeadGvRow,76),(s6Step121HeadFvRow,76)] [s6Step121HeadGvFresh,s6Step121HeadFvFresh] [s6Step121HeadGvOut,s6Step121HeadFvOut]
    (growRow 795 s6Step121HeadFFresh) ((growRow 775 s6Step121HeadGvFresh ++ (growRow 776 s6Step121HeadFvFresh ++ []))) s6Step121HeadF_Incoming s6Step121HeadF_checked h2 s6Step121HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step121HeadGBefore s6Step121HeadGAfter s6Step121HeadFvAfter
    s6Step121HeadGRow s6Step121HeadGOut 211 s6Step121HeadGFresh [(s6Step121HeadFRow,211),(s6Step121HeadGvRow,76),(s6Step121HeadFvRow,76)] [s6Step121HeadFFresh,s6Step121HeadGvFresh,s6Step121HeadFvFresh] [s6Step121HeadFOut,s6Step121HeadGvOut,s6Step121HeadFvOut]
    (growRow 777 s6Step121HeadGFresh) ((growRow 795 s6Step121HeadFFresh ++ (growRow 775 s6Step121HeadGvFresh ++ (growRow 776 s6Step121HeadFvFresh ++ [])))) s6Step121HeadG_Incoming s6Step121HeadG_checked h1 s6Step121HeadG_Outgoing
  exact h0

private theorem s6Step121HeadBank_checked : compileHmrBankResizeLog .headroom s6Step121HeadGBefore ⟨s6Step121HeadFRow,s6Step121HeadGRow,s6Step121HeadFvRow,s6Step121HeadGvRow⟩ ⟨211,211,76,76⟩ [s6Step121HeadGFresh,s6Step121HeadFFresh,s6Step121HeadGvFresh,s6Step121HeadFvFresh]=
    some (s6Step121HeadFvAfter,⟨s6Step121HeadFOut,s6Step121HeadGOut,s6Step121HeadFvOut,s6Step121HeadGvOut⟩,(growRow 777 s6Step121HeadGFresh ++ (growRow 795 s6Step121HeadFFresh ++ (growRow 775 s6Step121HeadGvFresh ++ (growRow 776 s6Step121HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step121HeadBank_rows]
  rfl

private theorem s6Step121Front_checked : compileHmrSourceFrontLog s6Step121EntryFBefore s6Step121FrontBank 210 75 ⟨210,207,74,74⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step121FrontLog=some s6Step121FrontPlan := by
  have pairEq : s6Step121FrontPair=⟨s6Step121HeadFRow,s6Step121HeadGRow,s6Step121HeadFvRow,s6Step121HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step121FrontHead=⟨s6Step121ExitFRow,s6Step121ExitGRow,s6Step121ExitFvRow,s6Step121ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step121Add0A=s6Step121FrontHead.f.wires := by decide +kernel
  have gEq : s6Step121Add0B=s6Step121FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step121Add1A=s6Step121FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step121Add1B=s6Step121FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step121EntryFBefore s6Step121FrontBank 210 75 ⟨210,207,74,74⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step121FrontLog s6Step121FrontPlan
  · exact s6Step121Front_entry
  · exact s6Step121EntryBank_checked
  · exact s6Step121Front_sigma
  · rfl
  · exact s6Step121Front_branch
  · rfl
  · simpa only [s6Step121FrontPlan,pairEq] using s6Step121HeadBank_checked
  · simpa only [s6Step121FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step121F4_checked
  · exact s6Step121Counter_checked
  · rfl
  · simpa only [s6Step121FrontPlan,headEq] using s6Step121ExitBank_checked

private theorem s6Step121Complete_explicit_checked : compileHmrEarlyStepLog s6Step121EntryFBefore s6Step121FrontBank 210 75 ⟨210,207,74,74⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step121CompleteLog=some s6Step121CompletePlan := by
  let Q := s6Step121EarlyControlPlan
  have hq := s6Step121EarlyControl_plan_checked
  have fv1 : s6Step121CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step121CompleteOut.fv.payload[2]?.getD s6Step121CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step121CompleteOut.fv.payload[3]?.getD s6Step121CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step121CompleteOut.fv.payload[4]?.getD s6Step121CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step121EntryFBefore s6Step121EarlyControlArena s6Step121FrontBank 210 75 ⟨210,207,74,74⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step121CompleteLog s6Step121FrontPlan Q
    s6Step121Front_checked s6Step121Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step121Complete_owned s6Step121Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step121EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 868 s6Step121CompleteOut.fv.second (s6Step121CompleteOut.fv.payload[2]?.getD s6Step121CompleteOut.fv.sign) (s6Step121CompleteOut.fv.payload[3]?.getD s6Step121CompleteOut.fv.sign) (s6Step121CompleteOut.fv.payload[4]?.getD s6Step121CompleteOut.fv.sign) 833 37 s6Step121EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep121Arena : Arena := s6Step121EntryFBefore
def s6PrivateStep121Bank : WindowBank := s6Step121FrontBank
def s6PrivateStep121Spec : HmrSourceWalkStepLog := ⟨210,75,⟨210,207,74,74⟩,37,.early s6Step121CompleteLog⟩
def s6PrivateStep121Plan : HmrSourceStepPlan := .early s6Step121CompletePlan
theorem s6PrivateStep121_source : s6PrivateStep121Spec=s6ObservedLogs112[9] := rfl
theorem s6PrivateStep121_checked : compileHmrSourceStepLog s6PrivateStep121Arena s6PrivateStep121Bank
    s6PrivateStep121Spec.fgWidth s6PrivateStep121Spec.vWidth s6PrivateStep121Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 121 s6PrivateStep121Spec.need none s6PrivateStep121Spec.log=some s6PrivateStep121Plan := by
  change compileHmrSourceStepLog s6Step121EntryFBefore s6Step121FrontBank 210 75 ⟨210,207,74,74⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 121 37 none (.early s6Step121CompleteLog)=some (.early s6Step121CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 121<498)]
  rw [s6Step121Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
