import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep126
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

private def s6Step128CompleteMoves : List (Wire × Wire) := [(898,460)]

private def s6Step128EarlyControlLog : HmrEarlyControlLog := ⟨[898, 833, 838, 813, 841],[850],[879],[875, 882, 891, 903, 791, 825],[]⟩

private def s6Step128FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [796]],[[841], [813], [833], [838]],[[], [], [], []]⟩,[854],[822],[850],[879],[875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[850, 879, 875, 882]⟩

private def s6Step128CompleteLog : HmrEarlyStepLog := ⟨s6Step128FrontLog,s6Step128CompleteMoves,s6Step128EarlyControlLog⟩

private def s6Step128ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459],795⟩

private def s6Step128ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩

private def s6Step128ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],777⟩

private def s6Step128ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796],775⟩

private def s6Step128FrontOut : WindowBank := ⟨s6Step128ExitFOut,s6Step128ExitGOut,s6Step128ExitFvOut,s6Step128ExitGvOut⟩

private def s6Step128CompleteOut : WindowBank := s6Step128FrontOut.repacked s6Step128CompleteMoves

private def s6Step128EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step128EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step128EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step128EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step128EarlyControlPositiveArena,[850],s6Step128EarlyControlEqualityArena,[879],⟨⟨854,false⟩,[⟨⟨850,false⟩,879⟩]⟩⟩

private def s6Step128EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step128EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step128EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step128EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step128EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step128EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step128EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,898⟩,⟨⟨772,false⟩,833⟩,⟨⟨771,false⟩,838⟩,⟨⟨770,false⟩,813⟩,⟨⟨769,false⟩,841⟩]⟩

private def s6Step128EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step128EarlyControlZeroArena,s6Step128EarlyControlZeroPlan,s6Step128EarlyControlClassPlan,s6Step128EarlyControlFlagArena,s6Step128EarlyControlFittedArena,s6Step128EarlyControlHistoryArena,s6Step128EarlyControlSigmaArena,s6Step128EarlyControlOutputArena,s6Step128EarlyControlLog⟩

private def s6Step128CounterWork : List Wire := [850, 879, 875, 882]

private theorem s6Step128Counter_bounded : s6Step128CounterWork.toFinset⊆arenaWires := by norm_num [s6Step128CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step128HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step128CounterDuring : Arena := ⟨s6Step128HeadFvAfter.live∪s6Step128CounterWork.toFinset,Finset.union_subset s6Step128HeadFvAfter.bounded s6Step128Counter_bounded⟩

private def s6Step128EntryFFresh : List Wire := []

private def s6Step128EntryFvFresh : List Wire := []

private def s6Step128EntryGFresh : List Wire := []

private def s6Step128EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step128EntryGvFresh : List Wire := [796]

private def s6Step128ExitFExtra : List Wire := [460, 813]

private def s6Step128ExitFvExtra : List Wire := [838]

private def s6Step128ExitGExtra : List Wire := [841]

private def s6Step128ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,460),(461,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step128ExitGvExtra : List Wire := [833]

private def s6Step128Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step128Add0Work : List Wire := [875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step128Add0_bounded : s6Step128Add0Work.toFinset⊆arenaWires := by
  have h : s6Step128Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step128Add0During : Arena := ⟨s6Step128Add0Arena.live∪s6Step128Add0Work.toFinset,Finset.union_subset s6Step128Add0Arena.bounded s6Step128Add0_bounded⟩

private def s6Step128Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step128Add1Work : List Wire := [875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step128Add1_bounded : s6Step128Add1Work.toFinset⊆arenaWires := by
  have h : s6Step128Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step128Add1During : Arena := ⟨s6Step128Add1Arena.live∪s6Step128Add1Work.toFinset,Finset.union_subset s6Step128Add1Arena.bounded s6Step128Add1_bounded⟩

private def s6Step128F4FlagArena : Arena := ⟨s6Step128HeadFvAfter.live∪{850},Finset.union_subset s6Step128HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step128F4Plan : HmrHybridF4Plan := ⟨s6Step128F4FlagArena,[850],s6Step128Add0Arena,[879],s6Step128Add0During,s6Step128Add0Work,s6Step128Add1During,s6Step128Add1Work⟩

private def s6Step128HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 813],795⟩

private def s6Step128HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 838],776⟩

private def s6Step128HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 841],777⟩

private def s6Step128HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 833],775⟩

private def s6Step128FrontHead : WindowBank := ⟨s6Step128HeadFOut,s6Step128HeadGOut,s6Step128HeadFvOut,s6Step128HeadGvOut⟩

private def s6Step128EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460],795⟩

private def s6Step128EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩

private def s6Step128EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],777⟩

private def s6Step128EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796],775⟩

private def s6Step128FrontPair : WindowBank := ⟨s6Step128EntryFOut,s6Step128EntryGOut,s6Step128EntryFvOut,s6Step128EntryGvOut⟩

private def s6Step128FrontSigmaArena : Arena := ⟨s6Step128EntryGvAfter.live∪{854},Finset.union_subset s6Step128EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step128HeadFFresh : List Wire := [813]

private def s6Step128HeadFvFresh : List Wire := [838]

private def s6Step128HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step128HeadGFresh : List Wire := [841]

private def s6Step128HeadGvFresh : List Wire := [833]

private def s6Step128FrontPlan : HmrSourceFront := ⟨s6Step128EntryGvAfter,s6Step128FrontPair,(growRow 795 s6Step128EntryFFresh ++ (growRow 777 s6Step128EntryGFresh ++ (growRow 776 s6Step128EntryFvFresh ++ (growRow 775 s6Step128EntryGvFresh ++ [])))),s6Step128FrontSigmaArena,[854],s6Step128HeadGBefore,[822],
  s6Step128HeadFvAfter,s6Step128FrontHead,(growRow 777 s6Step128HeadGFresh ++ (growRow 795 s6Step128HeadFFresh ++ (growRow 775 s6Step128HeadGvFresh ++ (growRow 776 s6Step128HeadFvFresh ++ [])))),s6Step128F4Plan,s6Step128CounterDuring,s6Step128CounterWork,s6Step128ExitGvAfter,s6Step128FrontOut,(shrinkRow 777 s6Step128ExitGExtra ++ (shrinkRow 795 s6Step128ExitFExtra ++ (shrinkRow 776 s6Step128ExitFvExtra ++ (shrinkRow 775 s6Step128ExitGvExtra ++ []))))⟩

private def s6Step128CompletePlan : HmrEarlyStepPlan := ⟨s6Step128FrontPlan,s6Step128EarlyControlArena,s6Step128EarlyControlPlan,s6Step128CompleteMoves⟩

