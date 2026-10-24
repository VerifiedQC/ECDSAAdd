import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep204
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

private def s6Step206CompleteMoves : List (Wire × Wire) := [(859,422)]

private def s6Step206EarlyControlLog : HmrEarlyControlLog := ⟨[859, 780, 802, 813, 855],[838],[822],[825, 869, 786, 810, 809, 817],[]⟩

private def s6Step206FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [855], [791], []],[[838], [813], [780], [802]],[[], [], [], []]⟩,[807],[867],[822],[825],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786]⟩

private def s6Step206CompleteLog : HmrEarlyStepLog := ⟨s6Step206FrontLog,s6Step206CompleteMoves,s6Step206EarlyControlLog⟩

private def s6Step206ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421],795⟩

private def s6Step206ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791],776⟩

private def s6Step206ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165],777⟩

private def s6Step206ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877],775⟩

private def s6Step206FrontOut : WindowBank := ⟨s6Step206ExitFOut,s6Step206ExitGOut,s6Step206ExitFvOut,s6Step206ExitGvOut⟩

private def s6Step206CompleteOut : WindowBank := s6Step206FrontOut.repacked s6Step206CompleteMoves

private def s6Step206EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step206EarlyControlPositiveArena,[838],s6Step206EarlyControlEqualityArena,[822],⟨⟨807,false⟩,[⟨⟨838,false⟩,822⟩]⟩⟩

private def s6Step206EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,859⟩,⟨⟨772,false⟩,780⟩,⟨⟨771,false⟩,802⟩,⟨⟨770,false⟩,813⟩,⟨⟨769,false⟩,855⟩]⟩

private def s6Step206EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step206EarlyControlZeroArena,s6Step206EarlyControlZeroPlan,s6Step206EarlyControlClassPlan,s6Step206EarlyControlFlagArena,s6Step206EarlyControlFittedArena,s6Step206EarlyControlHistoryArena,s6Step206EarlyControlSigmaArena,s6Step206EarlyControlOutputArena,s6Step206EarlyControlLog⟩

private def s6Step206CounterWork : List Wire := [822, 825, 869, 786]

private theorem s6Step206Counter_bounded : s6Step206CounterWork.toFinset⊆arenaWires := by norm_num [s6Step206CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step206HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206CounterDuring : Arena := ⟨s6Step206HeadFvAfter.live∪s6Step206CounterWork.toFinset,Finset.union_subset s6Step206HeadFvAfter.bounded s6Step206Counter_bounded⟩

private def s6Step206EntryFFresh : List Wire := []

private def s6Step206EntryFvFresh : List Wire := [791]

private def s6Step206EntryGFresh : List Wire := [855]

private def s6Step206EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206EntryGvAfter : Arena := s6Step206EntryFvAfter

private def s6Step206EntryGvFresh : List Wire := []

private def s6Step206ExitFExtra : List Wire := [422, 813]

private def s6Step206ExitFvExtra : List Wire := [802]

private def s6Step206ExitGExtra : List Wire := [855, 838]

private def s6Step206ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<422) ∨ (423≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206ExitGvExtra : List Wire := [780]

private def s6Step206Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206Add0Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step206Add0_bounded : s6Step206Add0Work.toFinset⊆arenaWires := by
  have h : s6Step206Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step206Add0During : Arena := ⟨s6Step206Add0Arena.live∪s6Step206Add0Work.toFinset,Finset.union_subset s6Step206Add0Arena.bounded s6Step206Add0_bounded⟩

private def s6Step206Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206Add1Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step206Add1_bounded : s6Step206Add1Work.toFinset⊆arenaWires := by
  have h : s6Step206Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step206Add1During : Arena := ⟨s6Step206Add1Arena.live∪s6Step206Add1Work.toFinset,Finset.union_subset s6Step206Add1Arena.bounded s6Step206Add1_bounded⟩

private def s6Step206F4FlagArena : Arena := ⟨s6Step206HeadFvAfter.live∪{822},Finset.union_subset s6Step206HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step206F4Plan : HmrHybridF4Plan := ⟨s6Step206F4FlagArena,[822],s6Step206Add0Arena,[825],s6Step206Add0During,s6Step206Add0Work,s6Step206Add1During,s6Step206Add1Work⟩

private def s6Step206HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 813],795⟩

private def s6Step206HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 802],776⟩

private def s6Step206HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 855, 838],777⟩

private def s6Step206HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780],775⟩

private def s6Step206FrontHead : WindowBank := ⟨s6Step206HeadFOut,s6Step206HeadGOut,s6Step206HeadFvOut,s6Step206HeadGvOut⟩

private def s6Step206EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422],795⟩

private def s6Step206EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791],776⟩

private def s6Step206EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 855],777⟩

private def s6Step206EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877],775⟩

private def s6Step206FrontPair : WindowBank := ⟨s6Step206EntryFOut,s6Step206EntryGOut,s6Step206EntryFvOut,s6Step206EntryGvOut⟩

private def s6Step206FrontSigmaArena : Arena := ⟨s6Step206EntryGvAfter.live∪{807},Finset.union_subset s6Step206EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step206HeadFFresh : List Wire := [813]

private def s6Step206HeadFvFresh : List Wire := [802]

private def s6Step206HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206HeadGFresh : List Wire := [838]

private def s6Step206HeadGvFresh : List Wire := [780]

private def s6Step206FrontPlan : HmrSourceFront := ⟨s6Step206EntryGvAfter,s6Step206FrontPair,(growRow 795 s6Step206EntryFFresh ++ (growRow 777 s6Step206EntryGFresh ++ (growRow 776 s6Step206EntryFvFresh ++ (growRow 775 s6Step206EntryGvFresh ++ [])))),s6Step206FrontSigmaArena,[807],s6Step206HeadGBefore,[867],
  s6Step206HeadFvAfter,s6Step206FrontHead,(growRow 777 s6Step206HeadGFresh ++ (growRow 795 s6Step206HeadFFresh ++ (growRow 775 s6Step206HeadGvFresh ++ (growRow 776 s6Step206HeadFvFresh ++ [])))),s6Step206F4Plan,s6Step206CounterDuring,s6Step206CounterWork,s6Step206ExitGvAfter,s6Step206FrontOut,(shrinkRow 777 s6Step206ExitGExtra ++ (shrinkRow 795 s6Step206ExitFExtra ++ (shrinkRow 776 s6Step206ExitFvExtra ++ (shrinkRow 775 s6Step206ExitGvExtra ++ []))))⟩

private def s6Step206CompletePlan : HmrEarlyStepPlan := ⟨s6Step206FrontPlan,s6Step206EarlyControlArena,s6Step206EarlyControlPlan,s6Step206CompleteMoves⟩

