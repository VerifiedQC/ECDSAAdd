import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep123
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

private def s6Step125CompleteMoves : List (Wire × Wire) := [(854,206)]

private def s6Step125EarlyControlLog : HmrEarlyControlLog := ⟨[854, 879, 821, 833, 813],[875],[882],[891, 903, 791, 825, 836, 904],[]⟩

private def s6Step125FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[821], [879], [848], [814]],[[], [], [], []]⟩,[796],[850],[833],[813],[875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[833, 813, 875, 882]⟩

private def s6Step125CompleteLog : HmrEarlyStepLog := ⟨s6Step125FrontLog,s6Step125CompleteMoves,s6Step125EarlyControlLog⟩

private def s6Step125ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462],795⟩

private def s6Step125ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814],776⟩

private def s6Step125ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205],777⟩

private def s6Step125ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848],775⟩

private def s6Step125FrontOut : WindowBank := ⟨s6Step125ExitFOut,s6Step125ExitGOut,s6Step125ExitFvOut,s6Step125ExitGvOut⟩

private def s6Step125CompleteOut : WindowBank := s6Step125FrontOut.repacked s6Step125CompleteMoves

private def s6Step125EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step125EarlyControlPositiveArena,[875],s6Step125EarlyControlEqualityArena,[882],⟨⟨796,false⟩,[⟨⟨875,false⟩,882⟩]⟩⟩

private def s6Step125EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,854⟩,⟨⟨772,false⟩,879⟩,⟨⟨771,false⟩,821⟩,⟨⟨770,false⟩,833⟩,⟨⟨769,false⟩,813⟩]⟩

private def s6Step125EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step125EarlyControlZeroArena,s6Step125EarlyControlZeroPlan,s6Step125EarlyControlClassPlan,s6Step125EarlyControlFlagArena,s6Step125EarlyControlFittedArena,s6Step125EarlyControlHistoryArena,s6Step125EarlyControlSigmaArena,s6Step125EarlyControlOutputArena,s6Step125EarlyControlLog⟩

private def s6Step125CounterWork : List Wire := [833, 813, 875, 882]

private theorem s6Step125Counter_bounded : s6Step125CounterWork.toFinset⊆arenaWires := by norm_num [s6Step125CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step125HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125CounterDuring : Arena := ⟨s6Step125HeadFvAfter.live∪s6Step125CounterWork.toFinset,Finset.union_subset s6Step125HeadFvAfter.bounded s6Step125Counter_bounded⟩

private def s6Step125EntryFFresh : List Wire := []

private def s6Step125EntryFvFresh : List Wire := []

private def s6Step125EntryGFresh : List Wire := []

private def s6Step125EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125EntryGvAfter : Arena := s6Step125EntryFBefore

private def s6Step125EntryGvFresh : List Wire := []

private def s6Step125ExitFExtra : List Wire := [879]

private def s6Step125ExitGExtra : List Wire := [206, 821]

private def s6Step125ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125ExitGvAfter : Arena := s6Step125ExitFAfter

private def s6Step125Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125Add0Work : List Wire := [875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step125Add0_bounded : s6Step125Add0Work.toFinset⊆arenaWires := by
  have h : s6Step125Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step125Add0During : Arena := ⟨s6Step125Add0Arena.live∪s6Step125Add0Work.toFinset,Finset.union_subset s6Step125Add0Arena.bounded s6Step125Add0_bounded⟩

private def s6Step125Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125Add1Work : List Wire := [875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step125Add1_bounded : s6Step125Add1Work.toFinset⊆arenaWires := by
  have h : s6Step125Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step125Add1During : Arena := ⟨s6Step125Add1Arena.live∪s6Step125Add1Work.toFinset,Finset.union_subset s6Step125Add1Arena.bounded s6Step125Add1_bounded⟩

private def s6Step125F4FlagArena : Arena := ⟨s6Step125HeadFvAfter.live∪{833},Finset.union_subset s6Step125HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step125F4Plan : HmrHybridF4Plan := ⟨s6Step125F4FlagArena,[833],s6Step125Add0Arena,[813],s6Step125Add0During,s6Step125Add0Work,s6Step125Add1During,s6Step125Add1Work⟩

private def s6Step125HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 879],795⟩

private def s6Step125HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814],776⟩

private def s6Step125HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 821],777⟩

private def s6Step125HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848],775⟩

private def s6Step125FrontHead : WindowBank := ⟨s6Step125HeadFOut,s6Step125HeadGOut,s6Step125HeadFvOut,s6Step125HeadGvOut⟩

private def s6Step125EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462],795⟩

private def s6Step125EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868],776⟩

private def s6Step125EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206],777⟩

private def s6Step125EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888],775⟩

private def s6Step125FrontPair : WindowBank := ⟨s6Step125EntryFOut,s6Step125EntryGOut,s6Step125EntryFvOut,s6Step125EntryGvOut⟩

private def s6Step125FrontSigmaArena : Arena := ⟨s6Step125EntryGvAfter.live∪{796},Finset.union_subset s6Step125EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step125HeadFFresh : List Wire := [879]

private def s6Step125HeadFvFresh : List Wire := [814]

private def s6Step125HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125HeadGFresh : List Wire := [821]

private def s6Step125HeadGvFresh : List Wire := [848]

