import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep117
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

private def s6Step119CompleteMoves : List (Wire × Wire) := [(875,209)]

private def s6Step119EarlyControlLog : HmrEarlyControlLog := ⟨[875, 880, 813, 833, 868],[879],[865],[796, 891, 903, 791, 825, 836],[]⟩

private def s6Step119FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[833], [813], [880], [778]],[[], [], [], []]⟩,[888],[882],[868],[879],[865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[868, 879, 865, 796]⟩

private def s6Step119CompleteLog : HmrEarlyStepLog := ⟨s6Step119FrontLog,s6Step119CompleteMoves,s6Step119EarlyControlLog⟩

private def s6Step119ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step119ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩

private def s6Step119ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208],777⟩

private def s6Step119ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907],775⟩

private def s6Step119FrontOut : WindowBank := ⟨s6Step119ExitFOut,s6Step119ExitGOut,s6Step119ExitFvOut,s6Step119ExitGvOut⟩

private def s6Step119CompleteOut : WindowBank := s6Step119FrontOut.repacked s6Step119CompleteMoves

private def s6Step119EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step119EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step119EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step119EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step119EarlyControlPositiveArena,[879],s6Step119EarlyControlEqualityArena,[865],⟨⟨888,false⟩,[⟨⟨879,false⟩,865⟩]⟩⟩

private def s6Step119EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step119EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step119EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step119EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step119EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step119EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step119EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,875⟩,⟨⟨772,false⟩,880⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,833⟩,⟨⟨769,false⟩,868⟩]⟩

private def s6Step119EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step119EarlyControlZeroArena,s6Step119EarlyControlZeroPlan,s6Step119EarlyControlClassPlan,s6Step119EarlyControlFlagArena,s6Step119EarlyControlFittedArena,s6Step119EarlyControlHistoryArena,s6Step119EarlyControlSigmaArena,s6Step119EarlyControlOutputArena,s6Step119EarlyControlLog⟩

private def s6Step119CounterWork : List Wire := [868, 879, 865, 796]

private theorem s6Step119Counter_bounded : s6Step119CounterWork.toFinset⊆arenaWires := by norm_num [s6Step119CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step119HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step119CounterDuring : Arena := ⟨s6Step119HeadFvAfter.live∪s6Step119CounterWork.toFinset,Finset.union_subset s6Step119HeadFvAfter.bounded s6Step119Counter_bounded⟩

private def s6Step119EntryFFresh : List Wire := []

private def s6Step119EntryFvFresh : List Wire := []

private def s6Step119EntryGFresh : List Wire := []

private def s6Step119EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step119EntryGvAfter : Arena := s6Step119EntryFBefore

private def s6Step119EntryGvFresh : List Wire := []

private def s6Step119ExitFExtra : List Wire := [813]

private def s6Step119ExitGExtra : List Wire := [209, 833]

private def s6Step119ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step119ExitGvExtra : List Wire := [880]

private def s6Step119Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step119Add0Work : List Wire := [865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step119Add0_bounded : s6Step119Add0Work.toFinset⊆arenaWires := by
  have h : s6Step119Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step119Add0During : Arena := ⟨s6Step119Add0Arena.live∪s6Step119Add0Work.toFinset,Finset.union_subset s6Step119Add0Arena.bounded s6Step119Add0_bounded⟩

private def s6Step119Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step119Add1Work : List Wire := [865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step119Add1_bounded : s6Step119Add1Work.toFinset⊆arenaWires := by
  have h : s6Step119Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step119Add1During : Arena := ⟨s6Step119Add1Arena.live∪s6Step119Add1Work.toFinset,Finset.union_subset s6Step119Add1Arena.bounded s6Step119Add1_bounded⟩

private def s6Step119F4FlagArena : Arena := ⟨s6Step119HeadFvAfter.live∪{868},Finset.union_subset s6Step119HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step119F4Plan : HmrHybridF4Plan := ⟨s6Step119F4FlagArena,[868],s6Step119Add0Arena,[879],s6Step119Add0During,s6Step119Add0Work,s6Step119Add1During,s6Step119Add1Work⟩

private def s6Step119HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813],795⟩

private def s6Step119HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩

private def s6Step119HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 833],777⟩

private def s6Step119HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 880],775⟩

private def s6Step119FrontHead : WindowBank := ⟨s6Step119HeadFOut,s6Step119HeadGOut,s6Step119HeadFvOut,s6Step119HeadGvOut⟩

private def s6Step119EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step119EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803],776⟩

private def s6Step119EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209],777⟩

private def s6Step119EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907],775⟩

private def s6Step119FrontPair : WindowBank := ⟨s6Step119EntryFOut,s6Step119EntryGOut,s6Step119EntryFvOut,s6Step119EntryGvOut⟩

private def s6Step119FrontSigmaArena : Arena := ⟨s6Step119EntryGvAfter.live∪{888},Finset.union_subset s6Step119EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step119HeadFFresh : List Wire := [813]

private def s6Step119HeadFvFresh : List Wire := [778]

private def s6Step119HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step119HeadGFresh : List Wire := [833]

private def s6Step119HeadGvFresh : List Wire := [880]

private def s6Step119FrontPlan : HmrSourceFront := ⟨s6Step119EntryGvAfter,s6Step119FrontPair,(growRow 795 s6Step119EntryFFresh ++ (growRow 777 s6Step119EntryGFresh ++ (growRow 776 s6Step119EntryFvFresh ++ (growRow 775 s6Step119EntryGvFresh ++ [])))),s6Step119FrontSigmaArena,[888],s6Step119HeadGBefore,[882],
  s6Step119HeadFvAfter,s6Step119FrontHead,(growRow 777 s6Step119HeadGFresh ++ (growRow 795 s6Step119HeadFFresh ++ (growRow 775 s6Step119HeadGvFresh ++ (growRow 776 s6Step119HeadFvFresh ++ [])))),s6Step119F4Plan,s6Step119CounterDuring,s6Step119CounterWork,s6Step119ExitGvAfter,s6Step119FrontOut,(shrinkRow 777 s6Step119ExitGExtra ++ (shrinkRow 795 s6Step119ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step119ExitGvExtra ++ []))))⟩

private def s6Step119CompletePlan : HmrEarlyStepPlan := ⟨s6Step119FrontPlan,s6Step119EarlyControlArena,s6Step119EarlyControlPlan,s6Step119CompleteMoves⟩

