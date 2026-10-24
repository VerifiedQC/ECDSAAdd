import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep165
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

private def s6Step167CompleteMoves : List (Wire × Wire) := [(892,185),(793,442)]

private def s6Step167EarlyControlLog : HmrEarlyControlLog := ⟨[793, 892, 922, 857, 818],[876],[891],[903, 791, 825, 810, 894, 923],[]⟩

private def s6Step167FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [818], [], []],[[876], [857], [922], [863]],[[], [], [], []]⟩,[805],[890],[891],[903],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825]⟩

private def s6Step167CompleteLog : HmrEarlyStepLog := ⟨s6Step167FrontLog,s6Step167CompleteMoves,s6Step167EarlyControlLog⟩

private def s6Step167ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441],795⟩

private def s6Step167ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863],776⟩

private def s6Step167ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],777⟩

private def s6Step167ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879],775⟩

private def s6Step167FrontOut : WindowBank := ⟨s6Step167ExitFOut,s6Step167ExitGOut,s6Step167ExitFvOut,s6Step167ExitGvOut⟩

private def s6Step167CompleteOut : WindowBank := s6Step167FrontOut.repacked s6Step167CompleteMoves

private def s6Step167EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step167EarlyControlPositiveArena,[876],s6Step167EarlyControlEqualityArena,[891],⟨⟨805,false⟩,[⟨⟨876,false⟩,891⟩]⟩⟩

private def s6Step167EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,793⟩,⟨⟨772,false⟩,892⟩,⟨⟨771,false⟩,922⟩,⟨⟨770,false⟩,857⟩,⟨⟨769,false⟩,818⟩]⟩

private def s6Step167EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step167EarlyControlZeroArena,s6Step167EarlyControlZeroPlan,s6Step167EarlyControlClassPlan,s6Step167EarlyControlFlagArena,s6Step167EarlyControlFittedArena,s6Step167EarlyControlHistoryArena,s6Step167EarlyControlSigmaArena,s6Step167EarlyControlOutputArena,s6Step167EarlyControlLog⟩

private def s6Step167CounterWork : List Wire := [891, 903, 791, 825]

private theorem s6Step167Counter_bounded : s6Step167CounterWork.toFinset⊆arenaWires := by norm_num [s6Step167CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step167HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167CounterDuring : Arena := ⟨s6Step167HeadFvAfter.live∪s6Step167CounterWork.toFinset,Finset.union_subset s6Step167HeadFvAfter.bounded s6Step167Counter_bounded⟩

private def s6Step167EntryFFresh : List Wire := []

private def s6Step167EntryFvFresh : List Wire := []

private def s6Step167EntryGFresh : List Wire := [818]

private def s6Step167EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step167EntryGvAfter : Arena := s6Step167EntryGAfter

private def s6Step167EntryGvFresh : List Wire := []

private def s6Step167ExitFExtra : List Wire := [442, 857]

private def s6Step167ExitGExtra : List Wire := [185, 818, 876]

private def s6Step167ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,185),(186,442),(443,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step167ExitGvExtra : List Wire := [922]

private def s6Step167Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167Add0Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step167Add0_bounded : s6Step167Add0Work.toFinset⊆arenaWires := by
  have h : s6Step167Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step167Add0During : Arena := ⟨s6Step167Add0Arena.live∪s6Step167Add0Work.toFinset,Finset.union_subset s6Step167Add0Arena.bounded s6Step167Add0_bounded⟩

private def s6Step167Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167Add1Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step167Add1_bounded : s6Step167Add1Work.toFinset⊆arenaWires := by
  have h : s6Step167Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step167Add1During : Arena := ⟨s6Step167Add1Arena.live∪s6Step167Add1Work.toFinset,Finset.union_subset s6Step167Add1Arena.bounded s6Step167Add1_bounded⟩

private def s6Step167F4FlagArena : Arena := ⟨s6Step167HeadFvAfter.live∪{891},Finset.union_subset s6Step167HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step167F4Plan : HmrHybridF4Plan := ⟨s6Step167F4FlagArena,[891],s6Step167Add0Arena,[903],s6Step167Add0During,s6Step167Add0Work,s6Step167Add1During,s6Step167Add1Work⟩

private def s6Step167HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 857],795⟩

private def s6Step167HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863],776⟩

private def s6Step167HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 818, 876],777⟩

private def s6Step167HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 922],775⟩

private def s6Step167FrontHead : WindowBank := ⟨s6Step167HeadFOut,s6Step167HeadGOut,s6Step167HeadFvOut,s6Step167HeadGvOut⟩

private def s6Step167EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩

private def s6Step167EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩

private def s6Step167EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 818],777⟩

private def s6Step167EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879],775⟩

private def s6Step167FrontPair : WindowBank := ⟨s6Step167EntryFOut,s6Step167EntryGOut,s6Step167EntryFvOut,s6Step167EntryGvOut⟩

private def s6Step167FrontSigmaArena : Arena := ⟨s6Step167EntryGvAfter.live∪{805},Finset.union_subset s6Step167EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step167HeadFFresh : List Wire := [857]

private def s6Step167HeadFvFresh : List Wire := [863]

private def s6Step167HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step167HeadGFresh : List Wire := [876]

private def s6Step167HeadGvFresh : List Wire := [922]

private def s6Step167FrontPlan : HmrSourceFront := ⟨s6Step167EntryGvAfter,s6Step167FrontPair,(growRow 795 s6Step167EntryFFresh ++ (growRow 777 s6Step167EntryGFresh ++ (growRow 776 s6Step167EntryFvFresh ++ (growRow 775 s6Step167EntryGvFresh ++ [])))),s6Step167FrontSigmaArena,[805],s6Step167HeadGBefore,[890],
  s6Step167HeadFvAfter,s6Step167FrontHead,(growRow 777 s6Step167HeadGFresh ++ (growRow 795 s6Step167HeadFFresh ++ (growRow 775 s6Step167HeadGvFresh ++ (growRow 776 s6Step167HeadFvFresh ++ [])))),s6Step167F4Plan,s6Step167CounterDuring,s6Step167CounterWork,s6Step167ExitGvAfter,s6Step167FrontOut,(shrinkRow 777 s6Step167ExitGExtra ++ (shrinkRow 795 s6Step167ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step167ExitGvExtra ++ []))))⟩

private def s6Step167CompletePlan : HmrEarlyStepPlan := ⟨s6Step167FrontPlan,s6Step167EarlyControlArena,s6Step167EarlyControlPlan,s6Step167CompleteMoves⟩

