import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep180
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

private def s6Step182CompleteMoves : List (Wire × Wire) := [(841,177),(796,434)]

private def s6Step182EarlyControlLog : HmrEarlyControlLog := ⟨[796, 841, 880, 830, 803],[907],[863],[890, 891, 903, 791, 825, 810],[]⟩

private def s6Step182FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [803], [], [848]],[[907], [830], [880], [865]],[[], [], [], []]⟩,[821],[814],[863],[890],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[863, 890, 891, 903]⟩

private def s6Step182CompleteLog : HmrEarlyStepLog := ⟨s6Step182FrontLog,s6Step182CompleteMoves,s6Step182EarlyControlLog⟩

private def s6Step182ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433],795⟩

private def s6Step182ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865],776⟩

private def s6Step182ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],777⟩

private def s6Step182ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848],775⟩

private def s6Step182FrontOut : WindowBank := ⟨s6Step182ExitFOut,s6Step182ExitGOut,s6Step182ExitFvOut,s6Step182ExitGvOut⟩

private def s6Step182CompleteOut : WindowBank := s6Step182FrontOut.repacked s6Step182CompleteMoves

private def s6Step182EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step182EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step182EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step182EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step182EarlyControlPositiveArena,[907],s6Step182EarlyControlEqualityArena,[863],⟨⟨821,false⟩,[⟨⟨907,false⟩,863⟩]⟩⟩

private def s6Step182EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step182EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step182EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step182EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step182EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step182EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step182EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,796⟩,⟨⟨772,false⟩,841⟩,⟨⟨771,false⟩,880⟩,⟨⟨770,false⟩,830⟩,⟨⟨769,false⟩,803⟩]⟩

private def s6Step182EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step182EarlyControlZeroArena,s6Step182EarlyControlZeroPlan,s6Step182EarlyControlClassPlan,s6Step182EarlyControlFlagArena,s6Step182EarlyControlFittedArena,s6Step182EarlyControlHistoryArena,s6Step182EarlyControlSigmaArena,s6Step182EarlyControlOutputArena,s6Step182EarlyControlLog⟩

private def s6Step182CounterWork : List Wire := [863, 890, 891, 903]

private theorem s6Step182Counter_bounded : s6Step182CounterWork.toFinset⊆arenaWires := by norm_num [s6Step182CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step182HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step182CounterDuring : Arena := ⟨s6Step182HeadFvAfter.live∪s6Step182CounterWork.toFinset,Finset.union_subset s6Step182HeadFvAfter.bounded s6Step182Counter_bounded⟩

private def s6Step182EntryFFresh : List Wire := []

private def s6Step182EntryFvFresh : List Wire := []

private def s6Step182EntryGFresh : List Wire := [803]

private def s6Step182EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step182EntryGvFresh : List Wire := [848]

private def s6Step182ExitFExtra : List Wire := [434, 830]

private def s6Step182ExitGExtra : List Wire := [177, 803, 907]

private def s6Step182ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,177),(178,434),(435,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step182ExitGvExtra : List Wire := [880]

private def s6Step182Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step182Add0Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step182Add0_bounded : s6Step182Add0Work.toFinset⊆arenaWires := by
  have h : s6Step182Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step182Add0During : Arena := ⟨s6Step182Add0Arena.live∪s6Step182Add0Work.toFinset,Finset.union_subset s6Step182Add0Arena.bounded s6Step182Add0_bounded⟩

private def s6Step182Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step182Add1Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step182Add1_bounded : s6Step182Add1Work.toFinset⊆arenaWires := by
  have h : s6Step182Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step182Add1During : Arena := ⟨s6Step182Add1Arena.live∪s6Step182Add1Work.toFinset,Finset.union_subset s6Step182Add1Arena.bounded s6Step182Add1_bounded⟩

private def s6Step182F4FlagArena : Arena := ⟨s6Step182HeadFvAfter.live∪{863},Finset.union_subset s6Step182HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step182F4Plan : HmrHybridF4Plan := ⟨s6Step182F4FlagArena,[863],s6Step182Add0Arena,[890],s6Step182Add0During,s6Step182Add0Work,s6Step182Add1During,s6Step182Add1Work⟩

private def s6Step182HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 830],795⟩

private def s6Step182HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865],776⟩

private def s6Step182HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 803, 907],777⟩

private def s6Step182HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 880],775⟩

private def s6Step182FrontHead : WindowBank := ⟨s6Step182HeadFOut,s6Step182HeadGOut,s6Step182HeadFvOut,s6Step182HeadGvOut⟩

private def s6Step182EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434],795⟩

private def s6Step182EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876],776⟩

private def s6Step182EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 803],777⟩

private def s6Step182EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848],775⟩

private def s6Step182FrontPair : WindowBank := ⟨s6Step182EntryFOut,s6Step182EntryGOut,s6Step182EntryFvOut,s6Step182EntryGvOut⟩

private def s6Step182FrontSigmaArena : Arena := ⟨s6Step182EntryGvAfter.live∪{821},Finset.union_subset s6Step182EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step182HeadFFresh : List Wire := [830]

private def s6Step182HeadFvFresh : List Wire := [865]

private def s6Step182HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step182HeadGFresh : List Wire := [907]

private def s6Step182HeadGvFresh : List Wire := [880]

private def s6Step182FrontPlan : HmrSourceFront := ⟨s6Step182EntryGvAfter,s6Step182FrontPair,(growRow 795 s6Step182EntryFFresh ++ (growRow 777 s6Step182EntryGFresh ++ (growRow 776 s6Step182EntryFvFresh ++ (growRow 775 s6Step182EntryGvFresh ++ [])))),s6Step182FrontSigmaArena,[821],s6Step182HeadGBefore,[814],
  s6Step182HeadFvAfter,s6Step182FrontHead,(growRow 777 s6Step182HeadGFresh ++ (growRow 795 s6Step182HeadFFresh ++ (growRow 775 s6Step182HeadGvFresh ++ (growRow 776 s6Step182HeadFvFresh ++ [])))),s6Step182F4Plan,s6Step182CounterDuring,s6Step182CounterWork,s6Step182ExitGvAfter,s6Step182FrontOut,(shrinkRow 777 s6Step182ExitGExtra ++ (shrinkRow 795 s6Step182ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step182ExitGvExtra ++ []))))⟩

private def s6Step182CompletePlan : HmrEarlyStepPlan := ⟨s6Step182FrontPlan,s6Step182EarlyControlArena,s6Step182EarlyControlPlan,s6Step182CompleteMoves⟩

