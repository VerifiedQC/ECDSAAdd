import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep121
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

private def s6Step123CompleteMoves : List (Wire × Wire) := [(850,463)]

private def s6Step123EarlyControlLog : HmrEarlyControlLog := ⟨[850, 796, 813, 814, 821],[879],[875],[882, 891, 903, 791, 825, 836],[]⟩

private def s6Step123FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [865]],[[814], [813], [796], [868]],[[], [], [], []]⟩,[888],[848],[821],[879],[875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[821, 879, 875, 882]⟩

private def s6Step123CompleteLog : HmrEarlyStepLog := ⟨s6Step123FrontLog,s6Step123CompleteMoves,s6Step123EarlyControlLog⟩

private def s6Step123ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462],795⟩

private def s6Step123ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868],776⟩

private def s6Step123ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833],777⟩

private def s6Step123ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865],775⟩

private def s6Step123FrontOut : WindowBank := ⟨s6Step123ExitFOut,s6Step123ExitGOut,s6Step123ExitFvOut,s6Step123ExitGvOut⟩

private def s6Step123CompleteOut : WindowBank := s6Step123FrontOut.repacked s6Step123CompleteMoves

private def s6Step123EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step123EarlyControlPositiveArena,[879],s6Step123EarlyControlEqualityArena,[875],⟨⟨888,false⟩,[⟨⟨879,false⟩,875⟩]⟩⟩

private def s6Step123EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<888) ∨ (889≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<888) ∨ (889≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,850⟩,⟨⟨772,false⟩,796⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,814⟩,⟨⟨769,false⟩,821⟩]⟩

private def s6Step123EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step123EarlyControlZeroArena,s6Step123EarlyControlZeroPlan,s6Step123EarlyControlClassPlan,s6Step123EarlyControlFlagArena,s6Step123EarlyControlFittedArena,s6Step123EarlyControlHistoryArena,s6Step123EarlyControlSigmaArena,s6Step123EarlyControlOutputArena,s6Step123EarlyControlLog⟩

private def s6Step123CounterWork : List Wire := [821, 879, 875, 882]

private theorem s6Step123Counter_bounded : s6Step123CounterWork.toFinset⊆arenaWires := by norm_num [s6Step123CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step123HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123CounterDuring : Arena := ⟨s6Step123HeadFvAfter.live∪s6Step123CounterWork.toFinset,Finset.union_subset s6Step123HeadFvAfter.bounded s6Step123Counter_bounded⟩

private def s6Step123EntryFFresh : List Wire := []

private def s6Step123EntryFvFresh : List Wire := []

private def s6Step123EntryGFresh : List Wire := []

private def s6Step123EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step123EntryGvFresh : List Wire := [865]

private def s6Step123ExitFExtra : List Wire := [463, 813]

private def s6Step123ExitGExtra : List Wire := [814]

private def s6Step123ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<463) ∨ (464≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123ExitGvExtra : List Wire := [796]

private def s6Step123Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123Add0Work : List Wire := [875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step123Add0_bounded : s6Step123Add0Work.toFinset⊆arenaWires := by
  have h : s6Step123Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step123Add0During : Arena := ⟨s6Step123Add0Arena.live∪s6Step123Add0Work.toFinset,Finset.union_subset s6Step123Add0Arena.bounded s6Step123Add0_bounded⟩

private def s6Step123Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123Add1Work : List Wire := [875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step123Add1_bounded : s6Step123Add1Work.toFinset⊆arenaWires := by
  have h : s6Step123Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step123Add1During : Arena := ⟨s6Step123Add1Arena.live∪s6Step123Add1Work.toFinset,Finset.union_subset s6Step123Add1Arena.bounded s6Step123Add1_bounded⟩

private def s6Step123F4FlagArena : Arena := ⟨s6Step123HeadFvAfter.live∪{821},Finset.union_subset s6Step123HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step123F4Plan : HmrHybridF4Plan := ⟨s6Step123F4FlagArena,[821],s6Step123Add0Arena,[879],s6Step123Add0During,s6Step123Add0Work,s6Step123Add1During,s6Step123Add1Work⟩

private def s6Step123HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 813],795⟩

private def s6Step123HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868],776⟩

private def s6Step123HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833, 814],777⟩

private def s6Step123HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 796],775⟩

private def s6Step123FrontHead : WindowBank := ⟨s6Step123HeadFOut,s6Step123HeadGOut,s6Step123HeadFvOut,s6Step123HeadGvOut⟩

private def s6Step123EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463],795⟩

private def s6Step123EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880],776⟩

private def s6Step123EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833],777⟩

private def s6Step123EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865],775⟩

private def s6Step123FrontPair : WindowBank := ⟨s6Step123EntryFOut,s6Step123EntryGOut,s6Step123EntryFvOut,s6Step123EntryGvOut⟩

private def s6Step123FrontSigmaArena : Arena := ⟨s6Step123EntryGvAfter.live∪{888},Finset.union_subset s6Step123EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step123HeadFFresh : List Wire := [813]

private def s6Step123HeadFvFresh : List Wire := [868]

private def s6Step123HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123HeadGFresh : List Wire := [814]

private def s6Step123HeadGvFresh : List Wire := [796]

private def s6Step123FrontPlan : HmrSourceFront := ⟨s6Step123EntryGvAfter,s6Step123FrontPair,(growRow 795 s6Step123EntryFFresh ++ (growRow 777 s6Step123EntryGFresh ++ (growRow 776 s6Step123EntryFvFresh ++ (growRow 775 s6Step123EntryGvFresh ++ [])))),s6Step123FrontSigmaArena,[888],s6Step123HeadGBefore,[848],
  s6Step123HeadFvAfter,s6Step123FrontHead,(growRow 777 s6Step123HeadGFresh ++ (growRow 795 s6Step123HeadFFresh ++ (growRow 775 s6Step123HeadGvFresh ++ (growRow 776 s6Step123HeadFvFresh ++ [])))),s6Step123F4Plan,s6Step123CounterDuring,s6Step123CounterWork,s6Step123ExitGvAfter,s6Step123FrontOut,(shrinkRow 777 s6Step123ExitGExtra ++ (shrinkRow 795 s6Step123ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step123ExitGvExtra ++ []))))⟩

private def s6Step123CompletePlan : HmrEarlyStepPlan := ⟨s6Step123FrontPlan,s6Step123EarlyControlArena,s6Step123EarlyControlPlan,s6Step123CompleteMoves⟩

