import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep116
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

private def s6Step118CompleteMoves : List (Wire × Wire) := [(833,210)]

private def s6Step118EarlyControlLog : HmrEarlyControlLog := ⟨[833, 813, 880, 778, 868],[879],[865],[796, 891, 903, 791, 825, 836],[]⟩

private def s6Step118FrontLog : HmrFrontAllocationLog := ⟨⟨[[813], [], [], []],[[778], [880], [907], [803]],[[], [], [], []]⟩,[882],[888],[868],[879],[865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[868, 879, 865, 796]⟩

private def s6Step118CompleteLog : HmrEarlyStepLog := ⟨s6Step118FrontLog,s6Step118CompleteMoves,s6Step118EarlyControlLog⟩

private def s6Step118ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step118ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803],776⟩

private def s6Step118ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209],777⟩

private def s6Step118ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907],775⟩

private def s6Step118FrontOut : WindowBank := ⟨s6Step118ExitFOut,s6Step118ExitGOut,s6Step118ExitFvOut,s6Step118ExitGvOut⟩

private def s6Step118CompleteOut : WindowBank := s6Step118FrontOut.repacked s6Step118CompleteMoves

private def s6Step118EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step118EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step118EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step118EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step118EarlyControlPositiveArena,[879],s6Step118EarlyControlEqualityArena,[865],⟨⟨882,false⟩,[⟨⟨879,false⟩,865⟩]⟩⟩

private def s6Step118EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step118EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step118EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step118EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step118EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step118EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step118EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,833⟩,⟨⟨772,false⟩,813⟩,⟨⟨771,false⟩,880⟩,⟨⟨770,false⟩,778⟩,⟨⟨769,false⟩,868⟩]⟩

private def s6Step118EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step118EarlyControlZeroArena,s6Step118EarlyControlZeroPlan,s6Step118EarlyControlClassPlan,s6Step118EarlyControlFlagArena,s6Step118EarlyControlFittedArena,s6Step118EarlyControlHistoryArena,s6Step118EarlyControlSigmaArena,s6Step118EarlyControlOutputArena,s6Step118EarlyControlLog⟩

private def s6Step118CounterWork : List Wire := [868, 879, 865, 796]

private theorem s6Step118Counter_bounded : s6Step118CounterWork.toFinset⊆arenaWires := by norm_num [s6Step118CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step118HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step118CounterDuring : Arena := ⟨s6Step118HeadFvAfter.live∪s6Step118CounterWork.toFinset,Finset.union_subset s6Step118HeadFvAfter.bounded s6Step118Counter_bounded⟩

private def s6Step118EntryFFresh : List Wire := [813]

private def s6Step118EntryFvFresh : List Wire := []

private def s6Step118EntryGFresh : List Wire := []

private def s6Step118EntryFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step118EntryGvAfter : Arena := s6Step118EntryFAfter

private def s6Step118EntryGvFresh : List Wire := []

private def s6Step118ExitFExtra : List Wire := [813, 880]

private def s6Step118ExitGExtra : List Wire := [210, 778]

private def s6Step118ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,210),(211,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step118ExitGvAfter : Arena := s6Step118ExitFAfter

private def s6Step118Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step118Add0Work : List Wire := [865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step118Add0_bounded : s6Step118Add0Work.toFinset⊆arenaWires := by
  have h : s6Step118Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step118Add0During : Arena := ⟨s6Step118Add0Arena.live∪s6Step118Add0Work.toFinset,Finset.union_subset s6Step118Add0Arena.bounded s6Step118Add0_bounded⟩

private def s6Step118Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step118Add1Work : List Wire := [865, 796, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step118Add1_bounded : s6Step118Add1Work.toFinset⊆arenaWires := by
  have h : s6Step118Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step118Add1During : Arena := ⟨s6Step118Add1Arena.live∪s6Step118Add1Work.toFinset,Finset.union_subset s6Step118Add1Arena.bounded s6Step118Add1_bounded⟩

private def s6Step118F4FlagArena : Arena := ⟨s6Step118HeadFvAfter.live∪{868},Finset.union_subset s6Step118HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step118F4Plan : HmrHybridF4Plan := ⟨s6Step118F4FlagArena,[868],s6Step118Add0Arena,[879],s6Step118Add0During,s6Step118Add0Work,s6Step118Add1During,s6Step118Add1Work⟩

private def s6Step118HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813, 880],795⟩

private def s6Step118HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803],776⟩

private def s6Step118HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 778],777⟩

private def s6Step118HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907],775⟩

private def s6Step118FrontHead : WindowBank := ⟨s6Step118HeadFOut,s6Step118HeadGOut,s6Step118HeadFvOut,s6Step118HeadGvOut⟩

private def s6Step118EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813],795⟩

private def s6Step118EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩

private def s6Step118EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],777⟩

private def s6Step118EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823],775⟩

private def s6Step118FrontPair : WindowBank := ⟨s6Step118EntryFOut,s6Step118EntryGOut,s6Step118EntryFvOut,s6Step118EntryGvOut⟩

private def s6Step118FrontSigmaArena : Arena := ⟨s6Step118EntryGvAfter.live∪{882},Finset.union_subset s6Step118EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step118HeadFFresh : List Wire := [880]

private def s6Step118HeadFvFresh : List Wire := [803]

private def s6Step118HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step118HeadGFresh : List Wire := [778]

private def s6Step118HeadGvFresh : List Wire := [907]

