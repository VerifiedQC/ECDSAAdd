import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep202
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

private def s6Step204CompleteMoves : List (Wire × Wire) := [(855,423)]

private def s6Step204EarlyControlLog : HmrEarlyControlLog := ⟨[855, 802, 780, 867, 813],[822],[825],[869, 786, 810, 809, 817, 804],[]⟩

private def s6Step204FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [867], [], []],[[813], [780], [802], [838]],[[], [], [], []]⟩,[791],[877],[822],[825],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786]⟩

private def s6Step204CompleteLog : HmrEarlyStepLog := ⟨s6Step204FrontLog,s6Step204CompleteMoves,s6Step204EarlyControlLog⟩

private def s6Step204ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422],795⟩

private def s6Step204ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 838],776⟩

private def s6Step204ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166],777⟩

private def s6Step204ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩

private def s6Step204FrontOut : WindowBank := ⟨s6Step204ExitFOut,s6Step204ExitGOut,s6Step204ExitFvOut,s6Step204ExitGvOut⟩

private def s6Step204CompleteOut : WindowBank := s6Step204FrontOut.repacked s6Step204CompleteMoves

private def s6Step204EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step204EarlyControlPositiveArena,[822],s6Step204EarlyControlEqualityArena,[825],⟨⟨791,false⟩,[⟨⟨822,false⟩,825⟩]⟩⟩

private def s6Step204EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,855⟩,⟨⟨772,false⟩,802⟩,⟨⟨771,false⟩,780⟩,⟨⟨770,false⟩,867⟩,⟨⟨769,false⟩,813⟩]⟩

private def s6Step204EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step204EarlyControlZeroArena,s6Step204EarlyControlZeroPlan,s6Step204EarlyControlClassPlan,s6Step204EarlyControlFlagArena,s6Step204EarlyControlFittedArena,s6Step204EarlyControlHistoryArena,s6Step204EarlyControlSigmaArena,s6Step204EarlyControlOutputArena,s6Step204EarlyControlLog⟩

private def s6Step204CounterWork : List Wire := [822, 825, 869, 786]

private theorem s6Step204Counter_bounded : s6Step204CounterWork.toFinset⊆arenaWires := by norm_num [s6Step204CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step204HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204CounterDuring : Arena := ⟨s6Step204HeadFvAfter.live∪s6Step204CounterWork.toFinset,Finset.union_subset s6Step204HeadFvAfter.bounded s6Step204Counter_bounded⟩

private def s6Step204EntryFFresh : List Wire := []

private def s6Step204EntryFvFresh : List Wire := []

private def s6Step204EntryGFresh : List Wire := [867]

private def s6Step204EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204EntryGvAfter : Arena := s6Step204EntryGAfter

private def s6Step204EntryGvFresh : List Wire := []

private def s6Step204ExitFExtra : List Wire := [423, 780]

private def s6Step204ExitGExtra : List Wire := [867, 813]

private def s6Step204ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<423) ∨ (424≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204ExitGvExtra : List Wire := [802]

private def s6Step204Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204Add0Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step204Add0_bounded : s6Step204Add0Work.toFinset⊆arenaWires := by
  have h : s6Step204Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step204Add0During : Arena := ⟨s6Step204Add0Arena.live∪s6Step204Add0Work.toFinset,Finset.union_subset s6Step204Add0Arena.bounded s6Step204Add0_bounded⟩

private def s6Step204Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204Add1Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step204Add1_bounded : s6Step204Add1Work.toFinset⊆arenaWires := by
  have h : s6Step204Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step204Add1During : Arena := ⟨s6Step204Add1Arena.live∪s6Step204Add1Work.toFinset,Finset.union_subset s6Step204Add1Arena.bounded s6Step204Add1_bounded⟩

private def s6Step204F4FlagArena : Arena := ⟨s6Step204HeadFvAfter.live∪{822},Finset.union_subset s6Step204HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step204F4Plan : HmrHybridF4Plan := ⟨s6Step204F4FlagArena,[822],s6Step204Add0Arena,[825],s6Step204Add0During,s6Step204Add0Work,s6Step204Add1During,s6Step204Add1Work⟩

private def s6Step204HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 780],795⟩

private def s6Step204HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 838],776⟩

private def s6Step204HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 867, 813],777⟩

private def s6Step204HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 802],775⟩

private def s6Step204FrontHead : WindowBank := ⟨s6Step204HeadFOut,s6Step204HeadGOut,s6Step204HeadFvOut,s6Step204HeadGvOut⟩

private def s6Step204EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423],795⟩

private def s6Step204EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903],776⟩

private def s6Step204EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 867],777⟩

private def s6Step204EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩

private def s6Step204FrontPair : WindowBank := ⟨s6Step204EntryFOut,s6Step204EntryGOut,s6Step204EntryFvOut,s6Step204EntryGvOut⟩

private def s6Step204FrontSigmaArena : Arena := ⟨s6Step204EntryGvAfter.live∪{791},Finset.union_subset s6Step204EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step204HeadFFresh : List Wire := [780]

private def s6Step204HeadFvFresh : List Wire := [838]

private def s6Step204HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204HeadGFresh : List Wire := [813]

private def s6Step204HeadGvFresh : List Wire := [802]

private def s6Step204FrontPlan : HmrSourceFront := ⟨s6Step204EntryGvAfter,s6Step204FrontPair,(growRow 795 s6Step204EntryFFresh ++ (growRow 777 s6Step204EntryGFresh ++ (growRow 776 s6Step204EntryFvFresh ++ (growRow 775 s6Step204EntryGvFresh ++ [])))),s6Step204FrontSigmaArena,[791],s6Step204HeadGBefore,[877],
  s6Step204HeadFvAfter,s6Step204FrontHead,(growRow 777 s6Step204HeadGFresh ++ (growRow 795 s6Step204HeadFFresh ++ (growRow 775 s6Step204HeadGvFresh ++ (growRow 776 s6Step204HeadFvFresh ++ [])))),s6Step204F4Plan,s6Step204CounterDuring,s6Step204CounterWork,s6Step204ExitGvAfter,s6Step204FrontOut,(shrinkRow 777 s6Step204ExitGExtra ++ (shrinkRow 795 s6Step204ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step204ExitGvExtra ++ []))))⟩

private def s6Step204CompletePlan : HmrEarlyStepPlan := ⟨s6Step204FrontPlan,s6Step204EarlyControlArena,s6Step204EarlyControlPlan,s6Step204CompleteMoves⟩