private def s6Step125FrontPlan : HmrSourceFront := ⟨s6Step125EntryGvAfter,s6Step125FrontPair,(growRow 795 s6Step125EntryFFresh ++ (growRow 777 s6Step125EntryGFresh ++ (growRow 776 s6Step125EntryFvFresh ++ (growRow 775 s6Step125EntryGvFresh ++ [])))),s6Step125FrontSigmaArena,[796],s6Step125HeadGBefore,[850],
  s6Step125HeadFvAfter,s6Step125FrontHead,(growRow 777 s6Step125HeadGFresh ++ (growRow 795 s6Step125HeadFFresh ++ (growRow 775 s6Step125HeadGvFresh ++ (growRow 776 s6Step125HeadFvFresh ++ [])))),s6Step125F4Plan,s6Step125CounterDuring,s6Step125CounterWork,s6Step125ExitGvAfter,s6Step125FrontOut,(shrinkRow 777 s6Step125ExitGExtra ++ (shrinkRow 795 s6Step125ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step125CompletePlan : HmrEarlyStepPlan := ⟨s6Step125FrontPlan,s6Step125EarlyControlArena,s6Step125EarlyControlPlan,s6Step125CompleteMoves⟩

private theorem s6Step125Complete_apart : List.Disjoint (s6Step125CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [796, 850, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step125CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[796, 850, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step125Complete_owned : (s6Step125CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step125EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step125EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step125CompleteMoveArena : Arena := ⟨s6Step125ExitGvAfter.live∪{206},Finset.union_subset s6Step125ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step125Complete_repack : s6Step125ExitGvAfter.checkRepack s6Step125CompleteMoves=some s6Step125EarlyControlArena := by
  have owned : 854∈s6Step125ExitGvAfter.live := by norm_num [s6Step125ExitGvAfter,s6Step125ExitFAfter,arenaWires]
  have reserve : s6Step125ExitGvAfter.reserve {206}=some s6Step125CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step125ExitGvAfter,s6Step125ExitFAfter,arenaWires]
    · rfl
  have retired : s6Step125CompleteMoveArena.retireSet {854}=s6Step125EarlyControlArena := by
    unfold Arena.retireSet s6Step125EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step125CompleteMoveArena,s6Step125ExitGvAfter,s6Step125ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step125CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step125CompleteMoveArena.retireSet {854}).checkRepack []=some s6Step125EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step125EarlyControl_branchOwned : ([850] : List Wire).toFinset⊆s6Step125EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step125EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125EarlyControl_branch : compileHmrBranchRetirement s6Step125EarlyControlSigmaArena 850=some s6Step125EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step125EarlyControl_branchOwned
  · ext q
    simp [s6Step125EarlyControlOutputArena,s6Step125EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step125EarlyControl_classEqualityBorrow : s6Step125EarlyControlPositiveArena.checkBorrow (([796, 875] : List Wire).length-1) s6Step125EarlyControlLog.classWork=some s6Step125EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step125EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step125EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step125EarlyControlEqualityArena,s6Step125EarlyControlPositiveArena,s6Step125EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step125EarlyControl_classEqualityOwned : ([796, 875] : List Wire).toFinset⊆s6Step125EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step125EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125EarlyControl_classEquality : compileHmrEqualityLog s6Step125EarlyControlPositiveArena [796, 875] 0 s6Step125EarlyControlLog.classWork=some (s6Step125EarlyControlEqualityArena,s6Step125EarlyControlLog.classWork,s6Step125EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step125EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step125EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step125EarlyControl_classOwned : ([769, 813, 796] : List Wire).toFinset⊆s6Step125EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step125EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125EarlyControl_positiveBorrow : s6Step125EarlyControlZeroArena.checkBorrow (1) s6Step125EarlyControlLog.positiveWork=some s6Step125EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step125EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step125EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step125EarlyControlPositiveArena,s6Step125EarlyControlZeroArena,s6Step125EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step125EarlyControl_class : compileHmrSourceClassLog s6Step125EarlyControlZeroArena false 769 s6Step125EarlyControlZeroPlan.top 0 796 s6Step125EarlyControlLog.positiveWork s6Step125EarlyControlLog.classWork=some s6Step125EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step125EarlyControlClassPlan s6Step125EarlyControlZeroArena false 769 s6Step125EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s6Step125EarlyControl_classOwned
  · exact s6Step125EarlyControl_positiveBorrow
  · exact s6Step125EarlyControl_classEquality

private theorem s6Step125EarlyControl_entryRecordOwned : ([850, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step125EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step125EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s6Step125EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step125EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125EarlyControl_fitBorrow : s6Step125EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step125EarlyControlLog.recordFresh=some s6Step125EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step125EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step125EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step125EarlyControlFittedArena,s6Step125EarlyControlFlagArena,s6Step125EarlyControlLog,arenaWires]

private theorem s6Step125EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step125EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step125EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125EarlyControl_fit : compileHmrRecordGrowLog s6Step125EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step125EarlyControlLog.recordFresh=some s6Step125EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step125EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step125EarlyControl_fitBorrow

private theorem s6Step125EarlyControl_flagsBorrow : s6Step125EarlyControlEqualityArena.checkBorrow (6) s6Step125EarlyControlLog.flagWork=some s6Step125EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step125EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step125EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step125EarlyControlFlagArena,s6Step125EarlyControlEqualityArena,s6Step125EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step125EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s6Step125EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step125EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125EarlyControl_flags : compileHmrFlagsLog s6Step125EarlyControlClassPlan.equalityArena s6Step125EarlyControlClassPlan.equality.top 253 252 251 s6Step125EarlyControlLog.flagWork=some s6Step125EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step125EarlyControl_flagsOwned⟩
  · exact s6Step125EarlyControl_flagsBorrow

private theorem s6Step125EarlyControl_historyBorrow : s6Step125EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step125EarlyControlLog.recordFresh=some s6Step125EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step125EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step125EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step125EarlyControlHistoryArena,s6Step125EarlyControlArena,s6Step125EarlyControlLog,arenaWires]

private theorem s6Step125EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step125EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step125EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125EarlyControl_history : compileHmrRecordGrowLog s6Step125EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step125EarlyControlLog.recordFresh=some s6Step125EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step125EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step125EarlyControl_historyBorrow

private theorem s6Step125EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s6Step125EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step125EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s6Step125EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step125EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125EarlyControl_sigmaRelease : s6Step125EarlyControlHistoryArena.release {796} (fun _ => false)=some s6Step125EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step125EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step125EarlyControlSigmaArena,s6Step125EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step125EarlyControl_sigma : compileHmrSigmaDropLog s6Step125EarlyControlHistoryArena false 0 0 254 796 []=some s6Step125EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step125EarlyControl_sigmaOwned⟩
  · exact s6Step125EarlyControl_sigmaRelease

private theorem s6Step125EarlyControl_zeroBorrow : s6Step125EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step125EarlyControlLog.zeroWork=some s6Step125EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step125EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step125EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step125EarlyControlZeroArena,s6Step125EarlyControlArena,s6Step125EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step125EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step125EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step125EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125EarlyControl_zero : compileHmrEqualityLog s6Step125EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step125EarlyControlLog.zeroWork=some (s6Step125EarlyControlZeroArena,s6Step125EarlyControlLog.zeroWork,s6Step125EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step125EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step125EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step125EarlyControl_logged : s6Step125EarlyControlPlan.Logged s6Step125EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 796 254 253 252 251 850 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step125EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step125EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step125EarlyControl_zero
  · exact s6Step125EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step125EarlyControl_flags
  · exact s6Step125EarlyControl_fit
  · exact s6Step125EarlyControl_history
  · exact s6Step125EarlyControl_sigma
  · exact s6Step125EarlyControl_branch

private theorem s6Step125EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step125EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 796 254 253 252 251 850 37 s6Step125EarlyControlLog=some s6Step125EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step125EarlyControlPlan s6Step125EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 796 254 253 252 251 850 37 s6Step125EarlyControl_logged

private def s6Step125EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462],795⟩

private def s6Step125EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868],776⟩

private def s6Step125EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206],777⟩

private def s6Step125EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888],775⟩

private def s6Step125FrontBank : WindowBank := ⟨s6Step125EntryFRow,s6Step125EntryGRow,s6Step125EntryFvRow,s6Step125EntryGvRow⟩

private def s6Step125Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 879, 795]

private def s6Step125Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 821, 777]

private def s6Step125Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 776]

private def s6Step125Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 775]

private theorem s6Step125Counter_apart : Disjoint s6Step125HeadFvAfter.live s6Step125CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step125HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125Counter_borrowed : s6Step125HeadFvAfter.checkBorrow 4 s6Step125CounterWork=some s6Step125CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step125HeadFvAfter s6Step125CounterDuring s6Step125CounterWork.toFinset s6Step125Counter_bounded s6Step125Counter_apart rfl