private def s6Step118FrontPlan : HmrSourceFront := ⟨s6Step118EntryGvAfter,s6Step118FrontPair,(growRow 795 s6Step118EntryFFresh ++ (growRow 777 s6Step118EntryGFresh ++ (growRow 776 s6Step118EntryFvFresh ++ (growRow 775 s6Step118EntryGvFresh ++ [])))),s6Step118FrontSigmaArena,[882],s6Step118HeadGBefore,[888],
  s6Step118HeadFvAfter,s6Step118FrontHead,(growRow 777 s6Step118HeadGFresh ++ (growRow 795 s6Step118HeadFFresh ++ (growRow 775 s6Step118HeadGvFresh ++ (growRow 776 s6Step118HeadFvFresh ++ [])))),s6Step118F4Plan,s6Step118CounterDuring,s6Step118CounterWork,s6Step118ExitGvAfter,s6Step118FrontOut,(shrinkRow 777 s6Step118ExitGExtra ++ (shrinkRow 795 s6Step118ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step118CompletePlan : HmrEarlyStepPlan := ⟨s6Step118FrontPlan,s6Step118EarlyControlArena,s6Step118EarlyControlPlan,s6Step118CompleteMoves⟩

private theorem s6Step118Complete_apart : List.Disjoint (s6Step118CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [882, 888, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step118CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[882, 888, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step118Complete_owned : (s6Step118CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step118EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step118EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step118CompleteRelocationMove0Borrowed : Arena := ⟨s6Step118ExitGvAfter.live∪{210},Finset.union_subset s6Step118ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step118CompleteRelocation_move0_owned : 833∈s6Step118ExitGvAfter.live := by norm_num [s6Step118ExitGvAfter,s6Step118ExitFAfter,arenaWires]

private theorem s6Step118CompleteRelocation_move0_reserve : s6Step118ExitGvAfter.reserve {210}=some s6Step118CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step118ExitGvAfter,s6Step118ExitFAfter,arenaWires]
  · rfl

private theorem s6Step118CompleteRelocation_move0_retire : s6Step118CompleteRelocationMove0Borrowed.retireSet {833}=s6Step118EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step118CompleteRelocationMove0Borrowed s6Step118EarlyControlArena {833}
  change s6Step118EarlyControlArena.live=(s6Step118ExitGvAfter.live∪{210})\{833}
  apply hmrArena_update_of_filter_check s6Step118ExitGvAfter s6Step118EarlyControlArena (fun q => ([(0,210),(211,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) [210] [833] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step118CompleteRelocation_checked : s6Step118ExitGvAfter.checkRepack [(833,210)]=some s6Step118EarlyControlArena := by
  have tail1 : s6Step118EarlyControlArena.checkRepack []=some s6Step118EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step118ExitGvAfter s6Step118CompleteRelocationMove0Borrowed s6Step118EarlyControlArena s6Step118EarlyControlArena 833 210 []
    s6Step118CompleteRelocation_move0_owned s6Step118CompleteRelocation_move0_reserve s6Step118CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step118Complete_repack : s6Step118ExitGvAfter.checkRepack s6Step118CompleteMoves=some s6Step118EarlyControlArena := by
  simpa only [s6Step118CompleteMoves] using s6Step118CompleteRelocation_checked

private theorem s6Step118EarlyControl_branchOwned : ([888] : List Wire).toFinset⊆s6Step118EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step118EarlyControlSigmaArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step118EarlyControl_branch : compileHmrBranchRetirement s6Step118EarlyControlSigmaArena 888=some s6Step118EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step118EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step118EarlyControlSigmaArena s6Step118EarlyControlOutputArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [888] rfl rfl
    decide +kernel

private theorem s6Step118EarlyControl_classEqualityBorrow : s6Step118EarlyControlPositiveArena.checkBorrow (([882, 879] : List Wire).length-1) s6Step118EarlyControlLog.classWork=some s6Step118EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step118EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step118EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step118EarlyControlEqualityArena,s6Step118EarlyControlPositiveArena,s6Step118EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step118EarlyControl_classEqualityOwned : ([882, 879] : List Wire).toFinset⊆s6Step118EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step118EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118EarlyControl_classEquality : compileHmrEqualityLog s6Step118EarlyControlPositiveArena [882, 879] 0 s6Step118EarlyControlLog.classWork=some (s6Step118EarlyControlEqualityArena,s6Step118EarlyControlLog.classWork,s6Step118EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step118EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step118EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step118EarlyControl_classOwned : ([769, 868, 882] : List Wire).toFinset⊆s6Step118EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step118EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118EarlyControl_positiveBorrow : s6Step118EarlyControlZeroArena.checkBorrow (1) s6Step118EarlyControlLog.positiveWork=some s6Step118EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step118EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step118EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step118EarlyControlPositiveArena,s6Step118EarlyControlZeroArena,s6Step118EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step118EarlyControl_class : compileHmrSourceClassLog s6Step118EarlyControlZeroArena false 769 s6Step118EarlyControlZeroPlan.top 0 882 s6Step118EarlyControlLog.positiveWork s6Step118EarlyControlLog.classWork=some s6Step118EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step118EarlyControlClassPlan s6Step118EarlyControlZeroArena false 769 s6Step118EarlyControlZeroPlan.top 0 882
  constructor
  · decide +kernel
  · exact s6Step118EarlyControl_classOwned
  · exact s6Step118EarlyControl_positiveBorrow
  · exact s6Step118EarlyControl_classEquality

private theorem s6Step118EarlyControl_entryRecordOwned : ([888, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step118EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step118EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118EarlyControl_entrySigmaOwned : ([882, 254] : List Wire).toFinset⊆s6Step118EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step118EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118EarlyControl_fitBorrow : s6Step118EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step118EarlyControlLog.recordFresh=some s6Step118EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step118EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step118EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step118EarlyControlFittedArena,s6Step118EarlyControlFlagArena,s6Step118EarlyControlLog,arenaWires]

private theorem s6Step118EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step118EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step118EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118EarlyControl_fit : compileHmrRecordGrowLog s6Step118EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step118EarlyControlLog.recordFresh=some s6Step118EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step118EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step118EarlyControl_fitBorrow

private theorem s6Step118EarlyControl_flagsBorrow : s6Step118EarlyControlEqualityArena.checkBorrow (6) s6Step118EarlyControlLog.flagWork=some s6Step118EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step118EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step118EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step118EarlyControlFlagArena,s6Step118EarlyControlEqualityArena,s6Step118EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step118EarlyControl_flagsOwned : ([865, 253, 252, 251] : List Wire).toFinset⊆s6Step118EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step118EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118EarlyControl_flags : compileHmrFlagsLog s6Step118EarlyControlClassPlan.equalityArena s6Step118EarlyControlClassPlan.equality.top 253 252 251 s6Step118EarlyControlLog.flagWork=some s6Step118EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step118EarlyControl_flagsOwned⟩
  · exact s6Step118EarlyControl_flagsBorrow

private theorem s6Step118EarlyControl_historyBorrow : s6Step118EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step118EarlyControlLog.recordFresh=some s6Step118EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step118EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step118EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step118EarlyControlHistoryArena,s6Step118EarlyControlArena,s6Step118EarlyControlLog,arenaWires]

private theorem s6Step118EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step118EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step118EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118EarlyControl_history : compileHmrRecordGrowLog s6Step118EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step118EarlyControlLog.recordFresh=some s6Step118EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step118EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step118EarlyControl_historyBorrow

private theorem s6Step118EarlyControl_sigmaOwned : ([254, 882] : List Wire).toFinset⊆s6Step118EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step118EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118EarlyControl_sigmaReleaseOwned : ([882] : List Wire).toFinset⊆s6Step118EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step118EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118EarlyControl_sigmaRelease : s6Step118EarlyControlHistoryArena.release {882} (fun _ => false)=some s6Step118EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step118EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step118EarlyControlHistoryArena s6Step118EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [882] rfl rfl
    decide +kernel

private theorem s6Step118EarlyControl_sigma : compileHmrSigmaDropLog s6Step118EarlyControlHistoryArena false 0 0 254 882 []=some s6Step118EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step118EarlyControl_sigmaOwned⟩
  · exact s6Step118EarlyControl_sigmaRelease

private theorem s6Step118EarlyControl_zeroBorrow : s6Step118EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step118EarlyControlLog.zeroWork=some s6Step118EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step118EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step118EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step118EarlyControlZeroArena,s6Step118EarlyControlArena,s6Step118EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step118EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step118EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step118EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118EarlyControl_zero : compileHmrEqualityLog s6Step118EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step118EarlyControlLog.zeroWork=some (s6Step118EarlyControlZeroArena,s6Step118EarlyControlLog.zeroWork,s6Step118EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step118EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step118EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step118EarlyControl_logged : s6Step118EarlyControlPlan.Logged s6Step118EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 882 254 253 252 251 888 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step118EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step118EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step118EarlyControl_zero
  · exact s6Step118EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step118EarlyControl_flags
  · exact s6Step118EarlyControl_fit
  · exact s6Step118EarlyControl_history
  · exact s6Step118EarlyControl_sigma
  · exact s6Step118EarlyControl_branch

private theorem s6Step118EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step118EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 882 254 253 252 251 888 37 s6Step118EarlyControlLog=some s6Step118EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step118EarlyControlPlan s6Step118EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 882 254 253 252 251 888 37 s6Step118EarlyControl_logged

private def s6Step118EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step118EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step118EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩

private def s6Step118EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],777⟩

private def s6Step118EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823],775⟩

private def s6Step118FrontBank : WindowBank := ⟨s6Step118EntryFRow,s6Step118EntryGRow,s6Step118EntryFvRow,s6Step118EntryGvRow⟩

private def s6Step118Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813, 880, 795]

private def s6Step118Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 778, 777]

private def s6Step118Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 776]

private def s6Step118Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 775]

private theorem s6Step118Counter_apart : Disjoint s6Step118HeadFvAfter.live s6Step118CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step118HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118Counter_borrowed : s6Step118HeadFvAfter.checkBorrow 4 s6Step118CounterWork=some s6Step118CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step118HeadFvAfter s6Step118CounterDuring s6Step118CounterWork.toFinset s6Step118Counter_bounded s6Step118Counter_apart rfl

private theorem s6Step118Counter_owned : (882::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step118HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step118HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118Counter_checked : compileHmrCounterStepLog s6Step118HeadFvAfter true 882 [774, 773, 772, 771, 770, 769] s6Step118CounterWork=some s6Step118CounterDuring := by
  have owned : ∀q∈882::[774, 773, 772, 771, 770, 769],q∈s6Step118HeadFvAfter.live := fun q hq => s6Step118Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step118Counter_borrowed

private theorem s6Step118EntryBank_incomingDistinct : ([s6Step118EntryFRow,s6Step118EntryGRow,s6Step118EntryFvRow,s6Step118EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118EntryF_Incoming : rowsOwned s6Step118EntryFBefore [s6Step118EntryFRow,s6Step118EntryGRow,s6Step118EntryFvRow,s6Step118EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step118EntryFRow,s6Step118EntryGRow,s6Step118EntryFvRow,s6Step118EntryGvRow] 0 s6Step118EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step118EntryFBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step118EntryBank_outgoingOwned : rowsOwned s6Step118EntryGvAfter [s6Step118EntryFOut,s6Step118EntryGOut,s6Step118EntryFvOut,s6Step118EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step118EntryGvAfter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step118EntryF_Outgoing : rowsOwned s6Step118EntryGvAfter [s6Step118EntryFOut,s6Step118EntryGOut,s6Step118EntryFvOut,s6Step118EntryGvOut] :=
  hmrRows_owned_drop s6Step118EntryGvAfter [s6Step118EntryFOut,s6Step118EntryGOut,s6Step118EntryFvOut,s6Step118EntryGvOut] 0 s6Step118EntryBank_outgoingOwned

private theorem s6Step118EntryF_distinct : (s6Step118EntryFRow.sign::s6Step118EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118EntryF_owned : (s6Step118EntryFRow.sign::s6Step118EntryFRow.payload).toFinset⊆s6Step118EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step118EntryFBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step118EntryF_reserved : s6Step118EntryFBefore.reserve s6Step118EntryFFresh.toFinset=some s6Step118EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step118EntryFFresh,arenaWires]
  · norm_num [s6Step118EntryFBefore,s6Step118EntryFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step118EntryFBefore s6Step118EntryFAfter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step118EntryFFresh rfl rfl
    · norm_num [s6Step118EntryFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step118EntryF_checked : planRowResizeLog s6Step118EntryFBefore s6Step118EntryFRow 211 s6Step118EntryFFresh=
    some (s6Step118EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813],795⟩,growRow 795 s6Step118EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step118EntryFBefore s6Step118EntryFAfter s6Step118EntryFRow 211 s6Step118EntryFFresh
    s6Step118EntryF_distinct s6Step118EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step118EntryF_reserved
  have rowEq : WindowRow.mk (s6Step118EntryFRow.payload++s6Step118EntryFFresh) s6Step118EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step118EntryFvAfter : Arena := s6Step118EntryFAfter

private def s6Step118EntryFvBefore : Arena := s6Step118EntryFAfter

private theorem s6Step118EntryFv_Incoming : rowsOwned s6Step118EntryFvBefore [s6Step118EntryFvRow,s6Step118EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step118EntryFRow,s6Step118EntryGRow,s6Step118EntryFvRow,s6Step118EntryGvRow] 2 s6Step118EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step118EntryFvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step118EntryFv_Outgoing : rowsOwned s6Step118EntryGvAfter [s6Step118EntryFvOut,s6Step118EntryGvOut] :=
  hmrRows_owned_drop s6Step118EntryGvAfter [s6Step118EntryFOut,s6Step118EntryGOut,s6Step118EntryFvOut,s6Step118EntryGvOut] 2 s6Step118EntryBank_outgoingOwned

private theorem s6Step118EntryFv_distinct : (s6Step118EntryFvRow.sign::s6Step118EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118EntryFv_owned : (s6Step118EntryFvRow.sign::s6Step118EntryFvRow.payload).toFinset⊆s6Step118EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step118EntryFvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step118EntryFv_reserved : s6Step118EntryFvBefore.reserve s6Step118EntryFvFresh.toFinset=some s6Step118EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step118EntryFvFresh,arenaWires]
  · norm_num [s6Step118EntryFvBefore,s6Step118EntryFAfter,s6Step118EntryFvFresh,arenaWires]
  · simp only [s6Step118EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step118EntryFv_checked : planRowResizeLog s6Step118EntryFvBefore s6Step118EntryFvRow 72 s6Step118EntryFvFresh=
    some (s6Step118EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩,growRow 776 s6Step118EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step118EntryFvBefore s6Step118EntryFvAfter s6Step118EntryFvRow 72 s6Step118EntryFvFresh
    s6Step118EntryFv_distinct s6Step118EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step118EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step118EntryFvRow.payload++s6Step118EntryFvFresh) s6Step118EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step118EntryGAfter : Arena := s6Step118EntryFAfter

private def s6Step118EntryGBefore : Arena := s6Step118EntryFAfter

private theorem s6Step118EntryG_Incoming : rowsOwned s6Step118EntryGBefore [s6Step118EntryGRow,s6Step118EntryFvRow,s6Step118EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step118EntryFRow,s6Step118EntryGRow,s6Step118EntryFvRow,s6Step118EntryGvRow] 1 s6Step118EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step118EntryGBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step118EntryG_Outgoing : rowsOwned s6Step118EntryGvAfter [s6Step118EntryGOut,s6Step118EntryFvOut,s6Step118EntryGvOut] :=
  hmrRows_owned_drop s6Step118EntryGvAfter [s6Step118EntryFOut,s6Step118EntryGOut,s6Step118EntryFvOut,s6Step118EntryGvOut] 1 s6Step118EntryBank_outgoingOwned

private theorem s6Step118EntryG_distinct : (s6Step118EntryGRow.sign::s6Step118EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118EntryG_owned : (s6Step118EntryGRow.sign::s6Step118EntryGRow.payload).toFinset⊆s6Step118EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step118EntryGBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step118EntryG_reserved : s6Step118EntryGBefore.reserve s6Step118EntryGFresh.toFinset=some s6Step118EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step118EntryGFresh,arenaWires]
  · norm_num [s6Step118EntryGBefore,s6Step118EntryFAfter,s6Step118EntryGFresh,arenaWires]
  · simp only [s6Step118EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step118EntryG_checked : planRowResizeLog s6Step118EntryGBefore s6Step118EntryGRow 211 s6Step118EntryGFresh=
    some (s6Step118EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],777⟩,growRow 777 s6Step118EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step118EntryGBefore s6Step118EntryGAfter s6Step118EntryGRow 211 s6Step118EntryGFresh
    s6Step118EntryG_distinct s6Step118EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step118EntryG_reserved
  have rowEq : WindowRow.mk (s6Step118EntryGRow.payload++s6Step118EntryGFresh) s6Step118EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step118EntryGvBefore : Arena := s6Step118EntryFAfter

private theorem s6Step118EntryGv_Incoming : rowsOwned s6Step118EntryGvBefore [s6Step118EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step118EntryFRow,s6Step118EntryGRow,s6Step118EntryFvRow,s6Step118EntryGvRow] 3 s6Step118EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step118EntryGvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step118EntryGv_Outgoing : rowsOwned s6Step118EntryGvAfter [s6Step118EntryGvOut] :=
  hmrRows_owned_drop s6Step118EntryGvAfter [s6Step118EntryFOut,s6Step118EntryGOut,s6Step118EntryFvOut,s6Step118EntryGvOut] 3 s6Step118EntryBank_outgoingOwned

private theorem s6Step118EntryGv_distinct : (s6Step118EntryGvRow.sign::s6Step118EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118EntryGv_owned : (s6Step118EntryGvRow.sign::s6Step118EntryGvRow.payload).toFinset⊆s6Step118EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step118EntryGvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step118EntryGv_reserved : s6Step118EntryGvBefore.reserve s6Step118EntryGvFresh.toFinset=some s6Step118EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step118EntryGvFresh,arenaWires]
  · norm_num [s6Step118EntryGvBefore,s6Step118EntryFAfter,s6Step118EntryGvFresh,arenaWires]
  · simp only [s6Step118EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step118EntryGv_checked : planRowResizeLog s6Step118EntryGvBefore s6Step118EntryGvRow 72 s6Step118EntryGvFresh=
    some (s6Step118EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823],775⟩,growRow 775 s6Step118EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step118EntryGvBefore s6Step118EntryGvAfter s6Step118EntryGvRow 72 s6Step118EntryGvFresh
    s6Step118EntryGv_distinct s6Step118EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step118EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step118EntryGvRow.payload++s6Step118EntryGvFresh) s6Step118EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step118EntryBank_rows : planWindowRowsLog s6Step118EntryFBefore [(s6Step118EntryFRow,211),(s6Step118EntryGRow,211),(s6Step118EntryFvRow,72),(s6Step118EntryGvRow,72)] [s6Step118EntryFFresh,s6Step118EntryGFresh,s6Step118EntryFvFresh,s6Step118EntryGvFresh]=
    some (s6Step118EntryGvAfter,[s6Step118EntryFOut,s6Step118EntryGOut,s6Step118EntryFvOut,s6Step118EntryGvOut],(growRow 795 s6Step118EntryFFresh ++ (growRow 777 s6Step118EntryGFresh ++ (growRow 776 s6Step118EntryFvFresh ++ (growRow 775 s6Step118EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step118EntryGvAfter [] []=some (s6Step118EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step118EntryGvBefore s6Step118EntryGvAfter s6Step118EntryGvAfter
    s6Step118EntryGvRow s6Step118EntryGvOut 72 s6Step118EntryGvFresh [] [] []
    (growRow 775 s6Step118EntryGvFresh) ([]) s6Step118EntryGv_Incoming s6Step118EntryGv_checked h4 s6Step118EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step118EntryFvBefore s6Step118EntryFvAfter s6Step118EntryGvAfter
    s6Step118EntryFvRow s6Step118EntryFvOut 72 s6Step118EntryFvFresh [(s6Step118EntryGvRow,72)] [s6Step118EntryGvFresh] [s6Step118EntryGvOut]
    (growRow 776 s6Step118EntryFvFresh) ((growRow 775 s6Step118EntryGvFresh ++ [])) s6Step118EntryFv_Incoming s6Step118EntryFv_checked h3 s6Step118EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step118EntryGBefore s6Step118EntryGAfter s6Step118EntryGvAfter
    s6Step118EntryGRow s6Step118EntryGOut 211 s6Step118EntryGFresh [(s6Step118EntryFvRow,72),(s6Step118EntryGvRow,72)] [s6Step118EntryFvFresh,s6Step118EntryGvFresh] [s6Step118EntryFvOut,s6Step118EntryGvOut]
    (growRow 777 s6Step118EntryGFresh) ((growRow 776 s6Step118EntryFvFresh ++ (growRow 775 s6Step118EntryGvFresh ++ []))) s6Step118EntryG_Incoming s6Step118EntryG_checked h2 s6Step118EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step118EntryFBefore s6Step118EntryFAfter s6Step118EntryGvAfter
    s6Step118EntryFRow s6Step118EntryFOut 211 s6Step118EntryFFresh [(s6Step118EntryGRow,211),(s6Step118EntryFvRow,72),(s6Step118EntryGvRow,72)] [s6Step118EntryGFresh,s6Step118EntryFvFresh,s6Step118EntryGvFresh] [s6Step118EntryGOut,s6Step118EntryFvOut,s6Step118EntryGvOut]
    (growRow 795 s6Step118EntryFFresh) ((growRow 777 s6Step118EntryGFresh ++ (growRow 776 s6Step118EntryFvFresh ++ (growRow 775 s6Step118EntryGvFresh ++ [])))) s6Step118EntryF_Incoming s6Step118EntryF_checked h1 s6Step118EntryF_Outgoing
  exact h0

private theorem s6Step118EntryBank_checked : compileHmrBankResizeLog .entry s6Step118EntryFBefore ⟨s6Step118EntryFRow,s6Step118EntryGRow,s6Step118EntryFvRow,s6Step118EntryGvRow⟩ ⟨211,211,72,72⟩ [s6Step118EntryFFresh,s6Step118EntryGFresh,s6Step118EntryFvFresh,s6Step118EntryGvFresh]=
    some (s6Step118EntryGvAfter,⟨s6Step118EntryFOut,s6Step118EntryGOut,s6Step118EntryFvOut,s6Step118EntryGvOut⟩,(growRow 795 s6Step118EntryFFresh ++ (growRow 777 s6Step118EntryGFresh ++ (growRow 776 s6Step118EntryFvFresh ++ (growRow 775 s6Step118EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step118EntryBank_rows]
  rfl

private def s6Step118ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,210),(211,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step118ExitFBefore : Arena := s6Step118ExitGAfter

private def s6Step118ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813, 880],795⟩

private def s6Step118ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803],776⟩

private def s6Step118ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 778],777⟩

private def s6Step118ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907],775⟩

private theorem s6Step118ExitBank_incomingDistinct : ([s6Step118ExitGRow,s6Step118ExitFRow,s6Step118ExitFvRow,s6Step118ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118ExitF_Incoming : rowsOwned s6Step118ExitFBefore [s6Step118ExitFRow,s6Step118ExitFvRow,s6Step118ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step118ExitGRow,s6Step118ExitFRow,s6Step118ExitFvRow,s6Step118ExitGvRow] 1 s6Step118ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step118ExitFBefore (fun q => ([(0,210),(211,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step118ExitBank_outgoingOwned : rowsOwned s6Step118ExitGvAfter [s6Step118ExitGOut,s6Step118ExitFOut,s6Step118ExitFvOut,s6Step118ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step118ExitGvAfter (fun q => ([(0,210),(211,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step118ExitF_Outgoing : rowsOwned s6Step118ExitGvAfter [s6Step118ExitFOut,s6Step118ExitFvOut,s6Step118ExitGvOut] :=
  hmrRows_owned_drop s6Step118ExitGvAfter [s6Step118ExitGOut,s6Step118ExitFOut,s6Step118ExitFvOut,s6Step118ExitGvOut] 1 s6Step118ExitBank_outgoingOwned

private theorem s6Step118ExitF_distinct : (s6Step118ExitFRow.sign::s6Step118ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118ExitF_owned : (s6Step118ExitFRow.sign::s6Step118ExitFRow.payload).toFinset⊆s6Step118ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step118ExitFBefore (fun q => ([(0,210),(211,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step118ExitF_retired : s6Step118ExitFBefore.retireSet s6Step118ExitFExtra.toFinset=s6Step118ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step118ExitFBefore s6Step118ExitFAfter s6Step118ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step118ExitFBefore s6Step118ExitFAfter (fun q => ([(0,210),(211,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,210),(211,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step118ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step118ExitF_checked : planRowResizeLog s6Step118ExitFBefore s6Step118ExitFRow 210 []=
    some (s6Step118ExitFAfter,s6Step118ExitFOut,shrinkRow 795 s6Step118ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step118ExitFBefore s6Step118ExitFRow 210 s6Step118ExitF_distinct s6Step118ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step118ExitFRow.payload.take 210) s6Step118ExitFRow.sign=s6Step118ExitFOut := by decide +kernel
  have hi : s6Step118ExitFRow.payload.drop 210=s6Step118ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step118ExitF_retired] at result
  exact result

private def s6Step118ExitFvAfter : Arena := s6Step118ExitFAfter

private def s6Step118ExitFvBefore : Arena := s6Step118ExitFAfter

private theorem s6Step118ExitFv_Incoming : rowsOwned s6Step118ExitFvBefore [s6Step118ExitFvRow,s6Step118ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step118ExitGRow,s6Step118ExitFRow,s6Step118ExitFvRow,s6Step118ExitGvRow] 2 s6Step118ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step118ExitFvBefore (fun q => ([(0,210),(211,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step118ExitFv_Outgoing : rowsOwned s6Step118ExitGvAfter [s6Step118ExitFvOut,s6Step118ExitGvOut] :=
  hmrRows_owned_drop s6Step118ExitGvAfter [s6Step118ExitGOut,s6Step118ExitFOut,s6Step118ExitFvOut,s6Step118ExitGvOut] 2 s6Step118ExitBank_outgoingOwned

private theorem s6Step118ExitFv_distinct : (s6Step118ExitFvRow.sign::s6Step118ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118ExitFv_owned : (s6Step118ExitFvRow.sign::s6Step118ExitFvRow.payload).toFinset⊆s6Step118ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step118ExitFvBefore (fun q => ([(0,210),(211,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step118ExitFv_reserved : s6Step118ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step118ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step118ExitFv_checked : planRowResizeLog s6Step118ExitFvBefore s6Step118ExitFvRow 73 []=
    some (s6Step118ExitFvAfter,s6Step118ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step118ExitFvBefore s6Step118ExitFvAfter s6Step118ExitFvRow 73 []
    s6Step118ExitFv_distinct s6Step118ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step118ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step118ExitFvRow.payload++[]) s6Step118ExitFvRow.sign=s6Step118ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step118ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step118ExitG_Incoming : rowsOwned s6Step118ExitGBefore [s6Step118ExitGRow,s6Step118ExitFRow,s6Step118ExitFvRow,s6Step118ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step118ExitGRow,s6Step118ExitFRow,s6Step118ExitFvRow,s6Step118ExitGvRow] 0 s6Step118ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step118ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step118ExitG_Outgoing : rowsOwned s6Step118ExitGvAfter [s6Step118ExitGOut,s6Step118ExitFOut,s6Step118ExitFvOut,s6Step118ExitGvOut] :=
  hmrRows_owned_drop s6Step118ExitGvAfter [s6Step118ExitGOut,s6Step118ExitFOut,s6Step118ExitFvOut,s6Step118ExitGvOut] 0 s6Step118ExitBank_outgoingOwned

private theorem s6Step118ExitG_distinct : (s6Step118ExitGRow.sign::s6Step118ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118ExitG_owned : (s6Step118ExitGRow.sign::s6Step118ExitGRow.payload).toFinset⊆s6Step118ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step118ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118ExitG_retired : s6Step118ExitGBefore.retireSet s6Step118ExitGExtra.toFinset=s6Step118ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step118ExitGBefore s6Step118ExitGAfter s6Step118ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step118ExitGBefore s6Step118ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,210),(211,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(880,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step118ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step118ExitG_checked : planRowResizeLog s6Step118ExitGBefore s6Step118ExitGRow 210 []=
    some (s6Step118ExitGAfter,s6Step118ExitGOut,shrinkRow 777 s6Step118ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step118ExitGBefore s6Step118ExitGRow 210 s6Step118ExitG_distinct s6Step118ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step118ExitGRow.payload.take 210) s6Step118ExitGRow.sign=s6Step118ExitGOut := by decide +kernel
  have hi : s6Step118ExitGRow.payload.drop 210=s6Step118ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step118ExitG_retired] at result
  exact result

private def s6Step118ExitGvBefore : Arena := s6Step118ExitFAfter

private theorem s6Step118ExitGv_Incoming : rowsOwned s6Step118ExitGvBefore [s6Step118ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step118ExitGRow,s6Step118ExitFRow,s6Step118ExitFvRow,s6Step118ExitGvRow] 3 s6Step118ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step118ExitGvBefore (fun q => ([(0,210),(211,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step118ExitGv_Outgoing : rowsOwned s6Step118ExitGvAfter [s6Step118ExitGvOut] :=
  hmrRows_owned_drop s6Step118ExitGvAfter [s6Step118ExitGOut,s6Step118ExitFOut,s6Step118ExitFvOut,s6Step118ExitGvOut] 3 s6Step118ExitBank_outgoingOwned

private theorem s6Step118ExitGv_distinct : (s6Step118ExitGvRow.sign::s6Step118ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118ExitGv_owned : (s6Step118ExitGvRow.sign::s6Step118ExitGvRow.payload).toFinset⊆s6Step118ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step118ExitGvBefore (fun q => ([(0,210),(211,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step118ExitGv_reserved : s6Step118ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step118ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step118ExitGv_checked : planRowResizeLog s6Step118ExitGvBefore s6Step118ExitGvRow 73 []=
    some (s6Step118ExitGvAfter,s6Step118ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step118ExitGvBefore s6Step118ExitGvAfter s6Step118ExitGvRow 73 []
    s6Step118ExitGv_distinct s6Step118ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step118ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step118ExitGvRow.payload++[]) s6Step118ExitGvRow.sign=s6Step118ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step118ExitBank_rows : planWindowRowsLog s6Step118ExitGBefore [(s6Step118ExitGRow,210),(s6Step118ExitFRow,210),(s6Step118ExitFvRow,73),(s6Step118ExitGvRow,73)] [[],[],[],[]]=
    some (s6Step118ExitGvAfter,[s6Step118ExitGOut,s6Step118ExitFOut,s6Step118ExitFvOut,s6Step118ExitGvOut],(shrinkRow 777 s6Step118ExitGExtra ++ (shrinkRow 795 s6Step118ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step118ExitGvAfter [] []=some (s6Step118ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step118ExitGvBefore s6Step118ExitGvAfter s6Step118ExitGvAfter
    s6Step118ExitGvRow s6Step118ExitGvOut 73 [] [] [] []
    (growRow 775 []) ([]) s6Step118ExitGv_Incoming s6Step118ExitGv_checked h4 s6Step118ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step118ExitFvBefore s6Step118ExitFvAfter s6Step118ExitGvAfter
    s6Step118ExitFvRow s6Step118ExitFvOut 73 [] [(s6Step118ExitGvRow,73)] [[]] [s6Step118ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step118ExitFv_Incoming s6Step118ExitFv_checked h3 s6Step118ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step118ExitFBefore s6Step118ExitFAfter s6Step118ExitGvAfter
    s6Step118ExitFRow s6Step118ExitFOut 210 [] [(s6Step118ExitFvRow,73),(s6Step118ExitGvRow,73)] [[],[]] [s6Step118ExitFvOut,s6Step118ExitGvOut]
    (shrinkRow 795 s6Step118ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step118ExitF_Incoming s6Step118ExitF_checked h2 s6Step118ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step118ExitGBefore s6Step118ExitGAfter s6Step118ExitGvAfter
    s6Step118ExitGRow s6Step118ExitGOut 210 [] [(s6Step118ExitFRow,210),(s6Step118ExitFvRow,73),(s6Step118ExitGvRow,73)] [[],[],[]] [s6Step118ExitFOut,s6Step118ExitFvOut,s6Step118ExitGvOut]
    (shrinkRow 777 s6Step118ExitGExtra) ((shrinkRow 795 s6Step118ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step118ExitG_Incoming s6Step118ExitG_checked h1 s6Step118ExitG_Outgoing
  exact h0

private theorem s6Step118ExitBank_checked : compileHmrBankResizeLog .exit s6Step118ExitGBefore ⟨s6Step118ExitFRow,s6Step118ExitGRow,s6Step118ExitFvRow,s6Step118ExitGvRow⟩ ⟨210,210,73,73⟩ [[],[],[],[]]=
    some (s6Step118ExitGvAfter,⟨s6Step118ExitFOut,s6Step118ExitGOut,s6Step118ExitFvOut,s6Step118ExitGvOut⟩,(shrinkRow 777 s6Step118ExitGExtra ++ (shrinkRow 795 s6Step118ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step118ExitBank_rows]
  rfl

private theorem s6Step118Add0_apart : Disjoint s6Step118Add0Arena.live s6Step118Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step118Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118Add0_card : s6Step118Add0Arena.live.card=877 := by
  decide +kernel

private theorem s6Step118Add0_borrowed : s6Step118Add0Arena.checkBorrow (hmrHybridCount s6Step118Add0Arena s6Step118Add0B.length) s6Step118Add0Work=some s6Step118Add0During := by
  have len : s6Step118Add0Work.length=hmrHybridCount s6Step118Add0Arena s6Step118Add0B.length := by
    rw [hmrHybridCount,s6Step118Add0_card]
    decide +kernel
  have nd : s6Step118Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step118Add0Arena s6Step118Add0During s6Step118Add0Work.toFinset s6Step118Add0_bounded s6Step118Add0_apart rfl

private theorem s6Step118Add0_distinct : (868::888::879::(s6Step118Add0A++s6Step118Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118Add0_owned : (868::888::879::(s6Step118Add0A++s6Step118Add0B)).toFinset⊆s6Step118Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step118Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118Add0_checked : compileHmrHybridCinLog s6Step118Add0Arena 888 868 879 s6Step118Add0A s6Step118Add0B s6Step118Add0Work=some s6Step118Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step118Add0Arena s6Step118Add0During 888 868 879 s6Step118Add0A s6Step118Add0B s6Step118Add0Work
    (by decide +kernel) (by decide +kernel) s6Step118Add0_distinct
    (fun q hq => s6Step118Add0_owned (List.mem_toFinset.mpr hq)) s6Step118Add0_borrowed

private theorem s6Step118Add1_apart : Disjoint s6Step118Add1Arena.live s6Step118Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step118Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118Add1_card : s6Step118Add1Arena.live.card=877 := by
  decide +kernel

private theorem s6Step118Add1_borrowed : s6Step118Add1Arena.checkBorrow (hmrHybridCount s6Step118Add1Arena s6Step118Add1B.length) s6Step118Add1Work=some s6Step118Add1During := by
  have len : s6Step118Add1Work.length=hmrHybridCount s6Step118Add1Arena s6Step118Add1B.length := by
    rw [hmrHybridCount,s6Step118Add1_card]
    decide +kernel
  have nd : s6Step118Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step118Add1Arena s6Step118Add1During s6Step118Add1Work.toFinset s6Step118Add1_bounded s6Step118Add1_apart rfl

private theorem s6Step118Add1_distinct : (868::888::879::(s6Step118Add1A++s6Step118Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118Add1_owned : (868::888::879::(s6Step118Add1A++s6Step118Add1B)).toFinset⊆s6Step118Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step118Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118Add1_checked : compileHmrHybridCinLog s6Step118Add1Arena 888 868 879 s6Step118Add1A s6Step118Add1B s6Step118Add1Work=some s6Step118Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step118Add1Arena s6Step118Add1During 888 868 879 s6Step118Add1A s6Step118Add1B s6Step118Add1Work
    (by decide +kernel) (by decide +kernel) s6Step118Add1_distinct
    (fun q hq => s6Step118Add1_owned (List.mem_toFinset.mpr hq)) s6Step118Add1_borrowed

private theorem s6Step118F4_apart : Disjoint (s6Step118Add0A++s6Step118Add0B).toFinset (s6Step118Add1A++s6Step118Add1B).toFinset := by
  have nd : ((s6Step118Add0A++s6Step118Add0B)++(s6Step118Add1A++s6Step118Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step118F4_carry : s6Step118F4FlagArena.checkBorrow 1 [879]=some s6Step118Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step118F4FlagArena,s6Step118HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step118F4FlagArena,s6Step118HeadFvAfter,s6Step118Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step118F4_distinct : (882::888::868::879::((s6Step118Add0A++s6Step118Add1A)++(s6Step118Add0B++s6Step118Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118F4_flag : s6Step118HeadFvAfter.checkBorrow 1 [868]=some s6Step118F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step118HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step118F4_owned : (882::888::((s6Step118Add0A++s6Step118Add1A)++(s6Step118Add0B++s6Step118Add1B))).toFinset⊆s6Step118HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step118HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118F4_checked : compileHmrHybridF4Log s6Step118HeadFvAfter 882 888 s6Step118Add0A s6Step118Add0B s6Step118Add1A s6Step118Add1B [868] [879] s6Step118Add0Work s6Step118Add1Work=some s6Step118F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step118HeadFvAfter s6Step118F4FlagArena s6Step118Add0Arena s6Step118Add0During s6Step118Add1During 882 888
    s6Step118Add0A s6Step118Add0B s6Step118Add1A s6Step118Add1B [868] [879] s6Step118Add0Work s6Step118Add1Work
    (fun q hq => s6Step118F4_owned (List.mem_toFinset.mpr hq)) s6Step118F4_flag s6Step118F4_carry
    s6Step118F4_distinct s6Step118F4_apart s6Step118Add0_checked s6Step118Add1_checked

private theorem s6Step118Front_branch : s6Step118FrontSigmaArena.checkBorrow 1 [888]=some s6Step118HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step118FrontSigmaArena,s6Step118EntryGvAfter,s6Step118EntryFAfter,arenaWires]
  · change s6Step118HeadGBefore.live=(s6Step118EntryGvAfter.live∪{882})∪{888}
    apply hmrArena_union_pair_of_filter_check s6Step118EntryGvAfter s6Step118HeadGBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 882 888 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step118Front_entry : HmrFrontEntryValid s6Step118EntryFBefore s6Step118FrontBank 211 72 ⟨210,210,73,73⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step118FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step118EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step118EntryFBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step118FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step118Front_sigma : s6Step118EntryGvAfter.checkBorrow 1 [882]=some s6Step118FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step118EntryGvAfter,s6Step118EntryFAfter,arenaWires]
  · rfl

private def s6Step118HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step118HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step118HeadFBefore : Arena := s6Step118HeadGAfter

private def s6Step118HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813],795⟩

private def s6Step118HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864],776⟩

private def s6Step118HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],777⟩

private def s6Step118HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823],775⟩

private theorem s6Step118HeadBank_incomingDistinct : ([s6Step118HeadGRow,s6Step118HeadFRow,s6Step118HeadGvRow,s6Step118HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118HeadF_Incoming : rowsOwned s6Step118HeadFBefore [s6Step118HeadFRow,s6Step118HeadGvRow,s6Step118HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step118HeadGRow,s6Step118HeadFRow,s6Step118HeadGvRow,s6Step118HeadFvRow] 1 s6Step118HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step118HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step118HeadBank_outgoingOwned : rowsOwned s6Step118HeadFvAfter [s6Step118HeadGOut,s6Step118HeadFOut,s6Step118HeadGvOut,s6Step118HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step118HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step118HeadF_Outgoing : rowsOwned s6Step118HeadFvAfter [s6Step118HeadFOut,s6Step118HeadGvOut,s6Step118HeadFvOut] :=
  hmrRows_owned_drop s6Step118HeadFvAfter [s6Step118HeadGOut,s6Step118HeadFOut,s6Step118HeadGvOut,s6Step118HeadFvOut] 1 s6Step118HeadBank_outgoingOwned

private theorem s6Step118HeadF_distinct : (s6Step118HeadFRow.sign::s6Step118HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118HeadF_owned : (s6Step118HeadFRow.sign::s6Step118HeadFRow.payload).toFinset⊆s6Step118HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step118HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118HeadF_reserved : s6Step118HeadFBefore.reserve s6Step118HeadFFresh.toFinset=some s6Step118HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step118HeadFFresh,arenaWires]
  · norm_num [s6Step118HeadFBefore,s6Step118HeadGAfter,s6Step118HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step118HeadFAfter,s6Step118HeadFBefore,s6Step118HeadGAfter,s6Step118HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step118HeadF_checked : planRowResizeLog s6Step118HeadFBefore s6Step118HeadFRow 212 s6Step118HeadFFresh=
    some (s6Step118HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813, 880],795⟩,growRow 795 s6Step118HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step118HeadFBefore s6Step118HeadFAfter s6Step118HeadFRow 212 s6Step118HeadFFresh
    s6Step118HeadF_distinct s6Step118HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step118HeadF_reserved
  have rowEq : WindowRow.mk (s6Step118HeadFRow.payload++s6Step118HeadFFresh) s6Step118HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 813, 880],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step118HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step118HeadFvBefore : Arena := s6Step118HeadGvAfter

private theorem s6Step118HeadFv_Incoming : rowsOwned s6Step118HeadFvBefore [s6Step118HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step118HeadGRow,s6Step118HeadFRow,s6Step118HeadGvRow,s6Step118HeadFvRow] 3 s6Step118HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step118HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step118HeadFv_Outgoing : rowsOwned s6Step118HeadFvAfter [s6Step118HeadFvOut] :=
  hmrRows_owned_drop s6Step118HeadFvAfter [s6Step118HeadGOut,s6Step118HeadFOut,s6Step118HeadGvOut,s6Step118HeadFvOut] 3 s6Step118HeadBank_outgoingOwned

private theorem s6Step118HeadFv_distinct : (s6Step118HeadFvRow.sign::s6Step118HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118HeadFv_owned : (s6Step118HeadFvRow.sign::s6Step118HeadFvRow.payload).toFinset⊆s6Step118HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step118HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118HeadFv_reserved : s6Step118HeadFvBefore.reserve s6Step118HeadFvFresh.toFinset=some s6Step118HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step118HeadFvFresh,arenaWires]
  · norm_num [s6Step118HeadFvBefore,s6Step118HeadGvAfter,s6Step118HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step118HeadFvAfter,s6Step118HeadFvBefore,s6Step118HeadGvAfter,s6Step118HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step118HeadFv_checked : planRowResizeLog s6Step118HeadFvBefore s6Step118HeadFvRow 73 s6Step118HeadFvFresh=
    some (s6Step118HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803],776⟩,growRow 776 s6Step118HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step118HeadFvBefore s6Step118HeadFvAfter s6Step118HeadFvRow 73 s6Step118HeadFvFresh
    s6Step118HeadFv_distinct s6Step118HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step118HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step118HeadFvRow.payload++s6Step118HeadFvFresh) s6Step118HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 833, 875, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step118HeadG_Incoming : rowsOwned s6Step118HeadGBefore [s6Step118HeadGRow,s6Step118HeadFRow,s6Step118HeadGvRow,s6Step118HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step118HeadGRow,s6Step118HeadFRow,s6Step118HeadGvRow,s6Step118HeadFvRow] 0 s6Step118HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step118HeadGBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step118HeadG_Outgoing : rowsOwned s6Step118HeadFvAfter [s6Step118HeadGOut,s6Step118HeadFOut,s6Step118HeadGvOut,s6Step118HeadFvOut] :=
  hmrRows_owned_drop s6Step118HeadFvAfter [s6Step118HeadGOut,s6Step118HeadFOut,s6Step118HeadGvOut,s6Step118HeadFvOut] 0 s6Step118HeadBank_outgoingOwned

private theorem s6Step118HeadG_distinct : (s6Step118HeadGRow.sign::s6Step118HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118HeadG_owned : (s6Step118HeadGRow.sign::s6Step118HeadGRow.payload).toFinset⊆s6Step118HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step118HeadGBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step118HeadG_reserved : s6Step118HeadGBefore.reserve s6Step118HeadGFresh.toFinset=some s6Step118HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step118HeadGFresh,arenaWires]
  · norm_num [s6Step118HeadGBefore,s6Step118HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step118HeadGBefore s6Step118HeadGAfter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,796),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,868),(869,879),(881,891),(892,893),(895,896),(898,899),(901,903),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step118HeadGFresh rfl rfl
    · norm_num [s6Step118HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step118HeadG_checked : planRowResizeLog s6Step118HeadGBefore s6Step118HeadGRow 212 s6Step118HeadGFresh=
    some (s6Step118HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 778],777⟩,growRow 777 s6Step118HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step118HeadGBefore s6Step118HeadGAfter s6Step118HeadGRow 212 s6Step118HeadGFresh
    s6Step118HeadG_distinct s6Step118HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step118HeadG_reserved
  have rowEq : WindowRow.mk (s6Step118HeadGRow.payload++s6Step118HeadGFresh) s6Step118HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 778],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step118HeadGvBefore : Arena := s6Step118HeadFAfter

private theorem s6Step118HeadGv_Incoming : rowsOwned s6Step118HeadGvBefore [s6Step118HeadGvRow,s6Step118HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step118HeadGRow,s6Step118HeadFRow,s6Step118HeadGvRow,s6Step118HeadFvRow] 2 s6Step118HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step118HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step118HeadGv_Outgoing : rowsOwned s6Step118HeadFvAfter [s6Step118HeadGvOut,s6Step118HeadFvOut] :=
  hmrRows_owned_drop s6Step118HeadFvAfter [s6Step118HeadGOut,s6Step118HeadFOut,s6Step118HeadGvOut,s6Step118HeadFvOut] 2 s6Step118HeadBank_outgoingOwned

private theorem s6Step118HeadGv_distinct : (s6Step118HeadGvRow.sign::s6Step118HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step118HeadGv_owned : (s6Step118HeadGvRow.sign::s6Step118HeadGvRow.payload).toFinset⊆s6Step118HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step118HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step118HeadGv_reserved : s6Step118HeadGvBefore.reserve s6Step118HeadGvFresh.toFinset=some s6Step118HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step118HeadGvFresh,arenaWires]
  · norm_num [s6Step118HeadGvBefore,s6Step118HeadFAfter,s6Step118HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step118HeadGvAfter,s6Step118HeadGvBefore,s6Step118HeadFAfter,s6Step118HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step118HeadGv_checked : planRowResizeLog s6Step118HeadGvBefore s6Step118HeadGvRow 73 s6Step118HeadGvFresh=
    some (s6Step118HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907],775⟩,growRow 775 s6Step118HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step118HeadGvBefore s6Step118HeadGvAfter s6Step118HeadGvRow 73 s6Step118HeadGvFresh
    s6Step118HeadGv_distinct s6Step118HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step118HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step118HeadGvRow.payload++s6Step118HeadGvFresh) s6Step118HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step118HeadBank_rows : planWindowRowsLog s6Step118HeadGBefore [(s6Step118HeadGRow,212),(s6Step118HeadFRow,212),(s6Step118HeadGvRow,73),(s6Step118HeadFvRow,73)] [s6Step118HeadGFresh,s6Step118HeadFFresh,s6Step118HeadGvFresh,s6Step118HeadFvFresh]=
    some (s6Step118HeadFvAfter,[s6Step118HeadGOut,s6Step118HeadFOut,s6Step118HeadGvOut,s6Step118HeadFvOut],(growRow 777 s6Step118HeadGFresh ++ (growRow 795 s6Step118HeadFFresh ++ (growRow 775 s6Step118HeadGvFresh ++ (growRow 776 s6Step118HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step118HeadFvAfter [] []=some (s6Step118HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step118HeadFvBefore s6Step118HeadFvAfter s6Step118HeadFvAfter
    s6Step118HeadFvRow s6Step118HeadFvOut 73 s6Step118HeadFvFresh [] [] []
    (growRow 776 s6Step118HeadFvFresh) ([]) s6Step118HeadFv_Incoming s6Step118HeadFv_checked h4 s6Step118HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step118HeadGvBefore s6Step118HeadGvAfter s6Step118HeadFvAfter
    s6Step118HeadGvRow s6Step118HeadGvOut 73 s6Step118HeadGvFresh [(s6Step118HeadFvRow,73)] [s6Step118HeadFvFresh] [s6Step118HeadFvOut]
    (growRow 775 s6Step118HeadGvFresh) ((growRow 776 s6Step118HeadFvFresh ++ [])) s6Step118HeadGv_Incoming s6Step118HeadGv_checked h3 s6Step118HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step118HeadFBefore s6Step118HeadFAfter s6Step118HeadFvAfter
    s6Step118HeadFRow s6Step118HeadFOut 212 s6Step118HeadFFresh [(s6Step118HeadGvRow,73),(s6Step118HeadFvRow,73)] [s6Step118HeadGvFresh,s6Step118HeadFvFresh] [s6Step118HeadGvOut,s6Step118HeadFvOut]
    (growRow 795 s6Step118HeadFFresh) ((growRow 775 s6Step118HeadGvFresh ++ (growRow 776 s6Step118HeadFvFresh ++ []))) s6Step118HeadF_Incoming s6Step118HeadF_checked h2 s6Step118HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step118HeadGBefore s6Step118HeadGAfter s6Step118HeadFvAfter
    s6Step118HeadGRow s6Step118HeadGOut 212 s6Step118HeadGFresh [(s6Step118HeadFRow,212),(s6Step118HeadGvRow,73),(s6Step118HeadFvRow,73)] [s6Step118HeadFFresh,s6Step118HeadGvFresh,s6Step118HeadFvFresh] [s6Step118HeadFOut,s6Step118HeadGvOut,s6Step118HeadFvOut]
    (growRow 777 s6Step118HeadGFresh) ((growRow 795 s6Step118HeadFFresh ++ (growRow 775 s6Step118HeadGvFresh ++ (growRow 776 s6Step118HeadFvFresh ++ [])))) s6Step118HeadG_Incoming s6Step118HeadG_checked h1 s6Step118HeadG_Outgoing
  exact h0

private theorem s6Step118HeadBank_checked : compileHmrBankResizeLog .headroom s6Step118HeadGBefore ⟨s6Step118HeadFRow,s6Step118HeadGRow,s6Step118HeadFvRow,s6Step118HeadGvRow⟩ ⟨212,212,73,73⟩ [s6Step118HeadGFresh,s6Step118HeadFFresh,s6Step118HeadGvFresh,s6Step118HeadFvFresh]=
    some (s6Step118HeadFvAfter,⟨s6Step118HeadFOut,s6Step118HeadGOut,s6Step118HeadFvOut,s6Step118HeadGvOut⟩,(growRow 777 s6Step118HeadGFresh ++ (growRow 795 s6Step118HeadFFresh ++ (growRow 775 s6Step118HeadGvFresh ++ (growRow 776 s6Step118HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step118HeadBank_rows]
  rfl

private theorem s6Step118Front_checked : compileHmrSourceFrontLog s6Step118EntryFBefore s6Step118FrontBank 211 72 ⟨210,210,73,73⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step118FrontLog=some s6Step118FrontPlan := by
  have pairEq : s6Step118FrontPair=⟨s6Step118HeadFRow,s6Step118HeadGRow,s6Step118HeadFvRow,s6Step118HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step118FrontHead=⟨s6Step118ExitFRow,s6Step118ExitGRow,s6Step118ExitFvRow,s6Step118ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step118Add0A=s6Step118FrontHead.f.wires := by decide +kernel
  have gEq : s6Step118Add0B=s6Step118FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step118Add1A=s6Step118FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step118Add1B=s6Step118FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step118EntryFBefore s6Step118FrontBank 211 72 ⟨210,210,73,73⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step118FrontLog s6Step118FrontPlan
  · exact s6Step118Front_entry
  · exact s6Step118EntryBank_checked
  · exact s6Step118Front_sigma
  · rfl
  · exact s6Step118Front_branch
  · rfl
  · simpa only [s6Step118FrontPlan,pairEq] using s6Step118HeadBank_checked
  · simpa only [s6Step118FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step118F4_checked
  · exact s6Step118Counter_checked
  · rfl
  · simpa only [s6Step118FrontPlan,headEq] using s6Step118ExitBank_checked

private theorem s6Step118Complete_explicit_checked : compileHmrEarlyStepLog s6Step118EntryFBefore s6Step118FrontBank 211 72 ⟨210,210,73,73⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step118CompleteLog=some s6Step118CompletePlan := by
  let Q := s6Step118EarlyControlPlan
  have hq := s6Step118EarlyControl_plan_checked
  have fv1 : s6Step118CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step118CompleteOut.fv.payload[2]?.getD s6Step118CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step118CompleteOut.fv.payload[3]?.getD s6Step118CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step118CompleteOut.fv.payload[4]?.getD s6Step118CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step118EntryFBefore s6Step118EarlyControlArena s6Step118FrontBank 211 72 ⟨210,210,73,73⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step118CompleteLog s6Step118FrontPlan Q
    s6Step118Front_checked s6Step118Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step118Complete_owned s6Step118Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step118EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 882 s6Step118CompleteOut.fv.second (s6Step118CompleteOut.fv.payload[2]?.getD s6Step118CompleteOut.fv.sign) (s6Step118CompleteOut.fv.payload[3]?.getD s6Step118CompleteOut.fv.sign) (s6Step118CompleteOut.fv.payload[4]?.getD s6Step118CompleteOut.fv.sign) 888 37 s6Step118EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep118Arena : Arena := s6Step118EntryFBefore
def s6PrivateStep118Bank : WindowBank := s6Step118FrontBank
def s6PrivateStep118Spec : HmrSourceWalkStepLog := ⟨211,72,⟨210,210,73,73⟩,37,.early s6Step118CompleteLog⟩
def s6PrivateStep118Plan : HmrSourceStepPlan := .early s6Step118CompletePlan
theorem s6PrivateStep118_source : s6PrivateStep118Spec=s6ObservedLogs112[6] := rfl
theorem s6PrivateStep118_checked : compileHmrSourceStepLog s6PrivateStep118Arena s6PrivateStep118Bank
    s6PrivateStep118Spec.fgWidth s6PrivateStep118Spec.vWidth s6PrivateStep118Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 118 s6PrivateStep118Spec.need none s6PrivateStep118Spec.log=some s6PrivateStep118Plan := by
  change compileHmrSourceStepLog s6Step118EntryFBefore s6Step118FrontBank 211 72 ⟨210,210,73,73⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 118 37 none (.early s6Step118CompleteLog)=some (.early s6Step118CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 118<498)]
  rw [s6Step118Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