private theorem s6Step206Complete_apart : List.Disjoint (s6Step206CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [807, 867, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step206CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[807, 867, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step206Complete_owned : (s6Step206CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step206EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step206EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step206CompleteMoveArena : Arena := ⟨s6Step206ExitGvAfter.live∪{422},Finset.union_subset s6Step206ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step206Complete_repack : s6Step206ExitGvAfter.checkRepack s6Step206CompleteMoves=some s6Step206EarlyControlArena := by
  have owned : 859∈s6Step206ExitGvAfter.live := by norm_num [s6Step206ExitGvAfter,arenaWires]
  have reserve : s6Step206ExitGvAfter.reserve {422}=some s6Step206CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step206ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step206CompleteMoveArena.retireSet {859}=s6Step206EarlyControlArena := by
    unfold Arena.retireSet s6Step206EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step206CompleteMoveArena,s6Step206ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step206CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step206CompleteMoveArena.retireSet {859}).checkRepack []=some s6Step206EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step206EarlyControl_branchOwned : ([867] : List Wire).toFinset⊆s6Step206EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step206EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206EarlyControl_branch : compileHmrBranchRetirement s6Step206EarlyControlSigmaArena 867=some s6Step206EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step206EarlyControl_branchOwned
  · ext q
    simp [s6Step206EarlyControlOutputArena,s6Step206EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step206EarlyControl_classEqualityBorrow : s6Step206EarlyControlPositiveArena.checkBorrow (([807, 838] : List Wire).length-1) s6Step206EarlyControlLog.classWork=some s6Step206EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step206EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step206EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step206EarlyControlEqualityArena,s6Step206EarlyControlPositiveArena,s6Step206EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step206EarlyControl_classEqualityOwned : ([807, 838] : List Wire).toFinset⊆s6Step206EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step206EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206EarlyControl_classEquality : compileHmrEqualityLog s6Step206EarlyControlPositiveArena [807, 838] 0 s6Step206EarlyControlLog.classWork=some (s6Step206EarlyControlEqualityArena,s6Step206EarlyControlLog.classWork,s6Step206EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step206EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step206EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step206EarlyControl_classOwned : ([769, 855, 807] : List Wire).toFinset⊆s6Step206EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step206EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206EarlyControl_positiveBorrow : s6Step206EarlyControlZeroArena.checkBorrow (1) s6Step206EarlyControlLog.positiveWork=some s6Step206EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step206EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step206EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step206EarlyControlPositiveArena,s6Step206EarlyControlZeroArena,s6Step206EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step206EarlyControl_class : compileHmrSourceClassLog s6Step206EarlyControlZeroArena false 769 s6Step206EarlyControlZeroPlan.top 0 807 s6Step206EarlyControlLog.positiveWork s6Step206EarlyControlLog.classWork=some s6Step206EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step206EarlyControlClassPlan s6Step206EarlyControlZeroArena false 769 s6Step206EarlyControlZeroPlan.top 0 807
  constructor
  · decide +kernel
  · exact s6Step206EarlyControl_classOwned
  · exact s6Step206EarlyControl_positiveBorrow
  · exact s6Step206EarlyControl_classEquality

private theorem s6Step206EarlyControl_entryRecordOwned : ([867, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step206EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step206EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206EarlyControl_entrySigmaOwned : ([807, 254] : List Wire).toFinset⊆s6Step206EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step206EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206EarlyControl_fitBorrow : s6Step206EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step206EarlyControlLog.recordFresh=some s6Step206EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step206EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step206EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step206EarlyControlFittedArena,s6Step206EarlyControlFlagArena,s6Step206EarlyControlLog,arenaWires]

private theorem s6Step206EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step206EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step206EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206EarlyControl_fit : compileHmrRecordGrowLog s6Step206EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step206EarlyControlLog.recordFresh=some s6Step206EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step206EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step206EarlyControl_fitBorrow

private theorem s6Step206EarlyControl_flagsBorrow : s6Step206EarlyControlEqualityArena.checkBorrow (6) s6Step206EarlyControlLog.flagWork=some s6Step206EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step206EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step206EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step206EarlyControlFlagArena,s6Step206EarlyControlEqualityArena,s6Step206EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step206EarlyControl_flagsOwned : ([822, 253, 252, 251] : List Wire).toFinset⊆s6Step206EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step206EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206EarlyControl_flags : compileHmrFlagsLog s6Step206EarlyControlClassPlan.equalityArena s6Step206EarlyControlClassPlan.equality.top 253 252 251 s6Step206EarlyControlLog.flagWork=some s6Step206EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step206EarlyControl_flagsOwned⟩
  · exact s6Step206EarlyControl_flagsBorrow

private theorem s6Step206EarlyControl_historyBorrow : s6Step206EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step206EarlyControlLog.recordFresh=some s6Step206EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step206EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step206EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step206EarlyControlHistoryArena,s6Step206EarlyControlArena,s6Step206EarlyControlLog,arenaWires]

private theorem s6Step206EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step206EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step206EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206EarlyControl_history : compileHmrRecordGrowLog s6Step206EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step206EarlyControlLog.recordFresh=some s6Step206EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step206EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step206EarlyControl_historyBorrow

private theorem s6Step206EarlyControl_sigmaOwned : ([254, 807] : List Wire).toFinset⊆s6Step206EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step206EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206EarlyControl_sigmaReleaseOwned : ([807] : List Wire).toFinset⊆s6Step206EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step206EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206EarlyControl_sigmaRelease : s6Step206EarlyControlHistoryArena.release {807} (fun _ => false)=some s6Step206EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step206EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step206EarlyControlSigmaArena,s6Step206EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step206EarlyControl_sigma : compileHmrSigmaDropLog s6Step206EarlyControlHistoryArena false 0 0 254 807 []=some s6Step206EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step206EarlyControl_sigmaOwned⟩
  · exact s6Step206EarlyControl_sigmaRelease

private theorem s6Step206EarlyControl_zeroBorrow : s6Step206EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step206EarlyControlLog.zeroWork=some s6Step206EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step206EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step206EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step206EarlyControlZeroArena,s6Step206EarlyControlArena,s6Step206EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step206EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step206EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step206EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<859) ∨ (860≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206EarlyControl_zero : compileHmrEqualityLog s6Step206EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step206EarlyControlLog.zeroWork=some (s6Step206EarlyControlZeroArena,s6Step206EarlyControlLog.zeroWork,s6Step206EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step206EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step206EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step206EarlyControl_logged : s6Step206EarlyControlPlan.Logged s6Step206EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 807 254 253 252 251 867 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step206EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step206EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step206EarlyControl_zero
  · exact s6Step206EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step206EarlyControl_flags
  · exact s6Step206EarlyControl_fit
  · exact s6Step206EarlyControl_history
  · exact s6Step206EarlyControl_sigma
  · exact s6Step206EarlyControl_branch

private theorem s6Step206EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step206EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 807 254 253 252 251 867 47 s6Step206EarlyControlLog=some s6Step206EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step206EarlyControlPlan s6Step206EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 807 254 253 252 251 867 47 s6Step206EarlyControl_logged

private def s6Step206EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422],795⟩

private def s6Step206EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903],776⟩

private def s6Step206EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165],777⟩

private def s6Step206EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877],775⟩

private def s6Step206FrontBank : WindowBank := ⟨s6Step206EntryFRow,s6Step206EntryGRow,s6Step206EntryFvRow,s6Step206EntryGvRow⟩

private def s6Step206Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 813, 795]

private def s6Step206Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 855, 838, 777]

private def s6Step206Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 802, 776]

private def s6Step206Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 775]

private theorem s6Step206Counter_apart : Disjoint s6Step206HeadFvAfter.live s6Step206CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step206HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206Counter_borrowed : s6Step206HeadFvAfter.checkBorrow 4 s6Step206CounterWork=some s6Step206CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step206HeadFvAfter s6Step206CounterDuring s6Step206CounterWork.toFinset s6Step206Counter_bounded s6Step206Counter_apart rfl