private theorem s6Step204Complete_apart : List.Disjoint (s6Step204CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [791, 877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step204CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[791, 877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step204Complete_owned : (s6Step204CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step204EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step204EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step204CompleteMoveArena : Arena := ⟨s6Step204ExitGvAfter.live∪{423},Finset.union_subset s6Step204ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step204Complete_repack : s6Step204ExitGvAfter.checkRepack s6Step204CompleteMoves=some s6Step204EarlyControlArena := by
  have owned : 855∈s6Step204ExitGvAfter.live := by norm_num [s6Step204ExitGvAfter,arenaWires]
  have reserve : s6Step204ExitGvAfter.reserve {423}=some s6Step204CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step204ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step204CompleteMoveArena.retireSet {855}=s6Step204EarlyControlArena := by
    unfold Arena.retireSet s6Step204EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step204CompleteMoveArena,s6Step204ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step204CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step204CompleteMoveArena.retireSet {855}).checkRepack []=some s6Step204EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step204EarlyControl_branchOwned : ([877] : List Wire).toFinset⊆s6Step204EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step204EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204EarlyControl_branch : compileHmrBranchRetirement s6Step204EarlyControlSigmaArena 877=some s6Step204EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step204EarlyControl_branchOwned
  · ext q
    simp [s6Step204EarlyControlOutputArena,s6Step204EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step204EarlyControl_classEqualityBorrow : s6Step204EarlyControlPositiveArena.checkBorrow (([791, 822] : List Wire).length-1) s6Step204EarlyControlLog.classWork=some s6Step204EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step204EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step204EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step204EarlyControlEqualityArena,s6Step204EarlyControlPositiveArena,s6Step204EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step204EarlyControl_classEqualityOwned : ([791, 822] : List Wire).toFinset⊆s6Step204EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step204EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204EarlyControl_classEquality : compileHmrEqualityLog s6Step204EarlyControlPositiveArena [791, 822] 0 s6Step204EarlyControlLog.classWork=some (s6Step204EarlyControlEqualityArena,s6Step204EarlyControlLog.classWork,s6Step204EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step204EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step204EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step204EarlyControl_classOwned : ([769, 813, 791] : List Wire).toFinset⊆s6Step204EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step204EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204EarlyControl_positiveBorrow : s6Step204EarlyControlZeroArena.checkBorrow (1) s6Step204EarlyControlLog.positiveWork=some s6Step204EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step204EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step204EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step204EarlyControlPositiveArena,s6Step204EarlyControlZeroArena,s6Step204EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step204EarlyControl_class : compileHmrSourceClassLog s6Step204EarlyControlZeroArena false 769 s6Step204EarlyControlZeroPlan.top 0 791 s6Step204EarlyControlLog.positiveWork s6Step204EarlyControlLog.classWork=some s6Step204EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step204EarlyControlClassPlan s6Step204EarlyControlZeroArena false 769 s6Step204EarlyControlZeroPlan.top 0 791
  constructor
  · decide +kernel
  · exact s6Step204EarlyControl_classOwned
  · exact s6Step204EarlyControl_positiveBorrow
  · exact s6Step204EarlyControl_classEquality

private theorem s6Step204EarlyControl_entryRecordOwned : ([877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step204EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step204EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204EarlyControl_entrySigmaOwned : ([791, 254] : List Wire).toFinset⊆s6Step204EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step204EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204EarlyControl_fitBorrow : s6Step204EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step204EarlyControlLog.recordFresh=some s6Step204EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step204EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step204EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step204EarlyControlFittedArena,s6Step204EarlyControlFlagArena,s6Step204EarlyControlLog,arenaWires]

private theorem s6Step204EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step204EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step204EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204EarlyControl_fit : compileHmrRecordGrowLog s6Step204EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step204EarlyControlLog.recordFresh=some s6Step204EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step204EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step204EarlyControl_fitBorrow

private theorem s6Step204EarlyControl_flagsBorrow : s6Step204EarlyControlEqualityArena.checkBorrow (6) s6Step204EarlyControlLog.flagWork=some s6Step204EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step204EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step204EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step204EarlyControlFlagArena,s6Step204EarlyControlEqualityArena,s6Step204EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step204EarlyControl_flagsOwned : ([825, 253, 252, 251] : List Wire).toFinset⊆s6Step204EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step204EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204EarlyControl_flags : compileHmrFlagsLog s6Step204EarlyControlClassPlan.equalityArena s6Step204EarlyControlClassPlan.equality.top 253 252 251 s6Step204EarlyControlLog.flagWork=some s6Step204EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step204EarlyControl_flagsOwned⟩
  · exact s6Step204EarlyControl_flagsBorrow

private theorem s6Step204EarlyControl_historyBorrow : s6Step204EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step204EarlyControlLog.recordFresh=some s6Step204EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step204EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step204EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step204EarlyControlHistoryArena,s6Step204EarlyControlArena,s6Step204EarlyControlLog,arenaWires]

private theorem s6Step204EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step204EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step204EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204EarlyControl_history : compileHmrRecordGrowLog s6Step204EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step204EarlyControlLog.recordFresh=some s6Step204EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step204EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step204EarlyControl_historyBorrow

private theorem s6Step204EarlyControl_sigmaOwned : ([254, 791] : List Wire).toFinset⊆s6Step204EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step204EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204EarlyControl_sigmaReleaseOwned : ([791] : List Wire).toFinset⊆s6Step204EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step204EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204EarlyControl_sigmaRelease : s6Step204EarlyControlHistoryArena.release {791} (fun _ => false)=some s6Step204EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step204EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step204EarlyControlSigmaArena,s6Step204EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step204EarlyControl_sigma : compileHmrSigmaDropLog s6Step204EarlyControlHistoryArena false 0 0 254 791 []=some s6Step204EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step204EarlyControl_sigmaOwned⟩
  · exact s6Step204EarlyControl_sigmaRelease

private theorem s6Step204EarlyControl_zeroBorrow : s6Step204EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step204EarlyControlLog.zeroWork=some s6Step204EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step204EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step204EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step204EarlyControlZeroArena,s6Step204EarlyControlArena,s6Step204EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step204EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step204EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step204EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204EarlyControl_zero : compileHmrEqualityLog s6Step204EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step204EarlyControlLog.zeroWork=some (s6Step204EarlyControlZeroArena,s6Step204EarlyControlLog.zeroWork,s6Step204EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step204EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step204EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step204EarlyControl_logged : s6Step204EarlyControlPlan.Logged s6Step204EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 791 254 253 252 251 877 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step204EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step204EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step204EarlyControl_zero
  · exact s6Step204EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step204EarlyControl_flags
  · exact s6Step204EarlyControl_fit
  · exact s6Step204EarlyControl_history
  · exact s6Step204EarlyControl_sigma
  · exact s6Step204EarlyControl_branch

private theorem s6Step204EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step204EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 791 254 253 252 251 877 47 s6Step204EarlyControlLog=some s6Step204EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step204EarlyControlPlan s6Step204EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 791 254 253 252 251 877 47 s6Step204EarlyControl_logged

private def s6Step204EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423],795⟩

private def s6Step204EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903],776⟩

private def s6Step204EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166],777⟩

private def s6Step204EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩

private def s6Step204FrontBank : WindowBank := ⟨s6Step204EntryFRow,s6Step204EntryGRow,s6Step204EntryFvRow,s6Step204EntryGvRow⟩

private def s6Step204Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 780, 795]

private def s6Step204Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 867, 813, 777]

private def s6Step204Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 838, 776]

private def s6Step204Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 802, 775]

private theorem s6Step204Counter_apart : Disjoint s6Step204HeadFvAfter.live s6Step204CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step204HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204Counter_borrowed : s6Step204HeadFvAfter.checkBorrow 4 s6Step204CounterWork=some s6Step204CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step204HeadFvAfter s6Step204CounterDuring s6Step204CounterWork.toFinset s6Step204Counter_bounded s6Step204Counter_apart rfl

