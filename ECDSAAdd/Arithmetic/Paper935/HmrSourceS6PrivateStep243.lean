import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep241
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

private def s6Step243CompleteMoves : List (Wire × Wire) := [(898,404),(796,405)]

private def s6Step243EarlyControlLog : HmrEarlyControlLog := ⟨[796, 898, 822, 818, 830],[786],[841],[868, 805, 810, 809, 817, 812],[905]⟩

private def s6Step243FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [830, 786], [], [803]],[[841], [818], [822], [869]],[[], [], [], []]⟩,[864],[888],[868],[805],[810, 809, 817, 812, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[810, 809, 817, 812, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[868, 805, 810, 809]⟩

private def s6Step243CompleteLog : HmrEarlyStepLog := ⟨s6Step243FrontLog,s6Step243CompleteMoves,s6Step243EarlyControlLog⟩

private def s6Step243ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403],795⟩

private def s6Step243ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩

private def s6Step243ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],777⟩

private def s6Step243ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803],775⟩

private def s6Step243FrontOut : WindowBank := ⟨s6Step243ExitFOut,s6Step243ExitGOut,s6Step243ExitFvOut,s6Step243ExitGvOut⟩

private def s6Step243CompleteOut : WindowBank := s6Step243FrontOut.repacked s6Step243CompleteMoves

private def s6Step243EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step243EarlyControlPositiveArena,[786],s6Step243EarlyControlEqualityArena,[841],⟨⟨864,false⟩,[⟨⟨786,false⟩,841⟩]⟩⟩

private def s6Step243EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,796⟩,⟨⟨772,false⟩,898⟩,⟨⟨771,false⟩,822⟩,⟨⟨770,false⟩,818⟩,⟨⟨769,false⟩,830⟩]⟩

private def s6Step243EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step243EarlyControlZeroArena,s6Step243EarlyControlZeroPlan,s6Step243EarlyControlClassPlan,s6Step243EarlyControlFlagArena,s6Step243EarlyControlFittedArena,s6Step243EarlyControlHistoryArena,s6Step243EarlyControlSigmaArena,s6Step243EarlyControlOutputArena,s6Step243EarlyControlLog⟩

private def s6Step243CounterWork : List Wire := [868, 805, 810, 809]

private theorem s6Step243Counter_bounded : s6Step243CounterWork.toFinset⊆arenaWires := by norm_num [s6Step243CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step243HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243CounterDuring : Arena := ⟨s6Step243HeadFvAfter.live∪s6Step243CounterWork.toFinset,Finset.union_subset s6Step243HeadFvAfter.bounded s6Step243Counter_bounded⟩

private def s6Step243EntryFFresh : List Wire := []

private def s6Step243EntryFvFresh : List Wire := []

private def s6Step243EntryGFresh : List Wire := [830, 786]

private def s6Step243EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243EntryGvFresh : List Wire := [803]

private def s6Step243ExitFExtra : List Wire := [404, 405, 818]

private def s6Step243ExitGExtra : List Wire := [830, 786, 841]

private def s6Step243ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<404) ∨ (406≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243ExitGvExtra : List Wire := [822]

private def s6Step243Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243Add0Work : List Wire := [810, 809, 817, 812, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step243Add0_bounded : s6Step243Add0Work.toFinset⊆arenaWires := by
  have h : s6Step243Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step243Add0During : Arena := ⟨s6Step243Add0Arena.live∪s6Step243Add0Work.toFinset,Finset.union_subset s6Step243Add0Arena.bounded s6Step243Add0_bounded⟩

private def s6Step243Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243Add1Work : List Wire := [810, 809, 817, 812, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step243Add1_bounded : s6Step243Add1Work.toFinset⊆arenaWires := by
  have h : s6Step243Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step243Add1During : Arena := ⟨s6Step243Add1Arena.live∪s6Step243Add1Work.toFinset,Finset.union_subset s6Step243Add1Arena.bounded s6Step243Add1_bounded⟩

private def s6Step243F4FlagArena : Arena := ⟨s6Step243HeadFvAfter.live∪{868},Finset.union_subset s6Step243HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step243F4Plan : HmrHybridF4Plan := ⟨s6Step243F4FlagArena,[868],s6Step243Add0Arena,[805],s6Step243Add0During,s6Step243Add0Work,s6Step243Add1During,s6Step243Add1Work⟩

private def s6Step243HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 818],795⟩

private def s6Step243HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩

private def s6Step243HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 786, 841],777⟩

private def s6Step243HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 822],775⟩

private def s6Step243FrontHead : WindowBank := ⟨s6Step243HeadFOut,s6Step243HeadGOut,s6Step243HeadFvOut,s6Step243HeadGvOut⟩

private def s6Step243EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩

private def s6Step243EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857],776⟩

private def s6Step243EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 786],777⟩

private def s6Step243EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803],775⟩

private def s6Step243FrontPair : WindowBank := ⟨s6Step243EntryFOut,s6Step243EntryGOut,s6Step243EntryFvOut,s6Step243EntryGvOut⟩

private def s6Step243FrontSigmaArena : Arena := ⟨s6Step243EntryGvAfter.live∪{864},Finset.union_subset s6Step243EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step243HeadFFresh : List Wire := [818]

private def s6Step243HeadFvFresh : List Wire := [869]

private def s6Step243HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243HeadGFresh : List Wire := [841]

private def s6Step243HeadGvFresh : List Wire := [822]

private def s6Step243FrontPlan : HmrSourceFront := ⟨s6Step243EntryGvAfter,s6Step243FrontPair,(growRow 795 s6Step243EntryFFresh ++ (growRow 777 s6Step243EntryGFresh ++ (growRow 776 s6Step243EntryFvFresh ++ (growRow 775 s6Step243EntryGvFresh ++ [])))),s6Step243FrontSigmaArena,[864],s6Step243HeadGBefore,[888],
  s6Step243HeadFvAfter,s6Step243FrontHead,(growRow 777 s6Step243HeadGFresh ++ (growRow 795 s6Step243HeadFFresh ++ (growRow 775 s6Step243HeadGvFresh ++ (growRow 776 s6Step243HeadFvFresh ++ [])))),s6Step243F4Plan,s6Step243CounterDuring,s6Step243CounterWork,s6Step243ExitGvAfter,s6Step243FrontOut,(shrinkRow 777 s6Step243ExitGExtra ++ (shrinkRow 795 s6Step243ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step243ExitGvExtra ++ []))))⟩

private def s6Step243CompletePlan : HmrEarlyStepPlan := ⟨s6Step243FrontPlan,s6Step243EarlyControlArena,s6Step243EarlyControlPlan,s6Step243CompleteMoves⟩

