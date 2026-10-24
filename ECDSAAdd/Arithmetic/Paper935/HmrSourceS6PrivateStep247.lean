import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep245
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

private def s6Step247CompleteMoves : List (Wire × Wire) := []

private def s6Step247EarlyControlLog : HmrEarlyControlLog := ⟨[822, 818, 839, 830, 786],[841],[868],[805, 810, 809, 817, 812, 915],[]⟩

private def s6Step247FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [839], [], [796]],[[830], [818], [822], [814]],[[], [], [], []]⟩,[890],[864],[786],[841],[868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[786, 841, 868, 805]⟩

private def s6Step247CompleteLog : HmrEarlyStepLog := ⟨s6Step247FrontLog,s6Step247CompleteMoves,s6Step247EarlyControlLog⟩

private def s6Step247ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step247ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814],776⟩

private def s6Step247ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145],777⟩

private def s6Step247ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796],775⟩

private def s6Step247FrontOut : WindowBank := ⟨s6Step247ExitFOut,s6Step247ExitGOut,s6Step247ExitFvOut,s6Step247ExitGvOut⟩

private def s6Step247CompleteOut : WindowBank := s6Step247FrontOut.repacked s6Step247CompleteMoves

private def s6Step247EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step247EarlyControlPositiveArena,[841],s6Step247EarlyControlEqualityArena,[868],⟨⟨890,false⟩,[⟨⟨841,false⟩,868⟩]⟩⟩

private def s6Step247EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,822⟩,⟨⟨772,false⟩,818⟩,⟨⟨771,false⟩,839⟩,⟨⟨770,false⟩,830⟩,⟨⟨769,false⟩,786⟩]⟩

private def s6Step247EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step247EarlyControlZeroArena,s6Step247EarlyControlZeroPlan,s6Step247EarlyControlClassPlan,s6Step247EarlyControlFlagArena,s6Step247EarlyControlFittedArena,s6Step247EarlyControlHistoryArena,s6Step247EarlyControlSigmaArena,s6Step247EarlyControlOutputArena,s6Step247EarlyControlLog⟩

private def s6Step247CounterWork : List Wire := [786, 841, 868, 805]

private theorem s6Step247Counter_bounded : s6Step247CounterWork.toFinset⊆arenaWires := by norm_num [s6Step247CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step247HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247CounterDuring : Arena := ⟨s6Step247HeadFvAfter.live∪s6Step247CounterWork.toFinset,Finset.union_subset s6Step247HeadFvAfter.bounded s6Step247Counter_bounded⟩

private def s6Step247EntryFFresh : List Wire := []

private def s6Step247EntryFvFresh : List Wire := []

private def s6Step247EntryGFresh : List Wire := [839]

private def s6Step247EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247EntryGvFresh : List Wire := [796]

private def s6Step247ExitFExtra : List Wire := [818]

private def s6Step247ExitGExtra : List Wire := [839, 830]

private def s6Step247ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247ExitGvExtra : List Wire := [822]

private def s6Step247Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247Add0Work : List Wire := [868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step247Add0_bounded : s6Step247Add0Work.toFinset⊆arenaWires := by
  have h : s6Step247Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step247Add0During : Arena := ⟨s6Step247Add0Arena.live∪s6Step247Add0Work.toFinset,Finset.union_subset s6Step247Add0Arena.bounded s6Step247Add0_bounded⟩

private def s6Step247Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247Add1Work : List Wire := [868, 805, 810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step247Add1_bounded : s6Step247Add1Work.toFinset⊆arenaWires := by
  have h : s6Step247Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step247Add1During : Arena := ⟨s6Step247Add1Arena.live∪s6Step247Add1Work.toFinset,Finset.union_subset s6Step247Add1Arena.bounded s6Step247Add1_bounded⟩

private def s6Step247F4FlagArena : Arena := ⟨s6Step247HeadFvAfter.live∪{786},Finset.union_subset s6Step247HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step247F4Plan : HmrHybridF4Plan := ⟨s6Step247F4FlagArena,[786],s6Step247Add0Arena,[841],s6Step247Add0During,s6Step247Add0Work,s6Step247Add1During,s6Step247Add1Work⟩

private def s6Step247HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 818],795⟩

private def s6Step247HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814],776⟩

private def s6Step247HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 839, 830],777⟩

private def s6Step247HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 822],775⟩

private def s6Step247FrontHead : WindowBank := ⟨s6Step247HeadFOut,s6Step247HeadGOut,s6Step247HeadFvOut,s6Step247HeadGvOut⟩

private def s6Step247EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step247EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩

private def s6Step247EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 839],777⟩

private def s6Step247EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796],775⟩

private def s6Step247FrontPair : WindowBank := ⟨s6Step247EntryFOut,s6Step247EntryGOut,s6Step247EntryFvOut,s6Step247EntryGvOut⟩

private def s6Step247FrontSigmaArena : Arena := ⟨s6Step247EntryGvAfter.live∪{890},Finset.union_subset s6Step247EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step247HeadFFresh : List Wire := [818]

private def s6Step247HeadFvFresh : List Wire := [814]

private def s6Step247HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247HeadGFresh : List Wire := [830]

private def s6Step247HeadGvFresh : List Wire := [822]

private def s6Step247FrontPlan : HmrSourceFront := ⟨s6Step247EntryGvAfter,s6Step247FrontPair,(growRow 795 s6Step247EntryFFresh ++ (growRow 777 s6Step247EntryGFresh ++ (growRow 776 s6Step247EntryFvFresh ++ (growRow 775 s6Step247EntryGvFresh ++ [])))),s6Step247FrontSigmaArena,[890],s6Step247HeadGBefore,[864],
  s6Step247HeadFvAfter,s6Step247FrontHead,(growRow 777 s6Step247HeadGFresh ++ (growRow 795 s6Step247HeadFFresh ++ (growRow 775 s6Step247HeadGvFresh ++ (growRow 776 s6Step247HeadFvFresh ++ [])))),s6Step247F4Plan,s6Step247CounterDuring,s6Step247CounterWork,s6Step247ExitGvAfter,s6Step247FrontOut,(shrinkRow 777 s6Step247ExitGExtra ++ (shrinkRow 795 s6Step247ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step247ExitGvExtra ++ []))))⟩

private def s6Step247CompletePlan : HmrEarlyStepPlan := ⟨s6Step247FrontPlan,s6Step247EarlyControlArena,s6Step247EarlyControlPlan,s6Step247CompleteMoves⟩

