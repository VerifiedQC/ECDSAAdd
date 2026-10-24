import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep244
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

private def s6Step246CompleteMoves : List (Wire × Wire) := [(890,146)]

private def s6Step246EarlyControlLog : HmrEarlyControlLog := ⟨[890, 864, 830, 818, 822],[814],[786],[841, 868, 805, 810, 809, 817],[]⟩

private def s6Step246FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [864]],[[814], [822], [830], [818]],[[], [], [], []]⟩,[796],[839],[786],[841],[868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[786, 841, 868, 805]⟩

private def s6Step246CompleteLog : HmrEarlyStepLog := ⟨s6Step246FrontLog,s6Step246CompleteMoves,s6Step246EarlyControlLog⟩

private def s6Step246ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step246ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩

private def s6Step246ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145],777⟩

private def s6Step246ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888],775⟩

private def s6Step246FrontOut : WindowBank := ⟨s6Step246ExitFOut,s6Step246ExitGOut,s6Step246ExitFvOut,s6Step246ExitGvOut⟩

private def s6Step246CompleteOut : WindowBank := s6Step246FrontOut.repacked s6Step246CompleteMoves

private def s6Step246EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step246EarlyControlPositiveArena,[814],s6Step246EarlyControlEqualityArena,[786],⟨⟨796,false⟩,[⟨⟨814,false⟩,786⟩]⟩⟩

private def s6Step246EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,890⟩,⟨⟨772,false⟩,864⟩,⟨⟨771,false⟩,830⟩,⟨⟨770,false⟩,818⟩,⟨⟨769,false⟩,822⟩]⟩

private def s6Step246EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step246EarlyControlZeroArena,s6Step246EarlyControlZeroPlan,s6Step246EarlyControlClassPlan,s6Step246EarlyControlFlagArena,s6Step246EarlyControlFittedArena,s6Step246EarlyControlHistoryArena,s6Step246EarlyControlSigmaArena,s6Step246EarlyControlOutputArena,s6Step246EarlyControlLog⟩

private def s6Step246CounterWork : List Wire := [786, 841, 868, 805]

private theorem s6Step246Counter_bounded : s6Step246CounterWork.toFinset⊆arenaWires := by norm_num [s6Step246CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step246HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246CounterDuring : Arena := ⟨s6Step246HeadFvAfter.live∪s6Step246CounterWork.toFinset,Finset.union_subset s6Step246HeadFvAfter.bounded s6Step246Counter_bounded⟩

private def s6Step246EntryFFresh : List Wire := []

private def s6Step246EntryFvFresh : List Wire := []

private def s6Step246EntryGFresh : List Wire := []

private def s6Step246EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246EntryGvFresh : List Wire := [864]

private def s6Step246ExitFExtra : List Wire := [822]

private def s6Step246ExitFvExtra : List Wire := [818]

private def s6Step246ExitGExtra : List Wire := [146, 814]

private def s6Step246ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246ExitGvExtra : List Wire := [864, 830]

private def s6Step246Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246Add0Work : List Wire := [868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step246Add0_bounded : s6Step246Add0Work.toFinset⊆arenaWires := by
  have h : s6Step246Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step246Add0During : Arena := ⟨s6Step246Add0Arena.live∪s6Step246Add0Work.toFinset,Finset.union_subset s6Step246Add0Arena.bounded s6Step246Add0_bounded⟩

private def s6Step246Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246Add1Work : List Wire := [868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step246Add1_bounded : s6Step246Add1Work.toFinset⊆arenaWires := by
  have h : s6Step246Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step246Add1During : Arena := ⟨s6Step246Add1Arena.live∪s6Step246Add1Work.toFinset,Finset.union_subset s6Step246Add1Arena.bounded s6Step246Add1_bounded⟩

private def s6Step246F4FlagArena : Arena := ⟨s6Step246HeadFvAfter.live∪{786},Finset.union_subset s6Step246HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step246F4Plan : HmrHybridF4Plan := ⟨s6Step246F4FlagArena,[786],s6Step246Add0Arena,[841],s6Step246Add0During,s6Step246Add0Work,s6Step246Add1During,s6Step246Add1Work⟩

private def s6Step246HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 822],795⟩

private def s6Step246HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 818],776⟩

private def s6Step246HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 814],777⟩

private def s6Step246HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 864, 830],775⟩

private def s6Step246FrontHead : WindowBank := ⟨s6Step246HeadFOut,s6Step246HeadGOut,s6Step246HeadFvOut,s6Step246HeadGvOut⟩

private def s6Step246EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step246EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩

private def s6Step246EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146],777⟩

private def s6Step246EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 864],775⟩

private def s6Step246FrontPair : WindowBank := ⟨s6Step246EntryFOut,s6Step246EntryGOut,s6Step246EntryFvOut,s6Step246EntryGvOut⟩

private def s6Step246FrontSigmaArena : Arena := ⟨s6Step246EntryGvAfter.live∪{796},Finset.union_subset s6Step246EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step246HeadFFresh : List Wire := [822]

private def s6Step246HeadFvFresh : List Wire := [818]

private def s6Step246HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246HeadGFresh : List Wire := [814]

private def s6Step246HeadGvFresh : List Wire := [830]

private def s6Step246FrontPlan : HmrSourceFront := ⟨s6Step246EntryGvAfter,s6Step246FrontPair,(growRow 795 s6Step246EntryFFresh ++ (growRow 777 s6Step246EntryGFresh ++ (growRow 776 s6Step246EntryFvFresh ++ (growRow 775 s6Step246EntryGvFresh ++ [])))),s6Step246FrontSigmaArena,[796],s6Step246HeadGBefore,[839],
  s6Step246HeadFvAfter,s6Step246FrontHead,(growRow 777 s6Step246HeadGFresh ++ (growRow 795 s6Step246HeadFFresh ++ (growRow 775 s6Step246HeadGvFresh ++ (growRow 776 s6Step246HeadFvFresh ++ [])))),s6Step246F4Plan,s6Step246CounterDuring,s6Step246CounterWork,s6Step246ExitGvAfter,s6Step246FrontOut,(shrinkRow 777 s6Step246ExitGExtra ++ (shrinkRow 795 s6Step246ExitFExtra ++ (shrinkRow 776 s6Step246ExitFvExtra ++ (shrinkRow 775 s6Step246ExitGvExtra ++ []))))⟩

private def s6Step246CompletePlan : HmrEarlyStepPlan := ⟨s6Step246FrontPlan,s6Step246EarlyControlArena,s6Step246EarlyControlPlan,s6Step246CompleteMoves⟩