private theorem s6Step128Complete_apart : List.Disjoint (s6Step128CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [854, 822, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step128CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[854, 822, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step128Complete_owned : (s6Step128CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step128EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step128EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step128CompleteRelocationMove0Borrowed : Arena := ⟨s6Step128ExitGvAfter.live∪{460},Finset.union_subset s6Step128ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step128CompleteRelocation_move0_owned : 898∈s6Step128ExitGvAfter.live := by norm_num [s6Step128ExitGvAfter,arenaWires]

private theorem s6Step128CompleteRelocation_move0_reserve : s6Step128ExitGvAfter.reserve {460}=some s6Step128CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step128ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step128CompleteRelocation_move0_retire : s6Step128CompleteRelocationMove0Borrowed.retireSet {898}=s6Step128EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step128CompleteRelocationMove0Borrowed s6Step128EarlyControlArena {898}
  change s6Step128EarlyControlArena.live=(s6Step128ExitGvAfter.live∪{460})\{898}
  apply hmrArena_update_of_filter_check s6Step128ExitGvAfter s6Step128EarlyControlArena (fun q => ([(0,460),(461,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) [460] [898] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step128CompleteRelocation_checked : s6Step128ExitGvAfter.checkRepack [(898,460)]=some s6Step128EarlyControlArena := by
  have tail1 : s6Step128EarlyControlArena.checkRepack []=some s6Step128EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step128ExitGvAfter s6Step128CompleteRelocationMove0Borrowed s6Step128EarlyControlArena s6Step128EarlyControlArena 898 460 []
    s6Step128CompleteRelocation_move0_owned s6Step128CompleteRelocation_move0_reserve s6Step128CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step128Complete_repack : s6Step128ExitGvAfter.checkRepack s6Step128CompleteMoves=some s6Step128EarlyControlArena := by
  simpa only [s6Step128CompleteMoves] using s6Step128CompleteRelocation_checked

private theorem s6Step128EarlyControl_branchOwned : ([822] : List Wire).toFinset⊆s6Step128EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step128EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128EarlyControl_branch : compileHmrBranchRetirement s6Step128EarlyControlSigmaArena 822=some s6Step128EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step128EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step128EarlyControlSigmaArena s6Step128EarlyControlOutputArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [822] rfl rfl
    decide +kernel

private theorem s6Step128EarlyControl_classEqualityBorrow : s6Step128EarlyControlPositiveArena.checkBorrow (([854, 850] : List Wire).length-1) s6Step128EarlyControlLog.classWork=some s6Step128EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step128EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step128EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step128EarlyControlEqualityArena,s6Step128EarlyControlPositiveArena,s6Step128EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step128EarlyControl_classEqualityOwned : ([854, 850] : List Wire).toFinset⊆s6Step128EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step128EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128EarlyControl_classEquality : compileHmrEqualityLog s6Step128EarlyControlPositiveArena [854, 850] 0 s6Step128EarlyControlLog.classWork=some (s6Step128EarlyControlEqualityArena,s6Step128EarlyControlLog.classWork,s6Step128EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step128EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step128EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step128EarlyControl_classOwned : ([769, 841, 854] : List Wire).toFinset⊆s6Step128EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step128EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128EarlyControl_positiveBorrow : s6Step128EarlyControlZeroArena.checkBorrow (1) s6Step128EarlyControlLog.positiveWork=some s6Step128EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step128EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step128EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step128EarlyControlPositiveArena,s6Step128EarlyControlZeroArena,s6Step128EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step128EarlyControl_class : compileHmrSourceClassLog s6Step128EarlyControlZeroArena false 769 s6Step128EarlyControlZeroPlan.top 0 854 s6Step128EarlyControlLog.positiveWork s6Step128EarlyControlLog.classWork=some s6Step128EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step128EarlyControlClassPlan s6Step128EarlyControlZeroArena false 769 s6Step128EarlyControlZeroPlan.top 0 854
  constructor
  · decide +kernel
  · exact s6Step128EarlyControl_classOwned
  · exact s6Step128EarlyControl_positiveBorrow
  · exact s6Step128EarlyControl_classEquality

private theorem s6Step128EarlyControl_entryRecordOwned : ([822, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step128EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step128EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128EarlyControl_entrySigmaOwned : ([854, 254] : List Wire).toFinset⊆s6Step128EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step128EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128EarlyControl_fitBorrow : s6Step128EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step128EarlyControlLog.recordFresh=some s6Step128EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step128EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step128EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step128EarlyControlFittedArena,s6Step128EarlyControlFlagArena,s6Step128EarlyControlLog,arenaWires]

private theorem s6Step128EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step128EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step128EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128EarlyControl_fit : compileHmrRecordGrowLog s6Step128EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step128EarlyControlLog.recordFresh=some s6Step128EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step128EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step128EarlyControl_fitBorrow

private theorem s6Step128EarlyControl_flagsBorrow : s6Step128EarlyControlEqualityArena.checkBorrow (6) s6Step128EarlyControlLog.flagWork=some s6Step128EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step128EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step128EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step128EarlyControlFlagArena,s6Step128EarlyControlEqualityArena,s6Step128EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step128EarlyControl_flagsOwned : ([879, 253, 252, 251] : List Wire).toFinset⊆s6Step128EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step128EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128EarlyControl_flags : compileHmrFlagsLog s6Step128EarlyControlClassPlan.equalityArena s6Step128EarlyControlClassPlan.equality.top 253 252 251 s6Step128EarlyControlLog.flagWork=some s6Step128EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step128EarlyControl_flagsOwned⟩
  · exact s6Step128EarlyControl_flagsBorrow

private theorem s6Step128EarlyControl_historyBorrow : s6Step128EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step128EarlyControlLog.recordFresh=some s6Step128EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step128EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step128EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step128EarlyControlHistoryArena,s6Step128EarlyControlArena,s6Step128EarlyControlLog,arenaWires]

private theorem s6Step128EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step128EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step128EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128EarlyControl_history : compileHmrRecordGrowLog s6Step128EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step128EarlyControlLog.recordFresh=some s6Step128EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step128EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step128EarlyControl_historyBorrow

private theorem s6Step128EarlyControl_sigmaOwned : ([254, 854] : List Wire).toFinset⊆s6Step128EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step128EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128EarlyControl_sigmaReleaseOwned : ([854] : List Wire).toFinset⊆s6Step128EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step128EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128EarlyControl_sigmaRelease : s6Step128EarlyControlHistoryArena.release {854} (fun _ => false)=some s6Step128EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step128EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step128EarlyControlSigmaArena,s6Step128EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step128EarlyControl_sigma : compileHmrSigmaDropLog s6Step128EarlyControlHistoryArena false 0 0 254 854 []=some s6Step128EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step128EarlyControl_sigmaOwned⟩
  · exact s6Step128EarlyControl_sigmaRelease

private theorem s6Step128EarlyControl_zeroBorrow : s6Step128EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step128EarlyControlLog.zeroWork=some s6Step128EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step128EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step128EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step128EarlyControlZeroArena,s6Step128EarlyControlArena,s6Step128EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step128EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step128EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step128EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128EarlyControl_zero : compileHmrEqualityLog s6Step128EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step128EarlyControlLog.zeroWork=some (s6Step128EarlyControlZeroArena,s6Step128EarlyControlLog.zeroWork,s6Step128EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step128EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step128EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step128EarlyControl_logged : s6Step128EarlyControlPlan.Logged s6Step128EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 254 253 252 251 822 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step128EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step128EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step128EarlyControl_zero
  · exact s6Step128EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step128EarlyControl_flags
  · exact s6Step128EarlyControl_fit
  · exact s6Step128EarlyControl_history
  · exact s6Step128EarlyControl_sigma
  · exact s6Step128EarlyControl_branch

private theorem s6Step128EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step128EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 254 253 252 251 822 37 s6Step128EarlyControlLog=some s6Step128EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step128EarlyControlPlan s6Step128EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 254 253 252 251 822 37 s6Step128EarlyControl_logged

private def s6Step128EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step128EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460],795⟩

private def s6Step128EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩

private def s6Step128EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],777⟩

private def s6Step128EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848],775⟩

private def s6Step128FrontBank : WindowBank := ⟨s6Step128EntryFRow,s6Step128EntryGRow,s6Step128EntryFvRow,s6Step128EntryGvRow⟩

private def s6Step128Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 813, 795]

private def s6Step128Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 841, 777]

private def s6Step128Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 838, 776]

private def s6Step128Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 833, 775]

private theorem s6Step128Counter_apart : Disjoint s6Step128HeadFvAfter.live s6Step128CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step128HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128Counter_borrowed : s6Step128HeadFvAfter.checkBorrow 4 s6Step128CounterWork=some s6Step128CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step128HeadFvAfter s6Step128CounterDuring s6Step128CounterWork.toFinset s6Step128Counter_bounded s6Step128Counter_apart rfl

private theorem s6Step128Counter_owned : (854::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step128HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step128HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128Counter_checked : compileHmrCounterStepLog s6Step128HeadFvAfter true 854 [774, 773, 772, 771, 770, 769] s6Step128CounterWork=some s6Step128CounterDuring := by
  have owned : ∀q∈854::[774, 773, 772, 771, 770, 769],q∈s6Step128HeadFvAfter.live := fun q hq => s6Step128Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step128Counter_borrowed

private def s6Step128EntryFAfter : Arena := s6Step128EntryFBefore

private theorem s6Step128EntryBank_incomingDistinct : ([s6Step128EntryFRow,s6Step128EntryGRow,s6Step128EntryFvRow,s6Step128EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128EntryF_Incoming : rowsOwned s6Step128EntryFBefore [s6Step128EntryFRow,s6Step128EntryGRow,s6Step128EntryFvRow,s6Step128EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step128EntryFRow,s6Step128EntryGRow,s6Step128EntryFvRow,s6Step128EntryGvRow] 0 s6Step128EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step128EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step128EntryBank_outgoingOwned : rowsOwned s6Step128EntryGvAfter [s6Step128EntryFOut,s6Step128EntryGOut,s6Step128EntryFvOut,s6Step128EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step128EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step128EntryF_Outgoing : rowsOwned s6Step128EntryGvAfter [s6Step128EntryFOut,s6Step128EntryGOut,s6Step128EntryFvOut,s6Step128EntryGvOut] :=
  hmrRows_owned_drop s6Step128EntryGvAfter [s6Step128EntryFOut,s6Step128EntryGOut,s6Step128EntryFvOut,s6Step128EntryGvOut] 0 s6Step128EntryBank_outgoingOwned

private theorem s6Step128EntryF_distinct : (s6Step128EntryFRow.sign::s6Step128EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128EntryF_owned : (s6Step128EntryFRow.sign::s6Step128EntryFRow.payload).toFinset⊆s6Step128EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step128EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step128EntryF_reserved : s6Step128EntryFBefore.reserve s6Step128EntryFFresh.toFinset=some s6Step128EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step128EntryFFresh,arenaWires]
  · norm_num [s6Step128EntryFBefore,s6Step128EntryFFresh,arenaWires]
  · simp only [s6Step128EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step128EntryF_checked : planRowResizeLog s6Step128EntryFBefore s6Step128EntryFRow 205 s6Step128EntryFFresh=
    some (s6Step128EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460],795⟩,growRow 795 s6Step128EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step128EntryFBefore s6Step128EntryFAfter s6Step128EntryFRow 205 s6Step128EntryFFresh
    s6Step128EntryF_distinct s6Step128EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step128EntryF_reserved
  have rowEq : WindowRow.mk (s6Step128EntryFRow.payload++s6Step128EntryFFresh) s6Step128EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step128EntryFvAfter : Arena := s6Step128EntryFBefore

private def s6Step128EntryFvBefore : Arena := s6Step128EntryFBefore

private theorem s6Step128EntryFv_Incoming : rowsOwned s6Step128EntryFvBefore [s6Step128EntryFvRow,s6Step128EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step128EntryFRow,s6Step128EntryGRow,s6Step128EntryFvRow,s6Step128EntryGvRow] 2 s6Step128EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step128EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step128EntryFv_Outgoing : rowsOwned s6Step128EntryGvAfter [s6Step128EntryFvOut,s6Step128EntryGvOut] :=
  hmrRows_owned_drop s6Step128EntryGvAfter [s6Step128EntryFOut,s6Step128EntryGOut,s6Step128EntryFvOut,s6Step128EntryGvOut] 2 s6Step128EntryBank_outgoingOwned

private theorem s6Step128EntryFv_distinct : (s6Step128EntryFvRow.sign::s6Step128EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128EntryFv_owned : (s6Step128EntryFvRow.sign::s6Step128EntryFvRow.payload).toFinset⊆s6Step128EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step128EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step128EntryFv_reserved : s6Step128EntryFvBefore.reserve s6Step128EntryFvFresh.toFinset=some s6Step128EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step128EntryFvFresh,arenaWires]
  · norm_num [s6Step128EntryFvBefore,s6Step128EntryFBefore,s6Step128EntryFvFresh,arenaWires]
  · simp only [s6Step128EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step128EntryFv_checked : planRowResizeLog s6Step128EntryFvBefore s6Step128EntryFvRow 78 s6Step128EntryFvFresh=
    some (s6Step128EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩,growRow 776 s6Step128EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step128EntryFvBefore s6Step128EntryFvAfter s6Step128EntryFvRow 78 s6Step128EntryFvFresh
    s6Step128EntryFv_distinct s6Step128EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step128EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step128EntryFvRow.payload++s6Step128EntryFvFresh) s6Step128EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step128EntryGAfter : Arena := s6Step128EntryFBefore

private def s6Step128EntryGBefore : Arena := s6Step128EntryFBefore

private theorem s6Step128EntryG_Incoming : rowsOwned s6Step128EntryGBefore [s6Step128EntryGRow,s6Step128EntryFvRow,s6Step128EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step128EntryFRow,s6Step128EntryGRow,s6Step128EntryFvRow,s6Step128EntryGvRow] 1 s6Step128EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step128EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step128EntryG_Outgoing : rowsOwned s6Step128EntryGvAfter [s6Step128EntryGOut,s6Step128EntryFvOut,s6Step128EntryGvOut] :=
  hmrRows_owned_drop s6Step128EntryGvAfter [s6Step128EntryFOut,s6Step128EntryGOut,s6Step128EntryFvOut,s6Step128EntryGvOut] 1 s6Step128EntryBank_outgoingOwned

private theorem s6Step128EntryG_distinct : (s6Step128EntryGRow.sign::s6Step128EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128EntryG_owned : (s6Step128EntryGRow.sign::s6Step128EntryGRow.payload).toFinset⊆s6Step128EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step128EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step128EntryG_reserved : s6Step128EntryGBefore.reserve s6Step128EntryGFresh.toFinset=some s6Step128EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step128EntryGFresh,arenaWires]
  · norm_num [s6Step128EntryGBefore,s6Step128EntryFBefore,s6Step128EntryGFresh,arenaWires]
  · simp only [s6Step128EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step128EntryG_checked : planRowResizeLog s6Step128EntryGBefore s6Step128EntryGRow 205 s6Step128EntryGFresh=
    some (s6Step128EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],777⟩,growRow 777 s6Step128EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step128EntryGBefore s6Step128EntryGAfter s6Step128EntryGRow 205 s6Step128EntryGFresh
    s6Step128EntryG_distinct s6Step128EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step128EntryG_reserved
  have rowEq : WindowRow.mk (s6Step128EntryGRow.payload++s6Step128EntryGFresh) s6Step128EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step128EntryGvBefore : Arena := s6Step128EntryFBefore

private theorem s6Step128EntryGv_Incoming : rowsOwned s6Step128EntryGvBefore [s6Step128EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step128EntryFRow,s6Step128EntryGRow,s6Step128EntryFvRow,s6Step128EntryGvRow] 3 s6Step128EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step128EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step128EntryGv_Outgoing : rowsOwned s6Step128EntryGvAfter [s6Step128EntryGvOut] :=
  hmrRows_owned_drop s6Step128EntryGvAfter [s6Step128EntryFOut,s6Step128EntryGOut,s6Step128EntryFvOut,s6Step128EntryGvOut] 3 s6Step128EntryBank_outgoingOwned

private theorem s6Step128EntryGv_distinct : (s6Step128EntryGvRow.sign::s6Step128EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128EntryGv_owned : (s6Step128EntryGvRow.sign::s6Step128EntryGvRow.payload).toFinset⊆s6Step128EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step128EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step128EntryGv_reserved : s6Step128EntryGvBefore.reserve s6Step128EntryGvFresh.toFinset=some s6Step128EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step128EntryGvFresh,arenaWires]
  · norm_num [s6Step128EntryGvBefore,s6Step128EntryFBefore,s6Step128EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step128EntryGvBefore s6Step128EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step128EntryGvFresh rfl rfl
    · norm_num [s6Step128EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step128EntryGv_checked : planRowResizeLog s6Step128EntryGvBefore s6Step128EntryGvRow 78 s6Step128EntryGvFresh=
    some (s6Step128EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796],775⟩,growRow 775 s6Step128EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step128EntryGvBefore s6Step128EntryGvAfter s6Step128EntryGvRow 78 s6Step128EntryGvFresh
    s6Step128EntryGv_distinct s6Step128EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step128EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step128EntryGvRow.payload++s6Step128EntryGvFresh) s6Step128EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step128EntryBank_rows : planWindowRowsLog s6Step128EntryFBefore [(s6Step128EntryFRow,205),(s6Step128EntryGRow,205),(s6Step128EntryFvRow,78),(s6Step128EntryGvRow,78)] [s6Step128EntryFFresh,s6Step128EntryGFresh,s6Step128EntryFvFresh,s6Step128EntryGvFresh]=
    some (s6Step128EntryGvAfter,[s6Step128EntryFOut,s6Step128EntryGOut,s6Step128EntryFvOut,s6Step128EntryGvOut],(growRow 795 s6Step128EntryFFresh ++ (growRow 777 s6Step128EntryGFresh ++ (growRow 776 s6Step128EntryFvFresh ++ (growRow 775 s6Step128EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step128EntryGvAfter [] []=some (s6Step128EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step128EntryGvBefore s6Step128EntryGvAfter s6Step128EntryGvAfter
    s6Step128EntryGvRow s6Step128EntryGvOut 78 s6Step128EntryGvFresh [] [] []
    (growRow 775 s6Step128EntryGvFresh) ([]) s6Step128EntryGv_Incoming s6Step128EntryGv_checked h4 s6Step128EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step128EntryFvBefore s6Step128EntryFvAfter s6Step128EntryGvAfter
    s6Step128EntryFvRow s6Step128EntryFvOut 78 s6Step128EntryFvFresh [(s6Step128EntryGvRow,78)] [s6Step128EntryGvFresh] [s6Step128EntryGvOut]
    (growRow 776 s6Step128EntryFvFresh) ((growRow 775 s6Step128EntryGvFresh ++ [])) s6Step128EntryFv_Incoming s6Step128EntryFv_checked h3 s6Step128EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step128EntryGBefore s6Step128EntryGAfter s6Step128EntryGvAfter
    s6Step128EntryGRow s6Step128EntryGOut 205 s6Step128EntryGFresh [(s6Step128EntryFvRow,78),(s6Step128EntryGvRow,78)] [s6Step128EntryFvFresh,s6Step128EntryGvFresh] [s6Step128EntryFvOut,s6Step128EntryGvOut]
    (growRow 777 s6Step128EntryGFresh) ((growRow 776 s6Step128EntryFvFresh ++ (growRow 775 s6Step128EntryGvFresh ++ []))) s6Step128EntryG_Incoming s6Step128EntryG_checked h2 s6Step128EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step128EntryFBefore s6Step128EntryFAfter s6Step128EntryGvAfter
    s6Step128EntryFRow s6Step128EntryFOut 205 s6Step128EntryFFresh [(s6Step128EntryGRow,205),(s6Step128EntryFvRow,78),(s6Step128EntryGvRow,78)] [s6Step128EntryGFresh,s6Step128EntryFvFresh,s6Step128EntryGvFresh] [s6Step128EntryGOut,s6Step128EntryFvOut,s6Step128EntryGvOut]
    (growRow 795 s6Step128EntryFFresh) ((growRow 777 s6Step128EntryGFresh ++ (growRow 776 s6Step128EntryFvFresh ++ (growRow 775 s6Step128EntryGvFresh ++ [])))) s6Step128EntryF_Incoming s6Step128EntryF_checked h1 s6Step128EntryF_Outgoing
  exact h0

private theorem s6Step128EntryBank_checked : compileHmrBankResizeLog .entry s6Step128EntryFBefore ⟨s6Step128EntryFRow,s6Step128EntryGRow,s6Step128EntryFvRow,s6Step128EntryGvRow⟩ ⟨205,205,78,78⟩ [s6Step128EntryFFresh,s6Step128EntryGFresh,s6Step128EntryFvFresh,s6Step128EntryGvFresh]=
    some (s6Step128EntryGvAfter,⟨s6Step128EntryFOut,s6Step128EntryGOut,s6Step128EntryFvOut,s6Step128EntryGvOut⟩,(growRow 795 s6Step128EntryFFresh ++ (growRow 777 s6Step128EntryGFresh ++ (growRow 776 s6Step128EntryFvFresh ++ (growRow 775 s6Step128EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step128EntryBank_rows]
  rfl

private def s6Step128ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,460),(461,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step128ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step128ExitFBefore : Arena := s6Step128ExitGAfter

private def s6Step128ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 813],795⟩

private def s6Step128ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 838],776⟩

private def s6Step128ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 841],777⟩

private def s6Step128ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 833],775⟩

private theorem s6Step128ExitBank_incomingDistinct : ([s6Step128ExitGRow,s6Step128ExitFRow,s6Step128ExitFvRow,s6Step128ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128ExitF_Incoming : rowsOwned s6Step128ExitFBefore [s6Step128ExitFRow,s6Step128ExitFvRow,s6Step128ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step128ExitGRow,s6Step128ExitFRow,s6Step128ExitFvRow,s6Step128ExitGvRow] 1 s6Step128ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step128ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step128ExitBank_outgoingOwned : rowsOwned s6Step128ExitGvAfter [s6Step128ExitGOut,s6Step128ExitFOut,s6Step128ExitFvOut,s6Step128ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step128ExitGvAfter (fun q => ([(0,460),(461,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step128ExitF_Outgoing : rowsOwned s6Step128ExitGvAfter [s6Step128ExitFOut,s6Step128ExitFvOut,s6Step128ExitGvOut] :=
  hmrRows_owned_drop s6Step128ExitGvAfter [s6Step128ExitGOut,s6Step128ExitFOut,s6Step128ExitFvOut,s6Step128ExitGvOut] 1 s6Step128ExitBank_outgoingOwned

private theorem s6Step128ExitF_distinct : (s6Step128ExitFRow.sign::s6Step128ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128ExitF_owned : (s6Step128ExitFRow.sign::s6Step128ExitFRow.payload).toFinset⊆s6Step128ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step128ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128ExitF_retired : s6Step128ExitFBefore.retireSet s6Step128ExitFExtra.toFinset=s6Step128ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step128ExitFBefore s6Step128ExitFAfter s6Step128ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step128ExitFBefore s6Step128ExitFAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,460),(461,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step128ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step128ExitF_checked : planRowResizeLog s6Step128ExitFBefore s6Step128ExitFRow 204 []=
    some (s6Step128ExitFAfter,s6Step128ExitFOut,shrinkRow 795 s6Step128ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step128ExitFBefore s6Step128ExitFRow 204 s6Step128ExitF_distinct s6Step128ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step128ExitFRow.payload.take 204) s6Step128ExitFRow.sign=s6Step128ExitFOut := by decide +kernel
  have hi : s6Step128ExitFRow.payload.drop 204=s6Step128ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step128ExitF_retired] at result
  exact result

private def s6Step128ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,460),(461,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step128ExitFvBefore : Arena := s6Step128ExitFAfter

private theorem s6Step128ExitFv_Incoming : rowsOwned s6Step128ExitFvBefore [s6Step128ExitFvRow,s6Step128ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step128ExitGRow,s6Step128ExitFRow,s6Step128ExitFvRow,s6Step128ExitGvRow] 2 s6Step128ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step128ExitFvBefore (fun q => ([(0,460),(461,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step128ExitFv_Outgoing : rowsOwned s6Step128ExitGvAfter [s6Step128ExitFvOut,s6Step128ExitGvOut] :=
  hmrRows_owned_drop s6Step128ExitGvAfter [s6Step128ExitGOut,s6Step128ExitFOut,s6Step128ExitFvOut,s6Step128ExitGvOut] 2 s6Step128ExitBank_outgoingOwned

private theorem s6Step128ExitFv_distinct : (s6Step128ExitFvRow.sign::s6Step128ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128ExitFv_owned : (s6Step128ExitFvRow.sign::s6Step128ExitFvRow.payload).toFinset⊆s6Step128ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step128ExitFvBefore (fun q => ([(0,460),(461,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step128ExitFv_retired : s6Step128ExitFvBefore.retireSet s6Step128ExitFvExtra.toFinset=s6Step128ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step128ExitFvBefore s6Step128ExitFvAfter s6Step128ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step128ExitFvBefore s6Step128ExitFvAfter (fun q => ([(0,460),(461,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,460),(461,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step128ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step128ExitFv_checked : planRowResizeLog s6Step128ExitFvBefore s6Step128ExitFvRow 78 []=
    some (s6Step128ExitFvAfter,s6Step128ExitFvOut,shrinkRow 776 s6Step128ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step128ExitFvBefore s6Step128ExitFvRow 78 s6Step128ExitFv_distinct s6Step128ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step128ExitFvRow.payload.take 78) s6Step128ExitFvRow.sign=s6Step128ExitFvOut := by decide +kernel
  have hi : s6Step128ExitFvRow.payload.drop 78=s6Step128ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step128ExitFv_retired] at result
  exact result

private def s6Step128ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step128ExitG_Incoming : rowsOwned s6Step128ExitGBefore [s6Step128ExitGRow,s6Step128ExitFRow,s6Step128ExitFvRow,s6Step128ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step128ExitGRow,s6Step128ExitFRow,s6Step128ExitFvRow,s6Step128ExitGvRow] 0 s6Step128ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step128ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step128ExitG_Outgoing : rowsOwned s6Step128ExitGvAfter [s6Step128ExitGOut,s6Step128ExitFOut,s6Step128ExitFvOut,s6Step128ExitGvOut] :=
  hmrRows_owned_drop s6Step128ExitGvAfter [s6Step128ExitGOut,s6Step128ExitFOut,s6Step128ExitFvOut,s6Step128ExitGvOut] 0 s6Step128ExitBank_outgoingOwned

private theorem s6Step128ExitG_distinct : (s6Step128ExitGRow.sign::s6Step128ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128ExitG_owned : (s6Step128ExitGRow.sign::s6Step128ExitGRow.payload).toFinset⊆s6Step128ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step128ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128ExitG_retired : s6Step128ExitGBefore.retireSet s6Step128ExitGExtra.toFinset=s6Step128ExitGAfter := by
  unfold Arena.retireSet s6Step128ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step128ExitGBefore,s6Step128ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step128ExitG_checked : planRowResizeLog s6Step128ExitGBefore s6Step128ExitGRow 205 []=
    some (s6Step128ExitGAfter,s6Step128ExitGOut,shrinkRow 777 s6Step128ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step128ExitGBefore s6Step128ExitGRow 205 s6Step128ExitG_distinct s6Step128ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step128ExitGRow.payload.take 205) s6Step128ExitGRow.sign=s6Step128ExitGOut := by decide +kernel
  have hi : s6Step128ExitGRow.payload.drop 205=s6Step128ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step128ExitG_retired] at result
  exact result

private def s6Step128ExitGvBefore : Arena := s6Step128ExitFvAfter

private theorem s6Step128ExitGv_Incoming : rowsOwned s6Step128ExitGvBefore [s6Step128ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step128ExitGRow,s6Step128ExitFRow,s6Step128ExitFvRow,s6Step128ExitGvRow] 3 s6Step128ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step128ExitGvBefore (fun q => ([(0,460),(461,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step128ExitGv_Outgoing : rowsOwned s6Step128ExitGvAfter [s6Step128ExitGvOut] :=
  hmrRows_owned_drop s6Step128ExitGvAfter [s6Step128ExitGOut,s6Step128ExitFOut,s6Step128ExitFvOut,s6Step128ExitGvOut] 3 s6Step128ExitBank_outgoingOwned

private theorem s6Step128ExitGv_distinct : (s6Step128ExitGvRow.sign::s6Step128ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128ExitGv_owned : (s6Step128ExitGvRow.sign::s6Step128ExitGvRow.payload).toFinset⊆s6Step128ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step128ExitGvBefore (fun q => ([(0,460),(461,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step128ExitGv_retired : s6Step128ExitGvBefore.retireSet s6Step128ExitGvExtra.toFinset=s6Step128ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step128ExitGvBefore s6Step128ExitGvAfter s6Step128ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step128ExitGvBefore s6Step128ExitGvAfter (fun q => ([(0,460),(461,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,460),(461,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step128ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step128ExitGv_checked : planRowResizeLog s6Step128ExitGvBefore s6Step128ExitGvRow 78 []=
    some (s6Step128ExitGvAfter,s6Step128ExitGvOut,shrinkRow 775 s6Step128ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step128ExitGvBefore s6Step128ExitGvRow 78 s6Step128ExitGv_distinct s6Step128ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step128ExitGvRow.payload.take 78) s6Step128ExitGvRow.sign=s6Step128ExitGvOut := by decide +kernel
  have hi : s6Step128ExitGvRow.payload.drop 78=s6Step128ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step128ExitGv_retired] at result
  exact result

private theorem s6Step128ExitBank_rows : planWindowRowsLog s6Step128ExitGBefore [(s6Step128ExitGRow,205),(s6Step128ExitFRow,204),(s6Step128ExitFvRow,78),(s6Step128ExitGvRow,78)] [[],[],[],[]]=
    some (s6Step128ExitGvAfter,[s6Step128ExitGOut,s6Step128ExitFOut,s6Step128ExitFvOut,s6Step128ExitGvOut],(shrinkRow 777 s6Step128ExitGExtra ++ (shrinkRow 795 s6Step128ExitFExtra ++ (shrinkRow 776 s6Step128ExitFvExtra ++ (shrinkRow 775 s6Step128ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step128ExitGvAfter [] []=some (s6Step128ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step128ExitGvBefore s6Step128ExitGvAfter s6Step128ExitGvAfter
    s6Step128ExitGvRow s6Step128ExitGvOut 78 [] [] [] []
    (shrinkRow 775 s6Step128ExitGvExtra) ([]) s6Step128ExitGv_Incoming s6Step128ExitGv_checked h4 s6Step128ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step128ExitFvBefore s6Step128ExitFvAfter s6Step128ExitGvAfter
    s6Step128ExitFvRow s6Step128ExitFvOut 78 [] [(s6Step128ExitGvRow,78)] [[]] [s6Step128ExitGvOut]
    (shrinkRow 776 s6Step128ExitFvExtra) ((shrinkRow 775 s6Step128ExitGvExtra ++ [])) s6Step128ExitFv_Incoming s6Step128ExitFv_checked h3 s6Step128ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step128ExitFBefore s6Step128ExitFAfter s6Step128ExitGvAfter
    s6Step128ExitFRow s6Step128ExitFOut 204 [] [(s6Step128ExitFvRow,78),(s6Step128ExitGvRow,78)] [[],[]] [s6Step128ExitFvOut,s6Step128ExitGvOut]
    (shrinkRow 795 s6Step128ExitFExtra) ((shrinkRow 776 s6Step128ExitFvExtra ++ (shrinkRow 775 s6Step128ExitGvExtra ++ []))) s6Step128ExitF_Incoming s6Step128ExitF_checked h2 s6Step128ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step128ExitGBefore s6Step128ExitGAfter s6Step128ExitGvAfter
    s6Step128ExitGRow s6Step128ExitGOut 205 [] [(s6Step128ExitFRow,204),(s6Step128ExitFvRow,78),(s6Step128ExitGvRow,78)] [[],[],[]] [s6Step128ExitFOut,s6Step128ExitFvOut,s6Step128ExitGvOut]
    (shrinkRow 777 s6Step128ExitGExtra) ((shrinkRow 795 s6Step128ExitFExtra ++ (shrinkRow 776 s6Step128ExitFvExtra ++ (shrinkRow 775 s6Step128ExitGvExtra ++ [])))) s6Step128ExitG_Incoming s6Step128ExitG_checked h1 s6Step128ExitG_Outgoing
  exact h0

private theorem s6Step128ExitBank_checked : compileHmrBankResizeLog .exit s6Step128ExitGBefore ⟨s6Step128ExitFRow,s6Step128ExitGRow,s6Step128ExitFvRow,s6Step128ExitGvRow⟩ ⟨204,205,78,78⟩ [[],[],[],[]]=
    some (s6Step128ExitGvAfter,⟨s6Step128ExitFOut,s6Step128ExitGOut,s6Step128ExitFvOut,s6Step128ExitGvOut⟩,(shrinkRow 777 s6Step128ExitGExtra ++ (shrinkRow 795 s6Step128ExitFExtra ++ (shrinkRow 776 s6Step128ExitFvExtra ++ (shrinkRow 775 s6Step128ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step128ExitBank_rows]
  rfl

private theorem s6Step128Add0_apart : Disjoint s6Step128Add0Arena.live s6Step128Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step128Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128Add0_card : s6Step128Add0Arena.live.card=877 := by
  decide +kernel

private theorem s6Step128Add0_borrowed : s6Step128Add0Arena.checkBorrow (hmrHybridCount s6Step128Add0Arena s6Step128Add0B.length) s6Step128Add0Work=some s6Step128Add0During := by
  have len : s6Step128Add0Work.length=hmrHybridCount s6Step128Add0Arena s6Step128Add0B.length := by
    rw [hmrHybridCount,s6Step128Add0_card]
    decide +kernel
  have nd : s6Step128Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step128Add0Arena s6Step128Add0During s6Step128Add0Work.toFinset s6Step128Add0_bounded s6Step128Add0_apart rfl

private theorem s6Step128Add0_distinct : (850::822::879::(s6Step128Add0A++s6Step128Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128Add0_owned : (850::822::879::(s6Step128Add0A++s6Step128Add0B)).toFinset⊆s6Step128Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step128Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128Add0_checked : compileHmrHybridCinLog s6Step128Add0Arena 822 850 879 s6Step128Add0A s6Step128Add0B s6Step128Add0Work=some s6Step128Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step128Add0Arena s6Step128Add0During 822 850 879 s6Step128Add0A s6Step128Add0B s6Step128Add0Work
    (by decide +kernel) (by decide +kernel) s6Step128Add0_distinct
    (fun q hq => s6Step128Add0_owned (List.mem_toFinset.mpr hq)) s6Step128Add0_borrowed

private theorem s6Step128Add1_apart : Disjoint s6Step128Add1Arena.live s6Step128Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step128Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128Add1_card : s6Step128Add1Arena.live.card=877 := by
  decide +kernel

private theorem s6Step128Add1_borrowed : s6Step128Add1Arena.checkBorrow (hmrHybridCount s6Step128Add1Arena s6Step128Add1B.length) s6Step128Add1Work=some s6Step128Add1During := by
  have len : s6Step128Add1Work.length=hmrHybridCount s6Step128Add1Arena s6Step128Add1B.length := by
    rw [hmrHybridCount,s6Step128Add1_card]
    decide +kernel
  have nd : s6Step128Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step128Add1Arena s6Step128Add1During s6Step128Add1Work.toFinset s6Step128Add1_bounded s6Step128Add1_apart rfl

private theorem s6Step128Add1_distinct : (850::822::879::(s6Step128Add1A++s6Step128Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128Add1_owned : (850::822::879::(s6Step128Add1A++s6Step128Add1B)).toFinset⊆s6Step128Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step128Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128Add1_checked : compileHmrHybridCinLog s6Step128Add1Arena 822 850 879 s6Step128Add1A s6Step128Add1B s6Step128Add1Work=some s6Step128Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step128Add1Arena s6Step128Add1During 822 850 879 s6Step128Add1A s6Step128Add1B s6Step128Add1Work
    (by decide +kernel) (by decide +kernel) s6Step128Add1_distinct
    (fun q hq => s6Step128Add1_owned (List.mem_toFinset.mpr hq)) s6Step128Add1_borrowed

private theorem s6Step128F4_apart : Disjoint (s6Step128Add0A++s6Step128Add0B).toFinset (s6Step128Add1A++s6Step128Add1B).toFinset := by
  have nd : ((s6Step128Add0A++s6Step128Add0B)++(s6Step128Add1A++s6Step128Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step128F4_carry : s6Step128F4FlagArena.checkBorrow 1 [879]=some s6Step128Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step128F4FlagArena,s6Step128HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step128F4FlagArena,s6Step128HeadFvAfter,s6Step128Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step128F4_distinct : (854::822::850::879::((s6Step128Add0A++s6Step128Add1A)++(s6Step128Add0B++s6Step128Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128F4_flag : s6Step128HeadFvAfter.checkBorrow 1 [850]=some s6Step128F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step128HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step128F4_owned : (854::822::((s6Step128Add0A++s6Step128Add1A)++(s6Step128Add0B++s6Step128Add1B))).toFinset⊆s6Step128HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step128HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128F4_checked : compileHmrHybridF4Log s6Step128HeadFvAfter 854 822 s6Step128Add0A s6Step128Add0B s6Step128Add1A s6Step128Add1B [850] [879] s6Step128Add0Work s6Step128Add1Work=some s6Step128F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step128HeadFvAfter s6Step128F4FlagArena s6Step128Add0Arena s6Step128Add0During s6Step128Add1During 854 822
    s6Step128Add0A s6Step128Add0B s6Step128Add1A s6Step128Add1B [850] [879] s6Step128Add0Work s6Step128Add1Work
    (fun q hq => s6Step128F4_owned (List.mem_toFinset.mpr hq)) s6Step128F4_flag s6Step128F4_carry
    s6Step128F4_distinct s6Step128F4_apart s6Step128Add0_checked s6Step128Add1_checked

private theorem s6Step128Front_branch : s6Step128FrontSigmaArena.checkBorrow 1 [822]=some s6Step128HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step128FrontSigmaArena,s6Step128EntryGvAfter,arenaWires]
  · change s6Step128HeadGBefore.live=(s6Step128EntryGvAfter.live∪{854})∪{822}
    apply hmrArena_union_pair_of_filter_check s6Step128EntryGvAfter s6Step128HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 854 822 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step128Front_entry : HmrFrontEntryValid s6Step128EntryFBefore s6Step128FrontBank 205 78 ⟨204,205,78,78⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step128FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step128EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step128EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,841),(843,849),(851,854),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step128FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step128Front_sigma : s6Step128EntryGvAfter.checkBorrow 1 [854]=some s6Step128FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step128EntryGvAfter,arenaWires]
  · rfl

private def s6Step128HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step128HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step128HeadFBefore : Arena := s6Step128HeadGAfter

private def s6Step128HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460],795⟩

private def s6Step128HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821],776⟩

private def s6Step128HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],777⟩

private def s6Step128HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796],775⟩

private theorem s6Step128HeadBank_incomingDistinct : ([s6Step128HeadGRow,s6Step128HeadFRow,s6Step128HeadGvRow,s6Step128HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128HeadF_Incoming : rowsOwned s6Step128HeadFBefore [s6Step128HeadFRow,s6Step128HeadGvRow,s6Step128HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step128HeadGRow,s6Step128HeadFRow,s6Step128HeadGvRow,s6Step128HeadFvRow] 1 s6Step128HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step128HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step128HeadBank_outgoingOwned : rowsOwned s6Step128HeadFvAfter [s6Step128HeadGOut,s6Step128HeadFOut,s6Step128HeadGvOut,s6Step128HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step128HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step128HeadF_Outgoing : rowsOwned s6Step128HeadFvAfter [s6Step128HeadFOut,s6Step128HeadGvOut,s6Step128HeadFvOut] :=
  hmrRows_owned_drop s6Step128HeadFvAfter [s6Step128HeadGOut,s6Step128HeadFOut,s6Step128HeadGvOut,s6Step128HeadFvOut] 1 s6Step128HeadBank_outgoingOwned

private theorem s6Step128HeadF_distinct : (s6Step128HeadFRow.sign::s6Step128HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128HeadF_owned : (s6Step128HeadFRow.sign::s6Step128HeadFRow.payload).toFinset⊆s6Step128HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step128HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128HeadF_reserved : s6Step128HeadFBefore.reserve s6Step128HeadFFresh.toFinset=some s6Step128HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step128HeadFFresh,arenaWires]
  · norm_num [s6Step128HeadFBefore,s6Step128HeadGAfter,s6Step128HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step128HeadFAfter,s6Step128HeadFBefore,s6Step128HeadGAfter,s6Step128HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step128HeadF_checked : planRowResizeLog s6Step128HeadFBefore s6Step128HeadFRow 206 s6Step128HeadFFresh=
    some (s6Step128HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 813],795⟩,growRow 795 s6Step128HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step128HeadFBefore s6Step128HeadFAfter s6Step128HeadFRow 206 s6Step128HeadFFresh
    s6Step128HeadF_distinct s6Step128HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step128HeadF_reserved
  have rowEq : WindowRow.mk (s6Step128HeadFRow.payload++s6Step128HeadFFresh) s6Step128HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 813],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step128HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step128HeadFvBefore : Arena := s6Step128HeadGvAfter

private theorem s6Step128HeadFv_Incoming : rowsOwned s6Step128HeadFvBefore [s6Step128HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step128HeadGRow,s6Step128HeadFRow,s6Step128HeadGvRow,s6Step128HeadFvRow] 3 s6Step128HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step128HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step128HeadFv_Outgoing : rowsOwned s6Step128HeadFvAfter [s6Step128HeadFvOut] :=
  hmrRows_owned_drop s6Step128HeadFvAfter [s6Step128HeadGOut,s6Step128HeadFOut,s6Step128HeadGvOut,s6Step128HeadFvOut] 3 s6Step128HeadBank_outgoingOwned

private theorem s6Step128HeadFv_distinct : (s6Step128HeadFvRow.sign::s6Step128HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128HeadFv_owned : (s6Step128HeadFvRow.sign::s6Step128HeadFvRow.payload).toFinset⊆s6Step128HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step128HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step128HeadFv_reserved : s6Step128HeadFvBefore.reserve s6Step128HeadFvFresh.toFinset=some s6Step128HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step128HeadFvFresh,arenaWires]
  · norm_num [s6Step128HeadFvBefore,s6Step128HeadGvAfter,s6Step128HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step128HeadFvBefore s6Step128HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step128HeadFvFresh rfl rfl
    · norm_num [s6Step128HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step128HeadFv_checked : planRowResizeLog s6Step128HeadFvBefore s6Step128HeadFvRow 79 s6Step128HeadFvFresh=
    some (s6Step128HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 838],776⟩,growRow 776 s6Step128HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step128HeadFvBefore s6Step128HeadFvAfter s6Step128HeadFvRow 79 s6Step128HeadFvFresh
    s6Step128HeadFv_distinct s6Step128HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step128HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step128HeadFvRow.payload++s6Step128HeadFvFresh) s6Step128HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 838],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step128HeadG_Incoming : rowsOwned s6Step128HeadGBefore [s6Step128HeadGRow,s6Step128HeadFRow,s6Step128HeadGvRow,s6Step128HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step128HeadGRow,s6Step128HeadFRow,s6Step128HeadGvRow,s6Step128HeadFvRow] 0 s6Step128HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step128HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step128HeadG_Outgoing : rowsOwned s6Step128HeadFvAfter [s6Step128HeadGOut,s6Step128HeadFOut,s6Step128HeadGvOut,s6Step128HeadFvOut] :=
  hmrRows_owned_drop s6Step128HeadFvAfter [s6Step128HeadGOut,s6Step128HeadFOut,s6Step128HeadGvOut,s6Step128HeadFvOut] 0 s6Step128HeadBank_outgoingOwned

private theorem s6Step128HeadG_distinct : (s6Step128HeadGRow.sign::s6Step128HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128HeadG_owned : (s6Step128HeadGRow.sign::s6Step128HeadGRow.payload).toFinset⊆s6Step128HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step128HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128HeadG_reserved : s6Step128HeadGBefore.reserve s6Step128HeadGFresh.toFinset=some s6Step128HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step128HeadGFresh,arenaWires]
  · norm_num [s6Step128HeadGBefore,s6Step128HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step128HeadGAfter,s6Step128HeadGBefore,s6Step128HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step128HeadG_checked : planRowResizeLog s6Step128HeadGBefore s6Step128HeadGRow 206 s6Step128HeadGFresh=
    some (s6Step128HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 841],777⟩,growRow 777 s6Step128HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step128HeadGBefore s6Step128HeadGAfter s6Step128HeadGRow 206 s6Step128HeadGFresh
    s6Step128HeadG_distinct s6Step128HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step128HeadG_reserved
  have rowEq : WindowRow.mk (s6Step128HeadGRow.payload++s6Step128HeadGFresh) s6Step128HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 841],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step128HeadGvBefore : Arena := s6Step128HeadFAfter

private theorem s6Step128HeadGv_Incoming : rowsOwned s6Step128HeadGvBefore [s6Step128HeadGvRow,s6Step128HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step128HeadGRow,s6Step128HeadFRow,s6Step128HeadGvRow,s6Step128HeadFvRow] 2 s6Step128HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step128HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step128HeadGv_Outgoing : rowsOwned s6Step128HeadFvAfter [s6Step128HeadGvOut,s6Step128HeadFvOut] :=
  hmrRows_owned_drop s6Step128HeadFvAfter [s6Step128HeadGOut,s6Step128HeadFOut,s6Step128HeadGvOut,s6Step128HeadFvOut] 2 s6Step128HeadBank_outgoingOwned

private theorem s6Step128HeadGv_distinct : (s6Step128HeadGvRow.sign::s6Step128HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step128HeadGv_owned : (s6Step128HeadGvRow.sign::s6Step128HeadGvRow.payload).toFinset⊆s6Step128HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step128HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step128HeadGv_reserved : s6Step128HeadGvBefore.reserve s6Step128HeadGvFresh.toFinset=some s6Step128HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step128HeadGvFresh,arenaWires]
  · norm_num [s6Step128HeadGvBefore,s6Step128HeadFAfter,s6Step128HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step128HeadGvBefore s6Step128HeadGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step128HeadGvFresh rfl rfl
    · norm_num [s6Step128HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step128HeadGv_checked : planRowResizeLog s6Step128HeadGvBefore s6Step128HeadGvRow 79 s6Step128HeadGvFresh=
    some (s6Step128HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 833],775⟩,growRow 775 s6Step128HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step128HeadGvBefore s6Step128HeadGvAfter s6Step128HeadGvRow 79 s6Step128HeadGvFresh
    s6Step128HeadGv_distinct s6Step128HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step128HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step128HeadGvRow.payload++s6Step128HeadGvFresh) s6Step128HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 833],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step128HeadBank_rows : planWindowRowsLog s6Step128HeadGBefore [(s6Step128HeadGRow,206),(s6Step128HeadFRow,206),(s6Step128HeadGvRow,79),(s6Step128HeadFvRow,79)] [s6Step128HeadGFresh,s6Step128HeadFFresh,s6Step128HeadGvFresh,s6Step128HeadFvFresh]=
    some (s6Step128HeadFvAfter,[s6Step128HeadGOut,s6Step128HeadFOut,s6Step128HeadGvOut,s6Step128HeadFvOut],(growRow 777 s6Step128HeadGFresh ++ (growRow 795 s6Step128HeadFFresh ++ (growRow 775 s6Step128HeadGvFresh ++ (growRow 776 s6Step128HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step128HeadFvAfter [] []=some (s6Step128HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step128HeadFvBefore s6Step128HeadFvAfter s6Step128HeadFvAfter
    s6Step128HeadFvRow s6Step128HeadFvOut 79 s6Step128HeadFvFresh [] [] []
    (growRow 776 s6Step128HeadFvFresh) ([]) s6Step128HeadFv_Incoming s6Step128HeadFv_checked h4 s6Step128HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step128HeadGvBefore s6Step128HeadGvAfter s6Step128HeadFvAfter
    s6Step128HeadGvRow s6Step128HeadGvOut 79 s6Step128HeadGvFresh [(s6Step128HeadFvRow,79)] [s6Step128HeadFvFresh] [s6Step128HeadFvOut]
    (growRow 775 s6Step128HeadGvFresh) ((growRow 776 s6Step128HeadFvFresh ++ [])) s6Step128HeadGv_Incoming s6Step128HeadGv_checked h3 s6Step128HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step128HeadFBefore s6Step128HeadFAfter s6Step128HeadFvAfter
    s6Step128HeadFRow s6Step128HeadFOut 206 s6Step128HeadFFresh [(s6Step128HeadGvRow,79),(s6Step128HeadFvRow,79)] [s6Step128HeadGvFresh,s6Step128HeadFvFresh] [s6Step128HeadGvOut,s6Step128HeadFvOut]
    (growRow 795 s6Step128HeadFFresh) ((growRow 775 s6Step128HeadGvFresh ++ (growRow 776 s6Step128HeadFvFresh ++ []))) s6Step128HeadF_Incoming s6Step128HeadF_checked h2 s6Step128HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step128HeadGBefore s6Step128HeadGAfter s6Step128HeadFvAfter
    s6Step128HeadGRow s6Step128HeadGOut 206 s6Step128HeadGFresh [(s6Step128HeadFRow,206),(s6Step128HeadGvRow,79),(s6Step128HeadFvRow,79)] [s6Step128HeadFFresh,s6Step128HeadGvFresh,s6Step128HeadFvFresh] [s6Step128HeadFOut,s6Step128HeadGvOut,s6Step128HeadFvOut]
    (growRow 777 s6Step128HeadGFresh) ((growRow 795 s6Step128HeadFFresh ++ (growRow 775 s6Step128HeadGvFresh ++ (growRow 776 s6Step128HeadFvFresh ++ [])))) s6Step128HeadG_Incoming s6Step128HeadG_checked h1 s6Step128HeadG_Outgoing
  exact h0

private theorem s6Step128HeadBank_checked : compileHmrBankResizeLog .headroom s6Step128HeadGBefore ⟨s6Step128HeadFRow,s6Step128HeadGRow,s6Step128HeadFvRow,s6Step128HeadGvRow⟩ ⟨206,206,79,79⟩ [s6Step128HeadGFresh,s6Step128HeadFFresh,s6Step128HeadGvFresh,s6Step128HeadFvFresh]=
    some (s6Step128HeadFvAfter,⟨s6Step128HeadFOut,s6Step128HeadGOut,s6Step128HeadFvOut,s6Step128HeadGvOut⟩,(growRow 777 s6Step128HeadGFresh ++ (growRow 795 s6Step128HeadFFresh ++ (growRow 775 s6Step128HeadGvFresh ++ (growRow 776 s6Step128HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step128HeadBank_rows]
  rfl

private theorem s6Step128Front_checked : compileHmrSourceFrontLog s6Step128EntryFBefore s6Step128FrontBank 205 78 ⟨204,205,78,78⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step128FrontLog=some s6Step128FrontPlan := by
  have pairEq : s6Step128FrontPair=⟨s6Step128HeadFRow,s6Step128HeadGRow,s6Step128HeadFvRow,s6Step128HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step128FrontHead=⟨s6Step128ExitFRow,s6Step128ExitGRow,s6Step128ExitFvRow,s6Step128ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step128Add0A=s6Step128FrontHead.f.wires := by decide +kernel
  have gEq : s6Step128Add0B=s6Step128FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step128Add1A=s6Step128FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step128Add1B=s6Step128FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step128EntryFBefore s6Step128FrontBank 205 78 ⟨204,205,78,78⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step128FrontLog s6Step128FrontPlan
  · exact s6Step128Front_entry
  · exact s6Step128EntryBank_checked
  · exact s6Step128Front_sigma
  · rfl
  · exact s6Step128Front_branch
  · rfl
  · simpa only [s6Step128FrontPlan,pairEq] using s6Step128HeadBank_checked
  · simpa only [s6Step128FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step128F4_checked
  · exact s6Step128Counter_checked
  · rfl
  · simpa only [s6Step128FrontPlan,headEq] using s6Step128ExitBank_checked

private theorem s6Step128Complete_explicit_checked : compileHmrEarlyStepLog s6Step128EntryFBefore s6Step128FrontBank 205 78 ⟨204,205,78,78⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step128CompleteLog=some s6Step128CompletePlan := by
  let Q := s6Step128EarlyControlPlan
  have hq := s6Step128EarlyControl_plan_checked
  have fv1 : s6Step128CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step128CompleteOut.fv.payload[2]?.getD s6Step128CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step128CompleteOut.fv.payload[3]?.getD s6Step128CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step128CompleteOut.fv.payload[4]?.getD s6Step128CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step128EntryFBefore s6Step128EarlyControlArena s6Step128FrontBank 205 78 ⟨204,205,78,78⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step128CompleteLog s6Step128FrontPlan Q
    s6Step128Front_checked s6Step128Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step128Complete_owned s6Step128Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step128EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 854 s6Step128CompleteOut.fv.second (s6Step128CompleteOut.fv.payload[2]?.getD s6Step128CompleteOut.fv.sign) (s6Step128CompleteOut.fv.payload[3]?.getD s6Step128CompleteOut.fv.sign) (s6Step128CompleteOut.fv.payload[4]?.getD s6Step128CompleteOut.fv.sign) 822 37 s6Step128EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep128Arena : Arena := s6Step128EntryFBefore
def s6PrivateStep128Bank : WindowBank := s6Step128FrontBank
def s6PrivateStep128Spec : HmrSourceWalkStepLog := ⟨205,78,⟨204,205,78,78⟩,37,.early s6Step128CompleteLog⟩
def s6PrivateStep128Plan : HmrSourceStepPlan := .early s6Step128CompletePlan
theorem s6PrivateStep128_source : s6PrivateStep128Spec=s6ObservedLogs128[0] := rfl
theorem s6PrivateStep128_checked : compileHmrSourceStepLog s6PrivateStep128Arena s6PrivateStep128Bank
    s6PrivateStep128Spec.fgWidth s6PrivateStep128Spec.vWidth s6PrivateStep128Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 128 s6PrivateStep128Spec.need none s6PrivateStep128Spec.log=some s6PrivateStep128Plan := by
  change compileHmrSourceStepLog s6Step128EntryFBefore s6Step128FrontBank 205 78 ⟨204,205,78,78⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 128 37 none (.early s6Step128CompleteLog)=some (.early s6Step128CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 128<498)]
  rw [s6Step128Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
