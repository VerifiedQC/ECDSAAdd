import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep231
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

private def s6Step233CompleteMoves : List (Wire × Wire) := []

private def s6Step233EarlyControlLog : HmrEarlyControlLog := ⟨[864, 793, 908, 818, 805],[822],[825],[869, 786, 810, 809, 817, 812],[]⟩

private def s6Step233FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [922]],[[908], [793], [864], [778]],[[], [], [], []]⟩,[886],[857],[818],[805],[822, 825, 869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[818, 805, 822, 825]⟩

private def s6Step233CompleteLog : HmrEarlyStepLog := ⟨s6Step233FrontLog,s6Step233CompleteMoves,s6Step233EarlyControlLog⟩

private def s6Step233ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408],795⟩

private def s6Step233ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778],776⟩

private def s6Step233ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],777⟩

private def s6Step233ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922],775⟩

private def s6Step233FrontOut : WindowBank := ⟨s6Step233ExitFOut,s6Step233ExitGOut,s6Step233ExitFvOut,s6Step233ExitGvOut⟩

private def s6Step233CompleteOut : WindowBank := s6Step233FrontOut.repacked s6Step233CompleteMoves

private def s6Step233EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step233EarlyControlPositiveArena,[822],s6Step233EarlyControlEqualityArena,[825],⟨⟨886,false⟩,[⟨⟨822,false⟩,825⟩]⟩⟩

private def s6Step233EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,864⟩,⟨⟨772,false⟩,793⟩,⟨⟨771,false⟩,908⟩,⟨⟨770,false⟩,818⟩,⟨⟨769,false⟩,805⟩]⟩

private def s6Step233EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step233EarlyControlZeroArena,s6Step233EarlyControlZeroPlan,s6Step233EarlyControlClassPlan,s6Step233EarlyControlFlagArena,s6Step233EarlyControlFittedArena,s6Step233EarlyControlHistoryArena,s6Step233EarlyControlSigmaArena,s6Step233EarlyControlOutputArena,s6Step233EarlyControlLog⟩

private def s6Step233CounterWork : List Wire := [818, 805, 822, 825]

private theorem s6Step233Counter_bounded : s6Step233CounterWork.toFinset⊆arenaWires := by norm_num [s6Step233CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step233HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233CounterDuring : Arena := ⟨s6Step233HeadFvAfter.live∪s6Step233CounterWork.toFinset,Finset.union_subset s6Step233HeadFvAfter.bounded s6Step233Counter_bounded⟩

private def s6Step233EntryFFresh : List Wire := []

private def s6Step233EntryFvFresh : List Wire := []

private def s6Step233EntryGFresh : List Wire := []

private def s6Step233EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233EntryGvFresh : List Wire := [922]

private def s6Step233ExitFExtra : List Wire := [793]

private def s6Step233ExitGExtra : List Wire := [908]

private def s6Step233ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233ExitGvExtra : List Wire := [864]

private def s6Step233Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233Add0Work : List Wire := [822, 825, 869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step233Add0_bounded : s6Step233Add0Work.toFinset⊆arenaWires := by
  have h : s6Step233Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step233Add0During : Arena := ⟨s6Step233Add0Arena.live∪s6Step233Add0Work.toFinset,Finset.union_subset s6Step233Add0Arena.bounded s6Step233Add0_bounded⟩

private def s6Step233Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233Add1Work : List Wire := [822, 825, 869, 786, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step233Add1_bounded : s6Step233Add1Work.toFinset⊆arenaWires := by
  have h : s6Step233Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step233Add1During : Arena := ⟨s6Step233Add1Arena.live∪s6Step233Add1Work.toFinset,Finset.union_subset s6Step233Add1Arena.bounded s6Step233Add1_bounded⟩

private def s6Step233F4FlagArena : Arena := ⟨s6Step233HeadFvAfter.live∪{818},Finset.union_subset s6Step233HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step233F4Plan : HmrHybridF4Plan := ⟨s6Step233F4FlagArena,[818],s6Step233Add0Arena,[805],s6Step233Add0During,s6Step233Add0Work,s6Step233Add1During,s6Step233Add1Work⟩

private def s6Step233HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 793],795⟩

private def s6Step233HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778],776⟩

private def s6Step233HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 908],777⟩

private def s6Step233HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 864],775⟩

private def s6Step233FrontHead : WindowBank := ⟨s6Step233HeadFOut,s6Step233HeadGOut,s6Step233HeadFvOut,s6Step233HeadGvOut⟩

private def s6Step233EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408],795⟩

private def s6Step233EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823],776⟩

private def s6Step233EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],777⟩

private def s6Step233EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922],775⟩

private def s6Step233FrontPair : WindowBank := ⟨s6Step233EntryFOut,s6Step233EntryGOut,s6Step233EntryFvOut,s6Step233EntryGvOut⟩

private def s6Step233FrontSigmaArena : Arena := ⟨s6Step233EntryGvAfter.live∪{886},Finset.union_subset s6Step233EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step233HeadFFresh : List Wire := [793]

private def s6Step233HeadFvFresh : List Wire := [778]

private def s6Step233HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233HeadGFresh : List Wire := [908]

private def s6Step233HeadGvFresh : List Wire := [864]

private def s6Step233FrontPlan : HmrSourceFront := ⟨s6Step233EntryGvAfter,s6Step233FrontPair,(growRow 795 s6Step233EntryFFresh ++ (growRow 777 s6Step233EntryGFresh ++ (growRow 776 s6Step233EntryFvFresh ++ (growRow 775 s6Step233EntryGvFresh ++ [])))),s6Step233FrontSigmaArena,[886],s6Step233HeadGBefore,[857],
  s6Step233HeadFvAfter,s6Step233FrontHead,(growRow 777 s6Step233HeadGFresh ++ (growRow 795 s6Step233HeadFFresh ++ (growRow 775 s6Step233HeadGvFresh ++ (growRow 776 s6Step233HeadFvFresh ++ [])))),s6Step233F4Plan,s6Step233CounterDuring,s6Step233CounterWork,s6Step233ExitGvAfter,s6Step233FrontOut,(shrinkRow 777 s6Step233ExitGExtra ++ (shrinkRow 795 s6Step233ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step233ExitGvExtra ++ []))))⟩

private def s6Step233CompletePlan : HmrEarlyStepPlan := ⟨s6Step233FrontPlan,s6Step233EarlyControlArena,s6Step233EarlyControlPlan,s6Step233CompleteMoves⟩