private theorem s6Step123Complete_apart : List.Disjoint (s6Step123CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [888, 848, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step123CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[888, 848, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step123Complete_owned : (s6Step123CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step123EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step123EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step123CompleteMoveArena : Arena := ⟨s6Step123ExitGvAfter.live∪{463},Finset.union_subset s6Step123ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step123Complete_repack : s6Step123ExitGvAfter.checkRepack s6Step123CompleteMoves=some s6Step123EarlyControlArena := by
  have owned : 850∈s6Step123ExitGvAfter.live := by norm_num [s6Step123ExitGvAfter,arenaWires]
  have reserve : s6Step123ExitGvAfter.reserve {463}=some s6Step123CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step123ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step123CompleteMoveArena.retireSet {850}=s6Step123EarlyControlArena := by
    unfold Arena.retireSet s6Step123EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step123CompleteMoveArena,s6Step123ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step123CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step123CompleteMoveArena.retireSet {850}).checkRepack []=some s6Step123EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step123EarlyControl_branchOwned : ([848] : List Wire).toFinset⊆s6Step123EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step123EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<888) ∨ (889≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123EarlyControl_branch : compileHmrBranchRetirement s6Step123EarlyControlSigmaArena 848=some s6Step123EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step123EarlyControl_branchOwned
  · ext q
    simp [s6Step123EarlyControlOutputArena,s6Step123EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step123EarlyControl_classEqualityBorrow : s6Step123EarlyControlPositiveArena.checkBorrow (([888, 879] : List Wire).length-1) s6Step123EarlyControlLog.classWork=some s6Step123EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step123EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step123EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step123EarlyControlEqualityArena,s6Step123EarlyControlPositiveArena,s6Step123EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step123EarlyControl_classEqualityOwned : ([888, 879] : List Wire).toFinset⊆s6Step123EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step123EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123EarlyControl_classEquality : compileHmrEqualityLog s6Step123EarlyControlPositiveArena [888, 879] 0 s6Step123EarlyControlLog.classWork=some (s6Step123EarlyControlEqualityArena,s6Step123EarlyControlLog.classWork,s6Step123EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step123EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step123EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step123EarlyControl_classOwned : ([769, 821, 888] : List Wire).toFinset⊆s6Step123EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step123EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123EarlyControl_positiveBorrow : s6Step123EarlyControlZeroArena.checkBorrow (1) s6Step123EarlyControlLog.positiveWork=some s6Step123EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step123EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step123EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step123EarlyControlPositiveArena,s6Step123EarlyControlZeroArena,s6Step123EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step123EarlyControl_class : compileHmrSourceClassLog s6Step123EarlyControlZeroArena false 769 s6Step123EarlyControlZeroPlan.top 0 888 s6Step123EarlyControlLog.positiveWork s6Step123EarlyControlLog.classWork=some s6Step123EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step123EarlyControlClassPlan s6Step123EarlyControlZeroArena false 769 s6Step123EarlyControlZeroPlan.top 0 888
  constructor
  · decide +kernel
  · exact s6Step123EarlyControl_classOwned
  · exact s6Step123EarlyControl_positiveBorrow
  · exact s6Step123EarlyControl_classEquality

private theorem s6Step123EarlyControl_entryRecordOwned : ([848, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step123EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step123EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123EarlyControl_entrySigmaOwned : ([888, 254] : List Wire).toFinset⊆s6Step123EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step123EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123EarlyControl_fitBorrow : s6Step123EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step123EarlyControlLog.recordFresh=some s6Step123EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step123EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step123EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step123EarlyControlFittedArena,s6Step123EarlyControlFlagArena,s6Step123EarlyControlLog,arenaWires]

private theorem s6Step123EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step123EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step123EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123EarlyControl_fit : compileHmrRecordGrowLog s6Step123EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step123EarlyControlLog.recordFresh=some s6Step123EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step123EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step123EarlyControl_fitBorrow

private theorem s6Step123EarlyControl_flagsBorrow : s6Step123EarlyControlEqualityArena.checkBorrow (6) s6Step123EarlyControlLog.flagWork=some s6Step123EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step123EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step123EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step123EarlyControlFlagArena,s6Step123EarlyControlEqualityArena,s6Step123EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step123EarlyControl_flagsOwned : ([875, 253, 252, 251] : List Wire).toFinset⊆s6Step123EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step123EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123EarlyControl_flags : compileHmrFlagsLog s6Step123EarlyControlClassPlan.equalityArena s6Step123EarlyControlClassPlan.equality.top 253 252 251 s6Step123EarlyControlLog.flagWork=some s6Step123EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step123EarlyControl_flagsOwned⟩
  · exact s6Step123EarlyControl_flagsBorrow

private theorem s6Step123EarlyControl_historyBorrow : s6Step123EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step123EarlyControlLog.recordFresh=some s6Step123EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step123EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step123EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step123EarlyControlHistoryArena,s6Step123EarlyControlArena,s6Step123EarlyControlLog,arenaWires]

private theorem s6Step123EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step123EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step123EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123EarlyControl_history : compileHmrRecordGrowLog s6Step123EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step123EarlyControlLog.recordFresh=some s6Step123EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step123EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step123EarlyControl_historyBorrow

private theorem s6Step123EarlyControl_sigmaOwned : ([254, 888] : List Wire).toFinset⊆s6Step123EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step123EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123EarlyControl_sigmaReleaseOwned : ([888] : List Wire).toFinset⊆s6Step123EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step123EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123EarlyControl_sigmaRelease : s6Step123EarlyControlHistoryArena.release {888} (fun _ => false)=some s6Step123EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step123EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step123EarlyControlSigmaArena,s6Step123EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step123EarlyControl_sigma : compileHmrSigmaDropLog s6Step123EarlyControlHistoryArena false 0 0 254 888 []=some s6Step123EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step123EarlyControl_sigmaOwned⟩
  · exact s6Step123EarlyControl_sigmaRelease

private theorem s6Step123EarlyControl_zeroBorrow : s6Step123EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step123EarlyControlLog.zeroWork=some s6Step123EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step123EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step123EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step123EarlyControlZeroArena,s6Step123EarlyControlArena,s6Step123EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step123EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step123EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step123EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123EarlyControl_zero : compileHmrEqualityLog s6Step123EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step123EarlyControlLog.zeroWork=some (s6Step123EarlyControlZeroArena,s6Step123EarlyControlLog.zeroWork,s6Step123EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step123EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step123EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step123EarlyControl_logged : s6Step123EarlyControlPlan.Logged s6Step123EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 888 254 253 252 251 848 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step123EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step123EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step123EarlyControl_zero
  · exact s6Step123EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step123EarlyControl_flags
  · exact s6Step123EarlyControl_fit
  · exact s6Step123EarlyControl_history
  · exact s6Step123EarlyControl_sigma
  · exact s6Step123EarlyControl_branch

private theorem s6Step123EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step123EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 888 254 253 252 251 848 37 s6Step123EarlyControlLog=some s6Step123EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step123EarlyControlPlan s6Step123EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 888 254 253 252 251 848 37 s6Step123EarlyControl_logged

private def s6Step123EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,865),(866,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step123EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463],795⟩

private def s6Step123EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880],776⟩

private def s6Step123EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833],777⟩

private def s6Step123EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830],775⟩

private def s6Step123FrontBank : WindowBank := ⟨s6Step123EntryFRow,s6Step123EntryGRow,s6Step123EntryFvRow,s6Step123EntryGvRow⟩

private def s6Step123Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 813, 795]

private def s6Step123Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833, 814, 777]

private def s6Step123Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 776]

private def s6Step123Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 796, 775]

private theorem s6Step123Counter_apart : Disjoint s6Step123HeadFvAfter.live s6Step123CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step123HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123Counter_borrowed : s6Step123HeadFvAfter.checkBorrow 4 s6Step123CounterWork=some s6Step123CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step123HeadFvAfter s6Step123CounterDuring s6Step123CounterWork.toFinset s6Step123Counter_bounded s6Step123Counter_apart rfl