private theorem s6Step204Counter_owned : (791::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step204HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step204HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204Counter_checked : compileHmrCounterStepLog s6Step204HeadFvAfter true 791 [774, 773, 772, 771, 770, 769] s6Step204CounterWork=some s6Step204CounterDuring := by
  have owned : ∀q∈791::[774, 773, 772, 771, 770, 769],q∈s6Step204HeadFvAfter.live := fun q hq => s6Step204Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step204Counter_borrowed

private def s6Step204EntryFAfter : Arena := s6Step204EntryFBefore

private theorem s6Step204EntryBank_incomingDistinct : ([s6Step204EntryFRow,s6Step204EntryGRow,s6Step204EntryFvRow,s6Step204EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204EntryF_Incoming : rowsOwned s6Step204EntryFBefore [s6Step204EntryFRow,s6Step204EntryGRow,s6Step204EntryFvRow,s6Step204EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step204EntryFRow,s6Step204EntryGRow,s6Step204EntryFvRow,s6Step204EntryGvRow] 0 s6Step204EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step204EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step204EntryBank_outgoingOwned : rowsOwned s6Step204EntryGvAfter [s6Step204EntryFOut,s6Step204EntryGOut,s6Step204EntryFvOut,s6Step204EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step204EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step204EntryF_Outgoing : rowsOwned s6Step204EntryGvAfter [s6Step204EntryFOut,s6Step204EntryGOut,s6Step204EntryFvOut,s6Step204EntryGvOut] :=
  hmrRows_owned_drop s6Step204EntryGvAfter [s6Step204EntryFOut,s6Step204EntryGOut,s6Step204EntryFvOut,s6Step204EntryGvOut] 0 s6Step204EntryBank_outgoingOwned

private theorem s6Step204EntryF_distinct : (s6Step204EntryFRow.sign::s6Step204EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204EntryF_owned : (s6Step204EntryFRow.sign::s6Step204EntryFRow.payload).toFinset⊆s6Step204EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step204EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204EntryF_reserved : s6Step204EntryFBefore.reserve s6Step204EntryFFresh.toFinset=some s6Step204EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step204EntryFFresh,arenaWires]
  · norm_num [s6Step204EntryFBefore,s6Step204EntryFFresh,arenaWires]
  · simp only [s6Step204EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step204EntryF_checked : planRowResizeLog s6Step204EntryFBefore s6Step204EntryFRow 168 s6Step204EntryFFresh=
    some (s6Step204EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423],795⟩,growRow 795 s6Step204EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step204EntryFBefore s6Step204EntryFAfter s6Step204EntryFRow 168 s6Step204EntryFFresh
    s6Step204EntryF_distinct s6Step204EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step204EntryF_reserved
  have rowEq : WindowRow.mk (s6Step204EntryFRow.payload++s6Step204EntryFFresh) s6Step204EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step204EntryFvAfter : Arena := s6Step204EntryGAfter

private def s6Step204EntryFvBefore : Arena := s6Step204EntryGAfter

private theorem s6Step204EntryFv_Incoming : rowsOwned s6Step204EntryFvBefore [s6Step204EntryFvRow,s6Step204EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step204EntryFRow,s6Step204EntryGRow,s6Step204EntryFvRow,s6Step204EntryGvRow] 2 s6Step204EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step204EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step204EntryFv_Outgoing : rowsOwned s6Step204EntryGvAfter [s6Step204EntryFvOut,s6Step204EntryGvOut] :=
  hmrRows_owned_drop s6Step204EntryGvAfter [s6Step204EntryFOut,s6Step204EntryGOut,s6Step204EntryFvOut,s6Step204EntryGvOut] 2 s6Step204EntryBank_outgoingOwned

private theorem s6Step204EntryFv_distinct : (s6Step204EntryFvRow.sign::s6Step204EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204EntryFv_owned : (s6Step204EntryFvRow.sign::s6Step204EntryFvRow.payload).toFinset⊆s6Step204EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step204EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204EntryFv_reserved : s6Step204EntryFvBefore.reserve s6Step204EntryFvFresh.toFinset=some s6Step204EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step204EntryFvFresh,arenaWires]
  · norm_num [s6Step204EntryFvBefore,s6Step204EntryGAfter,s6Step204EntryFvFresh,arenaWires]
  · simp only [s6Step204EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step204EntryFv_checked : planRowResizeLog s6Step204EntryFvBefore s6Step204EntryFvRow 117 s6Step204EntryFvFresh=
    some (s6Step204EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903],776⟩,growRow 776 s6Step204EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step204EntryFvBefore s6Step204EntryFvAfter s6Step204EntryFvRow 117 s6Step204EntryFvFresh
    s6Step204EntryFv_distinct s6Step204EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step204EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step204EntryFvRow.payload++s6Step204EntryFvFresh) s6Step204EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step204EntryGBefore : Arena := s6Step204EntryFBefore

private theorem s6Step204EntryG_Incoming : rowsOwned s6Step204EntryGBefore [s6Step204EntryGRow,s6Step204EntryFvRow,s6Step204EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step204EntryFRow,s6Step204EntryGRow,s6Step204EntryFvRow,s6Step204EntryGvRow] 1 s6Step204EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step204EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step204EntryG_Outgoing : rowsOwned s6Step204EntryGvAfter [s6Step204EntryGOut,s6Step204EntryFvOut,s6Step204EntryGvOut] :=
  hmrRows_owned_drop s6Step204EntryGvAfter [s6Step204EntryFOut,s6Step204EntryGOut,s6Step204EntryFvOut,s6Step204EntryGvOut] 1 s6Step204EntryBank_outgoingOwned

private theorem s6Step204EntryG_distinct : (s6Step204EntryGRow.sign::s6Step204EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204EntryG_owned : (s6Step204EntryGRow.sign::s6Step204EntryGRow.payload).toFinset⊆s6Step204EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step204EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204EntryG_reserved : s6Step204EntryGBefore.reserve s6Step204EntryGFresh.toFinset=some s6Step204EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step204EntryGFresh,arenaWires]
  · norm_num [s6Step204EntryGBefore,s6Step204EntryFBefore,s6Step204EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step204EntryGAfter,s6Step204EntryGBefore,s6Step204EntryFBefore,s6Step204EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step204EntryG_checked : planRowResizeLog s6Step204EntryGBefore s6Step204EntryGRow 168 s6Step204EntryGFresh=
    some (s6Step204EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 867],777⟩,growRow 777 s6Step204EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step204EntryGBefore s6Step204EntryGAfter s6Step204EntryGRow 168 s6Step204EntryGFresh
    s6Step204EntryG_distinct s6Step204EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step204EntryG_reserved
  have rowEq : WindowRow.mk (s6Step204EntryGRow.payload++s6Step204EntryGFresh) s6Step204EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 867],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step204EntryGvBefore : Arena := s6Step204EntryGAfter

private theorem s6Step204EntryGv_Incoming : rowsOwned s6Step204EntryGvBefore [s6Step204EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step204EntryFRow,s6Step204EntryGRow,s6Step204EntryFvRow,s6Step204EntryGvRow] 3 s6Step204EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step204EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step204EntryGv_Outgoing : rowsOwned s6Step204EntryGvAfter [s6Step204EntryGvOut] :=
  hmrRows_owned_drop s6Step204EntryGvAfter [s6Step204EntryFOut,s6Step204EntryGOut,s6Step204EntryFvOut,s6Step204EntryGvOut] 3 s6Step204EntryBank_outgoingOwned

private theorem s6Step204EntryGv_distinct : (s6Step204EntryGvRow.sign::s6Step204EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204EntryGv_owned : (s6Step204EntryGvRow.sign::s6Step204EntryGvRow.payload).toFinset⊆s6Step204EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step204EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204EntryGv_reserved : s6Step204EntryGvBefore.reserve s6Step204EntryGvFresh.toFinset=some s6Step204EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step204EntryGvFresh,arenaWires]
  · norm_num [s6Step204EntryGvBefore,s6Step204EntryGAfter,s6Step204EntryGvFresh,arenaWires]
  · simp only [s6Step204EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step204EntryGv_checked : planRowResizeLog s6Step204EntryGvBefore s6Step204EntryGvRow 117 s6Step204EntryGvFresh=
    some (s6Step204EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩,growRow 775 s6Step204EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step204EntryGvBefore s6Step204EntryGvAfter s6Step204EntryGvRow 117 s6Step204EntryGvFresh
    s6Step204EntryGv_distinct s6Step204EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step204EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step204EntryGvRow.payload++s6Step204EntryGvFresh) s6Step204EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step204EntryBank_rows : planWindowRowsLog s6Step204EntryFBefore [(s6Step204EntryFRow,168),(s6Step204EntryGRow,168),(s6Step204EntryFvRow,117),(s6Step204EntryGvRow,117)] [s6Step204EntryFFresh,s6Step204EntryGFresh,s6Step204EntryFvFresh,s6Step204EntryGvFresh]=
    some (s6Step204EntryGvAfter,[s6Step204EntryFOut,s6Step204EntryGOut,s6Step204EntryFvOut,s6Step204EntryGvOut],(growRow 795 s6Step204EntryFFresh ++ (growRow 777 s6Step204EntryGFresh ++ (growRow 776 s6Step204EntryFvFresh ++ (growRow 775 s6Step204EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step204EntryGvAfter [] []=some (s6Step204EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step204EntryGvBefore s6Step204EntryGvAfter s6Step204EntryGvAfter
    s6Step204EntryGvRow s6Step204EntryGvOut 117 s6Step204EntryGvFresh [] [] []
    (growRow 775 s6Step204EntryGvFresh) ([]) s6Step204EntryGv_Incoming s6Step204EntryGv_checked h4 s6Step204EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step204EntryFvBefore s6Step204EntryFvAfter s6Step204EntryGvAfter
    s6Step204EntryFvRow s6Step204EntryFvOut 117 s6Step204EntryFvFresh [(s6Step204EntryGvRow,117)] [s6Step204EntryGvFresh] [s6Step204EntryGvOut]
    (growRow 776 s6Step204EntryFvFresh) ((growRow 775 s6Step204EntryGvFresh ++ [])) s6Step204EntryFv_Incoming s6Step204EntryFv_checked h3 s6Step204EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step204EntryGBefore s6Step204EntryGAfter s6Step204EntryGvAfter
    s6Step204EntryGRow s6Step204EntryGOut 168 s6Step204EntryGFresh [(s6Step204EntryFvRow,117),(s6Step204EntryGvRow,117)] [s6Step204EntryFvFresh,s6Step204EntryGvFresh] [s6Step204EntryFvOut,s6Step204EntryGvOut]
    (growRow 777 s6Step204EntryGFresh) ((growRow 776 s6Step204EntryFvFresh ++ (growRow 775 s6Step204EntryGvFresh ++ []))) s6Step204EntryG_Incoming s6Step204EntryG_checked h2 s6Step204EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step204EntryFBefore s6Step204EntryFAfter s6Step204EntryGvAfter
    s6Step204EntryFRow s6Step204EntryFOut 168 s6Step204EntryFFresh [(s6Step204EntryGRow,168),(s6Step204EntryFvRow,117),(s6Step204EntryGvRow,117)] [s6Step204EntryGFresh,s6Step204EntryFvFresh,s6Step204EntryGvFresh] [s6Step204EntryGOut,s6Step204EntryFvOut,s6Step204EntryGvOut]
    (growRow 795 s6Step204EntryFFresh) ((growRow 777 s6Step204EntryGFresh ++ (growRow 776 s6Step204EntryFvFresh ++ (growRow 775 s6Step204EntryGvFresh ++ [])))) s6Step204EntryF_Incoming s6Step204EntryF_checked h1 s6Step204EntryF_Outgoing
  exact h0

private theorem s6Step204EntryBank_checked : compileHmrBankResizeLog .entry s6Step204EntryFBefore ⟨s6Step204EntryFRow,s6Step204EntryGRow,s6Step204EntryFvRow,s6Step204EntryGvRow⟩ ⟨168,168,117,117⟩ [s6Step204EntryFFresh,s6Step204EntryGFresh,s6Step204EntryFvFresh,s6Step204EntryGvFresh]=
    some (s6Step204EntryGvAfter,⟨s6Step204EntryFOut,s6Step204EntryGOut,s6Step204EntryFvOut,s6Step204EntryGvOut⟩,(growRow 795 s6Step204EntryFFresh ++ (growRow 777 s6Step204EntryGFresh ++ (growRow 776 s6Step204EntryFvFresh ++ (growRow 775 s6Step204EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step204EntryBank_rows]
  rfl

private def s6Step204ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<423) ∨ (424≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204ExitFBefore : Arena := s6Step204ExitGAfter

private def s6Step204ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 780],795⟩

private def s6Step204ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 838],776⟩

private def s6Step204ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 867, 813],777⟩

private def s6Step204ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 802],775⟩

private theorem s6Step204ExitBank_incomingDistinct : ([s6Step204ExitGRow,s6Step204ExitFRow,s6Step204ExitFvRow,s6Step204ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204ExitF_Incoming : rowsOwned s6Step204ExitFBefore [s6Step204ExitFRow,s6Step204ExitFvRow,s6Step204ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step204ExitGRow,s6Step204ExitFRow,s6Step204ExitFvRow,s6Step204ExitGvRow] 1 s6Step204ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step204ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step204ExitBank_outgoingOwned : rowsOwned s6Step204ExitGvAfter [s6Step204ExitGOut,s6Step204ExitFOut,s6Step204ExitFvOut,s6Step204ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step204ExitGvAfter (fun q => (0≤q ∧ q<423) ∨ (424≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step204ExitF_Outgoing : rowsOwned s6Step204ExitGvAfter [s6Step204ExitFOut,s6Step204ExitFvOut,s6Step204ExitGvOut] :=
  hmrRows_owned_drop s6Step204ExitGvAfter [s6Step204ExitGOut,s6Step204ExitFOut,s6Step204ExitFvOut,s6Step204ExitGvOut] 1 s6Step204ExitBank_outgoingOwned

private theorem s6Step204ExitF_distinct : (s6Step204ExitFRow.sign::s6Step204ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204ExitF_owned : (s6Step204ExitFRow.sign::s6Step204ExitFRow.payload).toFinset⊆s6Step204ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step204ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204ExitF_retired : s6Step204ExitFBefore.retireSet s6Step204ExitFExtra.toFinset=s6Step204ExitFAfter := by
  unfold Arena.retireSet s6Step204ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step204ExitFBefore,s6Step204ExitGAfter,s6Step204ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step204ExitF_checked : planRowResizeLog s6Step204ExitFBefore s6Step204ExitFRow 167 []=
    some (s6Step204ExitFAfter,s6Step204ExitFOut,shrinkRow 795 s6Step204ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step204ExitFBefore s6Step204ExitFRow 167 s6Step204ExitF_distinct s6Step204ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step204ExitFRow.payload.take 167) s6Step204ExitFRow.sign=s6Step204ExitFOut := by decide +kernel
  have hi : s6Step204ExitFRow.payload.drop 167=s6Step204ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step204ExitF_retired] at result
  exact result

private def s6Step204ExitFvAfter : Arena := s6Step204ExitFAfter

private def s6Step204ExitFvBefore : Arena := s6Step204ExitFAfter

private theorem s6Step204ExitFv_Incoming : rowsOwned s6Step204ExitFvBefore [s6Step204ExitFvRow,s6Step204ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step204ExitGRow,s6Step204ExitFRow,s6Step204ExitFvRow,s6Step204ExitGvRow] 2 s6Step204ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step204ExitFvBefore (fun q => (0≤q ∧ q<423) ∨ (424≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step204ExitFv_Outgoing : rowsOwned s6Step204ExitGvAfter [s6Step204ExitFvOut,s6Step204ExitGvOut] :=
  hmrRows_owned_drop s6Step204ExitGvAfter [s6Step204ExitGOut,s6Step204ExitFOut,s6Step204ExitFvOut,s6Step204ExitGvOut] 2 s6Step204ExitBank_outgoingOwned

private theorem s6Step204ExitFv_distinct : (s6Step204ExitFvRow.sign::s6Step204ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204ExitFv_owned : (s6Step204ExitFvRow.sign::s6Step204ExitFvRow.payload).toFinset⊆s6Step204ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step204ExitFvBefore (fun q => (0≤q ∧ q<423) ∨ (424≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204ExitFv_reserved : s6Step204ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step204ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step204ExitFv_checked : planRowResizeLog s6Step204ExitFvBefore s6Step204ExitFvRow 118 []=
    some (s6Step204ExitFvAfter,s6Step204ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step204ExitFvBefore s6Step204ExitFvAfter s6Step204ExitFvRow 118 []
    s6Step204ExitFv_distinct s6Step204ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step204ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step204ExitFvRow.payload++[]) s6Step204ExitFvRow.sign=s6Step204ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step204ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step204ExitG_Incoming : rowsOwned s6Step204ExitGBefore [s6Step204ExitGRow,s6Step204ExitFRow,s6Step204ExitFvRow,s6Step204ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step204ExitGRow,s6Step204ExitFRow,s6Step204ExitFvRow,s6Step204ExitGvRow] 0 s6Step204ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step204ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step204ExitG_Outgoing : rowsOwned s6Step204ExitGvAfter [s6Step204ExitGOut,s6Step204ExitFOut,s6Step204ExitFvOut,s6Step204ExitGvOut] :=
  hmrRows_owned_drop s6Step204ExitGvAfter [s6Step204ExitGOut,s6Step204ExitFOut,s6Step204ExitFvOut,s6Step204ExitGvOut] 0 s6Step204ExitBank_outgoingOwned

private theorem s6Step204ExitG_distinct : (s6Step204ExitGRow.sign::s6Step204ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204ExitG_owned : (s6Step204ExitGRow.sign::s6Step204ExitGRow.payload).toFinset⊆s6Step204ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step204ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204ExitG_retired : s6Step204ExitGBefore.retireSet s6Step204ExitGExtra.toFinset=s6Step204ExitGAfter := by
  unfold Arena.retireSet s6Step204ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step204ExitGBefore,s6Step204ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step204ExitG_checked : planRowResizeLog s6Step204ExitGBefore s6Step204ExitGRow 167 []=
    some (s6Step204ExitGAfter,s6Step204ExitGOut,shrinkRow 777 s6Step204ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step204ExitGBefore s6Step204ExitGRow 167 s6Step204ExitG_distinct s6Step204ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step204ExitGRow.payload.take 167) s6Step204ExitGRow.sign=s6Step204ExitGOut := by decide +kernel
  have hi : s6Step204ExitGRow.payload.drop 167=s6Step204ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step204ExitG_retired] at result
  exact result

private def s6Step204ExitGvBefore : Arena := s6Step204ExitFAfter

private theorem s6Step204ExitGv_Incoming : rowsOwned s6Step204ExitGvBefore [s6Step204ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step204ExitGRow,s6Step204ExitFRow,s6Step204ExitFvRow,s6Step204ExitGvRow] 3 s6Step204ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step204ExitGvBefore (fun q => (0≤q ∧ q<423) ∨ (424≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step204ExitGv_Outgoing : rowsOwned s6Step204ExitGvAfter [s6Step204ExitGvOut] :=
  hmrRows_owned_drop s6Step204ExitGvAfter [s6Step204ExitGOut,s6Step204ExitFOut,s6Step204ExitFvOut,s6Step204ExitGvOut] 3 s6Step204ExitBank_outgoingOwned

private theorem s6Step204ExitGv_distinct : (s6Step204ExitGvRow.sign::s6Step204ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204ExitGv_owned : (s6Step204ExitGvRow.sign::s6Step204ExitGvRow.payload).toFinset⊆s6Step204ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step204ExitGvBefore (fun q => (0≤q ∧ q<423) ∨ (424≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204ExitGv_retired : s6Step204ExitGvBefore.retireSet s6Step204ExitGvExtra.toFinset=s6Step204ExitGvAfter := by
  unfold Arena.retireSet s6Step204ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step204ExitGvBefore,s6Step204ExitFAfter,s6Step204ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step204ExitGv_checked : planRowResizeLog s6Step204ExitGvBefore s6Step204ExitGvRow 117 []=
    some (s6Step204ExitGvAfter,s6Step204ExitGvOut,shrinkRow 775 s6Step204ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step204ExitGvBefore s6Step204ExitGvRow 117 s6Step204ExitGv_distinct s6Step204ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step204ExitGvRow.payload.take 117) s6Step204ExitGvRow.sign=s6Step204ExitGvOut := by decide +kernel
  have hi : s6Step204ExitGvRow.payload.drop 117=s6Step204ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step204ExitGv_retired] at result
  exact result

private theorem s6Step204ExitBank_rows : planWindowRowsLog s6Step204ExitGBefore [(s6Step204ExitGRow,167),(s6Step204ExitFRow,167),(s6Step204ExitFvRow,118),(s6Step204ExitGvRow,117)] [[],[],[],[]]=
    some (s6Step204ExitGvAfter,[s6Step204ExitGOut,s6Step204ExitFOut,s6Step204ExitFvOut,s6Step204ExitGvOut],(shrinkRow 777 s6Step204ExitGExtra ++ (shrinkRow 795 s6Step204ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step204ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step204ExitGvAfter [] []=some (s6Step204ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step204ExitGvBefore s6Step204ExitGvAfter s6Step204ExitGvAfter
    s6Step204ExitGvRow s6Step204ExitGvOut 117 [] [] [] []
    (shrinkRow 775 s6Step204ExitGvExtra) ([]) s6Step204ExitGv_Incoming s6Step204ExitGv_checked h4 s6Step204ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step204ExitFvBefore s6Step204ExitFvAfter s6Step204ExitGvAfter
    s6Step204ExitFvRow s6Step204ExitFvOut 118 [] [(s6Step204ExitGvRow,117)] [[]] [s6Step204ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step204ExitGvExtra ++ [])) s6Step204ExitFv_Incoming s6Step204ExitFv_checked h3 s6Step204ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step204ExitFBefore s6Step204ExitFAfter s6Step204ExitGvAfter
    s6Step204ExitFRow s6Step204ExitFOut 167 [] [(s6Step204ExitFvRow,118),(s6Step204ExitGvRow,117)] [[],[]] [s6Step204ExitFvOut,s6Step204ExitGvOut]
    (shrinkRow 795 s6Step204ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step204ExitGvExtra ++ []))) s6Step204ExitF_Incoming s6Step204ExitF_checked h2 s6Step204ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step204ExitGBefore s6Step204ExitGAfter s6Step204ExitGvAfter
    s6Step204ExitGRow s6Step204ExitGOut 167 [] [(s6Step204ExitFRow,167),(s6Step204ExitFvRow,118),(s6Step204ExitGvRow,117)] [[],[],[]] [s6Step204ExitFOut,s6Step204ExitFvOut,s6Step204ExitGvOut]
    (shrinkRow 777 s6Step204ExitGExtra) ((shrinkRow 795 s6Step204ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step204ExitGvExtra ++ [])))) s6Step204ExitG_Incoming s6Step204ExitG_checked h1 s6Step204ExitG_Outgoing
  exact h0

private theorem s6Step204ExitBank_checked : compileHmrBankResizeLog .exit s6Step204ExitGBefore ⟨s6Step204ExitFRow,s6Step204ExitGRow,s6Step204ExitFvRow,s6Step204ExitGvRow⟩ ⟨167,167,118,117⟩ [[],[],[],[]]=
    some (s6Step204ExitGvAfter,⟨s6Step204ExitFOut,s6Step204ExitGOut,s6Step204ExitFvOut,s6Step204ExitGvOut⟩,(shrinkRow 777 s6Step204ExitGExtra ++ (shrinkRow 795 s6Step204ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step204ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step204ExitBank_rows]
  rfl

private theorem s6Step204Add0_apart : Disjoint s6Step204Add0Arena.live s6Step204Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step204Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204Add0_card : s6Step204Add0Arena.live.card=891 := by
  decide +kernel

private theorem s6Step204Add0_borrowed : s6Step204Add0Arena.checkBorrow (hmrHybridCount s6Step204Add0Arena s6Step204Add0B.length) s6Step204Add0Work=some s6Step204Add0During := by
  have len : s6Step204Add0Work.length=hmrHybridCount s6Step204Add0Arena s6Step204Add0B.length := by
    rw [hmrHybridCount,s6Step204Add0_card]
    decide +kernel
  have nd : s6Step204Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step204Add0Arena s6Step204Add0During s6Step204Add0Work.toFinset s6Step204Add0_bounded s6Step204Add0_apart rfl

private theorem s6Step204Add0_distinct : (822::877::825::(s6Step204Add0A++s6Step204Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204Add0_owned : (822::877::825::(s6Step204Add0A++s6Step204Add0B)).toFinset⊆s6Step204Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step204Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204Add0_checked : compileHmrHybridCinLog s6Step204Add0Arena 877 822 825 s6Step204Add0A s6Step204Add0B s6Step204Add0Work=some s6Step204Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step204Add0Arena s6Step204Add0During 877 822 825 s6Step204Add0A s6Step204Add0B s6Step204Add0Work
    (by decide +kernel) (by decide +kernel) s6Step204Add0_distinct
    (fun q hq => s6Step204Add0_owned (List.mem_toFinset.mpr hq)) s6Step204Add0_borrowed

private theorem s6Step204Add1_apart : Disjoint s6Step204Add1Arena.live s6Step204Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step204Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204Add1_card : s6Step204Add1Arena.live.card=891 := by
  decide +kernel

private theorem s6Step204Add1_borrowed : s6Step204Add1Arena.checkBorrow (hmrHybridCount s6Step204Add1Arena s6Step204Add1B.length) s6Step204Add1Work=some s6Step204Add1During := by
  have len : s6Step204Add1Work.length=hmrHybridCount s6Step204Add1Arena s6Step204Add1B.length := by
    rw [hmrHybridCount,s6Step204Add1_card]
    decide +kernel
  have nd : s6Step204Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step204Add1Arena s6Step204Add1During s6Step204Add1Work.toFinset s6Step204Add1_bounded s6Step204Add1_apart rfl

private theorem s6Step204Add1_distinct : (822::877::825::(s6Step204Add1A++s6Step204Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204Add1_owned : (822::877::825::(s6Step204Add1A++s6Step204Add1B)).toFinset⊆s6Step204Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step204Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204Add1_checked : compileHmrHybridCinLog s6Step204Add1Arena 877 822 825 s6Step204Add1A s6Step204Add1B s6Step204Add1Work=some s6Step204Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step204Add1Arena s6Step204Add1During 877 822 825 s6Step204Add1A s6Step204Add1B s6Step204Add1Work
    (by decide +kernel) (by decide +kernel) s6Step204Add1_distinct
    (fun q hq => s6Step204Add1_owned (List.mem_toFinset.mpr hq)) s6Step204Add1_borrowed

private theorem s6Step204F4_apart : Disjoint (s6Step204Add0A++s6Step204Add0B).toFinset (s6Step204Add1A++s6Step204Add1B).toFinset := by
  have nd : ((s6Step204Add0A++s6Step204Add0B)++(s6Step204Add1A++s6Step204Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step204F4_carry : s6Step204F4FlagArena.checkBorrow 1 [825]=some s6Step204Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step204F4FlagArena,s6Step204HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step204F4FlagArena,s6Step204HeadFvAfter,s6Step204Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step204F4_distinct : (791::877::822::825::((s6Step204Add0A++s6Step204Add1A)++(s6Step204Add0B++s6Step204Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204F4_flag : s6Step204HeadFvAfter.checkBorrow 1 [822]=some s6Step204F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step204HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step204F4_owned : (791::877::((s6Step204Add0A++s6Step204Add1A)++(s6Step204Add0B++s6Step204Add1B))).toFinset⊆s6Step204HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step204HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204F4_checked : compileHmrHybridF4Log s6Step204HeadFvAfter 791 877 s6Step204Add0A s6Step204Add0B s6Step204Add1A s6Step204Add1B [822] [825] s6Step204Add0Work s6Step204Add1Work=some s6Step204F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step204HeadFvAfter s6Step204F4FlagArena s6Step204Add0Arena s6Step204Add0During s6Step204Add1During 791 877
    s6Step204Add0A s6Step204Add0B s6Step204Add1A s6Step204Add1B [822] [825] s6Step204Add0Work s6Step204Add1Work
    (fun q hq => s6Step204F4_owned (List.mem_toFinset.mpr hq)) s6Step204F4_flag s6Step204F4_carry
    s6Step204F4_distinct s6Step204F4_apart s6Step204Add0_checked s6Step204Add1_checked

private theorem s6Step204Front_branch : s6Step204FrontSigmaArena.checkBorrow 1 [877]=some s6Step204HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step204FrontSigmaArena,s6Step204EntryGvAfter,s6Step204EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step204FrontSigmaArena,s6Step204EntryGvAfter,s6Step204EntryGAfter,s6Step204HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step204Front_entry : HmrFrontEntryValid s6Step204EntryFBefore s6Step204FrontBank 168 117 ⟨167,167,118,117⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step204FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step204EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step204EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step204FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step204Front_sigma : s6Step204EntryGvAfter.checkBorrow 1 [791]=some s6Step204FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step204EntryGvAfter,s6Step204EntryGAfter,arenaWires]
  · rfl

private def s6Step204HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204HeadFBefore : Arena := s6Step204HeadGAfter

private def s6Step204HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423],795⟩

private def s6Step204HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903],776⟩

private def s6Step204HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 867],777⟩

private def s6Step204HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩

private theorem s6Step204HeadBank_incomingDistinct : ([s6Step204HeadGRow,s6Step204HeadFRow,s6Step204HeadGvRow,s6Step204HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204HeadF_Incoming : rowsOwned s6Step204HeadFBefore [s6Step204HeadFRow,s6Step204HeadGvRow,s6Step204HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step204HeadGRow,s6Step204HeadFRow,s6Step204HeadGvRow,s6Step204HeadFvRow] 1 s6Step204HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step204HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step204HeadBank_outgoingOwned : rowsOwned s6Step204HeadFvAfter [s6Step204HeadGOut,s6Step204HeadFOut,s6Step204HeadGvOut,s6Step204HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step204HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step204HeadF_Outgoing : rowsOwned s6Step204HeadFvAfter [s6Step204HeadFOut,s6Step204HeadGvOut,s6Step204HeadFvOut] :=
  hmrRows_owned_drop s6Step204HeadFvAfter [s6Step204HeadGOut,s6Step204HeadFOut,s6Step204HeadGvOut,s6Step204HeadFvOut] 1 s6Step204HeadBank_outgoingOwned

private theorem s6Step204HeadF_distinct : (s6Step204HeadFRow.sign::s6Step204HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204HeadF_owned : (s6Step204HeadFRow.sign::s6Step204HeadFRow.payload).toFinset⊆s6Step204HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step204HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204HeadF_reserved : s6Step204HeadFBefore.reserve s6Step204HeadFFresh.toFinset=some s6Step204HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step204HeadFFresh,arenaWires]
  · norm_num [s6Step204HeadFBefore,s6Step204HeadGAfter,s6Step204HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step204HeadFAfter,s6Step204HeadFBefore,s6Step204HeadGAfter,s6Step204HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step204HeadF_checked : planRowResizeLog s6Step204HeadFBefore s6Step204HeadFRow 169 s6Step204HeadFFresh=
    some (s6Step204HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 780],795⟩,growRow 795 s6Step204HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step204HeadFBefore s6Step204HeadFAfter s6Step204HeadFRow 169 s6Step204HeadFFresh
    s6Step204HeadF_distinct s6Step204HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step204HeadF_reserved
  have rowEq : WindowRow.mk (s6Step204HeadFRow.payload++s6Step204HeadFFresh) s6Step204HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 780],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step204HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step204HeadFvBefore : Arena := s6Step204HeadGvAfter

private theorem s6Step204HeadFv_Incoming : rowsOwned s6Step204HeadFvBefore [s6Step204HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step204HeadGRow,s6Step204HeadFRow,s6Step204HeadGvRow,s6Step204HeadFvRow] 3 s6Step204HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step204HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step204HeadFv_Outgoing : rowsOwned s6Step204HeadFvAfter [s6Step204HeadFvOut] :=
  hmrRows_owned_drop s6Step204HeadFvAfter [s6Step204HeadGOut,s6Step204HeadFOut,s6Step204HeadGvOut,s6Step204HeadFvOut] 3 s6Step204HeadBank_outgoingOwned

private theorem s6Step204HeadFv_distinct : (s6Step204HeadFvRow.sign::s6Step204HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204HeadFv_owned : (s6Step204HeadFvRow.sign::s6Step204HeadFvRow.payload).toFinset⊆s6Step204HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step204HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204HeadFv_reserved : s6Step204HeadFvBefore.reserve s6Step204HeadFvFresh.toFinset=some s6Step204HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step204HeadFvFresh,arenaWires]
  · norm_num [s6Step204HeadFvBefore,s6Step204HeadGvAfter,s6Step204HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step204HeadFvAfter,s6Step204HeadFvBefore,s6Step204HeadGvAfter,s6Step204HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step204HeadFv_checked : planRowResizeLog s6Step204HeadFvBefore s6Step204HeadFvRow 118 s6Step204HeadFvFresh=
    some (s6Step204HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 838],776⟩,growRow 776 s6Step204HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step204HeadFvBefore s6Step204HeadFvAfter s6Step204HeadFvRow 118 s6Step204HeadFvFresh
    s6Step204HeadFv_distinct s6Step204HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step204HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step204HeadFvRow.payload++s6Step204HeadFvFresh) s6Step204HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 838],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step204HeadG_Incoming : rowsOwned s6Step204HeadGBefore [s6Step204HeadGRow,s6Step204HeadFRow,s6Step204HeadGvRow,s6Step204HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step204HeadGRow,s6Step204HeadFRow,s6Step204HeadGvRow,s6Step204HeadFvRow] 0 s6Step204HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step204HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step204HeadG_Outgoing : rowsOwned s6Step204HeadFvAfter [s6Step204HeadGOut,s6Step204HeadFOut,s6Step204HeadGvOut,s6Step204HeadFvOut] :=
  hmrRows_owned_drop s6Step204HeadFvAfter [s6Step204HeadGOut,s6Step204HeadFOut,s6Step204HeadGvOut,s6Step204HeadFvOut] 0 s6Step204HeadBank_outgoingOwned

private theorem s6Step204HeadG_distinct : (s6Step204HeadGRow.sign::s6Step204HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204HeadG_owned : (s6Step204HeadGRow.sign::s6Step204HeadGRow.payload).toFinset⊆s6Step204HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step204HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204HeadG_reserved : s6Step204HeadGBefore.reserve s6Step204HeadGFresh.toFinset=some s6Step204HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step204HeadGFresh,arenaWires]
  · norm_num [s6Step204HeadGBefore,s6Step204HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step204HeadGAfter,s6Step204HeadGBefore,s6Step204HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step204HeadG_checked : planRowResizeLog s6Step204HeadGBefore s6Step204HeadGRow 169 s6Step204HeadGFresh=
    some (s6Step204HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 867, 813],777⟩,growRow 777 s6Step204HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step204HeadGBefore s6Step204HeadGAfter s6Step204HeadGRow 169 s6Step204HeadGFresh
    s6Step204HeadG_distinct s6Step204HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step204HeadG_reserved
  have rowEq : WindowRow.mk (s6Step204HeadGRow.payload++s6Step204HeadGFresh) s6Step204HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 867, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step204HeadGvBefore : Arena := s6Step204HeadFAfter

private theorem s6Step204HeadGv_Incoming : rowsOwned s6Step204HeadGvBefore [s6Step204HeadGvRow,s6Step204HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step204HeadGRow,s6Step204HeadFRow,s6Step204HeadGvRow,s6Step204HeadFvRow] 2 s6Step204HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step204HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step204HeadGv_Outgoing : rowsOwned s6Step204HeadFvAfter [s6Step204HeadGvOut,s6Step204HeadFvOut] :=
  hmrRows_owned_drop s6Step204HeadFvAfter [s6Step204HeadGOut,s6Step204HeadFOut,s6Step204HeadGvOut,s6Step204HeadFvOut] 2 s6Step204HeadBank_outgoingOwned

private theorem s6Step204HeadGv_distinct : (s6Step204HeadGvRow.sign::s6Step204HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step204HeadGv_owned : (s6Step204HeadGvRow.sign::s6Step204HeadGvRow.payload).toFinset⊆s6Step204HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step204HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step204HeadGv_reserved : s6Step204HeadGvBefore.reserve s6Step204HeadGvFresh.toFinset=some s6Step204HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step204HeadGvFresh,arenaWires]
  · norm_num [s6Step204HeadGvBefore,s6Step204HeadFAfter,s6Step204HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step204HeadGvAfter,s6Step204HeadGvBefore,s6Step204HeadFAfter,s6Step204HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step204HeadGv_checked : planRowResizeLog s6Step204HeadGvBefore s6Step204HeadGvRow 118 s6Step204HeadGvFresh=
    some (s6Step204HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 802],775⟩,growRow 775 s6Step204HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step204HeadGvBefore s6Step204HeadGvAfter s6Step204HeadGvRow 118 s6Step204HeadGvFresh
    s6Step204HeadGv_distinct s6Step204HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step204HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step204HeadGvRow.payload++s6Step204HeadGvFresh) s6Step204HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 802],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step204HeadBank_rows : planWindowRowsLog s6Step204HeadGBefore [(s6Step204HeadGRow,169),(s6Step204HeadFRow,169),(s6Step204HeadGvRow,118),(s6Step204HeadFvRow,118)] [s6Step204HeadGFresh,s6Step204HeadFFresh,s6Step204HeadGvFresh,s6Step204HeadFvFresh]=
    some (s6Step204HeadFvAfter,[s6Step204HeadGOut,s6Step204HeadFOut,s6Step204HeadGvOut,s6Step204HeadFvOut],(growRow 777 s6Step204HeadGFresh ++ (growRow 795 s6Step204HeadFFresh ++ (growRow 775 s6Step204HeadGvFresh ++ (growRow 776 s6Step204HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step204HeadFvAfter [] []=some (s6Step204HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step204HeadFvBefore s6Step204HeadFvAfter s6Step204HeadFvAfter
    s6Step204HeadFvRow s6Step204HeadFvOut 118 s6Step204HeadFvFresh [] [] []
    (growRow 776 s6Step204HeadFvFresh) ([]) s6Step204HeadFv_Incoming s6Step204HeadFv_checked h4 s6Step204HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step204HeadGvBefore s6Step204HeadGvAfter s6Step204HeadFvAfter
    s6Step204HeadGvRow s6Step204HeadGvOut 118 s6Step204HeadGvFresh [(s6Step204HeadFvRow,118)] [s6Step204HeadFvFresh] [s6Step204HeadFvOut]
    (growRow 775 s6Step204HeadGvFresh) ((growRow 776 s6Step204HeadFvFresh ++ [])) s6Step204HeadGv_Incoming s6Step204HeadGv_checked h3 s6Step204HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step204HeadFBefore s6Step204HeadFAfter s6Step204HeadFvAfter
    s6Step204HeadFRow s6Step204HeadFOut 169 s6Step204HeadFFresh [(s6Step204HeadGvRow,118),(s6Step204HeadFvRow,118)] [s6Step204HeadGvFresh,s6Step204HeadFvFresh] [s6Step204HeadGvOut,s6Step204HeadFvOut]
    (growRow 795 s6Step204HeadFFresh) ((growRow 775 s6Step204HeadGvFresh ++ (growRow 776 s6Step204HeadFvFresh ++ []))) s6Step204HeadF_Incoming s6Step204HeadF_checked h2 s6Step204HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step204HeadGBefore s6Step204HeadGAfter s6Step204HeadFvAfter
    s6Step204HeadGRow s6Step204HeadGOut 169 s6Step204HeadGFresh [(s6Step204HeadFRow,169),(s6Step204HeadGvRow,118),(s6Step204HeadFvRow,118)] [s6Step204HeadFFresh,s6Step204HeadGvFresh,s6Step204HeadFvFresh] [s6Step204HeadFOut,s6Step204HeadGvOut,s6Step204HeadFvOut]
    (growRow 777 s6Step204HeadGFresh) ((growRow 795 s6Step204HeadFFresh ++ (growRow 775 s6Step204HeadGvFresh ++ (growRow 776 s6Step204HeadFvFresh ++ [])))) s6Step204HeadG_Incoming s6Step204HeadG_checked h1 s6Step204HeadG_Outgoing
  exact h0

private theorem s6Step204HeadBank_checked : compileHmrBankResizeLog .headroom s6Step204HeadGBefore ⟨s6Step204HeadFRow,s6Step204HeadGRow,s6Step204HeadFvRow,s6Step204HeadGvRow⟩ ⟨169,169,118,118⟩ [s6Step204HeadGFresh,s6Step204HeadFFresh,s6Step204HeadGvFresh,s6Step204HeadFvFresh]=
    some (s6Step204HeadFvAfter,⟨s6Step204HeadFOut,s6Step204HeadGOut,s6Step204HeadFvOut,s6Step204HeadGvOut⟩,(growRow 777 s6Step204HeadGFresh ++ (growRow 795 s6Step204HeadFFresh ++ (growRow 775 s6Step204HeadGvFresh ++ (growRow 776 s6Step204HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step204HeadBank_rows]
  rfl

private theorem s6Step204Front_checked : compileHmrSourceFrontLog s6Step204EntryFBefore s6Step204FrontBank 168 117 ⟨167,167,118,117⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step204FrontLog=some s6Step204FrontPlan := by
  have pairEq : s6Step204FrontPair=⟨s6Step204HeadFRow,s6Step204HeadGRow,s6Step204HeadFvRow,s6Step204HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step204FrontHead=⟨s6Step204ExitFRow,s6Step204ExitGRow,s6Step204ExitFvRow,s6Step204ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step204Add0A=s6Step204FrontHead.f.wires := by decide +kernel
  have gEq : s6Step204Add0B=s6Step204FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step204Add1A=s6Step204FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step204Add1B=s6Step204FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step204EntryFBefore s6Step204FrontBank 168 117 ⟨167,167,118,117⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step204FrontLog s6Step204FrontPlan
  · exact s6Step204Front_entry
  · exact s6Step204EntryBank_checked
  · exact s6Step204Front_sigma
  · rfl
  · exact s6Step204Front_branch
  · rfl
  · simpa only [s6Step204FrontPlan,pairEq] using s6Step204HeadBank_checked
  · simpa only [s6Step204FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step204F4_checked
  · exact s6Step204Counter_checked
  · rfl
  · simpa only [s6Step204FrontPlan,headEq] using s6Step204ExitBank_checked

private theorem s6Step204Complete_explicit_checked : compileHmrEarlyStepLog s6Step204EntryFBefore s6Step204FrontBank 168 117 ⟨167,167,118,117⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step204CompleteLog=some s6Step204CompletePlan := by
  let Q := s6Step204EarlyControlPlan
  have hq := s6Step204EarlyControl_plan_checked
  have fv1 : s6Step204CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step204CompleteOut.fv.payload[2]?.getD s6Step204CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step204CompleteOut.fv.payload[3]?.getD s6Step204CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step204CompleteOut.fv.payload[4]?.getD s6Step204CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step204EntryFBefore s6Step204EarlyControlArena s6Step204FrontBank 168 117 ⟨167,167,118,117⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step204CompleteLog s6Step204FrontPlan Q
    s6Step204Front_checked s6Step204Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step204Complete_owned s6Step204Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step204EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 791 s6Step204CompleteOut.fv.second (s6Step204CompleteOut.fv.payload[2]?.getD s6Step204CompleteOut.fv.sign) (s6Step204CompleteOut.fv.payload[3]?.getD s6Step204CompleteOut.fv.sign) (s6Step204CompleteOut.fv.payload[4]?.getD s6Step204CompleteOut.fv.sign) 877 47 s6Step204EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep204Arena : Arena := s6Step204EntryFBefore
def s6PrivateStep204Bank : WindowBank := s6Step204FrontBank
def s6PrivateStep204Spec : HmrSourceWalkStepLog := ⟨168,117,⟨167,167,118,117⟩,47,.early s6Step204CompleteLog⟩
def s6PrivateStep204Plan : HmrSourceStepPlan := .early s6Step204CompletePlan
theorem s6PrivateStep204_source : s6PrivateStep204Spec=s6ObservedLogs192[12] := rfl
theorem s6PrivateStep204_checked : compileHmrSourceStepLog s6PrivateStep204Arena s6PrivateStep204Bank
    s6PrivateStep204Spec.fgWidth s6PrivateStep204Spec.vWidth s6PrivateStep204Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 204 s6PrivateStep204Spec.need none s6PrivateStep204Spec.log=some s6PrivateStep204Plan := by
  change compileHmrSourceStepLog s6Step204EntryFBefore s6Step204FrontBank 168 117 ⟨167,167,118,117⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 204 47 none (.early s6Step204CompleteLog)=some (.early s6Step204CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 204<498)]
  rw [s6Step204Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