private theorem s6Step233Complete_apart : List.Disjoint (s6Step233CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [886, 857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] := by
  have nd : ((s6Step233CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[886, 857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step233Complete_owned : (s6Step233CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step233EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step233EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233Complete_repack : s6Step233ExitGvAfter.checkRepack s6Step233CompleteMoves=some s6Step233EarlyControlArena := by rfl

private theorem s6Step233EarlyControl_branchOwned : ([857] : List Wire).toFinset⊆s6Step233EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step233EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233EarlyControl_branch : compileHmrBranchRetirement s6Step233EarlyControlSigmaArena 857=some s6Step233EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step233EarlyControl_branchOwned
  · ext q
    simp [s6Step233EarlyControlOutputArena,s6Step233EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step233EarlyControl_classEqualityBorrow : s6Step233EarlyControlPositiveArena.checkBorrow (([886, 822] : List Wire).length-1) s6Step233EarlyControlLog.classWork=some s6Step233EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step233EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step233EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step233EarlyControlEqualityArena,s6Step233EarlyControlPositiveArena,s6Step233EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step233EarlyControl_classEqualityOwned : ([886, 822] : List Wire).toFinset⊆s6Step233EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step233EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233EarlyControl_classEquality : compileHmrEqualityLog s6Step233EarlyControlPositiveArena [886, 822] 0 s6Step233EarlyControlLog.classWork=some (s6Step233EarlyControlEqualityArena,s6Step233EarlyControlLog.classWork,s6Step233EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step233EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step233EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step233EarlyControl_classOwned : ([769, 805, 886] : List Wire).toFinset⊆s6Step233EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step233EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233EarlyControl_positiveBorrow : s6Step233EarlyControlZeroArena.checkBorrow (1) s6Step233EarlyControlLog.positiveWork=some s6Step233EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step233EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step233EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step233EarlyControlPositiveArena,s6Step233EarlyControlZeroArena,s6Step233EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step233EarlyControl_class : compileHmrSourceClassLog s6Step233EarlyControlZeroArena false 769 s6Step233EarlyControlZeroPlan.top 0 886 s6Step233EarlyControlLog.positiveWork s6Step233EarlyControlLog.classWork=some s6Step233EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step233EarlyControlClassPlan s6Step233EarlyControlZeroArena false 769 s6Step233EarlyControlZeroPlan.top 0 886
  constructor
  · decide +kernel
  · exact s6Step233EarlyControl_classOwned
  · exact s6Step233EarlyControl_positiveBorrow
  · exact s6Step233EarlyControl_classEquality

private theorem s6Step233EarlyControl_entryRecordOwned : ([857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step233EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step233EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233EarlyControl_entrySigmaOwned : ([886, 254] : List Wire).toFinset⊆s6Step233EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step233EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233EarlyControl_fitBorrow : s6Step233EarlyControlFlagArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step233EarlyControlLog.recordFresh=some s6Step233EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step233EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step233EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step233EarlyControlFittedArena,s6Step233EarlyControlFlagArena,s6Step233EarlyControlLog,arenaWires]

private theorem s6Step233EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step233EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step233EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233EarlyControl_fit : compileHmrRecordGrowLog s6Step233EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step233EarlyControlLog.recordFresh=some s6Step233EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step233EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step233EarlyControl_fitBorrow

private theorem s6Step233EarlyControl_flagsBorrow : s6Step233EarlyControlEqualityArena.checkBorrow (6) s6Step233EarlyControlLog.flagWork=some s6Step233EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step233EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step233EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step233EarlyControlFlagArena,s6Step233EarlyControlEqualityArena,s6Step233EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step233EarlyControl_flagsOwned : ([825, 253, 252, 251] : List Wire).toFinset⊆s6Step233EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step233EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233EarlyControl_flags : compileHmrFlagsLog s6Step233EarlyControlClassPlan.equalityArena s6Step233EarlyControlClassPlan.equality.top 253 252 251 s6Step233EarlyControlLog.flagWork=some s6Step233EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step233EarlyControl_flagsOwned⟩
  · exact s6Step233EarlyControl_flagsBorrow

private theorem s6Step233EarlyControl_historyBorrow : s6Step233EarlyControlArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step233EarlyControlLog.recordFresh=some s6Step233EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step233EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step233EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step233EarlyControlHistoryArena,s6Step233EarlyControlArena,s6Step233EarlyControlLog,arenaWires]

private theorem s6Step233EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step233EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step233EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233EarlyControl_history : compileHmrRecordGrowLog s6Step233EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step233EarlyControlLog.recordFresh=some s6Step233EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step233EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step233EarlyControl_historyBorrow

private theorem s6Step233EarlyControl_sigmaOwned : ([254, 886] : List Wire).toFinset⊆s6Step233EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step233EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233EarlyControl_sigmaReleaseOwned : ([886] : List Wire).toFinset⊆s6Step233EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step233EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233EarlyControl_sigmaRelease : s6Step233EarlyControlHistoryArena.release {886} (fun _ => false)=some s6Step233EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step233EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step233EarlyControlSigmaArena,s6Step233EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step233EarlyControl_sigma : compileHmrSigmaDropLog s6Step233EarlyControlHistoryArena false 0 0 254 886 []=some s6Step233EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step233EarlyControl_sigmaOwned⟩
  · exact s6Step233EarlyControl_sigmaRelease

private theorem s6Step233EarlyControl_zeroBorrow : s6Step233EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step233EarlyControlLog.zeroWork=some s6Step233EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step233EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step233EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step233EarlyControlZeroArena,s6Step233EarlyControlArena,s6Step233EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step233EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step233EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step233EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233EarlyControl_zero : compileHmrEqualityLog s6Step233EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step233EarlyControlLog.zeroWork=some (s6Step233EarlyControlZeroArena,s6Step233EarlyControlLog.zeroWork,s6Step233EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step233EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step233EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step233EarlyControl_logged : s6Step233EarlyControlPlan.Logged s6Step233EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 886 254 253 252 251 857 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step233EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step233EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step233EarlyControl_zero
  · exact s6Step233EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step233EarlyControl_flags
  · exact s6Step233EarlyControl_fit
  · exact s6Step233EarlyControl_history
  · exact s6Step233EarlyControl_sigma
  · exact s6Step233EarlyControl_branch

private theorem s6Step233EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step233EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 886 254 253 252 251 857 49 s6Step233EarlyControlLog=some s6Step233EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step233EarlyControlPlan s6Step233EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 886 254 253 252 251 857 49 s6Step233EarlyControl_logged

private def s6Step233EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408],795⟩

private def s6Step233EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823],776⟩

private def s6Step233EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],777⟩

private def s6Step233EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879],775⟩

private def s6Step233FrontBank : WindowBank := ⟨s6Step233EntryFRow,s6Step233EntryGRow,s6Step233EntryFvRow,s6Step233EntryGvRow⟩

private def s6Step233Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 793, 795]

private def s6Step233Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 908, 777]

private def s6Step233Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 776]

private def s6Step233Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 864, 775]

private theorem s6Step233Counter_apart : Disjoint s6Step233HeadFvAfter.live s6Step233CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step233HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233Counter_borrowed : s6Step233HeadFvAfter.checkBorrow 4 s6Step233CounterWork=some s6Step233CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step233HeadFvAfter s6Step233CounterDuring s6Step233CounterWork.toFinset s6Step233Counter_bounded s6Step233Counter_apart rfl

