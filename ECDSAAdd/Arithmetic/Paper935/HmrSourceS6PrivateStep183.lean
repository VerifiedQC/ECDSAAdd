import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep181
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

private def s6Step183CompleteMoves : List (Wire × Wire) := [(898,433)]

private def s6Step183EarlyControlLog : HmrEarlyControlLog := ⟨[898, 821, 803, 907, 830],[814],[880],[863, 890, 891, 903, 791, 825],[]⟩

private def s6Step183FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [814], [], [821]],[[880], [830], [803], [907]],[[], [], [], []]⟩,[796],[841],[863],[890],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[863, 890, 891, 903]⟩

private def s6Step183CompleteLog : HmrEarlyStepLog := ⟨s6Step183FrontLog,s6Step183CompleteMoves,s6Step183EarlyControlLog⟩

private def s6Step183ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432],795⟩

private def s6Step183ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865],776⟩

private def s6Step183ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],777⟩

private def s6Step183ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848],775⟩

private def s6Step183FrontOut : WindowBank := ⟨s6Step183ExitFOut,s6Step183ExitGOut,s6Step183ExitFvOut,s6Step183ExitGvOut⟩

private def s6Step183CompleteOut : WindowBank := s6Step183FrontOut.repacked s6Step183CompleteMoves

private def s6Step183EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step183EarlyControlPositiveArena,[814],s6Step183EarlyControlEqualityArena,[880],⟨⟨796,false⟩,[⟨⟨814,false⟩,880⟩]⟩⟩

private def s6Step183EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,898⟩,⟨⟨772,false⟩,821⟩,⟨⟨771,false⟩,803⟩,⟨⟨770,false⟩,907⟩,⟨⟨769,false⟩,830⟩]⟩

private def s6Step183EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step183EarlyControlZeroArena,s6Step183EarlyControlZeroPlan,s6Step183EarlyControlClassPlan,s6Step183EarlyControlFlagArena,s6Step183EarlyControlFittedArena,s6Step183EarlyControlHistoryArena,s6Step183EarlyControlSigmaArena,s6Step183EarlyControlOutputArena,s6Step183EarlyControlLog⟩

private def s6Step183CounterWork : List Wire := [863, 890, 891, 903]

private theorem s6Step183Counter_bounded : s6Step183CounterWork.toFinset⊆arenaWires := by norm_num [s6Step183CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step183HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183CounterDuring : Arena := ⟨s6Step183HeadFvAfter.live∪s6Step183CounterWork.toFinset,Finset.union_subset s6Step183HeadFvAfter.bounded s6Step183Counter_bounded⟩

private def s6Step183EntryFFresh : List Wire := []

private def s6Step183EntryFvFresh : List Wire := []

private def s6Step183EntryGFresh : List Wire := [814]

private def s6Step183EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183EntryGvFresh : List Wire := [821]

private def s6Step183ExitFExtra : List Wire := [433, 830]

private def s6Step183ExitFvExtra : List Wire := [907]

private def s6Step183ExitGExtra : List Wire := [814, 880]

private def s6Step183ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,433),(434,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step183ExitGvExtra : List Wire := [821, 803]

private def s6Step183Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183Add0Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step183Add0_bounded : s6Step183Add0Work.toFinset⊆arenaWires := by
  have h : s6Step183Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step183Add0During : Arena := ⟨s6Step183Add0Arena.live∪s6Step183Add0Work.toFinset,Finset.union_subset s6Step183Add0Arena.bounded s6Step183Add0_bounded⟩

private def s6Step183Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183Add1Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step183Add1_bounded : s6Step183Add1Work.toFinset⊆arenaWires := by
  have h : s6Step183Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step183Add1During : Arena := ⟨s6Step183Add1Arena.live∪s6Step183Add1Work.toFinset,Finset.union_subset s6Step183Add1Arena.bounded s6Step183Add1_bounded⟩

private def s6Step183F4FlagArena : Arena := ⟨s6Step183HeadFvAfter.live∪{863},Finset.union_subset s6Step183HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step183F4Plan : HmrHybridF4Plan := ⟨s6Step183F4FlagArena,[863],s6Step183Add0Arena,[890],s6Step183Add0During,s6Step183Add0Work,s6Step183Add1During,s6Step183Add1Work⟩

private def s6Step183HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 830],795⟩

private def s6Step183HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 907],776⟩

private def s6Step183HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 814, 880],777⟩

private def s6Step183HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 821, 803],775⟩

private def s6Step183FrontHead : WindowBank := ⟨s6Step183HeadFOut,s6Step183HeadGOut,s6Step183HeadFvOut,s6Step183HeadGvOut⟩

private def s6Step183EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433],795⟩

private def s6Step183EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865],776⟩

private def s6Step183EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 814],777⟩

private def s6Step183EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 821],775⟩

private def s6Step183FrontPair : WindowBank := ⟨s6Step183EntryFOut,s6Step183EntryGOut,s6Step183EntryFvOut,s6Step183EntryGvOut⟩

private def s6Step183FrontSigmaArena : Arena := ⟨s6Step183EntryGvAfter.live∪{796},Finset.union_subset s6Step183EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step183HeadFFresh : List Wire := [830]

private def s6Step183HeadFvFresh : List Wire := [907]

private def s6Step183HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183HeadGFresh : List Wire := [880]

private def s6Step183HeadGvFresh : List Wire := [803]

private def s6Step183FrontPlan : HmrSourceFront := ⟨s6Step183EntryGvAfter,s6Step183FrontPair,(growRow 795 s6Step183EntryFFresh ++ (growRow 777 s6Step183EntryGFresh ++ (growRow 776 s6Step183EntryFvFresh ++ (growRow 775 s6Step183EntryGvFresh ++ [])))),s6Step183FrontSigmaArena,[796],s6Step183HeadGBefore,[841],
  s6Step183HeadFvAfter,s6Step183FrontHead,(growRow 777 s6Step183HeadGFresh ++ (growRow 795 s6Step183HeadFFresh ++ (growRow 775 s6Step183HeadGvFresh ++ (growRow 776 s6Step183HeadFvFresh ++ [])))),s6Step183F4Plan,s6Step183CounterDuring,s6Step183CounterWork,s6Step183ExitGvAfter,s6Step183FrontOut,(shrinkRow 777 s6Step183ExitGExtra ++ (shrinkRow 795 s6Step183ExitFExtra ++ (shrinkRow 776 s6Step183ExitFvExtra ++ (shrinkRow 775 s6Step183ExitGvExtra ++ []))))⟩

private def s6Step183CompletePlan : HmrEarlyStepPlan := ⟨s6Step183FrontPlan,s6Step183EarlyControlArena,s6Step183EarlyControlPlan,s6Step183CompleteMoves⟩