private theorem s6Step119Complete_apart : List.Disjoint (s6Step119CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [888, 882, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step119CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[888, 882, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step119Complete_owned : (s6Step119CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step119EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step119EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step119CompleteMoveArena : Arena := ⟨s6Step119ExitGvAfter.live∪{209},Finset.union_subset s6Step119ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step119Complete_repack : s6Step119ExitGvAfter.checkRepack s6Step119CompleteMoves=some s6Step119EarlyControlArena := by
  have owned : 875∈s6Step119ExitGvAfter.live := by norm_num [s6Step119ExitGvAfter,arenaWires]
  have reserve : s6Step119ExitGvAfter.reserve {209}=some s6Step119CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step119ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step119CompleteMoveArena.retireSet {875}=s6Step119EarlyControlArena := by
    unfold Arena.retireSet s6Step119EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step119CompleteMoveArena,s6Step119ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step119CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step119CompleteMoveArena.retireSet {875}).checkRepack []=some s6Step119EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step119EarlyControl_branchOwned : ([882] : List Wire).toFinset⊆s6Step119EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step119EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step119EarlyControl_branch : compileHmrBranchRetirement s6Step119EarlyControlSigmaArena 882=some s6Step119EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step119EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step119EarlyControlSigmaArena s6Step119EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [882] rfl rfl
    decide +kernel

private theorem s6Step119EarlyControl_classEqualityBorrow : s6Step119EarlyControlPositiveArena.checkBorrow (([888, 879] : List Wire).length-1) s6Step119EarlyControlLog.classWork=some s6Step119EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step119EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step119EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step119EarlyControlEqualityArena,s6Step119EarlyControlPositiveArena,s6Step119EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step119EarlyControl_classEqualityOwned : ([888, 879] : List Wire).toFinset⊆s6Step119EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step119EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119EarlyControl_classEquality : compileHmrEqualityLog s6Step119EarlyControlPositiveArena [888, 879] 0 s6Step119EarlyControlLog.classWork=some (s6Step119EarlyControlEqualityArena,s6Step119EarlyControlLog.classWork,s6Step119EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step119EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step119EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step119EarlyControl_classOwned : ([769, 868, 888] : List Wire).toFinset⊆s6Step119EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step119EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119EarlyControl_positiveBorrow : s6Step119EarlyControlZeroArena.checkBorrow (1) s6Step119EarlyControlLog.positiveWork=some s6Step119EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step119EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step119EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step119EarlyControlPositiveArena,s6Step119EarlyControlZeroArena,s6Step119EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step119EarlyControl_class : compileHmrSourceClassLog s6Step119EarlyControlZeroArena false 769 s6Step119EarlyControlZeroPlan.top 0 888 s6Step119EarlyControlLog.positiveWork s6Step119EarlyControlLog.classWork=some s6Step119EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step119EarlyControlClassPlan s6Step119EarlyControlZeroArena false 769 s6Step119EarlyControlZeroPlan.top 0 888
  constructor
  · decide +kernel
  · exact s6Step119EarlyControl_classOwned
  · exact s6Step119EarlyControl_positiveBorrow
  · exact s6Step119EarlyControl_classEquality

private theorem s6Step119EarlyControl_entryRecordOwned : ([882, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step119EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step119EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119EarlyControl_entrySigmaOwned : ([888, 254] : List Wire).toFinset⊆s6Step119EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step119EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119EarlyControl_fitBorrow : s6Step119EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step119EarlyControlLog.recordFresh=some s6Step119EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step119EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step119EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step119EarlyControlFittedArena,s6Step119EarlyControlFlagArena,s6Step119EarlyControlLog,arenaWires]

private theorem s6Step119EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step119EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step119EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119EarlyControl_fit : compileHmrRecordGrowLog s6Step119EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step119EarlyControlLog.recordFresh=some s6Step119EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step119EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step119EarlyControl_fitBorrow

private theorem s6Step119EarlyControl_flagsBorrow : s6Step119EarlyControlEqualityArena.checkBorrow (6) s6Step119EarlyControlLog.flagWork=some s6Step119EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step119EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step119EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step119EarlyControlFlagArena,s6Step119EarlyControlEqualityArena,s6Step119EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step119EarlyControl_flagsOwned : ([865, 253, 252, 251] : List Wire).toFinset⊆s6Step119EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step119EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119EarlyControl_flags : compileHmrFlagsLog s6Step119EarlyControlClassPlan.equalityArena s6Step119EarlyControlClassPlan.equality.top 253 252 251 s6Step119EarlyControlLog.flagWork=some s6Step119EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step119EarlyControl_flagsOwned⟩
  · exact s6Step119EarlyControl_flagsBorrow

private theorem s6Step119EarlyControl_historyBorrow : s6Step119EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step119EarlyControlLog.recordFresh=some s6Step119EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step119EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step119EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step119EarlyControlHistoryArena,s6Step119EarlyControlArena,s6Step119EarlyControlLog,arenaWires]

private theorem s6Step119EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step119EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step119EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119EarlyControl_history : compileHmrRecordGrowLog s6Step119EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step119EarlyControlLog.recordFresh=some s6Step119EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step119EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step119EarlyControl_historyBorrow

private theorem s6Step119EarlyControl_sigmaOwned : ([254, 888] : List Wire).toFinset⊆s6Step119EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step119EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119EarlyControl_sigmaReleaseOwned : ([888] : List Wire).toFinset⊆s6Step119EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step119EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119EarlyControl_sigmaRelease : s6Step119EarlyControlHistoryArena.release {888} (fun _ => false)=some s6Step119EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step119EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step119EarlyControlHistoryArena s6Step119EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [888] rfl rfl
    decide +kernel

private theorem s6Step119EarlyControl_sigma : compileHmrSigmaDropLog s6Step119EarlyControlHistoryArena false 0 0 254 888 []=some s6Step119EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step119EarlyControl_sigmaOwned⟩
  · exact s6Step119EarlyControl_sigmaRelease

private theorem s6Step119EarlyControl_zeroBorrow : s6Step119EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step119EarlyControlLog.zeroWork=some s6Step119EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step119EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step119EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step119EarlyControlZeroArena,s6Step119EarlyControlArena,s6Step119EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step119EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step119EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step119EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119EarlyControl_zero : compileHmrEqualityLog s6Step119EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step119EarlyControlLog.zeroWork=some (s6Step119EarlyControlZeroArena,s6Step119EarlyControlLog.zeroWork,s6Step119EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step119EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step119EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step119EarlyControl_logged : s6Step119EarlyControlPlan.Logged s6Step119EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 888 254 253 252 251 882 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step119EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step119EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step119EarlyControl_zero
  · exact s6Step119EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step119EarlyControl_flags
  · exact s6Step119EarlyControl_fit
  · exact s6Step119EarlyControl_history
  · exact s6Step119EarlyControl_sigma
  · exact s6Step119EarlyControl_branch

private theorem s6Step119EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step119EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 888 254 253 252 251 882 37 s6Step119EarlyControlLog=some s6Step119EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step119EarlyControlPlan s6Step119EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 888 254 253 252 251 882 37 s6Step119EarlyControl_logged

private def s6Step119EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step119EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803],776⟩

private def s6Step119EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209],777⟩

private def s6Step119EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907],775⟩

private def s6Step119FrontBank : WindowBank := ⟨s6Step119EntryFRow,s6Step119EntryGRow,s6Step119EntryFvRow,s6Step119EntryGvRow⟩

private def s6Step119Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813, 795]

private def s6Step119Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 833, 777]

private def s6Step119Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 776]

private def s6Step119Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 880, 775]

private theorem s6Step119Counter_apart : Disjoint s6Step119HeadFvAfter.live s6Step119CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step119HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119Counter_borrowed : s6Step119HeadFvAfter.checkBorrow 4 s6Step119CounterWork=some s6Step119CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step119HeadFvAfter s6Step119CounterDuring s6Step119CounterWork.toFinset s6Step119Counter_bounded s6Step119Counter_apart rfl