private theorem s6Step246Complete_apart : List.Disjoint (s6Step246CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [796, 839, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  have nd : ((s6Step246CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[796, 839, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step246Complete_owned : (s6Step246CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step246EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step246EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step246CompleteMoveArena : Arena := ⟨s6Step246ExitGvAfter.live∪{146},Finset.union_subset s6Step246ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step246Complete_repack : s6Step246ExitGvAfter.checkRepack s6Step246CompleteMoves=some s6Step246EarlyControlArena := by
  have owned : 890∈s6Step246ExitGvAfter.live := by norm_num [s6Step246ExitGvAfter,arenaWires]
  have reserve : s6Step246ExitGvAfter.reserve {146}=some s6Step246CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step246ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step246CompleteMoveArena.retireSet {890}=s6Step246EarlyControlArena := by
    unfold Arena.retireSet s6Step246EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step246CompleteMoveArena,s6Step246ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step246CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step246CompleteMoveArena.retireSet {890}).checkRepack []=some s6Step246EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step246EarlyControl_branchOwned : ([839] : List Wire).toFinset⊆s6Step246EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step246EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246EarlyControl_branch : compileHmrBranchRetirement s6Step246EarlyControlSigmaArena 839=some s6Step246EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step246EarlyControl_branchOwned
  · ext q
    simp [s6Step246EarlyControlOutputArena,s6Step246EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step246EarlyControl_classEqualityBorrow : s6Step246EarlyControlPositiveArena.checkBorrow (([796, 814] : List Wire).length-1) s6Step246EarlyControlLog.classWork=some s6Step246EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step246EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step246EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step246EarlyControlEqualityArena,s6Step246EarlyControlPositiveArena,s6Step246EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step246EarlyControl_classEqualityOwned : ([796, 814] : List Wire).toFinset⊆s6Step246EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step246EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246EarlyControl_classEquality : compileHmrEqualityLog s6Step246EarlyControlPositiveArena [796, 814] 0 s6Step246EarlyControlLog.classWork=some (s6Step246EarlyControlEqualityArena,s6Step246EarlyControlLog.classWork,s6Step246EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step246EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step246EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step246EarlyControl_classOwned : ([769, 822, 796] : List Wire).toFinset⊆s6Step246EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step246EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246EarlyControl_positiveBorrow : s6Step246EarlyControlZeroArena.checkBorrow (1) s6Step246EarlyControlLog.positiveWork=some s6Step246EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step246EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step246EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step246EarlyControlPositiveArena,s6Step246EarlyControlZeroArena,s6Step246EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step246EarlyControl_class : compileHmrSourceClassLog s6Step246EarlyControlZeroArena false 769 s6Step246EarlyControlZeroPlan.top 0 796 s6Step246EarlyControlLog.positiveWork s6Step246EarlyControlLog.classWork=some s6Step246EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step246EarlyControlClassPlan s6Step246EarlyControlZeroArena false 769 s6Step246EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s6Step246EarlyControl_classOwned
  · exact s6Step246EarlyControl_positiveBorrow
  · exact s6Step246EarlyControl_classEquality

private theorem s6Step246EarlyControl_entryRecordOwned : ([839, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step246EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step246EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s6Step246EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step246EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246EarlyControl_fitBorrow : s6Step246EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step246EarlyControlLog.recordFresh=some s6Step246EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step246EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step246EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step246EarlyControlFittedArena,s6Step246EarlyControlFlagArena,s6Step246EarlyControlLog,arenaWires]

private theorem s6Step246EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step246EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step246EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246EarlyControl_fit : compileHmrRecordGrowLog s6Step246EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step246EarlyControlLog.recordFresh=some s6Step246EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step246EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step246EarlyControl_fitBorrow

private theorem s6Step246EarlyControl_flagsBorrow : s6Step246EarlyControlEqualityArena.checkBorrow (6) s6Step246EarlyControlLog.flagWork=some s6Step246EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step246EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step246EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step246EarlyControlFlagArena,s6Step246EarlyControlEqualityArena,s6Step246EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step246EarlyControl_flagsOwned : ([786, 253, 252, 251] : List Wire).toFinset⊆s6Step246EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step246EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246EarlyControl_flags : compileHmrFlagsLog s6Step246EarlyControlClassPlan.equalityArena s6Step246EarlyControlClassPlan.equality.top 253 252 251 s6Step246EarlyControlLog.flagWork=some s6Step246EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step246EarlyControl_flagsOwned⟩
  · exact s6Step246EarlyControl_flagsBorrow

private theorem s6Step246EarlyControl_historyBorrow : s6Step246EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step246EarlyControlLog.recordFresh=some s6Step246EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step246EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step246EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step246EarlyControlHistoryArena,s6Step246EarlyControlArena,s6Step246EarlyControlLog,arenaWires]

private theorem s6Step246EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step246EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step246EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246EarlyControl_history : compileHmrRecordGrowLog s6Step246EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step246EarlyControlLog.recordFresh=some s6Step246EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step246EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step246EarlyControl_historyBorrow

private theorem s6Step246EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s6Step246EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step246EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s6Step246EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step246EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246EarlyControl_sigmaRelease : s6Step246EarlyControlHistoryArena.release {796} (fun _ => false)=some s6Step246EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step246EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step246EarlyControlSigmaArena,s6Step246EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step246EarlyControl_sigma : compileHmrSigmaDropLog s6Step246EarlyControlHistoryArena false 0 0 254 796 []=some s6Step246EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step246EarlyControl_sigmaOwned⟩
  · exact s6Step246EarlyControl_sigmaRelease

private theorem s6Step246EarlyControl_zeroBorrow : s6Step246EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step246EarlyControlLog.zeroWork=some s6Step246EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step246EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step246EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step246EarlyControlZeroArena,s6Step246EarlyControlArena,s6Step246EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step246EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step246EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step246EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246EarlyControl_zero : compileHmrEqualityLog s6Step246EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step246EarlyControlLog.zeroWork=some (s6Step246EarlyControlZeroArena,s6Step246EarlyControlLog.zeroWork,s6Step246EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step246EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step246EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step246EarlyControl_logged : s6Step246EarlyControlPlan.Logged s6Step246EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 796 254 253 252 251 839 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step246EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step246EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step246EarlyControl_zero
  · exact s6Step246EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step246EarlyControl_flags
  · exact s6Step246EarlyControl_fit
  · exact s6Step246EarlyControl_history
  · exact s6Step246EarlyControl_sigma
  · exact s6Step246EarlyControl_branch

private theorem s6Step246EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step246EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 796 254 253 252 251 839 51 s6Step246EarlyControlLog=some s6Step246EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step246EarlyControlPlan s6Step246EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 796 254 253 252 251 839 51 s6Step246EarlyControl_logged

private def s6Step246EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step246EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩

private def s6Step246EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146],777⟩

private def s6Step246EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888],775⟩

private def s6Step246FrontBank : WindowBank := ⟨s6Step246EntryFRow,s6Step246EntryGRow,s6Step246EntryFvRow,s6Step246EntryGvRow⟩

private def s6Step246Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 822, 795]

private def s6Step246Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 814, 777]

private def s6Step246Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 818, 776]

private def s6Step246Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 864, 830, 775]

private theorem s6Step246Counter_apart : Disjoint s6Step246HeadFvAfter.live s6Step246CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step246HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246Counter_borrowed : s6Step246HeadFvAfter.checkBorrow 4 s6Step246CounterWork=some s6Step246CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step246HeadFvAfter s6Step246CounterDuring s6Step246CounterWork.toFinset s6Step246Counter_bounded s6Step246Counter_apart rfl

private theorem s6Step246Counter_owned : (796::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step246HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step246HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246Counter_checked : compileHmrCounterStepLog s6Step246HeadFvAfter true 796 [774, 773, 772, 771, 770, 769] s6Step246CounterWork=some s6Step246CounterDuring := by
  have owned : ∀q∈796::[774, 773, 772, 771, 770, 769],q∈s6Step246HeadFvAfter.live := fun q hq => s6Step246Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step246Counter_borrowed

private def s6Step246EntryFAfter : Arena := s6Step246EntryFBefore

private theorem s6Step246EntryBank_incomingDistinct : ([s6Step246EntryFRow,s6Step246EntryGRow,s6Step246EntryFvRow,s6Step246EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246EntryF_Incoming : rowsOwned s6Step246EntryFBefore [s6Step246EntryFRow,s6Step246EntryGRow,s6Step246EntryFvRow,s6Step246EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step246EntryFRow,s6Step246EntryGRow,s6Step246EntryFvRow,s6Step246EntryGvRow] 0 s6Step246EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step246EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step246EntryBank_outgoingOwned : rowsOwned s6Step246EntryGvAfter [s6Step246EntryFOut,s6Step246EntryGOut,s6Step246EntryFvOut,s6Step246EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step246EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step246EntryF_Outgoing : rowsOwned s6Step246EntryGvAfter [s6Step246EntryFOut,s6Step246EntryGOut,s6Step246EntryFvOut,s6Step246EntryGvOut] :=
  hmrRows_owned_drop s6Step246EntryGvAfter [s6Step246EntryFOut,s6Step246EntryGOut,s6Step246EntryFvOut,s6Step246EntryGvOut] 0 s6Step246EntryBank_outgoingOwned

private theorem s6Step246EntryF_distinct : (s6Step246EntryFRow.sign::s6Step246EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246EntryF_owned : (s6Step246EntryFRow.sign::s6Step246EntryFRow.payload).toFinset⊆s6Step246EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step246EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246EntryF_reserved : s6Step246EntryFBefore.reserve s6Step246EntryFFresh.toFinset=some s6Step246EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step246EntryFFresh,arenaWires]
  · norm_num [s6Step246EntryFBefore,s6Step246EntryFFresh,arenaWires]
  · simp only [s6Step246EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step246EntryF_checked : planRowResizeLog s6Step246EntryFBefore s6Step246EntryFRow 147 s6Step246EntryFFresh=
    some (s6Step246EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩,growRow 795 s6Step246EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step246EntryFBefore s6Step246EntryFAfter s6Step246EntryFRow 147 s6Step246EntryFFresh
    s6Step246EntryF_distinct s6Step246EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step246EntryF_reserved
  have rowEq : WindowRow.mk (s6Step246EntryFRow.payload++s6Step246EntryFFresh) s6Step246EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step246EntryFvAfter : Arena := s6Step246EntryFBefore

private def s6Step246EntryFvBefore : Arena := s6Step246EntryFBefore

private theorem s6Step246EntryFv_Incoming : rowsOwned s6Step246EntryFvBefore [s6Step246EntryFvRow,s6Step246EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step246EntryFRow,s6Step246EntryGRow,s6Step246EntryFvRow,s6Step246EntryGvRow] 2 s6Step246EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step246EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step246EntryFv_Outgoing : rowsOwned s6Step246EntryGvAfter [s6Step246EntryFvOut,s6Step246EntryGvOut] :=
  hmrRows_owned_drop s6Step246EntryGvAfter [s6Step246EntryFOut,s6Step246EntryGOut,s6Step246EntryFvOut,s6Step246EntryGvOut] 2 s6Step246EntryBank_outgoingOwned

private theorem s6Step246EntryFv_distinct : (s6Step246EntryFvRow.sign::s6Step246EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246EntryFv_owned : (s6Step246EntryFvRow.sign::s6Step246EntryFvRow.payload).toFinset⊆s6Step246EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step246EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246EntryFv_reserved : s6Step246EntryFvBefore.reserve s6Step246EntryFvFresh.toFinset=some s6Step246EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step246EntryFvFresh,arenaWires]
  · norm_num [s6Step246EntryFvBefore,s6Step246EntryFBefore,s6Step246EntryFvFresh,arenaWires]
  · simp only [s6Step246EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step246EntryFv_checked : planRowResizeLog s6Step246EntryFvBefore s6Step246EntryFvRow 138 s6Step246EntryFvFresh=
    some (s6Step246EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩,growRow 776 s6Step246EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step246EntryFvBefore s6Step246EntryFvAfter s6Step246EntryFvRow 138 s6Step246EntryFvFresh
    s6Step246EntryFv_distinct s6Step246EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step246EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step246EntryFvRow.payload++s6Step246EntryFvFresh) s6Step246EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step246EntryGAfter : Arena := s6Step246EntryFBefore

private def s6Step246EntryGBefore : Arena := s6Step246EntryFBefore

private theorem s6Step246EntryG_Incoming : rowsOwned s6Step246EntryGBefore [s6Step246EntryGRow,s6Step246EntryFvRow,s6Step246EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step246EntryFRow,s6Step246EntryGRow,s6Step246EntryFvRow,s6Step246EntryGvRow] 1 s6Step246EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step246EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step246EntryG_Outgoing : rowsOwned s6Step246EntryGvAfter [s6Step246EntryGOut,s6Step246EntryFvOut,s6Step246EntryGvOut] :=
  hmrRows_owned_drop s6Step246EntryGvAfter [s6Step246EntryFOut,s6Step246EntryGOut,s6Step246EntryFvOut,s6Step246EntryGvOut] 1 s6Step246EntryBank_outgoingOwned

private theorem s6Step246EntryG_distinct : (s6Step246EntryGRow.sign::s6Step246EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246EntryG_owned : (s6Step246EntryGRow.sign::s6Step246EntryGRow.payload).toFinset⊆s6Step246EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step246EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246EntryG_reserved : s6Step246EntryGBefore.reserve s6Step246EntryGFresh.toFinset=some s6Step246EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step246EntryGFresh,arenaWires]
  · norm_num [s6Step246EntryGBefore,s6Step246EntryFBefore,s6Step246EntryGFresh,arenaWires]
  · simp only [s6Step246EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step246EntryG_checked : planRowResizeLog s6Step246EntryGBefore s6Step246EntryGRow 147 s6Step246EntryGFresh=
    some (s6Step246EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146],777⟩,growRow 777 s6Step246EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step246EntryGBefore s6Step246EntryGAfter s6Step246EntryGRow 147 s6Step246EntryGFresh
    s6Step246EntryG_distinct s6Step246EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step246EntryG_reserved
  have rowEq : WindowRow.mk (s6Step246EntryGRow.payload++s6Step246EntryGFresh) s6Step246EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step246EntryGvBefore : Arena := s6Step246EntryFBefore

private theorem s6Step246EntryGv_Incoming : rowsOwned s6Step246EntryGvBefore [s6Step246EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step246EntryFRow,s6Step246EntryGRow,s6Step246EntryFvRow,s6Step246EntryGvRow] 3 s6Step246EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step246EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step246EntryGv_Outgoing : rowsOwned s6Step246EntryGvAfter [s6Step246EntryGvOut] :=
  hmrRows_owned_drop s6Step246EntryGvAfter [s6Step246EntryFOut,s6Step246EntryGOut,s6Step246EntryFvOut,s6Step246EntryGvOut] 3 s6Step246EntryBank_outgoingOwned

private theorem s6Step246EntryGv_distinct : (s6Step246EntryGvRow.sign::s6Step246EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246EntryGv_owned : (s6Step246EntryGvRow.sign::s6Step246EntryGvRow.payload).toFinset⊆s6Step246EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step246EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246EntryGv_reserved : s6Step246EntryGvBefore.reserve s6Step246EntryGvFresh.toFinset=some s6Step246EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step246EntryGvFresh,arenaWires]
  · norm_num [s6Step246EntryGvBefore,s6Step246EntryFBefore,s6Step246EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step246EntryGvAfter,s6Step246EntryGvBefore,s6Step246EntryFBefore,s6Step246EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step246EntryGv_checked : planRowResizeLog s6Step246EntryGvBefore s6Step246EntryGvRow 138 s6Step246EntryGvFresh=
    some (s6Step246EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 864],775⟩,growRow 775 s6Step246EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step246EntryGvBefore s6Step246EntryGvAfter s6Step246EntryGvRow 138 s6Step246EntryGvFresh
    s6Step246EntryGv_distinct s6Step246EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step246EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step246EntryGvRow.payload++s6Step246EntryGvFresh) s6Step246EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 864],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step246EntryBank_rows : planWindowRowsLog s6Step246EntryFBefore [(s6Step246EntryFRow,147),(s6Step246EntryGRow,147),(s6Step246EntryFvRow,138),(s6Step246EntryGvRow,138)] [s6Step246EntryFFresh,s6Step246EntryGFresh,s6Step246EntryFvFresh,s6Step246EntryGvFresh]=
    some (s6Step246EntryGvAfter,[s6Step246EntryFOut,s6Step246EntryGOut,s6Step246EntryFvOut,s6Step246EntryGvOut],(growRow 795 s6Step246EntryFFresh ++ (growRow 777 s6Step246EntryGFresh ++ (growRow 776 s6Step246EntryFvFresh ++ (growRow 775 s6Step246EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step246EntryGvAfter [] []=some (s6Step246EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step246EntryGvBefore s6Step246EntryGvAfter s6Step246EntryGvAfter
    s6Step246EntryGvRow s6Step246EntryGvOut 138 s6Step246EntryGvFresh [] [] []
    (growRow 775 s6Step246EntryGvFresh) ([]) s6Step246EntryGv_Incoming s6Step246EntryGv_checked h4 s6Step246EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step246EntryFvBefore s6Step246EntryFvAfter s6Step246EntryGvAfter
    s6Step246EntryFvRow s6Step246EntryFvOut 138 s6Step246EntryFvFresh [(s6Step246EntryGvRow,138)] [s6Step246EntryGvFresh] [s6Step246EntryGvOut]
    (growRow 776 s6Step246EntryFvFresh) ((growRow 775 s6Step246EntryGvFresh ++ [])) s6Step246EntryFv_Incoming s6Step246EntryFv_checked h3 s6Step246EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step246EntryGBefore s6Step246EntryGAfter s6Step246EntryGvAfter
    s6Step246EntryGRow s6Step246EntryGOut 147 s6Step246EntryGFresh [(s6Step246EntryFvRow,138),(s6Step246EntryGvRow,138)] [s6Step246EntryFvFresh,s6Step246EntryGvFresh] [s6Step246EntryFvOut,s6Step246EntryGvOut]
    (growRow 777 s6Step246EntryGFresh) ((growRow 776 s6Step246EntryFvFresh ++ (growRow 775 s6Step246EntryGvFresh ++ []))) s6Step246EntryG_Incoming s6Step246EntryG_checked h2 s6Step246EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step246EntryFBefore s6Step246EntryFAfter s6Step246EntryGvAfter
    s6Step246EntryFRow s6Step246EntryFOut 147 s6Step246EntryFFresh [(s6Step246EntryGRow,147),(s6Step246EntryFvRow,138),(s6Step246EntryGvRow,138)] [s6Step246EntryGFresh,s6Step246EntryFvFresh,s6Step246EntryGvFresh] [s6Step246EntryGOut,s6Step246EntryFvOut,s6Step246EntryGvOut]
    (growRow 795 s6Step246EntryFFresh) ((growRow 777 s6Step246EntryGFresh ++ (growRow 776 s6Step246EntryFvFresh ++ (growRow 775 s6Step246EntryGvFresh ++ [])))) s6Step246EntryF_Incoming s6Step246EntryF_checked h1 s6Step246EntryF_Outgoing
  exact h0

private theorem s6Step246EntryBank_checked : compileHmrBankResizeLog .entry s6Step246EntryFBefore ⟨s6Step246EntryFRow,s6Step246EntryGRow,s6Step246EntryFvRow,s6Step246EntryGvRow⟩ ⟨147,147,138,138⟩ [s6Step246EntryFFresh,s6Step246EntryGFresh,s6Step246EntryFvFresh,s6Step246EntryGvFresh]=
    some (s6Step246EntryGvAfter,⟨s6Step246EntryFOut,s6Step246EntryGOut,s6Step246EntryFvOut,s6Step246EntryGvOut⟩,(growRow 795 s6Step246EntryFFresh ++ (growRow 777 s6Step246EntryGFresh ++ (growRow 776 s6Step246EntryFvFresh ++ (growRow 775 s6Step246EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step246EntryBank_rows]
  rfl

private def s6Step246ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246ExitFBefore : Arena := s6Step246ExitGAfter

private def s6Step246ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 822],795⟩

private def s6Step246ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 818],776⟩

private def s6Step246ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 814],777⟩

private def s6Step246ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 864, 830],775⟩

private theorem s6Step246ExitBank_incomingDistinct : ([s6Step246ExitGRow,s6Step246ExitFRow,s6Step246ExitFvRow,s6Step246ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246ExitF_Incoming : rowsOwned s6Step246ExitFBefore [s6Step246ExitFRow,s6Step246ExitFvRow,s6Step246ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step246ExitGRow,s6Step246ExitFRow,s6Step246ExitFvRow,s6Step246ExitGvRow] 1 s6Step246ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step246ExitFBefore (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step246ExitBank_outgoingOwned : rowsOwned s6Step246ExitGvAfter [s6Step246ExitGOut,s6Step246ExitFOut,s6Step246ExitFvOut,s6Step246ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step246ExitGvAfter (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step246ExitF_Outgoing : rowsOwned s6Step246ExitGvAfter [s6Step246ExitFOut,s6Step246ExitFvOut,s6Step246ExitGvOut] :=
  hmrRows_owned_drop s6Step246ExitGvAfter [s6Step246ExitGOut,s6Step246ExitFOut,s6Step246ExitFvOut,s6Step246ExitGvOut] 1 s6Step246ExitBank_outgoingOwned

private theorem s6Step246ExitF_distinct : (s6Step246ExitFRow.sign::s6Step246ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246ExitF_owned : (s6Step246ExitFRow.sign::s6Step246ExitFRow.payload).toFinset⊆s6Step246ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step246ExitFBefore (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246ExitF_retired : s6Step246ExitFBefore.retireSet s6Step246ExitFExtra.toFinset=s6Step246ExitFAfter := by
  unfold Arena.retireSet s6Step246ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step246ExitFBefore,s6Step246ExitGAfter,s6Step246ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step246ExitF_checked : planRowResizeLog s6Step246ExitFBefore s6Step246ExitFRow 147 []=
    some (s6Step246ExitFAfter,s6Step246ExitFOut,shrinkRow 795 s6Step246ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step246ExitFBefore s6Step246ExitFRow 147 s6Step246ExitF_distinct s6Step246ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step246ExitFRow.payload.take 147) s6Step246ExitFRow.sign=s6Step246ExitFOut := by decide +kernel
  have hi : s6Step246ExitFRow.payload.drop 147=s6Step246ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step246ExitF_retired] at result
  exact result

private def s6Step246ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246ExitFvBefore : Arena := s6Step246ExitFAfter

private theorem s6Step246ExitFv_Incoming : rowsOwned s6Step246ExitFvBefore [s6Step246ExitFvRow,s6Step246ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step246ExitGRow,s6Step246ExitFRow,s6Step246ExitFvRow,s6Step246ExitGvRow] 2 s6Step246ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step246ExitFvBefore (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step246ExitFv_Outgoing : rowsOwned s6Step246ExitGvAfter [s6Step246ExitFvOut,s6Step246ExitGvOut] :=
  hmrRows_owned_drop s6Step246ExitGvAfter [s6Step246ExitGOut,s6Step246ExitFOut,s6Step246ExitFvOut,s6Step246ExitGvOut] 2 s6Step246ExitBank_outgoingOwned

private theorem s6Step246ExitFv_distinct : (s6Step246ExitFvRow.sign::s6Step246ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246ExitFv_owned : (s6Step246ExitFvRow.sign::s6Step246ExitFvRow.payload).toFinset⊆s6Step246ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step246ExitFvBefore (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246ExitFv_retired : s6Step246ExitFvBefore.retireSet s6Step246ExitFvExtra.toFinset=s6Step246ExitFvAfter := by
  unfold Arena.retireSet s6Step246ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step246ExitFvBefore,s6Step246ExitFAfter,s6Step246ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step246ExitFv_checked : planRowResizeLog s6Step246ExitFvBefore s6Step246ExitFvRow 138 []=
    some (s6Step246ExitFvAfter,s6Step246ExitFvOut,shrinkRow 776 s6Step246ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step246ExitFvBefore s6Step246ExitFvRow 138 s6Step246ExitFv_distinct s6Step246ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step246ExitFvRow.payload.take 138) s6Step246ExitFvRow.sign=s6Step246ExitFvOut := by decide +kernel
  have hi : s6Step246ExitFvRow.payload.drop 138=s6Step246ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step246ExitFv_retired] at result
  exact result

private def s6Step246ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step246ExitG_Incoming : rowsOwned s6Step246ExitGBefore [s6Step246ExitGRow,s6Step246ExitFRow,s6Step246ExitFvRow,s6Step246ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step246ExitGRow,s6Step246ExitFRow,s6Step246ExitFvRow,s6Step246ExitGvRow] 0 s6Step246ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step246ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step246ExitG_Outgoing : rowsOwned s6Step246ExitGvAfter [s6Step246ExitGOut,s6Step246ExitFOut,s6Step246ExitFvOut,s6Step246ExitGvOut] :=
  hmrRows_owned_drop s6Step246ExitGvAfter [s6Step246ExitGOut,s6Step246ExitFOut,s6Step246ExitFvOut,s6Step246ExitGvOut] 0 s6Step246ExitBank_outgoingOwned

private theorem s6Step246ExitG_distinct : (s6Step246ExitGRow.sign::s6Step246ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246ExitG_owned : (s6Step246ExitGRow.sign::s6Step246ExitGRow.payload).toFinset⊆s6Step246ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step246ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246ExitG_retired : s6Step246ExitGBefore.retireSet s6Step246ExitGExtra.toFinset=s6Step246ExitGAfter := by
  unfold Arena.retireSet s6Step246ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step246ExitGBefore,s6Step246ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step246ExitG_checked : planRowResizeLog s6Step246ExitGBefore s6Step246ExitGRow 146 []=
    some (s6Step246ExitGAfter,s6Step246ExitGOut,shrinkRow 777 s6Step246ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step246ExitGBefore s6Step246ExitGRow 146 s6Step246ExitG_distinct s6Step246ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step246ExitGRow.payload.take 146) s6Step246ExitGRow.sign=s6Step246ExitGOut := by decide +kernel
  have hi : s6Step246ExitGRow.payload.drop 146=s6Step246ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step246ExitG_retired] at result
  exact result

private def s6Step246ExitGvBefore : Arena := s6Step246ExitFvAfter

private theorem s6Step246ExitGv_Incoming : rowsOwned s6Step246ExitGvBefore [s6Step246ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step246ExitGRow,s6Step246ExitFRow,s6Step246ExitFvRow,s6Step246ExitGvRow] 3 s6Step246ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step246ExitGvBefore (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step246ExitGv_Outgoing : rowsOwned s6Step246ExitGvAfter [s6Step246ExitGvOut] :=
  hmrRows_owned_drop s6Step246ExitGvAfter [s6Step246ExitGOut,s6Step246ExitFOut,s6Step246ExitFvOut,s6Step246ExitGvOut] 3 s6Step246ExitBank_outgoingOwned

private theorem s6Step246ExitGv_distinct : (s6Step246ExitGvRow.sign::s6Step246ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246ExitGv_owned : (s6Step246ExitGvRow.sign::s6Step246ExitGvRow.payload).toFinset⊆s6Step246ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step246ExitGvBefore (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246ExitGv_retired : s6Step246ExitGvBefore.retireSet s6Step246ExitGvExtra.toFinset=s6Step246ExitGvAfter := by
  unfold Arena.retireSet s6Step246ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step246ExitGvBefore,s6Step246ExitFvAfter,s6Step246ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step246ExitGv_checked : planRowResizeLog s6Step246ExitGvBefore s6Step246ExitGvRow 137 []=
    some (s6Step246ExitGvAfter,s6Step246ExitGvOut,shrinkRow 775 s6Step246ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step246ExitGvBefore s6Step246ExitGvRow 137 s6Step246ExitGv_distinct s6Step246ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step246ExitGvRow.payload.take 137) s6Step246ExitGvRow.sign=s6Step246ExitGvOut := by decide +kernel
  have hi : s6Step246ExitGvRow.payload.drop 137=s6Step246ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step246ExitGv_retired] at result
  exact result

private theorem s6Step246ExitBank_rows : planWindowRowsLog s6Step246ExitGBefore [(s6Step246ExitGRow,146),(s6Step246ExitFRow,147),(s6Step246ExitFvRow,138),(s6Step246ExitGvRow,137)] [[],[],[],[]]=
    some (s6Step246ExitGvAfter,[s6Step246ExitGOut,s6Step246ExitFOut,s6Step246ExitFvOut,s6Step246ExitGvOut],(shrinkRow 777 s6Step246ExitGExtra ++ (shrinkRow 795 s6Step246ExitFExtra ++ (shrinkRow 776 s6Step246ExitFvExtra ++ (shrinkRow 775 s6Step246ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step246ExitGvAfter [] []=some (s6Step246ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step246ExitGvBefore s6Step246ExitGvAfter s6Step246ExitGvAfter
    s6Step246ExitGvRow s6Step246ExitGvOut 137 [] [] [] []
    (shrinkRow 775 s6Step246ExitGvExtra) ([]) s6Step246ExitGv_Incoming s6Step246ExitGv_checked h4 s6Step246ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step246ExitFvBefore s6Step246ExitFvAfter s6Step246ExitGvAfter
    s6Step246ExitFvRow s6Step246ExitFvOut 138 [] [(s6Step246ExitGvRow,137)] [[]] [s6Step246ExitGvOut]
    (shrinkRow 776 s6Step246ExitFvExtra) ((shrinkRow 775 s6Step246ExitGvExtra ++ [])) s6Step246ExitFv_Incoming s6Step246ExitFv_checked h3 s6Step246ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step246ExitFBefore s6Step246ExitFAfter s6Step246ExitGvAfter
    s6Step246ExitFRow s6Step246ExitFOut 147 [] [(s6Step246ExitFvRow,138),(s6Step246ExitGvRow,137)] [[],[]] [s6Step246ExitFvOut,s6Step246ExitGvOut]
    (shrinkRow 795 s6Step246ExitFExtra) ((shrinkRow 776 s6Step246ExitFvExtra ++ (shrinkRow 775 s6Step246ExitGvExtra ++ []))) s6Step246ExitF_Incoming s6Step246ExitF_checked h2 s6Step246ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step246ExitGBefore s6Step246ExitGAfter s6Step246ExitGvAfter
    s6Step246ExitGRow s6Step246ExitGOut 146 [] [(s6Step246ExitFRow,147),(s6Step246ExitFvRow,138),(s6Step246ExitGvRow,137)] [[],[],[]] [s6Step246ExitFOut,s6Step246ExitFvOut,s6Step246ExitGvOut]
    (shrinkRow 777 s6Step246ExitGExtra) ((shrinkRow 795 s6Step246ExitFExtra ++ (shrinkRow 776 s6Step246ExitFvExtra ++ (shrinkRow 775 s6Step246ExitGvExtra ++ [])))) s6Step246ExitG_Incoming s6Step246ExitG_checked h1 s6Step246ExitG_Outgoing
  exact h0

private theorem s6Step246ExitBank_checked : compileHmrBankResizeLog .exit s6Step246ExitGBefore ⟨s6Step246ExitFRow,s6Step246ExitGRow,s6Step246ExitFvRow,s6Step246ExitGvRow⟩ ⟨147,146,138,137⟩ [[],[],[],[]]=
    some (s6Step246ExitGvAfter,⟨s6Step246ExitFOut,s6Step246ExitGOut,s6Step246ExitFvOut,s6Step246ExitGvOut⟩,(shrinkRow 777 s6Step246ExitGExtra ++ (shrinkRow 795 s6Step246ExitFExtra ++ (shrinkRow 776 s6Step246ExitFvExtra ++ (shrinkRow 775 s6Step246ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step246ExitBank_rows]
  rfl

private theorem s6Step246Add0_apart : Disjoint s6Step246Add0Arena.live s6Step246Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step246Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246Add0_card : s6Step246Add0Arena.live.card=895 := by
  decide +kernel

private theorem s6Step246Add0_borrowed : s6Step246Add0Arena.checkBorrow (hmrHybridCount s6Step246Add0Arena s6Step246Add0B.length) s6Step246Add0Work=some s6Step246Add0During := by
  have len : s6Step246Add0Work.length=hmrHybridCount s6Step246Add0Arena s6Step246Add0B.length := by
    rw [hmrHybridCount,s6Step246Add0_card]
    decide +kernel
  have nd : s6Step246Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step246Add0Arena s6Step246Add0During s6Step246Add0Work.toFinset s6Step246Add0_bounded s6Step246Add0_apart rfl

private theorem s6Step246Add0_distinct : (786::839::841::(s6Step246Add0A++s6Step246Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246Add0_owned : (786::839::841::(s6Step246Add0A++s6Step246Add0B)).toFinset⊆s6Step246Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step246Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246Add0_checked : compileHmrHybridCinLog s6Step246Add0Arena 839 786 841 s6Step246Add0A s6Step246Add0B s6Step246Add0Work=some s6Step246Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step246Add0Arena s6Step246Add0During 839 786 841 s6Step246Add0A s6Step246Add0B s6Step246Add0Work
    (by decide +kernel) (by decide +kernel) s6Step246Add0_distinct
    (fun q hq => s6Step246Add0_owned (List.mem_toFinset.mpr hq)) s6Step246Add0_borrowed

private theorem s6Step246Add1_apart : Disjoint s6Step246Add1Arena.live s6Step246Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step246Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246Add1_card : s6Step246Add1Arena.live.card=895 := by
  decide +kernel

private theorem s6Step246Add1_borrowed : s6Step246Add1Arena.checkBorrow (hmrHybridCount s6Step246Add1Arena s6Step246Add1B.length) s6Step246Add1Work=some s6Step246Add1During := by
  have len : s6Step246Add1Work.length=hmrHybridCount s6Step246Add1Arena s6Step246Add1B.length := by
    rw [hmrHybridCount,s6Step246Add1_card]
    decide +kernel
  have nd : s6Step246Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step246Add1Arena s6Step246Add1During s6Step246Add1Work.toFinset s6Step246Add1_bounded s6Step246Add1_apart rfl

private theorem s6Step246Add1_distinct : (786::839::841::(s6Step246Add1A++s6Step246Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246Add1_owned : (786::839::841::(s6Step246Add1A++s6Step246Add1B)).toFinset⊆s6Step246Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step246Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246Add1_checked : compileHmrHybridCinLog s6Step246Add1Arena 839 786 841 s6Step246Add1A s6Step246Add1B s6Step246Add1Work=some s6Step246Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step246Add1Arena s6Step246Add1During 839 786 841 s6Step246Add1A s6Step246Add1B s6Step246Add1Work
    (by decide +kernel) (by decide +kernel) s6Step246Add1_distinct
    (fun q hq => s6Step246Add1_owned (List.mem_toFinset.mpr hq)) s6Step246Add1_borrowed

private theorem s6Step246F4_apart : Disjoint (s6Step246Add0A++s6Step246Add0B).toFinset (s6Step246Add1A++s6Step246Add1B).toFinset := by
  have nd : ((s6Step246Add0A++s6Step246Add0B)++(s6Step246Add1A++s6Step246Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step246F4_carry : s6Step246F4FlagArena.checkBorrow 1 [841]=some s6Step246Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step246F4FlagArena,s6Step246HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step246F4FlagArena,s6Step246HeadFvAfter,s6Step246Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step246F4_distinct : (796::839::786::841::((s6Step246Add0A++s6Step246Add1A)++(s6Step246Add0B++s6Step246Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246F4_flag : s6Step246HeadFvAfter.checkBorrow 1 [786]=some s6Step246F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step246HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step246F4_owned : (796::839::((s6Step246Add0A++s6Step246Add1A)++(s6Step246Add0B++s6Step246Add1B))).toFinset⊆s6Step246HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step246HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246F4_checked : compileHmrHybridF4Log s6Step246HeadFvAfter 796 839 s6Step246Add0A s6Step246Add0B s6Step246Add1A s6Step246Add1B [786] [841] s6Step246Add0Work s6Step246Add1Work=some s6Step246F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step246HeadFvAfter s6Step246F4FlagArena s6Step246Add0Arena s6Step246Add0During s6Step246Add1During 796 839
    s6Step246Add0A s6Step246Add0B s6Step246Add1A s6Step246Add1B [786] [841] s6Step246Add0Work s6Step246Add1Work
    (fun q hq => s6Step246F4_owned (List.mem_toFinset.mpr hq)) s6Step246F4_flag s6Step246F4_carry
    s6Step246F4_distinct s6Step246F4_apart s6Step246Add0_checked s6Step246Add1_checked

private theorem s6Step246Front_branch : s6Step246FrontSigmaArena.checkBorrow 1 [839]=some s6Step246HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step246FrontSigmaArena,s6Step246EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step246FrontSigmaArena,s6Step246EntryGvAfter,s6Step246HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step246Front_entry : HmrFrontEntryValid s6Step246EntryFBefore s6Step246FrontBank 147 138 ⟨147,146,138,137⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step246FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step246EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step246EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step246FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step246Front_sigma : s6Step246EntryGvAfter.checkBorrow 1 [796]=some s6Step246FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step246EntryGvAfter,arenaWires]
  · rfl

private def s6Step246HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246HeadFBefore : Arena := s6Step246HeadGAfter

private def s6Step246HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step246HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩

private def s6Step246HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146],777⟩

private def s6Step246HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 864],775⟩

private theorem s6Step246HeadBank_incomingDistinct : ([s6Step246HeadGRow,s6Step246HeadFRow,s6Step246HeadGvRow,s6Step246HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246HeadF_Incoming : rowsOwned s6Step246HeadFBefore [s6Step246HeadFRow,s6Step246HeadGvRow,s6Step246HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step246HeadGRow,s6Step246HeadFRow,s6Step246HeadGvRow,s6Step246HeadFvRow] 1 s6Step246HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step246HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step246HeadBank_outgoingOwned : rowsOwned s6Step246HeadFvAfter [s6Step246HeadGOut,s6Step246HeadFOut,s6Step246HeadGvOut,s6Step246HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step246HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step246HeadF_Outgoing : rowsOwned s6Step246HeadFvAfter [s6Step246HeadFOut,s6Step246HeadGvOut,s6Step246HeadFvOut] :=
  hmrRows_owned_drop s6Step246HeadFvAfter [s6Step246HeadGOut,s6Step246HeadFOut,s6Step246HeadGvOut,s6Step246HeadFvOut] 1 s6Step246HeadBank_outgoingOwned

private theorem s6Step246HeadF_distinct : (s6Step246HeadFRow.sign::s6Step246HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246HeadF_owned : (s6Step246HeadFRow.sign::s6Step246HeadFRow.payload).toFinset⊆s6Step246HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step246HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246HeadF_reserved : s6Step246HeadFBefore.reserve s6Step246HeadFFresh.toFinset=some s6Step246HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step246HeadFFresh,arenaWires]
  · norm_num [s6Step246HeadFBefore,s6Step246HeadGAfter,s6Step246HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step246HeadFAfter,s6Step246HeadFBefore,s6Step246HeadGAfter,s6Step246HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step246HeadF_checked : planRowResizeLog s6Step246HeadFBefore s6Step246HeadFRow 148 s6Step246HeadFFresh=
    some (s6Step246HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 822],795⟩,growRow 795 s6Step246HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step246HeadFBefore s6Step246HeadFAfter s6Step246HeadFRow 148 s6Step246HeadFFresh
    s6Step246HeadF_distinct s6Step246HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step246HeadF_reserved
  have rowEq : WindowRow.mk (s6Step246HeadFRow.payload++s6Step246HeadFFresh) s6Step246HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 822],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step246HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step246HeadFvBefore : Arena := s6Step246HeadGvAfter

private theorem s6Step246HeadFv_Incoming : rowsOwned s6Step246HeadFvBefore [s6Step246HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step246HeadGRow,s6Step246HeadFRow,s6Step246HeadGvRow,s6Step246HeadFvRow] 3 s6Step246HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step246HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step246HeadFv_Outgoing : rowsOwned s6Step246HeadFvAfter [s6Step246HeadFvOut] :=
  hmrRows_owned_drop s6Step246HeadFvAfter [s6Step246HeadGOut,s6Step246HeadFOut,s6Step246HeadGvOut,s6Step246HeadFvOut] 3 s6Step246HeadBank_outgoingOwned

private theorem s6Step246HeadFv_distinct : (s6Step246HeadFvRow.sign::s6Step246HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246HeadFv_owned : (s6Step246HeadFvRow.sign::s6Step246HeadFvRow.payload).toFinset⊆s6Step246HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step246HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246HeadFv_reserved : s6Step246HeadFvBefore.reserve s6Step246HeadFvFresh.toFinset=some s6Step246HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step246HeadFvFresh,arenaWires]
  · norm_num [s6Step246HeadFvBefore,s6Step246HeadGvAfter,s6Step246HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step246HeadFvAfter,s6Step246HeadFvBefore,s6Step246HeadGvAfter,s6Step246HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step246HeadFv_checked : planRowResizeLog s6Step246HeadFvBefore s6Step246HeadFvRow 139 s6Step246HeadFvFresh=
    some (s6Step246HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 818],776⟩,growRow 776 s6Step246HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step246HeadFvBefore s6Step246HeadFvAfter s6Step246HeadFvRow 139 s6Step246HeadFvFresh
    s6Step246HeadFv_distinct s6Step246HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step246HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step246HeadFvRow.payload++s6Step246HeadFvFresh) s6Step246HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 818],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step246HeadG_Incoming : rowsOwned s6Step246HeadGBefore [s6Step246HeadGRow,s6Step246HeadFRow,s6Step246HeadGvRow,s6Step246HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step246HeadGRow,s6Step246HeadFRow,s6Step246HeadGvRow,s6Step246HeadFvRow] 0 s6Step246HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step246HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step246HeadG_Outgoing : rowsOwned s6Step246HeadFvAfter [s6Step246HeadGOut,s6Step246HeadFOut,s6Step246HeadGvOut,s6Step246HeadFvOut] :=
  hmrRows_owned_drop s6Step246HeadFvAfter [s6Step246HeadGOut,s6Step246HeadFOut,s6Step246HeadGvOut,s6Step246HeadFvOut] 0 s6Step246HeadBank_outgoingOwned

private theorem s6Step246HeadG_distinct : (s6Step246HeadGRow.sign::s6Step246HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246HeadG_owned : (s6Step246HeadGRow.sign::s6Step246HeadGRow.payload).toFinset⊆s6Step246HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step246HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246HeadG_reserved : s6Step246HeadGBefore.reserve s6Step246HeadGFresh.toFinset=some s6Step246HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step246HeadGFresh,arenaWires]
  · norm_num [s6Step246HeadGBefore,s6Step246HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step246HeadGAfter,s6Step246HeadGBefore,s6Step246HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step246HeadG_checked : planRowResizeLog s6Step246HeadGBefore s6Step246HeadGRow 148 s6Step246HeadGFresh=
    some (s6Step246HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 814],777⟩,growRow 777 s6Step246HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step246HeadGBefore s6Step246HeadGAfter s6Step246HeadGRow 148 s6Step246HeadGFresh
    s6Step246HeadG_distinct s6Step246HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step246HeadG_reserved
  have rowEq : WindowRow.mk (s6Step246HeadGRow.payload++s6Step246HeadGFresh) s6Step246HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 814],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step246HeadGvBefore : Arena := s6Step246HeadFAfter

private theorem s6Step246HeadGv_Incoming : rowsOwned s6Step246HeadGvBefore [s6Step246HeadGvRow,s6Step246HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step246HeadGRow,s6Step246HeadFRow,s6Step246HeadGvRow,s6Step246HeadFvRow] 2 s6Step246HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step246HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step246HeadGv_Outgoing : rowsOwned s6Step246HeadFvAfter [s6Step246HeadGvOut,s6Step246HeadFvOut] :=
  hmrRows_owned_drop s6Step246HeadFvAfter [s6Step246HeadGOut,s6Step246HeadFOut,s6Step246HeadGvOut,s6Step246HeadFvOut] 2 s6Step246HeadBank_outgoingOwned

private theorem s6Step246HeadGv_distinct : (s6Step246HeadGvRow.sign::s6Step246HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step246HeadGv_owned : (s6Step246HeadGvRow.sign::s6Step246HeadGvRow.payload).toFinset⊆s6Step246HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step246HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step246HeadGv_reserved : s6Step246HeadGvBefore.reserve s6Step246HeadGvFresh.toFinset=some s6Step246HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step246HeadGvFresh,arenaWires]
  · norm_num [s6Step246HeadGvBefore,s6Step246HeadFAfter,s6Step246HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step246HeadGvAfter,s6Step246HeadGvBefore,s6Step246HeadFAfter,s6Step246HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step246HeadGv_checked : planRowResizeLog s6Step246HeadGvBefore s6Step246HeadGvRow 139 s6Step246HeadGvFresh=
    some (s6Step246HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 864, 830],775⟩,growRow 775 s6Step246HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step246HeadGvBefore s6Step246HeadGvAfter s6Step246HeadGvRow 139 s6Step246HeadGvFresh
    s6Step246HeadGv_distinct s6Step246HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step246HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step246HeadGvRow.payload++s6Step246HeadGvFresh) s6Step246HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 864, 830],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step246HeadBank_rows : planWindowRowsLog s6Step246HeadGBefore [(s6Step246HeadGRow,148),(s6Step246HeadFRow,148),(s6Step246HeadGvRow,139),(s6Step246HeadFvRow,139)] [s6Step246HeadGFresh,s6Step246HeadFFresh,s6Step246HeadGvFresh,s6Step246HeadFvFresh]=
    some (s6Step246HeadFvAfter,[s6Step246HeadGOut,s6Step246HeadFOut,s6Step246HeadGvOut,s6Step246HeadFvOut],(growRow 777 s6Step246HeadGFresh ++ (growRow 795 s6Step246HeadFFresh ++ (growRow 775 s6Step246HeadGvFresh ++ (growRow 776 s6Step246HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step246HeadFvAfter [] []=some (s6Step246HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step246HeadFvBefore s6Step246HeadFvAfter s6Step246HeadFvAfter
    s6Step246HeadFvRow s6Step246HeadFvOut 139 s6Step246HeadFvFresh [] [] []
    (growRow 776 s6Step246HeadFvFresh) ([]) s6Step246HeadFv_Incoming s6Step246HeadFv_checked h4 s6Step246HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step246HeadGvBefore s6Step246HeadGvAfter s6Step246HeadFvAfter
    s6Step246HeadGvRow s6Step246HeadGvOut 139 s6Step246HeadGvFresh [(s6Step246HeadFvRow,139)] [s6Step246HeadFvFresh] [s6Step246HeadFvOut]
    (growRow 775 s6Step246HeadGvFresh) ((growRow 776 s6Step246HeadFvFresh ++ [])) s6Step246HeadGv_Incoming s6Step246HeadGv_checked h3 s6Step246HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step246HeadFBefore s6Step246HeadFAfter s6Step246HeadFvAfter
    s6Step246HeadFRow s6Step246HeadFOut 148 s6Step246HeadFFresh [(s6Step246HeadGvRow,139),(s6Step246HeadFvRow,139)] [s6Step246HeadGvFresh,s6Step246HeadFvFresh] [s6Step246HeadGvOut,s6Step246HeadFvOut]
    (growRow 795 s6Step246HeadFFresh) ((growRow 775 s6Step246HeadGvFresh ++ (growRow 776 s6Step246HeadFvFresh ++ []))) s6Step246HeadF_Incoming s6Step246HeadF_checked h2 s6Step246HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step246HeadGBefore s6Step246HeadGAfter s6Step246HeadFvAfter
    s6Step246HeadGRow s6Step246HeadGOut 148 s6Step246HeadGFresh [(s6Step246HeadFRow,148),(s6Step246HeadGvRow,139),(s6Step246HeadFvRow,139)] [s6Step246HeadFFresh,s6Step246HeadGvFresh,s6Step246HeadFvFresh] [s6Step246HeadFOut,s6Step246HeadGvOut,s6Step246HeadFvOut]
    (growRow 777 s6Step246HeadGFresh) ((growRow 795 s6Step246HeadFFresh ++ (growRow 775 s6Step246HeadGvFresh ++ (growRow 776 s6Step246HeadFvFresh ++ [])))) s6Step246HeadG_Incoming s6Step246HeadG_checked h1 s6Step246HeadG_Outgoing
  exact h0

private theorem s6Step246HeadBank_checked : compileHmrBankResizeLog .headroom s6Step246HeadGBefore ⟨s6Step246HeadFRow,s6Step246HeadGRow,s6Step246HeadFvRow,s6Step246HeadGvRow⟩ ⟨148,148,139,139⟩ [s6Step246HeadGFresh,s6Step246HeadFFresh,s6Step246HeadGvFresh,s6Step246HeadFvFresh]=
    some (s6Step246HeadFvAfter,⟨s6Step246HeadFOut,s6Step246HeadGOut,s6Step246HeadFvOut,s6Step246HeadGvOut⟩,(growRow 777 s6Step246HeadGFresh ++ (growRow 795 s6Step246HeadFFresh ++ (growRow 775 s6Step246HeadGvFresh ++ (growRow 776 s6Step246HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step246HeadBank_rows]
  rfl

private theorem s6Step246Front_checked : compileHmrSourceFrontLog s6Step246EntryFBefore s6Step246FrontBank 147 138 ⟨147,146,138,137⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step246FrontLog=some s6Step246FrontPlan := by
  have pairEq : s6Step246FrontPair=⟨s6Step246HeadFRow,s6Step246HeadGRow,s6Step246HeadFvRow,s6Step246HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step246FrontHead=⟨s6Step246ExitFRow,s6Step246ExitGRow,s6Step246ExitFvRow,s6Step246ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step246Add0A=s6Step246FrontHead.f.wires := by decide +kernel
  have gEq : s6Step246Add0B=s6Step246FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step246Add1A=s6Step246FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step246Add1B=s6Step246FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step246EntryFBefore s6Step246FrontBank 147 138 ⟨147,146,138,137⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step246FrontLog s6Step246FrontPlan
  · exact s6Step246Front_entry
  · exact s6Step246EntryBank_checked
  · exact s6Step246Front_sigma
  · rfl
  · exact s6Step246Front_branch
  · rfl
  · simpa only [s6Step246FrontPlan,pairEq] using s6Step246HeadBank_checked
  · simpa only [s6Step246FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step246F4_checked
  · exact s6Step246Counter_checked
  · rfl
  · simpa only [s6Step246FrontPlan,headEq] using s6Step246ExitBank_checked

private theorem s6Step246Complete_explicit_checked : compileHmrEarlyStepLog s6Step246EntryFBefore s6Step246FrontBank 147 138 ⟨147,146,138,137⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step246CompleteLog=some s6Step246CompletePlan := by
  let Q := s6Step246EarlyControlPlan
  have hq := s6Step246EarlyControl_plan_checked
  have fv1 : s6Step246CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step246CompleteOut.fv.payload[2]?.getD s6Step246CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step246CompleteOut.fv.payload[3]?.getD s6Step246CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step246CompleteOut.fv.payload[4]?.getD s6Step246CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step246EntryFBefore s6Step246EarlyControlArena s6Step246FrontBank 147 138 ⟨147,146,138,137⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step246CompleteLog s6Step246FrontPlan Q
    s6Step246Front_checked s6Step246Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step246Complete_owned s6Step246Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step246EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 796 s6Step246CompleteOut.fv.second (s6Step246CompleteOut.fv.payload[2]?.getD s6Step246CompleteOut.fv.sign) (s6Step246CompleteOut.fv.payload[3]?.getD s6Step246CompleteOut.fv.sign) (s6Step246CompleteOut.fv.payload[4]?.getD s6Step246CompleteOut.fv.sign) 839 51 s6Step246EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep246Arena : Arena := s6Step246EntryFBefore
def s6PrivateStep246Bank : WindowBank := s6Step246FrontBank
def s6PrivateStep246Spec : HmrSourceWalkStepLog := ⟨147,138,⟨147,146,138,137⟩,51,.early s6Step246CompleteLog⟩
def s6PrivateStep246Plan : HmrSourceStepPlan := .early s6Step246CompletePlan
theorem s6PrivateStep246_source : s6PrivateStep246Spec=s6ObservedLogs240[6] := rfl
theorem s6PrivateStep246_checked : compileHmrSourceStepLog s6PrivateStep246Arena s6PrivateStep246Bank
    s6PrivateStep246Spec.fgWidth s6PrivateStep246Spec.vWidth s6PrivateStep246Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]
    6 498 246 s6PrivateStep246Spec.need none s6PrivateStep246Spec.log=some s6PrivateStep246Plan := by
  change compileHmrSourceStepLog s6Step246EntryFBefore s6Step246FrontBank 147 138 ⟨147,146,138,137⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 6 498 246 51 none (.early s6Step246CompleteLog)=some (.early s6Step246CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 246<498)]
  rw [s6Step246Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