private theorem s6Step123Counter_owned : (888::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step123HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step123HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123Counter_checked : compileHmrCounterStepLog s6Step123HeadFvAfter true 888 [774, 773, 772, 771, 770, 769] s6Step123CounterWork=some s6Step123CounterDuring := by
  have owned : ∀q∈888::[774, 773, 772, 771, 770, 769],q∈s6Step123HeadFvAfter.live := fun q hq => s6Step123Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step123Counter_borrowed

private def s6Step123EntryFAfter : Arena := s6Step123EntryFBefore

private theorem s6Step123EntryBank_incomingDistinct : ([s6Step123EntryFRow,s6Step123EntryGRow,s6Step123EntryFvRow,s6Step123EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123EntryF_Incoming : rowsOwned s6Step123EntryFBefore [s6Step123EntryFRow,s6Step123EntryGRow,s6Step123EntryFvRow,s6Step123EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step123EntryFRow,s6Step123EntryGRow,s6Step123EntryFvRow,s6Step123EntryGvRow] 0 s6Step123EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step123EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,865),(866,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step123EntryBank_outgoingOwned : rowsOwned s6Step123EntryGvAfter [s6Step123EntryFOut,s6Step123EntryGOut,s6Step123EntryFvOut,s6Step123EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step123EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step123EntryF_Outgoing : rowsOwned s6Step123EntryGvAfter [s6Step123EntryFOut,s6Step123EntryGOut,s6Step123EntryFvOut,s6Step123EntryGvOut] :=
  hmrRows_owned_drop s6Step123EntryGvAfter [s6Step123EntryFOut,s6Step123EntryGOut,s6Step123EntryFvOut,s6Step123EntryGvOut] 0 s6Step123EntryBank_outgoingOwned

private theorem s6Step123EntryF_distinct : (s6Step123EntryFRow.sign::s6Step123EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123EntryF_owned : (s6Step123EntryFRow.sign::s6Step123EntryFRow.payload).toFinset⊆s6Step123EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step123EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,865),(866,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step123EntryF_reserved : s6Step123EntryFBefore.reserve s6Step123EntryFFresh.toFinset=some s6Step123EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step123EntryFFresh,arenaWires]
  · norm_num [s6Step123EntryFBefore,s6Step123EntryFFresh,arenaWires]
  · simp only [s6Step123EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step123EntryF_checked : planRowResizeLog s6Step123EntryFBefore s6Step123EntryFRow 208 s6Step123EntryFFresh=
    some (s6Step123EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463],795⟩,growRow 795 s6Step123EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step123EntryFBefore s6Step123EntryFAfter s6Step123EntryFRow 208 s6Step123EntryFFresh
    s6Step123EntryF_distinct s6Step123EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step123EntryF_reserved
  have rowEq : WindowRow.mk (s6Step123EntryFRow.payload++s6Step123EntryFFresh) s6Step123EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step123EntryFvAfter : Arena := s6Step123EntryFBefore

private def s6Step123EntryFvBefore : Arena := s6Step123EntryFBefore

private theorem s6Step123EntryFv_Incoming : rowsOwned s6Step123EntryFvBefore [s6Step123EntryFvRow,s6Step123EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step123EntryFRow,s6Step123EntryGRow,s6Step123EntryFvRow,s6Step123EntryGvRow] 2 s6Step123EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step123EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,865),(866,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step123EntryFv_Outgoing : rowsOwned s6Step123EntryGvAfter [s6Step123EntryFvOut,s6Step123EntryGvOut] :=
  hmrRows_owned_drop s6Step123EntryGvAfter [s6Step123EntryFOut,s6Step123EntryGOut,s6Step123EntryFvOut,s6Step123EntryGvOut] 2 s6Step123EntryBank_outgoingOwned

private theorem s6Step123EntryFv_distinct : (s6Step123EntryFvRow.sign::s6Step123EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123EntryFv_owned : (s6Step123EntryFvRow.sign::s6Step123EntryFvRow.payload).toFinset⊆s6Step123EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step123EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,865),(866,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step123EntryFv_reserved : s6Step123EntryFvBefore.reserve s6Step123EntryFvFresh.toFinset=some s6Step123EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step123EntryFvFresh,arenaWires]
  · norm_num [s6Step123EntryFvBefore,s6Step123EntryFBefore,s6Step123EntryFvFresh,arenaWires]
  · simp only [s6Step123EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step123EntryFv_checked : planRowResizeLog s6Step123EntryFvBefore s6Step123EntryFvRow 75 s6Step123EntryFvFresh=
    some (s6Step123EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880],776⟩,growRow 776 s6Step123EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step123EntryFvBefore s6Step123EntryFvAfter s6Step123EntryFvRow 75 s6Step123EntryFvFresh
    s6Step123EntryFv_distinct s6Step123EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step123EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step123EntryFvRow.payload++s6Step123EntryFvFresh) s6Step123EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step123EntryGAfter : Arena := s6Step123EntryFBefore

private def s6Step123EntryGBefore : Arena := s6Step123EntryFBefore

private theorem s6Step123EntryG_Incoming : rowsOwned s6Step123EntryGBefore [s6Step123EntryGRow,s6Step123EntryFvRow,s6Step123EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step123EntryFRow,s6Step123EntryGRow,s6Step123EntryFvRow,s6Step123EntryGvRow] 1 s6Step123EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step123EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,865),(866,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step123EntryG_Outgoing : rowsOwned s6Step123EntryGvAfter [s6Step123EntryGOut,s6Step123EntryFvOut,s6Step123EntryGvOut] :=
  hmrRows_owned_drop s6Step123EntryGvAfter [s6Step123EntryFOut,s6Step123EntryGOut,s6Step123EntryFvOut,s6Step123EntryGvOut] 1 s6Step123EntryBank_outgoingOwned

private theorem s6Step123EntryG_distinct : (s6Step123EntryGRow.sign::s6Step123EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123EntryG_owned : (s6Step123EntryGRow.sign::s6Step123EntryGRow.payload).toFinset⊆s6Step123EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step123EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,865),(866,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step123EntryG_reserved : s6Step123EntryGBefore.reserve s6Step123EntryGFresh.toFinset=some s6Step123EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step123EntryGFresh,arenaWires]
  · norm_num [s6Step123EntryGBefore,s6Step123EntryFBefore,s6Step123EntryGFresh,arenaWires]
  · simp only [s6Step123EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step123EntryG_checked : planRowResizeLog s6Step123EntryGBefore s6Step123EntryGRow 208 s6Step123EntryGFresh=
    some (s6Step123EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833],777⟩,growRow 777 s6Step123EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step123EntryGBefore s6Step123EntryGAfter s6Step123EntryGRow 208 s6Step123EntryGFresh
    s6Step123EntryG_distinct s6Step123EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step123EntryG_reserved
  have rowEq : WindowRow.mk (s6Step123EntryGRow.payload++s6Step123EntryGFresh) s6Step123EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step123EntryGvBefore : Arena := s6Step123EntryFBefore

private theorem s6Step123EntryGv_Incoming : rowsOwned s6Step123EntryGvBefore [s6Step123EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step123EntryFRow,s6Step123EntryGRow,s6Step123EntryFvRow,s6Step123EntryGvRow] 3 s6Step123EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step123EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,865),(866,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step123EntryGv_Outgoing : rowsOwned s6Step123EntryGvAfter [s6Step123EntryGvOut] :=
  hmrRows_owned_drop s6Step123EntryGvAfter [s6Step123EntryFOut,s6Step123EntryGOut,s6Step123EntryFvOut,s6Step123EntryGvOut] 3 s6Step123EntryBank_outgoingOwned

private theorem s6Step123EntryGv_distinct : (s6Step123EntryGvRow.sign::s6Step123EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123EntryGv_owned : (s6Step123EntryGvRow.sign::s6Step123EntryGvRow.payload).toFinset⊆s6Step123EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step123EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,865),(866,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step123EntryGv_reserved : s6Step123EntryGvBefore.reserve s6Step123EntryGvFresh.toFinset=some s6Step123EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step123EntryGvFresh,arenaWires]
  · norm_num [s6Step123EntryGvBefore,s6Step123EntryFBefore,s6Step123EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step123EntryGvBefore s6Step123EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,865),(866,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step123EntryGvFresh rfl rfl
    · norm_num [s6Step123EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step123EntryGv_checked : planRowResizeLog s6Step123EntryGvBefore s6Step123EntryGvRow 75 s6Step123EntryGvFresh=
    some (s6Step123EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865],775⟩,growRow 775 s6Step123EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step123EntryGvBefore s6Step123EntryGvAfter s6Step123EntryGvRow 75 s6Step123EntryGvFresh
    s6Step123EntryGv_distinct s6Step123EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step123EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step123EntryGvRow.payload++s6Step123EntryGvFresh) s6Step123EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step123EntryBank_rows : planWindowRowsLog s6Step123EntryFBefore [(s6Step123EntryFRow,208),(s6Step123EntryGRow,208),(s6Step123EntryFvRow,75),(s6Step123EntryGvRow,75)] [s6Step123EntryFFresh,s6Step123EntryGFresh,s6Step123EntryFvFresh,s6Step123EntryGvFresh]=
    some (s6Step123EntryGvAfter,[s6Step123EntryFOut,s6Step123EntryGOut,s6Step123EntryFvOut,s6Step123EntryGvOut],(growRow 795 s6Step123EntryFFresh ++ (growRow 777 s6Step123EntryGFresh ++ (growRow 776 s6Step123EntryFvFresh ++ (growRow 775 s6Step123EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step123EntryGvAfter [] []=some (s6Step123EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step123EntryGvBefore s6Step123EntryGvAfter s6Step123EntryGvAfter
    s6Step123EntryGvRow s6Step123EntryGvOut 75 s6Step123EntryGvFresh [] [] []
    (growRow 775 s6Step123EntryGvFresh) ([]) s6Step123EntryGv_Incoming s6Step123EntryGv_checked h4 s6Step123EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step123EntryFvBefore s6Step123EntryFvAfter s6Step123EntryGvAfter
    s6Step123EntryFvRow s6Step123EntryFvOut 75 s6Step123EntryFvFresh [(s6Step123EntryGvRow,75)] [s6Step123EntryGvFresh] [s6Step123EntryGvOut]
    (growRow 776 s6Step123EntryFvFresh) ((growRow 775 s6Step123EntryGvFresh ++ [])) s6Step123EntryFv_Incoming s6Step123EntryFv_checked h3 s6Step123EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step123EntryGBefore s6Step123EntryGAfter s6Step123EntryGvAfter
    s6Step123EntryGRow s6Step123EntryGOut 208 s6Step123EntryGFresh [(s6Step123EntryFvRow,75),(s6Step123EntryGvRow,75)] [s6Step123EntryFvFresh,s6Step123EntryGvFresh] [s6Step123EntryFvOut,s6Step123EntryGvOut]
    (growRow 777 s6Step123EntryGFresh) ((growRow 776 s6Step123EntryFvFresh ++ (growRow 775 s6Step123EntryGvFresh ++ []))) s6Step123EntryG_Incoming s6Step123EntryG_checked h2 s6Step123EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step123EntryFBefore s6Step123EntryFAfter s6Step123EntryGvAfter
    s6Step123EntryFRow s6Step123EntryFOut 208 s6Step123EntryFFresh [(s6Step123EntryGRow,208),(s6Step123EntryFvRow,75),(s6Step123EntryGvRow,75)] [s6Step123EntryGFresh,s6Step123EntryFvFresh,s6Step123EntryGvFresh] [s6Step123EntryGOut,s6Step123EntryFvOut,s6Step123EntryGvOut]
    (growRow 795 s6Step123EntryFFresh) ((growRow 777 s6Step123EntryGFresh ++ (growRow 776 s6Step123EntryFvFresh ++ (growRow 775 s6Step123EntryGvFresh ++ [])))) s6Step123EntryF_Incoming s6Step123EntryF_checked h1 s6Step123EntryF_Outgoing
  exact h0

private theorem s6Step123EntryBank_checked : compileHmrBankResizeLog .entry s6Step123EntryFBefore ⟨s6Step123EntryFRow,s6Step123EntryGRow,s6Step123EntryFvRow,s6Step123EntryGvRow⟩ ⟨208,208,75,75⟩ [s6Step123EntryFFresh,s6Step123EntryGFresh,s6Step123EntryFvFresh,s6Step123EntryGvFresh]=
    some (s6Step123EntryGvAfter,⟨s6Step123EntryFOut,s6Step123EntryGOut,s6Step123EntryFvOut,s6Step123EntryGvOut⟩,(growRow 795 s6Step123EntryFFresh ++ (growRow 777 s6Step123EntryGFresh ++ (growRow 776 s6Step123EntryFvFresh ++ (growRow 775 s6Step123EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step123EntryBank_rows]
  rfl

private def s6Step123ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<463) ∨ (464≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step123ExitFBefore : Arena := s6Step123ExitGAfter

private def s6Step123ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 813],795⟩

private def s6Step123ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868],776⟩

private def s6Step123ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833, 814],777⟩

private def s6Step123ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 796],775⟩

private theorem s6Step123ExitBank_incomingDistinct : ([s6Step123ExitGRow,s6Step123ExitFRow,s6Step123ExitFvRow,s6Step123ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123ExitF_Incoming : rowsOwned s6Step123ExitFBefore [s6Step123ExitFRow,s6Step123ExitFvRow,s6Step123ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step123ExitGRow,s6Step123ExitFRow,s6Step123ExitFvRow,s6Step123ExitGvRow] 1 s6Step123ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step123ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step123ExitBank_outgoingOwned : rowsOwned s6Step123ExitGvAfter [s6Step123ExitGOut,s6Step123ExitFOut,s6Step123ExitFvOut,s6Step123ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step123ExitGvAfter (fun q => (0≤q ∧ q<463) ∨ (464≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step123ExitF_Outgoing : rowsOwned s6Step123ExitGvAfter [s6Step123ExitFOut,s6Step123ExitFvOut,s6Step123ExitGvOut] :=
  hmrRows_owned_drop s6Step123ExitGvAfter [s6Step123ExitGOut,s6Step123ExitFOut,s6Step123ExitFvOut,s6Step123ExitGvOut] 1 s6Step123ExitBank_outgoingOwned

private theorem s6Step123ExitF_distinct : (s6Step123ExitFRow.sign::s6Step123ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123ExitF_owned : (s6Step123ExitFRow.sign::s6Step123ExitFRow.payload).toFinset⊆s6Step123ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step123ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123ExitF_retired : s6Step123ExitFBefore.retireSet s6Step123ExitFExtra.toFinset=s6Step123ExitFAfter := by
  unfold Arena.retireSet s6Step123ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step123ExitFBefore,s6Step123ExitGAfter,s6Step123ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step123ExitF_checked : planRowResizeLog s6Step123ExitFBefore s6Step123ExitFRow 207 []=
    some (s6Step123ExitFAfter,s6Step123ExitFOut,shrinkRow 795 s6Step123ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step123ExitFBefore s6Step123ExitFRow 207 s6Step123ExitF_distinct s6Step123ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step123ExitFRow.payload.take 207) s6Step123ExitFRow.sign=s6Step123ExitFOut := by decide +kernel
  have hi : s6Step123ExitFRow.payload.drop 207=s6Step123ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step123ExitF_retired] at result
  exact result

private def s6Step123ExitFvAfter : Arena := s6Step123ExitFAfter

private def s6Step123ExitFvBefore : Arena := s6Step123ExitFAfter

private theorem s6Step123ExitFv_Incoming : rowsOwned s6Step123ExitFvBefore [s6Step123ExitFvRow,s6Step123ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step123ExitGRow,s6Step123ExitFRow,s6Step123ExitFvRow,s6Step123ExitGvRow] 2 s6Step123ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step123ExitFvBefore (fun q => (0≤q ∧ q<463) ∨ (464≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step123ExitFv_Outgoing : rowsOwned s6Step123ExitGvAfter [s6Step123ExitFvOut,s6Step123ExitGvOut] :=
  hmrRows_owned_drop s6Step123ExitGvAfter [s6Step123ExitGOut,s6Step123ExitFOut,s6Step123ExitFvOut,s6Step123ExitGvOut] 2 s6Step123ExitBank_outgoingOwned

private theorem s6Step123ExitFv_distinct : (s6Step123ExitFvRow.sign::s6Step123ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123ExitFv_owned : (s6Step123ExitFvRow.sign::s6Step123ExitFvRow.payload).toFinset⊆s6Step123ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step123ExitFvBefore (fun q => (0≤q ∧ q<463) ∨ (464≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123ExitFv_reserved : s6Step123ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step123ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step123ExitFv_checked : planRowResizeLog s6Step123ExitFvBefore s6Step123ExitFvRow 76 []=
    some (s6Step123ExitFvAfter,s6Step123ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step123ExitFvBefore s6Step123ExitFvAfter s6Step123ExitFvRow 76 []
    s6Step123ExitFv_distinct s6Step123ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step123ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step123ExitFvRow.payload++[]) s6Step123ExitFvRow.sign=s6Step123ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step123ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step123ExitG_Incoming : rowsOwned s6Step123ExitGBefore [s6Step123ExitGRow,s6Step123ExitFRow,s6Step123ExitFvRow,s6Step123ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step123ExitGRow,s6Step123ExitFRow,s6Step123ExitFvRow,s6Step123ExitGvRow] 0 s6Step123ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step123ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step123ExitG_Outgoing : rowsOwned s6Step123ExitGvAfter [s6Step123ExitGOut,s6Step123ExitFOut,s6Step123ExitFvOut,s6Step123ExitGvOut] :=
  hmrRows_owned_drop s6Step123ExitGvAfter [s6Step123ExitGOut,s6Step123ExitFOut,s6Step123ExitFvOut,s6Step123ExitGvOut] 0 s6Step123ExitBank_outgoingOwned

private theorem s6Step123ExitG_distinct : (s6Step123ExitGRow.sign::s6Step123ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123ExitG_owned : (s6Step123ExitGRow.sign::s6Step123ExitGRow.payload).toFinset⊆s6Step123ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step123ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123ExitG_retired : s6Step123ExitGBefore.retireSet s6Step123ExitGExtra.toFinset=s6Step123ExitGAfter := by
  unfold Arena.retireSet s6Step123ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step123ExitGBefore,s6Step123ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step123ExitG_checked : planRowResizeLog s6Step123ExitGBefore s6Step123ExitGRow 208 []=
    some (s6Step123ExitGAfter,s6Step123ExitGOut,shrinkRow 777 s6Step123ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step123ExitGBefore s6Step123ExitGRow 208 s6Step123ExitG_distinct s6Step123ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step123ExitGRow.payload.take 208) s6Step123ExitGRow.sign=s6Step123ExitGOut := by decide +kernel
  have hi : s6Step123ExitGRow.payload.drop 208=s6Step123ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step123ExitG_retired] at result
  exact result

private def s6Step123ExitGvBefore : Arena := s6Step123ExitFAfter

private theorem s6Step123ExitGv_Incoming : rowsOwned s6Step123ExitGvBefore [s6Step123ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step123ExitGRow,s6Step123ExitFRow,s6Step123ExitFvRow,s6Step123ExitGvRow] 3 s6Step123ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step123ExitGvBefore (fun q => (0≤q ∧ q<463) ∨ (464≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step123ExitGv_Outgoing : rowsOwned s6Step123ExitGvAfter [s6Step123ExitGvOut] :=
  hmrRows_owned_drop s6Step123ExitGvAfter [s6Step123ExitGOut,s6Step123ExitFOut,s6Step123ExitFvOut,s6Step123ExitGvOut] 3 s6Step123ExitBank_outgoingOwned

private theorem s6Step123ExitGv_distinct : (s6Step123ExitGvRow.sign::s6Step123ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123ExitGv_owned : (s6Step123ExitGvRow.sign::s6Step123ExitGvRow.payload).toFinset⊆s6Step123ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step123ExitGvBefore (fun q => (0≤q ∧ q<463) ∨ (464≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123ExitGv_retired : s6Step123ExitGvBefore.retireSet s6Step123ExitGvExtra.toFinset=s6Step123ExitGvAfter := by
  unfold Arena.retireSet s6Step123ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step123ExitGvBefore,s6Step123ExitFAfter,s6Step123ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step123ExitGv_checked : planRowResizeLog s6Step123ExitGvBefore s6Step123ExitGvRow 75 []=
    some (s6Step123ExitGvAfter,s6Step123ExitGvOut,shrinkRow 775 s6Step123ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step123ExitGvBefore s6Step123ExitGvRow 75 s6Step123ExitGv_distinct s6Step123ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step123ExitGvRow.payload.take 75) s6Step123ExitGvRow.sign=s6Step123ExitGvOut := by decide +kernel
  have hi : s6Step123ExitGvRow.payload.drop 75=s6Step123ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step123ExitGv_retired] at result
  exact result

private theorem s6Step123ExitBank_rows : planWindowRowsLog s6Step123ExitGBefore [(s6Step123ExitGRow,208),(s6Step123ExitFRow,207),(s6Step123ExitFvRow,76),(s6Step123ExitGvRow,75)] [[],[],[],[]]=
    some (s6Step123ExitGvAfter,[s6Step123ExitGOut,s6Step123ExitFOut,s6Step123ExitFvOut,s6Step123ExitGvOut],(shrinkRow 777 s6Step123ExitGExtra ++ (shrinkRow 795 s6Step123ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step123ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step123ExitGvAfter [] []=some (s6Step123ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step123ExitGvBefore s6Step123ExitGvAfter s6Step123ExitGvAfter
    s6Step123ExitGvRow s6Step123ExitGvOut 75 [] [] [] []
    (shrinkRow 775 s6Step123ExitGvExtra) ([]) s6Step123ExitGv_Incoming s6Step123ExitGv_checked h4 s6Step123ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step123ExitFvBefore s6Step123ExitFvAfter s6Step123ExitGvAfter
    s6Step123ExitFvRow s6Step123ExitFvOut 76 [] [(s6Step123ExitGvRow,75)] [[]] [s6Step123ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step123ExitGvExtra ++ [])) s6Step123ExitFv_Incoming s6Step123ExitFv_checked h3 s6Step123ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step123ExitFBefore s6Step123ExitFAfter s6Step123ExitGvAfter
    s6Step123ExitFRow s6Step123ExitFOut 207 [] [(s6Step123ExitFvRow,76),(s6Step123ExitGvRow,75)] [[],[]] [s6Step123ExitFvOut,s6Step123ExitGvOut]
    (shrinkRow 795 s6Step123ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step123ExitGvExtra ++ []))) s6Step123ExitF_Incoming s6Step123ExitF_checked h2 s6Step123ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step123ExitGBefore s6Step123ExitGAfter s6Step123ExitGvAfter
    s6Step123ExitGRow s6Step123ExitGOut 208 [] [(s6Step123ExitFRow,207),(s6Step123ExitFvRow,76),(s6Step123ExitGvRow,75)] [[],[],[]] [s6Step123ExitFOut,s6Step123ExitFvOut,s6Step123ExitGvOut]
    (shrinkRow 777 s6Step123ExitGExtra) ((shrinkRow 795 s6Step123ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step123ExitGvExtra ++ [])))) s6Step123ExitG_Incoming s6Step123ExitG_checked h1 s6Step123ExitG_Outgoing
  exact h0

private theorem s6Step123ExitBank_checked : compileHmrBankResizeLog .exit s6Step123ExitGBefore ⟨s6Step123ExitFRow,s6Step123ExitGRow,s6Step123ExitFvRow,s6Step123ExitGvRow⟩ ⟨207,208,76,75⟩ [[],[],[],[]]=
    some (s6Step123ExitGvAfter,⟨s6Step123ExitFOut,s6Step123ExitGOut,s6Step123ExitFvOut,s6Step123ExitGvOut⟩,(shrinkRow 777 s6Step123ExitGExtra ++ (shrinkRow 795 s6Step123ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step123ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step123ExitBank_rows]
  rfl

private theorem s6Step123Add0_apart : Disjoint s6Step123Add0Arena.live s6Step123Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step123Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123Add0_card : s6Step123Add0Arena.live.card=877 := by
  decide +kernel

private theorem s6Step123Add0_borrowed : s6Step123Add0Arena.checkBorrow (hmrHybridCount s6Step123Add0Arena s6Step123Add0B.length) s6Step123Add0Work=some s6Step123Add0During := by
  have len : s6Step123Add0Work.length=hmrHybridCount s6Step123Add0Arena s6Step123Add0B.length := by
    rw [hmrHybridCount,s6Step123Add0_card]
    decide +kernel
  have nd : s6Step123Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step123Add0Arena s6Step123Add0During s6Step123Add0Work.toFinset s6Step123Add0_bounded s6Step123Add0_apart rfl

private theorem s6Step123Add0_distinct : (821::848::879::(s6Step123Add0A++s6Step123Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123Add0_owned : (821::848::879::(s6Step123Add0A++s6Step123Add0B)).toFinset⊆s6Step123Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step123Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123Add0_checked : compileHmrHybridCinLog s6Step123Add0Arena 848 821 879 s6Step123Add0A s6Step123Add0B s6Step123Add0Work=some s6Step123Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step123Add0Arena s6Step123Add0During 848 821 879 s6Step123Add0A s6Step123Add0B s6Step123Add0Work
    (by decide +kernel) (by decide +kernel) s6Step123Add0_distinct
    (fun q hq => s6Step123Add0_owned (List.mem_toFinset.mpr hq)) s6Step123Add0_borrowed

private theorem s6Step123Add1_apart : Disjoint s6Step123Add1Arena.live s6Step123Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step123Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123Add1_card : s6Step123Add1Arena.live.card=877 := by
  decide +kernel

private theorem s6Step123Add1_borrowed : s6Step123Add1Arena.checkBorrow (hmrHybridCount s6Step123Add1Arena s6Step123Add1B.length) s6Step123Add1Work=some s6Step123Add1During := by
  have len : s6Step123Add1Work.length=hmrHybridCount s6Step123Add1Arena s6Step123Add1B.length := by
    rw [hmrHybridCount,s6Step123Add1_card]
    decide +kernel
  have nd : s6Step123Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step123Add1Arena s6Step123Add1During s6Step123Add1Work.toFinset s6Step123Add1_bounded s6Step123Add1_apart rfl

private theorem s6Step123Add1_distinct : (821::848::879::(s6Step123Add1A++s6Step123Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123Add1_owned : (821::848::879::(s6Step123Add1A++s6Step123Add1B)).toFinset⊆s6Step123Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step123Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123Add1_checked : compileHmrHybridCinLog s6Step123Add1Arena 848 821 879 s6Step123Add1A s6Step123Add1B s6Step123Add1Work=some s6Step123Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step123Add1Arena s6Step123Add1During 848 821 879 s6Step123Add1A s6Step123Add1B s6Step123Add1Work
    (by decide +kernel) (by decide +kernel) s6Step123Add1_distinct
    (fun q hq => s6Step123Add1_owned (List.mem_toFinset.mpr hq)) s6Step123Add1_borrowed

private theorem s6Step123F4_apart : Disjoint (s6Step123Add0A++s6Step123Add0B).toFinset (s6Step123Add1A++s6Step123Add1B).toFinset := by
  have nd : ((s6Step123Add0A++s6Step123Add0B)++(s6Step123Add1A++s6Step123Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step123F4_carry : s6Step123F4FlagArena.checkBorrow 1 [879]=some s6Step123Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step123F4FlagArena,s6Step123HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step123F4FlagArena,s6Step123HeadFvAfter,s6Step123Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step123F4_distinct : (888::848::821::879::((s6Step123Add0A++s6Step123Add1A)++(s6Step123Add0B++s6Step123Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123F4_flag : s6Step123HeadFvAfter.checkBorrow 1 [821]=some s6Step123F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step123HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step123F4_owned : (888::848::((s6Step123Add0A++s6Step123Add1A)++(s6Step123Add0B++s6Step123Add1B))).toFinset⊆s6Step123HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step123HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123F4_checked : compileHmrHybridF4Log s6Step123HeadFvAfter 888 848 s6Step123Add0A s6Step123Add0B s6Step123Add1A s6Step123Add1B [821] [879] s6Step123Add0Work s6Step123Add1Work=some s6Step123F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step123HeadFvAfter s6Step123F4FlagArena s6Step123Add0Arena s6Step123Add0During s6Step123Add1During 888 848
    s6Step123Add0A s6Step123Add0B s6Step123Add1A s6Step123Add1B [821] [879] s6Step123Add0Work s6Step123Add1Work
    (fun q hq => s6Step123F4_owned (List.mem_toFinset.mpr hq)) s6Step123F4_flag s6Step123F4_carry
    s6Step123F4_distinct s6Step123F4_apart s6Step123Add0_checked s6Step123Add1_checked

private theorem s6Step123Front_branch : s6Step123FrontSigmaArena.checkBorrow 1 [848]=some s6Step123HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step123FrontSigmaArena,s6Step123EntryGvAfter,arenaWires]
  · change s6Step123HeadGBefore.live=(s6Step123EntryGvAfter.live∪{888})∪{848}
    apply hmrArena_union_pair_of_filter_check s6Step123EntryGvAfter s6Step123HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 888 848 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step123Front_entry : HmrFrontEntryValid s6Step123EntryFBefore s6Step123FrontBank 208 75 ⟨207,208,76,75⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step123FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step123EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step123EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,865),(866,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step123FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step123Front_sigma : s6Step123EntryGvAfter.checkBorrow 1 [888]=some s6Step123FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step123EntryGvAfter,arenaWires]
  · rfl

private def s6Step123HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step123HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step123HeadFBefore : Arena := s6Step123HeadGAfter

private def s6Step123HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463],795⟩

private def s6Step123HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880],776⟩

private def s6Step123HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833],777⟩

private def s6Step123HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865],775⟩

private theorem s6Step123HeadBank_incomingDistinct : ([s6Step123HeadGRow,s6Step123HeadFRow,s6Step123HeadGvRow,s6Step123HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123HeadF_Incoming : rowsOwned s6Step123HeadFBefore [s6Step123HeadFRow,s6Step123HeadGvRow,s6Step123HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step123HeadGRow,s6Step123HeadFRow,s6Step123HeadGvRow,s6Step123HeadFvRow] 1 s6Step123HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step123HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step123HeadBank_outgoingOwned : rowsOwned s6Step123HeadFvAfter [s6Step123HeadGOut,s6Step123HeadFOut,s6Step123HeadGvOut,s6Step123HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step123HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step123HeadF_Outgoing : rowsOwned s6Step123HeadFvAfter [s6Step123HeadFOut,s6Step123HeadGvOut,s6Step123HeadFvOut] :=
  hmrRows_owned_drop s6Step123HeadFvAfter [s6Step123HeadGOut,s6Step123HeadFOut,s6Step123HeadGvOut,s6Step123HeadFvOut] 1 s6Step123HeadBank_outgoingOwned

private theorem s6Step123HeadF_distinct : (s6Step123HeadFRow.sign::s6Step123HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123HeadF_owned : (s6Step123HeadFRow.sign::s6Step123HeadFRow.payload).toFinset⊆s6Step123HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step123HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step123HeadF_reserved : s6Step123HeadFBefore.reserve s6Step123HeadFFresh.toFinset=some s6Step123HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step123HeadFFresh,arenaWires]
  · norm_num [s6Step123HeadFBefore,s6Step123HeadGAfter,s6Step123HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step123HeadFBefore s6Step123HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step123HeadFFresh rfl rfl
    · norm_num [s6Step123HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step123HeadF_checked : planRowResizeLog s6Step123HeadFBefore s6Step123HeadFRow 209 s6Step123HeadFFresh=
    some (s6Step123HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 813],795⟩,growRow 795 s6Step123HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step123HeadFBefore s6Step123HeadFAfter s6Step123HeadFRow 209 s6Step123HeadFFresh
    s6Step123HeadF_distinct s6Step123HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step123HeadF_reserved
  have rowEq : WindowRow.mk (s6Step123HeadFRow.payload++s6Step123HeadFFresh) s6Step123HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 813],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step123HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step123HeadFvBefore : Arena := s6Step123HeadGvAfter

private theorem s6Step123HeadFv_Incoming : rowsOwned s6Step123HeadFvBefore [s6Step123HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step123HeadGRow,s6Step123HeadFRow,s6Step123HeadGvRow,s6Step123HeadFvRow] 3 s6Step123HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step123HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step123HeadFv_Outgoing : rowsOwned s6Step123HeadFvAfter [s6Step123HeadFvOut] :=
  hmrRows_owned_drop s6Step123HeadFvAfter [s6Step123HeadGOut,s6Step123HeadFOut,s6Step123HeadGvOut,s6Step123HeadFvOut] 3 s6Step123HeadBank_outgoingOwned

private theorem s6Step123HeadFv_distinct : (s6Step123HeadFvRow.sign::s6Step123HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123HeadFv_owned : (s6Step123HeadFvRow.sign::s6Step123HeadFvRow.payload).toFinset⊆s6Step123HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step123HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step123HeadFv_reserved : s6Step123HeadFvBefore.reserve s6Step123HeadFvFresh.toFinset=some s6Step123HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step123HeadFvFresh,arenaWires]
  · norm_num [s6Step123HeadFvBefore,s6Step123HeadGvAfter,s6Step123HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step123HeadFvBefore s6Step123HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step123HeadFvFresh rfl rfl
    · norm_num [s6Step123HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step123HeadFv_checked : planRowResizeLog s6Step123HeadFvBefore s6Step123HeadFvRow 76 s6Step123HeadFvFresh=
    some (s6Step123HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868],776⟩,growRow 776 s6Step123HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step123HeadFvBefore s6Step123HeadFvAfter s6Step123HeadFvRow 76 s6Step123HeadFvFresh
    s6Step123HeadFv_distinct s6Step123HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step123HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step123HeadFvRow.payload++s6Step123HeadFvFresh) s6Step123HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step123HeadG_Incoming : rowsOwned s6Step123HeadGBefore [s6Step123HeadGRow,s6Step123HeadFRow,s6Step123HeadGvRow,s6Step123HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step123HeadGRow,s6Step123HeadFRow,s6Step123HeadGvRow,s6Step123HeadFvRow] 0 s6Step123HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step123HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step123HeadG_Outgoing : rowsOwned s6Step123HeadFvAfter [s6Step123HeadGOut,s6Step123HeadFOut,s6Step123HeadGvOut,s6Step123HeadFvOut] :=
  hmrRows_owned_drop s6Step123HeadFvAfter [s6Step123HeadGOut,s6Step123HeadFOut,s6Step123HeadGvOut,s6Step123HeadFvOut] 0 s6Step123HeadBank_outgoingOwned

private theorem s6Step123HeadG_distinct : (s6Step123HeadGRow.sign::s6Step123HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123HeadG_owned : (s6Step123HeadGRow.sign::s6Step123HeadGRow.payload).toFinset⊆s6Step123HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step123HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step123HeadG_reserved : s6Step123HeadGBefore.reserve s6Step123HeadGFresh.toFinset=some s6Step123HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step123HeadGFresh,arenaWires]
  · norm_num [s6Step123HeadGBefore,s6Step123HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step123HeadGBefore s6Step123HeadGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step123HeadGFresh rfl rfl
    · norm_num [s6Step123HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step123HeadG_checked : planRowResizeLog s6Step123HeadGBefore s6Step123HeadGRow 209 s6Step123HeadGFresh=
    some (s6Step123HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833, 814],777⟩,growRow 777 s6Step123HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step123HeadGBefore s6Step123HeadGAfter s6Step123HeadGRow 209 s6Step123HeadGFresh
    s6Step123HeadG_distinct s6Step123HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step123HeadG_reserved
  have rowEq : WindowRow.mk (s6Step123HeadGRow.payload++s6Step123HeadGFresh) s6Step123HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833, 814],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step123HeadGvBefore : Arena := s6Step123HeadFAfter

private theorem s6Step123HeadGv_Incoming : rowsOwned s6Step123HeadGvBefore [s6Step123HeadGvRow,s6Step123HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step123HeadGRow,s6Step123HeadFRow,s6Step123HeadGvRow,s6Step123HeadFvRow] 2 s6Step123HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step123HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step123HeadGv_Outgoing : rowsOwned s6Step123HeadFvAfter [s6Step123HeadGvOut,s6Step123HeadFvOut] :=
  hmrRows_owned_drop s6Step123HeadFvAfter [s6Step123HeadGOut,s6Step123HeadFOut,s6Step123HeadGvOut,s6Step123HeadFvOut] 2 s6Step123HeadBank_outgoingOwned

private theorem s6Step123HeadGv_distinct : (s6Step123HeadGvRow.sign::s6Step123HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step123HeadGv_owned : (s6Step123HeadGvRow.sign::s6Step123HeadGvRow.payload).toFinset⊆s6Step123HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step123HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step123HeadGv_reserved : s6Step123HeadGvBefore.reserve s6Step123HeadGvFresh.toFinset=some s6Step123HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step123HeadGvFresh,arenaWires]
  · norm_num [s6Step123HeadGvBefore,s6Step123HeadFAfter,s6Step123HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step123HeadGvBefore s6Step123HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step123HeadGvFresh rfl rfl
    · norm_num [s6Step123HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step123HeadGv_checked : planRowResizeLog s6Step123HeadGvBefore s6Step123HeadGvRow 76 s6Step123HeadGvFresh=
    some (s6Step123HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 796],775⟩,growRow 775 s6Step123HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step123HeadGvBefore s6Step123HeadGvAfter s6Step123HeadGvRow 76 s6Step123HeadGvFresh
    s6Step123HeadGv_distinct s6Step123HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step123HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step123HeadGvRow.payload++s6Step123HeadGvFresh) s6Step123HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 796],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step123HeadBank_rows : planWindowRowsLog s6Step123HeadGBefore [(s6Step123HeadGRow,209),(s6Step123HeadFRow,209),(s6Step123HeadGvRow,76),(s6Step123HeadFvRow,76)] [s6Step123HeadGFresh,s6Step123HeadFFresh,s6Step123HeadGvFresh,s6Step123HeadFvFresh]=
    some (s6Step123HeadFvAfter,[s6Step123HeadGOut,s6Step123HeadFOut,s6Step123HeadGvOut,s6Step123HeadFvOut],(growRow 777 s6Step123HeadGFresh ++ (growRow 795 s6Step123HeadFFresh ++ (growRow 775 s6Step123HeadGvFresh ++ (growRow 776 s6Step123HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step123HeadFvAfter [] []=some (s6Step123HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step123HeadFvBefore s6Step123HeadFvAfter s6Step123HeadFvAfter
    s6Step123HeadFvRow s6Step123HeadFvOut 76 s6Step123HeadFvFresh [] [] []
    (growRow 776 s6Step123HeadFvFresh) ([]) s6Step123HeadFv_Incoming s6Step123HeadFv_checked h4 s6Step123HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step123HeadGvBefore s6Step123HeadGvAfter s6Step123HeadFvAfter
    s6Step123HeadGvRow s6Step123HeadGvOut 76 s6Step123HeadGvFresh [(s6Step123HeadFvRow,76)] [s6Step123HeadFvFresh] [s6Step123HeadFvOut]
    (growRow 775 s6Step123HeadGvFresh) ((growRow 776 s6Step123HeadFvFresh ++ [])) s6Step123HeadGv_Incoming s6Step123HeadGv_checked h3 s6Step123HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step123HeadFBefore s6Step123HeadFAfter s6Step123HeadFvAfter
    s6Step123HeadFRow s6Step123HeadFOut 209 s6Step123HeadFFresh [(s6Step123HeadGvRow,76),(s6Step123HeadFvRow,76)] [s6Step123HeadGvFresh,s6Step123HeadFvFresh] [s6Step123HeadGvOut,s6Step123HeadFvOut]
    (growRow 795 s6Step123HeadFFresh) ((growRow 775 s6Step123HeadGvFresh ++ (growRow 776 s6Step123HeadFvFresh ++ []))) s6Step123HeadF_Incoming s6Step123HeadF_checked h2 s6Step123HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step123HeadGBefore s6Step123HeadGAfter s6Step123HeadFvAfter
    s6Step123HeadGRow s6Step123HeadGOut 209 s6Step123HeadGFresh [(s6Step123HeadFRow,209),(s6Step123HeadGvRow,76),(s6Step123HeadFvRow,76)] [s6Step123HeadFFresh,s6Step123HeadGvFresh,s6Step123HeadFvFresh] [s6Step123HeadFOut,s6Step123HeadGvOut,s6Step123HeadFvOut]
    (growRow 777 s6Step123HeadGFresh) ((growRow 795 s6Step123HeadFFresh ++ (growRow 775 s6Step123HeadGvFresh ++ (growRow 776 s6Step123HeadFvFresh ++ [])))) s6Step123HeadG_Incoming s6Step123HeadG_checked h1 s6Step123HeadG_Outgoing
  exact h0

private theorem s6Step123HeadBank_checked : compileHmrBankResizeLog .headroom s6Step123HeadGBefore ⟨s6Step123HeadFRow,s6Step123HeadGRow,s6Step123HeadFvRow,s6Step123HeadGvRow⟩ ⟨209,209,76,76⟩ [s6Step123HeadGFresh,s6Step123HeadFFresh,s6Step123HeadGvFresh,s6Step123HeadFvFresh]=
    some (s6Step123HeadFvAfter,⟨s6Step123HeadFOut,s6Step123HeadGOut,s6Step123HeadFvOut,s6Step123HeadGvOut⟩,(growRow 777 s6Step123HeadGFresh ++ (growRow 795 s6Step123HeadFFresh ++ (growRow 775 s6Step123HeadGvFresh ++ (growRow 776 s6Step123HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step123HeadBank_rows]
  rfl

private theorem s6Step123Front_checked : compileHmrSourceFrontLog s6Step123EntryFBefore s6Step123FrontBank 208 75 ⟨207,208,76,75⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step123FrontLog=some s6Step123FrontPlan := by
  have pairEq : s6Step123FrontPair=⟨s6Step123HeadFRow,s6Step123HeadGRow,s6Step123HeadFvRow,s6Step123HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step123FrontHead=⟨s6Step123ExitFRow,s6Step123ExitGRow,s6Step123ExitFvRow,s6Step123ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step123Add0A=s6Step123FrontHead.f.wires := by decide +kernel
  have gEq : s6Step123Add0B=s6Step123FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step123Add1A=s6Step123FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step123Add1B=s6Step123FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step123EntryFBefore s6Step123FrontBank 208 75 ⟨207,208,76,75⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step123FrontLog s6Step123FrontPlan
  · exact s6Step123Front_entry
  · exact s6Step123EntryBank_checked
  · exact s6Step123Front_sigma
  · rfl
  · exact s6Step123Front_branch
  · rfl
  · simpa only [s6Step123FrontPlan,pairEq] using s6Step123HeadBank_checked
  · simpa only [s6Step123FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step123F4_checked
  · exact s6Step123Counter_checked
  · rfl
  · simpa only [s6Step123FrontPlan,headEq] using s6Step123ExitBank_checked

private theorem s6Step123Complete_explicit_checked : compileHmrEarlyStepLog s6Step123EntryFBefore s6Step123FrontBank 208 75 ⟨207,208,76,75⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step123CompleteLog=some s6Step123CompletePlan := by
  let Q := s6Step123EarlyControlPlan
  have hq := s6Step123EarlyControl_plan_checked
  have fv1 : s6Step123CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step123CompleteOut.fv.payload[2]?.getD s6Step123CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step123CompleteOut.fv.payload[3]?.getD s6Step123CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step123CompleteOut.fv.payload[4]?.getD s6Step123CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step123EntryFBefore s6Step123EarlyControlArena s6Step123FrontBank 208 75 ⟨207,208,76,75⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step123CompleteLog s6Step123FrontPlan Q
    s6Step123Front_checked s6Step123Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step123Complete_owned s6Step123Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step123EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 888 s6Step123CompleteOut.fv.second (s6Step123CompleteOut.fv.payload[2]?.getD s6Step123CompleteOut.fv.sign) (s6Step123CompleteOut.fv.payload[3]?.getD s6Step123CompleteOut.fv.sign) (s6Step123CompleteOut.fv.payload[4]?.getD s6Step123CompleteOut.fv.sign) 848 37 s6Step123EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep123Arena : Arena := s6Step123EntryFBefore
def s6PrivateStep123Bank : WindowBank := s6Step123FrontBank
def s6PrivateStep123Spec : HmrSourceWalkStepLog := ⟨208,75,⟨207,208,76,75⟩,37,.early s6Step123CompleteLog⟩
def s6PrivateStep123Plan : HmrSourceStepPlan := .early s6Step123CompletePlan
theorem s6PrivateStep123_source : s6PrivateStep123Spec=s6ObservedLogs112[11] := rfl
theorem s6PrivateStep123_checked : compileHmrSourceStepLog s6PrivateStep123Arena s6PrivateStep123Bank
    s6PrivateStep123Spec.fgWidth s6PrivateStep123Spec.vWidth s6PrivateStep123Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 123 s6PrivateStep123Spec.need none s6PrivateStep123Spec.log=some s6PrivateStep123Plan := by
  change compileHmrSourceStepLog s6Step123EntryFBefore s6Step123FrontBank 208 75 ⟨207,208,76,75⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 123 37 none (.early s6Step123CompleteLog)=some (.early s6Step123CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 123<498)]
  rw [s6Step123Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