private theorem s6Step233Counter_owned : (886::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step233HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step233HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233Counter_checked : compileHmrCounterStepLog s6Step233HeadFvAfter true 886 [774, 773, 772, 771, 770, 769] s6Step233CounterWork=some s6Step233CounterDuring := by
  have owned : ∀q∈886::[774, 773, 772, 771, 770, 769],q∈s6Step233HeadFvAfter.live := fun q hq => s6Step233Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step233Counter_borrowed

private def s6Step233EntryFAfter : Arena := s6Step233EntryFBefore

private theorem s6Step233EntryBank_incomingDistinct : ([s6Step233EntryFRow,s6Step233EntryGRow,s6Step233EntryFvRow,s6Step233EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233EntryF_Incoming : rowsOwned s6Step233EntryFBefore [s6Step233EntryFRow,s6Step233EntryGRow,s6Step233EntryFvRow,s6Step233EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step233EntryFRow,s6Step233EntryGRow,s6Step233EntryFvRow,s6Step233EntryGvRow] 0 s6Step233EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step233EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step233EntryBank_outgoingOwned : rowsOwned s6Step233EntryGvAfter [s6Step233EntryFOut,s6Step233EntryGOut,s6Step233EntryFvOut,s6Step233EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step233EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step233EntryF_Outgoing : rowsOwned s6Step233EntryGvAfter [s6Step233EntryFOut,s6Step233EntryGOut,s6Step233EntryFvOut,s6Step233EntryGvOut] :=
  hmrRows_owned_drop s6Step233EntryGvAfter [s6Step233EntryFOut,s6Step233EntryGOut,s6Step233EntryFvOut,s6Step233EntryGvOut] 0 s6Step233EntryBank_outgoingOwned

private theorem s6Step233EntryF_distinct : (s6Step233EntryFRow.sign::s6Step233EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233EntryF_owned : (s6Step233EntryFRow.sign::s6Step233EntryFRow.payload).toFinset⊆s6Step233EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step233EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233EntryF_reserved : s6Step233EntryFBefore.reserve s6Step233EntryFFresh.toFinset=some s6Step233EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step233EntryFFresh,arenaWires]
  · norm_num [s6Step233EntryFBefore,s6Step233EntryFFresh,arenaWires]
  · simp only [s6Step233EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step233EntryF_checked : planRowResizeLog s6Step233EntryFBefore s6Step233EntryFRow 153 s6Step233EntryFFresh=
    some (s6Step233EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408],795⟩,growRow 795 s6Step233EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step233EntryFBefore s6Step233EntryFAfter s6Step233EntryFRow 153 s6Step233EntryFFresh
    s6Step233EntryF_distinct s6Step233EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step233EntryF_reserved
  have rowEq : WindowRow.mk (s6Step233EntryFRow.payload++s6Step233EntryFFresh) s6Step233EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step233EntryFvAfter : Arena := s6Step233EntryFBefore

private def s6Step233EntryFvBefore : Arena := s6Step233EntryFBefore

private theorem s6Step233EntryFv_Incoming : rowsOwned s6Step233EntryFvBefore [s6Step233EntryFvRow,s6Step233EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step233EntryFRow,s6Step233EntryGRow,s6Step233EntryFvRow,s6Step233EntryGvRow] 2 s6Step233EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step233EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step233EntryFv_Outgoing : rowsOwned s6Step233EntryGvAfter [s6Step233EntryFvOut,s6Step233EntryGvOut] :=
  hmrRows_owned_drop s6Step233EntryGvAfter [s6Step233EntryFOut,s6Step233EntryGOut,s6Step233EntryFvOut,s6Step233EntryGvOut] 2 s6Step233EntryBank_outgoingOwned

private theorem s6Step233EntryFv_distinct : (s6Step233EntryFvRow.sign::s6Step233EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233EntryFv_owned : (s6Step233EntryFvRow.sign::s6Step233EntryFvRow.payload).toFinset⊆s6Step233EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step233EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233EntryFv_reserved : s6Step233EntryFvBefore.reserve s6Step233EntryFvFresh.toFinset=some s6Step233EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step233EntryFvFresh,arenaWires]
  · norm_num [s6Step233EntryFvBefore,s6Step233EntryFBefore,s6Step233EntryFvFresh,arenaWires]
  · simp only [s6Step233EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step233EntryFv_checked : planRowResizeLog s6Step233EntryFvBefore s6Step233EntryFvRow 131 s6Step233EntryFvFresh=
    some (s6Step233EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823],776⟩,growRow 776 s6Step233EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step233EntryFvBefore s6Step233EntryFvAfter s6Step233EntryFvRow 131 s6Step233EntryFvFresh
    s6Step233EntryFv_distinct s6Step233EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step233EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step233EntryFvRow.payload++s6Step233EntryFvFresh) s6Step233EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step233EntryGAfter : Arena := s6Step233EntryFBefore

private def s6Step233EntryGBefore : Arena := s6Step233EntryFBefore

private theorem s6Step233EntryG_Incoming : rowsOwned s6Step233EntryGBefore [s6Step233EntryGRow,s6Step233EntryFvRow,s6Step233EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step233EntryFRow,s6Step233EntryGRow,s6Step233EntryFvRow,s6Step233EntryGvRow] 1 s6Step233EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step233EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step233EntryG_Outgoing : rowsOwned s6Step233EntryGvAfter [s6Step233EntryGOut,s6Step233EntryFvOut,s6Step233EntryGvOut] :=
  hmrRows_owned_drop s6Step233EntryGvAfter [s6Step233EntryFOut,s6Step233EntryGOut,s6Step233EntryFvOut,s6Step233EntryGvOut] 1 s6Step233EntryBank_outgoingOwned

private theorem s6Step233EntryG_distinct : (s6Step233EntryGRow.sign::s6Step233EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233EntryG_owned : (s6Step233EntryGRow.sign::s6Step233EntryGRow.payload).toFinset⊆s6Step233EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step233EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233EntryG_reserved : s6Step233EntryGBefore.reserve s6Step233EntryGFresh.toFinset=some s6Step233EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step233EntryGFresh,arenaWires]
  · norm_num [s6Step233EntryGBefore,s6Step233EntryFBefore,s6Step233EntryGFresh,arenaWires]
  · simp only [s6Step233EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step233EntryG_checked : planRowResizeLog s6Step233EntryGBefore s6Step233EntryGRow 153 s6Step233EntryGFresh=
    some (s6Step233EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],777⟩,growRow 777 s6Step233EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step233EntryGBefore s6Step233EntryGAfter s6Step233EntryGRow 153 s6Step233EntryGFresh
    s6Step233EntryG_distinct s6Step233EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step233EntryG_reserved
  have rowEq : WindowRow.mk (s6Step233EntryGRow.payload++s6Step233EntryGFresh) s6Step233EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step233EntryGvBefore : Arena := s6Step233EntryFBefore

private theorem s6Step233EntryGv_Incoming : rowsOwned s6Step233EntryGvBefore [s6Step233EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step233EntryFRow,s6Step233EntryGRow,s6Step233EntryFvRow,s6Step233EntryGvRow] 3 s6Step233EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step233EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step233EntryGv_Outgoing : rowsOwned s6Step233EntryGvAfter [s6Step233EntryGvOut] :=
  hmrRows_owned_drop s6Step233EntryGvAfter [s6Step233EntryFOut,s6Step233EntryGOut,s6Step233EntryFvOut,s6Step233EntryGvOut] 3 s6Step233EntryBank_outgoingOwned

private theorem s6Step233EntryGv_distinct : (s6Step233EntryGvRow.sign::s6Step233EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233EntryGv_owned : (s6Step233EntryGvRow.sign::s6Step233EntryGvRow.payload).toFinset⊆s6Step233EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step233EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233EntryGv_reserved : s6Step233EntryGvBefore.reserve s6Step233EntryGvFresh.toFinset=some s6Step233EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step233EntryGvFresh,arenaWires]
  · norm_num [s6Step233EntryGvBefore,s6Step233EntryFBefore,s6Step233EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step233EntryGvAfter,s6Step233EntryGvBefore,s6Step233EntryFBefore,s6Step233EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step233EntryGv_checked : planRowResizeLog s6Step233EntryGvBefore s6Step233EntryGvRow 131 s6Step233EntryGvFresh=
    some (s6Step233EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922],775⟩,growRow 775 s6Step233EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step233EntryGvBefore s6Step233EntryGvAfter s6Step233EntryGvRow 131 s6Step233EntryGvFresh
    s6Step233EntryGv_distinct s6Step233EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step233EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step233EntryGvRow.payload++s6Step233EntryGvFresh) s6Step233EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step233EntryBank_rows : planWindowRowsLog s6Step233EntryFBefore [(s6Step233EntryFRow,153),(s6Step233EntryGRow,153),(s6Step233EntryFvRow,131),(s6Step233EntryGvRow,131)] [s6Step233EntryFFresh,s6Step233EntryGFresh,s6Step233EntryFvFresh,s6Step233EntryGvFresh]=
    some (s6Step233EntryGvAfter,[s6Step233EntryFOut,s6Step233EntryGOut,s6Step233EntryFvOut,s6Step233EntryGvOut],(growRow 795 s6Step233EntryFFresh ++ (growRow 777 s6Step233EntryGFresh ++ (growRow 776 s6Step233EntryFvFresh ++ (growRow 775 s6Step233EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step233EntryGvAfter [] []=some (s6Step233EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step233EntryGvBefore s6Step233EntryGvAfter s6Step233EntryGvAfter
    s6Step233EntryGvRow s6Step233EntryGvOut 131 s6Step233EntryGvFresh [] [] []
    (growRow 775 s6Step233EntryGvFresh) ([]) s6Step233EntryGv_Incoming s6Step233EntryGv_checked h4 s6Step233EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step233EntryFvBefore s6Step233EntryFvAfter s6Step233EntryGvAfter
    s6Step233EntryFvRow s6Step233EntryFvOut 131 s6Step233EntryFvFresh [(s6Step233EntryGvRow,131)] [s6Step233EntryGvFresh] [s6Step233EntryGvOut]
    (growRow 776 s6Step233EntryFvFresh) ((growRow 775 s6Step233EntryGvFresh ++ [])) s6Step233EntryFv_Incoming s6Step233EntryFv_checked h3 s6Step233EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step233EntryGBefore s6Step233EntryGAfter s6Step233EntryGvAfter
    s6Step233EntryGRow s6Step233EntryGOut 153 s6Step233EntryGFresh [(s6Step233EntryFvRow,131),(s6Step233EntryGvRow,131)] [s6Step233EntryFvFresh,s6Step233EntryGvFresh] [s6Step233EntryFvOut,s6Step233EntryGvOut]
    (growRow 777 s6Step233EntryGFresh) ((growRow 776 s6Step233EntryFvFresh ++ (growRow 775 s6Step233EntryGvFresh ++ []))) s6Step233EntryG_Incoming s6Step233EntryG_checked h2 s6Step233EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step233EntryFBefore s6Step233EntryFAfter s6Step233EntryGvAfter
    s6Step233EntryFRow s6Step233EntryFOut 153 s6Step233EntryFFresh [(s6Step233EntryGRow,153),(s6Step233EntryFvRow,131),(s6Step233EntryGvRow,131)] [s6Step233EntryGFresh,s6Step233EntryFvFresh,s6Step233EntryGvFresh] [s6Step233EntryGOut,s6Step233EntryFvOut,s6Step233EntryGvOut]
    (growRow 795 s6Step233EntryFFresh) ((growRow 777 s6Step233EntryGFresh ++ (growRow 776 s6Step233EntryFvFresh ++ (growRow 775 s6Step233EntryGvFresh ++ [])))) s6Step233EntryF_Incoming s6Step233EntryF_checked h1 s6Step233EntryF_Outgoing
  exact h0

private theorem s6Step233EntryBank_checked : compileHmrBankResizeLog .entry s6Step233EntryFBefore ⟨s6Step233EntryFRow,s6Step233EntryGRow,s6Step233EntryFvRow,s6Step233EntryGvRow⟩ ⟨153,153,131,131⟩ [s6Step233EntryFFresh,s6Step233EntryGFresh,s6Step233EntryFvFresh,s6Step233EntryGvFresh]=
    some (s6Step233EntryGvAfter,⟨s6Step233EntryFOut,s6Step233EntryGOut,s6Step233EntryFvOut,s6Step233EntryGvOut⟩,(growRow 795 s6Step233EntryFFresh ++ (growRow 777 s6Step233EntryGFresh ++ (growRow 776 s6Step233EntryFvFresh ++ (growRow 775 s6Step233EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step233EntryBank_rows]
  rfl

private def s6Step233ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233ExitFBefore : Arena := s6Step233ExitGAfter

private def s6Step233ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 793],795⟩

private def s6Step233ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778],776⟩

private def s6Step233ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 908],777⟩

private def s6Step233ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 864],775⟩

private theorem s6Step233ExitBank_incomingDistinct : ([s6Step233ExitGRow,s6Step233ExitFRow,s6Step233ExitFvRow,s6Step233ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233ExitF_Incoming : rowsOwned s6Step233ExitFBefore [s6Step233ExitFRow,s6Step233ExitFvRow,s6Step233ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step233ExitGRow,s6Step233ExitFRow,s6Step233ExitFvRow,s6Step233ExitGvRow] 1 s6Step233ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step233ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step233ExitBank_outgoingOwned : rowsOwned s6Step233ExitGvAfter [s6Step233ExitGOut,s6Step233ExitFOut,s6Step233ExitFvOut,s6Step233ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step233ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step233ExitF_Outgoing : rowsOwned s6Step233ExitGvAfter [s6Step233ExitFOut,s6Step233ExitFvOut,s6Step233ExitGvOut] :=
  hmrRows_owned_drop s6Step233ExitGvAfter [s6Step233ExitGOut,s6Step233ExitFOut,s6Step233ExitFvOut,s6Step233ExitGvOut] 1 s6Step233ExitBank_outgoingOwned

private theorem s6Step233ExitF_distinct : (s6Step233ExitFRow.sign::s6Step233ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233ExitF_owned : (s6Step233ExitFRow.sign::s6Step233ExitFRow.payload).toFinset⊆s6Step233ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step233ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233ExitF_retired : s6Step233ExitFBefore.retireSet s6Step233ExitFExtra.toFinset=s6Step233ExitFAfter := by
  unfold Arena.retireSet s6Step233ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step233ExitFBefore,s6Step233ExitGAfter,s6Step233ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step233ExitF_checked : planRowResizeLog s6Step233ExitFBefore s6Step233ExitFRow 153 []=
    some (s6Step233ExitFAfter,s6Step233ExitFOut,shrinkRow 795 s6Step233ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step233ExitFBefore s6Step233ExitFRow 153 s6Step233ExitF_distinct s6Step233ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step233ExitFRow.payload.take 153) s6Step233ExitFRow.sign=s6Step233ExitFOut := by decide +kernel
  have hi : s6Step233ExitFRow.payload.drop 153=s6Step233ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step233ExitF_retired] at result
  exact result

private def s6Step233ExitFvAfter : Arena := s6Step233ExitFAfter

private def s6Step233ExitFvBefore : Arena := s6Step233ExitFAfter

private theorem s6Step233ExitFv_Incoming : rowsOwned s6Step233ExitFvBefore [s6Step233ExitFvRow,s6Step233ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step233ExitGRow,s6Step233ExitFRow,s6Step233ExitFvRow,s6Step233ExitGvRow] 2 s6Step233ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step233ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step233ExitFv_Outgoing : rowsOwned s6Step233ExitGvAfter [s6Step233ExitFvOut,s6Step233ExitGvOut] :=
  hmrRows_owned_drop s6Step233ExitGvAfter [s6Step233ExitGOut,s6Step233ExitFOut,s6Step233ExitFvOut,s6Step233ExitGvOut] 2 s6Step233ExitBank_outgoingOwned

private theorem s6Step233ExitFv_distinct : (s6Step233ExitFvRow.sign::s6Step233ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233ExitFv_owned : (s6Step233ExitFvRow.sign::s6Step233ExitFvRow.payload).toFinset⊆s6Step233ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step233ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233ExitFv_reserved : s6Step233ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step233ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step233ExitFv_checked : planRowResizeLog s6Step233ExitFvBefore s6Step233ExitFvRow 132 []=
    some (s6Step233ExitFvAfter,s6Step233ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step233ExitFvBefore s6Step233ExitFvAfter s6Step233ExitFvRow 132 []
    s6Step233ExitFv_distinct s6Step233ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step233ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step233ExitFvRow.payload++[]) s6Step233ExitFvRow.sign=s6Step233ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step233ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step233ExitG_Incoming : rowsOwned s6Step233ExitGBefore [s6Step233ExitGRow,s6Step233ExitFRow,s6Step233ExitFvRow,s6Step233ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step233ExitGRow,s6Step233ExitFRow,s6Step233ExitFvRow,s6Step233ExitGvRow] 0 s6Step233ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step233ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step233ExitG_Outgoing : rowsOwned s6Step233ExitGvAfter [s6Step233ExitGOut,s6Step233ExitFOut,s6Step233ExitFvOut,s6Step233ExitGvOut] :=
  hmrRows_owned_drop s6Step233ExitGvAfter [s6Step233ExitGOut,s6Step233ExitFOut,s6Step233ExitFvOut,s6Step233ExitGvOut] 0 s6Step233ExitBank_outgoingOwned

private theorem s6Step233ExitG_distinct : (s6Step233ExitGRow.sign::s6Step233ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233ExitG_owned : (s6Step233ExitGRow.sign::s6Step233ExitGRow.payload).toFinset⊆s6Step233ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step233ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233ExitG_retired : s6Step233ExitGBefore.retireSet s6Step233ExitGExtra.toFinset=s6Step233ExitGAfter := by
  unfold Arena.retireSet s6Step233ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step233ExitGBefore,s6Step233ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step233ExitG_checked : planRowResizeLog s6Step233ExitGBefore s6Step233ExitGRow 153 []=
    some (s6Step233ExitGAfter,s6Step233ExitGOut,shrinkRow 777 s6Step233ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step233ExitGBefore s6Step233ExitGRow 153 s6Step233ExitG_distinct s6Step233ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step233ExitGRow.payload.take 153) s6Step233ExitGRow.sign=s6Step233ExitGOut := by decide +kernel
  have hi : s6Step233ExitGRow.payload.drop 153=s6Step233ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step233ExitG_retired] at result
  exact result

private def s6Step233ExitGvBefore : Arena := s6Step233ExitFAfter

private theorem s6Step233ExitGv_Incoming : rowsOwned s6Step233ExitGvBefore [s6Step233ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step233ExitGRow,s6Step233ExitFRow,s6Step233ExitFvRow,s6Step233ExitGvRow] 3 s6Step233ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step233ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step233ExitGv_Outgoing : rowsOwned s6Step233ExitGvAfter [s6Step233ExitGvOut] :=
  hmrRows_owned_drop s6Step233ExitGvAfter [s6Step233ExitGOut,s6Step233ExitFOut,s6Step233ExitFvOut,s6Step233ExitGvOut] 3 s6Step233ExitBank_outgoingOwned

private theorem s6Step233ExitGv_distinct : (s6Step233ExitGvRow.sign::s6Step233ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233ExitGv_owned : (s6Step233ExitGvRow.sign::s6Step233ExitGvRow.payload).toFinset⊆s6Step233ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step233ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233ExitGv_retired : s6Step233ExitGvBefore.retireSet s6Step233ExitGvExtra.toFinset=s6Step233ExitGvAfter := by
  unfold Arena.retireSet s6Step233ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step233ExitGvBefore,s6Step233ExitFAfter,s6Step233ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step233ExitGv_checked : planRowResizeLog s6Step233ExitGvBefore s6Step233ExitGvRow 131 []=
    some (s6Step233ExitGvAfter,s6Step233ExitGvOut,shrinkRow 775 s6Step233ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step233ExitGvBefore s6Step233ExitGvRow 131 s6Step233ExitGv_distinct s6Step233ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step233ExitGvRow.payload.take 131) s6Step233ExitGvRow.sign=s6Step233ExitGvOut := by decide +kernel
  have hi : s6Step233ExitGvRow.payload.drop 131=s6Step233ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step233ExitGv_retired] at result
  exact result

private theorem s6Step233ExitBank_rows : planWindowRowsLog s6Step233ExitGBefore [(s6Step233ExitGRow,153),(s6Step233ExitFRow,153),(s6Step233ExitFvRow,132),(s6Step233ExitGvRow,131)] [[],[],[],[]]=
    some (s6Step233ExitGvAfter,[s6Step233ExitGOut,s6Step233ExitFOut,s6Step233ExitFvOut,s6Step233ExitGvOut],(shrinkRow 777 s6Step233ExitGExtra ++ (shrinkRow 795 s6Step233ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step233ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step233ExitGvAfter [] []=some (s6Step233ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step233ExitGvBefore s6Step233ExitGvAfter s6Step233ExitGvAfter
    s6Step233ExitGvRow s6Step233ExitGvOut 131 [] [] [] []
    (shrinkRow 775 s6Step233ExitGvExtra) ([]) s6Step233ExitGv_Incoming s6Step233ExitGv_checked h4 s6Step233ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step233ExitFvBefore s6Step233ExitFvAfter s6Step233ExitGvAfter
    s6Step233ExitFvRow s6Step233ExitFvOut 132 [] [(s6Step233ExitGvRow,131)] [[]] [s6Step233ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step233ExitGvExtra ++ [])) s6Step233ExitFv_Incoming s6Step233ExitFv_checked h3 s6Step233ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step233ExitFBefore s6Step233ExitFAfter s6Step233ExitGvAfter
    s6Step233ExitFRow s6Step233ExitFOut 153 [] [(s6Step233ExitFvRow,132),(s6Step233ExitGvRow,131)] [[],[]] [s6Step233ExitFvOut,s6Step233ExitGvOut]
    (shrinkRow 795 s6Step233ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step233ExitGvExtra ++ []))) s6Step233ExitF_Incoming s6Step233ExitF_checked h2 s6Step233ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step233ExitGBefore s6Step233ExitGAfter s6Step233ExitGvAfter
    s6Step233ExitGRow s6Step233ExitGOut 153 [] [(s6Step233ExitFRow,153),(s6Step233ExitFvRow,132),(s6Step233ExitGvRow,131)] [[],[],[]] [s6Step233ExitFOut,s6Step233ExitFvOut,s6Step233ExitGvOut]
    (shrinkRow 777 s6Step233ExitGExtra) ((shrinkRow 795 s6Step233ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step233ExitGvExtra ++ [])))) s6Step233ExitG_Incoming s6Step233ExitG_checked h1 s6Step233ExitG_Outgoing
  exact h0

private theorem s6Step233ExitBank_checked : compileHmrBankResizeLog .exit s6Step233ExitGBefore ⟨s6Step233ExitFRow,s6Step233ExitGRow,s6Step233ExitFvRow,s6Step233ExitGvRow⟩ ⟨153,153,132,131⟩ [[],[],[],[]]=
    some (s6Step233ExitGvAfter,⟨s6Step233ExitFOut,s6Step233ExitGOut,s6Step233ExitFvOut,s6Step233ExitGvOut⟩,(shrinkRow 777 s6Step233ExitGExtra ++ (shrinkRow 795 s6Step233ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step233ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step233ExitBank_rows]
  rfl

private theorem s6Step233Add0_apart : Disjoint s6Step233Add0Arena.live s6Step233Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step233Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233Add0_card : s6Step233Add0Arena.live.card=891 := by
  decide +kernel

private theorem s6Step233Add0_borrowed : s6Step233Add0Arena.checkBorrow (hmrHybridCount s6Step233Add0Arena s6Step233Add0B.length) s6Step233Add0Work=some s6Step233Add0During := by
  have len : s6Step233Add0Work.length=hmrHybridCount s6Step233Add0Arena s6Step233Add0B.length := by
    rw [hmrHybridCount,s6Step233Add0_card]
    decide +kernel
  have nd : s6Step233Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step233Add0Arena s6Step233Add0During s6Step233Add0Work.toFinset s6Step233Add0_bounded s6Step233Add0_apart rfl

private theorem s6Step233Add0_distinct : (818::857::805::(s6Step233Add0A++s6Step233Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233Add0_owned : (818::857::805::(s6Step233Add0A++s6Step233Add0B)).toFinset⊆s6Step233Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step233Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233Add0_checked : compileHmrHybridCinLog s6Step233Add0Arena 857 818 805 s6Step233Add0A s6Step233Add0B s6Step233Add0Work=some s6Step233Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step233Add0Arena s6Step233Add0During 857 818 805 s6Step233Add0A s6Step233Add0B s6Step233Add0Work
    (by decide +kernel) (by decide +kernel) s6Step233Add0_distinct
    (fun q hq => s6Step233Add0_owned (List.mem_toFinset.mpr hq)) s6Step233Add0_borrowed

private theorem s6Step233Add1_apart : Disjoint s6Step233Add1Arena.live s6Step233Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step233Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233Add1_card : s6Step233Add1Arena.live.card=891 := by
  decide +kernel

private theorem s6Step233Add1_borrowed : s6Step233Add1Arena.checkBorrow (hmrHybridCount s6Step233Add1Arena s6Step233Add1B.length) s6Step233Add1Work=some s6Step233Add1During := by
  have len : s6Step233Add1Work.length=hmrHybridCount s6Step233Add1Arena s6Step233Add1B.length := by
    rw [hmrHybridCount,s6Step233Add1_card]
    decide +kernel
  have nd : s6Step233Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step233Add1Arena s6Step233Add1During s6Step233Add1Work.toFinset s6Step233Add1_bounded s6Step233Add1_apart rfl

private theorem s6Step233Add1_distinct : (818::857::805::(s6Step233Add1A++s6Step233Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233Add1_owned : (818::857::805::(s6Step233Add1A++s6Step233Add1B)).toFinset⊆s6Step233Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step233Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233Add1_checked : compileHmrHybridCinLog s6Step233Add1Arena 857 818 805 s6Step233Add1A s6Step233Add1B s6Step233Add1Work=some s6Step233Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step233Add1Arena s6Step233Add1During 857 818 805 s6Step233Add1A s6Step233Add1B s6Step233Add1Work
    (by decide +kernel) (by decide +kernel) s6Step233Add1_distinct
    (fun q hq => s6Step233Add1_owned (List.mem_toFinset.mpr hq)) s6Step233Add1_borrowed

private theorem s6Step233F4_apart : Disjoint (s6Step233Add0A++s6Step233Add0B).toFinset (s6Step233Add1A++s6Step233Add1B).toFinset := by
  have nd : ((s6Step233Add0A++s6Step233Add0B)++(s6Step233Add1A++s6Step233Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step233F4_carry : s6Step233F4FlagArena.checkBorrow 1 [805]=some s6Step233Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step233F4FlagArena,s6Step233HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step233F4FlagArena,s6Step233HeadFvAfter,s6Step233Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step233F4_distinct : (886::857::818::805::((s6Step233Add0A++s6Step233Add1A)++(s6Step233Add0B++s6Step233Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233F4_flag : s6Step233HeadFvAfter.checkBorrow 1 [818]=some s6Step233F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step233HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step233F4_owned : (886::857::((s6Step233Add0A++s6Step233Add1A)++(s6Step233Add0B++s6Step233Add1B))).toFinset⊆s6Step233HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step233HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233F4_checked : compileHmrHybridF4Log s6Step233HeadFvAfter 886 857 s6Step233Add0A s6Step233Add0B s6Step233Add1A s6Step233Add1B [818] [805] s6Step233Add0Work s6Step233Add1Work=some s6Step233F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step233HeadFvAfter s6Step233F4FlagArena s6Step233Add0Arena s6Step233Add0During s6Step233Add1During 886 857
    s6Step233Add0A s6Step233Add0B s6Step233Add1A s6Step233Add1B [818] [805] s6Step233Add0Work s6Step233Add1Work
    (fun q hq => s6Step233F4_owned (List.mem_toFinset.mpr hq)) s6Step233F4_flag s6Step233F4_carry
    s6Step233F4_distinct s6Step233F4_apart s6Step233Add0_checked s6Step233Add1_checked

private theorem s6Step233Front_branch : s6Step233FrontSigmaArena.checkBorrow 1 [857]=some s6Step233HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step233FrontSigmaArena,s6Step233EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step233FrontSigmaArena,s6Step233EntryGvAfter,s6Step233HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step233Front_entry : HmrFrontEntryValid s6Step233EntryFBefore s6Step233FrontBank 153 131 ⟨153,153,132,131⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step233FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step233EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step233EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step233FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step233Front_sigma : s6Step233EntryGvAfter.checkBorrow 1 [886]=some s6Step233FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step233EntryGvAfter,arenaWires]
  · rfl

private def s6Step233HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233HeadFBefore : Arena := s6Step233HeadGAfter

private def s6Step233HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408],795⟩

private def s6Step233HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823],776⟩

private def s6Step233HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],777⟩

private def s6Step233HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922],775⟩

private theorem s6Step233HeadBank_incomingDistinct : ([s6Step233HeadGRow,s6Step233HeadFRow,s6Step233HeadGvRow,s6Step233HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233HeadF_Incoming : rowsOwned s6Step233HeadFBefore [s6Step233HeadFRow,s6Step233HeadGvRow,s6Step233HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step233HeadGRow,s6Step233HeadFRow,s6Step233HeadGvRow,s6Step233HeadFvRow] 1 s6Step233HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step233HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step233HeadBank_outgoingOwned : rowsOwned s6Step233HeadFvAfter [s6Step233HeadGOut,s6Step233HeadFOut,s6Step233HeadGvOut,s6Step233HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step233HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step233HeadF_Outgoing : rowsOwned s6Step233HeadFvAfter [s6Step233HeadFOut,s6Step233HeadGvOut,s6Step233HeadFvOut] :=
  hmrRows_owned_drop s6Step233HeadFvAfter [s6Step233HeadGOut,s6Step233HeadFOut,s6Step233HeadGvOut,s6Step233HeadFvOut] 1 s6Step233HeadBank_outgoingOwned

private theorem s6Step233HeadF_distinct : (s6Step233HeadFRow.sign::s6Step233HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233HeadF_owned : (s6Step233HeadFRow.sign::s6Step233HeadFRow.payload).toFinset⊆s6Step233HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step233HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233HeadF_reserved : s6Step233HeadFBefore.reserve s6Step233HeadFFresh.toFinset=some s6Step233HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step233HeadFFresh,arenaWires]
  · norm_num [s6Step233HeadFBefore,s6Step233HeadGAfter,s6Step233HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step233HeadFAfter,s6Step233HeadFBefore,s6Step233HeadGAfter,s6Step233HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step233HeadF_checked : planRowResizeLog s6Step233HeadFBefore s6Step233HeadFRow 154 s6Step233HeadFFresh=
    some (s6Step233HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 793],795⟩,growRow 795 s6Step233HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step233HeadFBefore s6Step233HeadFAfter s6Step233HeadFRow 154 s6Step233HeadFFresh
    s6Step233HeadF_distinct s6Step233HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step233HeadF_reserved
  have rowEq : WindowRow.mk (s6Step233HeadFRow.payload++s6Step233HeadFFresh) s6Step233HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 793],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step233HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step233HeadFvBefore : Arena := s6Step233HeadGvAfter

private theorem s6Step233HeadFv_Incoming : rowsOwned s6Step233HeadFvBefore [s6Step233HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step233HeadGRow,s6Step233HeadFRow,s6Step233HeadGvRow,s6Step233HeadFvRow] 3 s6Step233HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step233HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step233HeadFv_Outgoing : rowsOwned s6Step233HeadFvAfter [s6Step233HeadFvOut] :=
  hmrRows_owned_drop s6Step233HeadFvAfter [s6Step233HeadGOut,s6Step233HeadFOut,s6Step233HeadGvOut,s6Step233HeadFvOut] 3 s6Step233HeadBank_outgoingOwned

private theorem s6Step233HeadFv_distinct : (s6Step233HeadFvRow.sign::s6Step233HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233HeadFv_owned : (s6Step233HeadFvRow.sign::s6Step233HeadFvRow.payload).toFinset⊆s6Step233HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step233HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233HeadFv_reserved : s6Step233HeadFvBefore.reserve s6Step233HeadFvFresh.toFinset=some s6Step233HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step233HeadFvFresh,arenaWires]
  · norm_num [s6Step233HeadFvBefore,s6Step233HeadGvAfter,s6Step233HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step233HeadFvAfter,s6Step233HeadFvBefore,s6Step233HeadGvAfter,s6Step233HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step233HeadFv_checked : planRowResizeLog s6Step233HeadFvBefore s6Step233HeadFvRow 132 s6Step233HeadFvFresh=
    some (s6Step233HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778],776⟩,growRow 776 s6Step233HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step233HeadFvBefore s6Step233HeadFvAfter s6Step233HeadFvRow 132 s6Step233HeadFvFresh
    s6Step233HeadFv_distinct s6Step233HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step233HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step233HeadFvRow.payload++s6Step233HeadFvFresh) s6Step233HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step233HeadG_Incoming : rowsOwned s6Step233HeadGBefore [s6Step233HeadGRow,s6Step233HeadFRow,s6Step233HeadGvRow,s6Step233HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step233HeadGRow,s6Step233HeadFRow,s6Step233HeadGvRow,s6Step233HeadFvRow] 0 s6Step233HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step233HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step233HeadG_Outgoing : rowsOwned s6Step233HeadFvAfter [s6Step233HeadGOut,s6Step233HeadFOut,s6Step233HeadGvOut,s6Step233HeadFvOut] :=
  hmrRows_owned_drop s6Step233HeadFvAfter [s6Step233HeadGOut,s6Step233HeadFOut,s6Step233HeadGvOut,s6Step233HeadFvOut] 0 s6Step233HeadBank_outgoingOwned

private theorem s6Step233HeadG_distinct : (s6Step233HeadGRow.sign::s6Step233HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233HeadG_owned : (s6Step233HeadGRow.sign::s6Step233HeadGRow.payload).toFinset⊆s6Step233HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step233HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233HeadG_reserved : s6Step233HeadGBefore.reserve s6Step233HeadGFresh.toFinset=some s6Step233HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step233HeadGFresh,arenaWires]
  · norm_num [s6Step233HeadGBefore,s6Step233HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step233HeadGAfter,s6Step233HeadGBefore,s6Step233HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step233HeadG_checked : planRowResizeLog s6Step233HeadGBefore s6Step233HeadGRow 154 s6Step233HeadGFresh=
    some (s6Step233HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 908],777⟩,growRow 777 s6Step233HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step233HeadGBefore s6Step233HeadGAfter s6Step233HeadGRow 154 s6Step233HeadGFresh
    s6Step233HeadG_distinct s6Step233HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step233HeadG_reserved
  have rowEq : WindowRow.mk (s6Step233HeadGRow.payload++s6Step233HeadGFresh) s6Step233HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 908],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step233HeadGvBefore : Arena := s6Step233HeadFAfter

private theorem s6Step233HeadGv_Incoming : rowsOwned s6Step233HeadGvBefore [s6Step233HeadGvRow,s6Step233HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step233HeadGRow,s6Step233HeadFRow,s6Step233HeadGvRow,s6Step233HeadFvRow] 2 s6Step233HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step233HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step233HeadGv_Outgoing : rowsOwned s6Step233HeadFvAfter [s6Step233HeadGvOut,s6Step233HeadFvOut] :=
  hmrRows_owned_drop s6Step233HeadFvAfter [s6Step233HeadGOut,s6Step233HeadFOut,s6Step233HeadGvOut,s6Step233HeadFvOut] 2 s6Step233HeadBank_outgoingOwned

private theorem s6Step233HeadGv_distinct : (s6Step233HeadGvRow.sign::s6Step233HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step233HeadGv_owned : (s6Step233HeadGvRow.sign::s6Step233HeadGvRow.payload).toFinset⊆s6Step233HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step233HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step233HeadGv_reserved : s6Step233HeadGvBefore.reserve s6Step233HeadGvFresh.toFinset=some s6Step233HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step233HeadGvFresh,arenaWires]
  · norm_num [s6Step233HeadGvBefore,s6Step233HeadFAfter,s6Step233HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step233HeadGvAfter,s6Step233HeadGvBefore,s6Step233HeadFAfter,s6Step233HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step233HeadGv_checked : planRowResizeLog s6Step233HeadGvBefore s6Step233HeadGvRow 132 s6Step233HeadGvFresh=
    some (s6Step233HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 864],775⟩,growRow 775 s6Step233HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step233HeadGvBefore s6Step233HeadGvAfter s6Step233HeadGvRow 132 s6Step233HeadGvFresh
    s6Step233HeadGv_distinct s6Step233HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step233HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step233HeadGvRow.payload++s6Step233HeadGvFresh) s6Step233HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 864],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step233HeadBank_rows : planWindowRowsLog s6Step233HeadGBefore [(s6Step233HeadGRow,154),(s6Step233HeadFRow,154),(s6Step233HeadGvRow,132),(s6Step233HeadFvRow,132)] [s6Step233HeadGFresh,s6Step233HeadFFresh,s6Step233HeadGvFresh,s6Step233HeadFvFresh]=
    some (s6Step233HeadFvAfter,[s6Step233HeadGOut,s6Step233HeadFOut,s6Step233HeadGvOut,s6Step233HeadFvOut],(growRow 777 s6Step233HeadGFresh ++ (growRow 795 s6Step233HeadFFresh ++ (growRow 775 s6Step233HeadGvFresh ++ (growRow 776 s6Step233HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step233HeadFvAfter [] []=some (s6Step233HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step233HeadFvBefore s6Step233HeadFvAfter s6Step233HeadFvAfter
    s6Step233HeadFvRow s6Step233HeadFvOut 132 s6Step233HeadFvFresh [] [] []
    (growRow 776 s6Step233HeadFvFresh) ([]) s6Step233HeadFv_Incoming s6Step233HeadFv_checked h4 s6Step233HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step233HeadGvBefore s6Step233HeadGvAfter s6Step233HeadFvAfter
    s6Step233HeadGvRow s6Step233HeadGvOut 132 s6Step233HeadGvFresh [(s6Step233HeadFvRow,132)] [s6Step233HeadFvFresh] [s6Step233HeadFvOut]
    (growRow 775 s6Step233HeadGvFresh) ((growRow 776 s6Step233HeadFvFresh ++ [])) s6Step233HeadGv_Incoming s6Step233HeadGv_checked h3 s6Step233HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step233HeadFBefore s6Step233HeadFAfter s6Step233HeadFvAfter
    s6Step233HeadFRow s6Step233HeadFOut 154 s6Step233HeadFFresh [(s6Step233HeadGvRow,132),(s6Step233HeadFvRow,132)] [s6Step233HeadGvFresh,s6Step233HeadFvFresh] [s6Step233HeadGvOut,s6Step233HeadFvOut]
    (growRow 795 s6Step233HeadFFresh) ((growRow 775 s6Step233HeadGvFresh ++ (growRow 776 s6Step233HeadFvFresh ++ []))) s6Step233HeadF_Incoming s6Step233HeadF_checked h2 s6Step233HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step233HeadGBefore s6Step233HeadGAfter s6Step233HeadFvAfter
    s6Step233HeadGRow s6Step233HeadGOut 154 s6Step233HeadGFresh [(s6Step233HeadFRow,154),(s6Step233HeadGvRow,132),(s6Step233HeadFvRow,132)] [s6Step233HeadFFresh,s6Step233HeadGvFresh,s6Step233HeadFvFresh] [s6Step233HeadFOut,s6Step233HeadGvOut,s6Step233HeadFvOut]
    (growRow 777 s6Step233HeadGFresh) ((growRow 795 s6Step233HeadFFresh ++ (growRow 775 s6Step233HeadGvFresh ++ (growRow 776 s6Step233HeadFvFresh ++ [])))) s6Step233HeadG_Incoming s6Step233HeadG_checked h1 s6Step233HeadG_Outgoing
  exact h0

private theorem s6Step233HeadBank_checked : compileHmrBankResizeLog .headroom s6Step233HeadGBefore ⟨s6Step233HeadFRow,s6Step233HeadGRow,s6Step233HeadFvRow,s6Step233HeadGvRow⟩ ⟨154,154,132,132⟩ [s6Step233HeadGFresh,s6Step233HeadFFresh,s6Step233HeadGvFresh,s6Step233HeadFvFresh]=
    some (s6Step233HeadFvAfter,⟨s6Step233HeadFOut,s6Step233HeadGOut,s6Step233HeadFvOut,s6Step233HeadGvOut⟩,(growRow 777 s6Step233HeadGFresh ++ (growRow 795 s6Step233HeadFFresh ++ (growRow 775 s6Step233HeadGvFresh ++ (growRow 776 s6Step233HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step233HeadBank_rows]
  rfl

private theorem s6Step233Front_checked : compileHmrSourceFrontLog s6Step233EntryFBefore s6Step233FrontBank 153 131 ⟨153,153,132,131⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step233FrontLog=some s6Step233FrontPlan := by
  have pairEq : s6Step233FrontPair=⟨s6Step233HeadFRow,s6Step233HeadGRow,s6Step233HeadFvRow,s6Step233HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step233FrontHead=⟨s6Step233ExitFRow,s6Step233ExitGRow,s6Step233ExitFvRow,s6Step233ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step233Add0A=s6Step233FrontHead.f.wires := by decide +kernel
  have gEq : s6Step233Add0B=s6Step233FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step233Add1A=s6Step233FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step233Add1B=s6Step233FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step233EntryFBefore s6Step233FrontBank 153 131 ⟨153,153,132,131⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step233FrontLog s6Step233FrontPlan
  · exact s6Step233Front_entry
  · exact s6Step233EntryBank_checked
  · exact s6Step233Front_sigma
  · rfl
  · exact s6Step233Front_branch
  · rfl
  · simpa only [s6Step233FrontPlan,pairEq] using s6Step233HeadBank_checked
  · simpa only [s6Step233FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step233F4_checked
  · exact s6Step233Counter_checked
  · rfl
  · simpa only [s6Step233FrontPlan,headEq] using s6Step233ExitBank_checked

private theorem s6Step233Complete_explicit_checked : compileHmrEarlyStepLog s6Step233EntryFBefore s6Step233FrontBank 153 131 ⟨153,153,132,131⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step233CompleteLog=some s6Step233CompletePlan := by
  let Q := s6Step233EarlyControlPlan
  have hq := s6Step233EarlyControl_plan_checked
  have fv1 : s6Step233CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step233CompleteOut.fv.payload[2]?.getD s6Step233CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step233CompleteOut.fv.payload[3]?.getD s6Step233CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step233CompleteOut.fv.payload[4]?.getD s6Step233CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step233EntryFBefore s6Step233EarlyControlArena s6Step233FrontBank 153 131 ⟨153,153,132,131⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step233CompleteLog s6Step233FrontPlan Q
    s6Step233Front_checked s6Step233Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step233Complete_owned s6Step233Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step233EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 886 s6Step233CompleteOut.fv.second (s6Step233CompleteOut.fv.payload[2]?.getD s6Step233CompleteOut.fv.sign) (s6Step233CompleteOut.fv.payload[3]?.getD s6Step233CompleteOut.fv.sign) (s6Step233CompleteOut.fv.payload[4]?.getD s6Step233CompleteOut.fv.sign) 857 49 s6Step233EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep233Arena : Arena := s6Step233EntryFBefore
def s6PrivateStep233Bank : WindowBank := s6Step233FrontBank
def s6PrivateStep233Spec : HmrSourceWalkStepLog := ⟨153,131,⟨153,153,132,131⟩,49,.early s6Step233CompleteLog⟩
def s6PrivateStep233Plan : HmrSourceStepPlan := .early s6Step233CompletePlan
theorem s6PrivateStep233_source : s6PrivateStep233Spec=s6ObservedLogs224[9] := rfl
theorem s6PrivateStep233_checked : compileHmrSourceStepLog s6PrivateStep233Arena s6PrivateStep233Bank
    s6PrivateStep233Spec.fgWidth s6PrivateStep233Spec.vWidth s6PrivateStep233Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]
    6 498 233 s6PrivateStep233Spec.need none s6PrivateStep233Spec.log=some s6PrivateStep233Plan := by
  change compileHmrSourceStepLog s6Step233EntryFBefore s6Step233FrontBank 153 131 ⟨153,153,132,131⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 6 498 233 49 none (.early s6Step233CompleteLog)=some (.early s6Step233CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 233<498)]
  rw [s6Step233Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