private theorem s6Step183Complete_apart : List.Disjoint (s6Step183CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [796, 841, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] := by
  have nd : ((s6Step183CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[796, 841, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step183Complete_owned : (s6Step183CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step183EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step183EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step183CompleteRelocationMove0Borrowed : Arena := ⟨s6Step183ExitGvAfter.live∪{433},Finset.union_subset s6Step183ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step183CompleteRelocation_move0_owned : 898∈s6Step183ExitGvAfter.live := by norm_num [s6Step183ExitGvAfter,arenaWires]

private theorem s6Step183CompleteRelocation_move0_reserve : s6Step183ExitGvAfter.reserve {433}=some s6Step183CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step183ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step183CompleteRelocation_move0_retire : s6Step183CompleteRelocationMove0Borrowed.retireSet {898}=s6Step183EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step183CompleteRelocationMove0Borrowed s6Step183EarlyControlArena {898}
  change s6Step183EarlyControlArena.live=(s6Step183ExitGvAfter.live∪{433})\{898}
  apply hmrArena_update_of_filter_check s6Step183ExitGvAfter s6Step183EarlyControlArena (fun q => ([(0,433),(434,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) [433] [898] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step183CompleteRelocation_checked : s6Step183ExitGvAfter.checkRepack [(898,433)]=some s6Step183EarlyControlArena := by
  have tail1 : s6Step183EarlyControlArena.checkRepack []=some s6Step183EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step183ExitGvAfter s6Step183CompleteRelocationMove0Borrowed s6Step183EarlyControlArena s6Step183EarlyControlArena 898 433 []
    s6Step183CompleteRelocation_move0_owned s6Step183CompleteRelocation_move0_reserve s6Step183CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step183Complete_repack : s6Step183ExitGvAfter.checkRepack s6Step183CompleteMoves=some s6Step183EarlyControlArena := by
  simpa only [s6Step183CompleteMoves] using s6Step183CompleteRelocation_checked

private theorem s6Step183EarlyControl_branchOwned : ([841] : List Wire).toFinset⊆s6Step183EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step183EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183EarlyControl_branch : compileHmrBranchRetirement s6Step183EarlyControlSigmaArena 841=some s6Step183EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step183EarlyControl_branchOwned
  · ext q
    simp [s6Step183EarlyControlOutputArena,s6Step183EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step183EarlyControl_classEqualityBorrow : s6Step183EarlyControlPositiveArena.checkBorrow (([796, 814] : List Wire).length-1) s6Step183EarlyControlLog.classWork=some s6Step183EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step183EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step183EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step183EarlyControlEqualityArena,s6Step183EarlyControlPositiveArena,s6Step183EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step183EarlyControl_classEqualityOwned : ([796, 814] : List Wire).toFinset⊆s6Step183EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step183EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183EarlyControl_classEquality : compileHmrEqualityLog s6Step183EarlyControlPositiveArena [796, 814] 0 s6Step183EarlyControlLog.classWork=some (s6Step183EarlyControlEqualityArena,s6Step183EarlyControlLog.classWork,s6Step183EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step183EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step183EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step183EarlyControl_classOwned : ([769, 830, 796] : List Wire).toFinset⊆s6Step183EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step183EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183EarlyControl_positiveBorrow : s6Step183EarlyControlZeroArena.checkBorrow (1) s6Step183EarlyControlLog.positiveWork=some s6Step183EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step183EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step183EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step183EarlyControlPositiveArena,s6Step183EarlyControlZeroArena,s6Step183EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step183EarlyControl_class : compileHmrSourceClassLog s6Step183EarlyControlZeroArena false 769 s6Step183EarlyControlZeroPlan.top 0 796 s6Step183EarlyControlLog.positiveWork s6Step183EarlyControlLog.classWork=some s6Step183EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step183EarlyControlClassPlan s6Step183EarlyControlZeroArena false 769 s6Step183EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s6Step183EarlyControl_classOwned
  · exact s6Step183EarlyControl_positiveBorrow
  · exact s6Step183EarlyControl_classEquality

private theorem s6Step183EarlyControl_entryRecordOwned : ([841, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step183EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step183EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s6Step183EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step183EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183EarlyControl_fitBorrow : s6Step183EarlyControlFlagArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step183EarlyControlLog.recordFresh=some s6Step183EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step183EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step183EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step183EarlyControlFittedArena,s6Step183EarlyControlFlagArena,s6Step183EarlyControlLog,arenaWires]

private theorem s6Step183EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step183EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step183EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183EarlyControl_fit : compileHmrRecordGrowLog s6Step183EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step183EarlyControlLog.recordFresh=some s6Step183EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step183EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step183EarlyControl_fitBorrow

private theorem s6Step183EarlyControl_flagsBorrow : s6Step183EarlyControlEqualityArena.checkBorrow (6) s6Step183EarlyControlLog.flagWork=some s6Step183EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step183EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step183EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step183EarlyControlFlagArena,s6Step183EarlyControlEqualityArena,s6Step183EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step183EarlyControl_flagsOwned : ([880, 253, 252, 251] : List Wire).toFinset⊆s6Step183EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step183EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183EarlyControl_flags : compileHmrFlagsLog s6Step183EarlyControlClassPlan.equalityArena s6Step183EarlyControlClassPlan.equality.top 253 252 251 s6Step183EarlyControlLog.flagWork=some s6Step183EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step183EarlyControl_flagsOwned⟩
  · exact s6Step183EarlyControl_flagsBorrow

private theorem s6Step183EarlyControl_historyBorrow : s6Step183EarlyControlArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step183EarlyControlLog.recordFresh=some s6Step183EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step183EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step183EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step183EarlyControlHistoryArena,s6Step183EarlyControlArena,s6Step183EarlyControlLog,arenaWires]

private theorem s6Step183EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step183EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step183EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183EarlyControl_history : compileHmrRecordGrowLog s6Step183EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step183EarlyControlLog.recordFresh=some s6Step183EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step183EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step183EarlyControl_historyBorrow

private theorem s6Step183EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s6Step183EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step183EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s6Step183EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step183EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183EarlyControl_sigmaRelease : s6Step183EarlyControlHistoryArena.release {796} (fun _ => false)=some s6Step183EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step183EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step183EarlyControlSigmaArena,s6Step183EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step183EarlyControl_sigma : compileHmrSigmaDropLog s6Step183EarlyControlHistoryArena false 0 0 254 796 []=some s6Step183EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step183EarlyControl_sigmaOwned⟩
  · exact s6Step183EarlyControl_sigmaRelease

private theorem s6Step183EarlyControl_zeroBorrow : s6Step183EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step183EarlyControlLog.zeroWork=some s6Step183EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step183EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step183EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step183EarlyControlZeroArena,s6Step183EarlyControlArena,s6Step183EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step183EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step183EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step183EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183EarlyControl_zero : compileHmrEqualityLog s6Step183EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step183EarlyControlLog.zeroWork=some (s6Step183EarlyControlZeroArena,s6Step183EarlyControlLog.zeroWork,s6Step183EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step183EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step183EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step183EarlyControl_logged : s6Step183EarlyControlPlan.Logged s6Step183EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 796 254 253 252 251 841 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step183EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step183EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step183EarlyControl_zero
  · exact s6Step183EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step183EarlyControl_flags
  · exact s6Step183EarlyControl_fit
  · exact s6Step183EarlyControl_history
  · exact s6Step183EarlyControl_sigma
  · exact s6Step183EarlyControl_branch

private theorem s6Step183EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step183EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 796 254 253 252 251 841 43 s6Step183EarlyControlLog=some s6Step183EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step183EarlyControlPlan s6Step183EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 796 254 253 252 251 841 43 s6Step183EarlyControl_logged

private def s6Step183EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433],795⟩

private def s6Step183EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865],776⟩

private def s6Step183EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],777⟩

private def s6Step183EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848],775⟩

private def s6Step183FrontBank : WindowBank := ⟨s6Step183EntryFRow,s6Step183EntryGRow,s6Step183EntryFvRow,s6Step183EntryGvRow⟩

private def s6Step183Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 830, 795]

private def s6Step183Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 814, 880, 777]

private def s6Step183Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 907, 776]

private def s6Step183Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 821, 803, 775]

private theorem s6Step183Counter_apart : Disjoint s6Step183HeadFvAfter.live s6Step183CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step183HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183Counter_borrowed : s6Step183HeadFvAfter.checkBorrow 4 s6Step183CounterWork=some s6Step183CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step183HeadFvAfter s6Step183CounterDuring s6Step183CounterWork.toFinset s6Step183Counter_bounded s6Step183Counter_apart rfl

private theorem s6Step183Counter_owned : (796::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step183HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step183HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183Counter_checked : compileHmrCounterStepLog s6Step183HeadFvAfter true 796 [774, 773, 772, 771, 770, 769] s6Step183CounterWork=some s6Step183CounterDuring := by
  have owned : ∀q∈796::[774, 773, 772, 771, 770, 769],q∈s6Step183HeadFvAfter.live := fun q hq => s6Step183Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step183Counter_borrowed

private def s6Step183EntryFAfter : Arena := s6Step183EntryFBefore

private theorem s6Step183EntryBank_incomingDistinct : ([s6Step183EntryFRow,s6Step183EntryGRow,s6Step183EntryFvRow,s6Step183EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183EntryF_Incoming : rowsOwned s6Step183EntryFBefore [s6Step183EntryFRow,s6Step183EntryGRow,s6Step183EntryFvRow,s6Step183EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step183EntryFRow,s6Step183EntryGRow,s6Step183EntryFvRow,s6Step183EntryGvRow] 0 s6Step183EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step183EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step183EntryBank_outgoingOwned : rowsOwned s6Step183EntryGvAfter [s6Step183EntryFOut,s6Step183EntryGOut,s6Step183EntryFvOut,s6Step183EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step183EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step183EntryF_Outgoing : rowsOwned s6Step183EntryGvAfter [s6Step183EntryFOut,s6Step183EntryGOut,s6Step183EntryFvOut,s6Step183EntryGvOut] :=
  hmrRows_owned_drop s6Step183EntryGvAfter [s6Step183EntryFOut,s6Step183EntryGOut,s6Step183EntryFvOut,s6Step183EntryGvOut] 0 s6Step183EntryBank_outgoingOwned

private theorem s6Step183EntryF_distinct : (s6Step183EntryFRow.sign::s6Step183EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183EntryF_owned : (s6Step183EntryFRow.sign::s6Step183EntryFRow.payload).toFinset⊆s6Step183EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step183EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183EntryF_reserved : s6Step183EntryFBefore.reserve s6Step183EntryFFresh.toFinset=some s6Step183EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step183EntryFFresh,arenaWires]
  · norm_num [s6Step183EntryFBefore,s6Step183EntryFFresh,arenaWires]
  · simp only [s6Step183EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step183EntryF_checked : planRowResizeLog s6Step183EntryFBefore s6Step183EntryFRow 178 s6Step183EntryFFresh=
    some (s6Step183EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433],795⟩,growRow 795 s6Step183EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step183EntryFBefore s6Step183EntryFAfter s6Step183EntryFRow 178 s6Step183EntryFFresh
    s6Step183EntryF_distinct s6Step183EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step183EntryF_reserved
  have rowEq : WindowRow.mk (s6Step183EntryFRow.payload++s6Step183EntryFFresh) s6Step183EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step183EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183EntryFvAfter : Arena := s6Step183EntryGAfter

private def s6Step183EntryFvBefore : Arena := s6Step183EntryGAfter

private theorem s6Step183EntryFv_Incoming : rowsOwned s6Step183EntryFvBefore [s6Step183EntryFvRow,s6Step183EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step183EntryFRow,s6Step183EntryGRow,s6Step183EntryFvRow,s6Step183EntryGvRow] 2 s6Step183EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step183EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step183EntryFv_Outgoing : rowsOwned s6Step183EntryGvAfter [s6Step183EntryFvOut,s6Step183EntryGvOut] :=
  hmrRows_owned_drop s6Step183EntryGvAfter [s6Step183EntryFOut,s6Step183EntryGOut,s6Step183EntryFvOut,s6Step183EntryGvOut] 2 s6Step183EntryBank_outgoingOwned

private theorem s6Step183EntryFv_distinct : (s6Step183EntryFvRow.sign::s6Step183EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183EntryFv_owned : (s6Step183EntryFvRow.sign::s6Step183EntryFvRow.payload).toFinset⊆s6Step183EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step183EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183EntryFv_reserved : s6Step183EntryFvBefore.reserve s6Step183EntryFvFresh.toFinset=some s6Step183EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step183EntryFvFresh,arenaWires]
  · norm_num [s6Step183EntryFvBefore,s6Step183EntryGAfter,s6Step183EntryFvFresh,arenaWires]
  · simp only [s6Step183EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step183EntryFv_checked : planRowResizeLog s6Step183EntryFvBefore s6Step183EntryFvRow 106 s6Step183EntryFvFresh=
    some (s6Step183EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865],776⟩,growRow 776 s6Step183EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step183EntryFvBefore s6Step183EntryFvAfter s6Step183EntryFvRow 106 s6Step183EntryFvFresh
    s6Step183EntryFv_distinct s6Step183EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step183EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step183EntryFvRow.payload++s6Step183EntryFvFresh) s6Step183EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step183EntryGBefore : Arena := s6Step183EntryFBefore

private theorem s6Step183EntryG_Incoming : rowsOwned s6Step183EntryGBefore [s6Step183EntryGRow,s6Step183EntryFvRow,s6Step183EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step183EntryFRow,s6Step183EntryGRow,s6Step183EntryFvRow,s6Step183EntryGvRow] 1 s6Step183EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step183EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step183EntryG_Outgoing : rowsOwned s6Step183EntryGvAfter [s6Step183EntryGOut,s6Step183EntryFvOut,s6Step183EntryGvOut] :=
  hmrRows_owned_drop s6Step183EntryGvAfter [s6Step183EntryFOut,s6Step183EntryGOut,s6Step183EntryFvOut,s6Step183EntryGvOut] 1 s6Step183EntryBank_outgoingOwned

private theorem s6Step183EntryG_distinct : (s6Step183EntryGRow.sign::s6Step183EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183EntryG_owned : (s6Step183EntryGRow.sign::s6Step183EntryGRow.payload).toFinset⊆s6Step183EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step183EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183EntryG_reserved : s6Step183EntryGBefore.reserve s6Step183EntryGFresh.toFinset=some s6Step183EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step183EntryGFresh,arenaWires]
  · norm_num [s6Step183EntryGBefore,s6Step183EntryFBefore,s6Step183EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step183EntryGAfter,s6Step183EntryGBefore,s6Step183EntryFBefore,s6Step183EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step183EntryG_checked : planRowResizeLog s6Step183EntryGBefore s6Step183EntryGRow 178 s6Step183EntryGFresh=
    some (s6Step183EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 814],777⟩,growRow 777 s6Step183EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step183EntryGBefore s6Step183EntryGAfter s6Step183EntryGRow 178 s6Step183EntryGFresh
    s6Step183EntryG_distinct s6Step183EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step183EntryG_reserved
  have rowEq : WindowRow.mk (s6Step183EntryGRow.payload++s6Step183EntryGFresh) s6Step183EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 814],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step183EntryGvBefore : Arena := s6Step183EntryGAfter

private theorem s6Step183EntryGv_Incoming : rowsOwned s6Step183EntryGvBefore [s6Step183EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step183EntryFRow,s6Step183EntryGRow,s6Step183EntryFvRow,s6Step183EntryGvRow] 3 s6Step183EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step183EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step183EntryGv_Outgoing : rowsOwned s6Step183EntryGvAfter [s6Step183EntryGvOut] :=
  hmrRows_owned_drop s6Step183EntryGvAfter [s6Step183EntryFOut,s6Step183EntryGOut,s6Step183EntryFvOut,s6Step183EntryGvOut] 3 s6Step183EntryBank_outgoingOwned

private theorem s6Step183EntryGv_distinct : (s6Step183EntryGvRow.sign::s6Step183EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183EntryGv_owned : (s6Step183EntryGvRow.sign::s6Step183EntryGvRow.payload).toFinset⊆s6Step183EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step183EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183EntryGv_reserved : s6Step183EntryGvBefore.reserve s6Step183EntryGvFresh.toFinset=some s6Step183EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step183EntryGvFresh,arenaWires]
  · norm_num [s6Step183EntryGvBefore,s6Step183EntryGAfter,s6Step183EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step183EntryGvAfter,s6Step183EntryGvBefore,s6Step183EntryGAfter,s6Step183EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step183EntryGv_checked : planRowResizeLog s6Step183EntryGvBefore s6Step183EntryGvRow 106 s6Step183EntryGvFresh=
    some (s6Step183EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 821],775⟩,growRow 775 s6Step183EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step183EntryGvBefore s6Step183EntryGvAfter s6Step183EntryGvRow 106 s6Step183EntryGvFresh
    s6Step183EntryGv_distinct s6Step183EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step183EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step183EntryGvRow.payload++s6Step183EntryGvFresh) s6Step183EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 821],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step183EntryBank_rows : planWindowRowsLog s6Step183EntryFBefore [(s6Step183EntryFRow,178),(s6Step183EntryGRow,178),(s6Step183EntryFvRow,106),(s6Step183EntryGvRow,106)] [s6Step183EntryFFresh,s6Step183EntryGFresh,s6Step183EntryFvFresh,s6Step183EntryGvFresh]=
    some (s6Step183EntryGvAfter,[s6Step183EntryFOut,s6Step183EntryGOut,s6Step183EntryFvOut,s6Step183EntryGvOut],(growRow 795 s6Step183EntryFFresh ++ (growRow 777 s6Step183EntryGFresh ++ (growRow 776 s6Step183EntryFvFresh ++ (growRow 775 s6Step183EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step183EntryGvAfter [] []=some (s6Step183EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step183EntryGvBefore s6Step183EntryGvAfter s6Step183EntryGvAfter
    s6Step183EntryGvRow s6Step183EntryGvOut 106 s6Step183EntryGvFresh [] [] []
    (growRow 775 s6Step183EntryGvFresh) ([]) s6Step183EntryGv_Incoming s6Step183EntryGv_checked h4 s6Step183EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step183EntryFvBefore s6Step183EntryFvAfter s6Step183EntryGvAfter
    s6Step183EntryFvRow s6Step183EntryFvOut 106 s6Step183EntryFvFresh [(s6Step183EntryGvRow,106)] [s6Step183EntryGvFresh] [s6Step183EntryGvOut]
    (growRow 776 s6Step183EntryFvFresh) ((growRow 775 s6Step183EntryGvFresh ++ [])) s6Step183EntryFv_Incoming s6Step183EntryFv_checked h3 s6Step183EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step183EntryGBefore s6Step183EntryGAfter s6Step183EntryGvAfter
    s6Step183EntryGRow s6Step183EntryGOut 178 s6Step183EntryGFresh [(s6Step183EntryFvRow,106),(s6Step183EntryGvRow,106)] [s6Step183EntryFvFresh,s6Step183EntryGvFresh] [s6Step183EntryFvOut,s6Step183EntryGvOut]
    (growRow 777 s6Step183EntryGFresh) ((growRow 776 s6Step183EntryFvFresh ++ (growRow 775 s6Step183EntryGvFresh ++ []))) s6Step183EntryG_Incoming s6Step183EntryG_checked h2 s6Step183EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step183EntryFBefore s6Step183EntryFAfter s6Step183EntryGvAfter
    s6Step183EntryFRow s6Step183EntryFOut 178 s6Step183EntryFFresh [(s6Step183EntryGRow,178),(s6Step183EntryFvRow,106),(s6Step183EntryGvRow,106)] [s6Step183EntryGFresh,s6Step183EntryFvFresh,s6Step183EntryGvFresh] [s6Step183EntryGOut,s6Step183EntryFvOut,s6Step183EntryGvOut]
    (growRow 795 s6Step183EntryFFresh) ((growRow 777 s6Step183EntryGFresh ++ (growRow 776 s6Step183EntryFvFresh ++ (growRow 775 s6Step183EntryGvFresh ++ [])))) s6Step183EntryF_Incoming s6Step183EntryF_checked h1 s6Step183EntryF_Outgoing
  exact h0

private theorem s6Step183EntryBank_checked : compileHmrBankResizeLog .entry s6Step183EntryFBefore ⟨s6Step183EntryFRow,s6Step183EntryGRow,s6Step183EntryFvRow,s6Step183EntryGvRow⟩ ⟨178,178,106,106⟩ [s6Step183EntryFFresh,s6Step183EntryGFresh,s6Step183EntryFvFresh,s6Step183EntryGvFresh]=
    some (s6Step183EntryGvAfter,⟨s6Step183EntryFOut,s6Step183EntryGOut,s6Step183EntryFvOut,s6Step183EntryGvOut⟩,(growRow 795 s6Step183EntryFFresh ++ (growRow 777 s6Step183EntryGFresh ++ (growRow 776 s6Step183EntryFvFresh ++ (growRow 775 s6Step183EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step183EntryBank_rows]
  rfl

private def s6Step183ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,433),(434,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step183ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183ExitFBefore : Arena := s6Step183ExitGAfter

private def s6Step183ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 830],795⟩

private def s6Step183ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 907],776⟩

private def s6Step183ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 814, 880],777⟩

private def s6Step183ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 821, 803],775⟩

private theorem s6Step183ExitBank_incomingDistinct : ([s6Step183ExitGRow,s6Step183ExitFRow,s6Step183ExitFvRow,s6Step183ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183ExitF_Incoming : rowsOwned s6Step183ExitFBefore [s6Step183ExitFRow,s6Step183ExitFvRow,s6Step183ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step183ExitGRow,s6Step183ExitFRow,s6Step183ExitFvRow,s6Step183ExitGvRow] 1 s6Step183ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step183ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step183ExitBank_outgoingOwned : rowsOwned s6Step183ExitGvAfter [s6Step183ExitGOut,s6Step183ExitFOut,s6Step183ExitFvOut,s6Step183ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step183ExitGvAfter (fun q => ([(0,433),(434,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step183ExitF_Outgoing : rowsOwned s6Step183ExitGvAfter [s6Step183ExitFOut,s6Step183ExitFvOut,s6Step183ExitGvOut] :=
  hmrRows_owned_drop s6Step183ExitGvAfter [s6Step183ExitGOut,s6Step183ExitFOut,s6Step183ExitFvOut,s6Step183ExitGvOut] 1 s6Step183ExitBank_outgoingOwned

private theorem s6Step183ExitF_distinct : (s6Step183ExitFRow.sign::s6Step183ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183ExitF_owned : (s6Step183ExitFRow.sign::s6Step183ExitFRow.payload).toFinset⊆s6Step183ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step183ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183ExitF_retired : s6Step183ExitFBefore.retireSet s6Step183ExitFExtra.toFinset=s6Step183ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step183ExitFBefore s6Step183ExitFAfter s6Step183ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step183ExitFBefore s6Step183ExitFAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,433),(434,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step183ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step183ExitF_checked : planRowResizeLog s6Step183ExitFBefore s6Step183ExitFRow 177 []=
    some (s6Step183ExitFAfter,s6Step183ExitFOut,shrinkRow 795 s6Step183ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step183ExitFBefore s6Step183ExitFRow 177 s6Step183ExitF_distinct s6Step183ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step183ExitFRow.payload.take 177) s6Step183ExitFRow.sign=s6Step183ExitFOut := by decide +kernel
  have hi : s6Step183ExitFRow.payload.drop 177=s6Step183ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step183ExitF_retired] at result
  exact result

private def s6Step183ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,433),(434,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step183ExitFvBefore : Arena := s6Step183ExitFAfter

private theorem s6Step183ExitFv_Incoming : rowsOwned s6Step183ExitFvBefore [s6Step183ExitFvRow,s6Step183ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step183ExitGRow,s6Step183ExitFRow,s6Step183ExitFvRow,s6Step183ExitGvRow] 2 s6Step183ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step183ExitFvBefore (fun q => ([(0,433),(434,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step183ExitFv_Outgoing : rowsOwned s6Step183ExitGvAfter [s6Step183ExitFvOut,s6Step183ExitGvOut] :=
  hmrRows_owned_drop s6Step183ExitGvAfter [s6Step183ExitGOut,s6Step183ExitFOut,s6Step183ExitFvOut,s6Step183ExitGvOut] 2 s6Step183ExitBank_outgoingOwned

private theorem s6Step183ExitFv_distinct : (s6Step183ExitFvRow.sign::s6Step183ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183ExitFv_owned : (s6Step183ExitFvRow.sign::s6Step183ExitFvRow.payload).toFinset⊆s6Step183ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step183ExitFvBefore (fun q => ([(0,433),(434,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step183ExitFv_retired : s6Step183ExitFvBefore.retireSet s6Step183ExitFvExtra.toFinset=s6Step183ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step183ExitFvBefore s6Step183ExitFvAfter s6Step183ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step183ExitFvBefore s6Step183ExitFvAfter (fun q => ([(0,433),(434,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,433),(434,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step183ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step183ExitFv_checked : planRowResizeLog s6Step183ExitFvBefore s6Step183ExitFvRow 106 []=
    some (s6Step183ExitFvAfter,s6Step183ExitFvOut,shrinkRow 776 s6Step183ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step183ExitFvBefore s6Step183ExitFvRow 106 s6Step183ExitFv_distinct s6Step183ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step183ExitFvRow.payload.take 106) s6Step183ExitFvRow.sign=s6Step183ExitFvOut := by decide +kernel
  have hi : s6Step183ExitFvRow.payload.drop 106=s6Step183ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step183ExitFv_retired] at result
  exact result

private def s6Step183ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step183ExitG_Incoming : rowsOwned s6Step183ExitGBefore [s6Step183ExitGRow,s6Step183ExitFRow,s6Step183ExitFvRow,s6Step183ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step183ExitGRow,s6Step183ExitFRow,s6Step183ExitFvRow,s6Step183ExitGvRow] 0 s6Step183ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step183ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step183ExitG_Outgoing : rowsOwned s6Step183ExitGvAfter [s6Step183ExitGOut,s6Step183ExitFOut,s6Step183ExitFvOut,s6Step183ExitGvOut] :=
  hmrRows_owned_drop s6Step183ExitGvAfter [s6Step183ExitGOut,s6Step183ExitFOut,s6Step183ExitFvOut,s6Step183ExitGvOut] 0 s6Step183ExitBank_outgoingOwned

private theorem s6Step183ExitG_distinct : (s6Step183ExitGRow.sign::s6Step183ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183ExitG_owned : (s6Step183ExitGRow.sign::s6Step183ExitGRow.payload).toFinset⊆s6Step183ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step183ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183ExitG_retired : s6Step183ExitGBefore.retireSet s6Step183ExitGExtra.toFinset=s6Step183ExitGAfter := by
  unfold Arena.retireSet s6Step183ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step183ExitGBefore,s6Step183ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step183ExitG_checked : planRowResizeLog s6Step183ExitGBefore s6Step183ExitGRow 177 []=
    some (s6Step183ExitGAfter,s6Step183ExitGOut,shrinkRow 777 s6Step183ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step183ExitGBefore s6Step183ExitGRow 177 s6Step183ExitG_distinct s6Step183ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step183ExitGRow.payload.take 177) s6Step183ExitGRow.sign=s6Step183ExitGOut := by decide +kernel
  have hi : s6Step183ExitGRow.payload.drop 177=s6Step183ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step183ExitG_retired] at result
  exact result

private def s6Step183ExitGvBefore : Arena := s6Step183ExitFvAfter

private theorem s6Step183ExitGv_Incoming : rowsOwned s6Step183ExitGvBefore [s6Step183ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step183ExitGRow,s6Step183ExitFRow,s6Step183ExitFvRow,s6Step183ExitGvRow] 3 s6Step183ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step183ExitGvBefore (fun q => ([(0,433),(434,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step183ExitGv_Outgoing : rowsOwned s6Step183ExitGvAfter [s6Step183ExitGvOut] :=
  hmrRows_owned_drop s6Step183ExitGvAfter [s6Step183ExitGOut,s6Step183ExitFOut,s6Step183ExitFvOut,s6Step183ExitGvOut] 3 s6Step183ExitBank_outgoingOwned

private theorem s6Step183ExitGv_distinct : (s6Step183ExitGvRow.sign::s6Step183ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183ExitGv_owned : (s6Step183ExitGvRow.sign::s6Step183ExitGvRow.payload).toFinset⊆s6Step183ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step183ExitGvBefore (fun q => ([(0,433),(434,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step183ExitGv_retired : s6Step183ExitGvBefore.retireSet s6Step183ExitGvExtra.toFinset=s6Step183ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step183ExitGvBefore s6Step183ExitGvAfter s6Step183ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step183ExitGvBefore s6Step183ExitGvAfter (fun q => ([(0,433),(434,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,433),(434,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step183ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step183ExitGv_checked : planRowResizeLog s6Step183ExitGvBefore s6Step183ExitGvRow 105 []=
    some (s6Step183ExitGvAfter,s6Step183ExitGvOut,shrinkRow 775 s6Step183ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step183ExitGvBefore s6Step183ExitGvRow 105 s6Step183ExitGv_distinct s6Step183ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step183ExitGvRow.payload.take 105) s6Step183ExitGvRow.sign=s6Step183ExitGvOut := by decide +kernel
  have hi : s6Step183ExitGvRow.payload.drop 105=s6Step183ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step183ExitGv_retired] at result
  exact result

private theorem s6Step183ExitBank_rows : planWindowRowsLog s6Step183ExitGBefore [(s6Step183ExitGRow,177),(s6Step183ExitFRow,177),(s6Step183ExitFvRow,106),(s6Step183ExitGvRow,105)] [[],[],[],[]]=
    some (s6Step183ExitGvAfter,[s6Step183ExitGOut,s6Step183ExitFOut,s6Step183ExitFvOut,s6Step183ExitGvOut],(shrinkRow 777 s6Step183ExitGExtra ++ (shrinkRow 795 s6Step183ExitFExtra ++ (shrinkRow 776 s6Step183ExitFvExtra ++ (shrinkRow 775 s6Step183ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step183ExitGvAfter [] []=some (s6Step183ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step183ExitGvBefore s6Step183ExitGvAfter s6Step183ExitGvAfter
    s6Step183ExitGvRow s6Step183ExitGvOut 105 [] [] [] []
    (shrinkRow 775 s6Step183ExitGvExtra) ([]) s6Step183ExitGv_Incoming s6Step183ExitGv_checked h4 s6Step183ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step183ExitFvBefore s6Step183ExitFvAfter s6Step183ExitGvAfter
    s6Step183ExitFvRow s6Step183ExitFvOut 106 [] [(s6Step183ExitGvRow,105)] [[]] [s6Step183ExitGvOut]
    (shrinkRow 776 s6Step183ExitFvExtra) ((shrinkRow 775 s6Step183ExitGvExtra ++ [])) s6Step183ExitFv_Incoming s6Step183ExitFv_checked h3 s6Step183ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step183ExitFBefore s6Step183ExitFAfter s6Step183ExitGvAfter
    s6Step183ExitFRow s6Step183ExitFOut 177 [] [(s6Step183ExitFvRow,106),(s6Step183ExitGvRow,105)] [[],[]] [s6Step183ExitFvOut,s6Step183ExitGvOut]
    (shrinkRow 795 s6Step183ExitFExtra) ((shrinkRow 776 s6Step183ExitFvExtra ++ (shrinkRow 775 s6Step183ExitGvExtra ++ []))) s6Step183ExitF_Incoming s6Step183ExitF_checked h2 s6Step183ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step183ExitGBefore s6Step183ExitGAfter s6Step183ExitGvAfter
    s6Step183ExitGRow s6Step183ExitGOut 177 [] [(s6Step183ExitFRow,177),(s6Step183ExitFvRow,106),(s6Step183ExitGvRow,105)] [[],[],[]] [s6Step183ExitFOut,s6Step183ExitFvOut,s6Step183ExitGvOut]
    (shrinkRow 777 s6Step183ExitGExtra) ((shrinkRow 795 s6Step183ExitFExtra ++ (shrinkRow 776 s6Step183ExitFvExtra ++ (shrinkRow 775 s6Step183ExitGvExtra ++ [])))) s6Step183ExitG_Incoming s6Step183ExitG_checked h1 s6Step183ExitG_Outgoing
  exact h0

private theorem s6Step183ExitBank_checked : compileHmrBankResizeLog .exit s6Step183ExitGBefore ⟨s6Step183ExitFRow,s6Step183ExitGRow,s6Step183ExitFvRow,s6Step183ExitGvRow⟩ ⟨177,177,106,105⟩ [[],[],[],[]]=
    some (s6Step183ExitGvAfter,⟨s6Step183ExitFOut,s6Step183ExitGOut,s6Step183ExitFvOut,s6Step183ExitGvOut⟩,(shrinkRow 777 s6Step183ExitGExtra ++ (shrinkRow 795 s6Step183ExitFExtra ++ (shrinkRow 776 s6Step183ExitFvExtra ++ (shrinkRow 775 s6Step183ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step183ExitBank_rows]
  rfl

private theorem s6Step183Add0_apart : Disjoint s6Step183Add0Arena.live s6Step183Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step183Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183Add0_card : s6Step183Add0Arena.live.card=885 := by
  decide +kernel

private theorem s6Step183Add0_borrowed : s6Step183Add0Arena.checkBorrow (hmrHybridCount s6Step183Add0Arena s6Step183Add0B.length) s6Step183Add0Work=some s6Step183Add0During := by
  have len : s6Step183Add0Work.length=hmrHybridCount s6Step183Add0Arena s6Step183Add0B.length := by
    rw [hmrHybridCount,s6Step183Add0_card]
    decide +kernel
  have nd : s6Step183Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step183Add0Arena s6Step183Add0During s6Step183Add0Work.toFinset s6Step183Add0_bounded s6Step183Add0_apart rfl

private theorem s6Step183Add0_distinct : (863::841::890::(s6Step183Add0A++s6Step183Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183Add0_owned : (863::841::890::(s6Step183Add0A++s6Step183Add0B)).toFinset⊆s6Step183Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step183Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183Add0_checked : compileHmrHybridCinLog s6Step183Add0Arena 841 863 890 s6Step183Add0A s6Step183Add0B s6Step183Add0Work=some s6Step183Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step183Add0Arena s6Step183Add0During 841 863 890 s6Step183Add0A s6Step183Add0B s6Step183Add0Work
    (by decide +kernel) (by decide +kernel) s6Step183Add0_distinct
    (fun q hq => s6Step183Add0_owned (List.mem_toFinset.mpr hq)) s6Step183Add0_borrowed

private theorem s6Step183Add1_apart : Disjoint s6Step183Add1Arena.live s6Step183Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step183Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183Add1_card : s6Step183Add1Arena.live.card=885 := by
  decide +kernel

private theorem s6Step183Add1_borrowed : s6Step183Add1Arena.checkBorrow (hmrHybridCount s6Step183Add1Arena s6Step183Add1B.length) s6Step183Add1Work=some s6Step183Add1During := by
  have len : s6Step183Add1Work.length=hmrHybridCount s6Step183Add1Arena s6Step183Add1B.length := by
    rw [hmrHybridCount,s6Step183Add1_card]
    decide +kernel
  have nd : s6Step183Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step183Add1Arena s6Step183Add1During s6Step183Add1Work.toFinset s6Step183Add1_bounded s6Step183Add1_apart rfl

private theorem s6Step183Add1_distinct : (863::841::890::(s6Step183Add1A++s6Step183Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183Add1_owned : (863::841::890::(s6Step183Add1A++s6Step183Add1B)).toFinset⊆s6Step183Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step183Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183Add1_checked : compileHmrHybridCinLog s6Step183Add1Arena 841 863 890 s6Step183Add1A s6Step183Add1B s6Step183Add1Work=some s6Step183Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step183Add1Arena s6Step183Add1During 841 863 890 s6Step183Add1A s6Step183Add1B s6Step183Add1Work
    (by decide +kernel) (by decide +kernel) s6Step183Add1_distinct
    (fun q hq => s6Step183Add1_owned (List.mem_toFinset.mpr hq)) s6Step183Add1_borrowed

private theorem s6Step183F4_apart : Disjoint (s6Step183Add0A++s6Step183Add0B).toFinset (s6Step183Add1A++s6Step183Add1B).toFinset := by
  have nd : ((s6Step183Add0A++s6Step183Add0B)++(s6Step183Add1A++s6Step183Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step183F4_carry : s6Step183F4FlagArena.checkBorrow 1 [890]=some s6Step183Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step183F4FlagArena,s6Step183HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step183F4FlagArena,s6Step183HeadFvAfter,s6Step183Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step183F4_distinct : (796::841::863::890::((s6Step183Add0A++s6Step183Add1A)++(s6Step183Add0B++s6Step183Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183F4_flag : s6Step183HeadFvAfter.checkBorrow 1 [863]=some s6Step183F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step183HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step183F4_owned : (796::841::((s6Step183Add0A++s6Step183Add1A)++(s6Step183Add0B++s6Step183Add1B))).toFinset⊆s6Step183HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step183HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183F4_checked : compileHmrHybridF4Log s6Step183HeadFvAfter 796 841 s6Step183Add0A s6Step183Add0B s6Step183Add1A s6Step183Add1B [863] [890] s6Step183Add0Work s6Step183Add1Work=some s6Step183F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step183HeadFvAfter s6Step183F4FlagArena s6Step183Add0Arena s6Step183Add0During s6Step183Add1During 796 841
    s6Step183Add0A s6Step183Add0B s6Step183Add1A s6Step183Add1B [863] [890] s6Step183Add0Work s6Step183Add1Work
    (fun q hq => s6Step183F4_owned (List.mem_toFinset.mpr hq)) s6Step183F4_flag s6Step183F4_carry
    s6Step183F4_distinct s6Step183F4_apart s6Step183Add0_checked s6Step183Add1_checked

private theorem s6Step183Front_branch : s6Step183FrontSigmaArena.checkBorrow 1 [841]=some s6Step183HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step183FrontSigmaArena,s6Step183EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step183FrontSigmaArena,s6Step183EntryGvAfter,s6Step183HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step183Front_entry : HmrFrontEntryValid s6Step183EntryFBefore s6Step183FrontBank 178 106 ⟨177,177,106,105⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step183FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step183EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step183EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step183FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step183Front_sigma : s6Step183EntryGvAfter.checkBorrow 1 [796]=some s6Step183FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step183EntryGvAfter,arenaWires]
  · rfl

private def s6Step183HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183HeadFBefore : Arena := s6Step183HeadGAfter

private def s6Step183HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433],795⟩

private def s6Step183HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865],776⟩

private def s6Step183HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 814],777⟩

private def s6Step183HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 821],775⟩

private theorem s6Step183HeadBank_incomingDistinct : ([s6Step183HeadGRow,s6Step183HeadFRow,s6Step183HeadGvRow,s6Step183HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183HeadF_Incoming : rowsOwned s6Step183HeadFBefore [s6Step183HeadFRow,s6Step183HeadGvRow,s6Step183HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step183HeadGRow,s6Step183HeadFRow,s6Step183HeadGvRow,s6Step183HeadFvRow] 1 s6Step183HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step183HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step183HeadBank_outgoingOwned : rowsOwned s6Step183HeadFvAfter [s6Step183HeadGOut,s6Step183HeadFOut,s6Step183HeadGvOut,s6Step183HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step183HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step183HeadF_Outgoing : rowsOwned s6Step183HeadFvAfter [s6Step183HeadFOut,s6Step183HeadGvOut,s6Step183HeadFvOut] :=
  hmrRows_owned_drop s6Step183HeadFvAfter [s6Step183HeadGOut,s6Step183HeadFOut,s6Step183HeadGvOut,s6Step183HeadFvOut] 1 s6Step183HeadBank_outgoingOwned

private theorem s6Step183HeadF_distinct : (s6Step183HeadFRow.sign::s6Step183HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183HeadF_owned : (s6Step183HeadFRow.sign::s6Step183HeadFRow.payload).toFinset⊆s6Step183HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step183HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183HeadF_reserved : s6Step183HeadFBefore.reserve s6Step183HeadFFresh.toFinset=some s6Step183HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step183HeadFFresh,arenaWires]
  · norm_num [s6Step183HeadFBefore,s6Step183HeadGAfter,s6Step183HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step183HeadFAfter,s6Step183HeadFBefore,s6Step183HeadGAfter,s6Step183HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step183HeadF_checked : planRowResizeLog s6Step183HeadFBefore s6Step183HeadFRow 179 s6Step183HeadFFresh=
    some (s6Step183HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 830],795⟩,growRow 795 s6Step183HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step183HeadFBefore s6Step183HeadFAfter s6Step183HeadFRow 179 s6Step183HeadFFresh
    s6Step183HeadF_distinct s6Step183HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step183HeadF_reserved
  have rowEq : WindowRow.mk (s6Step183HeadFRow.payload++s6Step183HeadFFresh) s6Step183HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 830],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step183HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step183HeadFvBefore : Arena := s6Step183HeadGvAfter

private theorem s6Step183HeadFv_Incoming : rowsOwned s6Step183HeadFvBefore [s6Step183HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step183HeadGRow,s6Step183HeadFRow,s6Step183HeadGvRow,s6Step183HeadFvRow] 3 s6Step183HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step183HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step183HeadFv_Outgoing : rowsOwned s6Step183HeadFvAfter [s6Step183HeadFvOut] :=
  hmrRows_owned_drop s6Step183HeadFvAfter [s6Step183HeadGOut,s6Step183HeadFOut,s6Step183HeadGvOut,s6Step183HeadFvOut] 3 s6Step183HeadBank_outgoingOwned

private theorem s6Step183HeadFv_distinct : (s6Step183HeadFvRow.sign::s6Step183HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183HeadFv_owned : (s6Step183HeadFvRow.sign::s6Step183HeadFvRow.payload).toFinset⊆s6Step183HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step183HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183HeadFv_reserved : s6Step183HeadFvBefore.reserve s6Step183HeadFvFresh.toFinset=some s6Step183HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step183HeadFvFresh,arenaWires]
  · norm_num [s6Step183HeadFvBefore,s6Step183HeadGvAfter,s6Step183HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step183HeadFvAfter,s6Step183HeadFvBefore,s6Step183HeadGvAfter,s6Step183HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step183HeadFv_checked : planRowResizeLog s6Step183HeadFvBefore s6Step183HeadFvRow 107 s6Step183HeadFvFresh=
    some (s6Step183HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 907],776⟩,growRow 776 s6Step183HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step183HeadFvBefore s6Step183HeadFvAfter s6Step183HeadFvRow 107 s6Step183HeadFvFresh
    s6Step183HeadFv_distinct s6Step183HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step183HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step183HeadFvRow.payload++s6Step183HeadFvFresh) s6Step183HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 907],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step183HeadG_Incoming : rowsOwned s6Step183HeadGBefore [s6Step183HeadGRow,s6Step183HeadFRow,s6Step183HeadGvRow,s6Step183HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step183HeadGRow,s6Step183HeadFRow,s6Step183HeadGvRow,s6Step183HeadFvRow] 0 s6Step183HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step183HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step183HeadG_Outgoing : rowsOwned s6Step183HeadFvAfter [s6Step183HeadGOut,s6Step183HeadFOut,s6Step183HeadGvOut,s6Step183HeadFvOut] :=
  hmrRows_owned_drop s6Step183HeadFvAfter [s6Step183HeadGOut,s6Step183HeadFOut,s6Step183HeadGvOut,s6Step183HeadFvOut] 0 s6Step183HeadBank_outgoingOwned

private theorem s6Step183HeadG_distinct : (s6Step183HeadGRow.sign::s6Step183HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183HeadG_owned : (s6Step183HeadGRow.sign::s6Step183HeadGRow.payload).toFinset⊆s6Step183HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step183HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183HeadG_reserved : s6Step183HeadGBefore.reserve s6Step183HeadGFresh.toFinset=some s6Step183HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step183HeadGFresh,arenaWires]
  · norm_num [s6Step183HeadGBefore,s6Step183HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step183HeadGAfter,s6Step183HeadGBefore,s6Step183HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step183HeadG_checked : planRowResizeLog s6Step183HeadGBefore s6Step183HeadGRow 179 s6Step183HeadGFresh=
    some (s6Step183HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 814, 880],777⟩,growRow 777 s6Step183HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step183HeadGBefore s6Step183HeadGAfter s6Step183HeadGRow 179 s6Step183HeadGFresh
    s6Step183HeadG_distinct s6Step183HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step183HeadG_reserved
  have rowEq : WindowRow.mk (s6Step183HeadGRow.payload++s6Step183HeadGFresh) s6Step183HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 814, 880],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step183HeadGvBefore : Arena := s6Step183HeadFAfter

private theorem s6Step183HeadGv_Incoming : rowsOwned s6Step183HeadGvBefore [s6Step183HeadGvRow,s6Step183HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step183HeadGRow,s6Step183HeadFRow,s6Step183HeadGvRow,s6Step183HeadFvRow] 2 s6Step183HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step183HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step183HeadGv_Outgoing : rowsOwned s6Step183HeadFvAfter [s6Step183HeadGvOut,s6Step183HeadFvOut] :=
  hmrRows_owned_drop s6Step183HeadFvAfter [s6Step183HeadGOut,s6Step183HeadFOut,s6Step183HeadGvOut,s6Step183HeadFvOut] 2 s6Step183HeadBank_outgoingOwned

private theorem s6Step183HeadGv_distinct : (s6Step183HeadGvRow.sign::s6Step183HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step183HeadGv_owned : (s6Step183HeadGvRow.sign::s6Step183HeadGvRow.payload).toFinset⊆s6Step183HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step183HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step183HeadGv_reserved : s6Step183HeadGvBefore.reserve s6Step183HeadGvFresh.toFinset=some s6Step183HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step183HeadGvFresh,arenaWires]
  · norm_num [s6Step183HeadGvBefore,s6Step183HeadFAfter,s6Step183HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step183HeadGvAfter,s6Step183HeadGvBefore,s6Step183HeadFAfter,s6Step183HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step183HeadGv_checked : planRowResizeLog s6Step183HeadGvBefore s6Step183HeadGvRow 107 s6Step183HeadGvFresh=
    some (s6Step183HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 821, 803],775⟩,growRow 775 s6Step183HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step183HeadGvBefore s6Step183HeadGvAfter s6Step183HeadGvRow 107 s6Step183HeadGvFresh
    s6Step183HeadGv_distinct s6Step183HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step183HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step183HeadGvRow.payload++s6Step183HeadGvFresh) s6Step183HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 821, 803],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step183HeadBank_rows : planWindowRowsLog s6Step183HeadGBefore [(s6Step183HeadGRow,179),(s6Step183HeadFRow,179),(s6Step183HeadGvRow,107),(s6Step183HeadFvRow,107)] [s6Step183HeadGFresh,s6Step183HeadFFresh,s6Step183HeadGvFresh,s6Step183HeadFvFresh]=
    some (s6Step183HeadFvAfter,[s6Step183HeadGOut,s6Step183HeadFOut,s6Step183HeadGvOut,s6Step183HeadFvOut],(growRow 777 s6Step183HeadGFresh ++ (growRow 795 s6Step183HeadFFresh ++ (growRow 775 s6Step183HeadGvFresh ++ (growRow 776 s6Step183HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step183HeadFvAfter [] []=some (s6Step183HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step183HeadFvBefore s6Step183HeadFvAfter s6Step183HeadFvAfter
    s6Step183HeadFvRow s6Step183HeadFvOut 107 s6Step183HeadFvFresh [] [] []
    (growRow 776 s6Step183HeadFvFresh) ([]) s6Step183HeadFv_Incoming s6Step183HeadFv_checked h4 s6Step183HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step183HeadGvBefore s6Step183HeadGvAfter s6Step183HeadFvAfter
    s6Step183HeadGvRow s6Step183HeadGvOut 107 s6Step183HeadGvFresh [(s6Step183HeadFvRow,107)] [s6Step183HeadFvFresh] [s6Step183HeadFvOut]
    (growRow 775 s6Step183HeadGvFresh) ((growRow 776 s6Step183HeadFvFresh ++ [])) s6Step183HeadGv_Incoming s6Step183HeadGv_checked h3 s6Step183HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step183HeadFBefore s6Step183HeadFAfter s6Step183HeadFvAfter
    s6Step183HeadFRow s6Step183HeadFOut 179 s6Step183HeadFFresh [(s6Step183HeadGvRow,107),(s6Step183HeadFvRow,107)] [s6Step183HeadGvFresh,s6Step183HeadFvFresh] [s6Step183HeadGvOut,s6Step183HeadFvOut]
    (growRow 795 s6Step183HeadFFresh) ((growRow 775 s6Step183HeadGvFresh ++ (growRow 776 s6Step183HeadFvFresh ++ []))) s6Step183HeadF_Incoming s6Step183HeadF_checked h2 s6Step183HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step183HeadGBefore s6Step183HeadGAfter s6Step183HeadFvAfter
    s6Step183HeadGRow s6Step183HeadGOut 179 s6Step183HeadGFresh [(s6Step183HeadFRow,179),(s6Step183HeadGvRow,107),(s6Step183HeadFvRow,107)] [s6Step183HeadFFresh,s6Step183HeadGvFresh,s6Step183HeadFvFresh] [s6Step183HeadFOut,s6Step183HeadGvOut,s6Step183HeadFvOut]
    (growRow 777 s6Step183HeadGFresh) ((growRow 795 s6Step183HeadFFresh ++ (growRow 775 s6Step183HeadGvFresh ++ (growRow 776 s6Step183HeadFvFresh ++ [])))) s6Step183HeadG_Incoming s6Step183HeadG_checked h1 s6Step183HeadG_Outgoing
  exact h0

private theorem s6Step183HeadBank_checked : compileHmrBankResizeLog .headroom s6Step183HeadGBefore ⟨s6Step183HeadFRow,s6Step183HeadGRow,s6Step183HeadFvRow,s6Step183HeadGvRow⟩ ⟨179,179,107,107⟩ [s6Step183HeadGFresh,s6Step183HeadFFresh,s6Step183HeadGvFresh,s6Step183HeadFvFresh]=
    some (s6Step183HeadFvAfter,⟨s6Step183HeadFOut,s6Step183HeadGOut,s6Step183HeadFvOut,s6Step183HeadGvOut⟩,(growRow 777 s6Step183HeadGFresh ++ (growRow 795 s6Step183HeadFFresh ++ (growRow 775 s6Step183HeadGvFresh ++ (growRow 776 s6Step183HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step183HeadBank_rows]
  rfl

private theorem s6Step183Front_checked : compileHmrSourceFrontLog s6Step183EntryFBefore s6Step183FrontBank 178 106 ⟨177,177,106,105⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step183FrontLog=some s6Step183FrontPlan := by
  have pairEq : s6Step183FrontPair=⟨s6Step183HeadFRow,s6Step183HeadGRow,s6Step183HeadFvRow,s6Step183HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step183FrontHead=⟨s6Step183ExitFRow,s6Step183ExitGRow,s6Step183ExitFvRow,s6Step183ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step183Add0A=s6Step183FrontHead.f.wires := by decide +kernel
  have gEq : s6Step183Add0B=s6Step183FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step183Add1A=s6Step183FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step183Add1B=s6Step183FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step183EntryFBefore s6Step183FrontBank 178 106 ⟨177,177,106,105⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step183FrontLog s6Step183FrontPlan
  · exact s6Step183Front_entry
  · exact s6Step183EntryBank_checked
  · exact s6Step183Front_sigma
  · rfl
  · exact s6Step183Front_branch
  · rfl
  · simpa only [s6Step183FrontPlan,pairEq] using s6Step183HeadBank_checked
  · simpa only [s6Step183FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step183F4_checked
  · exact s6Step183Counter_checked
  · rfl
  · simpa only [s6Step183FrontPlan,headEq] using s6Step183ExitBank_checked

private theorem s6Step183Complete_explicit_checked : compileHmrEarlyStepLog s6Step183EntryFBefore s6Step183FrontBank 178 106 ⟨177,177,106,105⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step183CompleteLog=some s6Step183CompletePlan := by
  let Q := s6Step183EarlyControlPlan
  have hq := s6Step183EarlyControl_plan_checked
  have fv1 : s6Step183CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step183CompleteOut.fv.payload[2]?.getD s6Step183CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step183CompleteOut.fv.payload[3]?.getD s6Step183CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step183CompleteOut.fv.payload[4]?.getD s6Step183CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step183EntryFBefore s6Step183EarlyControlArena s6Step183FrontBank 178 106 ⟨177,177,106,105⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step183CompleteLog s6Step183FrontPlan Q
    s6Step183Front_checked s6Step183Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step183Complete_owned s6Step183Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step183EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 796 s6Step183CompleteOut.fv.second (s6Step183CompleteOut.fv.payload[2]?.getD s6Step183CompleteOut.fv.sign) (s6Step183CompleteOut.fv.payload[3]?.getD s6Step183CompleteOut.fv.sign) (s6Step183CompleteOut.fv.payload[4]?.getD s6Step183CompleteOut.fv.sign) 841 43 s6Step183EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep183Arena : Arena := s6Step183EntryFBefore
def s6PrivateStep183Bank : WindowBank := s6Step183FrontBank
def s6PrivateStep183Spec : HmrSourceWalkStepLog := ⟨178,106,⟨177,177,106,105⟩,43,.early s6Step183CompleteLog⟩
def s6PrivateStep183Plan : HmrSourceStepPlan := .early s6Step183CompletePlan
theorem s6PrivateStep183_source : s6PrivateStep183Spec=s6ObservedLogs176[7] := rfl
theorem s6PrivateStep183_checked : compileHmrSourceStepLog s6PrivateStep183Arena s6PrivateStep183Bank
    s6PrivateStep183Spec.fgWidth s6PrivateStep183Spec.vWidth s6PrivateStep183Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]
    6 498 183 s6PrivateStep183Spec.need none s6PrivateStep183Spec.log=some s6PrivateStep183Plan := by
  change compileHmrSourceStepLog s6Step183EntryFBefore s6Step183FrontBank 178 106 ⟨177,177,106,105⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 6 498 183 43 none (.early s6Step183CompleteLog)=some (.early s6Step183CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 183<498)]
  rw [s6Step183Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