private theorem s6Step119Counter_owned : (888::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step119HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step119HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119Counter_checked : compileHmrCounterStepLog s6Step119HeadFvAfter true 888 [774, 773, 772, 771, 770, 769] s6Step119CounterWork=some s6Step119CounterDuring := by
  have owned : ∀q∈888::[774, 773, 772, 771, 770, 769],q∈s6Step119HeadFvAfter.live := fun q hq => s6Step119Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step119Counter_borrowed

private def s6Step119EntryFAfter : Arena := s6Step119EntryFBefore

private theorem s6Step119EntryBank_incomingDistinct : ([s6Step119EntryFRow,s6Step119EntryGRow,s6Step119EntryFvRow,s6Step119EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119EntryF_Incoming : rowsOwned s6Step119EntryFBefore [s6Step119EntryFRow,s6Step119EntryGRow,s6Step119EntryFvRow,s6Step119EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step119EntryFRow,s6Step119EntryGRow,s6Step119EntryFvRow,s6Step119EntryGvRow] 0 s6Step119EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step119EntryFBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step119EntryBank_outgoingOwned : rowsOwned s6Step119EntryGvAfter [s6Step119EntryFOut,s6Step119EntryGOut,s6Step119EntryFvOut,s6Step119EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step119EntryGvAfter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step119EntryF_Outgoing : rowsOwned s6Step119EntryGvAfter [s6Step119EntryFOut,s6Step119EntryGOut,s6Step119EntryFvOut,s6Step119EntryGvOut] :=
  hmrRows_owned_drop s6Step119EntryGvAfter [s6Step119EntryFOut,s6Step119EntryGOut,s6Step119EntryFvOut,s6Step119EntryGvOut] 0 s6Step119EntryBank_outgoingOwned

private theorem s6Step119EntryF_distinct : (s6Step119EntryFRow.sign::s6Step119EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119EntryF_owned : (s6Step119EntryFRow.sign::s6Step119EntryFRow.payload).toFinset⊆s6Step119EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step119EntryFBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step119EntryF_reserved : s6Step119EntryFBefore.reserve s6Step119EntryFFresh.toFinset=some s6Step119EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step119EntryFFresh,arenaWires]
  · norm_num [s6Step119EntryFBefore,s6Step119EntryFFresh,arenaWires]
  · simp only [s6Step119EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step119EntryF_checked : planRowResizeLog s6Step119EntryFBefore s6Step119EntryFRow 210 s6Step119EntryFFresh=
    some (s6Step119EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩,growRow 795 s6Step119EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step119EntryFBefore s6Step119EntryFAfter s6Step119EntryFRow 210 s6Step119EntryFFresh
    s6Step119EntryF_distinct s6Step119EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step119EntryF_reserved
  have rowEq : WindowRow.mk (s6Step119EntryFRow.payload++s6Step119EntryFFresh) s6Step119EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step119EntryFvAfter : Arena := s6Step119EntryFBefore

private def s6Step119EntryFvBefore : Arena := s6Step119EntryFBefore

private theorem s6Step119EntryFv_Incoming : rowsOwned s6Step119EntryFvBefore [s6Step119EntryFvRow,s6Step119EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step119EntryFRow,s6Step119EntryGRow,s6Step119EntryFvRow,s6Step119EntryGvRow] 2 s6Step119EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step119EntryFvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step119EntryFv_Outgoing : rowsOwned s6Step119EntryGvAfter [s6Step119EntryFvOut,s6Step119EntryGvOut] :=
  hmrRows_owned_drop s6Step119EntryGvAfter [s6Step119EntryFOut,s6Step119EntryGOut,s6Step119EntryFvOut,s6Step119EntryGvOut] 2 s6Step119EntryBank_outgoingOwned

private theorem s6Step119EntryFv_distinct : (s6Step119EntryFvRow.sign::s6Step119EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119EntryFv_owned : (s6Step119EntryFvRow.sign::s6Step119EntryFvRow.payload).toFinset⊆s6Step119EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step119EntryFvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step119EntryFv_reserved : s6Step119EntryFvBefore.reserve s6Step119EntryFvFresh.toFinset=some s6Step119EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step119EntryFvFresh,arenaWires]
  · norm_num [s6Step119EntryFvBefore,s6Step119EntryFBefore,s6Step119EntryFvFresh,arenaWires]
  · simp only [s6Step119EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step119EntryFv_checked : planRowResizeLog s6Step119EntryFvBefore s6Step119EntryFvRow 73 s6Step119EntryFvFresh=
    some (s6Step119EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803],776⟩,growRow 776 s6Step119EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step119EntryFvBefore s6Step119EntryFvAfter s6Step119EntryFvRow 73 s6Step119EntryFvFresh
    s6Step119EntryFv_distinct s6Step119EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step119EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step119EntryFvRow.payload++s6Step119EntryFvFresh) s6Step119EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step119EntryGAfter : Arena := s6Step119EntryFBefore

private def s6Step119EntryGBefore : Arena := s6Step119EntryFBefore

private theorem s6Step119EntryG_Incoming : rowsOwned s6Step119EntryGBefore [s6Step119EntryGRow,s6Step119EntryFvRow,s6Step119EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step119EntryFRow,s6Step119EntryGRow,s6Step119EntryFvRow,s6Step119EntryGvRow] 1 s6Step119EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step119EntryGBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step119EntryG_Outgoing : rowsOwned s6Step119EntryGvAfter [s6Step119EntryGOut,s6Step119EntryFvOut,s6Step119EntryGvOut] :=
  hmrRows_owned_drop s6Step119EntryGvAfter [s6Step119EntryFOut,s6Step119EntryGOut,s6Step119EntryFvOut,s6Step119EntryGvOut] 1 s6Step119EntryBank_outgoingOwned

private theorem s6Step119EntryG_distinct : (s6Step119EntryGRow.sign::s6Step119EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119EntryG_owned : (s6Step119EntryGRow.sign::s6Step119EntryGRow.payload).toFinset⊆s6Step119EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step119EntryGBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step119EntryG_reserved : s6Step119EntryGBefore.reserve s6Step119EntryGFresh.toFinset=some s6Step119EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step119EntryGFresh,arenaWires]
  · norm_num [s6Step119EntryGBefore,s6Step119EntryFBefore,s6Step119EntryGFresh,arenaWires]
  · simp only [s6Step119EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step119EntryG_checked : planRowResizeLog s6Step119EntryGBefore s6Step119EntryGRow 210 s6Step119EntryGFresh=
    some (s6Step119EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209],777⟩,growRow 777 s6Step119EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step119EntryGBefore s6Step119EntryGAfter s6Step119EntryGRow 210 s6Step119EntryGFresh
    s6Step119EntryG_distinct s6Step119EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step119EntryG_reserved
  have rowEq : WindowRow.mk (s6Step119EntryGRow.payload++s6Step119EntryGFresh) s6Step119EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step119EntryGvBefore : Arena := s6Step119EntryFBefore

private theorem s6Step119EntryGv_Incoming : rowsOwned s6Step119EntryGvBefore [s6Step119EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step119EntryFRow,s6Step119EntryGRow,s6Step119EntryFvRow,s6Step119EntryGvRow] 3 s6Step119EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step119EntryGvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step119EntryGv_Outgoing : rowsOwned s6Step119EntryGvAfter [s6Step119EntryGvOut] :=
  hmrRows_owned_drop s6Step119EntryGvAfter [s6Step119EntryFOut,s6Step119EntryGOut,s6Step119EntryFvOut,s6Step119EntryGvOut] 3 s6Step119EntryBank_outgoingOwned

private theorem s6Step119EntryGv_distinct : (s6Step119EntryGvRow.sign::s6Step119EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119EntryGv_owned : (s6Step119EntryGvRow.sign::s6Step119EntryGvRow.payload).toFinset⊆s6Step119EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step119EntryGvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step119EntryGv_reserved : s6Step119EntryGvBefore.reserve s6Step119EntryGvFresh.toFinset=some s6Step119EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step119EntryGvFresh,arenaWires]
  · norm_num [s6Step119EntryGvBefore,s6Step119EntryFBefore,s6Step119EntryGvFresh,arenaWires]
  · simp only [s6Step119EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step119EntryGv_checked : planRowResizeLog s6Step119EntryGvBefore s6Step119EntryGvRow 73 s6Step119EntryGvFresh=
    some (s6Step119EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907],775⟩,growRow 775 s6Step119EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step119EntryGvBefore s6Step119EntryGvAfter s6Step119EntryGvRow 73 s6Step119EntryGvFresh
    s6Step119EntryGv_distinct s6Step119EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step119EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step119EntryGvRow.payload++s6Step119EntryGvFresh) s6Step119EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step119EntryBank_rows : planWindowRowsLog s6Step119EntryFBefore [(s6Step119EntryFRow,210),(s6Step119EntryGRow,210),(s6Step119EntryFvRow,73),(s6Step119EntryGvRow,73)] [s6Step119EntryFFresh,s6Step119EntryGFresh,s6Step119EntryFvFresh,s6Step119EntryGvFresh]=
    some (s6Step119EntryGvAfter,[s6Step119EntryFOut,s6Step119EntryGOut,s6Step119EntryFvOut,s6Step119EntryGvOut],(growRow 795 s6Step119EntryFFresh ++ (growRow 777 s6Step119EntryGFresh ++ (growRow 776 s6Step119EntryFvFresh ++ (growRow 775 s6Step119EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step119EntryGvAfter [] []=some (s6Step119EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step119EntryGvBefore s6Step119EntryGvAfter s6Step119EntryGvAfter
    s6Step119EntryGvRow s6Step119EntryGvOut 73 s6Step119EntryGvFresh [] [] []
    (growRow 775 s6Step119EntryGvFresh) ([]) s6Step119EntryGv_Incoming s6Step119EntryGv_checked h4 s6Step119EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step119EntryFvBefore s6Step119EntryFvAfter s6Step119EntryGvAfter
    s6Step119EntryFvRow s6Step119EntryFvOut 73 s6Step119EntryFvFresh [(s6Step119EntryGvRow,73)] [s6Step119EntryGvFresh] [s6Step119EntryGvOut]
    (growRow 776 s6Step119EntryFvFresh) ((growRow 775 s6Step119EntryGvFresh ++ [])) s6Step119EntryFv_Incoming s6Step119EntryFv_checked h3 s6Step119EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step119EntryGBefore s6Step119EntryGAfter s6Step119EntryGvAfter
    s6Step119EntryGRow s6Step119EntryGOut 210 s6Step119EntryGFresh [(s6Step119EntryFvRow,73),(s6Step119EntryGvRow,73)] [s6Step119EntryFvFresh,s6Step119EntryGvFresh] [s6Step119EntryFvOut,s6Step119EntryGvOut]
    (growRow 777 s6Step119EntryGFresh) ((growRow 776 s6Step119EntryFvFresh ++ (growRow 775 s6Step119EntryGvFresh ++ []))) s6Step119EntryG_Incoming s6Step119EntryG_checked h2 s6Step119EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step119EntryFBefore s6Step119EntryFAfter s6Step119EntryGvAfter
    s6Step119EntryFRow s6Step119EntryFOut 210 s6Step119EntryFFresh [(s6Step119EntryGRow,210),(s6Step119EntryFvRow,73),(s6Step119EntryGvRow,73)] [s6Step119EntryGFresh,s6Step119EntryFvFresh,s6Step119EntryGvFresh] [s6Step119EntryGOut,s6Step119EntryFvOut,s6Step119EntryGvOut]
    (growRow 795 s6Step119EntryFFresh) ((growRow 777 s6Step119EntryGFresh ++ (growRow 776 s6Step119EntryFvFresh ++ (growRow 775 s6Step119EntryGvFresh ++ [])))) s6Step119EntryF_Incoming s6Step119EntryF_checked h1 s6Step119EntryF_Outgoing
  exact h0

private theorem s6Step119EntryBank_checked : compileHmrBankResizeLog .entry s6Step119EntryFBefore ⟨s6Step119EntryFRow,s6Step119EntryGRow,s6Step119EntryFvRow,s6Step119EntryGvRow⟩ ⟨210,210,73,73⟩ [s6Step119EntryFFresh,s6Step119EntryGFresh,s6Step119EntryFvFresh,s6Step119EntryGvFresh]=
    some (s6Step119EntryGvAfter,⟨s6Step119EntryFOut,s6Step119EntryGOut,s6Step119EntryFvOut,s6Step119EntryGvOut⟩,(growRow 795 s6Step119EntryFFresh ++ (growRow 777 s6Step119EntryGFresh ++ (growRow 776 s6Step119EntryFvFresh ++ (growRow 775 s6Step119EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step119EntryBank_rows]
  rfl

private def s6Step119ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step119ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step119ExitFBefore : Arena := s6Step119ExitGAfter

private def s6Step119ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813],795⟩

private def s6Step119ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩

private def s6Step119ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 833],777⟩

private def s6Step119ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 880],775⟩

private theorem s6Step119ExitBank_incomingDistinct : ([s6Step119ExitGRow,s6Step119ExitFRow,s6Step119ExitFvRow,s6Step119ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119ExitF_Incoming : rowsOwned s6Step119ExitFBefore [s6Step119ExitFRow,s6Step119ExitFvRow,s6Step119ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step119ExitGRow,s6Step119ExitFRow,s6Step119ExitFvRow,s6Step119ExitGvRow] 1 s6Step119ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step119ExitFBefore (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step119ExitBank_outgoingOwned : rowsOwned s6Step119ExitGvAfter [s6Step119ExitGOut,s6Step119ExitFOut,s6Step119ExitFvOut,s6Step119ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step119ExitGvAfter (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step119ExitF_Outgoing : rowsOwned s6Step119ExitGvAfter [s6Step119ExitFOut,s6Step119ExitFvOut,s6Step119ExitGvOut] :=
  hmrRows_owned_drop s6Step119ExitGvAfter [s6Step119ExitGOut,s6Step119ExitFOut,s6Step119ExitFvOut,s6Step119ExitGvOut] 1 s6Step119ExitBank_outgoingOwned

private theorem s6Step119ExitF_distinct : (s6Step119ExitFRow.sign::s6Step119ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119ExitF_owned : (s6Step119ExitFRow.sign::s6Step119ExitFRow.payload).toFinset⊆s6Step119ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step119ExitFBefore (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119ExitF_retired : s6Step119ExitFBefore.retireSet s6Step119ExitFExtra.toFinset=s6Step119ExitFAfter := by
  unfold Arena.retireSet s6Step119ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step119ExitFBefore,s6Step119ExitGAfter,s6Step119ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step119ExitF_checked : planRowResizeLog s6Step119ExitFBefore s6Step119ExitFRow 210 []=
    some (s6Step119ExitFAfter,s6Step119ExitFOut,shrinkRow 795 s6Step119ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step119ExitFBefore s6Step119ExitFRow 210 s6Step119ExitF_distinct s6Step119ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step119ExitFRow.payload.take 210) s6Step119ExitFRow.sign=s6Step119ExitFOut := by decide +kernel
  have hi : s6Step119ExitFRow.payload.drop 210=s6Step119ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step119ExitF_retired] at result
  exact result

private def s6Step119ExitFvAfter : Arena := s6Step119ExitFAfter

private def s6Step119ExitFvBefore : Arena := s6Step119ExitFAfter

private theorem s6Step119ExitFv_Incoming : rowsOwned s6Step119ExitFvBefore [s6Step119ExitFvRow,s6Step119ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step119ExitGRow,s6Step119ExitFRow,s6Step119ExitFvRow,s6Step119ExitGvRow] 2 s6Step119ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step119ExitFvBefore (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step119ExitFv_Outgoing : rowsOwned s6Step119ExitGvAfter [s6Step119ExitFvOut,s6Step119ExitGvOut] :=
  hmrRows_owned_drop s6Step119ExitGvAfter [s6Step119ExitGOut,s6Step119ExitFOut,s6Step119ExitFvOut,s6Step119ExitGvOut] 2 s6Step119ExitBank_outgoingOwned

private theorem s6Step119ExitFv_distinct : (s6Step119ExitFvRow.sign::s6Step119ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119ExitFv_owned : (s6Step119ExitFvRow.sign::s6Step119ExitFvRow.payload).toFinset⊆s6Step119ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step119ExitFvBefore (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119ExitFv_reserved : s6Step119ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step119ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step119ExitFv_checked : planRowResizeLog s6Step119ExitFvBefore s6Step119ExitFvRow 74 []=
    some (s6Step119ExitFvAfter,s6Step119ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step119ExitFvBefore s6Step119ExitFvAfter s6Step119ExitFvRow 74 []
    s6Step119ExitFv_distinct s6Step119ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step119ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step119ExitFvRow.payload++[]) s6Step119ExitFvRow.sign=s6Step119ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step119ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step119ExitG_Incoming : rowsOwned s6Step119ExitGBefore [s6Step119ExitGRow,s6Step119ExitFRow,s6Step119ExitFvRow,s6Step119ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step119ExitGRow,s6Step119ExitFRow,s6Step119ExitFvRow,s6Step119ExitGvRow] 0 s6Step119ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step119ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step119ExitG_Outgoing : rowsOwned s6Step119ExitGvAfter [s6Step119ExitGOut,s6Step119ExitFOut,s6Step119ExitFvOut,s6Step119ExitGvOut] :=
  hmrRows_owned_drop s6Step119ExitGvAfter [s6Step119ExitGOut,s6Step119ExitFOut,s6Step119ExitFvOut,s6Step119ExitGvOut] 0 s6Step119ExitBank_outgoingOwned

private theorem s6Step119ExitG_distinct : (s6Step119ExitGRow.sign::s6Step119ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119ExitG_owned : (s6Step119ExitGRow.sign::s6Step119ExitGRow.payload).toFinset⊆s6Step119ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step119ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119ExitG_retired : s6Step119ExitGBefore.retireSet s6Step119ExitGExtra.toFinset=s6Step119ExitGAfter := by
  unfold Arena.retireSet s6Step119ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step119ExitGBefore,s6Step119ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step119ExitG_checked : planRowResizeLog s6Step119ExitGBefore s6Step119ExitGRow 209 []=
    some (s6Step119ExitGAfter,s6Step119ExitGOut,shrinkRow 777 s6Step119ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step119ExitGBefore s6Step119ExitGRow 209 s6Step119ExitG_distinct s6Step119ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step119ExitGRow.payload.take 209) s6Step119ExitGRow.sign=s6Step119ExitGOut := by decide +kernel
  have hi : s6Step119ExitGRow.payload.drop 209=s6Step119ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step119ExitG_retired] at result
  exact result

private def s6Step119ExitGvBefore : Arena := s6Step119ExitFAfter

private theorem s6Step119ExitGv_Incoming : rowsOwned s6Step119ExitGvBefore [s6Step119ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step119ExitGRow,s6Step119ExitFRow,s6Step119ExitFvRow,s6Step119ExitGvRow] 3 s6Step119ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step119ExitGvBefore (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step119ExitGv_Outgoing : rowsOwned s6Step119ExitGvAfter [s6Step119ExitGvOut] :=
  hmrRows_owned_drop s6Step119ExitGvAfter [s6Step119ExitGOut,s6Step119ExitFOut,s6Step119ExitFvOut,s6Step119ExitGvOut] 3 s6Step119ExitBank_outgoingOwned

private theorem s6Step119ExitGv_distinct : (s6Step119ExitGvRow.sign::s6Step119ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119ExitGv_owned : (s6Step119ExitGvRow.sign::s6Step119ExitGvRow.payload).toFinset⊆s6Step119ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step119ExitGvBefore (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119ExitGv_retired : s6Step119ExitGvBefore.retireSet s6Step119ExitGvExtra.toFinset=s6Step119ExitGvAfter := by
  unfold Arena.retireSet s6Step119ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step119ExitGvBefore,s6Step119ExitFAfter,s6Step119ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step119ExitGv_checked : planRowResizeLog s6Step119ExitGvBefore s6Step119ExitGvRow 73 []=
    some (s6Step119ExitGvAfter,s6Step119ExitGvOut,shrinkRow 775 s6Step119ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step119ExitGvBefore s6Step119ExitGvRow 73 s6Step119ExitGv_distinct s6Step119ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step119ExitGvRow.payload.take 73) s6Step119ExitGvRow.sign=s6Step119ExitGvOut := by decide +kernel
  have hi : s6Step119ExitGvRow.payload.drop 73=s6Step119ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step119ExitGv_retired] at result
  exact result

private theorem s6Step119ExitBank_rows : planWindowRowsLog s6Step119ExitGBefore [(s6Step119ExitGRow,209),(s6Step119ExitFRow,210),(s6Step119ExitFvRow,74),(s6Step119ExitGvRow,73)] [[],[],[],[]]=
    some (s6Step119ExitGvAfter,[s6Step119ExitGOut,s6Step119ExitFOut,s6Step119ExitFvOut,s6Step119ExitGvOut],(shrinkRow 777 s6Step119ExitGExtra ++ (shrinkRow 795 s6Step119ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step119ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step119ExitGvAfter [] []=some (s6Step119ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step119ExitGvBefore s6Step119ExitGvAfter s6Step119ExitGvAfter
    s6Step119ExitGvRow s6Step119ExitGvOut 73 [] [] [] []
    (shrinkRow 775 s6Step119ExitGvExtra) ([]) s6Step119ExitGv_Incoming s6Step119ExitGv_checked h4 s6Step119ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step119ExitFvBefore s6Step119ExitFvAfter s6Step119ExitGvAfter
    s6Step119ExitFvRow s6Step119ExitFvOut 74 [] [(s6Step119ExitGvRow,73)] [[]] [s6Step119ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step119ExitGvExtra ++ [])) s6Step119ExitFv_Incoming s6Step119ExitFv_checked h3 s6Step119ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step119ExitFBefore s6Step119ExitFAfter s6Step119ExitGvAfter
    s6Step119ExitFRow s6Step119ExitFOut 210 [] [(s6Step119ExitFvRow,74),(s6Step119ExitGvRow,73)] [[],[]] [s6Step119ExitFvOut,s6Step119ExitGvOut]
    (shrinkRow 795 s6Step119ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step119ExitGvExtra ++ []))) s6Step119ExitF_Incoming s6Step119ExitF_checked h2 s6Step119ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step119ExitGBefore s6Step119ExitGAfter s6Step119ExitGvAfter
    s6Step119ExitGRow s6Step119ExitGOut 209 [] [(s6Step119ExitFRow,210),(s6Step119ExitFvRow,74),(s6Step119ExitGvRow,73)] [[],[],[]] [s6Step119ExitFOut,s6Step119ExitFvOut,s6Step119ExitGvOut]
    (shrinkRow 777 s6Step119ExitGExtra) ((shrinkRow 795 s6Step119ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step119ExitGvExtra ++ [])))) s6Step119ExitG_Incoming s6Step119ExitG_checked h1 s6Step119ExitG_Outgoing
  exact h0

private theorem s6Step119ExitBank_checked : compileHmrBankResizeLog .exit s6Step119ExitGBefore ⟨s6Step119ExitFRow,s6Step119ExitGRow,s6Step119ExitFvRow,s6Step119ExitGvRow⟩ ⟨210,209,74,73⟩ [[],[],[],[]]=
    some (s6Step119ExitGvAfter,⟨s6Step119ExitFOut,s6Step119ExitGOut,s6Step119ExitFvOut,s6Step119ExitGvOut⟩,(shrinkRow 777 s6Step119ExitGExtra ++ (shrinkRow 795 s6Step119ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step119ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step119ExitBank_rows]
  rfl

private theorem s6Step119Add0_apart : Disjoint s6Step119Add0Arena.live s6Step119Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step119Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119Add0_card : s6Step119Add0Arena.live.card=877 := by
  decide +kernel

private theorem s6Step119Add0_borrowed : s6Step119Add0Arena.checkBorrow (hmrHybridCount s6Step119Add0Arena s6Step119Add0B.length) s6Step119Add0Work=some s6Step119Add0During := by
  have len : s6Step119Add0Work.length=hmrHybridCount s6Step119Add0Arena s6Step119Add0B.length := by
    rw [hmrHybridCount,s6Step119Add0_card]
    decide +kernel
  have nd : s6Step119Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step119Add0Arena s6Step119Add0During s6Step119Add0Work.toFinset s6Step119Add0_bounded s6Step119Add0_apart rfl

private theorem s6Step119Add0_distinct : (868::882::879::(s6Step119Add0A++s6Step119Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119Add0_owned : (868::882::879::(s6Step119Add0A++s6Step119Add0B)).toFinset⊆s6Step119Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step119Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119Add0_checked : compileHmrHybridCinLog s6Step119Add0Arena 882 868 879 s6Step119Add0A s6Step119Add0B s6Step119Add0Work=some s6Step119Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step119Add0Arena s6Step119Add0During 882 868 879 s6Step119Add0A s6Step119Add0B s6Step119Add0Work
    (by decide +kernel) (by decide +kernel) s6Step119Add0_distinct
    (fun q hq => s6Step119Add0_owned (List.mem_toFinset.mpr hq)) s6Step119Add0_borrowed

private theorem s6Step119Add1_apart : Disjoint s6Step119Add1Arena.live s6Step119Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step119Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119Add1_card : s6Step119Add1Arena.live.card=877 := by
  decide +kernel

private theorem s6Step119Add1_borrowed : s6Step119Add1Arena.checkBorrow (hmrHybridCount s6Step119Add1Arena s6Step119Add1B.length) s6Step119Add1Work=some s6Step119Add1During := by
  have len : s6Step119Add1Work.length=hmrHybridCount s6Step119Add1Arena s6Step119Add1B.length := by
    rw [hmrHybridCount,s6Step119Add1_card]
    decide +kernel
  have nd : s6Step119Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step119Add1Arena s6Step119Add1During s6Step119Add1Work.toFinset s6Step119Add1_bounded s6Step119Add1_apart rfl

private theorem s6Step119Add1_distinct : (868::882::879::(s6Step119Add1A++s6Step119Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119Add1_owned : (868::882::879::(s6Step119Add1A++s6Step119Add1B)).toFinset⊆s6Step119Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step119Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119Add1_checked : compileHmrHybridCinLog s6Step119Add1Arena 882 868 879 s6Step119Add1A s6Step119Add1B s6Step119Add1Work=some s6Step119Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step119Add1Arena s6Step119Add1During 882 868 879 s6Step119Add1A s6Step119Add1B s6Step119Add1Work
    (by decide +kernel) (by decide +kernel) s6Step119Add1_distinct
    (fun q hq => s6Step119Add1_owned (List.mem_toFinset.mpr hq)) s6Step119Add1_borrowed

private theorem s6Step119F4_apart : Disjoint (s6Step119Add0A++s6Step119Add0B).toFinset (s6Step119Add1A++s6Step119Add1B).toFinset := by
  have nd : ((s6Step119Add0A++s6Step119Add0B)++(s6Step119Add1A++s6Step119Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step119F4_carry : s6Step119F4FlagArena.checkBorrow 1 [879]=some s6Step119Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step119F4FlagArena,s6Step119HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step119F4FlagArena,s6Step119HeadFvAfter,s6Step119Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step119F4_distinct : (888::882::868::879::((s6Step119Add0A++s6Step119Add1A)++(s6Step119Add0B++s6Step119Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119F4_flag : s6Step119HeadFvAfter.checkBorrow 1 [868]=some s6Step119F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step119HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step119F4_owned : (888::882::((s6Step119Add0A++s6Step119Add1A)++(s6Step119Add0B++s6Step119Add1B))).toFinset⊆s6Step119HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step119HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119F4_checked : compileHmrHybridF4Log s6Step119HeadFvAfter 888 882 s6Step119Add0A s6Step119Add0B s6Step119Add1A s6Step119Add1B [868] [879] s6Step119Add0Work s6Step119Add1Work=some s6Step119F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step119HeadFvAfter s6Step119F4FlagArena s6Step119Add0Arena s6Step119Add0During s6Step119Add1During 888 882
    s6Step119Add0A s6Step119Add0B s6Step119Add1A s6Step119Add1B [868] [879] s6Step119Add0Work s6Step119Add1Work
    (fun q hq => s6Step119F4_owned (List.mem_toFinset.mpr hq)) s6Step119F4_flag s6Step119F4_carry
    s6Step119F4_distinct s6Step119F4_apart s6Step119Add0_checked s6Step119Add1_checked

private theorem s6Step119Front_branch : s6Step119FrontSigmaArena.checkBorrow 1 [882]=some s6Step119HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step119FrontSigmaArena,s6Step119EntryGvAfter,s6Step119EntryFBefore,arenaWires]
  · change s6Step119HeadGBefore.live=(s6Step119EntryGvAfter.live∪{888})∪{882}
    apply hmrArena_union_pair_of_filter_check s6Step119EntryGvAfter s6Step119HeadGBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 888 882 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step119Front_entry : HmrFrontEntryValid s6Step119EntryFBefore s6Step119FrontBank 210 73 ⟨210,209,74,73⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step119FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step119EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step119EntryFBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step119FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step119Front_sigma : s6Step119EntryGvAfter.checkBorrow 1 [888]=some s6Step119FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step119EntryGvAfter,s6Step119EntryFBefore,arenaWires]
  · rfl

private def s6Step119HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step119HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step119HeadFBefore : Arena := s6Step119HeadGAfter

private def s6Step119HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step119HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803],776⟩

private def s6Step119HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209],777⟩

private def s6Step119HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907],775⟩

private theorem s6Step119HeadBank_incomingDistinct : ([s6Step119HeadGRow,s6Step119HeadFRow,s6Step119HeadGvRow,s6Step119HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119HeadF_Incoming : rowsOwned s6Step119HeadFBefore [s6Step119HeadFRow,s6Step119HeadGvRow,s6Step119HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step119HeadGRow,s6Step119HeadFRow,s6Step119HeadGvRow,s6Step119HeadFvRow] 1 s6Step119HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step119HeadFBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step119HeadBank_outgoingOwned : rowsOwned s6Step119HeadFvAfter [s6Step119HeadGOut,s6Step119HeadFOut,s6Step119HeadGvOut,s6Step119HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step119HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step119HeadF_Outgoing : rowsOwned s6Step119HeadFvAfter [s6Step119HeadFOut,s6Step119HeadGvOut,s6Step119HeadFvOut] :=
  hmrRows_owned_drop s6Step119HeadFvAfter [s6Step119HeadGOut,s6Step119HeadFOut,s6Step119HeadGvOut,s6Step119HeadFvOut] 1 s6Step119HeadBank_outgoingOwned

private theorem s6Step119HeadF_distinct : (s6Step119HeadFRow.sign::s6Step119HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119HeadF_owned : (s6Step119HeadFRow.sign::s6Step119HeadFRow.payload).toFinset⊆s6Step119HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step119HeadFBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step119HeadF_reserved : s6Step119HeadFBefore.reserve s6Step119HeadFFresh.toFinset=some s6Step119HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step119HeadFFresh,arenaWires]
  · norm_num [s6Step119HeadFBefore,s6Step119HeadGAfter,s6Step119HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step119HeadFBefore s6Step119HeadFAfter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step119HeadFFresh rfl rfl
    · norm_num [s6Step119HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step119HeadF_checked : planRowResizeLog s6Step119HeadFBefore s6Step119HeadFRow 211 s6Step119HeadFFresh=
    some (s6Step119HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813],795⟩,growRow 795 s6Step119HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step119HeadFBefore s6Step119HeadFAfter s6Step119HeadFRow 211 s6Step119HeadFFresh
    s6Step119HeadF_distinct s6Step119HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step119HeadF_reserved
  have rowEq : WindowRow.mk (s6Step119HeadFRow.payload++s6Step119HeadFFresh) s6Step119HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step119HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step119HeadFvBefore : Arena := s6Step119HeadGvAfter

private theorem s6Step119HeadFv_Incoming : rowsOwned s6Step119HeadFvBefore [s6Step119HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step119HeadGRow,s6Step119HeadFRow,s6Step119HeadGvRow,s6Step119HeadFvRow] 3 s6Step119HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step119HeadFvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step119HeadFv_Outgoing : rowsOwned s6Step119HeadFvAfter [s6Step119HeadFvOut] :=
  hmrRows_owned_drop s6Step119HeadFvAfter [s6Step119HeadGOut,s6Step119HeadFOut,s6Step119HeadGvOut,s6Step119HeadFvOut] 3 s6Step119HeadBank_outgoingOwned

private theorem s6Step119HeadFv_distinct : (s6Step119HeadFvRow.sign::s6Step119HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119HeadFv_owned : (s6Step119HeadFvRow.sign::s6Step119HeadFvRow.payload).toFinset⊆s6Step119HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step119HeadFvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step119HeadFv_reserved : s6Step119HeadFvBefore.reserve s6Step119HeadFvFresh.toFinset=some s6Step119HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step119HeadFvFresh,arenaWires]
  · norm_num [s6Step119HeadFvBefore,s6Step119HeadGvAfter,s6Step119HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step119HeadFvBefore s6Step119HeadFvAfter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step119HeadFvFresh rfl rfl
    · norm_num [s6Step119HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step119HeadFv_checked : planRowResizeLog s6Step119HeadFvBefore s6Step119HeadFvRow 74 s6Step119HeadFvFresh=
    some (s6Step119HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩,growRow 776 s6Step119HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step119HeadFvBefore s6Step119HeadFvAfter s6Step119HeadFvRow 74 s6Step119HeadFvFresh
    s6Step119HeadFv_distinct s6Step119HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step119HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step119HeadFvRow.payload++s6Step119HeadFvFresh) s6Step119HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step119HeadG_Incoming : rowsOwned s6Step119HeadGBefore [s6Step119HeadGRow,s6Step119HeadFRow,s6Step119HeadGvRow,s6Step119HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step119HeadGRow,s6Step119HeadFRow,s6Step119HeadGvRow,s6Step119HeadFvRow] 0 s6Step119HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step119HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step119HeadG_Outgoing : rowsOwned s6Step119HeadFvAfter [s6Step119HeadGOut,s6Step119HeadFOut,s6Step119HeadGvOut,s6Step119HeadFvOut] :=
  hmrRows_owned_drop s6Step119HeadFvAfter [s6Step119HeadGOut,s6Step119HeadFOut,s6Step119HeadGvOut,s6Step119HeadFvOut] 0 s6Step119HeadBank_outgoingOwned

private theorem s6Step119HeadG_distinct : (s6Step119HeadGRow.sign::s6Step119HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119HeadG_owned : (s6Step119HeadGRow.sign::s6Step119HeadGRow.payload).toFinset⊆s6Step119HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step119HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step119HeadG_reserved : s6Step119HeadGBefore.reserve s6Step119HeadGFresh.toFinset=some s6Step119HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step119HeadGFresh,arenaWires]
  · norm_num [s6Step119HeadGBefore,s6Step119HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step119HeadGBefore s6Step119HeadGAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step119HeadGFresh rfl rfl
    · norm_num [s6Step119HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step119HeadG_checked : planRowResizeLog s6Step119HeadGBefore s6Step119HeadGRow 211 s6Step119HeadGFresh=
    some (s6Step119HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 833],777⟩,growRow 777 s6Step119HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step119HeadGBefore s6Step119HeadGAfter s6Step119HeadGRow 211 s6Step119HeadGFresh
    s6Step119HeadG_distinct s6Step119HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step119HeadG_reserved
  have rowEq : WindowRow.mk (s6Step119HeadGRow.payload++s6Step119HeadGFresh) s6Step119HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 833],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step119HeadGvBefore : Arena := s6Step119HeadFAfter

private theorem s6Step119HeadGv_Incoming : rowsOwned s6Step119HeadGvBefore [s6Step119HeadGvRow,s6Step119HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step119HeadGRow,s6Step119HeadFRow,s6Step119HeadGvRow,s6Step119HeadFvRow] 2 s6Step119HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step119HeadGvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step119HeadGv_Outgoing : rowsOwned s6Step119HeadFvAfter [s6Step119HeadGvOut,s6Step119HeadFvOut] :=
  hmrRows_owned_drop s6Step119HeadFvAfter [s6Step119HeadGOut,s6Step119HeadFOut,s6Step119HeadGvOut,s6Step119HeadFvOut] 2 s6Step119HeadBank_outgoingOwned

private theorem s6Step119HeadGv_distinct : (s6Step119HeadGvRow.sign::s6Step119HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step119HeadGv_owned : (s6Step119HeadGvRow.sign::s6Step119HeadGvRow.payload).toFinset⊆s6Step119HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step119HeadGvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step119HeadGv_reserved : s6Step119HeadGvBefore.reserve s6Step119HeadGvFresh.toFinset=some s6Step119HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step119HeadGvFresh,arenaWires]
  · norm_num [s6Step119HeadGvBefore,s6Step119HeadFAfter,s6Step119HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step119HeadGvBefore s6Step119HeadGvAfter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step119HeadGvFresh rfl rfl
    · norm_num [s6Step119HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step119HeadGv_checked : planRowResizeLog s6Step119HeadGvBefore s6Step119HeadGvRow 74 s6Step119HeadGvFresh=
    some (s6Step119HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 880],775⟩,growRow 775 s6Step119HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step119HeadGvBefore s6Step119HeadGvAfter s6Step119HeadGvRow 74 s6Step119HeadGvFresh
    s6Step119HeadGv_distinct s6Step119HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step119HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step119HeadGvRow.payload++s6Step119HeadGvFresh) s6Step119HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 880],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step119HeadBank_rows : planWindowRowsLog s6Step119HeadGBefore [(s6Step119HeadGRow,211),(s6Step119HeadFRow,211),(s6Step119HeadGvRow,74),(s6Step119HeadFvRow,74)] [s6Step119HeadGFresh,s6Step119HeadFFresh,s6Step119HeadGvFresh,s6Step119HeadFvFresh]=
    some (s6Step119HeadFvAfter,[s6Step119HeadGOut,s6Step119HeadFOut,s6Step119HeadGvOut,s6Step119HeadFvOut],(growRow 777 s6Step119HeadGFresh ++ (growRow 795 s6Step119HeadFFresh ++ (growRow 775 s6Step119HeadGvFresh ++ (growRow 776 s6Step119HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step119HeadFvAfter [] []=some (s6Step119HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step119HeadFvBefore s6Step119HeadFvAfter s6Step119HeadFvAfter
    s6Step119HeadFvRow s6Step119HeadFvOut 74 s6Step119HeadFvFresh [] [] []
    (growRow 776 s6Step119HeadFvFresh) ([]) s6Step119HeadFv_Incoming s6Step119HeadFv_checked h4 s6Step119HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step119HeadGvBefore s6Step119HeadGvAfter s6Step119HeadFvAfter
    s6Step119HeadGvRow s6Step119HeadGvOut 74 s6Step119HeadGvFresh [(s6Step119HeadFvRow,74)] [s6Step119HeadFvFresh] [s6Step119HeadFvOut]
    (growRow 775 s6Step119HeadGvFresh) ((growRow 776 s6Step119HeadFvFresh ++ [])) s6Step119HeadGv_Incoming s6Step119HeadGv_checked h3 s6Step119HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step119HeadFBefore s6Step119HeadFAfter s6Step119HeadFvAfter
    s6Step119HeadFRow s6Step119HeadFOut 211 s6Step119HeadFFresh [(s6Step119HeadGvRow,74),(s6Step119HeadFvRow,74)] [s6Step119HeadGvFresh,s6Step119HeadFvFresh] [s6Step119HeadGvOut,s6Step119HeadFvOut]
    (growRow 795 s6Step119HeadFFresh) ((growRow 775 s6Step119HeadGvFresh ++ (growRow 776 s6Step119HeadFvFresh ++ []))) s6Step119HeadF_Incoming s6Step119HeadF_checked h2 s6Step119HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step119HeadGBefore s6Step119HeadGAfter s6Step119HeadFvAfter
    s6Step119HeadGRow s6Step119HeadGOut 211 s6Step119HeadGFresh [(s6Step119HeadFRow,211),(s6Step119HeadGvRow,74),(s6Step119HeadFvRow,74)] [s6Step119HeadFFresh,s6Step119HeadGvFresh,s6Step119HeadFvFresh] [s6Step119HeadFOut,s6Step119HeadGvOut,s6Step119HeadFvOut]
    (growRow 777 s6Step119HeadGFresh) ((growRow 795 s6Step119HeadFFresh ++ (growRow 775 s6Step119HeadGvFresh ++ (growRow 776 s6Step119HeadFvFresh ++ [])))) s6Step119HeadG_Incoming s6Step119HeadG_checked h1 s6Step119HeadG_Outgoing
  exact h0

private theorem s6Step119HeadBank_checked : compileHmrBankResizeLog .headroom s6Step119HeadGBefore ⟨s6Step119HeadFRow,s6Step119HeadGRow,s6Step119HeadFvRow,s6Step119HeadGvRow⟩ ⟨211,211,74,74⟩ [s6Step119HeadGFresh,s6Step119HeadFFresh,s6Step119HeadGvFresh,s6Step119HeadFvFresh]=
    some (s6Step119HeadFvAfter,⟨s6Step119HeadFOut,s6Step119HeadGOut,s6Step119HeadFvOut,s6Step119HeadGvOut⟩,(growRow 777 s6Step119HeadGFresh ++ (growRow 795 s6Step119HeadFFresh ++ (growRow 775 s6Step119HeadGvFresh ++ (growRow 776 s6Step119HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step119HeadBank_rows]
  rfl

private theorem s6Step119Front_checked : compileHmrSourceFrontLog s6Step119EntryFBefore s6Step119FrontBank 210 73 ⟨210,209,74,73⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step119FrontLog=some s6Step119FrontPlan := by
  have pairEq : s6Step119FrontPair=⟨s6Step119HeadFRow,s6Step119HeadGRow,s6Step119HeadFvRow,s6Step119HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step119FrontHead=⟨s6Step119ExitFRow,s6Step119ExitGRow,s6Step119ExitFvRow,s6Step119ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step119Add0A=s6Step119FrontHead.f.wires := by decide +kernel
  have gEq : s6Step119Add0B=s6Step119FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step119Add1A=s6Step119FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step119Add1B=s6Step119FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step119EntryFBefore s6Step119FrontBank 210 73 ⟨210,209,74,73⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step119FrontLog s6Step119FrontPlan
  · exact s6Step119Front_entry
  · exact s6Step119EntryBank_checked
  · exact s6Step119Front_sigma
  · rfl
  · exact s6Step119Front_branch
  · rfl
  · simpa only [s6Step119FrontPlan,pairEq] using s6Step119HeadBank_checked
  · simpa only [s6Step119FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step119F4_checked
  · exact s6Step119Counter_checked
  · rfl
  · simpa only [s6Step119FrontPlan,headEq] using s6Step119ExitBank_checked

private theorem s6Step119Complete_explicit_checked : compileHmrEarlyStepLog s6Step119EntryFBefore s6Step119FrontBank 210 73 ⟨210,209,74,73⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step119CompleteLog=some s6Step119CompletePlan := by
  let Q := s6Step119EarlyControlPlan
  have hq := s6Step119EarlyControl_plan_checked
  have fv1 : s6Step119CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step119CompleteOut.fv.payload[2]?.getD s6Step119CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step119CompleteOut.fv.payload[3]?.getD s6Step119CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step119CompleteOut.fv.payload[4]?.getD s6Step119CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step119EntryFBefore s6Step119EarlyControlArena s6Step119FrontBank 210 73 ⟨210,209,74,73⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step119CompleteLog s6Step119FrontPlan Q
    s6Step119Front_checked s6Step119Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step119Complete_owned s6Step119Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step119EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 888 s6Step119CompleteOut.fv.second (s6Step119CompleteOut.fv.payload[2]?.getD s6Step119CompleteOut.fv.sign) (s6Step119CompleteOut.fv.payload[3]?.getD s6Step119CompleteOut.fv.sign) (s6Step119CompleteOut.fv.payload[4]?.getD s6Step119CompleteOut.fv.sign) 882 37 s6Step119EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep119Arena : Arena := s6Step119EntryFBefore
def s6PrivateStep119Bank : WindowBank := s6Step119FrontBank
def s6PrivateStep119Spec : HmrSourceWalkStepLog := ⟨210,73,⟨210,209,74,73⟩,37,.early s6Step119CompleteLog⟩
def s6PrivateStep119Plan : HmrSourceStepPlan := .early s6Step119CompletePlan
theorem s6PrivateStep119_source : s6PrivateStep119Spec=s6ObservedLogs112[7] := rfl
theorem s6PrivateStep119_checked : compileHmrSourceStepLog s6PrivateStep119Arena s6PrivateStep119Bank
    s6PrivateStep119Spec.fgWidth s6PrivateStep119Spec.vWidth s6PrivateStep119Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 119 s6PrivateStep119Spec.need none s6PrivateStep119Spec.log=some s6PrivateStep119Plan := by
  change compileHmrSourceStepLog s6Step119EntryFBefore s6Step119FrontBank 210 73 ⟨210,209,74,73⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 119 37 none (.early s6Step119CompleteLog)=some (.early s6Step119CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 119<498)]
  rw [s6Step119Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
