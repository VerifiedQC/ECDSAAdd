import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep242
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

private def s6Step244CompleteMoves : List (Wire × Wire) := []

private def s6Step244EarlyControlLog : HmrEarlyControlLog := ⟨[818, 830, 822, 898, 786],[841],[868],[805, 810, 809, 817, 812, 915],[]⟩

private def s6Step244FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [888]],[[898], [822], [818], [830]],[[], [], [], []]⟩,[864],[796],[786],[841],[868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[786, 841, 868, 805]⟩

private def s6Step244CompleteLog : HmrEarlyStepLog := ⟨s6Step244FrontLog,s6Step244CompleteMoves,s6Step244EarlyControlLog⟩

private def s6Step244ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403],795⟩

private def s6Step244ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩

private def s6Step244ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],777⟩

private def s6Step244ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888],775⟩

private def s6Step244FrontOut : WindowBank := ⟨s6Step244ExitFOut,s6Step244ExitGOut,s6Step244ExitFvOut,s6Step244ExitGvOut⟩

private def s6Step244CompleteOut : WindowBank := s6Step244FrontOut.repacked s6Step244CompleteMoves

private def s6Step244EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step244EarlyControlPositiveArena,[841],s6Step244EarlyControlEqualityArena,[868],⟨⟨864,false⟩,[⟨⟨841,false⟩,868⟩]⟩⟩

private def s6Step244EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,818⟩,⟨⟨772,false⟩,830⟩,⟨⟨771,false⟩,822⟩,⟨⟨770,false⟩,898⟩,⟨⟨769,false⟩,786⟩]⟩

private def s6Step244EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step244EarlyControlZeroArena,s6Step244EarlyControlZeroPlan,s6Step244EarlyControlClassPlan,s6Step244EarlyControlFlagArena,s6Step244EarlyControlFittedArena,s6Step244EarlyControlHistoryArena,s6Step244EarlyControlSigmaArena,s6Step244EarlyControlOutputArena,s6Step244EarlyControlLog⟩

private def s6Step244CounterWork : List Wire := [786, 841, 868, 805]

private theorem s6Step244Counter_bounded : s6Step244CounterWork.toFinset⊆arenaWires := by norm_num [s6Step244CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step244HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244CounterDuring : Arena := ⟨s6Step244HeadFvAfter.live∪s6Step244CounterWork.toFinset,Finset.union_subset s6Step244HeadFvAfter.bounded s6Step244Counter_bounded⟩

private def s6Step244EntryFFresh : List Wire := []

private def s6Step244EntryFvFresh : List Wire := []

private def s6Step244EntryGFresh : List Wire := []

private def s6Step244EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244EntryGvFresh : List Wire := [888]

private def s6Step244ExitFExtra : List Wire := [822]

private def s6Step244ExitFvExtra : List Wire := [830]

private def s6Step244ExitGExtra : List Wire := [898]

private def s6Step244ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244ExitGvExtra : List Wire := [818]

private def s6Step244Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244Add0Work : List Wire := [868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step244Add0_bounded : s6Step244Add0Work.toFinset⊆arenaWires := by
  have h : s6Step244Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step244Add0During : Arena := ⟨s6Step244Add0Arena.live∪s6Step244Add0Work.toFinset,Finset.union_subset s6Step244Add0Arena.bounded s6Step244Add0_bounded⟩

private def s6Step244Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244Add1Work : List Wire := [868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step244Add1_bounded : s6Step244Add1Work.toFinset⊆arenaWires := by
  have h : s6Step244Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step244Add1During : Arena := ⟨s6Step244Add1Arena.live∪s6Step244Add1Work.toFinset,Finset.union_subset s6Step244Add1Arena.bounded s6Step244Add1_bounded⟩

private def s6Step244F4FlagArena : Arena := ⟨s6Step244HeadFvAfter.live∪{786},Finset.union_subset s6Step244HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step244F4Plan : HmrHybridF4Plan := ⟨s6Step244F4FlagArena,[786],s6Step244Add0Arena,[841],s6Step244Add0During,s6Step244Add0Work,s6Step244Add1During,s6Step244Add1Work⟩

private def s6Step244HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 822],795⟩

private def s6Step244HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 830],776⟩

private def s6Step244HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 898],777⟩

private def s6Step244HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 818],775⟩

private def s6Step244FrontHead : WindowBank := ⟨s6Step244HeadFOut,s6Step244HeadGOut,s6Step244HeadFvOut,s6Step244HeadGvOut⟩

private def s6Step244EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403],795⟩

private def s6Step244EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩

private def s6Step244EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],777⟩

private def s6Step244EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888],775⟩

private def s6Step244FrontPair : WindowBank := ⟨s6Step244EntryFOut,s6Step244EntryGOut,s6Step244EntryFvOut,s6Step244EntryGvOut⟩

private def s6Step244FrontSigmaArena : Arena := ⟨s6Step244EntryGvAfter.live∪{864},Finset.union_subset s6Step244EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step244HeadFFresh : List Wire := [822]

private def s6Step244HeadFvFresh : List Wire := [830]

private def s6Step244HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244HeadGFresh : List Wire := [898]

private def s6Step244HeadGvFresh : List Wire := [818]

private def s6Step244FrontPlan : HmrSourceFront := ⟨s6Step244EntryGvAfter,s6Step244FrontPair,(growRow 795 s6Step244EntryFFresh ++ (growRow 777 s6Step244EntryGFresh ++ (growRow 776 s6Step244EntryFvFresh ++ (growRow 775 s6Step244EntryGvFresh ++ [])))),s6Step244FrontSigmaArena,[864],s6Step244HeadGBefore,[796],
  s6Step244HeadFvAfter,s6Step244FrontHead,(growRow 777 s6Step244HeadGFresh ++ (growRow 795 s6Step244HeadFFresh ++ (growRow 775 s6Step244HeadGvFresh ++ (growRow 776 s6Step244HeadFvFresh ++ [])))),s6Step244F4Plan,s6Step244CounterDuring,s6Step244CounterWork,s6Step244ExitGvAfter,s6Step244FrontOut,(shrinkRow 777 s6Step244ExitGExtra ++ (shrinkRow 795 s6Step244ExitFExtra ++ (shrinkRow 776 s6Step244ExitFvExtra ++ (shrinkRow 775 s6Step244ExitGvExtra ++ []))))⟩

private def s6Step244CompletePlan : HmrEarlyStepPlan := ⟨s6Step244FrontPlan,s6Step244EarlyControlArena,s6Step244EarlyControlPlan,s6Step244CompleteMoves⟩

