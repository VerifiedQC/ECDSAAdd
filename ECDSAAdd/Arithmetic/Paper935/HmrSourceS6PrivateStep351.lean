import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep349
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

private def s6Step351CompleteMoves : List (Wire × Wire) := [(858,95)]

private def s6Step351EarlyControlLog : HmrEarlyControlLog := ⟨[858, 906, 817, 881, 927],[805],[802],[843, 877, 792, 816, 819, 920],[]⟩

private def s6Step351FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[817], [906], [809], [882]],[[], [], [], []]⟩,[789],[873],[881],[927],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[881, 927, 805, 802]⟩

private def s6Step351CompleteLog : HmrEarlyStepLog := ⟨s6Step351FrontLog,s6Step351CompleteMoves,s6Step351EarlyControlLog⟩

private def s6Step351ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩

private def s6Step351ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882],776⟩

private def s6Step351ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94],777⟩

private def s6Step351ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809],775⟩

private def s6Step351FrontOut : WindowBank := ⟨s6Step351ExitFOut,s6Step351ExitGOut,s6Step351ExitFvOut,s6Step351ExitGvOut⟩

private def s6Step351CompleteOut : WindowBank := s6Step351FrontOut.repacked s6Step351CompleteMoves

private def s6Step351EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step351EarlyControlPositiveArena,[805],s6Step351EarlyControlEqualityArena,[802],⟨⟨789,false⟩,[⟨⟨805,false⟩,802⟩]⟩⟩

private def s6Step351EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,858⟩,⟨⟨772,false⟩,906⟩,⟨⟨771,false⟩,817⟩,⟨⟨770,false⟩,881⟩,⟨⟨769,false⟩,927⟩]⟩

private def s6Step351EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step351EarlyControlZeroArena,s6Step351EarlyControlZeroPlan,s6Step351EarlyControlClassPlan,s6Step351EarlyControlFlagArena,s6Step351EarlyControlFittedArena,s6Step351EarlyControlHistoryArena,s6Step351EarlyControlSigmaArena,s6Step351EarlyControlOutputArena,s6Step351EarlyControlLog⟩

private def s6Step351CounterWork : List Wire := [881, 927, 805, 802]

private theorem s6Step351Counter_bounded : s6Step351CounterWork.toFinset⊆arenaWires := by norm_num [s6Step351CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step351HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351CounterDuring : Arena := ⟨s6Step351HeadFvAfter.live∪s6Step351CounterWork.toFinset,Finset.union_subset s6Step351HeadFvAfter.bounded s6Step351Counter_bounded⟩

private def s6Step351EntryFFresh : List Wire := []

private def s6Step351EntryFvFresh : List Wire := []

private def s6Step351EntryGFresh : List Wire := []

private def s6Step351EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351EntryGvAfter : Arena := s6Step351EntryFBefore

private def s6Step351EntryGvFresh : List Wire := []

private def s6Step351ExitFExtra : List Wire := [906]

private def s6Step351ExitGExtra : List Wire := [95, 817]

private def s6Step351ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<95) ∨ (96≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351ExitGvAfter : Arena := s6Step351ExitFAfter

private def s6Step351Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351Add0Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step351Add0_bounded : s6Step351Add0Work.toFinset⊆arenaWires := by
  have h : s6Step351Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step351Add0During : Arena := ⟨s6Step351Add0Arena.live∪s6Step351Add0Work.toFinset,Finset.union_subset s6Step351Add0Arena.bounded s6Step351Add0_bounded⟩

private def s6Step351Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351Add1Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step351Add1_bounded : s6Step351Add1Work.toFinset⊆arenaWires := by
  have h : s6Step351Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step351Add1During : Arena := ⟨s6Step351Add1Arena.live∪s6Step351Add1Work.toFinset,Finset.union_subset s6Step351Add1Arena.bounded s6Step351Add1_bounded⟩

private def s6Step351F4FlagArena : Arena := ⟨s6Step351HeadFvAfter.live∪{881},Finset.union_subset s6Step351HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step351F4Plan : HmrHybridF4Plan := ⟨s6Step351F4FlagArena,[881],s6Step351Add0Arena,[927],s6Step351Add0During,s6Step351Add0Work,s6Step351Add1During,s6Step351Add1Work⟩

private def s6Step351HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 906],795⟩

private def s6Step351HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882],776⟩

private def s6Step351HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 817],777⟩

private def s6Step351HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809],775⟩

private def s6Step351FrontHead : WindowBank := ⟨s6Step351HeadFOut,s6Step351HeadGOut,s6Step351HeadFvOut,s6Step351HeadGvOut⟩

private def s6Step351EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩

private def s6Step351EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩

private def s6Step351EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95],777⟩

private def s6Step351EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813],775⟩

private def s6Step351FrontPair : WindowBank := ⟨s6Step351EntryFOut,s6Step351EntryGOut,s6Step351EntryFvOut,s6Step351EntryGvOut⟩

private def s6Step351FrontSigmaArena : Arena := ⟨s6Step351EntryGvAfter.live∪{789},Finset.union_subset s6Step351EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step351HeadFFresh : List Wire := [906]

private def s6Step351HeadFvFresh : List Wire := [882]

private def s6Step351HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351HeadGFresh : List Wire := [817]

private def s6Step351HeadGvFresh : List Wire := [809]