private theorem s6Step125Counter_owned : (796::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step125HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step125HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125Counter_checked : compileHmrCounterStepLog s6Step125HeadFvAfter true 796 [774, 773, 772, 771, 770, 769] s6Step125CounterWork=some s6Step125CounterDuring := by
  have owned : ∀q∈796::[774, 773, 772, 771, 770, 769],q∈s6Step125HeadFvAfter.live := fun q hq => s6Step125Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step125Counter_borrowed

private def s6Step125EntryFAfter : Arena := s6Step125EntryFBefore

private theorem s6Step125EntryBank_incomingDistinct : ([s6Step125EntryFRow,s6Step125EntryGRow,s6Step125EntryFvRow,s6Step125EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125EntryF_Incoming : rowsOwned s6Step125EntryFBefore [s6Step125EntryFRow,s6Step125EntryGRow,s6Step125EntryFvRow,s6Step125EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step125EntryFRow,s6Step125EntryGRow,s6Step125EntryFvRow,s6Step125EntryGvRow] 0 s6Step125EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step125EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step125EntryBank_outgoingOwned : rowsOwned s6Step125EntryGvAfter [s6Step125EntryFOut,s6Step125EntryGOut,s6Step125EntryFvOut,s6Step125EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step125EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step125EntryF_Outgoing : rowsOwned s6Step125EntryGvAfter [s6Step125EntryFOut,s6Step125EntryGOut,s6Step125EntryFvOut,s6Step125EntryGvOut] :=
  hmrRows_owned_drop s6Step125EntryGvAfter [s6Step125EntryFOut,s6Step125EntryGOut,s6Step125EntryFvOut,s6Step125EntryGvOut] 0 s6Step125EntryBank_outgoingOwned

private theorem s6Step125EntryF_distinct : (s6Step125EntryFRow.sign::s6Step125EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125EntryF_owned : (s6Step125EntryFRow.sign::s6Step125EntryFRow.payload).toFinset⊆s6Step125EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step125EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125EntryF_reserved : s6Step125EntryFBefore.reserve s6Step125EntryFFresh.toFinset=some s6Step125EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step125EntryFFresh,arenaWires]
  · norm_num [s6Step125EntryFBefore,s6Step125EntryFFresh,arenaWires]
  · simp only [s6Step125EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step125EntryF_checked : planRowResizeLog s6Step125EntryFBefore s6Step125EntryFRow 207 s6Step125EntryFFresh=
    some (s6Step125EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462],795⟩,growRow 795 s6Step125EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step125EntryFBefore s6Step125EntryFAfter s6Step125EntryFRow 207 s6Step125EntryFFresh
    s6Step125EntryF_distinct s6Step125EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step125EntryF_reserved
  have rowEq : WindowRow.mk (s6Step125EntryFRow.payload++s6Step125EntryFFresh) s6Step125EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step125EntryFvAfter : Arena := s6Step125EntryFBefore

private def s6Step125EntryFvBefore : Arena := s6Step125EntryFBefore

private theorem s6Step125EntryFv_Incoming : rowsOwned s6Step125EntryFvBefore [s6Step125EntryFvRow,s6Step125EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step125EntryFRow,s6Step125EntryGRow,s6Step125EntryFvRow,s6Step125EntryGvRow] 2 s6Step125EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step125EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step125EntryFv_Outgoing : rowsOwned s6Step125EntryGvAfter [s6Step125EntryFvOut,s6Step125EntryGvOut] :=
  hmrRows_owned_drop s6Step125EntryGvAfter [s6Step125EntryFOut,s6Step125EntryGOut,s6Step125EntryFvOut,s6Step125EntryGvOut] 2 s6Step125EntryBank_outgoingOwned

private theorem s6Step125EntryFv_distinct : (s6Step125EntryFvRow.sign::s6Step125EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125EntryFv_owned : (s6Step125EntryFvRow.sign::s6Step125EntryFvRow.payload).toFinset⊆s6Step125EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step125EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125EntryFv_reserved : s6Step125EntryFvBefore.reserve s6Step125EntryFvFresh.toFinset=some s6Step125EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step125EntryFvFresh,arenaWires]
  · norm_num [s6Step125EntryFvBefore,s6Step125EntryFBefore,s6Step125EntryFvFresh,arenaWires]
  · simp only [s6Step125EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step125EntryFv_checked : planRowResizeLog s6Step125EntryFvBefore s6Step125EntryFvRow 76 s6Step125EntryFvFresh=
    some (s6Step125EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868],776⟩,growRow 776 s6Step125EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step125EntryFvBefore s6Step125EntryFvAfter s6Step125EntryFvRow 76 s6Step125EntryFvFresh
    s6Step125EntryFv_distinct s6Step125EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step125EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step125EntryFvRow.payload++s6Step125EntryFvFresh) s6Step125EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step125EntryGAfter : Arena := s6Step125EntryFBefore

private def s6Step125EntryGBefore : Arena := s6Step125EntryFBefore

private theorem s6Step125EntryG_Incoming : rowsOwned s6Step125EntryGBefore [s6Step125EntryGRow,s6Step125EntryFvRow,s6Step125EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step125EntryFRow,s6Step125EntryGRow,s6Step125EntryFvRow,s6Step125EntryGvRow] 1 s6Step125EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step125EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step125EntryG_Outgoing : rowsOwned s6Step125EntryGvAfter [s6Step125EntryGOut,s6Step125EntryFvOut,s6Step125EntryGvOut] :=
  hmrRows_owned_drop s6Step125EntryGvAfter [s6Step125EntryFOut,s6Step125EntryGOut,s6Step125EntryFvOut,s6Step125EntryGvOut] 1 s6Step125EntryBank_outgoingOwned

private theorem s6Step125EntryG_distinct : (s6Step125EntryGRow.sign::s6Step125EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125EntryG_owned : (s6Step125EntryGRow.sign::s6Step125EntryGRow.payload).toFinset⊆s6Step125EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step125EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125EntryG_reserved : s6Step125EntryGBefore.reserve s6Step125EntryGFresh.toFinset=some s6Step125EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step125EntryGFresh,arenaWires]
  · norm_num [s6Step125EntryGBefore,s6Step125EntryFBefore,s6Step125EntryGFresh,arenaWires]
  · simp only [s6Step125EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step125EntryG_checked : planRowResizeLog s6Step125EntryGBefore s6Step125EntryGRow 207 s6Step125EntryGFresh=
    some (s6Step125EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206],777⟩,growRow 777 s6Step125EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step125EntryGBefore s6Step125EntryGAfter s6Step125EntryGRow 207 s6Step125EntryGFresh
    s6Step125EntryG_distinct s6Step125EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step125EntryG_reserved
  have rowEq : WindowRow.mk (s6Step125EntryGRow.payload++s6Step125EntryGFresh) s6Step125EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step125EntryGvBefore : Arena := s6Step125EntryFBefore

private theorem s6Step125EntryGv_Incoming : rowsOwned s6Step125EntryGvBefore [s6Step125EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step125EntryFRow,s6Step125EntryGRow,s6Step125EntryFvRow,s6Step125EntryGvRow] 3 s6Step125EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step125EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step125EntryGv_Outgoing : rowsOwned s6Step125EntryGvAfter [s6Step125EntryGvOut] :=
  hmrRows_owned_drop s6Step125EntryGvAfter [s6Step125EntryFOut,s6Step125EntryGOut,s6Step125EntryFvOut,s6Step125EntryGvOut] 3 s6Step125EntryBank_outgoingOwned

private theorem s6Step125EntryGv_distinct : (s6Step125EntryGvRow.sign::s6Step125EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125EntryGv_owned : (s6Step125EntryGvRow.sign::s6Step125EntryGvRow.payload).toFinset⊆s6Step125EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step125EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125EntryGv_reserved : s6Step125EntryGvBefore.reserve s6Step125EntryGvFresh.toFinset=some s6Step125EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step125EntryGvFresh,arenaWires]
  · norm_num [s6Step125EntryGvBefore,s6Step125EntryFBefore,s6Step125EntryGvFresh,arenaWires]
  · simp only [s6Step125EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step125EntryGv_checked : planRowResizeLog s6Step125EntryGvBefore s6Step125EntryGvRow 76 s6Step125EntryGvFresh=
    some (s6Step125EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888],775⟩,growRow 775 s6Step125EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step125EntryGvBefore s6Step125EntryGvAfter s6Step125EntryGvRow 76 s6Step125EntryGvFresh
    s6Step125EntryGv_distinct s6Step125EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step125EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step125EntryGvRow.payload++s6Step125EntryGvFresh) s6Step125EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step125EntryBank_rows : planWindowRowsLog s6Step125EntryFBefore [(s6Step125EntryFRow,207),(s6Step125EntryGRow,207),(s6Step125EntryFvRow,76),(s6Step125EntryGvRow,76)] [s6Step125EntryFFresh,s6Step125EntryGFresh,s6Step125EntryFvFresh,s6Step125EntryGvFresh]=
    some (s6Step125EntryGvAfter,[s6Step125EntryFOut,s6Step125EntryGOut,s6Step125EntryFvOut,s6Step125EntryGvOut],(growRow 795 s6Step125EntryFFresh ++ (growRow 777 s6Step125EntryGFresh ++ (growRow 776 s6Step125EntryFvFresh ++ (growRow 775 s6Step125EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step125EntryGvAfter [] []=some (s6Step125EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step125EntryGvBefore s6Step125EntryGvAfter s6Step125EntryGvAfter
    s6Step125EntryGvRow s6Step125EntryGvOut 76 s6Step125EntryGvFresh [] [] []
    (growRow 775 s6Step125EntryGvFresh) ([]) s6Step125EntryGv_Incoming s6Step125EntryGv_checked h4 s6Step125EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step125EntryFvBefore s6Step125EntryFvAfter s6Step125EntryGvAfter
    s6Step125EntryFvRow s6Step125EntryFvOut 76 s6Step125EntryFvFresh [(s6Step125EntryGvRow,76)] [s6Step125EntryGvFresh] [s6Step125EntryGvOut]
    (growRow 776 s6Step125EntryFvFresh) ((growRow 775 s6Step125EntryGvFresh ++ [])) s6Step125EntryFv_Incoming s6Step125EntryFv_checked h3 s6Step125EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step125EntryGBefore s6Step125EntryGAfter s6Step125EntryGvAfter
    s6Step125EntryGRow s6Step125EntryGOut 207 s6Step125EntryGFresh [(s6Step125EntryFvRow,76),(s6Step125EntryGvRow,76)] [s6Step125EntryFvFresh,s6Step125EntryGvFresh] [s6Step125EntryFvOut,s6Step125EntryGvOut]
    (growRow 777 s6Step125EntryGFresh) ((growRow 776 s6Step125EntryFvFresh ++ (growRow 775 s6Step125EntryGvFresh ++ []))) s6Step125EntryG_Incoming s6Step125EntryG_checked h2 s6Step125EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step125EntryFBefore s6Step125EntryFAfter s6Step125EntryGvAfter
    s6Step125EntryFRow s6Step125EntryFOut 207 s6Step125EntryFFresh [(s6Step125EntryGRow,207),(s6Step125EntryFvRow,76),(s6Step125EntryGvRow,76)] [s6Step125EntryGFresh,s6Step125EntryFvFresh,s6Step125EntryGvFresh] [s6Step125EntryGOut,s6Step125EntryFvOut,s6Step125EntryGvOut]
    (growRow 795 s6Step125EntryFFresh) ((growRow 777 s6Step125EntryGFresh ++ (growRow 776 s6Step125EntryFvFresh ++ (growRow 775 s6Step125EntryGvFresh ++ [])))) s6Step125EntryF_Incoming s6Step125EntryF_checked h1 s6Step125EntryF_Outgoing
  exact h0

private theorem s6Step125EntryBank_checked : compileHmrBankResizeLog .entry s6Step125EntryFBefore ⟨s6Step125EntryFRow,s6Step125EntryGRow,s6Step125EntryFvRow,s6Step125EntryGvRow⟩ ⟨207,207,76,76⟩ [s6Step125EntryFFresh,s6Step125EntryGFresh,s6Step125EntryFvFresh,s6Step125EntryGvFresh]=
    some (s6Step125EntryGvAfter,⟨s6Step125EntryFOut,s6Step125EntryGOut,s6Step125EntryFvOut,s6Step125EntryGvOut⟩,(growRow 795 s6Step125EntryFFresh ++ (growRow 777 s6Step125EntryGFresh ++ (growRow 776 s6Step125EntryFvFresh ++ (growRow 775 s6Step125EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step125EntryBank_rows]
  rfl

private def s6Step125ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125ExitFBefore : Arena := s6Step125ExitGAfter

private def s6Step125ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 879],795⟩

private def s6Step125ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814],776⟩

private def s6Step125ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 821],777⟩

private def s6Step125ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848],775⟩

private theorem s6Step125ExitBank_incomingDistinct : ([s6Step125ExitGRow,s6Step125ExitFRow,s6Step125ExitFvRow,s6Step125ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125ExitF_Incoming : rowsOwned s6Step125ExitFBefore [s6Step125ExitFRow,s6Step125ExitFvRow,s6Step125ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step125ExitGRow,s6Step125ExitFRow,s6Step125ExitFvRow,s6Step125ExitGvRow] 1 s6Step125ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step125ExitFBefore (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step125ExitBank_outgoingOwned : rowsOwned s6Step125ExitGvAfter [s6Step125ExitGOut,s6Step125ExitFOut,s6Step125ExitFvOut,s6Step125ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step125ExitGvAfter (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step125ExitF_Outgoing : rowsOwned s6Step125ExitGvAfter [s6Step125ExitFOut,s6Step125ExitFvOut,s6Step125ExitGvOut] :=
  hmrRows_owned_drop s6Step125ExitGvAfter [s6Step125ExitGOut,s6Step125ExitFOut,s6Step125ExitFvOut,s6Step125ExitGvOut] 1 s6Step125ExitBank_outgoingOwned

private theorem s6Step125ExitF_distinct : (s6Step125ExitFRow.sign::s6Step125ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125ExitF_owned : (s6Step125ExitFRow.sign::s6Step125ExitFRow.payload).toFinset⊆s6Step125ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step125ExitFBefore (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125ExitF_retired : s6Step125ExitFBefore.retireSet s6Step125ExitFExtra.toFinset=s6Step125ExitFAfter := by
  unfold Arena.retireSet s6Step125ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step125ExitFBefore,s6Step125ExitGAfter,s6Step125ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step125ExitF_checked : planRowResizeLog s6Step125ExitFBefore s6Step125ExitFRow 207 []=
    some (s6Step125ExitFAfter,s6Step125ExitFOut,shrinkRow 795 s6Step125ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step125ExitFBefore s6Step125ExitFRow 207 s6Step125ExitF_distinct s6Step125ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step125ExitFRow.payload.take 207) s6Step125ExitFRow.sign=s6Step125ExitFOut := by decide +kernel
  have hi : s6Step125ExitFRow.payload.drop 207=s6Step125ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step125ExitF_retired] at result
  exact result

private def s6Step125ExitFvAfter : Arena := s6Step125ExitFAfter

private def s6Step125ExitFvBefore : Arena := s6Step125ExitFAfter

private theorem s6Step125ExitFv_Incoming : rowsOwned s6Step125ExitFvBefore [s6Step125ExitFvRow,s6Step125ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step125ExitGRow,s6Step125ExitFRow,s6Step125ExitFvRow,s6Step125ExitGvRow] 2 s6Step125ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step125ExitFvBefore (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step125ExitFv_Outgoing : rowsOwned s6Step125ExitGvAfter [s6Step125ExitFvOut,s6Step125ExitGvOut] :=
  hmrRows_owned_drop s6Step125ExitGvAfter [s6Step125ExitGOut,s6Step125ExitFOut,s6Step125ExitFvOut,s6Step125ExitGvOut] 2 s6Step125ExitBank_outgoingOwned

private theorem s6Step125ExitFv_distinct : (s6Step125ExitFvRow.sign::s6Step125ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125ExitFv_owned : (s6Step125ExitFvRow.sign::s6Step125ExitFvRow.payload).toFinset⊆s6Step125ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step125ExitFvBefore (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125ExitFv_reserved : s6Step125ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step125ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step125ExitFv_checked : planRowResizeLog s6Step125ExitFvBefore s6Step125ExitFvRow 77 []=
    some (s6Step125ExitFvAfter,s6Step125ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step125ExitFvBefore s6Step125ExitFvAfter s6Step125ExitFvRow 77 []
    s6Step125ExitFv_distinct s6Step125ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step125ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step125ExitFvRow.payload++[]) s6Step125ExitFvRow.sign=s6Step125ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step125ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step125ExitG_Incoming : rowsOwned s6Step125ExitGBefore [s6Step125ExitGRow,s6Step125ExitFRow,s6Step125ExitFvRow,s6Step125ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step125ExitGRow,s6Step125ExitFRow,s6Step125ExitFvRow,s6Step125ExitGvRow] 0 s6Step125ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step125ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step125ExitG_Outgoing : rowsOwned s6Step125ExitGvAfter [s6Step125ExitGOut,s6Step125ExitFOut,s6Step125ExitFvOut,s6Step125ExitGvOut] :=
  hmrRows_owned_drop s6Step125ExitGvAfter [s6Step125ExitGOut,s6Step125ExitFOut,s6Step125ExitFvOut,s6Step125ExitGvOut] 0 s6Step125ExitBank_outgoingOwned

private theorem s6Step125ExitG_distinct : (s6Step125ExitGRow.sign::s6Step125ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125ExitG_owned : (s6Step125ExitGRow.sign::s6Step125ExitGRow.payload).toFinset⊆s6Step125ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step125ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125ExitG_retired : s6Step125ExitGBefore.retireSet s6Step125ExitGExtra.toFinset=s6Step125ExitGAfter := by
  unfold Arena.retireSet s6Step125ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step125ExitGBefore,s6Step125ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step125ExitG_checked : planRowResizeLog s6Step125ExitGBefore s6Step125ExitGRow 206 []=
    some (s6Step125ExitGAfter,s6Step125ExitGOut,shrinkRow 777 s6Step125ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step125ExitGBefore s6Step125ExitGRow 206 s6Step125ExitG_distinct s6Step125ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step125ExitGRow.payload.take 206) s6Step125ExitGRow.sign=s6Step125ExitGOut := by decide +kernel
  have hi : s6Step125ExitGRow.payload.drop 206=s6Step125ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step125ExitG_retired] at result
  exact result

private def s6Step125ExitGvBefore : Arena := s6Step125ExitFAfter

private theorem s6Step125ExitGv_Incoming : rowsOwned s6Step125ExitGvBefore [s6Step125ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step125ExitGRow,s6Step125ExitFRow,s6Step125ExitFvRow,s6Step125ExitGvRow] 3 s6Step125ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step125ExitGvBefore (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step125ExitGv_Outgoing : rowsOwned s6Step125ExitGvAfter [s6Step125ExitGvOut] :=
  hmrRows_owned_drop s6Step125ExitGvAfter [s6Step125ExitGOut,s6Step125ExitFOut,s6Step125ExitFvOut,s6Step125ExitGvOut] 3 s6Step125ExitBank_outgoingOwned

private theorem s6Step125ExitGv_distinct : (s6Step125ExitGvRow.sign::s6Step125ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125ExitGv_owned : (s6Step125ExitGvRow.sign::s6Step125ExitGvRow.payload).toFinset⊆s6Step125ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step125ExitGvBefore (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125ExitGv_reserved : s6Step125ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step125ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step125ExitGv_checked : planRowResizeLog s6Step125ExitGvBefore s6Step125ExitGvRow 77 []=
    some (s6Step125ExitGvAfter,s6Step125ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step125ExitGvBefore s6Step125ExitGvAfter s6Step125ExitGvRow 77 []
    s6Step125ExitGv_distinct s6Step125ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step125ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step125ExitGvRow.payload++[]) s6Step125ExitGvRow.sign=s6Step125ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step125ExitBank_rows : planWindowRowsLog s6Step125ExitGBefore [(s6Step125ExitGRow,206),(s6Step125ExitFRow,207),(s6Step125ExitFvRow,77),(s6Step125ExitGvRow,77)] [[],[],[],[]]=
    some (s6Step125ExitGvAfter,[s6Step125ExitGOut,s6Step125ExitFOut,s6Step125ExitFvOut,s6Step125ExitGvOut],(shrinkRow 777 s6Step125ExitGExtra ++ (shrinkRow 795 s6Step125ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step125ExitGvAfter [] []=some (s6Step125ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step125ExitGvBefore s6Step125ExitGvAfter s6Step125ExitGvAfter
    s6Step125ExitGvRow s6Step125ExitGvOut 77 [] [] [] []
    (growRow 775 []) ([]) s6Step125ExitGv_Incoming s6Step125ExitGv_checked h4 s6Step125ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step125ExitFvBefore s6Step125ExitFvAfter s6Step125ExitGvAfter
    s6Step125ExitFvRow s6Step125ExitFvOut 77 [] [(s6Step125ExitGvRow,77)] [[]] [s6Step125ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step125ExitFv_Incoming s6Step125ExitFv_checked h3 s6Step125ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step125ExitFBefore s6Step125ExitFAfter s6Step125ExitGvAfter
    s6Step125ExitFRow s6Step125ExitFOut 207 [] [(s6Step125ExitFvRow,77),(s6Step125ExitGvRow,77)] [[],[]] [s6Step125ExitFvOut,s6Step125ExitGvOut]
    (shrinkRow 795 s6Step125ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step125ExitF_Incoming s6Step125ExitF_checked h2 s6Step125ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step125ExitGBefore s6Step125ExitGAfter s6Step125ExitGvAfter
    s6Step125ExitGRow s6Step125ExitGOut 206 [] [(s6Step125ExitFRow,207),(s6Step125ExitFvRow,77),(s6Step125ExitGvRow,77)] [[],[],[]] [s6Step125ExitFOut,s6Step125ExitFvOut,s6Step125ExitGvOut]
    (shrinkRow 777 s6Step125ExitGExtra) ((shrinkRow 795 s6Step125ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step125ExitG_Incoming s6Step125ExitG_checked h1 s6Step125ExitG_Outgoing
  exact h0

private theorem s6Step125ExitBank_checked : compileHmrBankResizeLog .exit s6Step125ExitGBefore ⟨s6Step125ExitFRow,s6Step125ExitGRow,s6Step125ExitFvRow,s6Step125ExitGvRow⟩ ⟨207,206,77,77⟩ [[],[],[],[]]=
    some (s6Step125ExitGvAfter,⟨s6Step125ExitFOut,s6Step125ExitGOut,s6Step125ExitFvOut,s6Step125ExitGvOut⟩,(shrinkRow 777 s6Step125ExitGExtra ++ (shrinkRow 795 s6Step125ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step125ExitBank_rows]
  rfl

private theorem s6Step125Add0_apart : Disjoint s6Step125Add0Arena.live s6Step125Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step125Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125Add0_card : s6Step125Add0Arena.live.card=877 := by
  decide +kernel

private theorem s6Step125Add0_borrowed : s6Step125Add0Arena.checkBorrow (hmrHybridCount s6Step125Add0Arena s6Step125Add0B.length) s6Step125Add0Work=some s6Step125Add0During := by
  have len : s6Step125Add0Work.length=hmrHybridCount s6Step125Add0Arena s6Step125Add0B.length := by
    rw [hmrHybridCount,s6Step125Add0_card]
    decide +kernel
  have nd : s6Step125Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step125Add0Arena s6Step125Add0During s6Step125Add0Work.toFinset s6Step125Add0_bounded s6Step125Add0_apart rfl

private theorem s6Step125Add0_distinct : (833::850::813::(s6Step125Add0A++s6Step125Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125Add0_owned : (833::850::813::(s6Step125Add0A++s6Step125Add0B)).toFinset⊆s6Step125Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step125Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125Add0_checked : compileHmrHybridCinLog s6Step125Add0Arena 850 833 813 s6Step125Add0A s6Step125Add0B s6Step125Add0Work=some s6Step125Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step125Add0Arena s6Step125Add0During 850 833 813 s6Step125Add0A s6Step125Add0B s6Step125Add0Work
    (by decide +kernel) (by decide +kernel) s6Step125Add0_distinct
    (fun q hq => s6Step125Add0_owned (List.mem_toFinset.mpr hq)) s6Step125Add0_borrowed

private theorem s6Step125Add1_apart : Disjoint s6Step125Add1Arena.live s6Step125Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step125Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125Add1_card : s6Step125Add1Arena.live.card=877 := by
  decide +kernel

private theorem s6Step125Add1_borrowed : s6Step125Add1Arena.checkBorrow (hmrHybridCount s6Step125Add1Arena s6Step125Add1B.length) s6Step125Add1Work=some s6Step125Add1During := by
  have len : s6Step125Add1Work.length=hmrHybridCount s6Step125Add1Arena s6Step125Add1B.length := by
    rw [hmrHybridCount,s6Step125Add1_card]
    decide +kernel
  have nd : s6Step125Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step125Add1Arena s6Step125Add1During s6Step125Add1Work.toFinset s6Step125Add1_bounded s6Step125Add1_apart rfl

private theorem s6Step125Add1_distinct : (833::850::813::(s6Step125Add1A++s6Step125Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125Add1_owned : (833::850::813::(s6Step125Add1A++s6Step125Add1B)).toFinset⊆s6Step125Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step125Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125Add1_checked : compileHmrHybridCinLog s6Step125Add1Arena 850 833 813 s6Step125Add1A s6Step125Add1B s6Step125Add1Work=some s6Step125Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step125Add1Arena s6Step125Add1During 850 833 813 s6Step125Add1A s6Step125Add1B s6Step125Add1Work
    (by decide +kernel) (by decide +kernel) s6Step125Add1_distinct
    (fun q hq => s6Step125Add1_owned (List.mem_toFinset.mpr hq)) s6Step125Add1_borrowed

private theorem s6Step125F4_apart : Disjoint (s6Step125Add0A++s6Step125Add0B).toFinset (s6Step125Add1A++s6Step125Add1B).toFinset := by
  have nd : ((s6Step125Add0A++s6Step125Add0B)++(s6Step125Add1A++s6Step125Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step125F4_carry : s6Step125F4FlagArena.checkBorrow 1 [813]=some s6Step125Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step125F4FlagArena,s6Step125HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step125F4FlagArena,s6Step125HeadFvAfter,s6Step125Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step125F4_distinct : (796::850::833::813::((s6Step125Add0A++s6Step125Add1A)++(s6Step125Add0B++s6Step125Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125F4_flag : s6Step125HeadFvAfter.checkBorrow 1 [833]=some s6Step125F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step125HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step125F4_owned : (796::850::((s6Step125Add0A++s6Step125Add1A)++(s6Step125Add0B++s6Step125Add1B))).toFinset⊆s6Step125HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step125HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125F4_checked : compileHmrHybridF4Log s6Step125HeadFvAfter 796 850 s6Step125Add0A s6Step125Add0B s6Step125Add1A s6Step125Add1B [833] [813] s6Step125Add0Work s6Step125Add1Work=some s6Step125F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step125HeadFvAfter s6Step125F4FlagArena s6Step125Add0Arena s6Step125Add0During s6Step125Add1During 796 850
    s6Step125Add0A s6Step125Add0B s6Step125Add1A s6Step125Add1B [833] [813] s6Step125Add0Work s6Step125Add1Work
    (fun q hq => s6Step125F4_owned (List.mem_toFinset.mpr hq)) s6Step125F4_flag s6Step125F4_carry
    s6Step125F4_distinct s6Step125F4_apart s6Step125Add0_checked s6Step125Add1_checked

private theorem s6Step125Front_branch : s6Step125FrontSigmaArena.checkBorrow 1 [850]=some s6Step125HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step125FrontSigmaArena,s6Step125EntryGvAfter,s6Step125EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step125FrontSigmaArena,s6Step125EntryGvAfter,s6Step125EntryFBefore,s6Step125HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step125Front_entry : HmrFrontEntryValid s6Step125EntryFBefore s6Step125FrontBank 207 76 ⟨207,206,77,77⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step125FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step125EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step125EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step125FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step125Front_sigma : s6Step125EntryGvAfter.checkBorrow 1 [796]=some s6Step125FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step125EntryGvAfter,s6Step125EntryFBefore,arenaWires]
  · rfl

private def s6Step125HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125HeadFBefore : Arena := s6Step125HeadGAfter

private def s6Step125HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462],795⟩

private def s6Step125HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868],776⟩

private def s6Step125HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206],777⟩

private def s6Step125HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888],775⟩

private theorem s6Step125HeadBank_incomingDistinct : ([s6Step125HeadGRow,s6Step125HeadFRow,s6Step125HeadGvRow,s6Step125HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125HeadF_Incoming : rowsOwned s6Step125HeadFBefore [s6Step125HeadFRow,s6Step125HeadGvRow,s6Step125HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step125HeadGRow,s6Step125HeadFRow,s6Step125HeadGvRow,s6Step125HeadFvRow] 1 s6Step125HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step125HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step125HeadBank_outgoingOwned : rowsOwned s6Step125HeadFvAfter [s6Step125HeadGOut,s6Step125HeadFOut,s6Step125HeadGvOut,s6Step125HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step125HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step125HeadF_Outgoing : rowsOwned s6Step125HeadFvAfter [s6Step125HeadFOut,s6Step125HeadGvOut,s6Step125HeadFvOut] :=
  hmrRows_owned_drop s6Step125HeadFvAfter [s6Step125HeadGOut,s6Step125HeadFOut,s6Step125HeadGvOut,s6Step125HeadFvOut] 1 s6Step125HeadBank_outgoingOwned

private theorem s6Step125HeadF_distinct : (s6Step125HeadFRow.sign::s6Step125HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125HeadF_owned : (s6Step125HeadFRow.sign::s6Step125HeadFRow.payload).toFinset⊆s6Step125HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step125HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125HeadF_reserved : s6Step125HeadFBefore.reserve s6Step125HeadFFresh.toFinset=some s6Step125HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step125HeadFFresh,arenaWires]
  · norm_num [s6Step125HeadFBefore,s6Step125HeadGAfter,s6Step125HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step125HeadFAfter,s6Step125HeadFBefore,s6Step125HeadGAfter,s6Step125HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step125HeadF_checked : planRowResizeLog s6Step125HeadFBefore s6Step125HeadFRow 208 s6Step125HeadFFresh=
    some (s6Step125HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 879],795⟩,growRow 795 s6Step125HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step125HeadFBefore s6Step125HeadFAfter s6Step125HeadFRow 208 s6Step125HeadFFresh
    s6Step125HeadF_distinct s6Step125HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step125HeadF_reserved
  have rowEq : WindowRow.mk (s6Step125HeadFRow.payload++s6Step125HeadFFresh) s6Step125HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 879],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step125HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step125HeadFvBefore : Arena := s6Step125HeadGvAfter

private theorem s6Step125HeadFv_Incoming : rowsOwned s6Step125HeadFvBefore [s6Step125HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step125HeadGRow,s6Step125HeadFRow,s6Step125HeadGvRow,s6Step125HeadFvRow] 3 s6Step125HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step125HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step125HeadFv_Outgoing : rowsOwned s6Step125HeadFvAfter [s6Step125HeadFvOut] :=
  hmrRows_owned_drop s6Step125HeadFvAfter [s6Step125HeadGOut,s6Step125HeadFOut,s6Step125HeadGvOut,s6Step125HeadFvOut] 3 s6Step125HeadBank_outgoingOwned

private theorem s6Step125HeadFv_distinct : (s6Step125HeadFvRow.sign::s6Step125HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125HeadFv_owned : (s6Step125HeadFvRow.sign::s6Step125HeadFvRow.payload).toFinset⊆s6Step125HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step125HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125HeadFv_reserved : s6Step125HeadFvBefore.reserve s6Step125HeadFvFresh.toFinset=some s6Step125HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step125HeadFvFresh,arenaWires]
  · norm_num [s6Step125HeadFvBefore,s6Step125HeadGvAfter,s6Step125HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step125HeadFvAfter,s6Step125HeadFvBefore,s6Step125HeadGvAfter,s6Step125HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step125HeadFv_checked : planRowResizeLog s6Step125HeadFvBefore s6Step125HeadFvRow 77 s6Step125HeadFvFresh=
    some (s6Step125HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814],776⟩,growRow 776 s6Step125HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step125HeadFvBefore s6Step125HeadFvAfter s6Step125HeadFvRow 77 s6Step125HeadFvFresh
    s6Step125HeadFv_distinct s6Step125HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step125HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step125HeadFvRow.payload++s6Step125HeadFvFresh) s6Step125HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step125HeadG_Incoming : rowsOwned s6Step125HeadGBefore [s6Step125HeadGRow,s6Step125HeadFRow,s6Step125HeadGvRow,s6Step125HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step125HeadGRow,s6Step125HeadFRow,s6Step125HeadGvRow,s6Step125HeadFvRow] 0 s6Step125HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step125HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step125HeadG_Outgoing : rowsOwned s6Step125HeadFvAfter [s6Step125HeadGOut,s6Step125HeadFOut,s6Step125HeadGvOut,s6Step125HeadFvOut] :=
  hmrRows_owned_drop s6Step125HeadFvAfter [s6Step125HeadGOut,s6Step125HeadFOut,s6Step125HeadGvOut,s6Step125HeadFvOut] 0 s6Step125HeadBank_outgoingOwned

private theorem s6Step125HeadG_distinct : (s6Step125HeadGRow.sign::s6Step125HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125HeadG_owned : (s6Step125HeadGRow.sign::s6Step125HeadGRow.payload).toFinset⊆s6Step125HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step125HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125HeadG_reserved : s6Step125HeadGBefore.reserve s6Step125HeadGFresh.toFinset=some s6Step125HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step125HeadGFresh,arenaWires]
  · norm_num [s6Step125HeadGBefore,s6Step125HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step125HeadGAfter,s6Step125HeadGBefore,s6Step125HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step125HeadG_checked : planRowResizeLog s6Step125HeadGBefore s6Step125HeadGRow 208 s6Step125HeadGFresh=
    some (s6Step125HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 821],777⟩,growRow 777 s6Step125HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step125HeadGBefore s6Step125HeadGAfter s6Step125HeadGRow 208 s6Step125HeadGFresh
    s6Step125HeadG_distinct s6Step125HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step125HeadG_reserved
  have rowEq : WindowRow.mk (s6Step125HeadGRow.payload++s6Step125HeadGFresh) s6Step125HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 821],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step125HeadGvBefore : Arena := s6Step125HeadFAfter

private theorem s6Step125HeadGv_Incoming : rowsOwned s6Step125HeadGvBefore [s6Step125HeadGvRow,s6Step125HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step125HeadGRow,s6Step125HeadFRow,s6Step125HeadGvRow,s6Step125HeadFvRow] 2 s6Step125HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step125HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step125HeadGv_Outgoing : rowsOwned s6Step125HeadFvAfter [s6Step125HeadGvOut,s6Step125HeadFvOut] :=
  hmrRows_owned_drop s6Step125HeadFvAfter [s6Step125HeadGOut,s6Step125HeadFOut,s6Step125HeadGvOut,s6Step125HeadFvOut] 2 s6Step125HeadBank_outgoingOwned

private theorem s6Step125HeadGv_distinct : (s6Step125HeadGvRow.sign::s6Step125HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step125HeadGv_owned : (s6Step125HeadGvRow.sign::s6Step125HeadGvRow.payload).toFinset⊆s6Step125HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step125HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step125HeadGv_reserved : s6Step125HeadGvBefore.reserve s6Step125HeadGvFresh.toFinset=some s6Step125HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step125HeadGvFresh,arenaWires]
  · norm_num [s6Step125HeadGvBefore,s6Step125HeadFAfter,s6Step125HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step125HeadGvAfter,s6Step125HeadGvBefore,s6Step125HeadFAfter,s6Step125HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step125HeadGv_checked : planRowResizeLog s6Step125HeadGvBefore s6Step125HeadGvRow 77 s6Step125HeadGvFresh=
    some (s6Step125HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848],775⟩,growRow 775 s6Step125HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step125HeadGvBefore s6Step125HeadGvAfter s6Step125HeadGvRow 77 s6Step125HeadGvFresh
    s6Step125HeadGv_distinct s6Step125HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step125HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step125HeadGvRow.payload++s6Step125HeadGvFresh) s6Step125HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step125HeadBank_rows : planWindowRowsLog s6Step125HeadGBefore [(s6Step125HeadGRow,208),(s6Step125HeadFRow,208),(s6Step125HeadGvRow,77),(s6Step125HeadFvRow,77)] [s6Step125HeadGFresh,s6Step125HeadFFresh,s6Step125HeadGvFresh,s6Step125HeadFvFresh]=
    some (s6Step125HeadFvAfter,[s6Step125HeadGOut,s6Step125HeadFOut,s6Step125HeadGvOut,s6Step125HeadFvOut],(growRow 777 s6Step125HeadGFresh ++ (growRow 795 s6Step125HeadFFresh ++ (growRow 775 s6Step125HeadGvFresh ++ (growRow 776 s6Step125HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step125HeadFvAfter [] []=some (s6Step125HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step125HeadFvBefore s6Step125HeadFvAfter s6Step125HeadFvAfter
    s6Step125HeadFvRow s6Step125HeadFvOut 77 s6Step125HeadFvFresh [] [] []
    (growRow 776 s6Step125HeadFvFresh) ([]) s6Step125HeadFv_Incoming s6Step125HeadFv_checked h4 s6Step125HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step125HeadGvBefore s6Step125HeadGvAfter s6Step125HeadFvAfter
    s6Step125HeadGvRow s6Step125HeadGvOut 77 s6Step125HeadGvFresh [(s6Step125HeadFvRow,77)] [s6Step125HeadFvFresh] [s6Step125HeadFvOut]
    (growRow 775 s6Step125HeadGvFresh) ((growRow 776 s6Step125HeadFvFresh ++ [])) s6Step125HeadGv_Incoming s6Step125HeadGv_checked h3 s6Step125HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step125HeadFBefore s6Step125HeadFAfter s6Step125HeadFvAfter
    s6Step125HeadFRow s6Step125HeadFOut 208 s6Step125HeadFFresh [(s6Step125HeadGvRow,77),(s6Step125HeadFvRow,77)] [s6Step125HeadGvFresh,s6Step125HeadFvFresh] [s6Step125HeadGvOut,s6Step125HeadFvOut]
    (growRow 795 s6Step125HeadFFresh) ((growRow 775 s6Step125HeadGvFresh ++ (growRow 776 s6Step125HeadFvFresh ++ []))) s6Step125HeadF_Incoming s6Step125HeadF_checked h2 s6Step125HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step125HeadGBefore s6Step125HeadGAfter s6Step125HeadFvAfter
    s6Step125HeadGRow s6Step125HeadGOut 208 s6Step125HeadGFresh [(s6Step125HeadFRow,208),(s6Step125HeadGvRow,77),(s6Step125HeadFvRow,77)] [s6Step125HeadFFresh,s6Step125HeadGvFresh,s6Step125HeadFvFresh] [s6Step125HeadFOut,s6Step125HeadGvOut,s6Step125HeadFvOut]
    (growRow 777 s6Step125HeadGFresh) ((growRow 795 s6Step125HeadFFresh ++ (growRow 775 s6Step125HeadGvFresh ++ (growRow 776 s6Step125HeadFvFresh ++ [])))) s6Step125HeadG_Incoming s6Step125HeadG_checked h1 s6Step125HeadG_Outgoing
  exact h0

private theorem s6Step125HeadBank_checked : compileHmrBankResizeLog .headroom s6Step125HeadGBefore ⟨s6Step125HeadFRow,s6Step125HeadGRow,s6Step125HeadFvRow,s6Step125HeadGvRow⟩ ⟨208,208,77,77⟩ [s6Step125HeadGFresh,s6Step125HeadFFresh,s6Step125HeadGvFresh,s6Step125HeadFvFresh]=
    some (s6Step125HeadFvAfter,⟨s6Step125HeadFOut,s6Step125HeadGOut,s6Step125HeadFvOut,s6Step125HeadGvOut⟩,(growRow 777 s6Step125HeadGFresh ++ (growRow 795 s6Step125HeadFFresh ++ (growRow 775 s6Step125HeadGvFresh ++ (growRow 776 s6Step125HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step125HeadBank_rows]
  rfl

private theorem s6Step125Front_checked : compileHmrSourceFrontLog s6Step125EntryFBefore s6Step125FrontBank 207 76 ⟨207,206,77,77⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step125FrontLog=some s6Step125FrontPlan := by
  have pairEq : s6Step125FrontPair=⟨s6Step125HeadFRow,s6Step125HeadGRow,s6Step125HeadFvRow,s6Step125HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step125FrontHead=⟨s6Step125ExitFRow,s6Step125ExitGRow,s6Step125ExitFvRow,s6Step125ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step125Add0A=s6Step125FrontHead.f.wires := by decide +kernel
  have gEq : s6Step125Add0B=s6Step125FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step125Add1A=s6Step125FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step125Add1B=s6Step125FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step125EntryFBefore s6Step125FrontBank 207 76 ⟨207,206,77,77⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step125FrontLog s6Step125FrontPlan
  · exact s6Step125Front_entry
  · exact s6Step125EntryBank_checked
  · exact s6Step125Front_sigma
  · rfl
  · exact s6Step125Front_branch
  · rfl
  · simpa only [s6Step125FrontPlan,pairEq] using s6Step125HeadBank_checked
  · simpa only [s6Step125FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step125F4_checked
  · exact s6Step125Counter_checked
  · rfl
  · simpa only [s6Step125FrontPlan,headEq] using s6Step125ExitBank_checked

private theorem s6Step125Complete_explicit_checked : compileHmrEarlyStepLog s6Step125EntryFBefore s6Step125FrontBank 207 76 ⟨207,206,77,77⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step125CompleteLog=some s6Step125CompletePlan := by
  let Q := s6Step125EarlyControlPlan
  have hq := s6Step125EarlyControl_plan_checked
  have fv1 : s6Step125CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step125CompleteOut.fv.payload[2]?.getD s6Step125CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step125CompleteOut.fv.payload[3]?.getD s6Step125CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step125CompleteOut.fv.payload[4]?.getD s6Step125CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step125EntryFBefore s6Step125EarlyControlArena s6Step125FrontBank 207 76 ⟨207,206,77,77⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step125CompleteLog s6Step125FrontPlan Q
    s6Step125Front_checked s6Step125Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step125Complete_owned s6Step125Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step125EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 796 s6Step125CompleteOut.fv.second (s6Step125CompleteOut.fv.payload[2]?.getD s6Step125CompleteOut.fv.sign) (s6Step125CompleteOut.fv.payload[3]?.getD s6Step125CompleteOut.fv.sign) (s6Step125CompleteOut.fv.payload[4]?.getD s6Step125CompleteOut.fv.sign) 850 37 s6Step125EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep125Arena : Arena := s6Step125EntryFBefore
def s6PrivateStep125Bank : WindowBank := s6Step125FrontBank
def s6PrivateStep125Spec : HmrSourceWalkStepLog := ⟨207,76,⟨207,206,77,77⟩,37,.early s6Step125CompleteLog⟩
def s6PrivateStep125Plan : HmrSourceStepPlan := .early s6Step125CompletePlan
theorem s6PrivateStep125_source : s6PrivateStep125Spec=s6ObservedLogs112[13] := rfl
theorem s6PrivateStep125_checked : compileHmrSourceStepLog s6PrivateStep125Arena s6PrivateStep125Bank
    s6PrivateStep125Spec.fgWidth s6PrivateStep125Spec.vWidth s6PrivateStep125Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 125 s6PrivateStep125Spec.need none s6PrivateStep125Spec.log=some s6PrivateStep125Plan := by
  change compileHmrSourceStepLog s6Step125EntryFBefore s6Step125FrontBank 207 76 ⟨207,206,77,77⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 125 37 none (.early s6Step125CompleteLog)=some (.early s6Step125CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 125<498)]
  rw [s6Step125Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