private theorem s6Step243Complete_apart : List.Disjoint (s6Step243CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [864, 888, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909] := by
  have nd : ((s6Step243CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[864, 888, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step243Complete_owned : (s6Step243CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step243EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step243EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step243CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,405),(406,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,805),(806,808),(813,815),(821,822),(823,830),(831,832),(833,841),(843,849),(850,868),(869,896),(897,898),(900,905),(907,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step243CompleteRelocationMove0Borrowed : Arena := ⟨s6Step243ExitGvAfter.live∪{404},Finset.union_subset s6Step243ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step243CompleteRelocationMove1Borrowed : Arena := ⟨s6Step243CompleteRelocationMove0After.live∪{405},Finset.union_subset s6Step243CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step243CompleteRelocation_move0_owned : 898∈s6Step243ExitGvAfter.live := by norm_num [s6Step243ExitGvAfter,arenaWires]

private theorem s6Step243CompleteRelocation_move0_reserve : s6Step243ExitGvAfter.reserve {404}=some s6Step243CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step243ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step243CompleteRelocation_move0_retire : s6Step243CompleteRelocationMove0Borrowed.retireSet {898}=s6Step243CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step243CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step243CompleteRelocationMove0Borrowed,s6Step243ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step243CompleteRelocation_move1_owned : 796∈s6Step243CompleteRelocationMove0After.live := by norm_num [s6Step243CompleteRelocationMove0After,arenaWires]

private theorem s6Step243CompleteRelocation_move1_reserve : s6Step243CompleteRelocationMove0After.reserve {405}=some s6Step243CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step243CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step243CompleteRelocation_move1_retire : s6Step243CompleteRelocationMove1Borrowed.retireSet {796}=s6Step243EarlyControlArena := by
  unfold Arena.retireSet s6Step243EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step243CompleteRelocationMove1Borrowed,s6Step243CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step243CompleteRelocation_checked : s6Step243ExitGvAfter.checkRepack [(898,404),(796,405)]=some s6Step243EarlyControlArena := by
  have tail2 : s6Step243EarlyControlArena.checkRepack []=some s6Step243EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step243CompleteRelocationMove0After s6Step243CompleteRelocationMove1Borrowed s6Step243EarlyControlArena s6Step243EarlyControlArena 796 405 []
    s6Step243CompleteRelocation_move1_owned s6Step243CompleteRelocation_move1_reserve s6Step243CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step243ExitGvAfter s6Step243CompleteRelocationMove0Borrowed s6Step243CompleteRelocationMove0After s6Step243EarlyControlArena 898 404 [(796,405)]
    s6Step243CompleteRelocation_move0_owned s6Step243CompleteRelocation_move0_reserve s6Step243CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step243Complete_repack : s6Step243ExitGvAfter.checkRepack s6Step243CompleteMoves=some s6Step243EarlyControlArena := by
  simpa only [s6Step243CompleteMoves] using s6Step243CompleteRelocation_checked

private theorem s6Step243EarlyControl_branchOwned : ([888] : List Wire).toFinset⊆s6Step243EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step243EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243EarlyControl_branch : compileHmrBranchRetirement s6Step243EarlyControlSigmaArena 888=some s6Step243EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step243EarlyControl_branchOwned
  · ext q
    simp [s6Step243EarlyControlOutputArena,s6Step243EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step243EarlyControl_classEqualityBorrow : s6Step243EarlyControlPositiveArena.checkBorrow (([864, 786] : List Wire).length-1) s6Step243EarlyControlLog.classWork=some s6Step243EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step243EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step243EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step243EarlyControlEqualityArena,s6Step243EarlyControlPositiveArena,s6Step243EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step243EarlyControl_classEqualityOwned : ([864, 786] : List Wire).toFinset⊆s6Step243EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step243EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243EarlyControl_classEquality : compileHmrEqualityLog s6Step243EarlyControlPositiveArena [864, 786] 0 s6Step243EarlyControlLog.classWork=some (s6Step243EarlyControlEqualityArena,s6Step243EarlyControlLog.classWork,s6Step243EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step243EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step243EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step243EarlyControl_classOwned : ([769, 830, 864] : List Wire).toFinset⊆s6Step243EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step243EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243EarlyControl_positiveBorrow : s6Step243EarlyControlZeroArena.checkBorrow (1) s6Step243EarlyControlLog.positiveWork=some s6Step243EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step243EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step243EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step243EarlyControlPositiveArena,s6Step243EarlyControlZeroArena,s6Step243EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step243EarlyControl_class : compileHmrSourceClassLog s6Step243EarlyControlZeroArena false 769 s6Step243EarlyControlZeroPlan.top 0 864 s6Step243EarlyControlLog.positiveWork s6Step243EarlyControlLog.classWork=some s6Step243EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step243EarlyControlClassPlan s6Step243EarlyControlZeroArena false 769 s6Step243EarlyControlZeroPlan.top 0 864
  constructor
  · decide +kernel
  · exact s6Step243EarlyControl_classOwned
  · exact s6Step243EarlyControl_positiveBorrow
  · exact s6Step243EarlyControl_classEquality

private theorem s6Step243EarlyControl_entryRecordOwned : ([888, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909] : List Wire).toFinset⊆s6Step243EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step243EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243EarlyControl_entrySigmaOwned : ([864, 254] : List Wire).toFinset⊆s6Step243EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step243EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243EarlyControl_fitBorrow : s6Step243EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909] : List Wire).length)) s6Step243EarlyControlLog.recordFresh=some s6Step243EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step243EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step243EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step243EarlyControlFittedArena,s6Step243EarlyControlFlagArena,s6Step243EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step243EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909] : List Wire).toFinset⊆s6Step243EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step243EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243EarlyControl_fit : compileHmrRecordGrowLog s6Step243EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909] 51 s6Step243EarlyControlLog.recordFresh=some s6Step243EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step243EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step243EarlyControl_fitBorrow

private theorem s6Step243EarlyControl_flagsBorrow : s6Step243EarlyControlEqualityArena.checkBorrow (6) s6Step243EarlyControlLog.flagWork=some s6Step243EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step243EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step243EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step243EarlyControlFlagArena,s6Step243EarlyControlEqualityArena,s6Step243EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step243EarlyControl_flagsOwned : ([841, 253, 252, 251] : List Wire).toFinset⊆s6Step243EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step243EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243EarlyControl_flags : compileHmrFlagsLog s6Step243EarlyControlClassPlan.equalityArena s6Step243EarlyControlClassPlan.equality.top 253 252 251 s6Step243EarlyControlLog.flagWork=some s6Step243EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step243EarlyControl_flagsOwned⟩
  · exact s6Step243EarlyControl_flagsBorrow

private theorem s6Step243EarlyControl_historyBorrow : s6Step243EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909] : List Wire).length)) s6Step243EarlyControlLog.recordFresh=some s6Step243EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step243EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step243EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step243EarlyControlHistoryArena,s6Step243EarlyControlArena,s6Step243EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step243EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909] : List Wire).toFinset⊆s6Step243EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step243EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243EarlyControl_history : compileHmrRecordGrowLog s6Step243EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909] 51 s6Step243EarlyControlLog.recordFresh=some s6Step243EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step243EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step243EarlyControl_historyBorrow

private theorem s6Step243EarlyControl_sigmaOwned : ([254, 864] : List Wire).toFinset⊆s6Step243EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step243EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243EarlyControl_sigmaReleaseOwned : ([864] : List Wire).toFinset⊆s6Step243EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step243EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243EarlyControl_sigmaRelease : s6Step243EarlyControlHistoryArena.release {864} (fun _ => false)=some s6Step243EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step243EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step243EarlyControlSigmaArena,s6Step243EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step243EarlyControl_sigma : compileHmrSigmaDropLog s6Step243EarlyControlHistoryArena false 0 0 254 864 []=some s6Step243EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step243EarlyControl_sigmaOwned⟩
  · exact s6Step243EarlyControl_sigmaRelease

private theorem s6Step243EarlyControl_zeroBorrow : s6Step243EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step243EarlyControlLog.zeroWork=some s6Step243EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step243EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step243EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step243EarlyControlZeroArena,s6Step243EarlyControlArena,s6Step243EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step243EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step243EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step243EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243EarlyControl_zero : compileHmrEqualityLog s6Step243EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step243EarlyControlLog.zeroWork=some (s6Step243EarlyControlZeroArena,s6Step243EarlyControlLog.zeroWork,s6Step243EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step243EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step243EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step243EarlyControl_logged : s6Step243EarlyControlPlan.Logged s6Step243EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909] 769 864 254 253 252 251 888 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step243EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step243EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step243EarlyControl_zero
  · exact s6Step243EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step243EarlyControl_flags
  · exact s6Step243EarlyControl_fit
  · exact s6Step243EarlyControl_history
  · exact s6Step243EarlyControl_sigma
  · exact s6Step243EarlyControl_branch