private def s6Step351FrontPlan : HmrSourceFront := ⟨s6Step351EntryGvAfter,s6Step351FrontPair,(growRow 795 s6Step351EntryFFresh ++ (growRow 777 s6Step351EntryGFresh ++ (growRow 776 s6Step351EntryFvFresh ++ (growRow 775 s6Step351EntryGvFresh ++ [])))),s6Step351FrontSigmaArena,[789],s6Step351HeadGBefore,[873],
  s6Step351HeadFvAfter,s6Step351FrontHead,(growRow 777 s6Step351HeadGFresh ++ (growRow 795 s6Step351HeadFFresh ++ (growRow 775 s6Step351HeadGvFresh ++ (growRow 776 s6Step351HeadFvFresh ++ [])))),s6Step351F4Plan,s6Step351CounterDuring,s6Step351CounterWork,s6Step351ExitGvAfter,s6Step351FrontOut,(shrinkRow 777 s6Step351ExitGExtra ++ (shrinkRow 795 s6Step351ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step351CompletePlan : HmrEarlyStepPlan := ⟨s6Step351FrontPlan,s6Step351EarlyControlArena,s6Step351EarlyControlPlan,s6Step351CompleteMoves⟩

private theorem s6Step351Complete_apart : List.Disjoint (s6Step351CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [789, 873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step351CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[789, 873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step351Complete_owned : (s6Step351CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step351EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step351EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step351CompleteMoveArena : Arena := ⟨s6Step351ExitGvAfter.live∪{95},Finset.union_subset s6Step351ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step351Complete_repack : s6Step351ExitGvAfter.checkRepack s6Step351CompleteMoves=some s6Step351EarlyControlArena := by
  have owned : 858∈s6Step351ExitGvAfter.live := by norm_num [s6Step351ExitGvAfter,s6Step351ExitFAfter,arenaWires]
  have reserve : s6Step351ExitGvAfter.reserve {95}=some s6Step351CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step351ExitGvAfter,s6Step351ExitFAfter,arenaWires]
    · rfl
  have retired : s6Step351CompleteMoveArena.retireSet {858}=s6Step351EarlyControlArena := by
    unfold Arena.retireSet s6Step351EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step351CompleteMoveArena,s6Step351ExitGvAfter,s6Step351ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step351CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step351CompleteMoveArena.retireSet {858}).checkRepack []=some s6Step351EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step351EarlyControl_branchOwned : ([873] : List Wire).toFinset⊆s6Step351EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step351EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351EarlyControl_branch : compileHmrBranchRetirement s6Step351EarlyControlSigmaArena 873=some s6Step351EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step351EarlyControl_branchOwned
  · ext q
    simp [s6Step351EarlyControlOutputArena,s6Step351EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step351EarlyControl_classEqualityBorrow : s6Step351EarlyControlPositiveArena.checkBorrow (([789, 805] : List Wire).length-1) s6Step351EarlyControlLog.classWork=some s6Step351EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step351EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step351EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step351EarlyControlEqualityArena,s6Step351EarlyControlPositiveArena,s6Step351EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step351EarlyControl_classEqualityOwned : ([789, 805] : List Wire).toFinset⊆s6Step351EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step351EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351EarlyControl_classEquality : compileHmrEqualityLog s6Step351EarlyControlPositiveArena [789, 805] 0 s6Step351EarlyControlLog.classWork=some (s6Step351EarlyControlEqualityArena,s6Step351EarlyControlLog.classWork,s6Step351EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step351EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step351EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step351EarlyControl_classOwned : ([769, 927, 789] : List Wire).toFinset⊆s6Step351EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step351EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351EarlyControl_positiveBorrow : s6Step351EarlyControlZeroArena.checkBorrow (1) s6Step351EarlyControlLog.positiveWork=some s6Step351EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step351EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step351EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step351EarlyControlPositiveArena,s6Step351EarlyControlZeroArena,s6Step351EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step351EarlyControl_class : compileHmrSourceClassLog s6Step351EarlyControlZeroArena false 769 s6Step351EarlyControlZeroPlan.top 0 789 s6Step351EarlyControlLog.positiveWork s6Step351EarlyControlLog.classWork=some s6Step351EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step351EarlyControlClassPlan s6Step351EarlyControlZeroArena false 769 s6Step351EarlyControlZeroPlan.top 0 789
  constructor
  · decide +kernel
  · exact s6Step351EarlyControl_classOwned
  · exact s6Step351EarlyControl_positiveBorrow
  · exact s6Step351EarlyControl_classEquality

private theorem s6Step351EarlyControl_entryRecordOwned : ([873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step351EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step351EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351EarlyControl_entrySigmaOwned : ([789, 254] : List Wire).toFinset⊆s6Step351EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step351EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351EarlyControl_fitBorrow : s6Step351EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step351EarlyControlLog.recordFresh=some s6Step351EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step351EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step351EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step351EarlyControlFittedArena,s6Step351EarlyControlFlagArena,s6Step351EarlyControlLog,arenaWires]

private theorem s6Step351EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step351EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step351EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351EarlyControl_fit : compileHmrRecordGrowLog s6Step351EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step351EarlyControlLog.recordFresh=some s6Step351EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step351EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step351EarlyControl_fitBorrow

private theorem s6Step351EarlyControl_flagsBorrow : s6Step351EarlyControlEqualityArena.checkBorrow (6) s6Step351EarlyControlLog.flagWork=some s6Step351EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step351EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step351EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step351EarlyControlFlagArena,s6Step351EarlyControlEqualityArena,s6Step351EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step351EarlyControl_flagsOwned : ([802, 253, 252, 251] : List Wire).toFinset⊆s6Step351EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step351EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351EarlyControl_flags : compileHmrFlagsLog s6Step351EarlyControlClassPlan.equalityArena s6Step351EarlyControlClassPlan.equality.top 253 252 251 s6Step351EarlyControlLog.flagWork=some s6Step351EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step351EarlyControl_flagsOwned⟩
  · exact s6Step351EarlyControl_flagsBorrow

private theorem s6Step351EarlyControl_historyBorrow : s6Step351EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step351EarlyControlLog.recordFresh=some s6Step351EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step351EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step351EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step351EarlyControlHistoryArena,s6Step351EarlyControlArena,s6Step351EarlyControlLog,arenaWires]

private theorem s6Step351EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step351EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step351EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351EarlyControl_history : compileHmrRecordGrowLog s6Step351EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step351EarlyControlLog.recordFresh=some s6Step351EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step351EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step351EarlyControl_historyBorrow

private theorem s6Step351EarlyControl_sigmaOwned : ([254, 789] : List Wire).toFinset⊆s6Step351EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step351EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351EarlyControl_sigmaReleaseOwned : ([789] : List Wire).toFinset⊆s6Step351EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step351EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351EarlyControl_sigmaRelease : s6Step351EarlyControlHistoryArena.release {789} (fun _ => false)=some s6Step351EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step351EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step351EarlyControlSigmaArena,s6Step351EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step351EarlyControl_sigma : compileHmrSigmaDropLog s6Step351EarlyControlHistoryArena false 0 0 254 789 []=some s6Step351EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step351EarlyControl_sigmaOwned⟩
  · exact s6Step351EarlyControl_sigmaRelease

private theorem s6Step351EarlyControl_zeroBorrow : s6Step351EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step351EarlyControlLog.zeroWork=some s6Step351EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step351EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step351EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step351EarlyControlZeroArena,s6Step351EarlyControlArena,s6Step351EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step351EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step351EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step351EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351EarlyControl_zero : compileHmrEqualityLog s6Step351EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step351EarlyControlLog.zeroWork=some (s6Step351EarlyControlZeroArena,s6Step351EarlyControlLog.zeroWork,s6Step351EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step351EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step351EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step351EarlyControl_logged : s6Step351EarlyControlPlan.Logged s6Step351EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 254 253 252 251 873 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step351EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step351EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step351EarlyControl_zero
  · exact s6Step351EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step351EarlyControl_flags
  · exact s6Step351EarlyControl_fit
  · exact s6Step351EarlyControl_history
  · exact s6Step351EarlyControl_sigma
  · exact s6Step351EarlyControl_branch

private theorem s6Step351EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step351EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 254 253 252 251 873 60 s6Step351EarlyControlLog=some s6Step351EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step351EarlyControlPlan s6Step351EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 254 253 252 251 873 60 s6Step351EarlyControl_logged

private def s6Step351EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩

private def s6Step351EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩

private def s6Step351EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95],777⟩

private def s6Step351EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813],775⟩

private def s6Step351FrontBank : WindowBank := ⟨s6Step351EntryFRow,s6Step351EntryGRow,s6Step351EntryFvRow,s6Step351EntryGvRow⟩

private def s6Step351Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 906, 795]

private def s6Step351Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 817, 777]

private def s6Step351Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 776]

private def s6Step351Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 775]

private theorem s6Step351Counter_apart : Disjoint s6Step351HeadFvAfter.live s6Step351CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step351HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351Counter_borrowed : s6Step351HeadFvAfter.checkBorrow 4 s6Step351CounterWork=some s6Step351CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step351HeadFvAfter s6Step351CounterDuring s6Step351CounterWork.toFinset s6Step351Counter_bounded s6Step351Counter_apart rfl

private theorem s6Step351Counter_owned : (789::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step351HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step351HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351Counter_checked : compileHmrCounterStepLog s6Step351HeadFvAfter true 789 [774, 773, 772, 771, 770, 769] s6Step351CounterWork=some s6Step351CounterDuring := by
  have owned : ∀q∈789::[774, 773, 772, 771, 770, 769],q∈s6Step351HeadFvAfter.live := fun q hq => s6Step351Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step351Counter_borrowed

private def s6Step351EntryFAfter : Arena := s6Step351EntryFBefore

private theorem s6Step351EntryBank_incomingDistinct : ([s6Step351EntryFRow,s6Step351EntryGRow,s6Step351EntryFvRow,s6Step351EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351EntryF_Incoming : rowsOwned s6Step351EntryFBefore [s6Step351EntryFRow,s6Step351EntryGRow,s6Step351EntryFvRow,s6Step351EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step351EntryFRow,s6Step351EntryGRow,s6Step351EntryFvRow,s6Step351EntryGvRow] 0 s6Step351EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step351EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step351EntryBank_outgoingOwned : rowsOwned s6Step351EntryGvAfter [s6Step351EntryFOut,s6Step351EntryGOut,s6Step351EntryFvOut,s6Step351EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step351EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step351EntryF_Outgoing : rowsOwned s6Step351EntryGvAfter [s6Step351EntryFOut,s6Step351EntryGOut,s6Step351EntryFvOut,s6Step351EntryGvOut] :=
  hmrRows_owned_drop s6Step351EntryGvAfter [s6Step351EntryFOut,s6Step351EntryGOut,s6Step351EntryFvOut,s6Step351EntryGvOut] 0 s6Step351EntryBank_outgoingOwned

private theorem s6Step351EntryF_distinct : (s6Step351EntryFRow.sign::s6Step351EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351EntryF_owned : (s6Step351EntryFRow.sign::s6Step351EntryFRow.payload).toFinset⊆s6Step351EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step351EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351EntryF_reserved : s6Step351EntryFBefore.reserve s6Step351EntryFFresh.toFinset=some s6Step351EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step351EntryFFresh,arenaWires]
  · norm_num [s6Step351EntryFBefore,s6Step351EntryFFresh,arenaWires]
  · simp only [s6Step351EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step351EntryF_checked : planRowResizeLog s6Step351EntryFBefore s6Step351EntryFRow 96 s6Step351EntryFFresh=
    some (s6Step351EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩,growRow 795 s6Step351EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step351EntryFBefore s6Step351EntryFAfter s6Step351EntryFRow 96 s6Step351EntryFFresh
    s6Step351EntryF_distinct s6Step351EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step351EntryF_reserved
  have rowEq : WindowRow.mk (s6Step351EntryFRow.payload++s6Step351EntryFFresh) s6Step351EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step351EntryFvAfter : Arena := s6Step351EntryFBefore

private def s6Step351EntryFvBefore : Arena := s6Step351EntryFBefore

private theorem s6Step351EntryFv_Incoming : rowsOwned s6Step351EntryFvBefore [s6Step351EntryFvRow,s6Step351EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step351EntryFRow,s6Step351EntryGRow,s6Step351EntryFvRow,s6Step351EntryGvRow] 2 s6Step351EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step351EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step351EntryFv_Outgoing : rowsOwned s6Step351EntryGvAfter [s6Step351EntryFvOut,s6Step351EntryGvOut] :=
  hmrRows_owned_drop s6Step351EntryGvAfter [s6Step351EntryFOut,s6Step351EntryGOut,s6Step351EntryFvOut,s6Step351EntryGvOut] 2 s6Step351EntryBank_outgoingOwned

private theorem s6Step351EntryFv_distinct : (s6Step351EntryFvRow.sign::s6Step351EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351EntryFv_owned : (s6Step351EntryFvRow.sign::s6Step351EntryFvRow.payload).toFinset⊆s6Step351EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step351EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351EntryFv_reserved : s6Step351EntryFvBefore.reserve s6Step351EntryFvFresh.toFinset=some s6Step351EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step351EntryFvFresh,arenaWires]
  · norm_num [s6Step351EntryFvBefore,s6Step351EntryFBefore,s6Step351EntryFvFresh,arenaWires]
  · simp only [s6Step351EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step351EntryFv_checked : planRowResizeLog s6Step351EntryFvBefore s6Step351EntryFvRow 191 s6Step351EntryFvFresh=
    some (s6Step351EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩,growRow 776 s6Step351EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step351EntryFvBefore s6Step351EntryFvAfter s6Step351EntryFvRow 191 s6Step351EntryFvFresh
    s6Step351EntryFv_distinct s6Step351EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step351EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step351EntryFvRow.payload++s6Step351EntryFvFresh) s6Step351EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step351EntryGAfter : Arena := s6Step351EntryFBefore

private def s6Step351EntryGBefore : Arena := s6Step351EntryFBefore

private theorem s6Step351EntryG_Incoming : rowsOwned s6Step351EntryGBefore [s6Step351EntryGRow,s6Step351EntryFvRow,s6Step351EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step351EntryFRow,s6Step351EntryGRow,s6Step351EntryFvRow,s6Step351EntryGvRow] 1 s6Step351EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step351EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step351EntryG_Outgoing : rowsOwned s6Step351EntryGvAfter [s6Step351EntryGOut,s6Step351EntryFvOut,s6Step351EntryGvOut] :=
  hmrRows_owned_drop s6Step351EntryGvAfter [s6Step351EntryFOut,s6Step351EntryGOut,s6Step351EntryFvOut,s6Step351EntryGvOut] 1 s6Step351EntryBank_outgoingOwned

private theorem s6Step351EntryG_distinct : (s6Step351EntryGRow.sign::s6Step351EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351EntryG_owned : (s6Step351EntryGRow.sign::s6Step351EntryGRow.payload).toFinset⊆s6Step351EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step351EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351EntryG_reserved : s6Step351EntryGBefore.reserve s6Step351EntryGFresh.toFinset=some s6Step351EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step351EntryGFresh,arenaWires]
  · norm_num [s6Step351EntryGBefore,s6Step351EntryFBefore,s6Step351EntryGFresh,arenaWires]
  · simp only [s6Step351EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step351EntryG_checked : planRowResizeLog s6Step351EntryGBefore s6Step351EntryGRow 96 s6Step351EntryGFresh=
    some (s6Step351EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95],777⟩,growRow 777 s6Step351EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step351EntryGBefore s6Step351EntryGAfter s6Step351EntryGRow 96 s6Step351EntryGFresh
    s6Step351EntryG_distinct s6Step351EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step351EntryG_reserved
  have rowEq : WindowRow.mk (s6Step351EntryGRow.payload++s6Step351EntryGFresh) s6Step351EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step351EntryGvBefore : Arena := s6Step351EntryFBefore

private theorem s6Step351EntryGv_Incoming : rowsOwned s6Step351EntryGvBefore [s6Step351EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step351EntryFRow,s6Step351EntryGRow,s6Step351EntryFvRow,s6Step351EntryGvRow] 3 s6Step351EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step351EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step351EntryGv_Outgoing : rowsOwned s6Step351EntryGvAfter [s6Step351EntryGvOut] :=
  hmrRows_owned_drop s6Step351EntryGvAfter [s6Step351EntryFOut,s6Step351EntryGOut,s6Step351EntryFvOut,s6Step351EntryGvOut] 3 s6Step351EntryBank_outgoingOwned

private theorem s6Step351EntryGv_distinct : (s6Step351EntryGvRow.sign::s6Step351EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351EntryGv_owned : (s6Step351EntryGvRow.sign::s6Step351EntryGvRow.payload).toFinset⊆s6Step351EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step351EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351EntryGv_reserved : s6Step351EntryGvBefore.reserve s6Step351EntryGvFresh.toFinset=some s6Step351EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step351EntryGvFresh,arenaWires]
  · norm_num [s6Step351EntryGvBefore,s6Step351EntryFBefore,s6Step351EntryGvFresh,arenaWires]
  · simp only [s6Step351EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step351EntryGv_checked : planRowResizeLog s6Step351EntryGvBefore s6Step351EntryGvRow 191 s6Step351EntryGvFresh=
    some (s6Step351EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813],775⟩,growRow 775 s6Step351EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step351EntryGvBefore s6Step351EntryGvAfter s6Step351EntryGvRow 191 s6Step351EntryGvFresh
    s6Step351EntryGv_distinct s6Step351EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step351EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step351EntryGvRow.payload++s6Step351EntryGvFresh) s6Step351EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step351EntryBank_rows : planWindowRowsLog s6Step351EntryFBefore [(s6Step351EntryFRow,96),(s6Step351EntryGRow,96),(s6Step351EntryFvRow,191),(s6Step351EntryGvRow,191)] [s6Step351EntryFFresh,s6Step351EntryGFresh,s6Step351EntryFvFresh,s6Step351EntryGvFresh]=
    some (s6Step351EntryGvAfter,[s6Step351EntryFOut,s6Step351EntryGOut,s6Step351EntryFvOut,s6Step351EntryGvOut],(growRow 795 s6Step351EntryFFresh ++ (growRow 777 s6Step351EntryGFresh ++ (growRow 776 s6Step351EntryFvFresh ++ (growRow 775 s6Step351EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step351EntryGvAfter [] []=some (s6Step351EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step351EntryGvBefore s6Step351EntryGvAfter s6Step351EntryGvAfter
    s6Step351EntryGvRow s6Step351EntryGvOut 191 s6Step351EntryGvFresh [] [] []
    (growRow 775 s6Step351EntryGvFresh) ([]) s6Step351EntryGv_Incoming s6Step351EntryGv_checked h4 s6Step351EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step351EntryFvBefore s6Step351EntryFvAfter s6Step351EntryGvAfter
    s6Step351EntryFvRow s6Step351EntryFvOut 191 s6Step351EntryFvFresh [(s6Step351EntryGvRow,191)] [s6Step351EntryGvFresh] [s6Step351EntryGvOut]
    (growRow 776 s6Step351EntryFvFresh) ((growRow 775 s6Step351EntryGvFresh ++ [])) s6Step351EntryFv_Incoming s6Step351EntryFv_checked h3 s6Step351EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step351EntryGBefore s6Step351EntryGAfter s6Step351EntryGvAfter
    s6Step351EntryGRow s6Step351EntryGOut 96 s6Step351EntryGFresh [(s6Step351EntryFvRow,191),(s6Step351EntryGvRow,191)] [s6Step351EntryFvFresh,s6Step351EntryGvFresh] [s6Step351EntryFvOut,s6Step351EntryGvOut]
    (growRow 777 s6Step351EntryGFresh) ((growRow 776 s6Step351EntryFvFresh ++ (growRow 775 s6Step351EntryGvFresh ++ []))) s6Step351EntryG_Incoming s6Step351EntryG_checked h2 s6Step351EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step351EntryFBefore s6Step351EntryFAfter s6Step351EntryGvAfter
    s6Step351EntryFRow s6Step351EntryFOut 96 s6Step351EntryFFresh [(s6Step351EntryGRow,96),(s6Step351EntryFvRow,191),(s6Step351EntryGvRow,191)] [s6Step351EntryGFresh,s6Step351EntryFvFresh,s6Step351EntryGvFresh] [s6Step351EntryGOut,s6Step351EntryFvOut,s6Step351EntryGvOut]
    (growRow 795 s6Step351EntryFFresh) ((growRow 777 s6Step351EntryGFresh ++ (growRow 776 s6Step351EntryFvFresh ++ (growRow 775 s6Step351EntryGvFresh ++ [])))) s6Step351EntryF_Incoming s6Step351EntryF_checked h1 s6Step351EntryF_Outgoing
  exact h0

private theorem s6Step351EntryBank_checked : compileHmrBankResizeLog .entry s6Step351EntryFBefore ⟨s6Step351EntryFRow,s6Step351EntryGRow,s6Step351EntryFvRow,s6Step351EntryGvRow⟩ ⟨96,96,191,191⟩ [s6Step351EntryFFresh,s6Step351EntryGFresh,s6Step351EntryFvFresh,s6Step351EntryGvFresh]=
    some (s6Step351EntryGvAfter,⟨s6Step351EntryFOut,s6Step351EntryGOut,s6Step351EntryFvOut,s6Step351EntryGvOut⟩,(growRow 795 s6Step351EntryFFresh ++ (growRow 777 s6Step351EntryGFresh ++ (growRow 776 s6Step351EntryFvFresh ++ (growRow 775 s6Step351EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step351EntryBank_rows]
  rfl

private def s6Step351ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<95) ∨ (96≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351ExitFBefore : Arena := s6Step351ExitGAfter

private def s6Step351ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 906],795⟩

private def s6Step351ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882],776⟩

private def s6Step351ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 817],777⟩

private def s6Step351ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809],775⟩

private theorem s6Step351ExitBank_incomingDistinct : ([s6Step351ExitGRow,s6Step351ExitFRow,s6Step351ExitFvRow,s6Step351ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351ExitF_Incoming : rowsOwned s6Step351ExitFBefore [s6Step351ExitFRow,s6Step351ExitFvRow,s6Step351ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step351ExitGRow,s6Step351ExitFRow,s6Step351ExitFvRow,s6Step351ExitGvRow] 1 s6Step351ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step351ExitFBefore (fun q => (0≤q ∧ q<95) ∨ (96≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step351ExitBank_outgoingOwned : rowsOwned s6Step351ExitGvAfter [s6Step351ExitGOut,s6Step351ExitFOut,s6Step351ExitFvOut,s6Step351ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step351ExitGvAfter (fun q => (0≤q ∧ q<95) ∨ (96≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step351ExitF_Outgoing : rowsOwned s6Step351ExitGvAfter [s6Step351ExitFOut,s6Step351ExitFvOut,s6Step351ExitGvOut] :=
  hmrRows_owned_drop s6Step351ExitGvAfter [s6Step351ExitGOut,s6Step351ExitFOut,s6Step351ExitFvOut,s6Step351ExitGvOut] 1 s6Step351ExitBank_outgoingOwned

private theorem s6Step351ExitF_distinct : (s6Step351ExitFRow.sign::s6Step351ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351ExitF_owned : (s6Step351ExitFRow.sign::s6Step351ExitFRow.payload).toFinset⊆s6Step351ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step351ExitFBefore (fun q => (0≤q ∧ q<95) ∨ (96≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351ExitF_retired : s6Step351ExitFBefore.retireSet s6Step351ExitFExtra.toFinset=s6Step351ExitFAfter := by
  unfold Arena.retireSet s6Step351ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step351ExitFBefore,s6Step351ExitGAfter,s6Step351ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step351ExitF_checked : planRowResizeLog s6Step351ExitFBefore s6Step351ExitFRow 96 []=
    some (s6Step351ExitFAfter,s6Step351ExitFOut,shrinkRow 795 s6Step351ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step351ExitFBefore s6Step351ExitFRow 96 s6Step351ExitF_distinct s6Step351ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step351ExitFRow.payload.take 96) s6Step351ExitFRow.sign=s6Step351ExitFOut := by decide +kernel
  have hi : s6Step351ExitFRow.payload.drop 96=s6Step351ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step351ExitF_retired] at result
  exact result

private def s6Step351ExitFvAfter : Arena := s6Step351ExitFAfter

private def s6Step351ExitFvBefore : Arena := s6Step351ExitFAfter

private theorem s6Step351ExitFv_Incoming : rowsOwned s6Step351ExitFvBefore [s6Step351ExitFvRow,s6Step351ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step351ExitGRow,s6Step351ExitFRow,s6Step351ExitFvRow,s6Step351ExitGvRow] 2 s6Step351ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step351ExitFvBefore (fun q => (0≤q ∧ q<95) ∨ (96≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step351ExitFv_Outgoing : rowsOwned s6Step351ExitGvAfter [s6Step351ExitFvOut,s6Step351ExitGvOut] :=
  hmrRows_owned_drop s6Step351ExitGvAfter [s6Step351ExitGOut,s6Step351ExitFOut,s6Step351ExitFvOut,s6Step351ExitGvOut] 2 s6Step351ExitBank_outgoingOwned

private theorem s6Step351ExitFv_distinct : (s6Step351ExitFvRow.sign::s6Step351ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351ExitFv_owned : (s6Step351ExitFvRow.sign::s6Step351ExitFvRow.payload).toFinset⊆s6Step351ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step351ExitFvBefore (fun q => (0≤q ∧ q<95) ∨ (96≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351ExitFv_reserved : s6Step351ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step351ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step351ExitFv_checked : planRowResizeLog s6Step351ExitFvBefore s6Step351ExitFvRow 192 []=
    some (s6Step351ExitFvAfter,s6Step351ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step351ExitFvBefore s6Step351ExitFvAfter s6Step351ExitFvRow 192 []
    s6Step351ExitFv_distinct s6Step351ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step351ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step351ExitFvRow.payload++[]) s6Step351ExitFvRow.sign=s6Step351ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step351ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step351ExitG_Incoming : rowsOwned s6Step351ExitGBefore [s6Step351ExitGRow,s6Step351ExitFRow,s6Step351ExitFvRow,s6Step351ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step351ExitGRow,s6Step351ExitFRow,s6Step351ExitFvRow,s6Step351ExitGvRow] 0 s6Step351ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step351ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step351ExitG_Outgoing : rowsOwned s6Step351ExitGvAfter [s6Step351ExitGOut,s6Step351ExitFOut,s6Step351ExitFvOut,s6Step351ExitGvOut] :=
  hmrRows_owned_drop s6Step351ExitGvAfter [s6Step351ExitGOut,s6Step351ExitFOut,s6Step351ExitFvOut,s6Step351ExitGvOut] 0 s6Step351ExitBank_outgoingOwned

private theorem s6Step351ExitG_distinct : (s6Step351ExitGRow.sign::s6Step351ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351ExitG_owned : (s6Step351ExitGRow.sign::s6Step351ExitGRow.payload).toFinset⊆s6Step351ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step351ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351ExitG_retired : s6Step351ExitGBefore.retireSet s6Step351ExitGExtra.toFinset=s6Step351ExitGAfter := by
  unfold Arena.retireSet s6Step351ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step351ExitGBefore,s6Step351ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step351ExitG_checked : planRowResizeLog s6Step351ExitGBefore s6Step351ExitGRow 95 []=
    some (s6Step351ExitGAfter,s6Step351ExitGOut,shrinkRow 777 s6Step351ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step351ExitGBefore s6Step351ExitGRow 95 s6Step351ExitG_distinct s6Step351ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step351ExitGRow.payload.take 95) s6Step351ExitGRow.sign=s6Step351ExitGOut := by decide +kernel
  have hi : s6Step351ExitGRow.payload.drop 95=s6Step351ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step351ExitG_retired] at result
  exact result

private def s6Step351ExitGvBefore : Arena := s6Step351ExitFAfter

private theorem s6Step351ExitGv_Incoming : rowsOwned s6Step351ExitGvBefore [s6Step351ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step351ExitGRow,s6Step351ExitFRow,s6Step351ExitFvRow,s6Step351ExitGvRow] 3 s6Step351ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step351ExitGvBefore (fun q => (0≤q ∧ q<95) ∨ (96≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step351ExitGv_Outgoing : rowsOwned s6Step351ExitGvAfter [s6Step351ExitGvOut] :=
  hmrRows_owned_drop s6Step351ExitGvAfter [s6Step351ExitGOut,s6Step351ExitFOut,s6Step351ExitFvOut,s6Step351ExitGvOut] 3 s6Step351ExitBank_outgoingOwned

private theorem s6Step351ExitGv_distinct : (s6Step351ExitGvRow.sign::s6Step351ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351ExitGv_owned : (s6Step351ExitGvRow.sign::s6Step351ExitGvRow.payload).toFinset⊆s6Step351ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step351ExitGvBefore (fun q => (0≤q ∧ q<95) ∨ (96≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351ExitGv_reserved : s6Step351ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step351ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step351ExitGv_checked : planRowResizeLog s6Step351ExitGvBefore s6Step351ExitGvRow 192 []=
    some (s6Step351ExitGvAfter,s6Step351ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step351ExitGvBefore s6Step351ExitGvAfter s6Step351ExitGvRow 192 []
    s6Step351ExitGv_distinct s6Step351ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step351ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step351ExitGvRow.payload++[]) s6Step351ExitGvRow.sign=s6Step351ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step351ExitBank_rows : planWindowRowsLog s6Step351ExitGBefore [(s6Step351ExitGRow,95),(s6Step351ExitFRow,96),(s6Step351ExitFvRow,192),(s6Step351ExitGvRow,192)] [[],[],[],[]]=
    some (s6Step351ExitGvAfter,[s6Step351ExitGOut,s6Step351ExitFOut,s6Step351ExitFvOut,s6Step351ExitGvOut],(shrinkRow 777 s6Step351ExitGExtra ++ (shrinkRow 795 s6Step351ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step351ExitGvAfter [] []=some (s6Step351ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step351ExitGvBefore s6Step351ExitGvAfter s6Step351ExitGvAfter
    s6Step351ExitGvRow s6Step351ExitGvOut 192 [] [] [] []
    (growRow 775 []) ([]) s6Step351ExitGv_Incoming s6Step351ExitGv_checked h4 s6Step351ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step351ExitFvBefore s6Step351ExitFvAfter s6Step351ExitGvAfter
    s6Step351ExitFvRow s6Step351ExitFvOut 192 [] [(s6Step351ExitGvRow,192)] [[]] [s6Step351ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step351ExitFv_Incoming s6Step351ExitFv_checked h3 s6Step351ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step351ExitFBefore s6Step351ExitFAfter s6Step351ExitGvAfter
    s6Step351ExitFRow s6Step351ExitFOut 96 [] [(s6Step351ExitFvRow,192),(s6Step351ExitGvRow,192)] [[],[]] [s6Step351ExitFvOut,s6Step351ExitGvOut]
    (shrinkRow 795 s6Step351ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step351ExitF_Incoming s6Step351ExitF_checked h2 s6Step351ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step351ExitGBefore s6Step351ExitGAfter s6Step351ExitGvAfter
    s6Step351ExitGRow s6Step351ExitGOut 95 [] [(s6Step351ExitFRow,96),(s6Step351ExitFvRow,192),(s6Step351ExitGvRow,192)] [[],[],[]] [s6Step351ExitFOut,s6Step351ExitFvOut,s6Step351ExitGvOut]
    (shrinkRow 777 s6Step351ExitGExtra) ((shrinkRow 795 s6Step351ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step351ExitG_Incoming s6Step351ExitG_checked h1 s6Step351ExitG_Outgoing
  exact h0

private theorem s6Step351ExitBank_checked : compileHmrBankResizeLog .exit s6Step351ExitGBefore ⟨s6Step351ExitFRow,s6Step351ExitGRow,s6Step351ExitFvRow,s6Step351ExitGvRow⟩ ⟨96,95,192,192⟩ [[],[],[],[]]=
    some (s6Step351ExitGvAfter,⟨s6Step351ExitFOut,s6Step351ExitGOut,s6Step351ExitFvOut,s6Step351ExitGvOut⟩,(shrinkRow 777 s6Step351ExitGExtra ++ (shrinkRow 795 s6Step351ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step351ExitBank_rows]
  rfl

private theorem s6Step351Add0_apart : Disjoint s6Step351Add0Arena.live s6Step351Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step351Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351Add0_card : s6Step351Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step351Add0_borrowed : s6Step351Add0Arena.checkBorrow (hmrHybridCount s6Step351Add0Arena s6Step351Add0B.length) s6Step351Add0Work=some s6Step351Add0During := by
  have len : s6Step351Add0Work.length=hmrHybridCount s6Step351Add0Arena s6Step351Add0B.length := by
    rw [hmrHybridCount,s6Step351Add0_card]
    decide +kernel
  have nd : s6Step351Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step351Add0Arena s6Step351Add0During s6Step351Add0Work.toFinset s6Step351Add0_bounded s6Step351Add0_apart rfl

private theorem s6Step351Add0_distinct : (881::873::927::(s6Step351Add0A++s6Step351Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351Add0_owned : (881::873::927::(s6Step351Add0A++s6Step351Add0B)).toFinset⊆s6Step351Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step351Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351Add0_checked : compileHmrHybridCinLog s6Step351Add0Arena 873 881 927 s6Step351Add0A s6Step351Add0B s6Step351Add0Work=some s6Step351Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step351Add0Arena s6Step351Add0During 873 881 927 s6Step351Add0A s6Step351Add0B s6Step351Add0Work
    (by decide +kernel) (by decide +kernel) s6Step351Add0_distinct
    (fun q hq => s6Step351Add0_owned (List.mem_toFinset.mpr hq)) s6Step351Add0_borrowed

private theorem s6Step351Add1_apart : Disjoint s6Step351Add1Arena.live s6Step351Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step351Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351Add1_card : s6Step351Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step351Add1_borrowed : s6Step351Add1Arena.checkBorrow (hmrHybridCount s6Step351Add1Arena s6Step351Add1B.length) s6Step351Add1Work=some s6Step351Add1During := by
  have len : s6Step351Add1Work.length=hmrHybridCount s6Step351Add1Arena s6Step351Add1B.length := by
    rw [hmrHybridCount,s6Step351Add1_card]
    decide +kernel
  have nd : s6Step351Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step351Add1Arena s6Step351Add1During s6Step351Add1Work.toFinset s6Step351Add1_bounded s6Step351Add1_apart rfl

private theorem s6Step351Add1_distinct : (881::873::927::(s6Step351Add1A++s6Step351Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351Add1_owned : (881::873::927::(s6Step351Add1A++s6Step351Add1B)).toFinset⊆s6Step351Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step351Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351Add1_checked : compileHmrHybridCinLog s6Step351Add1Arena 873 881 927 s6Step351Add1A s6Step351Add1B s6Step351Add1Work=some s6Step351Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step351Add1Arena s6Step351Add1During 873 881 927 s6Step351Add1A s6Step351Add1B s6Step351Add1Work
    (by decide +kernel) (by decide +kernel) s6Step351Add1_distinct
    (fun q hq => s6Step351Add1_owned (List.mem_toFinset.mpr hq)) s6Step351Add1_borrowed

private theorem s6Step351F4_apart : Disjoint (s6Step351Add0A++s6Step351Add0B).toFinset (s6Step351Add1A++s6Step351Add1B).toFinset := by
  have nd : ((s6Step351Add0A++s6Step351Add0B)++(s6Step351Add1A++s6Step351Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step351F4_carry : s6Step351F4FlagArena.checkBorrow 1 [927]=some s6Step351Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step351F4FlagArena,s6Step351HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step351F4FlagArena,s6Step351HeadFvAfter,s6Step351Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step351F4_distinct : (789::873::881::927::((s6Step351Add0A++s6Step351Add1A)++(s6Step351Add0B++s6Step351Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351F4_flag : s6Step351HeadFvAfter.checkBorrow 1 [881]=some s6Step351F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step351HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step351F4_owned : (789::873::((s6Step351Add0A++s6Step351Add1A)++(s6Step351Add0B++s6Step351Add1B))).toFinset⊆s6Step351HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step351HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351F4_checked : compileHmrHybridF4Log s6Step351HeadFvAfter 789 873 s6Step351Add0A s6Step351Add0B s6Step351Add1A s6Step351Add1B [881] [927] s6Step351Add0Work s6Step351Add1Work=some s6Step351F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step351HeadFvAfter s6Step351F4FlagArena s6Step351Add0Arena s6Step351Add0During s6Step351Add1During 789 873
    s6Step351Add0A s6Step351Add0B s6Step351Add1A s6Step351Add1B [881] [927] s6Step351Add0Work s6Step351Add1Work
    (fun q hq => s6Step351F4_owned (List.mem_toFinset.mpr hq)) s6Step351F4_flag s6Step351F4_carry
    s6Step351F4_distinct s6Step351F4_apart s6Step351Add0_checked s6Step351Add1_checked

private theorem s6Step351Front_branch : s6Step351FrontSigmaArena.checkBorrow 1 [873]=some s6Step351HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step351FrontSigmaArena,s6Step351EntryGvAfter,s6Step351EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step351FrontSigmaArena,s6Step351EntryGvAfter,s6Step351EntryFBefore,s6Step351HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step351Front_entry : HmrFrontEntryValid s6Step351EntryFBefore s6Step351FrontBank 96 191 ⟨96,95,192,192⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step351FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step351EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step351EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step351FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step351Front_sigma : s6Step351EntryGvAfter.checkBorrow 1 [789]=some s6Step351FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step351EntryGvAfter,s6Step351EntryFBefore,arenaWires]
  · rfl

private def s6Step351HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351HeadFBefore : Arena := s6Step351HeadGAfter

private def s6Step351HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩

private def s6Step351HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩

private def s6Step351HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95],777⟩

private def s6Step351HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813],775⟩

private theorem s6Step351HeadBank_incomingDistinct : ([s6Step351HeadGRow,s6Step351HeadFRow,s6Step351HeadGvRow,s6Step351HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351HeadF_Incoming : rowsOwned s6Step351HeadFBefore [s6Step351HeadFRow,s6Step351HeadGvRow,s6Step351HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step351HeadGRow,s6Step351HeadFRow,s6Step351HeadGvRow,s6Step351HeadFvRow] 1 s6Step351HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step351HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step351HeadBank_outgoingOwned : rowsOwned s6Step351HeadFvAfter [s6Step351HeadGOut,s6Step351HeadFOut,s6Step351HeadGvOut,s6Step351HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step351HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step351HeadF_Outgoing : rowsOwned s6Step351HeadFvAfter [s6Step351HeadFOut,s6Step351HeadGvOut,s6Step351HeadFvOut] :=
  hmrRows_owned_drop s6Step351HeadFvAfter [s6Step351HeadGOut,s6Step351HeadFOut,s6Step351HeadGvOut,s6Step351HeadFvOut] 1 s6Step351HeadBank_outgoingOwned

private theorem s6Step351HeadF_distinct : (s6Step351HeadFRow.sign::s6Step351HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351HeadF_owned : (s6Step351HeadFRow.sign::s6Step351HeadFRow.payload).toFinset⊆s6Step351HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step351HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351HeadF_reserved : s6Step351HeadFBefore.reserve s6Step351HeadFFresh.toFinset=some s6Step351HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step351HeadFFresh,arenaWires]
  · norm_num [s6Step351HeadFBefore,s6Step351HeadGAfter,s6Step351HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step351HeadFAfter,s6Step351HeadFBefore,s6Step351HeadGAfter,s6Step351HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step351HeadF_checked : planRowResizeLog s6Step351HeadFBefore s6Step351HeadFRow 97 s6Step351HeadFFresh=
    some (s6Step351HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 906],795⟩,growRow 795 s6Step351HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step351HeadFBefore s6Step351HeadFAfter s6Step351HeadFRow 97 s6Step351HeadFFresh
    s6Step351HeadF_distinct s6Step351HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step351HeadF_reserved
  have rowEq : WindowRow.mk (s6Step351HeadFRow.payload++s6Step351HeadFFresh) s6Step351HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 906],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step351HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step351HeadFvBefore : Arena := s6Step351HeadGvAfter

private theorem s6Step351HeadFv_Incoming : rowsOwned s6Step351HeadFvBefore [s6Step351HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step351HeadGRow,s6Step351HeadFRow,s6Step351HeadGvRow,s6Step351HeadFvRow] 3 s6Step351HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step351HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step351HeadFv_Outgoing : rowsOwned s6Step351HeadFvAfter [s6Step351HeadFvOut] :=
  hmrRows_owned_drop s6Step351HeadFvAfter [s6Step351HeadGOut,s6Step351HeadFOut,s6Step351HeadGvOut,s6Step351HeadFvOut] 3 s6Step351HeadBank_outgoingOwned

private theorem s6Step351HeadFv_distinct : (s6Step351HeadFvRow.sign::s6Step351HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351HeadFv_owned : (s6Step351HeadFvRow.sign::s6Step351HeadFvRow.payload).toFinset⊆s6Step351HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step351HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351HeadFv_reserved : s6Step351HeadFvBefore.reserve s6Step351HeadFvFresh.toFinset=some s6Step351HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step351HeadFvFresh,arenaWires]
  · norm_num [s6Step351HeadFvBefore,s6Step351HeadGvAfter,s6Step351HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step351HeadFvAfter,s6Step351HeadFvBefore,s6Step351HeadGvAfter,s6Step351HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step351HeadFv_checked : planRowResizeLog s6Step351HeadFvBefore s6Step351HeadFvRow 192 s6Step351HeadFvFresh=
    some (s6Step351HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882],776⟩,growRow 776 s6Step351HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step351HeadFvBefore s6Step351HeadFvAfter s6Step351HeadFvRow 192 s6Step351HeadFvFresh
    s6Step351HeadFv_distinct s6Step351HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step351HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step351HeadFvRow.payload++s6Step351HeadFvFresh) s6Step351HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step351HeadG_Incoming : rowsOwned s6Step351HeadGBefore [s6Step351HeadGRow,s6Step351HeadFRow,s6Step351HeadGvRow,s6Step351HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step351HeadGRow,s6Step351HeadFRow,s6Step351HeadGvRow,s6Step351HeadFvRow] 0 s6Step351HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step351HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step351HeadG_Outgoing : rowsOwned s6Step351HeadFvAfter [s6Step351HeadGOut,s6Step351HeadFOut,s6Step351HeadGvOut,s6Step351HeadFvOut] :=
  hmrRows_owned_drop s6Step351HeadFvAfter [s6Step351HeadGOut,s6Step351HeadFOut,s6Step351HeadGvOut,s6Step351HeadFvOut] 0 s6Step351HeadBank_outgoingOwned

private theorem s6Step351HeadG_distinct : (s6Step351HeadGRow.sign::s6Step351HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351HeadG_owned : (s6Step351HeadGRow.sign::s6Step351HeadGRow.payload).toFinset⊆s6Step351HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step351HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351HeadG_reserved : s6Step351HeadGBefore.reserve s6Step351HeadGFresh.toFinset=some s6Step351HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step351HeadGFresh,arenaWires]
  · norm_num [s6Step351HeadGBefore,s6Step351HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step351HeadGAfter,s6Step351HeadGBefore,s6Step351HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step351HeadG_checked : planRowResizeLog s6Step351HeadGBefore s6Step351HeadGRow 97 s6Step351HeadGFresh=
    some (s6Step351HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 817],777⟩,growRow 777 s6Step351HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step351HeadGBefore s6Step351HeadGAfter s6Step351HeadGRow 97 s6Step351HeadGFresh
    s6Step351HeadG_distinct s6Step351HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step351HeadG_reserved
  have rowEq : WindowRow.mk (s6Step351HeadGRow.payload++s6Step351HeadGFresh) s6Step351HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 817],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step351HeadGvBefore : Arena := s6Step351HeadFAfter

private theorem s6Step351HeadGv_Incoming : rowsOwned s6Step351HeadGvBefore [s6Step351HeadGvRow,s6Step351HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step351HeadGRow,s6Step351HeadFRow,s6Step351HeadGvRow,s6Step351HeadFvRow] 2 s6Step351HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step351HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step351HeadGv_Outgoing : rowsOwned s6Step351HeadFvAfter [s6Step351HeadGvOut,s6Step351HeadFvOut] :=
  hmrRows_owned_drop s6Step351HeadFvAfter [s6Step351HeadGOut,s6Step351HeadFOut,s6Step351HeadGvOut,s6Step351HeadFvOut] 2 s6Step351HeadBank_outgoingOwned

private theorem s6Step351HeadGv_distinct : (s6Step351HeadGvRow.sign::s6Step351HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step351HeadGv_owned : (s6Step351HeadGvRow.sign::s6Step351HeadGvRow.payload).toFinset⊆s6Step351HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step351HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step351HeadGv_reserved : s6Step351HeadGvBefore.reserve s6Step351HeadGvFresh.toFinset=some s6Step351HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step351HeadGvFresh,arenaWires]
  · norm_num [s6Step351HeadGvBefore,s6Step351HeadFAfter,s6Step351HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step351HeadGvAfter,s6Step351HeadGvBefore,s6Step351HeadFAfter,s6Step351HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step351HeadGv_checked : planRowResizeLog s6Step351HeadGvBefore s6Step351HeadGvRow 192 s6Step351HeadGvFresh=
    some (s6Step351HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809],775⟩,growRow 775 s6Step351HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step351HeadGvBefore s6Step351HeadGvAfter s6Step351HeadGvRow 192 s6Step351HeadGvFresh
    s6Step351HeadGv_distinct s6Step351HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step351HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step351HeadGvRow.payload++s6Step351HeadGvFresh) s6Step351HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step351HeadBank_rows : planWindowRowsLog s6Step351HeadGBefore [(s6Step351HeadGRow,97),(s6Step351HeadFRow,97),(s6Step351HeadGvRow,192),(s6Step351HeadFvRow,192)] [s6Step351HeadGFresh,s6Step351HeadFFresh,s6Step351HeadGvFresh,s6Step351HeadFvFresh]=
    some (s6Step351HeadFvAfter,[s6Step351HeadGOut,s6Step351HeadFOut,s6Step351HeadGvOut,s6Step351HeadFvOut],(growRow 777 s6Step351HeadGFresh ++ (growRow 795 s6Step351HeadFFresh ++ (growRow 775 s6Step351HeadGvFresh ++ (growRow 776 s6Step351HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step351HeadFvAfter [] []=some (s6Step351HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step351HeadFvBefore s6Step351HeadFvAfter s6Step351HeadFvAfter
    s6Step351HeadFvRow s6Step351HeadFvOut 192 s6Step351HeadFvFresh [] [] []
    (growRow 776 s6Step351HeadFvFresh) ([]) s6Step351HeadFv_Incoming s6Step351HeadFv_checked h4 s6Step351HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step351HeadGvBefore s6Step351HeadGvAfter s6Step351HeadFvAfter
    s6Step351HeadGvRow s6Step351HeadGvOut 192 s6Step351HeadGvFresh [(s6Step351HeadFvRow,192)] [s6Step351HeadFvFresh] [s6Step351HeadFvOut]
    (growRow 775 s6Step351HeadGvFresh) ((growRow 776 s6Step351HeadFvFresh ++ [])) s6Step351HeadGv_Incoming s6Step351HeadGv_checked h3 s6Step351HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step351HeadFBefore s6Step351HeadFAfter s6Step351HeadFvAfter
    s6Step351HeadFRow s6Step351HeadFOut 97 s6Step351HeadFFresh [(s6Step351HeadGvRow,192),(s6Step351HeadFvRow,192)] [s6Step351HeadGvFresh,s6Step351HeadFvFresh] [s6Step351HeadGvOut,s6Step351HeadFvOut]
    (growRow 795 s6Step351HeadFFresh) ((growRow 775 s6Step351HeadGvFresh ++ (growRow 776 s6Step351HeadFvFresh ++ []))) s6Step351HeadF_Incoming s6Step351HeadF_checked h2 s6Step351HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step351HeadGBefore s6Step351HeadGAfter s6Step351HeadFvAfter
    s6Step351HeadGRow s6Step351HeadGOut 97 s6Step351HeadGFresh [(s6Step351HeadFRow,97),(s6Step351HeadGvRow,192),(s6Step351HeadFvRow,192)] [s6Step351HeadFFresh,s6Step351HeadGvFresh,s6Step351HeadFvFresh] [s6Step351HeadFOut,s6Step351HeadGvOut,s6Step351HeadFvOut]
    (growRow 777 s6Step351HeadGFresh) ((growRow 795 s6Step351HeadFFresh ++ (growRow 775 s6Step351HeadGvFresh ++ (growRow 776 s6Step351HeadFvFresh ++ [])))) s6Step351HeadG_Incoming s6Step351HeadG_checked h1 s6Step351HeadG_Outgoing
  exact h0

private theorem s6Step351HeadBank_checked : compileHmrBankResizeLog .headroom s6Step351HeadGBefore ⟨s6Step351HeadFRow,s6Step351HeadGRow,s6Step351HeadFvRow,s6Step351HeadGvRow⟩ ⟨97,97,192,192⟩ [s6Step351HeadGFresh,s6Step351HeadFFresh,s6Step351HeadGvFresh,s6Step351HeadFvFresh]=
    some (s6Step351HeadFvAfter,⟨s6Step351HeadFOut,s6Step351HeadGOut,s6Step351HeadFvOut,s6Step351HeadGvOut⟩,(growRow 777 s6Step351HeadGFresh ++ (growRow 795 s6Step351HeadFFresh ++ (growRow 775 s6Step351HeadGvFresh ++ (growRow 776 s6Step351HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step351HeadBank_rows]
  rfl

private theorem s6Step351Front_checked : compileHmrSourceFrontLog s6Step351EntryFBefore s6Step351FrontBank 96 191 ⟨96,95,192,192⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step351FrontLog=some s6Step351FrontPlan := by
  have pairEq : s6Step351FrontPair=⟨s6Step351HeadFRow,s6Step351HeadGRow,s6Step351HeadFvRow,s6Step351HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step351FrontHead=⟨s6Step351ExitFRow,s6Step351ExitGRow,s6Step351ExitFvRow,s6Step351ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step351Add0A=s6Step351FrontHead.f.wires := by decide +kernel
  have gEq : s6Step351Add0B=s6Step351FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step351Add1A=s6Step351FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step351Add1B=s6Step351FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step351EntryFBefore s6Step351FrontBank 96 191 ⟨96,95,192,192⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step351FrontLog s6Step351FrontPlan
  · exact s6Step351Front_entry
  · exact s6Step351EntryBank_checked
  · exact s6Step351Front_sigma
  · rfl
  · exact s6Step351Front_branch
  · rfl
  · simpa only [s6Step351FrontPlan,pairEq] using s6Step351HeadBank_checked
  · simpa only [s6Step351FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step351F4_checked
  · exact s6Step351Counter_checked
  · rfl
  · simpa only [s6Step351FrontPlan,headEq] using s6Step351ExitBank_checked

private theorem s6Step351Complete_explicit_checked : compileHmrEarlyStepLog s6Step351EntryFBefore s6Step351FrontBank 96 191 ⟨96,95,192,192⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step351CompleteLog=some s6Step351CompletePlan := by
  let Q := s6Step351EarlyControlPlan
  have hq := s6Step351EarlyControl_plan_checked
  have fv1 : s6Step351CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step351CompleteOut.fv.payload[2]?.getD s6Step351CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step351CompleteOut.fv.payload[3]?.getD s6Step351CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step351CompleteOut.fv.payload[4]?.getD s6Step351CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step351EntryFBefore s6Step351EarlyControlArena s6Step351FrontBank 96 191 ⟨96,95,192,192⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step351CompleteLog s6Step351FrontPlan Q
    s6Step351Front_checked s6Step351Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step351Complete_owned s6Step351Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step351EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 s6Step351CompleteOut.fv.second (s6Step351CompleteOut.fv.payload[2]?.getD s6Step351CompleteOut.fv.sign) (s6Step351CompleteOut.fv.payload[3]?.getD s6Step351CompleteOut.fv.sign) (s6Step351CompleteOut.fv.payload[4]?.getD s6Step351CompleteOut.fv.sign) 873 60 s6Step351EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep351Arena : Arena := s6Step351EntryFBefore
def s6PrivateStep351Bank : WindowBank := s6Step351FrontBank
def s6PrivateStep351Spec : HmrSourceWalkStepLog := ⟨96,191,⟨96,95,192,192⟩,60,.early s6Step351CompleteLog⟩
def s6PrivateStep351Plan : HmrSourceStepPlan := .early s6Step351CompletePlan
theorem s6PrivateStep351_source : s6PrivateStep351Spec=s6ObservedLogs336[15] := rfl
theorem s6PrivateStep351_checked : compileHmrSourceStepLog s6PrivateStep351Arena s6PrivateStep351Bank
    s6PrivateStep351Spec.fgWidth s6PrivateStep351Spec.vWidth s6PrivateStep351Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 351 s6PrivateStep351Spec.need none s6PrivateStep351Spec.log=some s6PrivateStep351Plan := by
  change compileHmrSourceStepLog s6Step351EntryFBefore s6Step351FrontBank 96 191 ⟨96,95,192,192⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 351 60 none (.early s6Step351CompleteLog)=some (.early s6Step351CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 351<498)]
  rw [s6Step351Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