private theorem s6Step244Complete_apart : List.Disjoint (s6Step244CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [864, 796, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  have nd : ((s6Step244CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[864, 796, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step244Complete_owned : (s6Step244CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step244EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step244EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244Complete_repack : s6Step244ExitGvAfter.checkRepack s6Step244CompleteMoves=some s6Step244EarlyControlArena := by rfl

private theorem s6Step244EarlyControl_branchOwned : ([796] : List Wire).toFinset⊆s6Step244EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step244EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244EarlyControl_branch : compileHmrBranchRetirement s6Step244EarlyControlSigmaArena 796=some s6Step244EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step244EarlyControl_branchOwned
  · ext q
    simp [s6Step244EarlyControlOutputArena,s6Step244EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step244EarlyControl_classEqualityBorrow : s6Step244EarlyControlPositiveArena.checkBorrow (([864, 841] : List Wire).length-1) s6Step244EarlyControlLog.classWork=some s6Step244EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step244EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step244EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step244EarlyControlEqualityArena,s6Step244EarlyControlPositiveArena,s6Step244EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step244EarlyControl_classEqualityOwned : ([864, 841] : List Wire).toFinset⊆s6Step244EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step244EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244EarlyControl_classEquality : compileHmrEqualityLog s6Step244EarlyControlPositiveArena [864, 841] 0 s6Step244EarlyControlLog.classWork=some (s6Step244EarlyControlEqualityArena,s6Step244EarlyControlLog.classWork,s6Step244EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step244EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step244EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step244EarlyControl_classOwned : ([769, 786, 864] : List Wire).toFinset⊆s6Step244EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step244EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244EarlyControl_positiveBorrow : s6Step244EarlyControlZeroArena.checkBorrow (1) s6Step244EarlyControlLog.positiveWork=some s6Step244EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step244EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step244EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step244EarlyControlPositiveArena,s6Step244EarlyControlZeroArena,s6Step244EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step244EarlyControl_class : compileHmrSourceClassLog s6Step244EarlyControlZeroArena false 769 s6Step244EarlyControlZeroPlan.top 0 864 s6Step244EarlyControlLog.positiveWork s6Step244EarlyControlLog.classWork=some s6Step244EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step244EarlyControlClassPlan s6Step244EarlyControlZeroArena false 769 s6Step244EarlyControlZeroPlan.top 0 864
  constructor
  · decide +kernel
  · exact s6Step244EarlyControl_classOwned
  · exact s6Step244EarlyControl_positiveBorrow
  · exact s6Step244EarlyControl_classEquality

private theorem s6Step244EarlyControl_entryRecordOwned : ([796, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step244EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step244EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244EarlyControl_entrySigmaOwned : ([864, 254] : List Wire).toFinset⊆s6Step244EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step244EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244EarlyControl_fitBorrow : s6Step244EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step244EarlyControlLog.recordFresh=some s6Step244EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step244EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step244EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step244EarlyControlFittedArena,s6Step244EarlyControlFlagArena,s6Step244EarlyControlLog,arenaWires]

private theorem s6Step244EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step244EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step244EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244EarlyControl_fit : compileHmrRecordGrowLog s6Step244EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step244EarlyControlLog.recordFresh=some s6Step244EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step244EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step244EarlyControl_fitBorrow

private theorem s6Step244EarlyControl_flagsBorrow : s6Step244EarlyControlEqualityArena.checkBorrow (6) s6Step244EarlyControlLog.flagWork=some s6Step244EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step244EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step244EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step244EarlyControlFlagArena,s6Step244EarlyControlEqualityArena,s6Step244EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step244EarlyControl_flagsOwned : ([868, 253, 252, 251] : List Wire).toFinset⊆s6Step244EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step244EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244EarlyControl_flags : compileHmrFlagsLog s6Step244EarlyControlClassPlan.equalityArena s6Step244EarlyControlClassPlan.equality.top 253 252 251 s6Step244EarlyControlLog.flagWork=some s6Step244EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step244EarlyControl_flagsOwned⟩
  · exact s6Step244EarlyControl_flagsBorrow

private theorem s6Step244EarlyControl_historyBorrow : s6Step244EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step244EarlyControlLog.recordFresh=some s6Step244EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step244EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step244EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step244EarlyControlHistoryArena,s6Step244EarlyControlArena,s6Step244EarlyControlLog,arenaWires]

private theorem s6Step244EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step244EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step244EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244EarlyControl_history : compileHmrRecordGrowLog s6Step244EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step244EarlyControlLog.recordFresh=some s6Step244EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step244EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step244EarlyControl_historyBorrow

private theorem s6Step244EarlyControl_sigmaOwned : ([254, 864] : List Wire).toFinset⊆s6Step244EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step244EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244EarlyControl_sigmaReleaseOwned : ([864] : List Wire).toFinset⊆s6Step244EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step244EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244EarlyControl_sigmaRelease : s6Step244EarlyControlHistoryArena.release {864} (fun _ => false)=some s6Step244EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step244EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step244EarlyControlSigmaArena,s6Step244EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step244EarlyControl_sigma : compileHmrSigmaDropLog s6Step244EarlyControlHistoryArena false 0 0 254 864 []=some s6Step244EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step244EarlyControl_sigmaOwned⟩
  · exact s6Step244EarlyControl_sigmaRelease

private theorem s6Step244EarlyControl_zeroBorrow : s6Step244EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step244EarlyControlLog.zeroWork=some s6Step244EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step244EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step244EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step244EarlyControlZeroArena,s6Step244EarlyControlArena,s6Step244EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step244EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step244EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step244EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244EarlyControl_zero : compileHmrEqualityLog s6Step244EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step244EarlyControlLog.zeroWork=some (s6Step244EarlyControlZeroArena,s6Step244EarlyControlLog.zeroWork,s6Step244EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step244EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step244EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step244EarlyControl_logged : s6Step244EarlyControlPlan.Logged s6Step244EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 864 254 253 252 251 796 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step244EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step244EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step244EarlyControl_zero
  · exact s6Step244EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step244EarlyControl_flags
  · exact s6Step244EarlyControl_fit
  · exact s6Step244EarlyControl_history
  · exact s6Step244EarlyControl_sigma
  · exact s6Step244EarlyControl_branch

private theorem s6Step244EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step244EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 864 254 253 252 251 796 51 s6Step244EarlyControlLog=some s6Step244EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step244EarlyControlPlan s6Step244EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 864 254 253 252 251 796 51 s6Step244EarlyControl_logged

private def s6Step244EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403],795⟩

private def s6Step244EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩

private def s6Step244EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],777⟩

private def s6Step244EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803],775⟩

private def s6Step244FrontBank : WindowBank := ⟨s6Step244EntryFRow,s6Step244EntryGRow,s6Step244EntryFvRow,s6Step244EntryGvRow⟩

private def s6Step244Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 822, 795]

private def s6Step244Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 898, 777]

private def s6Step244Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 830, 776]

private def s6Step244Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 818, 775]

private theorem s6Step244Counter_apart : Disjoint s6Step244HeadFvAfter.live s6Step244CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step244HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244Counter_borrowed : s6Step244HeadFvAfter.checkBorrow 4 s6Step244CounterWork=some s6Step244CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step244HeadFvAfter s6Step244CounterDuring s6Step244CounterWork.toFinset s6Step244Counter_bounded s6Step244Counter_apart rfl

private theorem s6Step244Counter_owned : (864::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step244HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step244HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244Counter_checked : compileHmrCounterStepLog s6Step244HeadFvAfter true 864 [774, 773, 772, 771, 770, 769] s6Step244CounterWork=some s6Step244CounterDuring := by
  have owned : ∀q∈864::[774, 773, 772, 771, 770, 769],q∈s6Step244HeadFvAfter.live := fun q hq => s6Step244Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step244Counter_borrowed

private def s6Step244EntryFAfter : Arena := s6Step244EntryFBefore

private theorem s6Step244EntryBank_incomingDistinct : ([s6Step244EntryFRow,s6Step244EntryGRow,s6Step244EntryFvRow,s6Step244EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244EntryF_Incoming : rowsOwned s6Step244EntryFBefore [s6Step244EntryFRow,s6Step244EntryGRow,s6Step244EntryFvRow,s6Step244EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step244EntryFRow,s6Step244EntryGRow,s6Step244EntryFvRow,s6Step244EntryGvRow] 0 s6Step244EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step244EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step244EntryBank_outgoingOwned : rowsOwned s6Step244EntryGvAfter [s6Step244EntryFOut,s6Step244EntryGOut,s6Step244EntryFvOut,s6Step244EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step244EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step244EntryF_Outgoing : rowsOwned s6Step244EntryGvAfter [s6Step244EntryFOut,s6Step244EntryGOut,s6Step244EntryFvOut,s6Step244EntryGvOut] :=
  hmrRows_owned_drop s6Step244EntryGvAfter [s6Step244EntryFOut,s6Step244EntryGOut,s6Step244EntryFvOut,s6Step244EntryGvOut] 0 s6Step244EntryBank_outgoingOwned

private theorem s6Step244EntryF_distinct : (s6Step244EntryFRow.sign::s6Step244EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244EntryF_owned : (s6Step244EntryFRow.sign::s6Step244EntryFRow.payload).toFinset⊆s6Step244EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step244EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244EntryF_reserved : s6Step244EntryFBefore.reserve s6Step244EntryFFresh.toFinset=some s6Step244EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step244EntryFFresh,arenaWires]
  · norm_num [s6Step244EntryFBefore,s6Step244EntryFFresh,arenaWires]
  · simp only [s6Step244EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step244EntryF_checked : planRowResizeLog s6Step244EntryFBefore s6Step244EntryFRow 148 s6Step244EntryFFresh=
    some (s6Step244EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403],795⟩,growRow 795 s6Step244EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step244EntryFBefore s6Step244EntryFAfter s6Step244EntryFRow 148 s6Step244EntryFFresh
    s6Step244EntryF_distinct s6Step244EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step244EntryF_reserved
  have rowEq : WindowRow.mk (s6Step244EntryFRow.payload++s6Step244EntryFFresh) s6Step244EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step244EntryFvAfter : Arena := s6Step244EntryFBefore

private def s6Step244EntryFvBefore : Arena := s6Step244EntryFBefore

private theorem s6Step244EntryFv_Incoming : rowsOwned s6Step244EntryFvBefore [s6Step244EntryFvRow,s6Step244EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step244EntryFRow,s6Step244EntryGRow,s6Step244EntryFvRow,s6Step244EntryGvRow] 2 s6Step244EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step244EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step244EntryFv_Outgoing : rowsOwned s6Step244EntryGvAfter [s6Step244EntryFvOut,s6Step244EntryGvOut] :=
  hmrRows_owned_drop s6Step244EntryGvAfter [s6Step244EntryFOut,s6Step244EntryGOut,s6Step244EntryFvOut,s6Step244EntryGvOut] 2 s6Step244EntryBank_outgoingOwned

private theorem s6Step244EntryFv_distinct : (s6Step244EntryFvRow.sign::s6Step244EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244EntryFv_owned : (s6Step244EntryFvRow.sign::s6Step244EntryFvRow.payload).toFinset⊆s6Step244EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step244EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244EntryFv_reserved : s6Step244EntryFvBefore.reserve s6Step244EntryFvFresh.toFinset=some s6Step244EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step244EntryFvFresh,arenaWires]
  · norm_num [s6Step244EntryFvBefore,s6Step244EntryFBefore,s6Step244EntryFvFresh,arenaWires]
  · simp only [s6Step244EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step244EntryFv_checked : planRowResizeLog s6Step244EntryFvBefore s6Step244EntryFvRow 137 s6Step244EntryFvFresh=
    some (s6Step244EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩,growRow 776 s6Step244EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step244EntryFvBefore s6Step244EntryFvAfter s6Step244EntryFvRow 137 s6Step244EntryFvFresh
    s6Step244EntryFv_distinct s6Step244EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step244EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step244EntryFvRow.payload++s6Step244EntryFvFresh) s6Step244EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step244EntryGAfter : Arena := s6Step244EntryFBefore

private def s6Step244EntryGBefore : Arena := s6Step244EntryFBefore

private theorem s6Step244EntryG_Incoming : rowsOwned s6Step244EntryGBefore [s6Step244EntryGRow,s6Step244EntryFvRow,s6Step244EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step244EntryFRow,s6Step244EntryGRow,s6Step244EntryFvRow,s6Step244EntryGvRow] 1 s6Step244EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step244EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step244EntryG_Outgoing : rowsOwned s6Step244EntryGvAfter [s6Step244EntryGOut,s6Step244EntryFvOut,s6Step244EntryGvOut] :=
  hmrRows_owned_drop s6Step244EntryGvAfter [s6Step244EntryFOut,s6Step244EntryGOut,s6Step244EntryFvOut,s6Step244EntryGvOut] 1 s6Step244EntryBank_outgoingOwned

private theorem s6Step244EntryG_distinct : (s6Step244EntryGRow.sign::s6Step244EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244EntryG_owned : (s6Step244EntryGRow.sign::s6Step244EntryGRow.payload).toFinset⊆s6Step244EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step244EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244EntryG_reserved : s6Step244EntryGBefore.reserve s6Step244EntryGFresh.toFinset=some s6Step244EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step244EntryGFresh,arenaWires]
  · norm_num [s6Step244EntryGBefore,s6Step244EntryFBefore,s6Step244EntryGFresh,arenaWires]
  · simp only [s6Step244EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step244EntryG_checked : planRowResizeLog s6Step244EntryGBefore s6Step244EntryGRow 148 s6Step244EntryGFresh=
    some (s6Step244EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],777⟩,growRow 777 s6Step244EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step244EntryGBefore s6Step244EntryGAfter s6Step244EntryGRow 148 s6Step244EntryGFresh
    s6Step244EntryG_distinct s6Step244EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step244EntryG_reserved
  have rowEq : WindowRow.mk (s6Step244EntryGRow.payload++s6Step244EntryGFresh) s6Step244EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step244EntryGvBefore : Arena := s6Step244EntryFBefore

private theorem s6Step244EntryGv_Incoming : rowsOwned s6Step244EntryGvBefore [s6Step244EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step244EntryFRow,s6Step244EntryGRow,s6Step244EntryFvRow,s6Step244EntryGvRow] 3 s6Step244EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step244EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step244EntryGv_Outgoing : rowsOwned s6Step244EntryGvAfter [s6Step244EntryGvOut] :=
  hmrRows_owned_drop s6Step244EntryGvAfter [s6Step244EntryFOut,s6Step244EntryGOut,s6Step244EntryFvOut,s6Step244EntryGvOut] 3 s6Step244EntryBank_outgoingOwned

private theorem s6Step244EntryGv_distinct : (s6Step244EntryGvRow.sign::s6Step244EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244EntryGv_owned : (s6Step244EntryGvRow.sign::s6Step244EntryGvRow.payload).toFinset⊆s6Step244EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step244EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244EntryGv_reserved : s6Step244EntryGvBefore.reserve s6Step244EntryGvFresh.toFinset=some s6Step244EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step244EntryGvFresh,arenaWires]
  · norm_num [s6Step244EntryGvBefore,s6Step244EntryFBefore,s6Step244EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step244EntryGvAfter,s6Step244EntryGvBefore,s6Step244EntryFBefore,s6Step244EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step244EntryGv_checked : planRowResizeLog s6Step244EntryGvBefore s6Step244EntryGvRow 137 s6Step244EntryGvFresh=
    some (s6Step244EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888],775⟩,growRow 775 s6Step244EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step244EntryGvBefore s6Step244EntryGvAfter s6Step244EntryGvRow 137 s6Step244EntryGvFresh
    s6Step244EntryGv_distinct s6Step244EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step244EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step244EntryGvRow.payload++s6Step244EntryGvFresh) s6Step244EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step244EntryBank_rows : planWindowRowsLog s6Step244EntryFBefore [(s6Step244EntryFRow,148),(s6Step244EntryGRow,148),(s6Step244EntryFvRow,137),(s6Step244EntryGvRow,137)] [s6Step244EntryFFresh,s6Step244EntryGFresh,s6Step244EntryFvFresh,s6Step244EntryGvFresh]=
    some (s6Step244EntryGvAfter,[s6Step244EntryFOut,s6Step244EntryGOut,s6Step244EntryFvOut,s6Step244EntryGvOut],(growRow 795 s6Step244EntryFFresh ++ (growRow 777 s6Step244EntryGFresh ++ (growRow 776 s6Step244EntryFvFresh ++ (growRow 775 s6Step244EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step244EntryGvAfter [] []=some (s6Step244EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step244EntryGvBefore s6Step244EntryGvAfter s6Step244EntryGvAfter
    s6Step244EntryGvRow s6Step244EntryGvOut 137 s6Step244EntryGvFresh [] [] []
    (growRow 775 s6Step244EntryGvFresh) ([]) s6Step244EntryGv_Incoming s6Step244EntryGv_checked h4 s6Step244EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step244EntryFvBefore s6Step244EntryFvAfter s6Step244EntryGvAfter
    s6Step244EntryFvRow s6Step244EntryFvOut 137 s6Step244EntryFvFresh [(s6Step244EntryGvRow,137)] [s6Step244EntryGvFresh] [s6Step244EntryGvOut]
    (growRow 776 s6Step244EntryFvFresh) ((growRow 775 s6Step244EntryGvFresh ++ [])) s6Step244EntryFv_Incoming s6Step244EntryFv_checked h3 s6Step244EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step244EntryGBefore s6Step244EntryGAfter s6Step244EntryGvAfter
    s6Step244EntryGRow s6Step244EntryGOut 148 s6Step244EntryGFresh [(s6Step244EntryFvRow,137),(s6Step244EntryGvRow,137)] [s6Step244EntryFvFresh,s6Step244EntryGvFresh] [s6Step244EntryFvOut,s6Step244EntryGvOut]
    (growRow 777 s6Step244EntryGFresh) ((growRow 776 s6Step244EntryFvFresh ++ (growRow 775 s6Step244EntryGvFresh ++ []))) s6Step244EntryG_Incoming s6Step244EntryG_checked h2 s6Step244EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step244EntryFBefore s6Step244EntryFAfter s6Step244EntryGvAfter
    s6Step244EntryFRow s6Step244EntryFOut 148 s6Step244EntryFFresh [(s6Step244EntryGRow,148),(s6Step244EntryFvRow,137),(s6Step244EntryGvRow,137)] [s6Step244EntryGFresh,s6Step244EntryFvFresh,s6Step244EntryGvFresh] [s6Step244EntryGOut,s6Step244EntryFvOut,s6Step244EntryGvOut]
    (growRow 795 s6Step244EntryFFresh) ((growRow 777 s6Step244EntryGFresh ++ (growRow 776 s6Step244EntryFvFresh ++ (growRow 775 s6Step244EntryGvFresh ++ [])))) s6Step244EntryF_Incoming s6Step244EntryF_checked h1 s6Step244EntryF_Outgoing
  exact h0

private theorem s6Step244EntryBank_checked : compileHmrBankResizeLog .entry s6Step244EntryFBefore ⟨s6Step244EntryFRow,s6Step244EntryGRow,s6Step244EntryFvRow,s6Step244EntryGvRow⟩ ⟨148,148,137,137⟩ [s6Step244EntryFFresh,s6Step244EntryGFresh,s6Step244EntryFvFresh,s6Step244EntryGvFresh]=
    some (s6Step244EntryGvAfter,⟨s6Step244EntryFOut,s6Step244EntryGOut,s6Step244EntryFvOut,s6Step244EntryGvOut⟩,(growRow 795 s6Step244EntryFFresh ++ (growRow 777 s6Step244EntryGFresh ++ (growRow 776 s6Step244EntryFvFresh ++ (growRow 775 s6Step244EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step244EntryBank_rows]
  rfl

private def s6Step244ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244ExitFBefore : Arena := s6Step244ExitGAfter

private def s6Step244ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 822],795⟩

private def s6Step244ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 830],776⟩

private def s6Step244ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 898],777⟩

private def s6Step244ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 818],775⟩

private theorem s6Step244ExitBank_incomingDistinct : ([s6Step244ExitGRow,s6Step244ExitFRow,s6Step244ExitFvRow,s6Step244ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244ExitF_Incoming : rowsOwned s6Step244ExitFBefore [s6Step244ExitFRow,s6Step244ExitFvRow,s6Step244ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step244ExitGRow,s6Step244ExitFRow,s6Step244ExitFvRow,s6Step244ExitGvRow] 1 s6Step244ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step244ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step244ExitBank_outgoingOwned : rowsOwned s6Step244ExitGvAfter [s6Step244ExitGOut,s6Step244ExitFOut,s6Step244ExitFvOut,s6Step244ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step244ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step244ExitF_Outgoing : rowsOwned s6Step244ExitGvAfter [s6Step244ExitFOut,s6Step244ExitFvOut,s6Step244ExitGvOut] :=
  hmrRows_owned_drop s6Step244ExitGvAfter [s6Step244ExitGOut,s6Step244ExitFOut,s6Step244ExitFvOut,s6Step244ExitGvOut] 1 s6Step244ExitBank_outgoingOwned

private theorem s6Step244ExitF_distinct : (s6Step244ExitFRow.sign::s6Step244ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244ExitF_owned : (s6Step244ExitFRow.sign::s6Step244ExitFRow.payload).toFinset⊆s6Step244ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step244ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244ExitF_retired : s6Step244ExitFBefore.retireSet s6Step244ExitFExtra.toFinset=s6Step244ExitFAfter := by
  unfold Arena.retireSet s6Step244ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step244ExitFBefore,s6Step244ExitGAfter,s6Step244ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step244ExitF_checked : planRowResizeLog s6Step244ExitFBefore s6Step244ExitFRow 148 []=
    some (s6Step244ExitFAfter,s6Step244ExitFOut,shrinkRow 795 s6Step244ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step244ExitFBefore s6Step244ExitFRow 148 s6Step244ExitF_distinct s6Step244ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step244ExitFRow.payload.take 148) s6Step244ExitFRow.sign=s6Step244ExitFOut := by decide +kernel
  have hi : s6Step244ExitFRow.payload.drop 148=s6Step244ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step244ExitF_retired] at result
  exact result

private def s6Step244ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244ExitFvBefore : Arena := s6Step244ExitFAfter

private theorem s6Step244ExitFv_Incoming : rowsOwned s6Step244ExitFvBefore [s6Step244ExitFvRow,s6Step244ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step244ExitGRow,s6Step244ExitFRow,s6Step244ExitFvRow,s6Step244ExitGvRow] 2 s6Step244ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step244ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step244ExitFv_Outgoing : rowsOwned s6Step244ExitGvAfter [s6Step244ExitFvOut,s6Step244ExitGvOut] :=
  hmrRows_owned_drop s6Step244ExitGvAfter [s6Step244ExitGOut,s6Step244ExitFOut,s6Step244ExitFvOut,s6Step244ExitGvOut] 2 s6Step244ExitBank_outgoingOwned

private theorem s6Step244ExitFv_distinct : (s6Step244ExitFvRow.sign::s6Step244ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244ExitFv_owned : (s6Step244ExitFvRow.sign::s6Step244ExitFvRow.payload).toFinset⊆s6Step244ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step244ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244ExitFv_retired : s6Step244ExitFvBefore.retireSet s6Step244ExitFvExtra.toFinset=s6Step244ExitFvAfter := by
  unfold Arena.retireSet s6Step244ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step244ExitFvBefore,s6Step244ExitFAfter,s6Step244ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step244ExitFv_checked : planRowResizeLog s6Step244ExitFvBefore s6Step244ExitFvRow 137 []=
    some (s6Step244ExitFvAfter,s6Step244ExitFvOut,shrinkRow 776 s6Step244ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step244ExitFvBefore s6Step244ExitFvRow 137 s6Step244ExitFv_distinct s6Step244ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step244ExitFvRow.payload.take 137) s6Step244ExitFvRow.sign=s6Step244ExitFvOut := by decide +kernel
  have hi : s6Step244ExitFvRow.payload.drop 137=s6Step244ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step244ExitFv_retired] at result
  exact result

private def s6Step244ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step244ExitG_Incoming : rowsOwned s6Step244ExitGBefore [s6Step244ExitGRow,s6Step244ExitFRow,s6Step244ExitFvRow,s6Step244ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step244ExitGRow,s6Step244ExitFRow,s6Step244ExitFvRow,s6Step244ExitGvRow] 0 s6Step244ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step244ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step244ExitG_Outgoing : rowsOwned s6Step244ExitGvAfter [s6Step244ExitGOut,s6Step244ExitFOut,s6Step244ExitFvOut,s6Step244ExitGvOut] :=
  hmrRows_owned_drop s6Step244ExitGvAfter [s6Step244ExitGOut,s6Step244ExitFOut,s6Step244ExitFvOut,s6Step244ExitGvOut] 0 s6Step244ExitBank_outgoingOwned

private theorem s6Step244ExitG_distinct : (s6Step244ExitGRow.sign::s6Step244ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244ExitG_owned : (s6Step244ExitGRow.sign::s6Step244ExitGRow.payload).toFinset⊆s6Step244ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step244ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244ExitG_retired : s6Step244ExitGBefore.retireSet s6Step244ExitGExtra.toFinset=s6Step244ExitGAfter := by
  unfold Arena.retireSet s6Step244ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step244ExitGBefore,s6Step244ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step244ExitG_checked : planRowResizeLog s6Step244ExitGBefore s6Step244ExitGRow 148 []=
    some (s6Step244ExitGAfter,s6Step244ExitGOut,shrinkRow 777 s6Step244ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step244ExitGBefore s6Step244ExitGRow 148 s6Step244ExitG_distinct s6Step244ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step244ExitGRow.payload.take 148) s6Step244ExitGRow.sign=s6Step244ExitGOut := by decide +kernel
  have hi : s6Step244ExitGRow.payload.drop 148=s6Step244ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step244ExitG_retired] at result
  exact result

private def s6Step244ExitGvBefore : Arena := s6Step244ExitFvAfter

private theorem s6Step244ExitGv_Incoming : rowsOwned s6Step244ExitGvBefore [s6Step244ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step244ExitGRow,s6Step244ExitFRow,s6Step244ExitFvRow,s6Step244ExitGvRow] 3 s6Step244ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step244ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step244ExitGv_Outgoing : rowsOwned s6Step244ExitGvAfter [s6Step244ExitGvOut] :=
  hmrRows_owned_drop s6Step244ExitGvAfter [s6Step244ExitGOut,s6Step244ExitFOut,s6Step244ExitFvOut,s6Step244ExitGvOut] 3 s6Step244ExitBank_outgoingOwned

private theorem s6Step244ExitGv_distinct : (s6Step244ExitGvRow.sign::s6Step244ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244ExitGv_owned : (s6Step244ExitGvRow.sign::s6Step244ExitGvRow.payload).toFinset⊆s6Step244ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step244ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244ExitGv_retired : s6Step244ExitGvBefore.retireSet s6Step244ExitGvExtra.toFinset=s6Step244ExitGvAfter := by
  unfold Arena.retireSet s6Step244ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step244ExitGvBefore,s6Step244ExitFvAfter,s6Step244ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step244ExitGv_checked : planRowResizeLog s6Step244ExitGvBefore s6Step244ExitGvRow 137 []=
    some (s6Step244ExitGvAfter,s6Step244ExitGvOut,shrinkRow 775 s6Step244ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step244ExitGvBefore s6Step244ExitGvRow 137 s6Step244ExitGv_distinct s6Step244ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step244ExitGvRow.payload.take 137) s6Step244ExitGvRow.sign=s6Step244ExitGvOut := by decide +kernel
  have hi : s6Step244ExitGvRow.payload.drop 137=s6Step244ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step244ExitGv_retired] at result
  exact result

private theorem s6Step244ExitBank_rows : planWindowRowsLog s6Step244ExitGBefore [(s6Step244ExitGRow,148),(s6Step244ExitFRow,148),(s6Step244ExitFvRow,137),(s6Step244ExitGvRow,137)] [[],[],[],[]]=
    some (s6Step244ExitGvAfter,[s6Step244ExitGOut,s6Step244ExitFOut,s6Step244ExitFvOut,s6Step244ExitGvOut],(shrinkRow 777 s6Step244ExitGExtra ++ (shrinkRow 795 s6Step244ExitFExtra ++ (shrinkRow 776 s6Step244ExitFvExtra ++ (shrinkRow 775 s6Step244ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step244ExitGvAfter [] []=some (s6Step244ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step244ExitGvBefore s6Step244ExitGvAfter s6Step244ExitGvAfter
    s6Step244ExitGvRow s6Step244ExitGvOut 137 [] [] [] []
    (shrinkRow 775 s6Step244ExitGvExtra) ([]) s6Step244ExitGv_Incoming s6Step244ExitGv_checked h4 s6Step244ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step244ExitFvBefore s6Step244ExitFvAfter s6Step244ExitGvAfter
    s6Step244ExitFvRow s6Step244ExitFvOut 137 [] [(s6Step244ExitGvRow,137)] [[]] [s6Step244ExitGvOut]
    (shrinkRow 776 s6Step244ExitFvExtra) ((shrinkRow 775 s6Step244ExitGvExtra ++ [])) s6Step244ExitFv_Incoming s6Step244ExitFv_checked h3 s6Step244ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step244ExitFBefore s6Step244ExitFAfter s6Step244ExitGvAfter
    s6Step244ExitFRow s6Step244ExitFOut 148 [] [(s6Step244ExitFvRow,137),(s6Step244ExitGvRow,137)] [[],[]] [s6Step244ExitFvOut,s6Step244ExitGvOut]
    (shrinkRow 795 s6Step244ExitFExtra) ((shrinkRow 776 s6Step244ExitFvExtra ++ (shrinkRow 775 s6Step244ExitGvExtra ++ []))) s6Step244ExitF_Incoming s6Step244ExitF_checked h2 s6Step244ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step244ExitGBefore s6Step244ExitGAfter s6Step244ExitGvAfter
    s6Step244ExitGRow s6Step244ExitGOut 148 [] [(s6Step244ExitFRow,148),(s6Step244ExitFvRow,137),(s6Step244ExitGvRow,137)] [[],[],[]] [s6Step244ExitFOut,s6Step244ExitFvOut,s6Step244ExitGvOut]
    (shrinkRow 777 s6Step244ExitGExtra) ((shrinkRow 795 s6Step244ExitFExtra ++ (shrinkRow 776 s6Step244ExitFvExtra ++ (shrinkRow 775 s6Step244ExitGvExtra ++ [])))) s6Step244ExitG_Incoming s6Step244ExitG_checked h1 s6Step244ExitG_Outgoing
  exact h0

private theorem s6Step244ExitBank_checked : compileHmrBankResizeLog .exit s6Step244ExitGBefore ⟨s6Step244ExitFRow,s6Step244ExitGRow,s6Step244ExitFvRow,s6Step244ExitGvRow⟩ ⟨148,148,137,137⟩ [[],[],[],[]]=
    some (s6Step244ExitGvAfter,⟨s6Step244ExitFOut,s6Step244ExitGOut,s6Step244ExitFvOut,s6Step244ExitGvOut⟩,(shrinkRow 777 s6Step244ExitGExtra ++ (shrinkRow 795 s6Step244ExitFExtra ++ (shrinkRow 776 s6Step244ExitFvExtra ++ (shrinkRow 775 s6Step244ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step244ExitBank_rows]
  rfl

private theorem s6Step244Add0_apart : Disjoint s6Step244Add0Arena.live s6Step244Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step244Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244Add0_card : s6Step244Add0Arena.live.card=895 := by
  decide +kernel

private theorem s6Step244Add0_borrowed : s6Step244Add0Arena.checkBorrow (hmrHybridCount s6Step244Add0Arena s6Step244Add0B.length) s6Step244Add0Work=some s6Step244Add0During := by
  have len : s6Step244Add0Work.length=hmrHybridCount s6Step244Add0Arena s6Step244Add0B.length := by
    rw [hmrHybridCount,s6Step244Add0_card]
    decide +kernel
  have nd : s6Step244Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step244Add0Arena s6Step244Add0During s6Step244Add0Work.toFinset s6Step244Add0_bounded s6Step244Add0_apart rfl

private theorem s6Step244Add0_distinct : (786::796::841::(s6Step244Add0A++s6Step244Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244Add0_owned : (786::796::841::(s6Step244Add0A++s6Step244Add0B)).toFinset⊆s6Step244Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step244Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244Add0_checked : compileHmrHybridCinLog s6Step244Add0Arena 796 786 841 s6Step244Add0A s6Step244Add0B s6Step244Add0Work=some s6Step244Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step244Add0Arena s6Step244Add0During 796 786 841 s6Step244Add0A s6Step244Add0B s6Step244Add0Work
    (by decide +kernel) (by decide +kernel) s6Step244Add0_distinct
    (fun q hq => s6Step244Add0_owned (List.mem_toFinset.mpr hq)) s6Step244Add0_borrowed

private theorem s6Step244Add1_apart : Disjoint s6Step244Add1Arena.live s6Step244Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step244Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244Add1_card : s6Step244Add1Arena.live.card=895 := by
  decide +kernel

private theorem s6Step244Add1_borrowed : s6Step244Add1Arena.checkBorrow (hmrHybridCount s6Step244Add1Arena s6Step244Add1B.length) s6Step244Add1Work=some s6Step244Add1During := by
  have len : s6Step244Add1Work.length=hmrHybridCount s6Step244Add1Arena s6Step244Add1B.length := by
    rw [hmrHybridCount,s6Step244Add1_card]
    decide +kernel
  have nd : s6Step244Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step244Add1Arena s6Step244Add1During s6Step244Add1Work.toFinset s6Step244Add1_bounded s6Step244Add1_apart rfl

private theorem s6Step244Add1_distinct : (786::796::841::(s6Step244Add1A++s6Step244Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244Add1_owned : (786::796::841::(s6Step244Add1A++s6Step244Add1B)).toFinset⊆s6Step244Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step244Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244Add1_checked : compileHmrHybridCinLog s6Step244Add1Arena 796 786 841 s6Step244Add1A s6Step244Add1B s6Step244Add1Work=some s6Step244Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step244Add1Arena s6Step244Add1During 796 786 841 s6Step244Add1A s6Step244Add1B s6Step244Add1Work
    (by decide +kernel) (by decide +kernel) s6Step244Add1_distinct
    (fun q hq => s6Step244Add1_owned (List.mem_toFinset.mpr hq)) s6Step244Add1_borrowed

private theorem s6Step244F4_apart : Disjoint (s6Step244Add0A++s6Step244Add0B).toFinset (s6Step244Add1A++s6Step244Add1B).toFinset := by
  have nd : ((s6Step244Add0A++s6Step244Add0B)++(s6Step244Add1A++s6Step244Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step244F4_carry : s6Step244F4FlagArena.checkBorrow 1 [841]=some s6Step244Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step244F4FlagArena,s6Step244HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step244F4FlagArena,s6Step244HeadFvAfter,s6Step244Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step244F4_distinct : (864::796::786::841::((s6Step244Add0A++s6Step244Add1A)++(s6Step244Add0B++s6Step244Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244F4_flag : s6Step244HeadFvAfter.checkBorrow 1 [786]=some s6Step244F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step244HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step244F4_owned : (864::796::((s6Step244Add0A++s6Step244Add1A)++(s6Step244Add0B++s6Step244Add1B))).toFinset⊆s6Step244HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step244HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244F4_checked : compileHmrHybridF4Log s6Step244HeadFvAfter 864 796 s6Step244Add0A s6Step244Add0B s6Step244Add1A s6Step244Add1B [786] [841] s6Step244Add0Work s6Step244Add1Work=some s6Step244F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step244HeadFvAfter s6Step244F4FlagArena s6Step244Add0Arena s6Step244Add0During s6Step244Add1During 864 796
    s6Step244Add0A s6Step244Add0B s6Step244Add1A s6Step244Add1B [786] [841] s6Step244Add0Work s6Step244Add1Work
    (fun q hq => s6Step244F4_owned (List.mem_toFinset.mpr hq)) s6Step244F4_flag s6Step244F4_carry
    s6Step244F4_distinct s6Step244F4_apart s6Step244Add0_checked s6Step244Add1_checked

private theorem s6Step244Front_branch : s6Step244FrontSigmaArena.checkBorrow 1 [796]=some s6Step244HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step244FrontSigmaArena,s6Step244EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step244FrontSigmaArena,s6Step244EntryGvAfter,s6Step244HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step244Front_entry : HmrFrontEntryValid s6Step244EntryFBefore s6Step244FrontBank 148 137 ⟨148,148,137,137⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step244FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step244EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step244EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step244FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step244Front_sigma : s6Step244EntryGvAfter.checkBorrow 1 [864]=some s6Step244FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step244EntryGvAfter,arenaWires]
  · rfl

private def s6Step244HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244HeadFBefore : Arena := s6Step244HeadGAfter

private def s6Step244HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403],795⟩

private def s6Step244HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩

private def s6Step244HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],777⟩

private def s6Step244HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888],775⟩

private theorem s6Step244HeadBank_incomingDistinct : ([s6Step244HeadGRow,s6Step244HeadFRow,s6Step244HeadGvRow,s6Step244HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244HeadF_Incoming : rowsOwned s6Step244HeadFBefore [s6Step244HeadFRow,s6Step244HeadGvRow,s6Step244HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step244HeadGRow,s6Step244HeadFRow,s6Step244HeadGvRow,s6Step244HeadFvRow] 1 s6Step244HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step244HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step244HeadBank_outgoingOwned : rowsOwned s6Step244HeadFvAfter [s6Step244HeadGOut,s6Step244HeadFOut,s6Step244HeadGvOut,s6Step244HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step244HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step244HeadF_Outgoing : rowsOwned s6Step244HeadFvAfter [s6Step244HeadFOut,s6Step244HeadGvOut,s6Step244HeadFvOut] :=
  hmrRows_owned_drop s6Step244HeadFvAfter [s6Step244HeadGOut,s6Step244HeadFOut,s6Step244HeadGvOut,s6Step244HeadFvOut] 1 s6Step244HeadBank_outgoingOwned

private theorem s6Step244HeadF_distinct : (s6Step244HeadFRow.sign::s6Step244HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244HeadF_owned : (s6Step244HeadFRow.sign::s6Step244HeadFRow.payload).toFinset⊆s6Step244HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step244HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244HeadF_reserved : s6Step244HeadFBefore.reserve s6Step244HeadFFresh.toFinset=some s6Step244HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step244HeadFFresh,arenaWires]
  · norm_num [s6Step244HeadFBefore,s6Step244HeadGAfter,s6Step244HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step244HeadFAfter,s6Step244HeadFBefore,s6Step244HeadGAfter,s6Step244HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step244HeadF_checked : planRowResizeLog s6Step244HeadFBefore s6Step244HeadFRow 149 s6Step244HeadFFresh=
    some (s6Step244HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 822],795⟩,growRow 795 s6Step244HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step244HeadFBefore s6Step244HeadFAfter s6Step244HeadFRow 149 s6Step244HeadFFresh
    s6Step244HeadF_distinct s6Step244HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step244HeadF_reserved
  have rowEq : WindowRow.mk (s6Step244HeadFRow.payload++s6Step244HeadFFresh) s6Step244HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 822],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step244HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step244HeadFvBefore : Arena := s6Step244HeadGvAfter

private theorem s6Step244HeadFv_Incoming : rowsOwned s6Step244HeadFvBefore [s6Step244HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step244HeadGRow,s6Step244HeadFRow,s6Step244HeadGvRow,s6Step244HeadFvRow] 3 s6Step244HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step244HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step244HeadFv_Outgoing : rowsOwned s6Step244HeadFvAfter [s6Step244HeadFvOut] :=
  hmrRows_owned_drop s6Step244HeadFvAfter [s6Step244HeadGOut,s6Step244HeadFOut,s6Step244HeadGvOut,s6Step244HeadFvOut] 3 s6Step244HeadBank_outgoingOwned

private theorem s6Step244HeadFv_distinct : (s6Step244HeadFvRow.sign::s6Step244HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244HeadFv_owned : (s6Step244HeadFvRow.sign::s6Step244HeadFvRow.payload).toFinset⊆s6Step244HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step244HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244HeadFv_reserved : s6Step244HeadFvBefore.reserve s6Step244HeadFvFresh.toFinset=some s6Step244HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step244HeadFvFresh,arenaWires]
  · norm_num [s6Step244HeadFvBefore,s6Step244HeadGvAfter,s6Step244HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step244HeadFvAfter,s6Step244HeadFvBefore,s6Step244HeadGvAfter,s6Step244HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step244HeadFv_checked : planRowResizeLog s6Step244HeadFvBefore s6Step244HeadFvRow 138 s6Step244HeadFvFresh=
    some (s6Step244HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 830],776⟩,growRow 776 s6Step244HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step244HeadFvBefore s6Step244HeadFvAfter s6Step244HeadFvRow 138 s6Step244HeadFvFresh
    s6Step244HeadFv_distinct s6Step244HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step244HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step244HeadFvRow.payload++s6Step244HeadFvFresh) s6Step244HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 830],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step244HeadG_Incoming : rowsOwned s6Step244HeadGBefore [s6Step244HeadGRow,s6Step244HeadFRow,s6Step244HeadGvRow,s6Step244HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step244HeadGRow,s6Step244HeadFRow,s6Step244HeadGvRow,s6Step244HeadFvRow] 0 s6Step244HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step244HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step244HeadG_Outgoing : rowsOwned s6Step244HeadFvAfter [s6Step244HeadGOut,s6Step244HeadFOut,s6Step244HeadGvOut,s6Step244HeadFvOut] :=
  hmrRows_owned_drop s6Step244HeadFvAfter [s6Step244HeadGOut,s6Step244HeadFOut,s6Step244HeadGvOut,s6Step244HeadFvOut] 0 s6Step244HeadBank_outgoingOwned

private theorem s6Step244HeadG_distinct : (s6Step244HeadGRow.sign::s6Step244HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244HeadG_owned : (s6Step244HeadGRow.sign::s6Step244HeadGRow.payload).toFinset⊆s6Step244HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step244HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244HeadG_reserved : s6Step244HeadGBefore.reserve s6Step244HeadGFresh.toFinset=some s6Step244HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step244HeadGFresh,arenaWires]
  · norm_num [s6Step244HeadGBefore,s6Step244HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step244HeadGAfter,s6Step244HeadGBefore,s6Step244HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step244HeadG_checked : planRowResizeLog s6Step244HeadGBefore s6Step244HeadGRow 149 s6Step244HeadGFresh=
    some (s6Step244HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 898],777⟩,growRow 777 s6Step244HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step244HeadGBefore s6Step244HeadGAfter s6Step244HeadGRow 149 s6Step244HeadGFresh
    s6Step244HeadG_distinct s6Step244HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step244HeadG_reserved
  have rowEq : WindowRow.mk (s6Step244HeadGRow.payload++s6Step244HeadGFresh) s6Step244HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 898],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step244HeadGvBefore : Arena := s6Step244HeadFAfter

private theorem s6Step244HeadGv_Incoming : rowsOwned s6Step244HeadGvBefore [s6Step244HeadGvRow,s6Step244HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step244HeadGRow,s6Step244HeadFRow,s6Step244HeadGvRow,s6Step244HeadFvRow] 2 s6Step244HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step244HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step244HeadGv_Outgoing : rowsOwned s6Step244HeadFvAfter [s6Step244HeadGvOut,s6Step244HeadFvOut] :=
  hmrRows_owned_drop s6Step244HeadFvAfter [s6Step244HeadGOut,s6Step244HeadFOut,s6Step244HeadGvOut,s6Step244HeadFvOut] 2 s6Step244HeadBank_outgoingOwned

private theorem s6Step244HeadGv_distinct : (s6Step244HeadGvRow.sign::s6Step244HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step244HeadGv_owned : (s6Step244HeadGvRow.sign::s6Step244HeadGvRow.payload).toFinset⊆s6Step244HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step244HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step244HeadGv_reserved : s6Step244HeadGvBefore.reserve s6Step244HeadGvFresh.toFinset=some s6Step244HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step244HeadGvFresh,arenaWires]
  · norm_num [s6Step244HeadGvBefore,s6Step244HeadFAfter,s6Step244HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step244HeadGvAfter,s6Step244HeadGvBefore,s6Step244HeadFAfter,s6Step244HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step244HeadGv_checked : planRowResizeLog s6Step244HeadGvBefore s6Step244HeadGvRow 138 s6Step244HeadGvFresh=
    some (s6Step244HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 818],775⟩,growRow 775 s6Step244HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step244HeadGvBefore s6Step244HeadGvAfter s6Step244HeadGvRow 138 s6Step244HeadGvFresh
    s6Step244HeadGv_distinct s6Step244HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step244HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step244HeadGvRow.payload++s6Step244HeadGvFresh) s6Step244HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 818],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step244HeadBank_rows : planWindowRowsLog s6Step244HeadGBefore [(s6Step244HeadGRow,149),(s6Step244HeadFRow,149),(s6Step244HeadGvRow,138),(s6Step244HeadFvRow,138)] [s6Step244HeadGFresh,s6Step244HeadFFresh,s6Step244HeadGvFresh,s6Step244HeadFvFresh]=
    some (s6Step244HeadFvAfter,[s6Step244HeadGOut,s6Step244HeadFOut,s6Step244HeadGvOut,s6Step244HeadFvOut],(growRow 777 s6Step244HeadGFresh ++ (growRow 795 s6Step244HeadFFresh ++ (growRow 775 s6Step244HeadGvFresh ++ (growRow 776 s6Step244HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step244HeadFvAfter [] []=some (s6Step244HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step244HeadFvBefore s6Step244HeadFvAfter s6Step244HeadFvAfter
    s6Step244HeadFvRow s6Step244HeadFvOut 138 s6Step244HeadFvFresh [] [] []
    (growRow 776 s6Step244HeadFvFresh) ([]) s6Step244HeadFv_Incoming s6Step244HeadFv_checked h4 s6Step244HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step244HeadGvBefore s6Step244HeadGvAfter s6Step244HeadFvAfter
    s6Step244HeadGvRow s6Step244HeadGvOut 138 s6Step244HeadGvFresh [(s6Step244HeadFvRow,138)] [s6Step244HeadFvFresh] [s6Step244HeadFvOut]
    (growRow 775 s6Step244HeadGvFresh) ((growRow 776 s6Step244HeadFvFresh ++ [])) s6Step244HeadGv_Incoming s6Step244HeadGv_checked h3 s6Step244HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step244HeadFBefore s6Step244HeadFAfter s6Step244HeadFvAfter
    s6Step244HeadFRow s6Step244HeadFOut 149 s6Step244HeadFFresh [(s6Step244HeadGvRow,138),(s6Step244HeadFvRow,138)] [s6Step244HeadGvFresh,s6Step244HeadFvFresh] [s6Step244HeadGvOut,s6Step244HeadFvOut]
    (growRow 795 s6Step244HeadFFresh) ((growRow 775 s6Step244HeadGvFresh ++ (growRow 776 s6Step244HeadFvFresh ++ []))) s6Step244HeadF_Incoming s6Step244HeadF_checked h2 s6Step244HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step244HeadGBefore s6Step244HeadGAfter s6Step244HeadFvAfter
    s6Step244HeadGRow s6Step244HeadGOut 149 s6Step244HeadGFresh [(s6Step244HeadFRow,149),(s6Step244HeadGvRow,138),(s6Step244HeadFvRow,138)] [s6Step244HeadFFresh,s6Step244HeadGvFresh,s6Step244HeadFvFresh] [s6Step244HeadFOut,s6Step244HeadGvOut,s6Step244HeadFvOut]
    (growRow 777 s6Step244HeadGFresh) ((growRow 795 s6Step244HeadFFresh ++ (growRow 775 s6Step244HeadGvFresh ++ (growRow 776 s6Step244HeadFvFresh ++ [])))) s6Step244HeadG_Incoming s6Step244HeadG_checked h1 s6Step244HeadG_Outgoing
  exact h0

private theorem s6Step244HeadBank_checked : compileHmrBankResizeLog .headroom s6Step244HeadGBefore ⟨s6Step244HeadFRow,s6Step244HeadGRow,s6Step244HeadFvRow,s6Step244HeadGvRow⟩ ⟨149,149,138,138⟩ [s6Step244HeadGFresh,s6Step244HeadFFresh,s6Step244HeadGvFresh,s6Step244HeadFvFresh]=
    some (s6Step244HeadFvAfter,⟨s6Step244HeadFOut,s6Step244HeadGOut,s6Step244HeadFvOut,s6Step244HeadGvOut⟩,(growRow 777 s6Step244HeadGFresh ++ (growRow 795 s6Step244HeadFFresh ++ (growRow 775 s6Step244HeadGvFresh ++ (growRow 776 s6Step244HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step244HeadBank_rows]
  rfl

private theorem s6Step244Front_checked : compileHmrSourceFrontLog s6Step244EntryFBefore s6Step244FrontBank 148 137 ⟨148,148,137,137⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step244FrontLog=some s6Step244FrontPlan := by
  have pairEq : s6Step244FrontPair=⟨s6Step244HeadFRow,s6Step244HeadGRow,s6Step244HeadFvRow,s6Step244HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step244FrontHead=⟨s6Step244ExitFRow,s6Step244ExitGRow,s6Step244ExitFvRow,s6Step244ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step244Add0A=s6Step244FrontHead.f.wires := by decide +kernel
  have gEq : s6Step244Add0B=s6Step244FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step244Add1A=s6Step244FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step244Add1B=s6Step244FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step244EntryFBefore s6Step244FrontBank 148 137 ⟨148,148,137,137⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step244FrontLog s6Step244FrontPlan
  · exact s6Step244Front_entry
  · exact s6Step244EntryBank_checked
  · exact s6Step244Front_sigma
  · rfl
  · exact s6Step244Front_branch
  · rfl
  · simpa only [s6Step244FrontPlan,pairEq] using s6Step244HeadBank_checked
  · simpa only [s6Step244FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step244F4_checked
  · exact s6Step244Counter_checked
  · rfl
  · simpa only [s6Step244FrontPlan,headEq] using s6Step244ExitBank_checked

private theorem s6Step244Complete_explicit_checked : compileHmrEarlyStepLog s6Step244EntryFBefore s6Step244FrontBank 148 137 ⟨148,148,137,137⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step244CompleteLog=some s6Step244CompletePlan := by
  let Q := s6Step244EarlyControlPlan
  have hq := s6Step244EarlyControl_plan_checked
  have fv1 : s6Step244CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step244CompleteOut.fv.payload[2]?.getD s6Step244CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step244CompleteOut.fv.payload[3]?.getD s6Step244CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step244CompleteOut.fv.payload[4]?.getD s6Step244CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step244EntryFBefore s6Step244EarlyControlArena s6Step244FrontBank 148 137 ⟨148,148,137,137⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step244CompleteLog s6Step244FrontPlan Q
    s6Step244Front_checked s6Step244Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step244Complete_owned s6Step244Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step244EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 864 s6Step244CompleteOut.fv.second (s6Step244CompleteOut.fv.payload[2]?.getD s6Step244CompleteOut.fv.sign) (s6Step244CompleteOut.fv.payload[3]?.getD s6Step244CompleteOut.fv.sign) (s6Step244CompleteOut.fv.payload[4]?.getD s6Step244CompleteOut.fv.sign) 796 51 s6Step244EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep244Arena : Arena := s6Step244EntryFBefore
def s6PrivateStep244Bank : WindowBank := s6Step244FrontBank
def s6PrivateStep244Spec : HmrSourceWalkStepLog := ⟨148,137,⟨148,148,137,137⟩,51,.early s6Step244CompleteLog⟩
def s6PrivateStep244Plan : HmrSourceStepPlan := .early s6Step244CompletePlan
theorem s6PrivateStep244_source : s6PrivateStep244Spec=s6ObservedLogs240[4] := rfl
theorem s6PrivateStep244_checked : compileHmrSourceStepLog s6PrivateStep244Arena s6PrivateStep244Bank
    s6PrivateStep244Spec.fgWidth s6PrivateStep244Spec.vWidth s6PrivateStep244Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]
    6 498 244 s6PrivateStep244Spec.need none s6PrivateStep244Spec.log=some s6PrivateStep244Plan := by
  change compileHmrSourceStepLog s6Step244EntryFBefore s6Step244FrontBank 148 137 ⟨148,148,137,137⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 6 498 244 51 none (.early s6Step244CompleteLog)=some (.early s6Step244CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 244<498)]
  rw [s6Step244Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