private theorem s6Step247Complete_apart : List.Disjoint (s6Step247CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [890, 864, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  have nd : ((s6Step247CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[890, 864, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step247Complete_owned : (s6Step247CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step247EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step247EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247Complete_repack : s6Step247ExitGvAfter.checkRepack s6Step247CompleteMoves=some s6Step247EarlyControlArena := by rfl

private theorem s6Step247EarlyControl_branchOwned : ([864] : List Wire).toFinset⊆s6Step247EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step247EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247EarlyControl_branch : compileHmrBranchRetirement s6Step247EarlyControlSigmaArena 864=some s6Step247EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step247EarlyControl_branchOwned
  · ext q
    simp [s6Step247EarlyControlOutputArena,s6Step247EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step247EarlyControl_classEqualityBorrow : s6Step247EarlyControlPositiveArena.checkBorrow (([890, 841] : List Wire).length-1) s6Step247EarlyControlLog.classWork=some s6Step247EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step247EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step247EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step247EarlyControlEqualityArena,s6Step247EarlyControlPositiveArena,s6Step247EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step247EarlyControl_classEqualityOwned : ([890, 841] : List Wire).toFinset⊆s6Step247EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step247EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247EarlyControl_classEquality : compileHmrEqualityLog s6Step247EarlyControlPositiveArena [890, 841] 0 s6Step247EarlyControlLog.classWork=some (s6Step247EarlyControlEqualityArena,s6Step247EarlyControlLog.classWork,s6Step247EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step247EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step247EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step247EarlyControl_classOwned : ([769, 786, 890] : List Wire).toFinset⊆s6Step247EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step247EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247EarlyControl_positiveBorrow : s6Step247EarlyControlZeroArena.checkBorrow (1) s6Step247EarlyControlLog.positiveWork=some s6Step247EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step247EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step247EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step247EarlyControlPositiveArena,s6Step247EarlyControlZeroArena,s6Step247EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step247EarlyControl_class : compileHmrSourceClassLog s6Step247EarlyControlZeroArena false 769 s6Step247EarlyControlZeroPlan.top 0 890 s6Step247EarlyControlLog.positiveWork s6Step247EarlyControlLog.classWork=some s6Step247EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step247EarlyControlClassPlan s6Step247EarlyControlZeroArena false 769 s6Step247EarlyControlZeroPlan.top 0 890
  constructor
  · decide +kernel
  · exact s6Step247EarlyControl_classOwned
  · exact s6Step247EarlyControl_positiveBorrow
  · exact s6Step247EarlyControl_classEquality

private theorem s6Step247EarlyControl_entryRecordOwned : ([864, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step247EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step247EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247EarlyControl_entrySigmaOwned : ([890, 254] : List Wire).toFinset⊆s6Step247EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step247EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247EarlyControl_fitBorrow : s6Step247EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step247EarlyControlLog.recordFresh=some s6Step247EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step247EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step247EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step247EarlyControlFittedArena,s6Step247EarlyControlFlagArena,s6Step247EarlyControlLog,arenaWires]

private theorem s6Step247EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step247EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step247EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247EarlyControl_fit : compileHmrRecordGrowLog s6Step247EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step247EarlyControlLog.recordFresh=some s6Step247EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step247EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step247EarlyControl_fitBorrow

private theorem s6Step247EarlyControl_flagsBorrow : s6Step247EarlyControlEqualityArena.checkBorrow (6) s6Step247EarlyControlLog.flagWork=some s6Step247EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step247EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step247EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step247EarlyControlFlagArena,s6Step247EarlyControlEqualityArena,s6Step247EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step247EarlyControl_flagsOwned : ([868, 253, 252, 251] : List Wire).toFinset⊆s6Step247EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step247EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247EarlyControl_flags : compileHmrFlagsLog s6Step247EarlyControlClassPlan.equalityArena s6Step247EarlyControlClassPlan.equality.top 253 252 251 s6Step247EarlyControlLog.flagWork=some s6Step247EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step247EarlyControl_flagsOwned⟩
  · exact s6Step247EarlyControl_flagsBorrow

private theorem s6Step247EarlyControl_historyBorrow : s6Step247EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step247EarlyControlLog.recordFresh=some s6Step247EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step247EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step247EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step247EarlyControlHistoryArena,s6Step247EarlyControlArena,s6Step247EarlyControlLog,arenaWires]

private theorem s6Step247EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step247EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step247EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247EarlyControl_history : compileHmrRecordGrowLog s6Step247EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step247EarlyControlLog.recordFresh=some s6Step247EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step247EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step247EarlyControl_historyBorrow

private theorem s6Step247EarlyControl_sigmaOwned : ([254, 890] : List Wire).toFinset⊆s6Step247EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step247EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247EarlyControl_sigmaReleaseOwned : ([890] : List Wire).toFinset⊆s6Step247EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step247EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247EarlyControl_sigmaRelease : s6Step247EarlyControlHistoryArena.release {890} (fun _ => false)=some s6Step247EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step247EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step247EarlyControlSigmaArena,s6Step247EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step247EarlyControl_sigma : compileHmrSigmaDropLog s6Step247EarlyControlHistoryArena false 0 0 254 890 []=some s6Step247EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step247EarlyControl_sigmaOwned⟩
  · exact s6Step247EarlyControl_sigmaRelease

private theorem s6Step247EarlyControl_zeroBorrow : s6Step247EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step247EarlyControlLog.zeroWork=some s6Step247EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step247EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step247EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step247EarlyControlZeroArena,s6Step247EarlyControlArena,s6Step247EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step247EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step247EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step247EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247EarlyControl_zero : compileHmrEqualityLog s6Step247EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step247EarlyControlLog.zeroWork=some (s6Step247EarlyControlZeroArena,s6Step247EarlyControlLog.zeroWork,s6Step247EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step247EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step247EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step247EarlyControl_logged : s6Step247EarlyControlPlan.Logged s6Step247EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 890 254 253 252 251 864 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step247EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step247EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step247EarlyControl_zero
  · exact s6Step247EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step247EarlyControl_flags
  · exact s6Step247EarlyControl_fit
  · exact s6Step247EarlyControl_history
  · exact s6Step247EarlyControl_sigma
  · exact s6Step247EarlyControl_branch

private theorem s6Step247EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step247EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 890 254 253 252 251 864 51 s6Step247EarlyControlLog=some s6Step247EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step247EarlyControlPlan s6Step247EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 890 254 253 252 251 864 51 s6Step247EarlyControl_logged

private def s6Step247EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step247EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩

private def s6Step247EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145],777⟩

private def s6Step247EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888],775⟩

private def s6Step247FrontBank : WindowBank := ⟨s6Step247EntryFRow,s6Step247EntryGRow,s6Step247EntryFvRow,s6Step247EntryGvRow⟩

private def s6Step247Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 818, 795]

private def s6Step247Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 839, 830, 777]

private def s6Step247Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 776]

private def s6Step247Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 822, 775]

private theorem s6Step247Counter_apart : Disjoint s6Step247HeadFvAfter.live s6Step247CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step247HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247Counter_borrowed : s6Step247HeadFvAfter.checkBorrow 4 s6Step247CounterWork=some s6Step247CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step247HeadFvAfter s6Step247CounterDuring s6Step247CounterWork.toFinset s6Step247Counter_bounded s6Step247Counter_apart rfl

private theorem s6Step247Counter_owned : (890::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step247HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step247HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247Counter_checked : compileHmrCounterStepLog s6Step247HeadFvAfter true 890 [774, 773, 772, 771, 770, 769] s6Step247CounterWork=some s6Step247CounterDuring := by
  have owned : ∀q∈890::[774, 773, 772, 771, 770, 769],q∈s6Step247HeadFvAfter.live := fun q hq => s6Step247Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step247Counter_borrowed

private def s6Step247EntryFAfter : Arena := s6Step247EntryFBefore

private theorem s6Step247EntryBank_incomingDistinct : ([s6Step247EntryFRow,s6Step247EntryGRow,s6Step247EntryFvRow,s6Step247EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247EntryF_Incoming : rowsOwned s6Step247EntryFBefore [s6Step247EntryFRow,s6Step247EntryGRow,s6Step247EntryFvRow,s6Step247EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step247EntryFRow,s6Step247EntryGRow,s6Step247EntryFvRow,s6Step247EntryGvRow] 0 s6Step247EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step247EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step247EntryBank_outgoingOwned : rowsOwned s6Step247EntryGvAfter [s6Step247EntryFOut,s6Step247EntryGOut,s6Step247EntryFvOut,s6Step247EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step247EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step247EntryF_Outgoing : rowsOwned s6Step247EntryGvAfter [s6Step247EntryFOut,s6Step247EntryGOut,s6Step247EntryFvOut,s6Step247EntryGvOut] :=
  hmrRows_owned_drop s6Step247EntryGvAfter [s6Step247EntryFOut,s6Step247EntryGOut,s6Step247EntryFvOut,s6Step247EntryGvOut] 0 s6Step247EntryBank_outgoingOwned

private theorem s6Step247EntryF_distinct : (s6Step247EntryFRow.sign::s6Step247EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247EntryF_owned : (s6Step247EntryFRow.sign::s6Step247EntryFRow.payload).toFinset⊆s6Step247EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step247EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247EntryF_reserved : s6Step247EntryFBefore.reserve s6Step247EntryFFresh.toFinset=some s6Step247EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step247EntryFFresh,arenaWires]
  · norm_num [s6Step247EntryFBefore,s6Step247EntryFFresh,arenaWires]
  · simp only [s6Step247EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step247EntryF_checked : planRowResizeLog s6Step247EntryFBefore s6Step247EntryFRow 147 s6Step247EntryFFresh=
    some (s6Step247EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩,growRow 795 s6Step247EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step247EntryFBefore s6Step247EntryFAfter s6Step247EntryFRow 147 s6Step247EntryFFresh
    s6Step247EntryF_distinct s6Step247EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step247EntryF_reserved
  have rowEq : WindowRow.mk (s6Step247EntryFRow.payload++s6Step247EntryFFresh) s6Step247EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step247EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247EntryFvAfter : Arena := s6Step247EntryGAfter

private def s6Step247EntryFvBefore : Arena := s6Step247EntryGAfter

private theorem s6Step247EntryFv_Incoming : rowsOwned s6Step247EntryFvBefore [s6Step247EntryFvRow,s6Step247EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step247EntryFRow,s6Step247EntryGRow,s6Step247EntryFvRow,s6Step247EntryGvRow] 2 s6Step247EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step247EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step247EntryFv_Outgoing : rowsOwned s6Step247EntryGvAfter [s6Step247EntryFvOut,s6Step247EntryGvOut] :=
  hmrRows_owned_drop s6Step247EntryGvAfter [s6Step247EntryFOut,s6Step247EntryGOut,s6Step247EntryFvOut,s6Step247EntryGvOut] 2 s6Step247EntryBank_outgoingOwned

private theorem s6Step247EntryFv_distinct : (s6Step247EntryFvRow.sign::s6Step247EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247EntryFv_owned : (s6Step247EntryFvRow.sign::s6Step247EntryFvRow.payload).toFinset⊆s6Step247EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step247EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247EntryFv_reserved : s6Step247EntryFvBefore.reserve s6Step247EntryFvFresh.toFinset=some s6Step247EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step247EntryFvFresh,arenaWires]
  · norm_num [s6Step247EntryFvBefore,s6Step247EntryGAfter,s6Step247EntryFvFresh,arenaWires]
  · simp only [s6Step247EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step247EntryFv_checked : planRowResizeLog s6Step247EntryFvBefore s6Step247EntryFvRow 138 s6Step247EntryFvFresh=
    some (s6Step247EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩,growRow 776 s6Step247EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step247EntryFvBefore s6Step247EntryFvAfter s6Step247EntryFvRow 138 s6Step247EntryFvFresh
    s6Step247EntryFv_distinct s6Step247EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step247EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step247EntryFvRow.payload++s6Step247EntryFvFresh) s6Step247EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step247EntryGBefore : Arena := s6Step247EntryFBefore

private theorem s6Step247EntryG_Incoming : rowsOwned s6Step247EntryGBefore [s6Step247EntryGRow,s6Step247EntryFvRow,s6Step247EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step247EntryFRow,s6Step247EntryGRow,s6Step247EntryFvRow,s6Step247EntryGvRow] 1 s6Step247EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step247EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step247EntryG_Outgoing : rowsOwned s6Step247EntryGvAfter [s6Step247EntryGOut,s6Step247EntryFvOut,s6Step247EntryGvOut] :=
  hmrRows_owned_drop s6Step247EntryGvAfter [s6Step247EntryFOut,s6Step247EntryGOut,s6Step247EntryFvOut,s6Step247EntryGvOut] 1 s6Step247EntryBank_outgoingOwned

private theorem s6Step247EntryG_distinct : (s6Step247EntryGRow.sign::s6Step247EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247EntryG_owned : (s6Step247EntryGRow.sign::s6Step247EntryGRow.payload).toFinset⊆s6Step247EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step247EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247EntryG_reserved : s6Step247EntryGBefore.reserve s6Step247EntryGFresh.toFinset=some s6Step247EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step247EntryGFresh,arenaWires]
  · norm_num [s6Step247EntryGBefore,s6Step247EntryFBefore,s6Step247EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step247EntryGAfter,s6Step247EntryGBefore,s6Step247EntryFBefore,s6Step247EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step247EntryG_checked : planRowResizeLog s6Step247EntryGBefore s6Step247EntryGRow 147 s6Step247EntryGFresh=
    some (s6Step247EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 839],777⟩,growRow 777 s6Step247EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step247EntryGBefore s6Step247EntryGAfter s6Step247EntryGRow 147 s6Step247EntryGFresh
    s6Step247EntryG_distinct s6Step247EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step247EntryG_reserved
  have rowEq : WindowRow.mk (s6Step247EntryGRow.payload++s6Step247EntryGFresh) s6Step247EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 839],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step247EntryGvBefore : Arena := s6Step247EntryGAfter

private theorem s6Step247EntryGv_Incoming : rowsOwned s6Step247EntryGvBefore [s6Step247EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step247EntryFRow,s6Step247EntryGRow,s6Step247EntryFvRow,s6Step247EntryGvRow] 3 s6Step247EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step247EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step247EntryGv_Outgoing : rowsOwned s6Step247EntryGvAfter [s6Step247EntryGvOut] :=
  hmrRows_owned_drop s6Step247EntryGvAfter [s6Step247EntryFOut,s6Step247EntryGOut,s6Step247EntryFvOut,s6Step247EntryGvOut] 3 s6Step247EntryBank_outgoingOwned

private theorem s6Step247EntryGv_distinct : (s6Step247EntryGvRow.sign::s6Step247EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247EntryGv_owned : (s6Step247EntryGvRow.sign::s6Step247EntryGvRow.payload).toFinset⊆s6Step247EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step247EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247EntryGv_reserved : s6Step247EntryGvBefore.reserve s6Step247EntryGvFresh.toFinset=some s6Step247EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step247EntryGvFresh,arenaWires]
  · norm_num [s6Step247EntryGvBefore,s6Step247EntryGAfter,s6Step247EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step247EntryGvAfter,s6Step247EntryGvBefore,s6Step247EntryGAfter,s6Step247EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step247EntryGv_checked : planRowResizeLog s6Step247EntryGvBefore s6Step247EntryGvRow 138 s6Step247EntryGvFresh=
    some (s6Step247EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796],775⟩,growRow 775 s6Step247EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step247EntryGvBefore s6Step247EntryGvAfter s6Step247EntryGvRow 138 s6Step247EntryGvFresh
    s6Step247EntryGv_distinct s6Step247EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step247EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step247EntryGvRow.payload++s6Step247EntryGvFresh) s6Step247EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step247EntryBank_rows : planWindowRowsLog s6Step247EntryFBefore [(s6Step247EntryFRow,147),(s6Step247EntryGRow,147),(s6Step247EntryFvRow,138),(s6Step247EntryGvRow,138)] [s6Step247EntryFFresh,s6Step247EntryGFresh,s6Step247EntryFvFresh,s6Step247EntryGvFresh]=
    some (s6Step247EntryGvAfter,[s6Step247EntryFOut,s6Step247EntryGOut,s6Step247EntryFvOut,s6Step247EntryGvOut],(growRow 795 s6Step247EntryFFresh ++ (growRow 777 s6Step247EntryGFresh ++ (growRow 776 s6Step247EntryFvFresh ++ (growRow 775 s6Step247EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step247EntryGvAfter [] []=some (s6Step247EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step247EntryGvBefore s6Step247EntryGvAfter s6Step247EntryGvAfter
    s6Step247EntryGvRow s6Step247EntryGvOut 138 s6Step247EntryGvFresh [] [] []
    (growRow 775 s6Step247EntryGvFresh) ([]) s6Step247EntryGv_Incoming s6Step247EntryGv_checked h4 s6Step247EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step247EntryFvBefore s6Step247EntryFvAfter s6Step247EntryGvAfter
    s6Step247EntryFvRow s6Step247EntryFvOut 138 s6Step247EntryFvFresh [(s6Step247EntryGvRow,138)] [s6Step247EntryGvFresh] [s6Step247EntryGvOut]
    (growRow 776 s6Step247EntryFvFresh) ((growRow 775 s6Step247EntryGvFresh ++ [])) s6Step247EntryFv_Incoming s6Step247EntryFv_checked h3 s6Step247EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step247EntryGBefore s6Step247EntryGAfter s6Step247EntryGvAfter
    s6Step247EntryGRow s6Step247EntryGOut 147 s6Step247EntryGFresh [(s6Step247EntryFvRow,138),(s6Step247EntryGvRow,138)] [s6Step247EntryFvFresh,s6Step247EntryGvFresh] [s6Step247EntryFvOut,s6Step247EntryGvOut]
    (growRow 777 s6Step247EntryGFresh) ((growRow 776 s6Step247EntryFvFresh ++ (growRow 775 s6Step247EntryGvFresh ++ []))) s6Step247EntryG_Incoming s6Step247EntryG_checked h2 s6Step247EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step247EntryFBefore s6Step247EntryFAfter s6Step247EntryGvAfter
    s6Step247EntryFRow s6Step247EntryFOut 147 s6Step247EntryFFresh [(s6Step247EntryGRow,147),(s6Step247EntryFvRow,138),(s6Step247EntryGvRow,138)] [s6Step247EntryGFresh,s6Step247EntryFvFresh,s6Step247EntryGvFresh] [s6Step247EntryGOut,s6Step247EntryFvOut,s6Step247EntryGvOut]
    (growRow 795 s6Step247EntryFFresh) ((growRow 777 s6Step247EntryGFresh ++ (growRow 776 s6Step247EntryFvFresh ++ (growRow 775 s6Step247EntryGvFresh ++ [])))) s6Step247EntryF_Incoming s6Step247EntryF_checked h1 s6Step247EntryF_Outgoing
  exact h0

private theorem s6Step247EntryBank_checked : compileHmrBankResizeLog .entry s6Step247EntryFBefore ⟨s6Step247EntryFRow,s6Step247EntryGRow,s6Step247EntryFvRow,s6Step247EntryGvRow⟩ ⟨147,147,138,138⟩ [s6Step247EntryFFresh,s6Step247EntryGFresh,s6Step247EntryFvFresh,s6Step247EntryGvFresh]=
    some (s6Step247EntryGvAfter,⟨s6Step247EntryFOut,s6Step247EntryGOut,s6Step247EntryFvOut,s6Step247EntryGvOut⟩,(growRow 795 s6Step247EntryFFresh ++ (growRow 777 s6Step247EntryGFresh ++ (growRow 776 s6Step247EntryFvFresh ++ (growRow 775 s6Step247EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step247EntryBank_rows]
  rfl

private def s6Step247ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247ExitFBefore : Arena := s6Step247ExitGAfter

private def s6Step247ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 818],795⟩

private def s6Step247ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814],776⟩

private def s6Step247ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 839, 830],777⟩

private def s6Step247ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 822],775⟩

private theorem s6Step247ExitBank_incomingDistinct : ([s6Step247ExitGRow,s6Step247ExitFRow,s6Step247ExitFvRow,s6Step247ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247ExitF_Incoming : rowsOwned s6Step247ExitFBefore [s6Step247ExitFRow,s6Step247ExitFvRow,s6Step247ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step247ExitGRow,s6Step247ExitFRow,s6Step247ExitFvRow,s6Step247ExitGvRow] 1 s6Step247ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step247ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step247ExitBank_outgoingOwned : rowsOwned s6Step247ExitGvAfter [s6Step247ExitGOut,s6Step247ExitFOut,s6Step247ExitFvOut,s6Step247ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step247ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step247ExitF_Outgoing : rowsOwned s6Step247ExitGvAfter [s6Step247ExitFOut,s6Step247ExitFvOut,s6Step247ExitGvOut] :=
  hmrRows_owned_drop s6Step247ExitGvAfter [s6Step247ExitGOut,s6Step247ExitFOut,s6Step247ExitFvOut,s6Step247ExitGvOut] 1 s6Step247ExitBank_outgoingOwned

private theorem s6Step247ExitF_distinct : (s6Step247ExitFRow.sign::s6Step247ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247ExitF_owned : (s6Step247ExitFRow.sign::s6Step247ExitFRow.payload).toFinset⊆s6Step247ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step247ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247ExitF_retired : s6Step247ExitFBefore.retireSet s6Step247ExitFExtra.toFinset=s6Step247ExitFAfter := by
  unfold Arena.retireSet s6Step247ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step247ExitFBefore,s6Step247ExitGAfter,s6Step247ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step247ExitF_checked : planRowResizeLog s6Step247ExitFBefore s6Step247ExitFRow 147 []=
    some (s6Step247ExitFAfter,s6Step247ExitFOut,shrinkRow 795 s6Step247ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step247ExitFBefore s6Step247ExitFRow 147 s6Step247ExitF_distinct s6Step247ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step247ExitFRow.payload.take 147) s6Step247ExitFRow.sign=s6Step247ExitFOut := by decide +kernel
  have hi : s6Step247ExitFRow.payload.drop 147=s6Step247ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step247ExitF_retired] at result
  exact result

private def s6Step247ExitFvAfter : Arena := s6Step247ExitFAfter

private def s6Step247ExitFvBefore : Arena := s6Step247ExitFAfter

private theorem s6Step247ExitFv_Incoming : rowsOwned s6Step247ExitFvBefore [s6Step247ExitFvRow,s6Step247ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step247ExitGRow,s6Step247ExitFRow,s6Step247ExitFvRow,s6Step247ExitGvRow] 2 s6Step247ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step247ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step247ExitFv_Outgoing : rowsOwned s6Step247ExitGvAfter [s6Step247ExitFvOut,s6Step247ExitGvOut] :=
  hmrRows_owned_drop s6Step247ExitGvAfter [s6Step247ExitGOut,s6Step247ExitFOut,s6Step247ExitFvOut,s6Step247ExitGvOut] 2 s6Step247ExitBank_outgoingOwned

private theorem s6Step247ExitFv_distinct : (s6Step247ExitFvRow.sign::s6Step247ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247ExitFv_owned : (s6Step247ExitFvRow.sign::s6Step247ExitFvRow.payload).toFinset⊆s6Step247ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step247ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247ExitFv_reserved : s6Step247ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step247ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step247ExitFv_checked : planRowResizeLog s6Step247ExitFvBefore s6Step247ExitFvRow 139 []=
    some (s6Step247ExitFvAfter,s6Step247ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step247ExitFvBefore s6Step247ExitFvAfter s6Step247ExitFvRow 139 []
    s6Step247ExitFv_distinct s6Step247ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step247ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step247ExitFvRow.payload++[]) s6Step247ExitFvRow.sign=s6Step247ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step247ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step247ExitG_Incoming : rowsOwned s6Step247ExitGBefore [s6Step247ExitGRow,s6Step247ExitFRow,s6Step247ExitFvRow,s6Step247ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step247ExitGRow,s6Step247ExitFRow,s6Step247ExitFvRow,s6Step247ExitGvRow] 0 s6Step247ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step247ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step247ExitG_Outgoing : rowsOwned s6Step247ExitGvAfter [s6Step247ExitGOut,s6Step247ExitFOut,s6Step247ExitFvOut,s6Step247ExitGvOut] :=
  hmrRows_owned_drop s6Step247ExitGvAfter [s6Step247ExitGOut,s6Step247ExitFOut,s6Step247ExitFvOut,s6Step247ExitGvOut] 0 s6Step247ExitBank_outgoingOwned

private theorem s6Step247ExitG_distinct : (s6Step247ExitGRow.sign::s6Step247ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247ExitG_owned : (s6Step247ExitGRow.sign::s6Step247ExitGRow.payload).toFinset⊆s6Step247ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step247ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247ExitG_retired : s6Step247ExitGBefore.retireSet s6Step247ExitGExtra.toFinset=s6Step247ExitGAfter := by
  unfold Arena.retireSet s6Step247ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step247ExitGBefore,s6Step247ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step247ExitG_checked : planRowResizeLog s6Step247ExitGBefore s6Step247ExitGRow 146 []=
    some (s6Step247ExitGAfter,s6Step247ExitGOut,shrinkRow 777 s6Step247ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step247ExitGBefore s6Step247ExitGRow 146 s6Step247ExitG_distinct s6Step247ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step247ExitGRow.payload.take 146) s6Step247ExitGRow.sign=s6Step247ExitGOut := by decide +kernel
  have hi : s6Step247ExitGRow.payload.drop 146=s6Step247ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step247ExitG_retired] at result
  exact result

private def s6Step247ExitGvBefore : Arena := s6Step247ExitFAfter

private theorem s6Step247ExitGv_Incoming : rowsOwned s6Step247ExitGvBefore [s6Step247ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step247ExitGRow,s6Step247ExitFRow,s6Step247ExitFvRow,s6Step247ExitGvRow] 3 s6Step247ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step247ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step247ExitGv_Outgoing : rowsOwned s6Step247ExitGvAfter [s6Step247ExitGvOut] :=
  hmrRows_owned_drop s6Step247ExitGvAfter [s6Step247ExitGOut,s6Step247ExitFOut,s6Step247ExitFvOut,s6Step247ExitGvOut] 3 s6Step247ExitBank_outgoingOwned

private theorem s6Step247ExitGv_distinct : (s6Step247ExitGvRow.sign::s6Step247ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247ExitGv_owned : (s6Step247ExitGvRow.sign::s6Step247ExitGvRow.payload).toFinset⊆s6Step247ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step247ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247ExitGv_retired : s6Step247ExitGvBefore.retireSet s6Step247ExitGvExtra.toFinset=s6Step247ExitGvAfter := by
  unfold Arena.retireSet s6Step247ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step247ExitGvBefore,s6Step247ExitFAfter,s6Step247ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step247ExitGv_checked : planRowResizeLog s6Step247ExitGvBefore s6Step247ExitGvRow 138 []=
    some (s6Step247ExitGvAfter,s6Step247ExitGvOut,shrinkRow 775 s6Step247ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step247ExitGvBefore s6Step247ExitGvRow 138 s6Step247ExitGv_distinct s6Step247ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step247ExitGvRow.payload.take 138) s6Step247ExitGvRow.sign=s6Step247ExitGvOut := by decide +kernel
  have hi : s6Step247ExitGvRow.payload.drop 138=s6Step247ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step247ExitGv_retired] at result
  exact result

private theorem s6Step247ExitBank_rows : planWindowRowsLog s6Step247ExitGBefore [(s6Step247ExitGRow,146),(s6Step247ExitFRow,147),(s6Step247ExitFvRow,139),(s6Step247ExitGvRow,138)] [[],[],[],[]]=
    some (s6Step247ExitGvAfter,[s6Step247ExitGOut,s6Step247ExitFOut,s6Step247ExitFvOut,s6Step247ExitGvOut],(shrinkRow 777 s6Step247ExitGExtra ++ (shrinkRow 795 s6Step247ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step247ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step247ExitGvAfter [] []=some (s6Step247ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step247ExitGvBefore s6Step247ExitGvAfter s6Step247ExitGvAfter
    s6Step247ExitGvRow s6Step247ExitGvOut 138 [] [] [] []
    (shrinkRow 775 s6Step247ExitGvExtra) ([]) s6Step247ExitGv_Incoming s6Step247ExitGv_checked h4 s6Step247ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step247ExitFvBefore s6Step247ExitFvAfter s6Step247ExitGvAfter
    s6Step247ExitFvRow s6Step247ExitFvOut 139 [] [(s6Step247ExitGvRow,138)] [[]] [s6Step247ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step247ExitGvExtra ++ [])) s6Step247ExitFv_Incoming s6Step247ExitFv_checked h3 s6Step247ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step247ExitFBefore s6Step247ExitFAfter s6Step247ExitGvAfter
    s6Step247ExitFRow s6Step247ExitFOut 147 [] [(s6Step247ExitFvRow,139),(s6Step247ExitGvRow,138)] [[],[]] [s6Step247ExitFvOut,s6Step247ExitGvOut]
    (shrinkRow 795 s6Step247ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step247ExitGvExtra ++ []))) s6Step247ExitF_Incoming s6Step247ExitF_checked h2 s6Step247ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step247ExitGBefore s6Step247ExitGAfter s6Step247ExitGvAfter
    s6Step247ExitGRow s6Step247ExitGOut 146 [] [(s6Step247ExitFRow,147),(s6Step247ExitFvRow,139),(s6Step247ExitGvRow,138)] [[],[],[]] [s6Step247ExitFOut,s6Step247ExitFvOut,s6Step247ExitGvOut]
    (shrinkRow 777 s6Step247ExitGExtra) ((shrinkRow 795 s6Step247ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step247ExitGvExtra ++ [])))) s6Step247ExitG_Incoming s6Step247ExitG_checked h1 s6Step247ExitG_Outgoing
  exact h0

private theorem s6Step247ExitBank_checked : compileHmrBankResizeLog .exit s6Step247ExitGBefore ⟨s6Step247ExitFRow,s6Step247ExitGRow,s6Step247ExitFvRow,s6Step247ExitGvRow⟩ ⟨147,146,139,138⟩ [[],[],[],[]]=
    some (s6Step247ExitGvAfter,⟨s6Step247ExitFOut,s6Step247ExitGOut,s6Step247ExitFvOut,s6Step247ExitGvOut⟩,(shrinkRow 777 s6Step247ExitGExtra ++ (shrinkRow 795 s6Step247ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step247ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step247ExitBank_rows]
  rfl

private theorem s6Step247Add0_apart : Disjoint s6Step247Add0Arena.live s6Step247Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step247Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247Add0_card : s6Step247Add0Arena.live.card=895 := by
  decide +kernel

private theorem s6Step247Add0_borrowed : s6Step247Add0Arena.checkBorrow (hmrHybridCount s6Step247Add0Arena s6Step247Add0B.length) s6Step247Add0Work=some s6Step247Add0During := by
  have len : s6Step247Add0Work.length=hmrHybridCount s6Step247Add0Arena s6Step247Add0B.length := by
    rw [hmrHybridCount,s6Step247Add0_card]
    decide +kernel
  have nd : s6Step247Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step247Add0Arena s6Step247Add0During s6Step247Add0Work.toFinset s6Step247Add0_bounded s6Step247Add0_apart rfl

private theorem s6Step247Add0_distinct : (786::864::841::(s6Step247Add0A++s6Step247Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247Add0_owned : (786::864::841::(s6Step247Add0A++s6Step247Add0B)).toFinset⊆s6Step247Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step247Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247Add0_checked : compileHmrHybridCinLog s6Step247Add0Arena 864 786 841 s6Step247Add0A s6Step247Add0B s6Step247Add0Work=some s6Step247Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step247Add0Arena s6Step247Add0During 864 786 841 s6Step247Add0A s6Step247Add0B s6Step247Add0Work
    (by decide +kernel) (by decide +kernel) s6Step247Add0_distinct
    (fun q hq => s6Step247Add0_owned (List.mem_toFinset.mpr hq)) s6Step247Add0_borrowed

private theorem s6Step247Add1_apart : Disjoint s6Step247Add1Arena.live s6Step247Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step247Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247Add1_card : s6Step247Add1Arena.live.card=895 := by
  decide +kernel

private theorem s6Step247Add1_borrowed : s6Step247Add1Arena.checkBorrow (hmrHybridCount s6Step247Add1Arena s6Step247Add1B.length) s6Step247Add1Work=some s6Step247Add1During := by
  have len : s6Step247Add1Work.length=hmrHybridCount s6Step247Add1Arena s6Step247Add1B.length := by
    rw [hmrHybridCount,s6Step247Add1_card]
    decide +kernel
  have nd : s6Step247Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step247Add1Arena s6Step247Add1During s6Step247Add1Work.toFinset s6Step247Add1_bounded s6Step247Add1_apart rfl

private theorem s6Step247Add1_distinct : (786::864::841::(s6Step247Add1A++s6Step247Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247Add1_owned : (786::864::841::(s6Step247Add1A++s6Step247Add1B)).toFinset⊆s6Step247Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step247Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247Add1_checked : compileHmrHybridCinLog s6Step247Add1Arena 864 786 841 s6Step247Add1A s6Step247Add1B s6Step247Add1Work=some s6Step247Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step247Add1Arena s6Step247Add1During 864 786 841 s6Step247Add1A s6Step247Add1B s6Step247Add1Work
    (by decide +kernel) (by decide +kernel) s6Step247Add1_distinct
    (fun q hq => s6Step247Add1_owned (List.mem_toFinset.mpr hq)) s6Step247Add1_borrowed

private theorem s6Step247F4_apart : Disjoint (s6Step247Add0A++s6Step247Add0B).toFinset (s6Step247Add1A++s6Step247Add1B).toFinset := by
  have nd : ((s6Step247Add0A++s6Step247Add0B)++(s6Step247Add1A++s6Step247Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step247F4_carry : s6Step247F4FlagArena.checkBorrow 1 [841]=some s6Step247Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step247F4FlagArena,s6Step247HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step247F4FlagArena,s6Step247HeadFvAfter,s6Step247Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step247F4_distinct : (890::864::786::841::((s6Step247Add0A++s6Step247Add1A)++(s6Step247Add0B++s6Step247Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247F4_flag : s6Step247HeadFvAfter.checkBorrow 1 [786]=some s6Step247F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step247HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step247F4_owned : (890::864::((s6Step247Add0A++s6Step247Add1A)++(s6Step247Add0B++s6Step247Add1B))).toFinset⊆s6Step247HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step247HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247F4_checked : compileHmrHybridF4Log s6Step247HeadFvAfter 890 864 s6Step247Add0A s6Step247Add0B s6Step247Add1A s6Step247Add1B [786] [841] s6Step247Add0Work s6Step247Add1Work=some s6Step247F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step247HeadFvAfter s6Step247F4FlagArena s6Step247Add0Arena s6Step247Add0During s6Step247Add1During 890 864
    s6Step247Add0A s6Step247Add0B s6Step247Add1A s6Step247Add1B [786] [841] s6Step247Add0Work s6Step247Add1Work
    (fun q hq => s6Step247F4_owned (List.mem_toFinset.mpr hq)) s6Step247F4_flag s6Step247F4_carry
    s6Step247F4_distinct s6Step247F4_apart s6Step247Add0_checked s6Step247Add1_checked

private theorem s6Step247Front_branch : s6Step247FrontSigmaArena.checkBorrow 1 [864]=some s6Step247HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step247FrontSigmaArena,s6Step247EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step247FrontSigmaArena,s6Step247EntryGvAfter,s6Step247HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step247Front_entry : HmrFrontEntryValid s6Step247EntryFBefore s6Step247FrontBank 147 138 ⟨147,146,139,138⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step247FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step247EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step247EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step247FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step247Front_sigma : s6Step247EntryGvAfter.checkBorrow 1 [890]=some s6Step247FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step247EntryGvAfter,arenaWires]
  · rfl

private def s6Step247HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247HeadFBefore : Arena := s6Step247HeadGAfter

private def s6Step247HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step247HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898],776⟩

private def s6Step247HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 839],777⟩

private def s6Step247HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796],775⟩

private theorem s6Step247HeadBank_incomingDistinct : ([s6Step247HeadGRow,s6Step247HeadFRow,s6Step247HeadGvRow,s6Step247HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247HeadF_Incoming : rowsOwned s6Step247HeadFBefore [s6Step247HeadFRow,s6Step247HeadGvRow,s6Step247HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step247HeadGRow,s6Step247HeadFRow,s6Step247HeadGvRow,s6Step247HeadFvRow] 1 s6Step247HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step247HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step247HeadBank_outgoingOwned : rowsOwned s6Step247HeadFvAfter [s6Step247HeadGOut,s6Step247HeadFOut,s6Step247HeadGvOut,s6Step247HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step247HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step247HeadF_Outgoing : rowsOwned s6Step247HeadFvAfter [s6Step247HeadFOut,s6Step247HeadGvOut,s6Step247HeadFvOut] :=
  hmrRows_owned_drop s6Step247HeadFvAfter [s6Step247HeadGOut,s6Step247HeadFOut,s6Step247HeadGvOut,s6Step247HeadFvOut] 1 s6Step247HeadBank_outgoingOwned

private theorem s6Step247HeadF_distinct : (s6Step247HeadFRow.sign::s6Step247HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247HeadF_owned : (s6Step247HeadFRow.sign::s6Step247HeadFRow.payload).toFinset⊆s6Step247HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step247HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247HeadF_reserved : s6Step247HeadFBefore.reserve s6Step247HeadFFresh.toFinset=some s6Step247HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step247HeadFFresh,arenaWires]
  · norm_num [s6Step247HeadFBefore,s6Step247HeadGAfter,s6Step247HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step247HeadFAfter,s6Step247HeadFBefore,s6Step247HeadGAfter,s6Step247HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step247HeadF_checked : planRowResizeLog s6Step247HeadFBefore s6Step247HeadFRow 148 s6Step247HeadFFresh=
    some (s6Step247HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 818],795⟩,growRow 795 s6Step247HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step247HeadFBefore s6Step247HeadFAfter s6Step247HeadFRow 148 s6Step247HeadFFresh
    s6Step247HeadF_distinct s6Step247HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step247HeadF_reserved
  have rowEq : WindowRow.mk (s6Step247HeadFRow.payload++s6Step247HeadFFresh) s6Step247HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 818],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step247HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step247HeadFvBefore : Arena := s6Step247HeadGvAfter

private theorem s6Step247HeadFv_Incoming : rowsOwned s6Step247HeadFvBefore [s6Step247HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step247HeadGRow,s6Step247HeadFRow,s6Step247HeadGvRow,s6Step247HeadFvRow] 3 s6Step247HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step247HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step247HeadFv_Outgoing : rowsOwned s6Step247HeadFvAfter [s6Step247HeadFvOut] :=
  hmrRows_owned_drop s6Step247HeadFvAfter [s6Step247HeadGOut,s6Step247HeadFOut,s6Step247HeadGvOut,s6Step247HeadFvOut] 3 s6Step247HeadBank_outgoingOwned

private theorem s6Step247HeadFv_distinct : (s6Step247HeadFvRow.sign::s6Step247HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247HeadFv_owned : (s6Step247HeadFvRow.sign::s6Step247HeadFvRow.payload).toFinset⊆s6Step247HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step247HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247HeadFv_reserved : s6Step247HeadFvBefore.reserve s6Step247HeadFvFresh.toFinset=some s6Step247HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step247HeadFvFresh,arenaWires]
  · norm_num [s6Step247HeadFvBefore,s6Step247HeadGvAfter,s6Step247HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step247HeadFvAfter,s6Step247HeadFvBefore,s6Step247HeadGvAfter,s6Step247HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step247HeadFv_checked : planRowResizeLog s6Step247HeadFvBefore s6Step247HeadFvRow 139 s6Step247HeadFvFresh=
    some (s6Step247HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814],776⟩,growRow 776 s6Step247HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step247HeadFvBefore s6Step247HeadFvAfter s6Step247HeadFvRow 139 s6Step247HeadFvFresh
    s6Step247HeadFv_distinct s6Step247HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step247HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step247HeadFvRow.payload++s6Step247HeadFvFresh) s6Step247HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step247HeadG_Incoming : rowsOwned s6Step247HeadGBefore [s6Step247HeadGRow,s6Step247HeadFRow,s6Step247HeadGvRow,s6Step247HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step247HeadGRow,s6Step247HeadFRow,s6Step247HeadGvRow,s6Step247HeadFvRow] 0 s6Step247HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step247HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step247HeadG_Outgoing : rowsOwned s6Step247HeadFvAfter [s6Step247HeadGOut,s6Step247HeadFOut,s6Step247HeadGvOut,s6Step247HeadFvOut] :=
  hmrRows_owned_drop s6Step247HeadFvAfter [s6Step247HeadGOut,s6Step247HeadFOut,s6Step247HeadGvOut,s6Step247HeadFvOut] 0 s6Step247HeadBank_outgoingOwned

private theorem s6Step247HeadG_distinct : (s6Step247HeadGRow.sign::s6Step247HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247HeadG_owned : (s6Step247HeadGRow.sign::s6Step247HeadGRow.payload).toFinset⊆s6Step247HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step247HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247HeadG_reserved : s6Step247HeadGBefore.reserve s6Step247HeadGFresh.toFinset=some s6Step247HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step247HeadGFresh,arenaWires]
  · norm_num [s6Step247HeadGBefore,s6Step247HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step247HeadGAfter,s6Step247HeadGBefore,s6Step247HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step247HeadG_checked : planRowResizeLog s6Step247HeadGBefore s6Step247HeadGRow 148 s6Step247HeadGFresh=
    some (s6Step247HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 839, 830],777⟩,growRow 777 s6Step247HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step247HeadGBefore s6Step247HeadGAfter s6Step247HeadGRow 148 s6Step247HeadGFresh
    s6Step247HeadG_distinct s6Step247HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step247HeadG_reserved
  have rowEq : WindowRow.mk (s6Step247HeadGRow.payload++s6Step247HeadGFresh) s6Step247HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 839, 830],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step247HeadGvBefore : Arena := s6Step247HeadFAfter

private theorem s6Step247HeadGv_Incoming : rowsOwned s6Step247HeadGvBefore [s6Step247HeadGvRow,s6Step247HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step247HeadGRow,s6Step247HeadFRow,s6Step247HeadGvRow,s6Step247HeadFvRow] 2 s6Step247HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step247HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step247HeadGv_Outgoing : rowsOwned s6Step247HeadFvAfter [s6Step247HeadGvOut,s6Step247HeadFvOut] :=
  hmrRows_owned_drop s6Step247HeadFvAfter [s6Step247HeadGOut,s6Step247HeadFOut,s6Step247HeadGvOut,s6Step247HeadFvOut] 2 s6Step247HeadBank_outgoingOwned

private theorem s6Step247HeadGv_distinct : (s6Step247HeadGvRow.sign::s6Step247HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step247HeadGv_owned : (s6Step247HeadGvRow.sign::s6Step247HeadGvRow.payload).toFinset⊆s6Step247HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step247HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step247HeadGv_reserved : s6Step247HeadGvBefore.reserve s6Step247HeadGvFresh.toFinset=some s6Step247HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step247HeadGvFresh,arenaWires]
  · norm_num [s6Step247HeadGvBefore,s6Step247HeadFAfter,s6Step247HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step247HeadGvAfter,s6Step247HeadGvBefore,s6Step247HeadFAfter,s6Step247HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step247HeadGv_checked : planRowResizeLog s6Step247HeadGvBefore s6Step247HeadGvRow 139 s6Step247HeadGvFresh=
    some (s6Step247HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 822],775⟩,growRow 775 s6Step247HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step247HeadGvBefore s6Step247HeadGvAfter s6Step247HeadGvRow 139 s6Step247HeadGvFresh
    s6Step247HeadGv_distinct s6Step247HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step247HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step247HeadGvRow.payload++s6Step247HeadGvFresh) s6Step247HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 822],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step247HeadBank_rows : planWindowRowsLog s6Step247HeadGBefore [(s6Step247HeadGRow,148),(s6Step247HeadFRow,148),(s6Step247HeadGvRow,139),(s6Step247HeadFvRow,139)] [s6Step247HeadGFresh,s6Step247HeadFFresh,s6Step247HeadGvFresh,s6Step247HeadFvFresh]=
    some (s6Step247HeadFvAfter,[s6Step247HeadGOut,s6Step247HeadFOut,s6Step247HeadGvOut,s6Step247HeadFvOut],(growRow 777 s6Step247HeadGFresh ++ (growRow 795 s6Step247HeadFFresh ++ (growRow 775 s6Step247HeadGvFresh ++ (growRow 776 s6Step247HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step247HeadFvAfter [] []=some (s6Step247HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step247HeadFvBefore s6Step247HeadFvAfter s6Step247HeadFvAfter
    s6Step247HeadFvRow s6Step247HeadFvOut 139 s6Step247HeadFvFresh [] [] []
    (growRow 776 s6Step247HeadFvFresh) ([]) s6Step247HeadFv_Incoming s6Step247HeadFv_checked h4 s6Step247HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step247HeadGvBefore s6Step247HeadGvAfter s6Step247HeadFvAfter
    s6Step247HeadGvRow s6Step247HeadGvOut 139 s6Step247HeadGvFresh [(s6Step247HeadFvRow,139)] [s6Step247HeadFvFresh] [s6Step247HeadFvOut]
    (growRow 775 s6Step247HeadGvFresh) ((growRow 776 s6Step247HeadFvFresh ++ [])) s6Step247HeadGv_Incoming s6Step247HeadGv_checked h3 s6Step247HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step247HeadFBefore s6Step247HeadFAfter s6Step247HeadFvAfter
    s6Step247HeadFRow s6Step247HeadFOut 148 s6Step247HeadFFresh [(s6Step247HeadGvRow,139),(s6Step247HeadFvRow,139)] [s6Step247HeadGvFresh,s6Step247HeadFvFresh] [s6Step247HeadGvOut,s6Step247HeadFvOut]
    (growRow 795 s6Step247HeadFFresh) ((growRow 775 s6Step247HeadGvFresh ++ (growRow 776 s6Step247HeadFvFresh ++ []))) s6Step247HeadF_Incoming s6Step247HeadF_checked h2 s6Step247HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step247HeadGBefore s6Step247HeadGAfter s6Step247HeadFvAfter
    s6Step247HeadGRow s6Step247HeadGOut 148 s6Step247HeadGFresh [(s6Step247HeadFRow,148),(s6Step247HeadGvRow,139),(s6Step247HeadFvRow,139)] [s6Step247HeadFFresh,s6Step247HeadGvFresh,s6Step247HeadFvFresh] [s6Step247HeadFOut,s6Step247HeadGvOut,s6Step247HeadFvOut]
    (growRow 777 s6Step247HeadGFresh) ((growRow 795 s6Step247HeadFFresh ++ (growRow 775 s6Step247HeadGvFresh ++ (growRow 776 s6Step247HeadFvFresh ++ [])))) s6Step247HeadG_Incoming s6Step247HeadG_checked h1 s6Step247HeadG_Outgoing
  exact h0

private theorem s6Step247HeadBank_checked : compileHmrBankResizeLog .headroom s6Step247HeadGBefore ⟨s6Step247HeadFRow,s6Step247HeadGRow,s6Step247HeadFvRow,s6Step247HeadGvRow⟩ ⟨148,148,139,139⟩ [s6Step247HeadGFresh,s6Step247HeadFFresh,s6Step247HeadGvFresh,s6Step247HeadFvFresh]=
    some (s6Step247HeadFvAfter,⟨s6Step247HeadFOut,s6Step247HeadGOut,s6Step247HeadFvOut,s6Step247HeadGvOut⟩,(growRow 777 s6Step247HeadGFresh ++ (growRow 795 s6Step247HeadFFresh ++ (growRow 775 s6Step247HeadGvFresh ++ (growRow 776 s6Step247HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step247HeadBank_rows]
  rfl

private theorem s6Step247Front_checked : compileHmrSourceFrontLog s6Step247EntryFBefore s6Step247FrontBank 147 138 ⟨147,146,139,138⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step247FrontLog=some s6Step247FrontPlan := by
  have pairEq : s6Step247FrontPair=⟨s6Step247HeadFRow,s6Step247HeadGRow,s6Step247HeadFvRow,s6Step247HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step247FrontHead=⟨s6Step247ExitFRow,s6Step247ExitGRow,s6Step247ExitFvRow,s6Step247ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step247Add0A=s6Step247FrontHead.f.wires := by decide +kernel
  have gEq : s6Step247Add0B=s6Step247FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step247Add1A=s6Step247FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step247Add1B=s6Step247FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step247EntryFBefore s6Step247FrontBank 147 138 ⟨147,146,139,138⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step247FrontLog s6Step247FrontPlan
  · exact s6Step247Front_entry
  · exact s6Step247EntryBank_checked
  · exact s6Step247Front_sigma
  · rfl
  · exact s6Step247Front_branch
  · rfl
  · simpa only [s6Step247FrontPlan,pairEq] using s6Step247HeadBank_checked
  · simpa only [s6Step247FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step247F4_checked
  · exact s6Step247Counter_checked
  · rfl
  · simpa only [s6Step247FrontPlan,headEq] using s6Step247ExitBank_checked

private theorem s6Step247Complete_explicit_checked : compileHmrEarlyStepLog s6Step247EntryFBefore s6Step247FrontBank 147 138 ⟨147,146,139,138⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step247CompleteLog=some s6Step247CompletePlan := by
  let Q := s6Step247EarlyControlPlan
  have hq := s6Step247EarlyControl_plan_checked
  have fv1 : s6Step247CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step247CompleteOut.fv.payload[2]?.getD s6Step247CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step247CompleteOut.fv.payload[3]?.getD s6Step247CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step247CompleteOut.fv.payload[4]?.getD s6Step247CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step247EntryFBefore s6Step247EarlyControlArena s6Step247FrontBank 147 138 ⟨147,146,139,138⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step247CompleteLog s6Step247FrontPlan Q
    s6Step247Front_checked s6Step247Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step247Complete_owned s6Step247Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step247EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 890 s6Step247CompleteOut.fv.second (s6Step247CompleteOut.fv.payload[2]?.getD s6Step247CompleteOut.fv.sign) (s6Step247CompleteOut.fv.payload[3]?.getD s6Step247CompleteOut.fv.sign) (s6Step247CompleteOut.fv.payload[4]?.getD s6Step247CompleteOut.fv.sign) 864 51 s6Step247EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep247Arena : Arena := s6Step247EntryFBefore
def s6PrivateStep247Bank : WindowBank := s6Step247FrontBank
def s6PrivateStep247Spec : HmrSourceWalkStepLog := ⟨147,138,⟨147,146,139,138⟩,51,.early s6Step247CompleteLog⟩
def s6PrivateStep247Plan : HmrSourceStepPlan := .early s6Step247CompletePlan
theorem s6PrivateStep247_source : s6PrivateStep247Spec=s6ObservedLogs240[7] := rfl
theorem s6PrivateStep247_checked : compileHmrSourceStepLog s6PrivateStep247Arena s6PrivateStep247Bank
    s6PrivateStep247Spec.fgWidth s6PrivateStep247Spec.vWidth s6PrivateStep247Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]
    6 498 247 s6PrivateStep247Spec.need none s6PrivateStep247Spec.log=some s6PrivateStep247Plan := by
  change compileHmrSourceStepLog s6Step247EntryFBefore s6Step247FrontBank 147 138 ⟨147,146,139,138⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 6 498 247 51 none (.early s6Step247CompleteLog)=some (.early s6Step247CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 247<498)]
  rw [s6Step247Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