private theorem s6Step243EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step243EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909] 769 864 254 253 252 251 888 51 s6Step243EarlyControlLog=some s6Step243EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step243EarlyControlPlan s6Step243EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909] 769 864 254 253 252 251 888 51 s6Step243EarlyControl_logged

private def s6Step243EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩

private def s6Step243EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857],776⟩

private def s6Step243EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],777⟩

private def s6Step243EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private def s6Step243FrontBank : WindowBank := ⟨s6Step243EntryFRow,s6Step243EntryGRow,s6Step243EntryFvRow,s6Step243EntryGvRow⟩

private def s6Step243Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 818, 795]

private def s6Step243Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 786, 841, 777]

private def s6Step243Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 776]

private def s6Step243Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 822, 775]

private theorem s6Step243Counter_apart : Disjoint s6Step243HeadFvAfter.live s6Step243CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step243HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243Counter_borrowed : s6Step243HeadFvAfter.checkBorrow 4 s6Step243CounterWork=some s6Step243CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step243HeadFvAfter s6Step243CounterDuring s6Step243CounterWork.toFinset s6Step243Counter_bounded s6Step243Counter_apart rfl

private theorem s6Step243Counter_owned : (864::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step243HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step243HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243Counter_checked : compileHmrCounterStepLog s6Step243HeadFvAfter true 864 [774, 773, 772, 771, 770, 769] s6Step243CounterWork=some s6Step243CounterDuring := by
  have owned : ∀q∈864::[774, 773, 772, 771, 770, 769],q∈s6Step243HeadFvAfter.live := fun q hq => s6Step243Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step243Counter_borrowed

private def s6Step243EntryFAfter : Arena := s6Step243EntryFBefore

private theorem s6Step243EntryBank_incomingDistinct : ([s6Step243EntryFRow,s6Step243EntryGRow,s6Step243EntryFvRow,s6Step243EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243EntryF_Incoming : rowsOwned s6Step243EntryFBefore [s6Step243EntryFRow,s6Step243EntryGRow,s6Step243EntryFvRow,s6Step243EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step243EntryFRow,s6Step243EntryGRow,s6Step243EntryFvRow,s6Step243EntryGvRow] 0 s6Step243EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step243EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step243EntryBank_outgoingOwned : rowsOwned s6Step243EntryGvAfter [s6Step243EntryFOut,s6Step243EntryGOut,s6Step243EntryFvOut,s6Step243EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step243EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step243EntryF_Outgoing : rowsOwned s6Step243EntryGvAfter [s6Step243EntryFOut,s6Step243EntryGOut,s6Step243EntryFvOut,s6Step243EntryGvOut] :=
  hmrRows_owned_drop s6Step243EntryGvAfter [s6Step243EntryFOut,s6Step243EntryGOut,s6Step243EntryFvOut,s6Step243EntryGvOut] 0 s6Step243EntryBank_outgoingOwned

private theorem s6Step243EntryF_distinct : (s6Step243EntryFRow.sign::s6Step243EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243EntryF_owned : (s6Step243EntryFRow.sign::s6Step243EntryFRow.payload).toFinset⊆s6Step243EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step243EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243EntryF_reserved : s6Step243EntryFBefore.reserve s6Step243EntryFFresh.toFinset=some s6Step243EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step243EntryFFresh,arenaWires]
  · norm_num [s6Step243EntryFBefore,s6Step243EntryFFresh,arenaWires]
  · simp only [s6Step243EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step243EntryF_checked : planRowResizeLog s6Step243EntryFBefore s6Step243EntryFRow 150 s6Step243EntryFFresh=
    some (s6Step243EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩,growRow 795 s6Step243EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step243EntryFBefore s6Step243EntryFAfter s6Step243EntryFRow 150 s6Step243EntryFFresh
    s6Step243EntryF_distinct s6Step243EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step243EntryF_reserved
  have rowEq : WindowRow.mk (s6Step243EntryFRow.payload++s6Step243EntryFFresh) s6Step243EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step243EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243EntryFvAfter : Arena := s6Step243EntryGAfter

private def s6Step243EntryFvBefore : Arena := s6Step243EntryGAfter

private theorem s6Step243EntryFv_Incoming : rowsOwned s6Step243EntryFvBefore [s6Step243EntryFvRow,s6Step243EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step243EntryFRow,s6Step243EntryGRow,s6Step243EntryFvRow,s6Step243EntryGvRow] 2 s6Step243EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step243EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step243EntryFv_Outgoing : rowsOwned s6Step243EntryGvAfter [s6Step243EntryFvOut,s6Step243EntryGvOut] :=
  hmrRows_owned_drop s6Step243EntryGvAfter [s6Step243EntryFOut,s6Step243EntryGOut,s6Step243EntryFvOut,s6Step243EntryGvOut] 2 s6Step243EntryBank_outgoingOwned

private theorem s6Step243EntryFv_distinct : (s6Step243EntryFvRow.sign::s6Step243EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243EntryFv_owned : (s6Step243EntryFvRow.sign::s6Step243EntryFvRow.payload).toFinset⊆s6Step243EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step243EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243EntryFv_reserved : s6Step243EntryFvBefore.reserve s6Step243EntryFvFresh.toFinset=some s6Step243EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step243EntryFvFresh,arenaWires]
  · norm_num [s6Step243EntryFvBefore,s6Step243EntryGAfter,s6Step243EntryFvFresh,arenaWires]
  · simp only [s6Step243EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step243EntryFv_checked : planRowResizeLog s6Step243EntryFvBefore s6Step243EntryFvRow 136 s6Step243EntryFvFresh=
    some (s6Step243EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857],776⟩,growRow 776 s6Step243EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step243EntryFvBefore s6Step243EntryFvAfter s6Step243EntryFvRow 136 s6Step243EntryFvFresh
    s6Step243EntryFv_distinct s6Step243EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step243EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step243EntryFvRow.payload++s6Step243EntryFvFresh) s6Step243EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step243EntryGBefore : Arena := s6Step243EntryFBefore

private theorem s6Step243EntryG_Incoming : rowsOwned s6Step243EntryGBefore [s6Step243EntryGRow,s6Step243EntryFvRow,s6Step243EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step243EntryFRow,s6Step243EntryGRow,s6Step243EntryFvRow,s6Step243EntryGvRow] 1 s6Step243EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step243EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step243EntryG_Outgoing : rowsOwned s6Step243EntryGvAfter [s6Step243EntryGOut,s6Step243EntryFvOut,s6Step243EntryGvOut] :=
  hmrRows_owned_drop s6Step243EntryGvAfter [s6Step243EntryFOut,s6Step243EntryGOut,s6Step243EntryFvOut,s6Step243EntryGvOut] 1 s6Step243EntryBank_outgoingOwned

private theorem s6Step243EntryG_distinct : (s6Step243EntryGRow.sign::s6Step243EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243EntryG_owned : (s6Step243EntryGRow.sign::s6Step243EntryGRow.payload).toFinset⊆s6Step243EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step243EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243EntryG_reserved : s6Step243EntryGBefore.reserve s6Step243EntryGFresh.toFinset=some s6Step243EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step243EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step243EntryGBefore,s6Step243EntryFBefore,s6Step243EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step243EntryGAfter,s6Step243EntryGBefore,s6Step243EntryFBefore,s6Step243EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step243EntryG_checked : planRowResizeLog s6Step243EntryGBefore s6Step243EntryGRow 150 s6Step243EntryGFresh=
    some (s6Step243EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 786],777⟩,growRow 777 s6Step243EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step243EntryGBefore s6Step243EntryGAfter s6Step243EntryGRow 150 s6Step243EntryGFresh
    s6Step243EntryG_distinct s6Step243EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step243EntryG_reserved
  have rowEq : WindowRow.mk (s6Step243EntryGRow.payload++s6Step243EntryGFresh) s6Step243EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 786],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step243EntryGvBefore : Arena := s6Step243EntryGAfter

private theorem s6Step243EntryGv_Incoming : rowsOwned s6Step243EntryGvBefore [s6Step243EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step243EntryFRow,s6Step243EntryGRow,s6Step243EntryFvRow,s6Step243EntryGvRow] 3 s6Step243EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step243EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step243EntryGv_Outgoing : rowsOwned s6Step243EntryGvAfter [s6Step243EntryGvOut] :=
  hmrRows_owned_drop s6Step243EntryGvAfter [s6Step243EntryFOut,s6Step243EntryGOut,s6Step243EntryFvOut,s6Step243EntryGvOut] 3 s6Step243EntryBank_outgoingOwned

private theorem s6Step243EntryGv_distinct : (s6Step243EntryGvRow.sign::s6Step243EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243EntryGv_owned : (s6Step243EntryGvRow.sign::s6Step243EntryGvRow.payload).toFinset⊆s6Step243EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step243EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243EntryGv_reserved : s6Step243EntryGvBefore.reserve s6Step243EntryGvFresh.toFinset=some s6Step243EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step243EntryGvFresh,arenaWires]
  · norm_num [s6Step243EntryGvBefore,s6Step243EntryGAfter,s6Step243EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step243EntryGvAfter,s6Step243EntryGvBefore,s6Step243EntryGAfter,s6Step243EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step243EntryGv_checked : planRowResizeLog s6Step243EntryGvBefore s6Step243EntryGvRow 136 s6Step243EntryGvFresh=
    some (s6Step243EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803],775⟩,growRow 775 s6Step243EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step243EntryGvBefore s6Step243EntryGvAfter s6Step243EntryGvRow 136 s6Step243EntryGvFresh
    s6Step243EntryGv_distinct s6Step243EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step243EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step243EntryGvRow.payload++s6Step243EntryGvFresh) s6Step243EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step243EntryBank_rows : planWindowRowsLog s6Step243EntryFBefore [(s6Step243EntryFRow,150),(s6Step243EntryGRow,150),(s6Step243EntryFvRow,136),(s6Step243EntryGvRow,136)] [s6Step243EntryFFresh,s6Step243EntryGFresh,s6Step243EntryFvFresh,s6Step243EntryGvFresh]=
    some (s6Step243EntryGvAfter,[s6Step243EntryFOut,s6Step243EntryGOut,s6Step243EntryFvOut,s6Step243EntryGvOut],(growRow 795 s6Step243EntryFFresh ++ (growRow 777 s6Step243EntryGFresh ++ (growRow 776 s6Step243EntryFvFresh ++ (growRow 775 s6Step243EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step243EntryGvAfter [] []=some (s6Step243EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step243EntryGvBefore s6Step243EntryGvAfter s6Step243EntryGvAfter
    s6Step243EntryGvRow s6Step243EntryGvOut 136 s6Step243EntryGvFresh [] [] []
    (growRow 775 s6Step243EntryGvFresh) ([]) s6Step243EntryGv_Incoming s6Step243EntryGv_checked h4 s6Step243EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step243EntryFvBefore s6Step243EntryFvAfter s6Step243EntryGvAfter
    s6Step243EntryFvRow s6Step243EntryFvOut 136 s6Step243EntryFvFresh [(s6Step243EntryGvRow,136)] [s6Step243EntryGvFresh] [s6Step243EntryGvOut]
    (growRow 776 s6Step243EntryFvFresh) ((growRow 775 s6Step243EntryGvFresh ++ [])) s6Step243EntryFv_Incoming s6Step243EntryFv_checked h3 s6Step243EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step243EntryGBefore s6Step243EntryGAfter s6Step243EntryGvAfter
    s6Step243EntryGRow s6Step243EntryGOut 150 s6Step243EntryGFresh [(s6Step243EntryFvRow,136),(s6Step243EntryGvRow,136)] [s6Step243EntryFvFresh,s6Step243EntryGvFresh] [s6Step243EntryFvOut,s6Step243EntryGvOut]
    (growRow 777 s6Step243EntryGFresh) ((growRow 776 s6Step243EntryFvFresh ++ (growRow 775 s6Step243EntryGvFresh ++ []))) s6Step243EntryG_Incoming s6Step243EntryG_checked h2 s6Step243EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step243EntryFBefore s6Step243EntryFAfter s6Step243EntryGvAfter
    s6Step243EntryFRow s6Step243EntryFOut 150 s6Step243EntryFFresh [(s6Step243EntryGRow,150),(s6Step243EntryFvRow,136),(s6Step243EntryGvRow,136)] [s6Step243EntryGFresh,s6Step243EntryFvFresh,s6Step243EntryGvFresh] [s6Step243EntryGOut,s6Step243EntryFvOut,s6Step243EntryGvOut]
    (growRow 795 s6Step243EntryFFresh) ((growRow 777 s6Step243EntryGFresh ++ (growRow 776 s6Step243EntryFvFresh ++ (growRow 775 s6Step243EntryGvFresh ++ [])))) s6Step243EntryF_Incoming s6Step243EntryF_checked h1 s6Step243EntryF_Outgoing
  exact h0

private theorem s6Step243EntryBank_checked : compileHmrBankResizeLog .entry s6Step243EntryFBefore ⟨s6Step243EntryFRow,s6Step243EntryGRow,s6Step243EntryFvRow,s6Step243EntryGvRow⟩ ⟨150,150,136,136⟩ [s6Step243EntryFFresh,s6Step243EntryGFresh,s6Step243EntryFvFresh,s6Step243EntryGvFresh]=
    some (s6Step243EntryGvAfter,⟨s6Step243EntryFOut,s6Step243EntryGOut,s6Step243EntryFvOut,s6Step243EntryGvOut⟩,(growRow 795 s6Step243EntryFFresh ++ (growRow 777 s6Step243EntryGFresh ++ (growRow 776 s6Step243EntryFvFresh ++ (growRow 775 s6Step243EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step243EntryBank_rows]
  rfl

private def s6Step243ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<404) ∨ (406≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243ExitFBefore : Arena := s6Step243ExitGAfter

private def s6Step243ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 818],795⟩

private def s6Step243ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩

private def s6Step243ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 786, 841],777⟩

private def s6Step243ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 822],775⟩

private theorem s6Step243ExitBank_incomingDistinct : ([s6Step243ExitGRow,s6Step243ExitFRow,s6Step243ExitFvRow,s6Step243ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243ExitF_Incoming : rowsOwned s6Step243ExitFBefore [s6Step243ExitFRow,s6Step243ExitFvRow,s6Step243ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step243ExitGRow,s6Step243ExitFRow,s6Step243ExitFvRow,s6Step243ExitGvRow] 1 s6Step243ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step243ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step243ExitBank_outgoingOwned : rowsOwned s6Step243ExitGvAfter [s6Step243ExitGOut,s6Step243ExitFOut,s6Step243ExitFvOut,s6Step243ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step243ExitGvAfter (fun q => (0≤q ∧ q<404) ∨ (406≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step243ExitF_Outgoing : rowsOwned s6Step243ExitGvAfter [s6Step243ExitFOut,s6Step243ExitFvOut,s6Step243ExitGvOut] :=
  hmrRows_owned_drop s6Step243ExitGvAfter [s6Step243ExitGOut,s6Step243ExitFOut,s6Step243ExitFvOut,s6Step243ExitGvOut] 1 s6Step243ExitBank_outgoingOwned

private theorem s6Step243ExitF_distinct : (s6Step243ExitFRow.sign::s6Step243ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243ExitF_owned : (s6Step243ExitFRow.sign::s6Step243ExitFRow.payload).toFinset⊆s6Step243ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step243ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243ExitF_retired : s6Step243ExitFBefore.retireSet s6Step243ExitFExtra.toFinset=s6Step243ExitFAfter := by
  unfold Arena.retireSet s6Step243ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step243ExitFBefore,s6Step243ExitGAfter,s6Step243ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step243ExitF_checked : planRowResizeLog s6Step243ExitFBefore s6Step243ExitFRow 148 []=
    some (s6Step243ExitFAfter,s6Step243ExitFOut,shrinkRow 795 s6Step243ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step243ExitFBefore s6Step243ExitFRow 148 s6Step243ExitF_distinct s6Step243ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step243ExitFRow.payload.take 148) s6Step243ExitFRow.sign=s6Step243ExitFOut := by decide +kernel
  have hi : s6Step243ExitFRow.payload.drop 148=s6Step243ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step243ExitF_retired] at result
  exact result

private def s6Step243ExitFvAfter : Arena := s6Step243ExitFAfter

private def s6Step243ExitFvBefore : Arena := s6Step243ExitFAfter

private theorem s6Step243ExitFv_Incoming : rowsOwned s6Step243ExitFvBefore [s6Step243ExitFvRow,s6Step243ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step243ExitGRow,s6Step243ExitFRow,s6Step243ExitFvRow,s6Step243ExitGvRow] 2 s6Step243ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step243ExitFvBefore (fun q => (0≤q ∧ q<404) ∨ (406≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step243ExitFv_Outgoing : rowsOwned s6Step243ExitGvAfter [s6Step243ExitFvOut,s6Step243ExitGvOut] :=
  hmrRows_owned_drop s6Step243ExitGvAfter [s6Step243ExitGOut,s6Step243ExitFOut,s6Step243ExitFvOut,s6Step243ExitGvOut] 2 s6Step243ExitBank_outgoingOwned

private theorem s6Step243ExitFv_distinct : (s6Step243ExitFvRow.sign::s6Step243ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243ExitFv_owned : (s6Step243ExitFvRow.sign::s6Step243ExitFvRow.payload).toFinset⊆s6Step243ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step243ExitFvBefore (fun q => (0≤q ∧ q<404) ∨ (406≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243ExitFv_reserved : s6Step243ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step243ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step243ExitFv_checked : planRowResizeLog s6Step243ExitFvBefore s6Step243ExitFvRow 137 []=
    some (s6Step243ExitFvAfter,s6Step243ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step243ExitFvBefore s6Step243ExitFvAfter s6Step243ExitFvRow 137 []
    s6Step243ExitFv_distinct s6Step243ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step243ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step243ExitFvRow.payload++[]) s6Step243ExitFvRow.sign=s6Step243ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step243ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step243ExitG_Incoming : rowsOwned s6Step243ExitGBefore [s6Step243ExitGRow,s6Step243ExitFRow,s6Step243ExitFvRow,s6Step243ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step243ExitGRow,s6Step243ExitFRow,s6Step243ExitFvRow,s6Step243ExitGvRow] 0 s6Step243ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step243ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step243ExitG_Outgoing : rowsOwned s6Step243ExitGvAfter [s6Step243ExitGOut,s6Step243ExitFOut,s6Step243ExitFvOut,s6Step243ExitGvOut] :=
  hmrRows_owned_drop s6Step243ExitGvAfter [s6Step243ExitGOut,s6Step243ExitFOut,s6Step243ExitFvOut,s6Step243ExitGvOut] 0 s6Step243ExitBank_outgoingOwned

private theorem s6Step243ExitG_distinct : (s6Step243ExitGRow.sign::s6Step243ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243ExitG_owned : (s6Step243ExitGRow.sign::s6Step243ExitGRow.payload).toFinset⊆s6Step243ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step243ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243ExitG_retired : s6Step243ExitGBefore.retireSet s6Step243ExitGExtra.toFinset=s6Step243ExitGAfter := by
  unfold Arena.retireSet s6Step243ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step243ExitGBefore,s6Step243ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step243ExitG_checked : planRowResizeLog s6Step243ExitGBefore s6Step243ExitGRow 148 []=
    some (s6Step243ExitGAfter,s6Step243ExitGOut,shrinkRow 777 s6Step243ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step243ExitGBefore s6Step243ExitGRow 148 s6Step243ExitG_distinct s6Step243ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step243ExitGRow.payload.take 148) s6Step243ExitGRow.sign=s6Step243ExitGOut := by decide +kernel
  have hi : s6Step243ExitGRow.payload.drop 148=s6Step243ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step243ExitG_retired] at result
  exact result

private def s6Step243ExitGvBefore : Arena := s6Step243ExitFAfter

private theorem s6Step243ExitGv_Incoming : rowsOwned s6Step243ExitGvBefore [s6Step243ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step243ExitGRow,s6Step243ExitFRow,s6Step243ExitFvRow,s6Step243ExitGvRow] 3 s6Step243ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step243ExitGvBefore (fun q => (0≤q ∧ q<404) ∨ (406≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step243ExitGv_Outgoing : rowsOwned s6Step243ExitGvAfter [s6Step243ExitGvOut] :=
  hmrRows_owned_drop s6Step243ExitGvAfter [s6Step243ExitGOut,s6Step243ExitFOut,s6Step243ExitFvOut,s6Step243ExitGvOut] 3 s6Step243ExitBank_outgoingOwned

private theorem s6Step243ExitGv_distinct : (s6Step243ExitGvRow.sign::s6Step243ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243ExitGv_owned : (s6Step243ExitGvRow.sign::s6Step243ExitGvRow.payload).toFinset⊆s6Step243ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step243ExitGvBefore (fun q => (0≤q ∧ q<404) ∨ (406≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243ExitGv_retired : s6Step243ExitGvBefore.retireSet s6Step243ExitGvExtra.toFinset=s6Step243ExitGvAfter := by
  unfold Arena.retireSet s6Step243ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step243ExitGvBefore,s6Step243ExitFAfter,s6Step243ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step243ExitGv_checked : planRowResizeLog s6Step243ExitGvBefore s6Step243ExitGvRow 136 []=
    some (s6Step243ExitGvAfter,s6Step243ExitGvOut,shrinkRow 775 s6Step243ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step243ExitGvBefore s6Step243ExitGvRow 136 s6Step243ExitGv_distinct s6Step243ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step243ExitGvRow.payload.take 136) s6Step243ExitGvRow.sign=s6Step243ExitGvOut := by decide +kernel
  have hi : s6Step243ExitGvRow.payload.drop 136=s6Step243ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step243ExitGv_retired] at result
  exact result

private theorem s6Step243ExitBank_rows : planWindowRowsLog s6Step243ExitGBefore [(s6Step243ExitGRow,148),(s6Step243ExitFRow,148),(s6Step243ExitFvRow,137),(s6Step243ExitGvRow,136)] [[],[],[],[]]=
    some (s6Step243ExitGvAfter,[s6Step243ExitGOut,s6Step243ExitFOut,s6Step243ExitFvOut,s6Step243ExitGvOut],(shrinkRow 777 s6Step243ExitGExtra ++ (shrinkRow 795 s6Step243ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step243ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step243ExitGvAfter [] []=some (s6Step243ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step243ExitGvBefore s6Step243ExitGvAfter s6Step243ExitGvAfter
    s6Step243ExitGvRow s6Step243ExitGvOut 136 [] [] [] []
    (shrinkRow 775 s6Step243ExitGvExtra) ([]) s6Step243ExitGv_Incoming s6Step243ExitGv_checked h4 s6Step243ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step243ExitFvBefore s6Step243ExitFvAfter s6Step243ExitGvAfter
    s6Step243ExitFvRow s6Step243ExitFvOut 137 [] [(s6Step243ExitGvRow,136)] [[]] [s6Step243ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step243ExitGvExtra ++ [])) s6Step243ExitFv_Incoming s6Step243ExitFv_checked h3 s6Step243ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step243ExitFBefore s6Step243ExitFAfter s6Step243ExitGvAfter
    s6Step243ExitFRow s6Step243ExitFOut 148 [] [(s6Step243ExitFvRow,137),(s6Step243ExitGvRow,136)] [[],[]] [s6Step243ExitFvOut,s6Step243ExitGvOut]
    (shrinkRow 795 s6Step243ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step243ExitGvExtra ++ []))) s6Step243ExitF_Incoming s6Step243ExitF_checked h2 s6Step243ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step243ExitGBefore s6Step243ExitGAfter s6Step243ExitGvAfter
    s6Step243ExitGRow s6Step243ExitGOut 148 [] [(s6Step243ExitFRow,148),(s6Step243ExitFvRow,137),(s6Step243ExitGvRow,136)] [[],[],[]] [s6Step243ExitFOut,s6Step243ExitFvOut,s6Step243ExitGvOut]
    (shrinkRow 777 s6Step243ExitGExtra) ((shrinkRow 795 s6Step243ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step243ExitGvExtra ++ [])))) s6Step243ExitG_Incoming s6Step243ExitG_checked h1 s6Step243ExitG_Outgoing
  exact h0

private theorem s6Step243ExitBank_checked : compileHmrBankResizeLog .exit s6Step243ExitGBefore ⟨s6Step243ExitFRow,s6Step243ExitGRow,s6Step243ExitFvRow,s6Step243ExitGvRow⟩ ⟨148,148,137,136⟩ [[],[],[],[]]=
    some (s6Step243ExitGvAfter,⟨s6Step243ExitFOut,s6Step243ExitGOut,s6Step243ExitFvOut,s6Step243ExitGvOut⟩,(shrinkRow 777 s6Step243ExitGExtra ++ (shrinkRow 795 s6Step243ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step243ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step243ExitBank_rows]
  rfl

private theorem s6Step243Add0_apart : Disjoint s6Step243Add0Arena.live s6Step243Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step243Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243Add0_card : s6Step243Add0Arena.live.card=896 := by
  decide +kernel

private theorem s6Step243Add0_borrowed : s6Step243Add0Arena.checkBorrow (hmrHybridCount s6Step243Add0Arena s6Step243Add0B.length) s6Step243Add0Work=some s6Step243Add0During := by
  have len : s6Step243Add0Work.length=hmrHybridCount s6Step243Add0Arena s6Step243Add0B.length := by
    rw [hmrHybridCount,s6Step243Add0_card]
    decide +kernel
  have nd : s6Step243Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step243Add0Arena s6Step243Add0During s6Step243Add0Work.toFinset s6Step243Add0_bounded s6Step243Add0_apart rfl

private theorem s6Step243Add0_distinct : (868::888::805::(s6Step243Add0A++s6Step243Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243Add0_owned : (868::888::805::(s6Step243Add0A++s6Step243Add0B)).toFinset⊆s6Step243Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step243Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243Add0_checked : compileHmrHybridCinLog s6Step243Add0Arena 888 868 805 s6Step243Add0A s6Step243Add0B s6Step243Add0Work=some s6Step243Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step243Add0Arena s6Step243Add0During 888 868 805 s6Step243Add0A s6Step243Add0B s6Step243Add0Work
    (by decide +kernel) (by decide +kernel) s6Step243Add0_distinct
    (fun q hq => s6Step243Add0_owned (List.mem_toFinset.mpr hq)) s6Step243Add0_borrowed

private theorem s6Step243Add1_apart : Disjoint s6Step243Add1Arena.live s6Step243Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step243Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243Add1_card : s6Step243Add1Arena.live.card=896 := by
  decide +kernel

private theorem s6Step243Add1_borrowed : s6Step243Add1Arena.checkBorrow (hmrHybridCount s6Step243Add1Arena s6Step243Add1B.length) s6Step243Add1Work=some s6Step243Add1During := by
  have len : s6Step243Add1Work.length=hmrHybridCount s6Step243Add1Arena s6Step243Add1B.length := by
    rw [hmrHybridCount,s6Step243Add1_card]
    decide +kernel
  have nd : s6Step243Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step243Add1Arena s6Step243Add1During s6Step243Add1Work.toFinset s6Step243Add1_bounded s6Step243Add1_apart rfl

private theorem s6Step243Add1_distinct : (868::888::805::(s6Step243Add1A++s6Step243Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243Add1_owned : (868::888::805::(s6Step243Add1A++s6Step243Add1B)).toFinset⊆s6Step243Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step243Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243Add1_checked : compileHmrHybridCinLog s6Step243Add1Arena 888 868 805 s6Step243Add1A s6Step243Add1B s6Step243Add1Work=some s6Step243Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step243Add1Arena s6Step243Add1During 888 868 805 s6Step243Add1A s6Step243Add1B s6Step243Add1Work
    (by decide +kernel) (by decide +kernel) s6Step243Add1_distinct
    (fun q hq => s6Step243Add1_owned (List.mem_toFinset.mpr hq)) s6Step243Add1_borrowed

private theorem s6Step243F4_apart : Disjoint (s6Step243Add0A++s6Step243Add0B).toFinset (s6Step243Add1A++s6Step243Add1B).toFinset := by
  have nd : ((s6Step243Add0A++s6Step243Add0B)++(s6Step243Add1A++s6Step243Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step243F4_carry : s6Step243F4FlagArena.checkBorrow 1 [805]=some s6Step243Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step243F4FlagArena,s6Step243HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step243F4FlagArena,s6Step243HeadFvAfter,s6Step243Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step243F4_distinct : (864::888::868::805::((s6Step243Add0A++s6Step243Add1A)++(s6Step243Add0B++s6Step243Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243F4_flag : s6Step243HeadFvAfter.checkBorrow 1 [868]=some s6Step243F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step243HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step243F4_owned : (864::888::((s6Step243Add0A++s6Step243Add1A)++(s6Step243Add0B++s6Step243Add1B))).toFinset⊆s6Step243HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step243HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243F4_checked : compileHmrHybridF4Log s6Step243HeadFvAfter 864 888 s6Step243Add0A s6Step243Add0B s6Step243Add1A s6Step243Add1B [868] [805] s6Step243Add0Work s6Step243Add1Work=some s6Step243F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step243HeadFvAfter s6Step243F4FlagArena s6Step243Add0Arena s6Step243Add0During s6Step243Add1During 864 888
    s6Step243Add0A s6Step243Add0B s6Step243Add1A s6Step243Add1B [868] [805] s6Step243Add0Work s6Step243Add1Work
    (fun q hq => s6Step243F4_owned (List.mem_toFinset.mpr hq)) s6Step243F4_flag s6Step243F4_carry
    s6Step243F4_distinct s6Step243F4_apart s6Step243Add0_checked s6Step243Add1_checked

private theorem s6Step243Front_branch : s6Step243FrontSigmaArena.checkBorrow 1 [888]=some s6Step243HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step243FrontSigmaArena,s6Step243EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step243FrontSigmaArena,s6Step243EntryGvAfter,s6Step243HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step243Front_entry : HmrFrontEntryValid s6Step243EntryFBefore s6Step243FrontBank 150 136 ⟨148,148,137,136⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step243FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step243EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step243EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step243FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step243Front_sigma : s6Step243EntryGvAfter.checkBorrow 1 [864]=some s6Step243FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step243EntryGvAfter,arenaWires]
  · rfl

private def s6Step243HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243HeadFBefore : Arena := s6Step243HeadGAfter

private def s6Step243HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩

private def s6Step243HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857],776⟩

private def s6Step243HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 786],777⟩

private def s6Step243HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803],775⟩

private theorem s6Step243HeadBank_incomingDistinct : ([s6Step243HeadGRow,s6Step243HeadFRow,s6Step243HeadGvRow,s6Step243HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243HeadF_Incoming : rowsOwned s6Step243HeadFBefore [s6Step243HeadFRow,s6Step243HeadGvRow,s6Step243HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step243HeadGRow,s6Step243HeadFRow,s6Step243HeadGvRow,s6Step243HeadFvRow] 1 s6Step243HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step243HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step243HeadBank_outgoingOwned : rowsOwned s6Step243HeadFvAfter [s6Step243HeadGOut,s6Step243HeadFOut,s6Step243HeadGvOut,s6Step243HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step243HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step243HeadF_Outgoing : rowsOwned s6Step243HeadFvAfter [s6Step243HeadFOut,s6Step243HeadGvOut,s6Step243HeadFvOut] :=
  hmrRows_owned_drop s6Step243HeadFvAfter [s6Step243HeadGOut,s6Step243HeadFOut,s6Step243HeadGvOut,s6Step243HeadFvOut] 1 s6Step243HeadBank_outgoingOwned

private theorem s6Step243HeadF_distinct : (s6Step243HeadFRow.sign::s6Step243HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243HeadF_owned : (s6Step243HeadFRow.sign::s6Step243HeadFRow.payload).toFinset⊆s6Step243HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step243HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243HeadF_reserved : s6Step243HeadFBefore.reserve s6Step243HeadFFresh.toFinset=some s6Step243HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step243HeadFFresh,arenaWires]
  · norm_num [s6Step243HeadFBefore,s6Step243HeadGAfter,s6Step243HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step243HeadFAfter,s6Step243HeadFBefore,s6Step243HeadGAfter,s6Step243HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step243HeadF_checked : planRowResizeLog s6Step243HeadFBefore s6Step243HeadFRow 151 s6Step243HeadFFresh=
    some (s6Step243HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 818],795⟩,growRow 795 s6Step243HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step243HeadFBefore s6Step243HeadFAfter s6Step243HeadFRow 151 s6Step243HeadFFresh
    s6Step243HeadF_distinct s6Step243HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step243HeadF_reserved
  have rowEq : WindowRow.mk (s6Step243HeadFRow.payload++s6Step243HeadFFresh) s6Step243HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 818],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step243HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step243HeadFvBefore : Arena := s6Step243HeadGvAfter

private theorem s6Step243HeadFv_Incoming : rowsOwned s6Step243HeadFvBefore [s6Step243HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step243HeadGRow,s6Step243HeadFRow,s6Step243HeadGvRow,s6Step243HeadFvRow] 3 s6Step243HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step243HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step243HeadFv_Outgoing : rowsOwned s6Step243HeadFvAfter [s6Step243HeadFvOut] :=
  hmrRows_owned_drop s6Step243HeadFvAfter [s6Step243HeadGOut,s6Step243HeadFOut,s6Step243HeadGvOut,s6Step243HeadFvOut] 3 s6Step243HeadBank_outgoingOwned

private theorem s6Step243HeadFv_distinct : (s6Step243HeadFvRow.sign::s6Step243HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243HeadFv_owned : (s6Step243HeadFvRow.sign::s6Step243HeadFvRow.payload).toFinset⊆s6Step243HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step243HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243HeadFv_reserved : s6Step243HeadFvBefore.reserve s6Step243HeadFvFresh.toFinset=some s6Step243HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step243HeadFvFresh,arenaWires]
  · norm_num [s6Step243HeadFvBefore,s6Step243HeadGvAfter,s6Step243HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step243HeadFvAfter,s6Step243HeadFvBefore,s6Step243HeadGvAfter,s6Step243HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step243HeadFv_checked : planRowResizeLog s6Step243HeadFvBefore s6Step243HeadFvRow 137 s6Step243HeadFvFresh=
    some (s6Step243HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩,growRow 776 s6Step243HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step243HeadFvBefore s6Step243HeadFvAfter s6Step243HeadFvRow 137 s6Step243HeadFvFresh
    s6Step243HeadFv_distinct s6Step243HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step243HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step243HeadFvRow.payload++s6Step243HeadFvFresh) s6Step243HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step243HeadG_Incoming : rowsOwned s6Step243HeadGBefore [s6Step243HeadGRow,s6Step243HeadFRow,s6Step243HeadGvRow,s6Step243HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step243HeadGRow,s6Step243HeadFRow,s6Step243HeadGvRow,s6Step243HeadFvRow] 0 s6Step243HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step243HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step243HeadG_Outgoing : rowsOwned s6Step243HeadFvAfter [s6Step243HeadGOut,s6Step243HeadFOut,s6Step243HeadGvOut,s6Step243HeadFvOut] :=
  hmrRows_owned_drop s6Step243HeadFvAfter [s6Step243HeadGOut,s6Step243HeadFOut,s6Step243HeadGvOut,s6Step243HeadFvOut] 0 s6Step243HeadBank_outgoingOwned

private theorem s6Step243HeadG_distinct : (s6Step243HeadGRow.sign::s6Step243HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243HeadG_owned : (s6Step243HeadGRow.sign::s6Step243HeadGRow.payload).toFinset⊆s6Step243HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step243HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243HeadG_reserved : s6Step243HeadGBefore.reserve s6Step243HeadGFresh.toFinset=some s6Step243HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step243HeadGFresh,arenaWires]
  · norm_num [s6Step243HeadGBefore,s6Step243HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step243HeadGAfter,s6Step243HeadGBefore,s6Step243HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step243HeadG_checked : planRowResizeLog s6Step243HeadGBefore s6Step243HeadGRow 151 s6Step243HeadGFresh=
    some (s6Step243HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 786, 841],777⟩,growRow 777 s6Step243HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step243HeadGBefore s6Step243HeadGAfter s6Step243HeadGRow 151 s6Step243HeadGFresh
    s6Step243HeadG_distinct s6Step243HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step243HeadG_reserved
  have rowEq : WindowRow.mk (s6Step243HeadGRow.payload++s6Step243HeadGFresh) s6Step243HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 786, 841],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step243HeadGvBefore : Arena := s6Step243HeadFAfter

private theorem s6Step243HeadGv_Incoming : rowsOwned s6Step243HeadGvBefore [s6Step243HeadGvRow,s6Step243HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step243HeadGRow,s6Step243HeadFRow,s6Step243HeadGvRow,s6Step243HeadFvRow] 2 s6Step243HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step243HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step243HeadGv_Outgoing : rowsOwned s6Step243HeadFvAfter [s6Step243HeadGvOut,s6Step243HeadFvOut] :=
  hmrRows_owned_drop s6Step243HeadFvAfter [s6Step243HeadGOut,s6Step243HeadFOut,s6Step243HeadGvOut,s6Step243HeadFvOut] 2 s6Step243HeadBank_outgoingOwned

private theorem s6Step243HeadGv_distinct : (s6Step243HeadGvRow.sign::s6Step243HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step243HeadGv_owned : (s6Step243HeadGvRow.sign::s6Step243HeadGvRow.payload).toFinset⊆s6Step243HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step243HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step243HeadGv_reserved : s6Step243HeadGvBefore.reserve s6Step243HeadGvFresh.toFinset=some s6Step243HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step243HeadGvFresh,arenaWires]
  · norm_num [s6Step243HeadGvBefore,s6Step243HeadFAfter,s6Step243HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step243HeadGvAfter,s6Step243HeadGvBefore,s6Step243HeadFAfter,s6Step243HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step243HeadGv_checked : planRowResizeLog s6Step243HeadGvBefore s6Step243HeadGvRow 137 s6Step243HeadGvFresh=
    some (s6Step243HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 822],775⟩,growRow 775 s6Step243HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step243HeadGvBefore s6Step243HeadGvAfter s6Step243HeadGvRow 137 s6Step243HeadGvFresh
    s6Step243HeadGv_distinct s6Step243HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step243HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step243HeadGvRow.payload++s6Step243HeadGvFresh) s6Step243HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 822],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step243HeadBank_rows : planWindowRowsLog s6Step243HeadGBefore [(s6Step243HeadGRow,151),(s6Step243HeadFRow,151),(s6Step243HeadGvRow,137),(s6Step243HeadFvRow,137)] [s6Step243HeadGFresh,s6Step243HeadFFresh,s6Step243HeadGvFresh,s6Step243HeadFvFresh]=
    some (s6Step243HeadFvAfter,[s6Step243HeadGOut,s6Step243HeadFOut,s6Step243HeadGvOut,s6Step243HeadFvOut],(growRow 777 s6Step243HeadGFresh ++ (growRow 795 s6Step243HeadFFresh ++ (growRow 775 s6Step243HeadGvFresh ++ (growRow 776 s6Step243HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step243HeadFvAfter [] []=some (s6Step243HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step243HeadFvBefore s6Step243HeadFvAfter s6Step243HeadFvAfter
    s6Step243HeadFvRow s6Step243HeadFvOut 137 s6Step243HeadFvFresh [] [] []
    (growRow 776 s6Step243HeadFvFresh) ([]) s6Step243HeadFv_Incoming s6Step243HeadFv_checked h4 s6Step243HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step243HeadGvBefore s6Step243HeadGvAfter s6Step243HeadFvAfter
    s6Step243HeadGvRow s6Step243HeadGvOut 137 s6Step243HeadGvFresh [(s6Step243HeadFvRow,137)] [s6Step243HeadFvFresh] [s6Step243HeadFvOut]
    (growRow 775 s6Step243HeadGvFresh) ((growRow 776 s6Step243HeadFvFresh ++ [])) s6Step243HeadGv_Incoming s6Step243HeadGv_checked h3 s6Step243HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step243HeadFBefore s6Step243HeadFAfter s6Step243HeadFvAfter
    s6Step243HeadFRow s6Step243HeadFOut 151 s6Step243HeadFFresh [(s6Step243HeadGvRow,137),(s6Step243HeadFvRow,137)] [s6Step243HeadGvFresh,s6Step243HeadFvFresh] [s6Step243HeadGvOut,s6Step243HeadFvOut]
    (growRow 795 s6Step243HeadFFresh) ((growRow 775 s6Step243HeadGvFresh ++ (growRow 776 s6Step243HeadFvFresh ++ []))) s6Step243HeadF_Incoming s6Step243HeadF_checked h2 s6Step243HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step243HeadGBefore s6Step243HeadGAfter s6Step243HeadFvAfter
    s6Step243HeadGRow s6Step243HeadGOut 151 s6Step243HeadGFresh [(s6Step243HeadFRow,151),(s6Step243HeadGvRow,137),(s6Step243HeadFvRow,137)] [s6Step243HeadFFresh,s6Step243HeadGvFresh,s6Step243HeadFvFresh] [s6Step243HeadFOut,s6Step243HeadGvOut,s6Step243HeadFvOut]
    (growRow 777 s6Step243HeadGFresh) ((growRow 795 s6Step243HeadFFresh ++ (growRow 775 s6Step243HeadGvFresh ++ (growRow 776 s6Step243HeadFvFresh ++ [])))) s6Step243HeadG_Incoming s6Step243HeadG_checked h1 s6Step243HeadG_Outgoing
  exact h0

private theorem s6Step243HeadBank_checked : compileHmrBankResizeLog .headroom s6Step243HeadGBefore ⟨s6Step243HeadFRow,s6Step243HeadGRow,s6Step243HeadFvRow,s6Step243HeadGvRow⟩ ⟨151,151,137,137⟩ [s6Step243HeadGFresh,s6Step243HeadFFresh,s6Step243HeadGvFresh,s6Step243HeadFvFresh]=
    some (s6Step243HeadFvAfter,⟨s6Step243HeadFOut,s6Step243HeadGOut,s6Step243HeadFvOut,s6Step243HeadGvOut⟩,(growRow 777 s6Step243HeadGFresh ++ (growRow 795 s6Step243HeadFFresh ++ (growRow 775 s6Step243HeadGvFresh ++ (growRow 776 s6Step243HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step243HeadBank_rows]
  rfl

private theorem s6Step243Front_checked : compileHmrSourceFrontLog s6Step243EntryFBefore s6Step243FrontBank 150 136 ⟨148,148,137,136⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step243FrontLog=some s6Step243FrontPlan := by
  have pairEq : s6Step243FrontPair=⟨s6Step243HeadFRow,s6Step243HeadGRow,s6Step243HeadFvRow,s6Step243HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step243FrontHead=⟨s6Step243ExitFRow,s6Step243ExitGRow,s6Step243ExitFvRow,s6Step243ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step243Add0A=s6Step243FrontHead.f.wires := by decide +kernel
  have gEq : s6Step243Add0B=s6Step243FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step243Add1A=s6Step243FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step243Add1B=s6Step243FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step243EntryFBefore s6Step243FrontBank 150 136 ⟨148,148,137,136⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step243FrontLog s6Step243FrontPlan
  · exact s6Step243Front_entry
  · exact s6Step243EntryBank_checked
  · exact s6Step243Front_sigma
  · rfl
  · exact s6Step243Front_branch
  · rfl
  · simpa only [s6Step243FrontPlan,pairEq] using s6Step243HeadBank_checked
  · simpa only [s6Step243FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step243F4_checked
  · exact s6Step243Counter_checked
  · rfl
  · simpa only [s6Step243FrontPlan,headEq] using s6Step243ExitBank_checked

private theorem s6Step243Complete_explicit_checked : compileHmrEarlyStepLog s6Step243EntryFBefore s6Step243FrontBank 150 136 ⟨148,148,137,136⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909] 51 s6Step243CompleteLog=some s6Step243CompletePlan := by
  let Q := s6Step243EarlyControlPlan
  have hq := s6Step243EarlyControl_plan_checked
  have fv1 : s6Step243CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step243CompleteOut.fv.payload[2]?.getD s6Step243CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step243CompleteOut.fv.payload[3]?.getD s6Step243CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step243CompleteOut.fv.payload[4]?.getD s6Step243CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step243EntryFBefore s6Step243EarlyControlArena s6Step243FrontBank 150 136 ⟨148,148,137,136⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909] 51 s6Step243CompleteLog s6Step243FrontPlan Q
    s6Step243Front_checked s6Step243Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step243Complete_owned s6Step243Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step243EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909] 769 864 s6Step243CompleteOut.fv.second (s6Step243CompleteOut.fv.payload[2]?.getD s6Step243CompleteOut.fv.sign) (s6Step243CompleteOut.fv.payload[3]?.getD s6Step243CompleteOut.fv.sign) (s6Step243CompleteOut.fv.payload[4]?.getD s6Step243CompleteOut.fv.sign) 888 51 s6Step243EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep243Arena : Arena := s6Step243EntryFBefore
def s6PrivateStep243Bank : WindowBank := s6Step243FrontBank
def s6PrivateStep243Spec : HmrSourceWalkStepLog := ⟨150,136,⟨148,148,137,136⟩,51,.early s6Step243CompleteLog⟩
def s6PrivateStep243Plan : HmrSourceStepPlan := .early s6Step243CompletePlan
theorem s6PrivateStep243_source : s6PrivateStep243Spec=s6ObservedLogs240[3] := rfl
theorem s6PrivateStep243_checked : compileHmrSourceStepLog s6PrivateStep243Arena s6PrivateStep243Bank
    s6PrivateStep243Spec.fgWidth s6PrivateStep243Spec.vWidth s6PrivateStep243Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909]
    6 498 243 s6PrivateStep243Spec.need none s6PrivateStep243Spec.log=some s6PrivateStep243Plan := by
  change compileHmrSourceStepLog s6Step243EntryFBefore s6Step243FrontBank 150 136 ⟨148,148,137,136⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909] 6 498 243 51 none (.early s6Step243CompleteLog)=some (.early s6Step243CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 243<498)]
  rw [s6Step243Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