private theorem s6Step206Counter_owned : (807::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step206HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step206HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206Counter_checked : compileHmrCounterStepLog s6Step206HeadFvAfter true 807 [774, 773, 772, 771, 770, 769] s6Step206CounterWork=some s6Step206CounterDuring := by
  have owned : ∀q∈807::[774, 773, 772, 771, 770, 769],q∈s6Step206HeadFvAfter.live := fun q hq => s6Step206Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step206Counter_borrowed

private def s6Step206EntryFAfter : Arena := s6Step206EntryFBefore

private theorem s6Step206EntryBank_incomingDistinct : ([s6Step206EntryFRow,s6Step206EntryGRow,s6Step206EntryFvRow,s6Step206EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206EntryF_Incoming : rowsOwned s6Step206EntryFBefore [s6Step206EntryFRow,s6Step206EntryGRow,s6Step206EntryFvRow,s6Step206EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step206EntryFRow,s6Step206EntryGRow,s6Step206EntryFvRow,s6Step206EntryGvRow] 0 s6Step206EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step206EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step206EntryBank_outgoingOwned : rowsOwned s6Step206EntryGvAfter [s6Step206EntryFOut,s6Step206EntryGOut,s6Step206EntryFvOut,s6Step206EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step206EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step206EntryF_Outgoing : rowsOwned s6Step206EntryGvAfter [s6Step206EntryFOut,s6Step206EntryGOut,s6Step206EntryFvOut,s6Step206EntryGvOut] :=
  hmrRows_owned_drop s6Step206EntryGvAfter [s6Step206EntryFOut,s6Step206EntryGOut,s6Step206EntryFvOut,s6Step206EntryGvOut] 0 s6Step206EntryBank_outgoingOwned

private theorem s6Step206EntryF_distinct : (s6Step206EntryFRow.sign::s6Step206EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206EntryF_owned : (s6Step206EntryFRow.sign::s6Step206EntryFRow.payload).toFinset⊆s6Step206EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step206EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206EntryF_reserved : s6Step206EntryFBefore.reserve s6Step206EntryFFresh.toFinset=some s6Step206EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step206EntryFFresh,arenaWires]
  · norm_num [s6Step206EntryFBefore,s6Step206EntryFFresh,arenaWires]
  · simp only [s6Step206EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step206EntryF_checked : planRowResizeLog s6Step206EntryFBefore s6Step206EntryFRow 167 s6Step206EntryFFresh=
    some (s6Step206EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422],795⟩,growRow 795 s6Step206EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step206EntryFBefore s6Step206EntryFAfter s6Step206EntryFRow 167 s6Step206EntryFFresh
    s6Step206EntryF_distinct s6Step206EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step206EntryF_reserved
  have rowEq : WindowRow.mk (s6Step206EntryFRow.payload++s6Step206EntryFFresh) s6Step206EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step206EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206EntryFvBefore : Arena := s6Step206EntryGAfter

private theorem s6Step206EntryFv_Incoming : rowsOwned s6Step206EntryFvBefore [s6Step206EntryFvRow,s6Step206EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step206EntryFRow,s6Step206EntryGRow,s6Step206EntryFvRow,s6Step206EntryGvRow] 2 s6Step206EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step206EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step206EntryFv_Outgoing : rowsOwned s6Step206EntryGvAfter [s6Step206EntryFvOut,s6Step206EntryGvOut] :=
  hmrRows_owned_drop s6Step206EntryGvAfter [s6Step206EntryFOut,s6Step206EntryGOut,s6Step206EntryFvOut,s6Step206EntryGvOut] 2 s6Step206EntryBank_outgoingOwned

private theorem s6Step206EntryFv_distinct : (s6Step206EntryFvRow.sign::s6Step206EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206EntryFv_owned : (s6Step206EntryFvRow.sign::s6Step206EntryFvRow.payload).toFinset⊆s6Step206EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step206EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206EntryFv_reserved : s6Step206EntryFvBefore.reserve s6Step206EntryFvFresh.toFinset=some s6Step206EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step206EntryFvFresh,arenaWires]
  · norm_num [s6Step206EntryFvBefore,s6Step206EntryGAfter,s6Step206EntryFvFresh,arenaWires]
  · ext q
    simp only [s6Step206EntryFvAfter,s6Step206EntryFvBefore,s6Step206EntryGAfter,s6Step206EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step206EntryFv_checked : planRowResizeLog s6Step206EntryFvBefore s6Step206EntryFvRow 118 s6Step206EntryFvFresh=
    some (s6Step206EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791],776⟩,growRow 776 s6Step206EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step206EntryFvBefore s6Step206EntryFvAfter s6Step206EntryFvRow 118 s6Step206EntryFvFresh
    s6Step206EntryFv_distinct s6Step206EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step206EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step206EntryFvRow.payload++s6Step206EntryFvFresh) s6Step206EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step206EntryGBefore : Arena := s6Step206EntryFBefore

private theorem s6Step206EntryG_Incoming : rowsOwned s6Step206EntryGBefore [s6Step206EntryGRow,s6Step206EntryFvRow,s6Step206EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step206EntryFRow,s6Step206EntryGRow,s6Step206EntryFvRow,s6Step206EntryGvRow] 1 s6Step206EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step206EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step206EntryG_Outgoing : rowsOwned s6Step206EntryGvAfter [s6Step206EntryGOut,s6Step206EntryFvOut,s6Step206EntryGvOut] :=
  hmrRows_owned_drop s6Step206EntryGvAfter [s6Step206EntryFOut,s6Step206EntryGOut,s6Step206EntryFvOut,s6Step206EntryGvOut] 1 s6Step206EntryBank_outgoingOwned

private theorem s6Step206EntryG_distinct : (s6Step206EntryGRow.sign::s6Step206EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206EntryG_owned : (s6Step206EntryGRow.sign::s6Step206EntryGRow.payload).toFinset⊆s6Step206EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step206EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206EntryG_reserved : s6Step206EntryGBefore.reserve s6Step206EntryGFresh.toFinset=some s6Step206EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step206EntryGFresh,arenaWires]
  · norm_num [s6Step206EntryGBefore,s6Step206EntryFBefore,s6Step206EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step206EntryGAfter,s6Step206EntryGBefore,s6Step206EntryFBefore,s6Step206EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step206EntryG_checked : planRowResizeLog s6Step206EntryGBefore s6Step206EntryGRow 167 s6Step206EntryGFresh=
    some (s6Step206EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 855],777⟩,growRow 777 s6Step206EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step206EntryGBefore s6Step206EntryGAfter s6Step206EntryGRow 167 s6Step206EntryGFresh
    s6Step206EntryG_distinct s6Step206EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step206EntryG_reserved
  have rowEq : WindowRow.mk (s6Step206EntryGRow.payload++s6Step206EntryGFresh) s6Step206EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 855],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step206EntryGvBefore : Arena := s6Step206EntryFvAfter

private theorem s6Step206EntryGv_Incoming : rowsOwned s6Step206EntryGvBefore [s6Step206EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step206EntryFRow,s6Step206EntryGRow,s6Step206EntryFvRow,s6Step206EntryGvRow] 3 s6Step206EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step206EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step206EntryGv_Outgoing : rowsOwned s6Step206EntryGvAfter [s6Step206EntryGvOut] :=
  hmrRows_owned_drop s6Step206EntryGvAfter [s6Step206EntryFOut,s6Step206EntryGOut,s6Step206EntryFvOut,s6Step206EntryGvOut] 3 s6Step206EntryBank_outgoingOwned

private theorem s6Step206EntryGv_distinct : (s6Step206EntryGvRow.sign::s6Step206EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206EntryGv_owned : (s6Step206EntryGvRow.sign::s6Step206EntryGvRow.payload).toFinset⊆s6Step206EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step206EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206EntryGv_reserved : s6Step206EntryGvBefore.reserve s6Step206EntryGvFresh.toFinset=some s6Step206EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step206EntryGvFresh,arenaWires]
  · norm_num [s6Step206EntryGvBefore,s6Step206EntryFvAfter,s6Step206EntryGvFresh,arenaWires]
  · simp only [s6Step206EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step206EntryGv_checked : planRowResizeLog s6Step206EntryGvBefore s6Step206EntryGvRow 118 s6Step206EntryGvFresh=
    some (s6Step206EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877],775⟩,growRow 775 s6Step206EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step206EntryGvBefore s6Step206EntryGvAfter s6Step206EntryGvRow 118 s6Step206EntryGvFresh
    s6Step206EntryGv_distinct s6Step206EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step206EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step206EntryGvRow.payload++s6Step206EntryGvFresh) s6Step206EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step206EntryBank_rows : planWindowRowsLog s6Step206EntryFBefore [(s6Step206EntryFRow,167),(s6Step206EntryGRow,167),(s6Step206EntryFvRow,118),(s6Step206EntryGvRow,118)] [s6Step206EntryFFresh,s6Step206EntryGFresh,s6Step206EntryFvFresh,s6Step206EntryGvFresh]=
    some (s6Step206EntryGvAfter,[s6Step206EntryFOut,s6Step206EntryGOut,s6Step206EntryFvOut,s6Step206EntryGvOut],(growRow 795 s6Step206EntryFFresh ++ (growRow 777 s6Step206EntryGFresh ++ (growRow 776 s6Step206EntryFvFresh ++ (growRow 775 s6Step206EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step206EntryGvAfter [] []=some (s6Step206EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step206EntryGvBefore s6Step206EntryGvAfter s6Step206EntryGvAfter
    s6Step206EntryGvRow s6Step206EntryGvOut 118 s6Step206EntryGvFresh [] [] []
    (growRow 775 s6Step206EntryGvFresh) ([]) s6Step206EntryGv_Incoming s6Step206EntryGv_checked h4 s6Step206EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step206EntryFvBefore s6Step206EntryFvAfter s6Step206EntryGvAfter
    s6Step206EntryFvRow s6Step206EntryFvOut 118 s6Step206EntryFvFresh [(s6Step206EntryGvRow,118)] [s6Step206EntryGvFresh] [s6Step206EntryGvOut]
    (growRow 776 s6Step206EntryFvFresh) ((growRow 775 s6Step206EntryGvFresh ++ [])) s6Step206EntryFv_Incoming s6Step206EntryFv_checked h3 s6Step206EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step206EntryGBefore s6Step206EntryGAfter s6Step206EntryGvAfter
    s6Step206EntryGRow s6Step206EntryGOut 167 s6Step206EntryGFresh [(s6Step206EntryFvRow,118),(s6Step206EntryGvRow,118)] [s6Step206EntryFvFresh,s6Step206EntryGvFresh] [s6Step206EntryFvOut,s6Step206EntryGvOut]
    (growRow 777 s6Step206EntryGFresh) ((growRow 776 s6Step206EntryFvFresh ++ (growRow 775 s6Step206EntryGvFresh ++ []))) s6Step206EntryG_Incoming s6Step206EntryG_checked h2 s6Step206EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step206EntryFBefore s6Step206EntryFAfter s6Step206EntryGvAfter
    s6Step206EntryFRow s6Step206EntryFOut 167 s6Step206EntryFFresh [(s6Step206EntryGRow,167),(s6Step206EntryFvRow,118),(s6Step206EntryGvRow,118)] [s6Step206EntryGFresh,s6Step206EntryFvFresh,s6Step206EntryGvFresh] [s6Step206EntryGOut,s6Step206EntryFvOut,s6Step206EntryGvOut]
    (growRow 795 s6Step206EntryFFresh) ((growRow 777 s6Step206EntryGFresh ++ (growRow 776 s6Step206EntryFvFresh ++ (growRow 775 s6Step206EntryGvFresh ++ [])))) s6Step206EntryF_Incoming s6Step206EntryF_checked h1 s6Step206EntryF_Outgoing
  exact h0

private theorem s6Step206EntryBank_checked : compileHmrBankResizeLog .entry s6Step206EntryFBefore ⟨s6Step206EntryFRow,s6Step206EntryGRow,s6Step206EntryFvRow,s6Step206EntryGvRow⟩ ⟨167,167,118,118⟩ [s6Step206EntryFFresh,s6Step206EntryGFresh,s6Step206EntryFvFresh,s6Step206EntryGvFresh]=
    some (s6Step206EntryGvAfter,⟨s6Step206EntryFOut,s6Step206EntryGOut,s6Step206EntryFvOut,s6Step206EntryGvOut⟩,(growRow 795 s6Step206EntryFFresh ++ (growRow 777 s6Step206EntryGFresh ++ (growRow 776 s6Step206EntryFvFresh ++ (growRow 775 s6Step206EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step206EntryBank_rows]
  rfl

private def s6Step206ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<422) ∨ (423≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206ExitFBefore : Arena := s6Step206ExitGAfter

private def s6Step206ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 813],795⟩

private def s6Step206ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 802],776⟩

private def s6Step206ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 855, 838],777⟩

private def s6Step206ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780],775⟩

private theorem s6Step206ExitBank_incomingDistinct : ([s6Step206ExitGRow,s6Step206ExitFRow,s6Step206ExitFvRow,s6Step206ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206ExitF_Incoming : rowsOwned s6Step206ExitFBefore [s6Step206ExitFRow,s6Step206ExitFvRow,s6Step206ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step206ExitGRow,s6Step206ExitFRow,s6Step206ExitFvRow,s6Step206ExitGvRow] 1 s6Step206ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step206ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step206ExitBank_outgoingOwned : rowsOwned s6Step206ExitGvAfter [s6Step206ExitGOut,s6Step206ExitFOut,s6Step206ExitFvOut,s6Step206ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step206ExitGvAfter (fun q => (0≤q ∧ q<422) ∨ (423≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step206ExitF_Outgoing : rowsOwned s6Step206ExitGvAfter [s6Step206ExitFOut,s6Step206ExitFvOut,s6Step206ExitGvOut] :=
  hmrRows_owned_drop s6Step206ExitGvAfter [s6Step206ExitGOut,s6Step206ExitFOut,s6Step206ExitFvOut,s6Step206ExitGvOut] 1 s6Step206ExitBank_outgoingOwned

private theorem s6Step206ExitF_distinct : (s6Step206ExitFRow.sign::s6Step206ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206ExitF_owned : (s6Step206ExitFRow.sign::s6Step206ExitFRow.payload).toFinset⊆s6Step206ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step206ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206ExitF_retired : s6Step206ExitFBefore.retireSet s6Step206ExitFExtra.toFinset=s6Step206ExitFAfter := by
  unfold Arena.retireSet s6Step206ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step206ExitFBefore,s6Step206ExitGAfter,s6Step206ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step206ExitF_checked : planRowResizeLog s6Step206ExitFBefore s6Step206ExitFRow 166 []=
    some (s6Step206ExitFAfter,s6Step206ExitFOut,shrinkRow 795 s6Step206ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step206ExitFBefore s6Step206ExitFRow 166 s6Step206ExitF_distinct s6Step206ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step206ExitFRow.payload.take 166) s6Step206ExitFRow.sign=s6Step206ExitFOut := by decide +kernel
  have hi : s6Step206ExitFRow.payload.drop 166=s6Step206ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step206ExitF_retired] at result
  exact result

private def s6Step206ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<422) ∨ (423≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206ExitFvBefore : Arena := s6Step206ExitFAfter

private theorem s6Step206ExitFv_Incoming : rowsOwned s6Step206ExitFvBefore [s6Step206ExitFvRow,s6Step206ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step206ExitGRow,s6Step206ExitFRow,s6Step206ExitFvRow,s6Step206ExitGvRow] 2 s6Step206ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step206ExitFvBefore (fun q => (0≤q ∧ q<422) ∨ (423≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step206ExitFv_Outgoing : rowsOwned s6Step206ExitGvAfter [s6Step206ExitFvOut,s6Step206ExitGvOut] :=
  hmrRows_owned_drop s6Step206ExitGvAfter [s6Step206ExitGOut,s6Step206ExitFOut,s6Step206ExitFvOut,s6Step206ExitGvOut] 2 s6Step206ExitBank_outgoingOwned

private theorem s6Step206ExitFv_distinct : (s6Step206ExitFvRow.sign::s6Step206ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206ExitFv_owned : (s6Step206ExitFvRow.sign::s6Step206ExitFvRow.payload).toFinset⊆s6Step206ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step206ExitFvBefore (fun q => (0≤q ∧ q<422) ∨ (423≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206ExitFv_retired : s6Step206ExitFvBefore.retireSet s6Step206ExitFvExtra.toFinset=s6Step206ExitFvAfter := by
  unfold Arena.retireSet s6Step206ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step206ExitFvBefore,s6Step206ExitFAfter,s6Step206ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step206ExitFv_checked : planRowResizeLog s6Step206ExitFvBefore s6Step206ExitFvRow 118 []=
    some (s6Step206ExitFvAfter,s6Step206ExitFvOut,shrinkRow 776 s6Step206ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step206ExitFvBefore s6Step206ExitFvRow 118 s6Step206ExitFv_distinct s6Step206ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step206ExitFvRow.payload.take 118) s6Step206ExitFvRow.sign=s6Step206ExitFvOut := by decide +kernel
  have hi : s6Step206ExitFvRow.payload.drop 118=s6Step206ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step206ExitFv_retired] at result
  exact result

private def s6Step206ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step206ExitG_Incoming : rowsOwned s6Step206ExitGBefore [s6Step206ExitGRow,s6Step206ExitFRow,s6Step206ExitFvRow,s6Step206ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step206ExitGRow,s6Step206ExitFRow,s6Step206ExitFvRow,s6Step206ExitGvRow] 0 s6Step206ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step206ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step206ExitG_Outgoing : rowsOwned s6Step206ExitGvAfter [s6Step206ExitGOut,s6Step206ExitFOut,s6Step206ExitFvOut,s6Step206ExitGvOut] :=
  hmrRows_owned_drop s6Step206ExitGvAfter [s6Step206ExitGOut,s6Step206ExitFOut,s6Step206ExitFvOut,s6Step206ExitGvOut] 0 s6Step206ExitBank_outgoingOwned

private theorem s6Step206ExitG_distinct : (s6Step206ExitGRow.sign::s6Step206ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206ExitG_owned : (s6Step206ExitGRow.sign::s6Step206ExitGRow.payload).toFinset⊆s6Step206ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step206ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206ExitG_retired : s6Step206ExitGBefore.retireSet s6Step206ExitGExtra.toFinset=s6Step206ExitGAfter := by
  unfold Arena.retireSet s6Step206ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step206ExitGBefore,s6Step206ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step206ExitG_checked : planRowResizeLog s6Step206ExitGBefore s6Step206ExitGRow 166 []=
    some (s6Step206ExitGAfter,s6Step206ExitGOut,shrinkRow 777 s6Step206ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step206ExitGBefore s6Step206ExitGRow 166 s6Step206ExitG_distinct s6Step206ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step206ExitGRow.payload.take 166) s6Step206ExitGRow.sign=s6Step206ExitGOut := by decide +kernel
  have hi : s6Step206ExitGRow.payload.drop 166=s6Step206ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step206ExitG_retired] at result
  exact result

private def s6Step206ExitGvBefore : Arena := s6Step206ExitFvAfter

private theorem s6Step206ExitGv_Incoming : rowsOwned s6Step206ExitGvBefore [s6Step206ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step206ExitGRow,s6Step206ExitFRow,s6Step206ExitFvRow,s6Step206ExitGvRow] 3 s6Step206ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step206ExitGvBefore (fun q => (0≤q ∧ q<422) ∨ (423≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step206ExitGv_Outgoing : rowsOwned s6Step206ExitGvAfter [s6Step206ExitGvOut] :=
  hmrRows_owned_drop s6Step206ExitGvAfter [s6Step206ExitGOut,s6Step206ExitFOut,s6Step206ExitFvOut,s6Step206ExitGvOut] 3 s6Step206ExitBank_outgoingOwned

private theorem s6Step206ExitGv_distinct : (s6Step206ExitGvRow.sign::s6Step206ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206ExitGv_owned : (s6Step206ExitGvRow.sign::s6Step206ExitGvRow.payload).toFinset⊆s6Step206ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step206ExitGvBefore (fun q => (0≤q ∧ q<422) ∨ (423≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206ExitGv_retired : s6Step206ExitGvBefore.retireSet s6Step206ExitGvExtra.toFinset=s6Step206ExitGvAfter := by
  unfold Arena.retireSet s6Step206ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step206ExitGvBefore,s6Step206ExitFvAfter,s6Step206ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step206ExitGv_checked : planRowResizeLog s6Step206ExitGvBefore s6Step206ExitGvRow 118 []=
    some (s6Step206ExitGvAfter,s6Step206ExitGvOut,shrinkRow 775 s6Step206ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step206ExitGvBefore s6Step206ExitGvRow 118 s6Step206ExitGv_distinct s6Step206ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step206ExitGvRow.payload.take 118) s6Step206ExitGvRow.sign=s6Step206ExitGvOut := by decide +kernel
  have hi : s6Step206ExitGvRow.payload.drop 118=s6Step206ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step206ExitGv_retired] at result
  exact result

private theorem s6Step206ExitBank_rows : planWindowRowsLog s6Step206ExitGBefore [(s6Step206ExitGRow,166),(s6Step206ExitFRow,166),(s6Step206ExitFvRow,118),(s6Step206ExitGvRow,118)] [[],[],[],[]]=
    some (s6Step206ExitGvAfter,[s6Step206ExitGOut,s6Step206ExitFOut,s6Step206ExitFvOut,s6Step206ExitGvOut],(shrinkRow 777 s6Step206ExitGExtra ++ (shrinkRow 795 s6Step206ExitFExtra ++ (shrinkRow 776 s6Step206ExitFvExtra ++ (shrinkRow 775 s6Step206ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step206ExitGvAfter [] []=some (s6Step206ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step206ExitGvBefore s6Step206ExitGvAfter s6Step206ExitGvAfter
    s6Step206ExitGvRow s6Step206ExitGvOut 118 [] [] [] []
    (shrinkRow 775 s6Step206ExitGvExtra) ([]) s6Step206ExitGv_Incoming s6Step206ExitGv_checked h4 s6Step206ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step206ExitFvBefore s6Step206ExitFvAfter s6Step206ExitGvAfter
    s6Step206ExitFvRow s6Step206ExitFvOut 118 [] [(s6Step206ExitGvRow,118)] [[]] [s6Step206ExitGvOut]
    (shrinkRow 776 s6Step206ExitFvExtra) ((shrinkRow 775 s6Step206ExitGvExtra ++ [])) s6Step206ExitFv_Incoming s6Step206ExitFv_checked h3 s6Step206ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step206ExitFBefore s6Step206ExitFAfter s6Step206ExitGvAfter
    s6Step206ExitFRow s6Step206ExitFOut 166 [] [(s6Step206ExitFvRow,118),(s6Step206ExitGvRow,118)] [[],[]] [s6Step206ExitFvOut,s6Step206ExitGvOut]
    (shrinkRow 795 s6Step206ExitFExtra) ((shrinkRow 776 s6Step206ExitFvExtra ++ (shrinkRow 775 s6Step206ExitGvExtra ++ []))) s6Step206ExitF_Incoming s6Step206ExitF_checked h2 s6Step206ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step206ExitGBefore s6Step206ExitGAfter s6Step206ExitGvAfter
    s6Step206ExitGRow s6Step206ExitGOut 166 [] [(s6Step206ExitFRow,166),(s6Step206ExitFvRow,118),(s6Step206ExitGvRow,118)] [[],[],[]] [s6Step206ExitFOut,s6Step206ExitFvOut,s6Step206ExitGvOut]
    (shrinkRow 777 s6Step206ExitGExtra) ((shrinkRow 795 s6Step206ExitFExtra ++ (shrinkRow 776 s6Step206ExitFvExtra ++ (shrinkRow 775 s6Step206ExitGvExtra ++ [])))) s6Step206ExitG_Incoming s6Step206ExitG_checked h1 s6Step206ExitG_Outgoing
  exact h0

private theorem s6Step206ExitBank_checked : compileHmrBankResizeLog .exit s6Step206ExitGBefore ⟨s6Step206ExitFRow,s6Step206ExitGRow,s6Step206ExitFvRow,s6Step206ExitGvRow⟩ ⟨166,166,118,118⟩ [[],[],[],[]]=
    some (s6Step206ExitGvAfter,⟨s6Step206ExitFOut,s6Step206ExitGOut,s6Step206ExitFvOut,s6Step206ExitGvOut⟩,(shrinkRow 777 s6Step206ExitGExtra ++ (shrinkRow 795 s6Step206ExitFExtra ++ (shrinkRow 776 s6Step206ExitFvExtra ++ (shrinkRow 775 s6Step206ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step206ExitBank_rows]
  rfl

private theorem s6Step206Add0_apart : Disjoint s6Step206Add0Arena.live s6Step206Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step206Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206Add0_card : s6Step206Add0Arena.live.card=891 := by
  decide +kernel

private theorem s6Step206Add0_borrowed : s6Step206Add0Arena.checkBorrow (hmrHybridCount s6Step206Add0Arena s6Step206Add0B.length) s6Step206Add0Work=some s6Step206Add0During := by
  have len : s6Step206Add0Work.length=hmrHybridCount s6Step206Add0Arena s6Step206Add0B.length := by
    rw [hmrHybridCount,s6Step206Add0_card]
    decide +kernel
  have nd : s6Step206Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step206Add0Arena s6Step206Add0During s6Step206Add0Work.toFinset s6Step206Add0_bounded s6Step206Add0_apart rfl

private theorem s6Step206Add0_distinct : (822::867::825::(s6Step206Add0A++s6Step206Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206Add0_owned : (822::867::825::(s6Step206Add0A++s6Step206Add0B)).toFinset⊆s6Step206Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step206Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206Add0_checked : compileHmrHybridCinLog s6Step206Add0Arena 867 822 825 s6Step206Add0A s6Step206Add0B s6Step206Add0Work=some s6Step206Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step206Add0Arena s6Step206Add0During 867 822 825 s6Step206Add0A s6Step206Add0B s6Step206Add0Work
    (by decide +kernel) (by decide +kernel) s6Step206Add0_distinct
    (fun q hq => s6Step206Add0_owned (List.mem_toFinset.mpr hq)) s6Step206Add0_borrowed

private theorem s6Step206Add1_apart : Disjoint s6Step206Add1Arena.live s6Step206Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step206Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206Add1_card : s6Step206Add1Arena.live.card=891 := by
  decide +kernel

private theorem s6Step206Add1_borrowed : s6Step206Add1Arena.checkBorrow (hmrHybridCount s6Step206Add1Arena s6Step206Add1B.length) s6Step206Add1Work=some s6Step206Add1During := by
  have len : s6Step206Add1Work.length=hmrHybridCount s6Step206Add1Arena s6Step206Add1B.length := by
    rw [hmrHybridCount,s6Step206Add1_card]
    decide +kernel
  have nd : s6Step206Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step206Add1Arena s6Step206Add1During s6Step206Add1Work.toFinset s6Step206Add1_bounded s6Step206Add1_apart rfl

private theorem s6Step206Add1_distinct : (822::867::825::(s6Step206Add1A++s6Step206Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206Add1_owned : (822::867::825::(s6Step206Add1A++s6Step206Add1B)).toFinset⊆s6Step206Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step206Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206Add1_checked : compileHmrHybridCinLog s6Step206Add1Arena 867 822 825 s6Step206Add1A s6Step206Add1B s6Step206Add1Work=some s6Step206Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step206Add1Arena s6Step206Add1During 867 822 825 s6Step206Add1A s6Step206Add1B s6Step206Add1Work
    (by decide +kernel) (by decide +kernel) s6Step206Add1_distinct
    (fun q hq => s6Step206Add1_owned (List.mem_toFinset.mpr hq)) s6Step206Add1_borrowed

private theorem s6Step206F4_apart : Disjoint (s6Step206Add0A++s6Step206Add0B).toFinset (s6Step206Add1A++s6Step206Add1B).toFinset := by
  have nd : ((s6Step206Add0A++s6Step206Add0B)++(s6Step206Add1A++s6Step206Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step206F4_carry : s6Step206F4FlagArena.checkBorrow 1 [825]=some s6Step206Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step206F4FlagArena,s6Step206HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step206F4FlagArena,s6Step206HeadFvAfter,s6Step206Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step206F4_distinct : (807::867::822::825::((s6Step206Add0A++s6Step206Add1A)++(s6Step206Add0B++s6Step206Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206F4_flag : s6Step206HeadFvAfter.checkBorrow 1 [822]=some s6Step206F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step206HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step206F4_owned : (807::867::((s6Step206Add0A++s6Step206Add1A)++(s6Step206Add0B++s6Step206Add1B))).toFinset⊆s6Step206HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step206HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206F4_checked : compileHmrHybridF4Log s6Step206HeadFvAfter 807 867 s6Step206Add0A s6Step206Add0B s6Step206Add1A s6Step206Add1B [822] [825] s6Step206Add0Work s6Step206Add1Work=some s6Step206F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step206HeadFvAfter s6Step206F4FlagArena s6Step206Add0Arena s6Step206Add0During s6Step206Add1During 807 867
    s6Step206Add0A s6Step206Add0B s6Step206Add1A s6Step206Add1B [822] [825] s6Step206Add0Work s6Step206Add1Work
    (fun q hq => s6Step206F4_owned (List.mem_toFinset.mpr hq)) s6Step206F4_flag s6Step206F4_carry
    s6Step206F4_distinct s6Step206F4_apart s6Step206Add0_checked s6Step206Add1_checked

private theorem s6Step206Front_branch : s6Step206FrontSigmaArena.checkBorrow 1 [867]=some s6Step206HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step206FrontSigmaArena,s6Step206EntryGvAfter,s6Step206EntryFvAfter,arenaWires]
  · ext q
    simp only [s6Step206FrontSigmaArena,s6Step206EntryGvAfter,s6Step206EntryFvAfter,s6Step206HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step206Front_entry : HmrFrontEntryValid s6Step206EntryFBefore s6Step206FrontBank 167 118 ⟨166,166,118,118⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step206FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step206EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step206EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step206FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step206Front_sigma : s6Step206EntryGvAfter.checkBorrow 1 [807]=some s6Step206FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step206EntryGvAfter,s6Step206EntryFvAfter,arenaWires]
  · rfl

private def s6Step206HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206HeadFBefore : Arena := s6Step206HeadGAfter

private def s6Step206HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422],795⟩

private def s6Step206HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791],776⟩

private def s6Step206HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 855],777⟩

private def s6Step206HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877],775⟩

private theorem s6Step206HeadBank_incomingDistinct : ([s6Step206HeadGRow,s6Step206HeadFRow,s6Step206HeadGvRow,s6Step206HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206HeadF_Incoming : rowsOwned s6Step206HeadFBefore [s6Step206HeadFRow,s6Step206HeadGvRow,s6Step206HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step206HeadGRow,s6Step206HeadFRow,s6Step206HeadGvRow,s6Step206HeadFvRow] 1 s6Step206HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step206HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step206HeadBank_outgoingOwned : rowsOwned s6Step206HeadFvAfter [s6Step206HeadGOut,s6Step206HeadFOut,s6Step206HeadGvOut,s6Step206HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step206HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step206HeadF_Outgoing : rowsOwned s6Step206HeadFvAfter [s6Step206HeadFOut,s6Step206HeadGvOut,s6Step206HeadFvOut] :=
  hmrRows_owned_drop s6Step206HeadFvAfter [s6Step206HeadGOut,s6Step206HeadFOut,s6Step206HeadGvOut,s6Step206HeadFvOut] 1 s6Step206HeadBank_outgoingOwned

private theorem s6Step206HeadF_distinct : (s6Step206HeadFRow.sign::s6Step206HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206HeadF_owned : (s6Step206HeadFRow.sign::s6Step206HeadFRow.payload).toFinset⊆s6Step206HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step206HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206HeadF_reserved : s6Step206HeadFBefore.reserve s6Step206HeadFFresh.toFinset=some s6Step206HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step206HeadFFresh,arenaWires]
  · norm_num [s6Step206HeadFBefore,s6Step206HeadGAfter,s6Step206HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step206HeadFAfter,s6Step206HeadFBefore,s6Step206HeadGAfter,s6Step206HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step206HeadF_checked : planRowResizeLog s6Step206HeadFBefore s6Step206HeadFRow 168 s6Step206HeadFFresh=
    some (s6Step206HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 813],795⟩,growRow 795 s6Step206HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step206HeadFBefore s6Step206HeadFAfter s6Step206HeadFRow 168 s6Step206HeadFFresh
    s6Step206HeadF_distinct s6Step206HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step206HeadF_reserved
  have rowEq : WindowRow.mk (s6Step206HeadFRow.payload++s6Step206HeadFFresh) s6Step206HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 813],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step206HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step206HeadFvBefore : Arena := s6Step206HeadGvAfter

private theorem s6Step206HeadFv_Incoming : rowsOwned s6Step206HeadFvBefore [s6Step206HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step206HeadGRow,s6Step206HeadFRow,s6Step206HeadGvRow,s6Step206HeadFvRow] 3 s6Step206HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step206HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step206HeadFv_Outgoing : rowsOwned s6Step206HeadFvAfter [s6Step206HeadFvOut] :=
  hmrRows_owned_drop s6Step206HeadFvAfter [s6Step206HeadGOut,s6Step206HeadFOut,s6Step206HeadGvOut,s6Step206HeadFvOut] 3 s6Step206HeadBank_outgoingOwned

private theorem s6Step206HeadFv_distinct : (s6Step206HeadFvRow.sign::s6Step206HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206HeadFv_owned : (s6Step206HeadFvRow.sign::s6Step206HeadFvRow.payload).toFinset⊆s6Step206HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step206HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206HeadFv_reserved : s6Step206HeadFvBefore.reserve s6Step206HeadFvFresh.toFinset=some s6Step206HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step206HeadFvFresh,arenaWires]
  · norm_num [s6Step206HeadFvBefore,s6Step206HeadGvAfter,s6Step206HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step206HeadFvAfter,s6Step206HeadFvBefore,s6Step206HeadGvAfter,s6Step206HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step206HeadFv_checked : planRowResizeLog s6Step206HeadFvBefore s6Step206HeadFvRow 119 s6Step206HeadFvFresh=
    some (s6Step206HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 802],776⟩,growRow 776 s6Step206HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step206HeadFvBefore s6Step206HeadFvAfter s6Step206HeadFvRow 119 s6Step206HeadFvFresh
    s6Step206HeadFv_distinct s6Step206HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step206HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step206HeadFvRow.payload++s6Step206HeadFvFresh) s6Step206HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 802],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step206HeadG_Incoming : rowsOwned s6Step206HeadGBefore [s6Step206HeadGRow,s6Step206HeadFRow,s6Step206HeadGvRow,s6Step206HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step206HeadGRow,s6Step206HeadFRow,s6Step206HeadGvRow,s6Step206HeadFvRow] 0 s6Step206HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step206HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step206HeadG_Outgoing : rowsOwned s6Step206HeadFvAfter [s6Step206HeadGOut,s6Step206HeadFOut,s6Step206HeadGvOut,s6Step206HeadFvOut] :=
  hmrRows_owned_drop s6Step206HeadFvAfter [s6Step206HeadGOut,s6Step206HeadFOut,s6Step206HeadGvOut,s6Step206HeadFvOut] 0 s6Step206HeadBank_outgoingOwned

private theorem s6Step206HeadG_distinct : (s6Step206HeadGRow.sign::s6Step206HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206HeadG_owned : (s6Step206HeadGRow.sign::s6Step206HeadGRow.payload).toFinset⊆s6Step206HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step206HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206HeadG_reserved : s6Step206HeadGBefore.reserve s6Step206HeadGFresh.toFinset=some s6Step206HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step206HeadGFresh,arenaWires]
  · norm_num [s6Step206HeadGBefore,s6Step206HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step206HeadGAfter,s6Step206HeadGBefore,s6Step206HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step206HeadG_checked : planRowResizeLog s6Step206HeadGBefore s6Step206HeadGRow 168 s6Step206HeadGFresh=
    some (s6Step206HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 855, 838],777⟩,growRow 777 s6Step206HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step206HeadGBefore s6Step206HeadGAfter s6Step206HeadGRow 168 s6Step206HeadGFresh
    s6Step206HeadG_distinct s6Step206HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step206HeadG_reserved
  have rowEq : WindowRow.mk (s6Step206HeadGRow.payload++s6Step206HeadGFresh) s6Step206HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 855, 838],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step206HeadGvBefore : Arena := s6Step206HeadFAfter

private theorem s6Step206HeadGv_Incoming : rowsOwned s6Step206HeadGvBefore [s6Step206HeadGvRow,s6Step206HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step206HeadGRow,s6Step206HeadFRow,s6Step206HeadGvRow,s6Step206HeadFvRow] 2 s6Step206HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step206HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step206HeadGv_Outgoing : rowsOwned s6Step206HeadFvAfter [s6Step206HeadGvOut,s6Step206HeadFvOut] :=
  hmrRows_owned_drop s6Step206HeadFvAfter [s6Step206HeadGOut,s6Step206HeadFOut,s6Step206HeadGvOut,s6Step206HeadFvOut] 2 s6Step206HeadBank_outgoingOwned

private theorem s6Step206HeadGv_distinct : (s6Step206HeadGvRow.sign::s6Step206HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step206HeadGv_owned : (s6Step206HeadGvRow.sign::s6Step206HeadGvRow.payload).toFinset⊆s6Step206HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step206HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step206HeadGv_reserved : s6Step206HeadGvBefore.reserve s6Step206HeadGvFresh.toFinset=some s6Step206HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step206HeadGvFresh,arenaWires]
  · norm_num [s6Step206HeadGvBefore,s6Step206HeadFAfter,s6Step206HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step206HeadGvAfter,s6Step206HeadGvBefore,s6Step206HeadFAfter,s6Step206HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step206HeadGv_checked : planRowResizeLog s6Step206HeadGvBefore s6Step206HeadGvRow 119 s6Step206HeadGvFresh=
    some (s6Step206HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780],775⟩,growRow 775 s6Step206HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step206HeadGvBefore s6Step206HeadGvAfter s6Step206HeadGvRow 119 s6Step206HeadGvFresh
    s6Step206HeadGv_distinct s6Step206HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step206HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step206HeadGvRow.payload++s6Step206HeadGvFresh) s6Step206HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step206HeadBank_rows : planWindowRowsLog s6Step206HeadGBefore [(s6Step206HeadGRow,168),(s6Step206HeadFRow,168),(s6Step206HeadGvRow,119),(s6Step206HeadFvRow,119)] [s6Step206HeadGFresh,s6Step206HeadFFresh,s6Step206HeadGvFresh,s6Step206HeadFvFresh]=
    some (s6Step206HeadFvAfter,[s6Step206HeadGOut,s6Step206HeadFOut,s6Step206HeadGvOut,s6Step206HeadFvOut],(growRow 777 s6Step206HeadGFresh ++ (growRow 795 s6Step206HeadFFresh ++ (growRow 775 s6Step206HeadGvFresh ++ (growRow 776 s6Step206HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step206HeadFvAfter [] []=some (s6Step206HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step206HeadFvBefore s6Step206HeadFvAfter s6Step206HeadFvAfter
    s6Step206HeadFvRow s6Step206HeadFvOut 119 s6Step206HeadFvFresh [] [] []
    (growRow 776 s6Step206HeadFvFresh) ([]) s6Step206HeadFv_Incoming s6Step206HeadFv_checked h4 s6Step206HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step206HeadGvBefore s6Step206HeadGvAfter s6Step206HeadFvAfter
    s6Step206HeadGvRow s6Step206HeadGvOut 119 s6Step206HeadGvFresh [(s6Step206HeadFvRow,119)] [s6Step206HeadFvFresh] [s6Step206HeadFvOut]
    (growRow 775 s6Step206HeadGvFresh) ((growRow 776 s6Step206HeadFvFresh ++ [])) s6Step206HeadGv_Incoming s6Step206HeadGv_checked h3 s6Step206HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step206HeadFBefore s6Step206HeadFAfter s6Step206HeadFvAfter
    s6Step206HeadFRow s6Step206HeadFOut 168 s6Step206HeadFFresh [(s6Step206HeadGvRow,119),(s6Step206HeadFvRow,119)] [s6Step206HeadGvFresh,s6Step206HeadFvFresh] [s6Step206HeadGvOut,s6Step206HeadFvOut]
    (growRow 795 s6Step206HeadFFresh) ((growRow 775 s6Step206HeadGvFresh ++ (growRow 776 s6Step206HeadFvFresh ++ []))) s6Step206HeadF_Incoming s6Step206HeadF_checked h2 s6Step206HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step206HeadGBefore s6Step206HeadGAfter s6Step206HeadFvAfter
    s6Step206HeadGRow s6Step206HeadGOut 168 s6Step206HeadGFresh [(s6Step206HeadFRow,168),(s6Step206HeadGvRow,119),(s6Step206HeadFvRow,119)] [s6Step206HeadFFresh,s6Step206HeadGvFresh,s6Step206HeadFvFresh] [s6Step206HeadFOut,s6Step206HeadGvOut,s6Step206HeadFvOut]
    (growRow 777 s6Step206HeadGFresh) ((growRow 795 s6Step206HeadFFresh ++ (growRow 775 s6Step206HeadGvFresh ++ (growRow 776 s6Step206HeadFvFresh ++ [])))) s6Step206HeadG_Incoming s6Step206HeadG_checked h1 s6Step206HeadG_Outgoing
  exact h0

private theorem s6Step206HeadBank_checked : compileHmrBankResizeLog .headroom s6Step206HeadGBefore ⟨s6Step206HeadFRow,s6Step206HeadGRow,s6Step206HeadFvRow,s6Step206HeadGvRow⟩ ⟨168,168,119,119⟩ [s6Step206HeadGFresh,s6Step206HeadFFresh,s6Step206HeadGvFresh,s6Step206HeadFvFresh]=
    some (s6Step206HeadFvAfter,⟨s6Step206HeadFOut,s6Step206HeadGOut,s6Step206HeadFvOut,s6Step206HeadGvOut⟩,(growRow 777 s6Step206HeadGFresh ++ (growRow 795 s6Step206HeadFFresh ++ (growRow 775 s6Step206HeadGvFresh ++ (growRow 776 s6Step206HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step206HeadBank_rows]
  rfl

private theorem s6Step206Front_checked : compileHmrSourceFrontLog s6Step206EntryFBefore s6Step206FrontBank 167 118 ⟨166,166,118,118⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step206FrontLog=some s6Step206FrontPlan := by
  have pairEq : s6Step206FrontPair=⟨s6Step206HeadFRow,s6Step206HeadGRow,s6Step206HeadFvRow,s6Step206HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step206FrontHead=⟨s6Step206ExitFRow,s6Step206ExitGRow,s6Step206ExitFvRow,s6Step206ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step206Add0A=s6Step206FrontHead.f.wires := by decide +kernel
  have gEq : s6Step206Add0B=s6Step206FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step206Add1A=s6Step206FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step206Add1B=s6Step206FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step206EntryFBefore s6Step206FrontBank 167 118 ⟨166,166,118,118⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step206FrontLog s6Step206FrontPlan
  · exact s6Step206Front_entry
  · exact s6Step206EntryBank_checked
  · exact s6Step206Front_sigma
  · rfl
  · exact s6Step206Front_branch
  · rfl
  · simpa only [s6Step206FrontPlan,pairEq] using s6Step206HeadBank_checked
  · simpa only [s6Step206FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step206F4_checked
  · exact s6Step206Counter_checked
  · rfl
  · simpa only [s6Step206FrontPlan,headEq] using s6Step206ExitBank_checked

private theorem s6Step206Complete_explicit_checked : compileHmrEarlyStepLog s6Step206EntryFBefore s6Step206FrontBank 167 118 ⟨166,166,118,118⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step206CompleteLog=some s6Step206CompletePlan := by
  let Q := s6Step206EarlyControlPlan
  have hq := s6Step206EarlyControl_plan_checked
  have fv1 : s6Step206CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step206CompleteOut.fv.payload[2]?.getD s6Step206CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step206CompleteOut.fv.payload[3]?.getD s6Step206CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step206CompleteOut.fv.payload[4]?.getD s6Step206CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step206EntryFBefore s6Step206EarlyControlArena s6Step206FrontBank 167 118 ⟨166,166,118,118⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step206CompleteLog s6Step206FrontPlan Q
    s6Step206Front_checked s6Step206Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step206Complete_owned s6Step206Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step206EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 807 s6Step206CompleteOut.fv.second (s6Step206CompleteOut.fv.payload[2]?.getD s6Step206CompleteOut.fv.sign) (s6Step206CompleteOut.fv.payload[3]?.getD s6Step206CompleteOut.fv.sign) (s6Step206CompleteOut.fv.payload[4]?.getD s6Step206CompleteOut.fv.sign) 867 47 s6Step206EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep206Arena : Arena := s6Step206EntryFBefore
def s6PrivateStep206Bank : WindowBank := s6Step206FrontBank
def s6PrivateStep206Spec : HmrSourceWalkStepLog := ⟨167,118,⟨166,166,118,118⟩,47,.early s6Step206CompleteLog⟩
def s6PrivateStep206Plan : HmrSourceStepPlan := .early s6Step206CompletePlan
theorem s6PrivateStep206_source : s6PrivateStep206Spec=s6ObservedLogs192[14] := rfl
theorem s6PrivateStep206_checked : compileHmrSourceStepLog s6PrivateStep206Arena s6PrivateStep206Bank
    s6PrivateStep206Spec.fgWidth s6PrivateStep206Spec.vWidth s6PrivateStep206Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 206 s6PrivateStep206Spec.need none s6PrivateStep206Spec.log=some s6PrivateStep206Plan := by
  change compileHmrSourceStepLog s6Step206EntryFBefore s6Step206FrontBank 167 118 ⟨166,166,118,118⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 206 47 none (.early s6Step206CompleteLog)=some (.early s6Step206CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 206<498)]
  rw [s6Step206Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