private theorem s6Step182Complete_apart : List.Disjoint (s6Step182CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [821, 814, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] := by
  have nd : ((s6Step182CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[821, 814, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step182Complete_owned : (s6Step182CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step182EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step182EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step182CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,434),(435,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,841),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step182CompleteRelocationMove0Borrowed : Arena := ⟨s6Step182ExitGvAfter.live∪{177},Finset.union_subset s6Step182ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step182CompleteRelocationMove1Borrowed : Arena := ⟨s6Step182CompleteRelocationMove0After.live∪{434},Finset.union_subset s6Step182CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step182CompleteRelocation_move0_owned : 841∈s6Step182ExitGvAfter.live := by norm_num [s6Step182ExitGvAfter,arenaWires]

private theorem s6Step182CompleteRelocation_move0_reserve : s6Step182ExitGvAfter.reserve {177}=some s6Step182CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step182ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step182CompleteRelocation_move0_retire : s6Step182CompleteRelocationMove0Borrowed.retireSet {841}=s6Step182CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step182CompleteRelocationMove0Borrowed s6Step182CompleteRelocationMove0After {841}
  change s6Step182CompleteRelocationMove0After.live=(s6Step182ExitGvAfter.live∪{177})\{841}
  apply hmrArena_update_of_filter_check s6Step182ExitGvAfter s6Step182CompleteRelocationMove0After (fun q => ([(0,177),(178,434),(435,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,434),(435,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,841),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [177] [841] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step182CompleteRelocation_move1_owned : 796∈s6Step182CompleteRelocationMove0After.live := by norm_num [s6Step182CompleteRelocationMove0After,arenaWires]

private theorem s6Step182CompleteRelocation_move1_reserve : s6Step182CompleteRelocationMove0After.reserve {434}=some s6Step182CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step182CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step182CompleteRelocation_move1_retire : s6Step182CompleteRelocationMove1Borrowed.retireSet {796}=s6Step182EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step182CompleteRelocationMove1Borrowed s6Step182EarlyControlArena {796}
  change s6Step182EarlyControlArena.live=(s6Step182CompleteRelocationMove0After.live∪{434})\{796}
  apply hmrArena_update_of_filter_check s6Step182CompleteRelocationMove0After s6Step182EarlyControlArena (fun q => ([(0,434),(435,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,841),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) [434] [796] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step182CompleteRelocation_checked : s6Step182ExitGvAfter.checkRepack [(841,177),(796,434)]=some s6Step182EarlyControlArena := by
  have tail2 : s6Step182EarlyControlArena.checkRepack []=some s6Step182EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step182CompleteRelocationMove0After s6Step182CompleteRelocationMove1Borrowed s6Step182EarlyControlArena s6Step182EarlyControlArena 796 434 []
    s6Step182CompleteRelocation_move1_owned s6Step182CompleteRelocation_move1_reserve s6Step182CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step182ExitGvAfter s6Step182CompleteRelocationMove0Borrowed s6Step182CompleteRelocationMove0After s6Step182EarlyControlArena 841 177 [(796,434)]
    s6Step182CompleteRelocation_move0_owned s6Step182CompleteRelocation_move0_reserve s6Step182CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step182Complete_repack : s6Step182ExitGvAfter.checkRepack s6Step182CompleteMoves=some s6Step182EarlyControlArena := by
  simpa only [s6Step182CompleteMoves] using s6Step182CompleteRelocation_checked

private theorem s6Step182EarlyControl_branchOwned : ([814] : List Wire).toFinset⊆s6Step182EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step182EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182EarlyControl_branch : compileHmrBranchRetirement s6Step182EarlyControlSigmaArena 814=some s6Step182EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step182EarlyControl_branchOwned
  · ext q
    simp [s6Step182EarlyControlOutputArena,s6Step182EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step182EarlyControl_classEqualityBorrow : s6Step182EarlyControlPositiveArena.checkBorrow (([821, 907] : List Wire).length-1) s6Step182EarlyControlLog.classWork=some s6Step182EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step182EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step182EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step182EarlyControlEqualityArena,s6Step182EarlyControlPositiveArena,s6Step182EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step182EarlyControl_classEqualityOwned : ([821, 907] : List Wire).toFinset⊆s6Step182EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step182EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182EarlyControl_classEquality : compileHmrEqualityLog s6Step182EarlyControlPositiveArena [821, 907] 0 s6Step182EarlyControlLog.classWork=some (s6Step182EarlyControlEqualityArena,s6Step182EarlyControlLog.classWork,s6Step182EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step182EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step182EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step182EarlyControl_classOwned : ([769, 803, 821] : List Wire).toFinset⊆s6Step182EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step182EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182EarlyControl_positiveBorrow : s6Step182EarlyControlZeroArena.checkBorrow (1) s6Step182EarlyControlLog.positiveWork=some s6Step182EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step182EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step182EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step182EarlyControlPositiveArena,s6Step182EarlyControlZeroArena,s6Step182EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step182EarlyControl_class : compileHmrSourceClassLog s6Step182EarlyControlZeroArena false 769 s6Step182EarlyControlZeroPlan.top 0 821 s6Step182EarlyControlLog.positiveWork s6Step182EarlyControlLog.classWork=some s6Step182EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step182EarlyControlClassPlan s6Step182EarlyControlZeroArena false 769 s6Step182EarlyControlZeroPlan.top 0 821
  constructor
  · decide +kernel
  · exact s6Step182EarlyControl_classOwned
  · exact s6Step182EarlyControl_positiveBorrow
  · exact s6Step182EarlyControl_classEquality

private theorem s6Step182EarlyControl_entryRecordOwned : ([814, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step182EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step182EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182EarlyControl_entrySigmaOwned : ([821, 254] : List Wire).toFinset⊆s6Step182EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step182EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182EarlyControl_fitBorrow : s6Step182EarlyControlFlagArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step182EarlyControlLog.recordFresh=some s6Step182EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step182EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step182EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step182EarlyControlFittedArena,s6Step182EarlyControlFlagArena,s6Step182EarlyControlLog,arenaWires]

private theorem s6Step182EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step182EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step182EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182EarlyControl_fit : compileHmrRecordGrowLog s6Step182EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step182EarlyControlLog.recordFresh=some s6Step182EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step182EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step182EarlyControl_fitBorrow

private theorem s6Step182EarlyControl_flagsBorrow : s6Step182EarlyControlEqualityArena.checkBorrow (6) s6Step182EarlyControlLog.flagWork=some s6Step182EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step182EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step182EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step182EarlyControlFlagArena,s6Step182EarlyControlEqualityArena,s6Step182EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step182EarlyControl_flagsOwned : ([863, 253, 252, 251] : List Wire).toFinset⊆s6Step182EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step182EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182EarlyControl_flags : compileHmrFlagsLog s6Step182EarlyControlClassPlan.equalityArena s6Step182EarlyControlClassPlan.equality.top 253 252 251 s6Step182EarlyControlLog.flagWork=some s6Step182EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step182EarlyControl_flagsOwned⟩
  · exact s6Step182EarlyControl_flagsBorrow

private theorem s6Step182EarlyControl_historyBorrow : s6Step182EarlyControlArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step182EarlyControlLog.recordFresh=some s6Step182EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step182EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step182EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step182EarlyControlHistoryArena,s6Step182EarlyControlArena,s6Step182EarlyControlLog,arenaWires]

private theorem s6Step182EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step182EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step182EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182EarlyControl_history : compileHmrRecordGrowLog s6Step182EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step182EarlyControlLog.recordFresh=some s6Step182EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step182EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step182EarlyControl_historyBorrow

private theorem s6Step182EarlyControl_sigmaOwned : ([254, 821] : List Wire).toFinset⊆s6Step182EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step182EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182EarlyControl_sigmaReleaseOwned : ([821] : List Wire).toFinset⊆s6Step182EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step182EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182EarlyControl_sigmaRelease : s6Step182EarlyControlHistoryArena.release {821} (fun _ => false)=some s6Step182EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step182EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step182EarlyControlSigmaArena,s6Step182EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step182EarlyControl_sigma : compileHmrSigmaDropLog s6Step182EarlyControlHistoryArena false 0 0 254 821 []=some s6Step182EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step182EarlyControl_sigmaOwned⟩
  · exact s6Step182EarlyControl_sigmaRelease

private theorem s6Step182EarlyControl_zeroBorrow : s6Step182EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step182EarlyControlLog.zeroWork=some s6Step182EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step182EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step182EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step182EarlyControlZeroArena,s6Step182EarlyControlArena,s6Step182EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step182EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step182EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step182EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182EarlyControl_zero : compileHmrEqualityLog s6Step182EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step182EarlyControlLog.zeroWork=some (s6Step182EarlyControlZeroArena,s6Step182EarlyControlLog.zeroWork,s6Step182EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step182EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step182EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step182EarlyControl_logged : s6Step182EarlyControlPlan.Logged s6Step182EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 254 253 252 251 814 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step182EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step182EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step182EarlyControl_zero
  · exact s6Step182EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step182EarlyControl_flags
  · exact s6Step182EarlyControl_fit
  · exact s6Step182EarlyControl_history
  · exact s6Step182EarlyControl_sigma
  · exact s6Step182EarlyControl_branch

private theorem s6Step182EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step182EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 254 253 252 251 814 43 s6Step182EarlyControlLog=some s6Step182EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step182EarlyControlPlan s6Step182EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 254 253 252 251 814 43 s6Step182EarlyControl_logged

private def s6Step182EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step182EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434],795⟩

private def s6Step182EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876],776⟩

private def s6Step182EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177],777⟩

private def s6Step182EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩

private def s6Step182FrontBank : WindowBank := ⟨s6Step182EntryFRow,s6Step182EntryGRow,s6Step182EntryFvRow,s6Step182EntryGvRow⟩

private def s6Step182Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 830, 795]

private def s6Step182Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 803, 907, 777]

private def s6Step182Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 776]

private def s6Step182Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 880, 775]

private theorem s6Step182Counter_apart : Disjoint s6Step182HeadFvAfter.live s6Step182CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step182HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182Counter_borrowed : s6Step182HeadFvAfter.checkBorrow 4 s6Step182CounterWork=some s6Step182CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step182HeadFvAfter s6Step182CounterDuring s6Step182CounterWork.toFinset s6Step182Counter_bounded s6Step182Counter_apart rfl

private theorem s6Step182Counter_owned : (821::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step182HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step182HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182Counter_checked : compileHmrCounterStepLog s6Step182HeadFvAfter true 821 [774, 773, 772, 771, 770, 769] s6Step182CounterWork=some s6Step182CounterDuring := by
  have owned : ∀q∈821::[774, 773, 772, 771, 770, 769],q∈s6Step182HeadFvAfter.live := fun q hq => s6Step182Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step182Counter_borrowed

private def s6Step182EntryFAfter : Arena := s6Step182EntryFBefore

private theorem s6Step182EntryBank_incomingDistinct : ([s6Step182EntryFRow,s6Step182EntryGRow,s6Step182EntryFvRow,s6Step182EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182EntryF_Incoming : rowsOwned s6Step182EntryFBefore [s6Step182EntryFRow,s6Step182EntryGRow,s6Step182EntryFvRow,s6Step182EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step182EntryFRow,s6Step182EntryGRow,s6Step182EntryFvRow,s6Step182EntryGvRow] 0 s6Step182EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step182EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step182EntryBank_outgoingOwned : rowsOwned s6Step182EntryGvAfter [s6Step182EntryFOut,s6Step182EntryGOut,s6Step182EntryFvOut,s6Step182EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step182EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step182EntryF_Outgoing : rowsOwned s6Step182EntryGvAfter [s6Step182EntryFOut,s6Step182EntryGOut,s6Step182EntryFvOut,s6Step182EntryGvOut] :=
  hmrRows_owned_drop s6Step182EntryGvAfter [s6Step182EntryFOut,s6Step182EntryGOut,s6Step182EntryFvOut,s6Step182EntryGvOut] 0 s6Step182EntryBank_outgoingOwned

private theorem s6Step182EntryF_distinct : (s6Step182EntryFRow.sign::s6Step182EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182EntryF_owned : (s6Step182EntryFRow.sign::s6Step182EntryFRow.payload).toFinset⊆s6Step182EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step182EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step182EntryF_reserved : s6Step182EntryFBefore.reserve s6Step182EntryFFresh.toFinset=some s6Step182EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step182EntryFFresh,arenaWires]
  · norm_num [s6Step182EntryFBefore,s6Step182EntryFFresh,arenaWires]
  · simp only [s6Step182EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step182EntryF_checked : planRowResizeLog s6Step182EntryFBefore s6Step182EntryFRow 179 s6Step182EntryFFresh=
    some (s6Step182EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434],795⟩,growRow 795 s6Step182EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step182EntryFBefore s6Step182EntryFAfter s6Step182EntryFRow 179 s6Step182EntryFFresh
    s6Step182EntryF_distinct s6Step182EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step182EntryF_reserved
  have rowEq : WindowRow.mk (s6Step182EntryFRow.payload++s6Step182EntryFFresh) s6Step182EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step182EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step182EntryFvAfter : Arena := s6Step182EntryGAfter

private def s6Step182EntryFvBefore : Arena := s6Step182EntryGAfter

private theorem s6Step182EntryFv_Incoming : rowsOwned s6Step182EntryFvBefore [s6Step182EntryFvRow,s6Step182EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step182EntryFRow,s6Step182EntryGRow,s6Step182EntryFvRow,s6Step182EntryGvRow] 2 s6Step182EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step182EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step182EntryFv_Outgoing : rowsOwned s6Step182EntryGvAfter [s6Step182EntryFvOut,s6Step182EntryGvOut] :=
  hmrRows_owned_drop s6Step182EntryGvAfter [s6Step182EntryFOut,s6Step182EntryGOut,s6Step182EntryFvOut,s6Step182EntryGvOut] 2 s6Step182EntryBank_outgoingOwned

private theorem s6Step182EntryFv_distinct : (s6Step182EntryFvRow.sign::s6Step182EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182EntryFv_owned : (s6Step182EntryFvRow.sign::s6Step182EntryFvRow.payload).toFinset⊆s6Step182EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step182EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step182EntryFv_reserved : s6Step182EntryFvBefore.reserve s6Step182EntryFvFresh.toFinset=some s6Step182EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step182EntryFvFresh,arenaWires]
  · norm_num [s6Step182EntryFvBefore,s6Step182EntryGAfter,s6Step182EntryFvFresh,arenaWires]
  · simp only [s6Step182EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step182EntryFv_checked : planRowResizeLog s6Step182EntryFvBefore s6Step182EntryFvRow 105 s6Step182EntryFvFresh=
    some (s6Step182EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876],776⟩,growRow 776 s6Step182EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step182EntryFvBefore s6Step182EntryFvAfter s6Step182EntryFvRow 105 s6Step182EntryFvFresh
    s6Step182EntryFv_distinct s6Step182EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step182EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step182EntryFvRow.payload++s6Step182EntryFvFresh) s6Step182EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step182EntryGBefore : Arena := s6Step182EntryFBefore

private theorem s6Step182EntryG_Incoming : rowsOwned s6Step182EntryGBefore [s6Step182EntryGRow,s6Step182EntryFvRow,s6Step182EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step182EntryFRow,s6Step182EntryGRow,s6Step182EntryFvRow,s6Step182EntryGvRow] 1 s6Step182EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step182EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step182EntryG_Outgoing : rowsOwned s6Step182EntryGvAfter [s6Step182EntryGOut,s6Step182EntryFvOut,s6Step182EntryGvOut] :=
  hmrRows_owned_drop s6Step182EntryGvAfter [s6Step182EntryFOut,s6Step182EntryGOut,s6Step182EntryFvOut,s6Step182EntryGvOut] 1 s6Step182EntryBank_outgoingOwned

private theorem s6Step182EntryG_distinct : (s6Step182EntryGRow.sign::s6Step182EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182EntryG_owned : (s6Step182EntryGRow.sign::s6Step182EntryGRow.payload).toFinset⊆s6Step182EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step182EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step182EntryG_reserved : s6Step182EntryGBefore.reserve s6Step182EntryGFresh.toFinset=some s6Step182EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step182EntryGFresh,arenaWires]
  · norm_num [s6Step182EntryGBefore,s6Step182EntryFBefore,s6Step182EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step182EntryGBefore s6Step182EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step182EntryGFresh rfl rfl
    · norm_num [s6Step182EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step182EntryG_checked : planRowResizeLog s6Step182EntryGBefore s6Step182EntryGRow 179 s6Step182EntryGFresh=
    some (s6Step182EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 803],777⟩,growRow 777 s6Step182EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step182EntryGBefore s6Step182EntryGAfter s6Step182EntryGRow 179 s6Step182EntryGFresh
    s6Step182EntryG_distinct s6Step182EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step182EntryG_reserved
  have rowEq : WindowRow.mk (s6Step182EntryGRow.payload++s6Step182EntryGFresh) s6Step182EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 803],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step182EntryGvBefore : Arena := s6Step182EntryGAfter

private theorem s6Step182EntryGv_Incoming : rowsOwned s6Step182EntryGvBefore [s6Step182EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step182EntryFRow,s6Step182EntryGRow,s6Step182EntryFvRow,s6Step182EntryGvRow] 3 s6Step182EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step182EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step182EntryGv_Outgoing : rowsOwned s6Step182EntryGvAfter [s6Step182EntryGvOut] :=
  hmrRows_owned_drop s6Step182EntryGvAfter [s6Step182EntryFOut,s6Step182EntryGOut,s6Step182EntryFvOut,s6Step182EntryGvOut] 3 s6Step182EntryBank_outgoingOwned

private theorem s6Step182EntryGv_distinct : (s6Step182EntryGvRow.sign::s6Step182EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182EntryGv_owned : (s6Step182EntryGvRow.sign::s6Step182EntryGvRow.payload).toFinset⊆s6Step182EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step182EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step182EntryGv_reserved : s6Step182EntryGvBefore.reserve s6Step182EntryGvFresh.toFinset=some s6Step182EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step182EntryGvFresh,arenaWires]
  · norm_num [s6Step182EntryGvBefore,s6Step182EntryGAfter,s6Step182EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step182EntryGvBefore s6Step182EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step182EntryGvFresh rfl rfl
    · norm_num [s6Step182EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step182EntryGv_checked : planRowResizeLog s6Step182EntryGvBefore s6Step182EntryGvRow 105 s6Step182EntryGvFresh=
    some (s6Step182EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848],775⟩,growRow 775 s6Step182EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step182EntryGvBefore s6Step182EntryGvAfter s6Step182EntryGvRow 105 s6Step182EntryGvFresh
    s6Step182EntryGv_distinct s6Step182EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step182EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step182EntryGvRow.payload++s6Step182EntryGvFresh) s6Step182EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step182EntryBank_rows : planWindowRowsLog s6Step182EntryFBefore [(s6Step182EntryFRow,179),(s6Step182EntryGRow,179),(s6Step182EntryFvRow,105),(s6Step182EntryGvRow,105)] [s6Step182EntryFFresh,s6Step182EntryGFresh,s6Step182EntryFvFresh,s6Step182EntryGvFresh]=
    some (s6Step182EntryGvAfter,[s6Step182EntryFOut,s6Step182EntryGOut,s6Step182EntryFvOut,s6Step182EntryGvOut],(growRow 795 s6Step182EntryFFresh ++ (growRow 777 s6Step182EntryGFresh ++ (growRow 776 s6Step182EntryFvFresh ++ (growRow 775 s6Step182EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step182EntryGvAfter [] []=some (s6Step182EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step182EntryGvBefore s6Step182EntryGvAfter s6Step182EntryGvAfter
    s6Step182EntryGvRow s6Step182EntryGvOut 105 s6Step182EntryGvFresh [] [] []
    (growRow 775 s6Step182EntryGvFresh) ([]) s6Step182EntryGv_Incoming s6Step182EntryGv_checked h4 s6Step182EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step182EntryFvBefore s6Step182EntryFvAfter s6Step182EntryGvAfter
    s6Step182EntryFvRow s6Step182EntryFvOut 105 s6Step182EntryFvFresh [(s6Step182EntryGvRow,105)] [s6Step182EntryGvFresh] [s6Step182EntryGvOut]
    (growRow 776 s6Step182EntryFvFresh) ((growRow 775 s6Step182EntryGvFresh ++ [])) s6Step182EntryFv_Incoming s6Step182EntryFv_checked h3 s6Step182EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step182EntryGBefore s6Step182EntryGAfter s6Step182EntryGvAfter
    s6Step182EntryGRow s6Step182EntryGOut 179 s6Step182EntryGFresh [(s6Step182EntryFvRow,105),(s6Step182EntryGvRow,105)] [s6Step182EntryFvFresh,s6Step182EntryGvFresh] [s6Step182EntryFvOut,s6Step182EntryGvOut]
    (growRow 777 s6Step182EntryGFresh) ((growRow 776 s6Step182EntryFvFresh ++ (growRow 775 s6Step182EntryGvFresh ++ []))) s6Step182EntryG_Incoming s6Step182EntryG_checked h2 s6Step182EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step182EntryFBefore s6Step182EntryFAfter s6Step182EntryGvAfter
    s6Step182EntryFRow s6Step182EntryFOut 179 s6Step182EntryFFresh [(s6Step182EntryGRow,179),(s6Step182EntryFvRow,105),(s6Step182EntryGvRow,105)] [s6Step182EntryGFresh,s6Step182EntryFvFresh,s6Step182EntryGvFresh] [s6Step182EntryGOut,s6Step182EntryFvOut,s6Step182EntryGvOut]
    (growRow 795 s6Step182EntryFFresh) ((growRow 777 s6Step182EntryGFresh ++ (growRow 776 s6Step182EntryFvFresh ++ (growRow 775 s6Step182EntryGvFresh ++ [])))) s6Step182EntryF_Incoming s6Step182EntryF_checked h1 s6Step182EntryF_Outgoing
  exact h0

private theorem s6Step182EntryBank_checked : compileHmrBankResizeLog .entry s6Step182EntryFBefore ⟨s6Step182EntryFRow,s6Step182EntryGRow,s6Step182EntryFvRow,s6Step182EntryGvRow⟩ ⟨179,179,105,105⟩ [s6Step182EntryFFresh,s6Step182EntryGFresh,s6Step182EntryFvFresh,s6Step182EntryGvFresh]=
    some (s6Step182EntryGvAfter,⟨s6Step182EntryFOut,s6Step182EntryGOut,s6Step182EntryFvOut,s6Step182EntryGvOut⟩,(growRow 795 s6Step182EntryFFresh ++ (growRow 777 s6Step182EntryGFresh ++ (growRow 776 s6Step182EntryFvFresh ++ (growRow 775 s6Step182EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step182EntryBank_rows]
  rfl

private def s6Step182ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,177),(178,434),(435,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step182ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<177) ∨ (178≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step182ExitFBefore : Arena := s6Step182ExitGAfter

private def s6Step182ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 830],795⟩

private def s6Step182ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865],776⟩

private def s6Step182ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 803, 907],777⟩

private def s6Step182ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 880],775⟩

private theorem s6Step182ExitBank_incomingDistinct : ([s6Step182ExitGRow,s6Step182ExitFRow,s6Step182ExitFvRow,s6Step182ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182ExitF_Incoming : rowsOwned s6Step182ExitFBefore [s6Step182ExitFRow,s6Step182ExitFvRow,s6Step182ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step182ExitGRow,s6Step182ExitFRow,s6Step182ExitFvRow,s6Step182ExitGvRow] 1 s6Step182ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step182ExitFBefore (fun q => (0≤q ∧ q<177) ∨ (178≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step182ExitBank_outgoingOwned : rowsOwned s6Step182ExitGvAfter [s6Step182ExitGOut,s6Step182ExitFOut,s6Step182ExitFvOut,s6Step182ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step182ExitGvAfter (fun q => ([(0,177),(178,434),(435,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step182ExitF_Outgoing : rowsOwned s6Step182ExitGvAfter [s6Step182ExitFOut,s6Step182ExitFvOut,s6Step182ExitGvOut] :=
  hmrRows_owned_drop s6Step182ExitGvAfter [s6Step182ExitGOut,s6Step182ExitFOut,s6Step182ExitFvOut,s6Step182ExitGvOut] 1 s6Step182ExitBank_outgoingOwned

private theorem s6Step182ExitF_distinct : (s6Step182ExitFRow.sign::s6Step182ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182ExitF_owned : (s6Step182ExitFRow.sign::s6Step182ExitFRow.payload).toFinset⊆s6Step182ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step182ExitFBefore (fun q => (0≤q ∧ q<177) ∨ (178≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182ExitF_retired : s6Step182ExitFBefore.retireSet s6Step182ExitFExtra.toFinset=s6Step182ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step182ExitFBefore s6Step182ExitFAfter s6Step182ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step182ExitFBefore s6Step182ExitFAfter (fun q => (0≤q ∧ q<177) ∨ (178≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,177),(178,434),(435,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step182ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step182ExitF_checked : planRowResizeLog s6Step182ExitFBefore s6Step182ExitFRow 178 []=
    some (s6Step182ExitFAfter,s6Step182ExitFOut,shrinkRow 795 s6Step182ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step182ExitFBefore s6Step182ExitFRow 178 s6Step182ExitF_distinct s6Step182ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step182ExitFRow.payload.take 178) s6Step182ExitFRow.sign=s6Step182ExitFOut := by decide +kernel
  have hi : s6Step182ExitFRow.payload.drop 178=s6Step182ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step182ExitF_retired] at result
  exact result

private def s6Step182ExitFvAfter : Arena := s6Step182ExitFAfter

private def s6Step182ExitFvBefore : Arena := s6Step182ExitFAfter

private theorem s6Step182ExitFv_Incoming : rowsOwned s6Step182ExitFvBefore [s6Step182ExitFvRow,s6Step182ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step182ExitGRow,s6Step182ExitFRow,s6Step182ExitFvRow,s6Step182ExitGvRow] 2 s6Step182ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step182ExitFvBefore (fun q => ([(0,177),(178,434),(435,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step182ExitFv_Outgoing : rowsOwned s6Step182ExitGvAfter [s6Step182ExitFvOut,s6Step182ExitGvOut] :=
  hmrRows_owned_drop s6Step182ExitGvAfter [s6Step182ExitGOut,s6Step182ExitFOut,s6Step182ExitFvOut,s6Step182ExitGvOut] 2 s6Step182ExitBank_outgoingOwned

private theorem s6Step182ExitFv_distinct : (s6Step182ExitFvRow.sign::s6Step182ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182ExitFv_owned : (s6Step182ExitFvRow.sign::s6Step182ExitFvRow.payload).toFinset⊆s6Step182ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step182ExitFvBefore (fun q => ([(0,177),(178,434),(435,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step182ExitFv_reserved : s6Step182ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step182ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step182ExitFv_checked : planRowResizeLog s6Step182ExitFvBefore s6Step182ExitFvRow 106 []=
    some (s6Step182ExitFvAfter,s6Step182ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step182ExitFvBefore s6Step182ExitFvAfter s6Step182ExitFvRow 106 []
    s6Step182ExitFv_distinct s6Step182ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step182ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step182ExitFvRow.payload++[]) s6Step182ExitFvRow.sign=s6Step182ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step182ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step182ExitG_Incoming : rowsOwned s6Step182ExitGBefore [s6Step182ExitGRow,s6Step182ExitFRow,s6Step182ExitFvRow,s6Step182ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step182ExitGRow,s6Step182ExitFRow,s6Step182ExitFvRow,s6Step182ExitGvRow] 0 s6Step182ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step182ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step182ExitG_Outgoing : rowsOwned s6Step182ExitGvAfter [s6Step182ExitGOut,s6Step182ExitFOut,s6Step182ExitFvOut,s6Step182ExitGvOut] :=
  hmrRows_owned_drop s6Step182ExitGvAfter [s6Step182ExitGOut,s6Step182ExitFOut,s6Step182ExitFvOut,s6Step182ExitGvOut] 0 s6Step182ExitBank_outgoingOwned

private theorem s6Step182ExitG_distinct : (s6Step182ExitGRow.sign::s6Step182ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182ExitG_owned : (s6Step182ExitGRow.sign::s6Step182ExitGRow.payload).toFinset⊆s6Step182ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step182ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182ExitG_retired : s6Step182ExitGBefore.retireSet s6Step182ExitGExtra.toFinset=s6Step182ExitGAfter := by
  unfold Arena.retireSet s6Step182ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step182ExitGBefore,s6Step182ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step182ExitG_checked : planRowResizeLog s6Step182ExitGBefore s6Step182ExitGRow 177 []=
    some (s6Step182ExitGAfter,s6Step182ExitGOut,shrinkRow 777 s6Step182ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step182ExitGBefore s6Step182ExitGRow 177 s6Step182ExitG_distinct s6Step182ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step182ExitGRow.payload.take 177) s6Step182ExitGRow.sign=s6Step182ExitGOut := by decide +kernel
  have hi : s6Step182ExitGRow.payload.drop 177=s6Step182ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step182ExitG_retired] at result
  exact result

private def s6Step182ExitGvBefore : Arena := s6Step182ExitFAfter

private theorem s6Step182ExitGv_Incoming : rowsOwned s6Step182ExitGvBefore [s6Step182ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step182ExitGRow,s6Step182ExitFRow,s6Step182ExitFvRow,s6Step182ExitGvRow] 3 s6Step182ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step182ExitGvBefore (fun q => ([(0,177),(178,434),(435,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step182ExitGv_Outgoing : rowsOwned s6Step182ExitGvAfter [s6Step182ExitGvOut] :=
  hmrRows_owned_drop s6Step182ExitGvAfter [s6Step182ExitGOut,s6Step182ExitFOut,s6Step182ExitFvOut,s6Step182ExitGvOut] 3 s6Step182ExitBank_outgoingOwned

private theorem s6Step182ExitGv_distinct : (s6Step182ExitGvRow.sign::s6Step182ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182ExitGv_owned : (s6Step182ExitGvRow.sign::s6Step182ExitGvRow.payload).toFinset⊆s6Step182ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step182ExitGvBefore (fun q => ([(0,177),(178,434),(435,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step182ExitGv_retired : s6Step182ExitGvBefore.retireSet s6Step182ExitGvExtra.toFinset=s6Step182ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step182ExitGvBefore s6Step182ExitGvAfter s6Step182ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step182ExitGvBefore s6Step182ExitGvAfter (fun q => ([(0,177),(178,434),(435,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,177),(178,434),(435,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step182ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step182ExitGv_checked : planRowResizeLog s6Step182ExitGvBefore s6Step182ExitGvRow 105 []=
    some (s6Step182ExitGvAfter,s6Step182ExitGvOut,shrinkRow 775 s6Step182ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step182ExitGvBefore s6Step182ExitGvRow 105 s6Step182ExitGv_distinct s6Step182ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step182ExitGvRow.payload.take 105) s6Step182ExitGvRow.sign=s6Step182ExitGvOut := by decide +kernel
  have hi : s6Step182ExitGvRow.payload.drop 105=s6Step182ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step182ExitGv_retired] at result
  exact result

private theorem s6Step182ExitBank_rows : planWindowRowsLog s6Step182ExitGBefore [(s6Step182ExitGRow,177),(s6Step182ExitFRow,178),(s6Step182ExitFvRow,106),(s6Step182ExitGvRow,105)] [[],[],[],[]]=
    some (s6Step182ExitGvAfter,[s6Step182ExitGOut,s6Step182ExitFOut,s6Step182ExitFvOut,s6Step182ExitGvOut],(shrinkRow 777 s6Step182ExitGExtra ++ (shrinkRow 795 s6Step182ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step182ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step182ExitGvAfter [] []=some (s6Step182ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step182ExitGvBefore s6Step182ExitGvAfter s6Step182ExitGvAfter
    s6Step182ExitGvRow s6Step182ExitGvOut 105 [] [] [] []
    (shrinkRow 775 s6Step182ExitGvExtra) ([]) s6Step182ExitGv_Incoming s6Step182ExitGv_checked h4 s6Step182ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step182ExitFvBefore s6Step182ExitFvAfter s6Step182ExitGvAfter
    s6Step182ExitFvRow s6Step182ExitFvOut 106 [] [(s6Step182ExitGvRow,105)] [[]] [s6Step182ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step182ExitGvExtra ++ [])) s6Step182ExitFv_Incoming s6Step182ExitFv_checked h3 s6Step182ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step182ExitFBefore s6Step182ExitFAfter s6Step182ExitGvAfter
    s6Step182ExitFRow s6Step182ExitFOut 178 [] [(s6Step182ExitFvRow,106),(s6Step182ExitGvRow,105)] [[],[]] [s6Step182ExitFvOut,s6Step182ExitGvOut]
    (shrinkRow 795 s6Step182ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step182ExitGvExtra ++ []))) s6Step182ExitF_Incoming s6Step182ExitF_checked h2 s6Step182ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step182ExitGBefore s6Step182ExitGAfter s6Step182ExitGvAfter
    s6Step182ExitGRow s6Step182ExitGOut 177 [] [(s6Step182ExitFRow,178),(s6Step182ExitFvRow,106),(s6Step182ExitGvRow,105)] [[],[],[]] [s6Step182ExitFOut,s6Step182ExitFvOut,s6Step182ExitGvOut]
    (shrinkRow 777 s6Step182ExitGExtra) ((shrinkRow 795 s6Step182ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step182ExitGvExtra ++ [])))) s6Step182ExitG_Incoming s6Step182ExitG_checked h1 s6Step182ExitG_Outgoing
  exact h0

private theorem s6Step182ExitBank_checked : compileHmrBankResizeLog .exit s6Step182ExitGBefore ⟨s6Step182ExitFRow,s6Step182ExitGRow,s6Step182ExitFvRow,s6Step182ExitGvRow⟩ ⟨178,177,106,105⟩ [[],[],[],[]]=
    some (s6Step182ExitGvAfter,⟨s6Step182ExitFOut,s6Step182ExitGOut,s6Step182ExitFvOut,s6Step182ExitGvOut⟩,(shrinkRow 777 s6Step182ExitGExtra ++ (shrinkRow 795 s6Step182ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step182ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step182ExitBank_rows]
  rfl

private theorem s6Step182Add0_apart : Disjoint s6Step182Add0Arena.live s6Step182Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step182Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182Add0_card : s6Step182Add0Arena.live.card=885 := by
  decide +kernel

private theorem s6Step182Add0_borrowed : s6Step182Add0Arena.checkBorrow (hmrHybridCount s6Step182Add0Arena s6Step182Add0B.length) s6Step182Add0Work=some s6Step182Add0During := by
  have len : s6Step182Add0Work.length=hmrHybridCount s6Step182Add0Arena s6Step182Add0B.length := by
    rw [hmrHybridCount,s6Step182Add0_card]
    decide +kernel
  have nd : s6Step182Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step182Add0Arena s6Step182Add0During s6Step182Add0Work.toFinset s6Step182Add0_bounded s6Step182Add0_apart rfl

private theorem s6Step182Add0_distinct : (863::814::890::(s6Step182Add0A++s6Step182Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182Add0_owned : (863::814::890::(s6Step182Add0A++s6Step182Add0B)).toFinset⊆s6Step182Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step182Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182Add0_checked : compileHmrHybridCinLog s6Step182Add0Arena 814 863 890 s6Step182Add0A s6Step182Add0B s6Step182Add0Work=some s6Step182Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step182Add0Arena s6Step182Add0During 814 863 890 s6Step182Add0A s6Step182Add0B s6Step182Add0Work
    (by decide +kernel) (by decide +kernel) s6Step182Add0_distinct
    (fun q hq => s6Step182Add0_owned (List.mem_toFinset.mpr hq)) s6Step182Add0_borrowed

private theorem s6Step182Add1_apart : Disjoint s6Step182Add1Arena.live s6Step182Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step182Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182Add1_card : s6Step182Add1Arena.live.card=885 := by
  decide +kernel

private theorem s6Step182Add1_borrowed : s6Step182Add1Arena.checkBorrow (hmrHybridCount s6Step182Add1Arena s6Step182Add1B.length) s6Step182Add1Work=some s6Step182Add1During := by
  have len : s6Step182Add1Work.length=hmrHybridCount s6Step182Add1Arena s6Step182Add1B.length := by
    rw [hmrHybridCount,s6Step182Add1_card]
    decide +kernel
  have nd : s6Step182Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step182Add1Arena s6Step182Add1During s6Step182Add1Work.toFinset s6Step182Add1_bounded s6Step182Add1_apart rfl

private theorem s6Step182Add1_distinct : (863::814::890::(s6Step182Add1A++s6Step182Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182Add1_owned : (863::814::890::(s6Step182Add1A++s6Step182Add1B)).toFinset⊆s6Step182Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step182Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182Add1_checked : compileHmrHybridCinLog s6Step182Add1Arena 814 863 890 s6Step182Add1A s6Step182Add1B s6Step182Add1Work=some s6Step182Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step182Add1Arena s6Step182Add1During 814 863 890 s6Step182Add1A s6Step182Add1B s6Step182Add1Work
    (by decide +kernel) (by decide +kernel) s6Step182Add1_distinct
    (fun q hq => s6Step182Add1_owned (List.mem_toFinset.mpr hq)) s6Step182Add1_borrowed

private theorem s6Step182F4_apart : Disjoint (s6Step182Add0A++s6Step182Add0B).toFinset (s6Step182Add1A++s6Step182Add1B).toFinset := by
  have nd : ((s6Step182Add0A++s6Step182Add0B)++(s6Step182Add1A++s6Step182Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step182F4_carry : s6Step182F4FlagArena.checkBorrow 1 [890]=some s6Step182Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step182F4FlagArena,s6Step182HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step182F4FlagArena,s6Step182HeadFvAfter,s6Step182Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step182F4_distinct : (821::814::863::890::((s6Step182Add0A++s6Step182Add1A)++(s6Step182Add0B++s6Step182Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182F4_flag : s6Step182HeadFvAfter.checkBorrow 1 [863]=some s6Step182F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step182HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step182F4_owned : (821::814::((s6Step182Add0A++s6Step182Add1A)++(s6Step182Add0B++s6Step182Add1B))).toFinset⊆s6Step182HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step182HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182F4_checked : compileHmrHybridF4Log s6Step182HeadFvAfter 821 814 s6Step182Add0A s6Step182Add0B s6Step182Add1A s6Step182Add1B [863] [890] s6Step182Add0Work s6Step182Add1Work=some s6Step182F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step182HeadFvAfter s6Step182F4FlagArena s6Step182Add0Arena s6Step182Add0During s6Step182Add1During 821 814
    s6Step182Add0A s6Step182Add0B s6Step182Add1A s6Step182Add1B [863] [890] s6Step182Add0Work s6Step182Add1Work
    (fun q hq => s6Step182F4_owned (List.mem_toFinset.mpr hq)) s6Step182F4_flag s6Step182F4_carry
    s6Step182F4_distinct s6Step182F4_apart s6Step182Add0_checked s6Step182Add1_checked

private theorem s6Step182Front_branch : s6Step182FrontSigmaArena.checkBorrow 1 [814]=some s6Step182HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step182FrontSigmaArena,s6Step182EntryGvAfter,arenaWires]
  · change s6Step182HeadGBefore.live=(s6Step182EntryGvAfter.live∪{821})∪{814}
    apply hmrArena_union_pair_of_filter_check s6Step182EntryGvAfter s6Step182HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 821 814 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step182Front_entry : HmrFrontEntryValid s6Step182EntryFBefore s6Step182FrontBank 179 105 ⟨178,177,106,105⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step182FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step182EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step182EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step182FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step182Front_sigma : s6Step182EntryGvAfter.checkBorrow 1 [821]=some s6Step182FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step182EntryGvAfter,arenaWires]
  · rfl

private def s6Step182HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step182HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step182HeadFBefore : Arena := s6Step182HeadGAfter

private def s6Step182HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434],795⟩

private def s6Step182HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876],776⟩

private def s6Step182HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 803],777⟩

private def s6Step182HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848],775⟩

private theorem s6Step182HeadBank_incomingDistinct : ([s6Step182HeadGRow,s6Step182HeadFRow,s6Step182HeadGvRow,s6Step182HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182HeadF_Incoming : rowsOwned s6Step182HeadFBefore [s6Step182HeadFRow,s6Step182HeadGvRow,s6Step182HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step182HeadGRow,s6Step182HeadFRow,s6Step182HeadGvRow,s6Step182HeadFvRow] 1 s6Step182HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step182HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step182HeadBank_outgoingOwned : rowsOwned s6Step182HeadFvAfter [s6Step182HeadGOut,s6Step182HeadFOut,s6Step182HeadGvOut,s6Step182HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step182HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step182HeadF_Outgoing : rowsOwned s6Step182HeadFvAfter [s6Step182HeadFOut,s6Step182HeadGvOut,s6Step182HeadFvOut] :=
  hmrRows_owned_drop s6Step182HeadFvAfter [s6Step182HeadGOut,s6Step182HeadFOut,s6Step182HeadGvOut,s6Step182HeadFvOut] 1 s6Step182HeadBank_outgoingOwned

private theorem s6Step182HeadF_distinct : (s6Step182HeadFRow.sign::s6Step182HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182HeadF_owned : (s6Step182HeadFRow.sign::s6Step182HeadFRow.payload).toFinset⊆s6Step182HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step182HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step182HeadF_reserved : s6Step182HeadFBefore.reserve s6Step182HeadFFresh.toFinset=some s6Step182HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step182HeadFFresh,arenaWires]
  · norm_num [s6Step182HeadFBefore,s6Step182HeadGAfter,s6Step182HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step182HeadFBefore s6Step182HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step182HeadFFresh rfl rfl
    · norm_num [s6Step182HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step182HeadF_checked : planRowResizeLog s6Step182HeadFBefore s6Step182HeadFRow 180 s6Step182HeadFFresh=
    some (s6Step182HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 830],795⟩,growRow 795 s6Step182HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step182HeadFBefore s6Step182HeadFAfter s6Step182HeadFRow 180 s6Step182HeadFFresh
    s6Step182HeadF_distinct s6Step182HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step182HeadF_reserved
  have rowEq : WindowRow.mk (s6Step182HeadFRow.payload++s6Step182HeadFFresh) s6Step182HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 830],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step182HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step182HeadFvBefore : Arena := s6Step182HeadGvAfter

private theorem s6Step182HeadFv_Incoming : rowsOwned s6Step182HeadFvBefore [s6Step182HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step182HeadGRow,s6Step182HeadFRow,s6Step182HeadGvRow,s6Step182HeadFvRow] 3 s6Step182HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step182HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step182HeadFv_Outgoing : rowsOwned s6Step182HeadFvAfter [s6Step182HeadFvOut] :=
  hmrRows_owned_drop s6Step182HeadFvAfter [s6Step182HeadGOut,s6Step182HeadFOut,s6Step182HeadGvOut,s6Step182HeadFvOut] 3 s6Step182HeadBank_outgoingOwned

private theorem s6Step182HeadFv_distinct : (s6Step182HeadFvRow.sign::s6Step182HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182HeadFv_owned : (s6Step182HeadFvRow.sign::s6Step182HeadFvRow.payload).toFinset⊆s6Step182HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step182HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182HeadFv_reserved : s6Step182HeadFvBefore.reserve s6Step182HeadFvFresh.toFinset=some s6Step182HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step182HeadFvFresh,arenaWires]
  · norm_num [s6Step182HeadFvBefore,s6Step182HeadGvAfter,s6Step182HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step182HeadFvAfter,s6Step182HeadFvBefore,s6Step182HeadGvAfter,s6Step182HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step182HeadFv_checked : planRowResizeLog s6Step182HeadFvBefore s6Step182HeadFvRow 106 s6Step182HeadFvFresh=
    some (s6Step182HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865],776⟩,growRow 776 s6Step182HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step182HeadFvBefore s6Step182HeadFvAfter s6Step182HeadFvRow 106 s6Step182HeadFvFresh
    s6Step182HeadFv_distinct s6Step182HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step182HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step182HeadFvRow.payload++s6Step182HeadFvFresh) s6Step182HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step182HeadG_Incoming : rowsOwned s6Step182HeadGBefore [s6Step182HeadGRow,s6Step182HeadFRow,s6Step182HeadGvRow,s6Step182HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step182HeadGRow,s6Step182HeadFRow,s6Step182HeadGvRow,s6Step182HeadFvRow] 0 s6Step182HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step182HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step182HeadG_Outgoing : rowsOwned s6Step182HeadFvAfter [s6Step182HeadGOut,s6Step182HeadFOut,s6Step182HeadGvOut,s6Step182HeadFvOut] :=
  hmrRows_owned_drop s6Step182HeadFvAfter [s6Step182HeadGOut,s6Step182HeadFOut,s6Step182HeadGvOut,s6Step182HeadFvOut] 0 s6Step182HeadBank_outgoingOwned

private theorem s6Step182HeadG_distinct : (s6Step182HeadGRow.sign::s6Step182HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182HeadG_owned : (s6Step182HeadGRow.sign::s6Step182HeadGRow.payload).toFinset⊆s6Step182HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step182HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step182HeadG_reserved : s6Step182HeadGBefore.reserve s6Step182HeadGFresh.toFinset=some s6Step182HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step182HeadGFresh,arenaWires]
  · norm_num [s6Step182HeadGBefore,s6Step182HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step182HeadGBefore s6Step182HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step182HeadGFresh rfl rfl
    · norm_num [s6Step182HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step182HeadG_checked : planRowResizeLog s6Step182HeadGBefore s6Step182HeadGRow 180 s6Step182HeadGFresh=
    some (s6Step182HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 803, 907],777⟩,growRow 777 s6Step182HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step182HeadGBefore s6Step182HeadGAfter s6Step182HeadGRow 180 s6Step182HeadGFresh
    s6Step182HeadG_distinct s6Step182HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step182HeadG_reserved
  have rowEq : WindowRow.mk (s6Step182HeadGRow.payload++s6Step182HeadGFresh) s6Step182HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 803, 907],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step182HeadGvBefore : Arena := s6Step182HeadFAfter

private theorem s6Step182HeadGv_Incoming : rowsOwned s6Step182HeadGvBefore [s6Step182HeadGvRow,s6Step182HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step182HeadGRow,s6Step182HeadFRow,s6Step182HeadGvRow,s6Step182HeadFvRow] 2 s6Step182HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step182HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step182HeadGv_Outgoing : rowsOwned s6Step182HeadFvAfter [s6Step182HeadGvOut,s6Step182HeadFvOut] :=
  hmrRows_owned_drop s6Step182HeadFvAfter [s6Step182HeadGOut,s6Step182HeadFOut,s6Step182HeadGvOut,s6Step182HeadFvOut] 2 s6Step182HeadBank_outgoingOwned

private theorem s6Step182HeadGv_distinct : (s6Step182HeadGvRow.sign::s6Step182HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step182HeadGv_owned : (s6Step182HeadGvRow.sign::s6Step182HeadGvRow.payload).toFinset⊆s6Step182HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step182HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step182HeadGv_reserved : s6Step182HeadGvBefore.reserve s6Step182HeadGvFresh.toFinset=some s6Step182HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step182HeadGvFresh,arenaWires]
  · norm_num [s6Step182HeadGvBefore,s6Step182HeadFAfter,s6Step182HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step182HeadGvAfter,s6Step182HeadGvBefore,s6Step182HeadFAfter,s6Step182HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step182HeadGv_checked : planRowResizeLog s6Step182HeadGvBefore s6Step182HeadGvRow 106 s6Step182HeadGvFresh=
    some (s6Step182HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 880],775⟩,growRow 775 s6Step182HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step182HeadGvBefore s6Step182HeadGvAfter s6Step182HeadGvRow 106 s6Step182HeadGvFresh
    s6Step182HeadGv_distinct s6Step182HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step182HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step182HeadGvRow.payload++s6Step182HeadGvFresh) s6Step182HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 880],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step182HeadBank_rows : planWindowRowsLog s6Step182HeadGBefore [(s6Step182HeadGRow,180),(s6Step182HeadFRow,180),(s6Step182HeadGvRow,106),(s6Step182HeadFvRow,106)] [s6Step182HeadGFresh,s6Step182HeadFFresh,s6Step182HeadGvFresh,s6Step182HeadFvFresh]=
    some (s6Step182HeadFvAfter,[s6Step182HeadGOut,s6Step182HeadFOut,s6Step182HeadGvOut,s6Step182HeadFvOut],(growRow 777 s6Step182HeadGFresh ++ (growRow 795 s6Step182HeadFFresh ++ (growRow 775 s6Step182HeadGvFresh ++ (growRow 776 s6Step182HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step182HeadFvAfter [] []=some (s6Step182HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step182HeadFvBefore s6Step182HeadFvAfter s6Step182HeadFvAfter
    s6Step182HeadFvRow s6Step182HeadFvOut 106 s6Step182HeadFvFresh [] [] []
    (growRow 776 s6Step182HeadFvFresh) ([]) s6Step182HeadFv_Incoming s6Step182HeadFv_checked h4 s6Step182HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step182HeadGvBefore s6Step182HeadGvAfter s6Step182HeadFvAfter
    s6Step182HeadGvRow s6Step182HeadGvOut 106 s6Step182HeadGvFresh [(s6Step182HeadFvRow,106)] [s6Step182HeadFvFresh] [s6Step182HeadFvOut]
    (growRow 775 s6Step182HeadGvFresh) ((growRow 776 s6Step182HeadFvFresh ++ [])) s6Step182HeadGv_Incoming s6Step182HeadGv_checked h3 s6Step182HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step182HeadFBefore s6Step182HeadFAfter s6Step182HeadFvAfter
    s6Step182HeadFRow s6Step182HeadFOut 180 s6Step182HeadFFresh [(s6Step182HeadGvRow,106),(s6Step182HeadFvRow,106)] [s6Step182HeadGvFresh,s6Step182HeadFvFresh] [s6Step182HeadGvOut,s6Step182HeadFvOut]
    (growRow 795 s6Step182HeadFFresh) ((growRow 775 s6Step182HeadGvFresh ++ (growRow 776 s6Step182HeadFvFresh ++ []))) s6Step182HeadF_Incoming s6Step182HeadF_checked h2 s6Step182HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step182HeadGBefore s6Step182HeadGAfter s6Step182HeadFvAfter
    s6Step182HeadGRow s6Step182HeadGOut 180 s6Step182HeadGFresh [(s6Step182HeadFRow,180),(s6Step182HeadGvRow,106),(s6Step182HeadFvRow,106)] [s6Step182HeadFFresh,s6Step182HeadGvFresh,s6Step182HeadFvFresh] [s6Step182HeadFOut,s6Step182HeadGvOut,s6Step182HeadFvOut]
    (growRow 777 s6Step182HeadGFresh) ((growRow 795 s6Step182HeadFFresh ++ (growRow 775 s6Step182HeadGvFresh ++ (growRow 776 s6Step182HeadFvFresh ++ [])))) s6Step182HeadG_Incoming s6Step182HeadG_checked h1 s6Step182HeadG_Outgoing
  exact h0

private theorem s6Step182HeadBank_checked : compileHmrBankResizeLog .headroom s6Step182HeadGBefore ⟨s6Step182HeadFRow,s6Step182HeadGRow,s6Step182HeadFvRow,s6Step182HeadGvRow⟩ ⟨180,180,106,106⟩ [s6Step182HeadGFresh,s6Step182HeadFFresh,s6Step182HeadGvFresh,s6Step182HeadFvFresh]=
    some (s6Step182HeadFvAfter,⟨s6Step182HeadFOut,s6Step182HeadGOut,s6Step182HeadFvOut,s6Step182HeadGvOut⟩,(growRow 777 s6Step182HeadGFresh ++ (growRow 795 s6Step182HeadFFresh ++ (growRow 775 s6Step182HeadGvFresh ++ (growRow 776 s6Step182HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step182HeadBank_rows]
  rfl

private theorem s6Step182Front_checked : compileHmrSourceFrontLog s6Step182EntryFBefore s6Step182FrontBank 179 105 ⟨178,177,106,105⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step182FrontLog=some s6Step182FrontPlan := by
  have pairEq : s6Step182FrontPair=⟨s6Step182HeadFRow,s6Step182HeadGRow,s6Step182HeadFvRow,s6Step182HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step182FrontHead=⟨s6Step182ExitFRow,s6Step182ExitGRow,s6Step182ExitFvRow,s6Step182ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step182Add0A=s6Step182FrontHead.f.wires := by decide +kernel
  have gEq : s6Step182Add0B=s6Step182FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step182Add1A=s6Step182FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step182Add1B=s6Step182FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step182EntryFBefore s6Step182FrontBank 179 105 ⟨178,177,106,105⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step182FrontLog s6Step182FrontPlan
  · exact s6Step182Front_entry
  · exact s6Step182EntryBank_checked
  · exact s6Step182Front_sigma
  · rfl
  · exact s6Step182Front_branch
  · rfl
  · simpa only [s6Step182FrontPlan,pairEq] using s6Step182HeadBank_checked
  · simpa only [s6Step182FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step182F4_checked
  · exact s6Step182Counter_checked
  · rfl
  · simpa only [s6Step182FrontPlan,headEq] using s6Step182ExitBank_checked

private theorem s6Step182Complete_explicit_checked : compileHmrEarlyStepLog s6Step182EntryFBefore s6Step182FrontBank 179 105 ⟨178,177,106,105⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step182CompleteLog=some s6Step182CompletePlan := by
  let Q := s6Step182EarlyControlPlan
  have hq := s6Step182EarlyControl_plan_checked
  have fv1 : s6Step182CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step182CompleteOut.fv.payload[2]?.getD s6Step182CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step182CompleteOut.fv.payload[3]?.getD s6Step182CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step182CompleteOut.fv.payload[4]?.getD s6Step182CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step182EntryFBefore s6Step182EarlyControlArena s6Step182FrontBank 179 105 ⟨178,177,106,105⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step182CompleteLog s6Step182FrontPlan Q
    s6Step182Front_checked s6Step182Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step182Complete_owned s6Step182Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step182EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 s6Step182CompleteOut.fv.second (s6Step182CompleteOut.fv.payload[2]?.getD s6Step182CompleteOut.fv.sign) (s6Step182CompleteOut.fv.payload[3]?.getD s6Step182CompleteOut.fv.sign) (s6Step182CompleteOut.fv.payload[4]?.getD s6Step182CompleteOut.fv.sign) 814 43 s6Step182EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep182Arena : Arena := s6Step182EntryFBefore
def s6PrivateStep182Bank : WindowBank := s6Step182FrontBank
def s6PrivateStep182Spec : HmrSourceWalkStepLog := ⟨179,105,⟨178,177,106,105⟩,43,.early s6Step182CompleteLog⟩
def s6PrivateStep182Plan : HmrSourceStepPlan := .early s6Step182CompletePlan
theorem s6PrivateStep182_source : s6PrivateStep182Spec=s6ObservedLogs176[6] := rfl
theorem s6PrivateStep182_checked : compileHmrSourceStepLog s6PrivateStep182Arena s6PrivateStep182Bank
    s6PrivateStep182Spec.fgWidth s6PrivateStep182Spec.vWidth s6PrivateStep182Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]
    6 498 182 s6PrivateStep182Spec.need none s6PrivateStep182Spec.log=some s6PrivateStep182Plan := by
  change compileHmrSourceStepLog s6Step182EntryFBefore s6Step182FrontBank 179 105 ⟨178,177,106,105⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 6 498 182 43 none (.early s6Step182CompleteLog)=some (.early s6Step182CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 182<498)]
  rw [s6Step182Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