private theorem s6Step167Complete_apart : List.Disjoint (s6Step167CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [805, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step167CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[805, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step167Complete_owned : (s6Step167CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step167EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step167EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step167CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,442),(443,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(893,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step167CompleteRelocationMove0Borrowed : Arena := ⟨s6Step167ExitGvAfter.live∪{185},Finset.union_subset s6Step167ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step167CompleteRelocationMove1Borrowed : Arena := ⟨s6Step167CompleteRelocationMove0After.live∪{442},Finset.union_subset s6Step167CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step167CompleteRelocation_move0_owned : 892∈s6Step167ExitGvAfter.live := by norm_num [s6Step167ExitGvAfter,arenaWires]

private theorem s6Step167CompleteRelocation_move0_reserve : s6Step167ExitGvAfter.reserve {185}=some s6Step167CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step167ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step167CompleteRelocation_move0_retire : s6Step167CompleteRelocationMove0Borrowed.retireSet {892}=s6Step167CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step167CompleteRelocationMove0Borrowed s6Step167CompleteRelocationMove0After {892}
  change s6Step167CompleteRelocationMove0After.live=(s6Step167ExitGvAfter.live∪{185})\{892}
  apply hmrArena_update_of_filter_check s6Step167ExitGvAfter s6Step167CompleteRelocationMove0After (fun q => ([(0,185),(186,442),(443,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,442),(443,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(893,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [185] [892] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step167CompleteRelocation_move1_owned : 793∈s6Step167CompleteRelocationMove0After.live := by norm_num [s6Step167CompleteRelocationMove0After,arenaWires]

private theorem s6Step167CompleteRelocation_move1_reserve : s6Step167CompleteRelocationMove0After.reserve {442}=some s6Step167CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step167CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step167CompleteRelocation_move1_retire : s6Step167CompleteRelocationMove1Borrowed.retireSet {793}=s6Step167EarlyControlArena := by
  unfold Arena.retireSet s6Step167EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step167CompleteRelocationMove1Borrowed,s6Step167CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step167CompleteRelocation_checked : s6Step167ExitGvAfter.checkRepack [(892,185),(793,442)]=some s6Step167EarlyControlArena := by
  have tail2 : s6Step167EarlyControlArena.checkRepack []=some s6Step167EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step167CompleteRelocationMove0After s6Step167CompleteRelocationMove1Borrowed s6Step167EarlyControlArena s6Step167EarlyControlArena 793 442 []
    s6Step167CompleteRelocation_move1_owned s6Step167CompleteRelocation_move1_reserve s6Step167CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step167ExitGvAfter s6Step167CompleteRelocationMove0Borrowed s6Step167CompleteRelocationMove0After s6Step167EarlyControlArena 892 185 [(793,442)]
    s6Step167CompleteRelocation_move0_owned s6Step167CompleteRelocation_move0_reserve s6Step167CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step167Complete_repack : s6Step167ExitGvAfter.checkRepack s6Step167CompleteMoves=some s6Step167EarlyControlArena := by
  simpa only [s6Step167CompleteMoves] using s6Step167CompleteRelocation_checked

private theorem s6Step167EarlyControl_branchOwned : ([890] : List Wire).toFinset⊆s6Step167EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step167EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167EarlyControl_branch : compileHmrBranchRetirement s6Step167EarlyControlSigmaArena 890=some s6Step167EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step167EarlyControl_branchOwned
  · ext q
    simp [s6Step167EarlyControlOutputArena,s6Step167EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step167EarlyControl_classEqualityBorrow : s6Step167EarlyControlPositiveArena.checkBorrow (([805, 876] : List Wire).length-1) s6Step167EarlyControlLog.classWork=some s6Step167EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step167EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step167EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step167EarlyControlEqualityArena,s6Step167EarlyControlPositiveArena,s6Step167EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step167EarlyControl_classEqualityOwned : ([805, 876] : List Wire).toFinset⊆s6Step167EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step167EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167EarlyControl_classEquality : compileHmrEqualityLog s6Step167EarlyControlPositiveArena [805, 876] 0 s6Step167EarlyControlLog.classWork=some (s6Step167EarlyControlEqualityArena,s6Step167EarlyControlLog.classWork,s6Step167EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step167EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step167EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step167EarlyControl_classOwned : ([769, 818, 805] : List Wire).toFinset⊆s6Step167EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step167EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167EarlyControl_positiveBorrow : s6Step167EarlyControlZeroArena.checkBorrow (1) s6Step167EarlyControlLog.positiveWork=some s6Step167EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step167EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step167EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step167EarlyControlPositiveArena,s6Step167EarlyControlZeroArena,s6Step167EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step167EarlyControl_class : compileHmrSourceClassLog s6Step167EarlyControlZeroArena false 769 s6Step167EarlyControlZeroPlan.top 0 805 s6Step167EarlyControlLog.positiveWork s6Step167EarlyControlLog.classWork=some s6Step167EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step167EarlyControlClassPlan s6Step167EarlyControlZeroArena false 769 s6Step167EarlyControlZeroPlan.top 0 805
  constructor
  · decide +kernel
  · exact s6Step167EarlyControl_classOwned
  · exact s6Step167EarlyControl_positiveBorrow
  · exact s6Step167EarlyControl_classEquality

private theorem s6Step167EarlyControl_entryRecordOwned : ([890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step167EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step167EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167EarlyControl_entrySigmaOwned : ([805, 254] : List Wire).toFinset⊆s6Step167EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step167EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167EarlyControl_fitBorrow : s6Step167EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step167EarlyControlLog.recordFresh=some s6Step167EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step167EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step167EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step167EarlyControlFittedArena,s6Step167EarlyControlFlagArena,s6Step167EarlyControlLog,arenaWires]

private theorem s6Step167EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step167EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step167EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167EarlyControl_fit : compileHmrRecordGrowLog s6Step167EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step167EarlyControlLog.recordFresh=some s6Step167EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step167EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step167EarlyControl_fitBorrow

private theorem s6Step167EarlyControl_flagsBorrow : s6Step167EarlyControlEqualityArena.checkBorrow (6) s6Step167EarlyControlLog.flagWork=some s6Step167EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step167EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step167EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step167EarlyControlFlagArena,s6Step167EarlyControlEqualityArena,s6Step167EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step167EarlyControl_flagsOwned : ([891, 253, 252, 251] : List Wire).toFinset⊆s6Step167EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step167EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167EarlyControl_flags : compileHmrFlagsLog s6Step167EarlyControlClassPlan.equalityArena s6Step167EarlyControlClassPlan.equality.top 253 252 251 s6Step167EarlyControlLog.flagWork=some s6Step167EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step167EarlyControl_flagsOwned⟩
  · exact s6Step167EarlyControl_flagsBorrow

private theorem s6Step167EarlyControl_historyBorrow : s6Step167EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step167EarlyControlLog.recordFresh=some s6Step167EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step167EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step167EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step167EarlyControlHistoryArena,s6Step167EarlyControlArena,s6Step167EarlyControlLog,arenaWires]

private theorem s6Step167EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step167EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step167EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167EarlyControl_history : compileHmrRecordGrowLog s6Step167EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step167EarlyControlLog.recordFresh=some s6Step167EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step167EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step167EarlyControl_historyBorrow

private theorem s6Step167EarlyControl_sigmaOwned : ([254, 805] : List Wire).toFinset⊆s6Step167EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step167EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167EarlyControl_sigmaReleaseOwned : ([805] : List Wire).toFinset⊆s6Step167EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step167EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167EarlyControl_sigmaRelease : s6Step167EarlyControlHistoryArena.release {805} (fun _ => false)=some s6Step167EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step167EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step167EarlyControlSigmaArena,s6Step167EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step167EarlyControl_sigma : compileHmrSigmaDropLog s6Step167EarlyControlHistoryArena false 0 0 254 805 []=some s6Step167EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step167EarlyControl_sigmaOwned⟩
  · exact s6Step167EarlyControl_sigmaRelease

private theorem s6Step167EarlyControl_zeroBorrow : s6Step167EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step167EarlyControlLog.zeroWork=some s6Step167EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step167EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step167EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step167EarlyControlZeroArena,s6Step167EarlyControlArena,s6Step167EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step167EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step167EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step167EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167EarlyControl_zero : compileHmrEqualityLog s6Step167EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step167EarlyControlLog.zeroWork=some (s6Step167EarlyControlZeroArena,s6Step167EarlyControlLog.zeroWork,s6Step167EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step167EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step167EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step167EarlyControl_logged : s6Step167EarlyControlPlan.Logged s6Step167EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 805 254 253 252 251 890 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step167EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step167EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step167EarlyControl_zero
  · exact s6Step167EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step167EarlyControl_flags
  · exact s6Step167EarlyControl_fit
  · exact s6Step167EarlyControl_history
  · exact s6Step167EarlyControl_sigma
  · exact s6Step167EarlyControl_branch

private theorem s6Step167EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step167EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 805 254 253 252 251 890 42 s6Step167EarlyControlLog=some s6Step167EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step167EarlyControlPlan s6Step167EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 805 254 253 252 251 890 42 s6Step167EarlyControl_logged

private def s6Step167EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩

private def s6Step167EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩

private def s6Step167EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],777⟩

private def s6Step167EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879],775⟩

private def s6Step167FrontBank : WindowBank := ⟨s6Step167EntryFRow,s6Step167EntryGRow,s6Step167EntryFvRow,s6Step167EntryGvRow⟩

private def s6Step167Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 857, 795]

private def s6Step167Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 818, 876, 777]

private def s6Step167Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863, 776]

private def s6Step167Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 922, 775]

private theorem s6Step167Counter_apart : Disjoint s6Step167HeadFvAfter.live s6Step167CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step167HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167Counter_borrowed : s6Step167HeadFvAfter.checkBorrow 4 s6Step167CounterWork=some s6Step167CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step167HeadFvAfter s6Step167CounterDuring s6Step167CounterWork.toFinset s6Step167Counter_bounded s6Step167Counter_apart rfl

private theorem s6Step167Counter_owned : (805::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step167HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step167HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167Counter_checked : compileHmrCounterStepLog s6Step167HeadFvAfter true 805 [774, 773, 772, 771, 770, 769] s6Step167CounterWork=some s6Step167CounterDuring := by
  have owned : ∀q∈805::[774, 773, 772, 771, 770, 769],q∈s6Step167HeadFvAfter.live := fun q hq => s6Step167Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step167Counter_borrowed

private def s6Step167EntryFAfter : Arena := s6Step167EntryFBefore

private theorem s6Step167EntryBank_incomingDistinct : ([s6Step167EntryFRow,s6Step167EntryGRow,s6Step167EntryFvRow,s6Step167EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167EntryF_Incoming : rowsOwned s6Step167EntryFBefore [s6Step167EntryFRow,s6Step167EntryGRow,s6Step167EntryFvRow,s6Step167EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step167EntryFRow,s6Step167EntryGRow,s6Step167EntryFvRow,s6Step167EntryGvRow] 0 s6Step167EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step167EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step167EntryBank_outgoingOwned : rowsOwned s6Step167EntryGvAfter [s6Step167EntryFOut,s6Step167EntryGOut,s6Step167EntryFvOut,s6Step167EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step167EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step167EntryF_Outgoing : rowsOwned s6Step167EntryGvAfter [s6Step167EntryFOut,s6Step167EntryGOut,s6Step167EntryFvOut,s6Step167EntryGvOut] :=
  hmrRows_owned_drop s6Step167EntryGvAfter [s6Step167EntryFOut,s6Step167EntryGOut,s6Step167EntryFvOut,s6Step167EntryGvOut] 0 s6Step167EntryBank_outgoingOwned

private theorem s6Step167EntryF_distinct : (s6Step167EntryFRow.sign::s6Step167EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167EntryF_owned : (s6Step167EntryFRow.sign::s6Step167EntryFRow.payload).toFinset⊆s6Step167EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step167EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167EntryF_reserved : s6Step167EntryFBefore.reserve s6Step167EntryFFresh.toFinset=some s6Step167EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step167EntryFFresh,arenaWires]
  · norm_num [s6Step167EntryFBefore,s6Step167EntryFFresh,arenaWires]
  · simp only [s6Step167EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step167EntryF_checked : planRowResizeLog s6Step167EntryFBefore s6Step167EntryFRow 187 s6Step167EntryFFresh=
    some (s6Step167EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩,growRow 795 s6Step167EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step167EntryFBefore s6Step167EntryFAfter s6Step167EntryFRow 187 s6Step167EntryFFresh
    s6Step167EntryF_distinct s6Step167EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step167EntryF_reserved
  have rowEq : WindowRow.mk (s6Step167EntryFRow.payload++s6Step167EntryFFresh) s6Step167EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step167EntryFvAfter : Arena := s6Step167EntryGAfter

private def s6Step167EntryFvBefore : Arena := s6Step167EntryGAfter

private theorem s6Step167EntryFv_Incoming : rowsOwned s6Step167EntryFvBefore [s6Step167EntryFvRow,s6Step167EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step167EntryFRow,s6Step167EntryGRow,s6Step167EntryFvRow,s6Step167EntryGvRow] 2 s6Step167EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step167EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step167EntryFv_Outgoing : rowsOwned s6Step167EntryGvAfter [s6Step167EntryFvOut,s6Step167EntryGvOut] :=
  hmrRows_owned_drop s6Step167EntryGvAfter [s6Step167EntryFOut,s6Step167EntryGOut,s6Step167EntryFvOut,s6Step167EntryGvOut] 2 s6Step167EntryBank_outgoingOwned

private theorem s6Step167EntryFv_distinct : (s6Step167EntryFvRow.sign::s6Step167EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167EntryFv_owned : (s6Step167EntryFvRow.sign::s6Step167EntryFvRow.payload).toFinset⊆s6Step167EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step167EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step167EntryFv_reserved : s6Step167EntryFvBefore.reserve s6Step167EntryFvFresh.toFinset=some s6Step167EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step167EntryFvFresh,arenaWires]
  · norm_num [s6Step167EntryFvBefore,s6Step167EntryGAfter,s6Step167EntryFvFresh,arenaWires]
  · simp only [s6Step167EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step167EntryFv_checked : planRowResizeLog s6Step167EntryFvBefore s6Step167EntryFvRow 98 s6Step167EntryFvFresh=
    some (s6Step167EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩,growRow 776 s6Step167EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step167EntryFvBefore s6Step167EntryFvAfter s6Step167EntryFvRow 98 s6Step167EntryFvFresh
    s6Step167EntryFv_distinct s6Step167EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step167EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step167EntryFvRow.payload++s6Step167EntryFvFresh) s6Step167EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step167EntryGBefore : Arena := s6Step167EntryFBefore

private theorem s6Step167EntryG_Incoming : rowsOwned s6Step167EntryGBefore [s6Step167EntryGRow,s6Step167EntryFvRow,s6Step167EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step167EntryFRow,s6Step167EntryGRow,s6Step167EntryFvRow,s6Step167EntryGvRow] 1 s6Step167EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step167EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step167EntryG_Outgoing : rowsOwned s6Step167EntryGvAfter [s6Step167EntryGOut,s6Step167EntryFvOut,s6Step167EntryGvOut] :=
  hmrRows_owned_drop s6Step167EntryGvAfter [s6Step167EntryFOut,s6Step167EntryGOut,s6Step167EntryFvOut,s6Step167EntryGvOut] 1 s6Step167EntryBank_outgoingOwned

private theorem s6Step167EntryG_distinct : (s6Step167EntryGRow.sign::s6Step167EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167EntryG_owned : (s6Step167EntryGRow.sign::s6Step167EntryGRow.payload).toFinset⊆s6Step167EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step167EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167EntryG_reserved : s6Step167EntryGBefore.reserve s6Step167EntryGFresh.toFinset=some s6Step167EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step167EntryGFresh,arenaWires]
  · norm_num [s6Step167EntryGBefore,s6Step167EntryFBefore,s6Step167EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step167EntryGBefore s6Step167EntryGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step167EntryGFresh rfl rfl
    · norm_num [s6Step167EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step167EntryG_checked : planRowResizeLog s6Step167EntryGBefore s6Step167EntryGRow 187 s6Step167EntryGFresh=
    some (s6Step167EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 818],777⟩,growRow 777 s6Step167EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step167EntryGBefore s6Step167EntryGAfter s6Step167EntryGRow 187 s6Step167EntryGFresh
    s6Step167EntryG_distinct s6Step167EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step167EntryG_reserved
  have rowEq : WindowRow.mk (s6Step167EntryGRow.payload++s6Step167EntryGFresh) s6Step167EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 818],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step167EntryGvBefore : Arena := s6Step167EntryGAfter

private theorem s6Step167EntryGv_Incoming : rowsOwned s6Step167EntryGvBefore [s6Step167EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step167EntryFRow,s6Step167EntryGRow,s6Step167EntryFvRow,s6Step167EntryGvRow] 3 s6Step167EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step167EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step167EntryGv_Outgoing : rowsOwned s6Step167EntryGvAfter [s6Step167EntryGvOut] :=
  hmrRows_owned_drop s6Step167EntryGvAfter [s6Step167EntryFOut,s6Step167EntryGOut,s6Step167EntryFvOut,s6Step167EntryGvOut] 3 s6Step167EntryBank_outgoingOwned

private theorem s6Step167EntryGv_distinct : (s6Step167EntryGvRow.sign::s6Step167EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167EntryGv_owned : (s6Step167EntryGvRow.sign::s6Step167EntryGvRow.payload).toFinset⊆s6Step167EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step167EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step167EntryGv_reserved : s6Step167EntryGvBefore.reserve s6Step167EntryGvFresh.toFinset=some s6Step167EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step167EntryGvFresh,arenaWires]
  · norm_num [s6Step167EntryGvBefore,s6Step167EntryGAfter,s6Step167EntryGvFresh,arenaWires]
  · simp only [s6Step167EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step167EntryGv_checked : planRowResizeLog s6Step167EntryGvBefore s6Step167EntryGvRow 98 s6Step167EntryGvFresh=
    some (s6Step167EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879],775⟩,growRow 775 s6Step167EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step167EntryGvBefore s6Step167EntryGvAfter s6Step167EntryGvRow 98 s6Step167EntryGvFresh
    s6Step167EntryGv_distinct s6Step167EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step167EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step167EntryGvRow.payload++s6Step167EntryGvFresh) s6Step167EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step167EntryBank_rows : planWindowRowsLog s6Step167EntryFBefore [(s6Step167EntryFRow,187),(s6Step167EntryGRow,187),(s6Step167EntryFvRow,98),(s6Step167EntryGvRow,98)] [s6Step167EntryFFresh,s6Step167EntryGFresh,s6Step167EntryFvFresh,s6Step167EntryGvFresh]=
    some (s6Step167EntryGvAfter,[s6Step167EntryFOut,s6Step167EntryGOut,s6Step167EntryFvOut,s6Step167EntryGvOut],(growRow 795 s6Step167EntryFFresh ++ (growRow 777 s6Step167EntryGFresh ++ (growRow 776 s6Step167EntryFvFresh ++ (growRow 775 s6Step167EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step167EntryGvAfter [] []=some (s6Step167EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step167EntryGvBefore s6Step167EntryGvAfter s6Step167EntryGvAfter
    s6Step167EntryGvRow s6Step167EntryGvOut 98 s6Step167EntryGvFresh [] [] []
    (growRow 775 s6Step167EntryGvFresh) ([]) s6Step167EntryGv_Incoming s6Step167EntryGv_checked h4 s6Step167EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step167EntryFvBefore s6Step167EntryFvAfter s6Step167EntryGvAfter
    s6Step167EntryFvRow s6Step167EntryFvOut 98 s6Step167EntryFvFresh [(s6Step167EntryGvRow,98)] [s6Step167EntryGvFresh] [s6Step167EntryGvOut]
    (growRow 776 s6Step167EntryFvFresh) ((growRow 775 s6Step167EntryGvFresh ++ [])) s6Step167EntryFv_Incoming s6Step167EntryFv_checked h3 s6Step167EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step167EntryGBefore s6Step167EntryGAfter s6Step167EntryGvAfter
    s6Step167EntryGRow s6Step167EntryGOut 187 s6Step167EntryGFresh [(s6Step167EntryFvRow,98),(s6Step167EntryGvRow,98)] [s6Step167EntryFvFresh,s6Step167EntryGvFresh] [s6Step167EntryFvOut,s6Step167EntryGvOut]
    (growRow 777 s6Step167EntryGFresh) ((growRow 776 s6Step167EntryFvFresh ++ (growRow 775 s6Step167EntryGvFresh ++ []))) s6Step167EntryG_Incoming s6Step167EntryG_checked h2 s6Step167EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step167EntryFBefore s6Step167EntryFAfter s6Step167EntryGvAfter
    s6Step167EntryFRow s6Step167EntryFOut 187 s6Step167EntryFFresh [(s6Step167EntryGRow,187),(s6Step167EntryFvRow,98),(s6Step167EntryGvRow,98)] [s6Step167EntryGFresh,s6Step167EntryFvFresh,s6Step167EntryGvFresh] [s6Step167EntryGOut,s6Step167EntryFvOut,s6Step167EntryGvOut]
    (growRow 795 s6Step167EntryFFresh) ((growRow 777 s6Step167EntryGFresh ++ (growRow 776 s6Step167EntryFvFresh ++ (growRow 775 s6Step167EntryGvFresh ++ [])))) s6Step167EntryF_Incoming s6Step167EntryF_checked h1 s6Step167EntryF_Outgoing
  exact h0

private theorem s6Step167EntryBank_checked : compileHmrBankResizeLog .entry s6Step167EntryFBefore ⟨s6Step167EntryFRow,s6Step167EntryGRow,s6Step167EntryFvRow,s6Step167EntryGvRow⟩ ⟨187,187,98,98⟩ [s6Step167EntryFFresh,s6Step167EntryGFresh,s6Step167EntryFvFresh,s6Step167EntryGvFresh]=
    some (s6Step167EntryGvAfter,⟨s6Step167EntryFOut,s6Step167EntryGOut,s6Step167EntryFvOut,s6Step167EntryGvOut⟩,(growRow 795 s6Step167EntryFFresh ++ (growRow 777 s6Step167EntryGFresh ++ (growRow 776 s6Step167EntryFvFresh ++ (growRow 775 s6Step167EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step167EntryBank_rows]
  rfl

private def s6Step167ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,185),(186,442),(443,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step167ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<185) ∨ (186≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167ExitFBefore : Arena := s6Step167ExitGAfter

private def s6Step167ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 857],795⟩

private def s6Step167ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863],776⟩

private def s6Step167ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 818, 876],777⟩

private def s6Step167ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 922],775⟩

private theorem s6Step167ExitBank_incomingDistinct : ([s6Step167ExitGRow,s6Step167ExitFRow,s6Step167ExitFvRow,s6Step167ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167ExitF_Incoming : rowsOwned s6Step167ExitFBefore [s6Step167ExitFRow,s6Step167ExitFvRow,s6Step167ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step167ExitGRow,s6Step167ExitFRow,s6Step167ExitFvRow,s6Step167ExitGvRow] 1 s6Step167ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step167ExitFBefore (fun q => (0≤q ∧ q<185) ∨ (186≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step167ExitBank_outgoingOwned : rowsOwned s6Step167ExitGvAfter [s6Step167ExitGOut,s6Step167ExitFOut,s6Step167ExitFvOut,s6Step167ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step167ExitGvAfter (fun q => ([(0,185),(186,442),(443,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step167ExitF_Outgoing : rowsOwned s6Step167ExitGvAfter [s6Step167ExitFOut,s6Step167ExitFvOut,s6Step167ExitGvOut] :=
  hmrRows_owned_drop s6Step167ExitGvAfter [s6Step167ExitGOut,s6Step167ExitFOut,s6Step167ExitFvOut,s6Step167ExitGvOut] 1 s6Step167ExitBank_outgoingOwned

private theorem s6Step167ExitF_distinct : (s6Step167ExitFRow.sign::s6Step167ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167ExitF_owned : (s6Step167ExitFRow.sign::s6Step167ExitFRow.payload).toFinset⊆s6Step167ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step167ExitFBefore (fun q => (0≤q ∧ q<185) ∨ (186≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167ExitF_retired : s6Step167ExitFBefore.retireSet s6Step167ExitFExtra.toFinset=s6Step167ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step167ExitFBefore s6Step167ExitFAfter s6Step167ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step167ExitFBefore s6Step167ExitFAfter (fun q => (0≤q ∧ q<185) ∨ (186≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,185),(186,442),(443,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step167ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step167ExitF_checked : planRowResizeLog s6Step167ExitFBefore s6Step167ExitFRow 186 []=
    some (s6Step167ExitFAfter,s6Step167ExitFOut,shrinkRow 795 s6Step167ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step167ExitFBefore s6Step167ExitFRow 186 s6Step167ExitF_distinct s6Step167ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step167ExitFRow.payload.take 186) s6Step167ExitFRow.sign=s6Step167ExitFOut := by decide +kernel
  have hi : s6Step167ExitFRow.payload.drop 186=s6Step167ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step167ExitF_retired] at result
  exact result

private def s6Step167ExitFvAfter : Arena := s6Step167ExitFAfter

private def s6Step167ExitFvBefore : Arena := s6Step167ExitFAfter

private theorem s6Step167ExitFv_Incoming : rowsOwned s6Step167ExitFvBefore [s6Step167ExitFvRow,s6Step167ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step167ExitGRow,s6Step167ExitFRow,s6Step167ExitFvRow,s6Step167ExitGvRow] 2 s6Step167ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step167ExitFvBefore (fun q => ([(0,185),(186,442),(443,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step167ExitFv_Outgoing : rowsOwned s6Step167ExitGvAfter [s6Step167ExitFvOut,s6Step167ExitGvOut] :=
  hmrRows_owned_drop s6Step167ExitGvAfter [s6Step167ExitGOut,s6Step167ExitFOut,s6Step167ExitFvOut,s6Step167ExitGvOut] 2 s6Step167ExitBank_outgoingOwned

private theorem s6Step167ExitFv_distinct : (s6Step167ExitFvRow.sign::s6Step167ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167ExitFv_owned : (s6Step167ExitFvRow.sign::s6Step167ExitFvRow.payload).toFinset⊆s6Step167ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step167ExitFvBefore (fun q => ([(0,185),(186,442),(443,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step167ExitFv_reserved : s6Step167ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step167ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step167ExitFv_checked : planRowResizeLog s6Step167ExitFvBefore s6Step167ExitFvRow 99 []=
    some (s6Step167ExitFvAfter,s6Step167ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step167ExitFvBefore s6Step167ExitFvAfter s6Step167ExitFvRow 99 []
    s6Step167ExitFv_distinct s6Step167ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step167ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step167ExitFvRow.payload++[]) s6Step167ExitFvRow.sign=s6Step167ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step167ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step167ExitG_Incoming : rowsOwned s6Step167ExitGBefore [s6Step167ExitGRow,s6Step167ExitFRow,s6Step167ExitFvRow,s6Step167ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step167ExitGRow,s6Step167ExitFRow,s6Step167ExitFvRow,s6Step167ExitGvRow] 0 s6Step167ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step167ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step167ExitG_Outgoing : rowsOwned s6Step167ExitGvAfter [s6Step167ExitGOut,s6Step167ExitFOut,s6Step167ExitFvOut,s6Step167ExitGvOut] :=
  hmrRows_owned_drop s6Step167ExitGvAfter [s6Step167ExitGOut,s6Step167ExitFOut,s6Step167ExitFvOut,s6Step167ExitGvOut] 0 s6Step167ExitBank_outgoingOwned

private theorem s6Step167ExitG_distinct : (s6Step167ExitGRow.sign::s6Step167ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167ExitG_owned : (s6Step167ExitGRow.sign::s6Step167ExitGRow.payload).toFinset⊆s6Step167ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step167ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167ExitG_retired : s6Step167ExitGBefore.retireSet s6Step167ExitGExtra.toFinset=s6Step167ExitGAfter := by
  unfold Arena.retireSet s6Step167ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step167ExitGBefore,s6Step167ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step167ExitG_checked : planRowResizeLog s6Step167ExitGBefore s6Step167ExitGRow 185 []=
    some (s6Step167ExitGAfter,s6Step167ExitGOut,shrinkRow 777 s6Step167ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step167ExitGBefore s6Step167ExitGRow 185 s6Step167ExitG_distinct s6Step167ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step167ExitGRow.payload.take 185) s6Step167ExitGRow.sign=s6Step167ExitGOut := by decide +kernel
  have hi : s6Step167ExitGRow.payload.drop 185=s6Step167ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step167ExitG_retired] at result
  exact result

private def s6Step167ExitGvBefore : Arena := s6Step167ExitFAfter

private theorem s6Step167ExitGv_Incoming : rowsOwned s6Step167ExitGvBefore [s6Step167ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step167ExitGRow,s6Step167ExitFRow,s6Step167ExitFvRow,s6Step167ExitGvRow] 3 s6Step167ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step167ExitGvBefore (fun q => ([(0,185),(186,442),(443,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step167ExitGv_Outgoing : rowsOwned s6Step167ExitGvAfter [s6Step167ExitGvOut] :=
  hmrRows_owned_drop s6Step167ExitGvAfter [s6Step167ExitGOut,s6Step167ExitFOut,s6Step167ExitFvOut,s6Step167ExitGvOut] 3 s6Step167ExitBank_outgoingOwned

private theorem s6Step167ExitGv_distinct : (s6Step167ExitGvRow.sign::s6Step167ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167ExitGv_owned : (s6Step167ExitGvRow.sign::s6Step167ExitGvRow.payload).toFinset⊆s6Step167ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step167ExitGvBefore (fun q => ([(0,185),(186,442),(443,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step167ExitGv_retired : s6Step167ExitGvBefore.retireSet s6Step167ExitGvExtra.toFinset=s6Step167ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step167ExitGvBefore s6Step167ExitGvAfter s6Step167ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step167ExitGvBefore s6Step167ExitGvAfter (fun q => ([(0,185),(186,442),(443,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,185),(186,442),(443,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step167ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step167ExitGv_checked : planRowResizeLog s6Step167ExitGvBefore s6Step167ExitGvRow 98 []=
    some (s6Step167ExitGvAfter,s6Step167ExitGvOut,shrinkRow 775 s6Step167ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step167ExitGvBefore s6Step167ExitGvRow 98 s6Step167ExitGv_distinct s6Step167ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step167ExitGvRow.payload.take 98) s6Step167ExitGvRow.sign=s6Step167ExitGvOut := by decide +kernel
  have hi : s6Step167ExitGvRow.payload.drop 98=s6Step167ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step167ExitGv_retired] at result
  exact result

private theorem s6Step167ExitBank_rows : planWindowRowsLog s6Step167ExitGBefore [(s6Step167ExitGRow,185),(s6Step167ExitFRow,186),(s6Step167ExitFvRow,99),(s6Step167ExitGvRow,98)] [[],[],[],[]]=
    some (s6Step167ExitGvAfter,[s6Step167ExitGOut,s6Step167ExitFOut,s6Step167ExitFvOut,s6Step167ExitGvOut],(shrinkRow 777 s6Step167ExitGExtra ++ (shrinkRow 795 s6Step167ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step167ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step167ExitGvAfter [] []=some (s6Step167ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step167ExitGvBefore s6Step167ExitGvAfter s6Step167ExitGvAfter
    s6Step167ExitGvRow s6Step167ExitGvOut 98 [] [] [] []
    (shrinkRow 775 s6Step167ExitGvExtra) ([]) s6Step167ExitGv_Incoming s6Step167ExitGv_checked h4 s6Step167ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step167ExitFvBefore s6Step167ExitFvAfter s6Step167ExitGvAfter
    s6Step167ExitFvRow s6Step167ExitFvOut 99 [] [(s6Step167ExitGvRow,98)] [[]] [s6Step167ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step167ExitGvExtra ++ [])) s6Step167ExitFv_Incoming s6Step167ExitFv_checked h3 s6Step167ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step167ExitFBefore s6Step167ExitFAfter s6Step167ExitGvAfter
    s6Step167ExitFRow s6Step167ExitFOut 186 [] [(s6Step167ExitFvRow,99),(s6Step167ExitGvRow,98)] [[],[]] [s6Step167ExitFvOut,s6Step167ExitGvOut]
    (shrinkRow 795 s6Step167ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step167ExitGvExtra ++ []))) s6Step167ExitF_Incoming s6Step167ExitF_checked h2 s6Step167ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step167ExitGBefore s6Step167ExitGAfter s6Step167ExitGvAfter
    s6Step167ExitGRow s6Step167ExitGOut 185 [] [(s6Step167ExitFRow,186),(s6Step167ExitFvRow,99),(s6Step167ExitGvRow,98)] [[],[],[]] [s6Step167ExitFOut,s6Step167ExitFvOut,s6Step167ExitGvOut]
    (shrinkRow 777 s6Step167ExitGExtra) ((shrinkRow 795 s6Step167ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step167ExitGvExtra ++ [])))) s6Step167ExitG_Incoming s6Step167ExitG_checked h1 s6Step167ExitG_Outgoing
  exact h0

private theorem s6Step167ExitBank_checked : compileHmrBankResizeLog .exit s6Step167ExitGBefore ⟨s6Step167ExitFRow,s6Step167ExitGRow,s6Step167ExitFvRow,s6Step167ExitGvRow⟩ ⟨186,185,99,98⟩ [[],[],[],[]]=
    some (s6Step167ExitGvAfter,⟨s6Step167ExitFOut,s6Step167ExitGOut,s6Step167ExitFvOut,s6Step167ExitGvOut⟩,(shrinkRow 777 s6Step167ExitGExtra ++ (shrinkRow 795 s6Step167ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step167ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step167ExitBank_rows]
  rfl

private theorem s6Step167Add0_apart : Disjoint s6Step167Add0Arena.live s6Step167Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step167Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167Add0_card : s6Step167Add0Arena.live.card=886 := by
  decide +kernel

private theorem s6Step167Add0_borrowed : s6Step167Add0Arena.checkBorrow (hmrHybridCount s6Step167Add0Arena s6Step167Add0B.length) s6Step167Add0Work=some s6Step167Add0During := by
  have len : s6Step167Add0Work.length=hmrHybridCount s6Step167Add0Arena s6Step167Add0B.length := by
    rw [hmrHybridCount,s6Step167Add0_card]
    decide +kernel
  have nd : s6Step167Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step167Add0Arena s6Step167Add0During s6Step167Add0Work.toFinset s6Step167Add0_bounded s6Step167Add0_apart rfl

private theorem s6Step167Add0_distinct : (891::890::903::(s6Step167Add0A++s6Step167Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167Add0_owned : (891::890::903::(s6Step167Add0A++s6Step167Add0B)).toFinset⊆s6Step167Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step167Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167Add0_checked : compileHmrHybridCinLog s6Step167Add0Arena 890 891 903 s6Step167Add0A s6Step167Add0B s6Step167Add0Work=some s6Step167Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step167Add0Arena s6Step167Add0During 890 891 903 s6Step167Add0A s6Step167Add0B s6Step167Add0Work
    (by decide +kernel) (by decide +kernel) s6Step167Add0_distinct
    (fun q hq => s6Step167Add0_owned (List.mem_toFinset.mpr hq)) s6Step167Add0_borrowed

private theorem s6Step167Add1_apart : Disjoint s6Step167Add1Arena.live s6Step167Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step167Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167Add1_card : s6Step167Add1Arena.live.card=886 := by
  decide +kernel

private theorem s6Step167Add1_borrowed : s6Step167Add1Arena.checkBorrow (hmrHybridCount s6Step167Add1Arena s6Step167Add1B.length) s6Step167Add1Work=some s6Step167Add1During := by
  have len : s6Step167Add1Work.length=hmrHybridCount s6Step167Add1Arena s6Step167Add1B.length := by
    rw [hmrHybridCount,s6Step167Add1_card]
    decide +kernel
  have nd : s6Step167Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step167Add1Arena s6Step167Add1During s6Step167Add1Work.toFinset s6Step167Add1_bounded s6Step167Add1_apart rfl

private theorem s6Step167Add1_distinct : (891::890::903::(s6Step167Add1A++s6Step167Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167Add1_owned : (891::890::903::(s6Step167Add1A++s6Step167Add1B)).toFinset⊆s6Step167Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step167Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167Add1_checked : compileHmrHybridCinLog s6Step167Add1Arena 890 891 903 s6Step167Add1A s6Step167Add1B s6Step167Add1Work=some s6Step167Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step167Add1Arena s6Step167Add1During 890 891 903 s6Step167Add1A s6Step167Add1B s6Step167Add1Work
    (by decide +kernel) (by decide +kernel) s6Step167Add1_distinct
    (fun q hq => s6Step167Add1_owned (List.mem_toFinset.mpr hq)) s6Step167Add1_borrowed

private theorem s6Step167F4_apart : Disjoint (s6Step167Add0A++s6Step167Add0B).toFinset (s6Step167Add1A++s6Step167Add1B).toFinset := by
  have nd : ((s6Step167Add0A++s6Step167Add0B)++(s6Step167Add1A++s6Step167Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step167F4_carry : s6Step167F4FlagArena.checkBorrow 1 [903]=some s6Step167Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step167F4FlagArena,s6Step167HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step167F4FlagArena,s6Step167HeadFvAfter,s6Step167Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step167F4_distinct : (805::890::891::903::((s6Step167Add0A++s6Step167Add1A)++(s6Step167Add0B++s6Step167Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167F4_flag : s6Step167HeadFvAfter.checkBorrow 1 [891]=some s6Step167F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step167HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step167F4_owned : (805::890::((s6Step167Add0A++s6Step167Add1A)++(s6Step167Add0B++s6Step167Add1B))).toFinset⊆s6Step167HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step167HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167F4_checked : compileHmrHybridF4Log s6Step167HeadFvAfter 805 890 s6Step167Add0A s6Step167Add0B s6Step167Add1A s6Step167Add1B [891] [903] s6Step167Add0Work s6Step167Add1Work=some s6Step167F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step167HeadFvAfter s6Step167F4FlagArena s6Step167Add0Arena s6Step167Add0During s6Step167Add1During 805 890
    s6Step167Add0A s6Step167Add0B s6Step167Add1A s6Step167Add1B [891] [903] s6Step167Add0Work s6Step167Add1Work
    (fun q hq => s6Step167F4_owned (List.mem_toFinset.mpr hq)) s6Step167F4_flag s6Step167F4_carry
    s6Step167F4_distinct s6Step167F4_apart s6Step167Add0_checked s6Step167Add1_checked

private theorem s6Step167Front_branch : s6Step167FrontSigmaArena.checkBorrow 1 [890]=some s6Step167HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step167FrontSigmaArena,s6Step167EntryGvAfter,s6Step167EntryGAfter,arenaWires]
  · change s6Step167HeadGBefore.live=(s6Step167EntryGvAfter.live∪{805})∪{890}
    apply hmrArena_union_pair_of_filter_check s6Step167EntryGvAfter s6Step167HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 805 890 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step167Front_entry : HmrFrontEntryValid s6Step167EntryFBefore s6Step167FrontBank 187 98 ⟨186,185,99,98⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step167FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step167EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step167EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step167FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step167Front_sigma : s6Step167EntryGvAfter.checkBorrow 1 [805]=some s6Step167FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step167EntryGvAfter,s6Step167EntryGAfter,arenaWires]
  · rfl

private def s6Step167HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167HeadFBefore : Arena := s6Step167HeadGAfter

private def s6Step167HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩

private def s6Step167HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩

private def s6Step167HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 818],777⟩

private def s6Step167HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879],775⟩

private theorem s6Step167HeadBank_incomingDistinct : ([s6Step167HeadGRow,s6Step167HeadFRow,s6Step167HeadGvRow,s6Step167HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167HeadF_Incoming : rowsOwned s6Step167HeadFBefore [s6Step167HeadFRow,s6Step167HeadGvRow,s6Step167HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step167HeadGRow,s6Step167HeadFRow,s6Step167HeadGvRow,s6Step167HeadFvRow] 1 s6Step167HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step167HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step167HeadBank_outgoingOwned : rowsOwned s6Step167HeadFvAfter [s6Step167HeadGOut,s6Step167HeadFOut,s6Step167HeadGvOut,s6Step167HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step167HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step167HeadF_Outgoing : rowsOwned s6Step167HeadFvAfter [s6Step167HeadFOut,s6Step167HeadGvOut,s6Step167HeadFvOut] :=
  hmrRows_owned_drop s6Step167HeadFvAfter [s6Step167HeadGOut,s6Step167HeadFOut,s6Step167HeadGvOut,s6Step167HeadFvOut] 1 s6Step167HeadBank_outgoingOwned

private theorem s6Step167HeadF_distinct : (s6Step167HeadFRow.sign::s6Step167HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167HeadF_owned : (s6Step167HeadFRow.sign::s6Step167HeadFRow.payload).toFinset⊆s6Step167HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step167HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167HeadF_reserved : s6Step167HeadFBefore.reserve s6Step167HeadFFresh.toFinset=some s6Step167HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step167HeadFFresh,arenaWires]
  · norm_num [s6Step167HeadFBefore,s6Step167HeadGAfter,s6Step167HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step167HeadFAfter,s6Step167HeadFBefore,s6Step167HeadGAfter,s6Step167HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step167HeadF_checked : planRowResizeLog s6Step167HeadFBefore s6Step167HeadFRow 188 s6Step167HeadFFresh=
    some (s6Step167HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 857],795⟩,growRow 795 s6Step167HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step167HeadFBefore s6Step167HeadFAfter s6Step167HeadFRow 188 s6Step167HeadFFresh
    s6Step167HeadF_distinct s6Step167HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step167HeadF_reserved
  have rowEq : WindowRow.mk (s6Step167HeadFRow.payload++s6Step167HeadFFresh) s6Step167HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 857],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step167HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step167HeadFvBefore : Arena := s6Step167HeadGvAfter

private theorem s6Step167HeadFv_Incoming : rowsOwned s6Step167HeadFvBefore [s6Step167HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step167HeadGRow,s6Step167HeadFRow,s6Step167HeadGvRow,s6Step167HeadFvRow] 3 s6Step167HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step167HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step167HeadFv_Outgoing : rowsOwned s6Step167HeadFvAfter [s6Step167HeadFvOut] :=
  hmrRows_owned_drop s6Step167HeadFvAfter [s6Step167HeadGOut,s6Step167HeadFOut,s6Step167HeadGvOut,s6Step167HeadFvOut] 3 s6Step167HeadBank_outgoingOwned

private theorem s6Step167HeadFv_distinct : (s6Step167HeadFvRow.sign::s6Step167HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167HeadFv_owned : (s6Step167HeadFvRow.sign::s6Step167HeadFvRow.payload).toFinset⊆s6Step167HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step167HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167HeadFv_reserved : s6Step167HeadFvBefore.reserve s6Step167HeadFvFresh.toFinset=some s6Step167HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step167HeadFvFresh,arenaWires]
  · norm_num [s6Step167HeadFvBefore,s6Step167HeadGvAfter,s6Step167HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step167HeadFvAfter,s6Step167HeadFvBefore,s6Step167HeadGvAfter,s6Step167HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step167HeadFv_checked : planRowResizeLog s6Step167HeadFvBefore s6Step167HeadFvRow 99 s6Step167HeadFvFresh=
    some (s6Step167HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863],776⟩,growRow 776 s6Step167HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step167HeadFvBefore s6Step167HeadFvAfter s6Step167HeadFvRow 99 s6Step167HeadFvFresh
    s6Step167HeadFv_distinct s6Step167HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step167HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step167HeadFvRow.payload++s6Step167HeadFvFresh) s6Step167HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step167HeadG_Incoming : rowsOwned s6Step167HeadGBefore [s6Step167HeadGRow,s6Step167HeadFRow,s6Step167HeadGvRow,s6Step167HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step167HeadGRow,s6Step167HeadFRow,s6Step167HeadGvRow,s6Step167HeadFvRow] 0 s6Step167HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step167HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step167HeadG_Outgoing : rowsOwned s6Step167HeadFvAfter [s6Step167HeadGOut,s6Step167HeadFOut,s6Step167HeadGvOut,s6Step167HeadFvOut] :=
  hmrRows_owned_drop s6Step167HeadFvAfter [s6Step167HeadGOut,s6Step167HeadFOut,s6Step167HeadGvOut,s6Step167HeadFvOut] 0 s6Step167HeadBank_outgoingOwned

private theorem s6Step167HeadG_distinct : (s6Step167HeadGRow.sign::s6Step167HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167HeadG_owned : (s6Step167HeadGRow.sign::s6Step167HeadGRow.payload).toFinset⊆s6Step167HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step167HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step167HeadG_reserved : s6Step167HeadGBefore.reserve s6Step167HeadGFresh.toFinset=some s6Step167HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step167HeadGFresh,arenaWires]
  · norm_num [s6Step167HeadGBefore,s6Step167HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step167HeadGBefore s6Step167HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step167HeadGFresh rfl rfl
    · norm_num [s6Step167HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step167HeadG_checked : planRowResizeLog s6Step167HeadGBefore s6Step167HeadGRow 188 s6Step167HeadGFresh=
    some (s6Step167HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 818, 876],777⟩,growRow 777 s6Step167HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step167HeadGBefore s6Step167HeadGAfter s6Step167HeadGRow 188 s6Step167HeadGFresh
    s6Step167HeadG_distinct s6Step167HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step167HeadG_reserved
  have rowEq : WindowRow.mk (s6Step167HeadGRow.payload++s6Step167HeadGFresh) s6Step167HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 818, 876],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step167HeadGvBefore : Arena := s6Step167HeadFAfter

private theorem s6Step167HeadGv_Incoming : rowsOwned s6Step167HeadGvBefore [s6Step167HeadGvRow,s6Step167HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step167HeadGRow,s6Step167HeadFRow,s6Step167HeadGvRow,s6Step167HeadFvRow] 2 s6Step167HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step167HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step167HeadGv_Outgoing : rowsOwned s6Step167HeadFvAfter [s6Step167HeadGvOut,s6Step167HeadFvOut] :=
  hmrRows_owned_drop s6Step167HeadFvAfter [s6Step167HeadGOut,s6Step167HeadFOut,s6Step167HeadGvOut,s6Step167HeadFvOut] 2 s6Step167HeadBank_outgoingOwned

private theorem s6Step167HeadGv_distinct : (s6Step167HeadGvRow.sign::s6Step167HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step167HeadGv_owned : (s6Step167HeadGvRow.sign::s6Step167HeadGvRow.payload).toFinset⊆s6Step167HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step167HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step167HeadGv_reserved : s6Step167HeadGvBefore.reserve s6Step167HeadGvFresh.toFinset=some s6Step167HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step167HeadGvFresh,arenaWires]
  · norm_num [s6Step167HeadGvBefore,s6Step167HeadFAfter,s6Step167HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step167HeadGvAfter,s6Step167HeadGvBefore,s6Step167HeadFAfter,s6Step167HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step167HeadGv_checked : planRowResizeLog s6Step167HeadGvBefore s6Step167HeadGvRow 99 s6Step167HeadGvFresh=
    some (s6Step167HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 922],775⟩,growRow 775 s6Step167HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step167HeadGvBefore s6Step167HeadGvAfter s6Step167HeadGvRow 99 s6Step167HeadGvFresh
    s6Step167HeadGv_distinct s6Step167HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step167HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step167HeadGvRow.payload++s6Step167HeadGvFresh) s6Step167HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 922],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step167HeadBank_rows : planWindowRowsLog s6Step167HeadGBefore [(s6Step167HeadGRow,188),(s6Step167HeadFRow,188),(s6Step167HeadGvRow,99),(s6Step167HeadFvRow,99)] [s6Step167HeadGFresh,s6Step167HeadFFresh,s6Step167HeadGvFresh,s6Step167HeadFvFresh]=
    some (s6Step167HeadFvAfter,[s6Step167HeadGOut,s6Step167HeadFOut,s6Step167HeadGvOut,s6Step167HeadFvOut],(growRow 777 s6Step167HeadGFresh ++ (growRow 795 s6Step167HeadFFresh ++ (growRow 775 s6Step167HeadGvFresh ++ (growRow 776 s6Step167HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step167HeadFvAfter [] []=some (s6Step167HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step167HeadFvBefore s6Step167HeadFvAfter s6Step167HeadFvAfter
    s6Step167HeadFvRow s6Step167HeadFvOut 99 s6Step167HeadFvFresh [] [] []
    (growRow 776 s6Step167HeadFvFresh) ([]) s6Step167HeadFv_Incoming s6Step167HeadFv_checked h4 s6Step167HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step167HeadGvBefore s6Step167HeadGvAfter s6Step167HeadFvAfter
    s6Step167HeadGvRow s6Step167HeadGvOut 99 s6Step167HeadGvFresh [(s6Step167HeadFvRow,99)] [s6Step167HeadFvFresh] [s6Step167HeadFvOut]
    (growRow 775 s6Step167HeadGvFresh) ((growRow 776 s6Step167HeadFvFresh ++ [])) s6Step167HeadGv_Incoming s6Step167HeadGv_checked h3 s6Step167HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step167HeadFBefore s6Step167HeadFAfter s6Step167HeadFvAfter
    s6Step167HeadFRow s6Step167HeadFOut 188 s6Step167HeadFFresh [(s6Step167HeadGvRow,99),(s6Step167HeadFvRow,99)] [s6Step167HeadGvFresh,s6Step167HeadFvFresh] [s6Step167HeadGvOut,s6Step167HeadFvOut]
    (growRow 795 s6Step167HeadFFresh) ((growRow 775 s6Step167HeadGvFresh ++ (growRow 776 s6Step167HeadFvFresh ++ []))) s6Step167HeadF_Incoming s6Step167HeadF_checked h2 s6Step167HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step167HeadGBefore s6Step167HeadGAfter s6Step167HeadFvAfter
    s6Step167HeadGRow s6Step167HeadGOut 188 s6Step167HeadGFresh [(s6Step167HeadFRow,188),(s6Step167HeadGvRow,99),(s6Step167HeadFvRow,99)] [s6Step167HeadFFresh,s6Step167HeadGvFresh,s6Step167HeadFvFresh] [s6Step167HeadFOut,s6Step167HeadGvOut,s6Step167HeadFvOut]
    (growRow 777 s6Step167HeadGFresh) ((growRow 795 s6Step167HeadFFresh ++ (growRow 775 s6Step167HeadGvFresh ++ (growRow 776 s6Step167HeadFvFresh ++ [])))) s6Step167HeadG_Incoming s6Step167HeadG_checked h1 s6Step167HeadG_Outgoing
  exact h0

private theorem s6Step167HeadBank_checked : compileHmrBankResizeLog .headroom s6Step167HeadGBefore ⟨s6Step167HeadFRow,s6Step167HeadGRow,s6Step167HeadFvRow,s6Step167HeadGvRow⟩ ⟨188,188,99,99⟩ [s6Step167HeadGFresh,s6Step167HeadFFresh,s6Step167HeadGvFresh,s6Step167HeadFvFresh]=
    some (s6Step167HeadFvAfter,⟨s6Step167HeadFOut,s6Step167HeadGOut,s6Step167HeadFvOut,s6Step167HeadGvOut⟩,(growRow 777 s6Step167HeadGFresh ++ (growRow 795 s6Step167HeadFFresh ++ (growRow 775 s6Step167HeadGvFresh ++ (growRow 776 s6Step167HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step167HeadBank_rows]
  rfl

private theorem s6Step167Front_checked : compileHmrSourceFrontLog s6Step167EntryFBefore s6Step167FrontBank 187 98 ⟨186,185,99,98⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step167FrontLog=some s6Step167FrontPlan := by
  have pairEq : s6Step167FrontPair=⟨s6Step167HeadFRow,s6Step167HeadGRow,s6Step167HeadFvRow,s6Step167HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step167FrontHead=⟨s6Step167ExitFRow,s6Step167ExitGRow,s6Step167ExitFvRow,s6Step167ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step167Add0A=s6Step167FrontHead.f.wires := by decide +kernel
  have gEq : s6Step167Add0B=s6Step167FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step167Add1A=s6Step167FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step167Add1B=s6Step167FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step167EntryFBefore s6Step167FrontBank 187 98 ⟨186,185,99,98⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step167FrontLog s6Step167FrontPlan
  · exact s6Step167Front_entry
  · exact s6Step167EntryBank_checked
  · exact s6Step167Front_sigma
  · rfl
  · exact s6Step167Front_branch
  · rfl
  · simpa only [s6Step167FrontPlan,pairEq] using s6Step167HeadBank_checked
  · simpa only [s6Step167FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step167F4_checked
  · exact s6Step167Counter_checked
  · rfl
  · simpa only [s6Step167FrontPlan,headEq] using s6Step167ExitBank_checked

private theorem s6Step167Complete_explicit_checked : compileHmrEarlyStepLog s6Step167EntryFBefore s6Step167FrontBank 187 98 ⟨186,185,99,98⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step167CompleteLog=some s6Step167CompletePlan := by
  let Q := s6Step167EarlyControlPlan
  have hq := s6Step167EarlyControl_plan_checked
  have fv1 : s6Step167CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step167CompleteOut.fv.payload[2]?.getD s6Step167CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step167CompleteOut.fv.payload[3]?.getD s6Step167CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step167CompleteOut.fv.payload[4]?.getD s6Step167CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step167EntryFBefore s6Step167EarlyControlArena s6Step167FrontBank 187 98 ⟨186,185,99,98⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step167CompleteLog s6Step167FrontPlan Q
    s6Step167Front_checked s6Step167Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step167Complete_owned s6Step167Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step167EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 805 s6Step167CompleteOut.fv.second (s6Step167CompleteOut.fv.payload[2]?.getD s6Step167CompleteOut.fv.sign) (s6Step167CompleteOut.fv.payload[3]?.getD s6Step167CompleteOut.fv.sign) (s6Step167CompleteOut.fv.payload[4]?.getD s6Step167CompleteOut.fv.sign) 890 42 s6Step167EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep167Arena : Arena := s6Step167EntryFBefore
def s6PrivateStep167Bank : WindowBank := s6Step167FrontBank
def s6PrivateStep167Spec : HmrSourceWalkStepLog := ⟨187,98,⟨186,185,99,98⟩,42,.early s6Step167CompleteLog⟩
def s6PrivateStep167Plan : HmrSourceStepPlan := .early s6Step167CompletePlan
theorem s6PrivateStep167_source : s6PrivateStep167Spec=s6ObservedLogs160[7] := rfl
theorem s6PrivateStep167_checked : compileHmrSourceStepLog s6PrivateStep167Arena s6PrivateStep167Bank
    s6PrivateStep167Spec.fgWidth s6PrivateStep167Spec.vWidth s6PrivateStep167Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 167 s6PrivateStep167Spec.need none s6PrivateStep167Spec.log=some s6PrivateStep167Plan := by
  change compileHmrSourceStepLog s6Step167EntryFBefore s6Step167FrontBank 187 98 ⟨186,185,99,98⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 167 42 none (.early s6Step167CompleteLog)=some (.early s6Step167CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 167<498)]
  rw [s6Step167Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
