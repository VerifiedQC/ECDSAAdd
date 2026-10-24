import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep348
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

private def s6Step350CompleteMoves : List (Wire × Wire) := []

private def s6Step350EarlyControlLog : HmrEarlyControlLog := ⟨[817, 906, 809, 882, 881],[927],[805],[802, 843, 877, 792, 816, 819],[]⟩

private def s6Step350FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [813]],[[882], [809], [817], [906]],[[], [], [], []]⟩,[873],[789],[881],[927],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[881, 927, 805, 802]⟩

private def s6Step350CompleteLog : HmrEarlyStepLog := ⟨s6Step350FrontLog,s6Step350CompleteMoves,s6Step350EarlyControlLog⟩

private def s6Step350ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩

private def s6Step350ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩

private def s6Step350ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95],777⟩

private def s6Step350ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813],775⟩

private def s6Step350FrontOut : WindowBank := ⟨s6Step350ExitFOut,s6Step350ExitGOut,s6Step350ExitFvOut,s6Step350ExitGvOut⟩

private def s6Step350CompleteOut : WindowBank := s6Step350FrontOut.repacked s6Step350CompleteMoves

private def s6Step350EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step350EarlyControlPositiveArena,[927],s6Step350EarlyControlEqualityArena,[805],⟨⟨873,false⟩,[⟨⟨927,false⟩,805⟩]⟩⟩

private def s6Step350EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,817⟩,⟨⟨772,false⟩,906⟩,⟨⟨771,false⟩,809⟩,⟨⟨770,false⟩,882⟩,⟨⟨769,false⟩,881⟩]⟩

private def s6Step350EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step350EarlyControlZeroArena,s6Step350EarlyControlZeroPlan,s6Step350EarlyControlClassPlan,s6Step350EarlyControlFlagArena,s6Step350EarlyControlFittedArena,s6Step350EarlyControlHistoryArena,s6Step350EarlyControlSigmaArena,s6Step350EarlyControlOutputArena,s6Step350EarlyControlLog⟩

private def s6Step350CounterWork : List Wire := [881, 927, 805, 802]

private theorem s6Step350Counter_bounded : s6Step350CounterWork.toFinset⊆arenaWires := by norm_num [s6Step350CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step350HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350CounterDuring : Arena := ⟨s6Step350HeadFvAfter.live∪s6Step350CounterWork.toFinset,Finset.union_subset s6Step350HeadFvAfter.bounded s6Step350Counter_bounded⟩

private def s6Step350EntryFFresh : List Wire := []

private def s6Step350EntryFvFresh : List Wire := []

private def s6Step350EntryGFresh : List Wire := []

private def s6Step350EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350EntryGvFresh : List Wire := [813]

private def s6Step350ExitFExtra : List Wire := [809]

private def s6Step350ExitFvExtra : List Wire := [906]

private def s6Step350ExitGExtra : List Wire := [882]

private def s6Step350ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350ExitGvExtra : List Wire := [817]

private def s6Step350Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350Add0Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step350Add0_bounded : s6Step350Add0Work.toFinset⊆arenaWires := by
  have h : s6Step350Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step350Add0During : Arena := ⟨s6Step350Add0Arena.live∪s6Step350Add0Work.toFinset,Finset.union_subset s6Step350Add0Arena.bounded s6Step350Add0_bounded⟩

private def s6Step350Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350Add1Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step350Add1_bounded : s6Step350Add1Work.toFinset⊆arenaWires := by
  have h : s6Step350Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step350Add1During : Arena := ⟨s6Step350Add1Arena.live∪s6Step350Add1Work.toFinset,Finset.union_subset s6Step350Add1Arena.bounded s6Step350Add1_bounded⟩

private def s6Step350F4FlagArena : Arena := ⟨s6Step350HeadFvAfter.live∪{881},Finset.union_subset s6Step350HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step350F4Plan : HmrHybridF4Plan := ⟨s6Step350F4FlagArena,[881],s6Step350Add0Arena,[927],s6Step350Add0During,s6Step350Add0Work,s6Step350Add1During,s6Step350Add1Work⟩

private def s6Step350HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 809],795⟩

private def s6Step350HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 906],776⟩

private def s6Step350HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 882],777⟩

private def s6Step350HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 817],775⟩

private def s6Step350FrontHead : WindowBank := ⟨s6Step350HeadFOut,s6Step350HeadGOut,s6Step350HeadFvOut,s6Step350HeadGvOut⟩

private def s6Step350EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩

private def s6Step350EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩

private def s6Step350EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95],777⟩

private def s6Step350EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813],775⟩

private def s6Step350FrontPair : WindowBank := ⟨s6Step350EntryFOut,s6Step350EntryGOut,s6Step350EntryFvOut,s6Step350EntryGvOut⟩

private def s6Step350FrontSigmaArena : Arena := ⟨s6Step350EntryGvAfter.live∪{873},Finset.union_subset s6Step350EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step350HeadFFresh : List Wire := [809]

private def s6Step350HeadFvFresh : List Wire := [906]

private def s6Step350HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350HeadGFresh : List Wire := [882]

private def s6Step350HeadGvFresh : List Wire := [817]

private def s6Step350FrontPlan : HmrSourceFront := ⟨s6Step350EntryGvAfter,s6Step350FrontPair,(growRow 795 s6Step350EntryFFresh ++ (growRow 777 s6Step350EntryGFresh ++ (growRow 776 s6Step350EntryFvFresh ++ (growRow 775 s6Step350EntryGvFresh ++ [])))),s6Step350FrontSigmaArena,[873],s6Step350HeadGBefore,[789],
  s6Step350HeadFvAfter,s6Step350FrontHead,(growRow 777 s6Step350HeadGFresh ++ (growRow 795 s6Step350HeadFFresh ++ (growRow 775 s6Step350HeadGvFresh ++ (growRow 776 s6Step350HeadFvFresh ++ [])))),s6Step350F4Plan,s6Step350CounterDuring,s6Step350CounterWork,s6Step350ExitGvAfter,s6Step350FrontOut,(shrinkRow 777 s6Step350ExitGExtra ++ (shrinkRow 795 s6Step350ExitFExtra ++ (shrinkRow 776 s6Step350ExitFvExtra ++ (shrinkRow 775 s6Step350ExitGvExtra ++ []))))⟩

private def s6Step350CompletePlan : HmrEarlyStepPlan := ⟨s6Step350FrontPlan,s6Step350EarlyControlArena,s6Step350EarlyControlPlan,s6Step350CompleteMoves⟩

private theorem s6Step350Complete_apart : List.Disjoint (s6Step350CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [873, 789, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step350CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[873, 789, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step350Complete_owned : (s6Step350CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step350EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step350EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350Complete_repack : s6Step350ExitGvAfter.checkRepack s6Step350CompleteMoves=some s6Step350EarlyControlArena := by rfl

private theorem s6Step350EarlyControl_branchOwned : ([789] : List Wire).toFinset⊆s6Step350EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step350EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350EarlyControl_branch : compileHmrBranchRetirement s6Step350EarlyControlSigmaArena 789=some s6Step350EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step350EarlyControl_branchOwned
  · ext q
    simp [s6Step350EarlyControlOutputArena,s6Step350EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step350EarlyControl_classEqualityBorrow : s6Step350EarlyControlPositiveArena.checkBorrow (([873, 927] : List Wire).length-1) s6Step350EarlyControlLog.classWork=some s6Step350EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step350EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step350EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step350EarlyControlEqualityArena,s6Step350EarlyControlPositiveArena,s6Step350EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step350EarlyControl_classEqualityOwned : ([873, 927] : List Wire).toFinset⊆s6Step350EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step350EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350EarlyControl_classEquality : compileHmrEqualityLog s6Step350EarlyControlPositiveArena [873, 927] 0 s6Step350EarlyControlLog.classWork=some (s6Step350EarlyControlEqualityArena,s6Step350EarlyControlLog.classWork,s6Step350EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step350EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step350EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step350EarlyControl_classOwned : ([769, 881, 873] : List Wire).toFinset⊆s6Step350EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step350EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350EarlyControl_positiveBorrow : s6Step350EarlyControlZeroArena.checkBorrow (1) s6Step350EarlyControlLog.positiveWork=some s6Step350EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step350EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step350EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step350EarlyControlPositiveArena,s6Step350EarlyControlZeroArena,s6Step350EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step350EarlyControl_class : compileHmrSourceClassLog s6Step350EarlyControlZeroArena false 769 s6Step350EarlyControlZeroPlan.top 0 873 s6Step350EarlyControlLog.positiveWork s6Step350EarlyControlLog.classWork=some s6Step350EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step350EarlyControlClassPlan s6Step350EarlyControlZeroArena false 769 s6Step350EarlyControlZeroPlan.top 0 873
  constructor
  · decide +kernel
  · exact s6Step350EarlyControl_classOwned
  · exact s6Step350EarlyControl_positiveBorrow
  · exact s6Step350EarlyControl_classEquality

private theorem s6Step350EarlyControl_entryRecordOwned : ([789, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step350EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step350EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350EarlyControl_entrySigmaOwned : ([873, 254] : List Wire).toFinset⊆s6Step350EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step350EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350EarlyControl_fitBorrow : s6Step350EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step350EarlyControlLog.recordFresh=some s6Step350EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step350EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step350EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step350EarlyControlFittedArena,s6Step350EarlyControlFlagArena,s6Step350EarlyControlLog,arenaWires]

private theorem s6Step350EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step350EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step350EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350EarlyControl_fit : compileHmrRecordGrowLog s6Step350EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step350EarlyControlLog.recordFresh=some s6Step350EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step350EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step350EarlyControl_fitBorrow

private theorem s6Step350EarlyControl_flagsBorrow : s6Step350EarlyControlEqualityArena.checkBorrow (6) s6Step350EarlyControlLog.flagWork=some s6Step350EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step350EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step350EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step350EarlyControlFlagArena,s6Step350EarlyControlEqualityArena,s6Step350EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step350EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step350EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step350EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350EarlyControl_flags : compileHmrFlagsLog s6Step350EarlyControlClassPlan.equalityArena s6Step350EarlyControlClassPlan.equality.top 253 252 251 s6Step350EarlyControlLog.flagWork=some s6Step350EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step350EarlyControl_flagsOwned⟩
  · exact s6Step350EarlyControl_flagsBorrow

private theorem s6Step350EarlyControl_historyBorrow : s6Step350EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step350EarlyControlLog.recordFresh=some s6Step350EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step350EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step350EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step350EarlyControlHistoryArena,s6Step350EarlyControlArena,s6Step350EarlyControlLog,arenaWires]

private theorem s6Step350EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step350EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step350EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350EarlyControl_history : compileHmrRecordGrowLog s6Step350EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step350EarlyControlLog.recordFresh=some s6Step350EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step350EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step350EarlyControl_historyBorrow

private theorem s6Step350EarlyControl_sigmaOwned : ([254, 873] : List Wire).toFinset⊆s6Step350EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step350EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350EarlyControl_sigmaReleaseOwned : ([873] : List Wire).toFinset⊆s6Step350EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step350EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350EarlyControl_sigmaRelease : s6Step350EarlyControlHistoryArena.release {873} (fun _ => false)=some s6Step350EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step350EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step350EarlyControlSigmaArena,s6Step350EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step350EarlyControl_sigma : compileHmrSigmaDropLog s6Step350EarlyControlHistoryArena false 0 0 254 873 []=some s6Step350EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step350EarlyControl_sigmaOwned⟩
  · exact s6Step350EarlyControl_sigmaRelease

private theorem s6Step350EarlyControl_zeroBorrow : s6Step350EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step350EarlyControlLog.zeroWork=some s6Step350EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step350EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step350EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step350EarlyControlZeroArena,s6Step350EarlyControlArena,s6Step350EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step350EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step350EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step350EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350EarlyControl_zero : compileHmrEqualityLog s6Step350EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step350EarlyControlLog.zeroWork=some (s6Step350EarlyControlZeroArena,s6Step350EarlyControlLog.zeroWork,s6Step350EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step350EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step350EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step350EarlyControl_logged : s6Step350EarlyControlPlan.Logged s6Step350EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 873 254 253 252 251 789 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step350EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step350EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step350EarlyControl_zero
  · exact s6Step350EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step350EarlyControl_flags
  · exact s6Step350EarlyControl_fit
  · exact s6Step350EarlyControl_history
  · exact s6Step350EarlyControl_sigma
  · exact s6Step350EarlyControl_branch

private theorem s6Step350EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step350EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 873 254 253 252 251 789 60 s6Step350EarlyControlLog=some s6Step350EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step350EarlyControlPlan s6Step350EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 873 254 253 252 251 789 60 s6Step350EarlyControl_logged

private def s6Step350EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩

private def s6Step350EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩

private def s6Step350EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95],777⟩

private def s6Step350EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩

private def s6Step350FrontBank : WindowBank := ⟨s6Step350EntryFRow,s6Step350EntryGRow,s6Step350EntryFvRow,s6Step350EntryGvRow⟩

private def s6Step350Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 809, 795]

private def s6Step350Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 882, 777]

private def s6Step350Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 906, 776]

private def s6Step350Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 817, 775]

private theorem s6Step350Counter_apart : Disjoint s6Step350HeadFvAfter.live s6Step350CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step350HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350Counter_borrowed : s6Step350HeadFvAfter.checkBorrow 4 s6Step350CounterWork=some s6Step350CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step350HeadFvAfter s6Step350CounterDuring s6Step350CounterWork.toFinset s6Step350Counter_bounded s6Step350Counter_apart rfl

private theorem s6Step350Counter_owned : (873::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step350HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step350HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350Counter_checked : compileHmrCounterStepLog s6Step350HeadFvAfter true 873 [774, 773, 772, 771, 770, 769] s6Step350CounterWork=some s6Step350CounterDuring := by
  have owned : ∀q∈873::[774, 773, 772, 771, 770, 769],q∈s6Step350HeadFvAfter.live := fun q hq => s6Step350Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step350Counter_borrowed

private def s6Step350EntryFAfter : Arena := s6Step350EntryFBefore

private theorem s6Step350EntryBank_incomingDistinct : ([s6Step350EntryFRow,s6Step350EntryGRow,s6Step350EntryFvRow,s6Step350EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350EntryF_Incoming : rowsOwned s6Step350EntryFBefore [s6Step350EntryFRow,s6Step350EntryGRow,s6Step350EntryFvRow,s6Step350EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step350EntryFRow,s6Step350EntryGRow,s6Step350EntryFvRow,s6Step350EntryGvRow] 0 s6Step350EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step350EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step350EntryBank_outgoingOwned : rowsOwned s6Step350EntryGvAfter [s6Step350EntryFOut,s6Step350EntryGOut,s6Step350EntryFvOut,s6Step350EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step350EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step350EntryF_Outgoing : rowsOwned s6Step350EntryGvAfter [s6Step350EntryFOut,s6Step350EntryGOut,s6Step350EntryFvOut,s6Step350EntryGvOut] :=
  hmrRows_owned_drop s6Step350EntryGvAfter [s6Step350EntryFOut,s6Step350EntryGOut,s6Step350EntryFvOut,s6Step350EntryGvOut] 0 s6Step350EntryBank_outgoingOwned

private theorem s6Step350EntryF_distinct : (s6Step350EntryFRow.sign::s6Step350EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350EntryF_owned : (s6Step350EntryFRow.sign::s6Step350EntryFRow.payload).toFinset⊆s6Step350EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step350EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350EntryF_reserved : s6Step350EntryFBefore.reserve s6Step350EntryFFresh.toFinset=some s6Step350EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step350EntryFFresh,arenaWires]
  · norm_num [s6Step350EntryFBefore,s6Step350EntryFFresh,arenaWires]
  · simp only [s6Step350EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step350EntryF_checked : planRowResizeLog s6Step350EntryFBefore s6Step350EntryFRow 96 s6Step350EntryFFresh=
    some (s6Step350EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩,growRow 795 s6Step350EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step350EntryFBefore s6Step350EntryFAfter s6Step350EntryFRow 96 s6Step350EntryFFresh
    s6Step350EntryF_distinct s6Step350EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step350EntryF_reserved
  have rowEq : WindowRow.mk (s6Step350EntryFRow.payload++s6Step350EntryFFresh) s6Step350EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step350EntryFvAfter : Arena := s6Step350EntryFBefore

private def s6Step350EntryFvBefore : Arena := s6Step350EntryFBefore

private theorem s6Step350EntryFv_Incoming : rowsOwned s6Step350EntryFvBefore [s6Step350EntryFvRow,s6Step350EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step350EntryFRow,s6Step350EntryGRow,s6Step350EntryFvRow,s6Step350EntryGvRow] 2 s6Step350EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step350EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step350EntryFv_Outgoing : rowsOwned s6Step350EntryGvAfter [s6Step350EntryFvOut,s6Step350EntryGvOut] :=
  hmrRows_owned_drop s6Step350EntryGvAfter [s6Step350EntryFOut,s6Step350EntryGOut,s6Step350EntryFvOut,s6Step350EntryGvOut] 2 s6Step350EntryBank_outgoingOwned

private theorem s6Step350EntryFv_distinct : (s6Step350EntryFvRow.sign::s6Step350EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350EntryFv_owned : (s6Step350EntryFvRow.sign::s6Step350EntryFvRow.payload).toFinset⊆s6Step350EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step350EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350EntryFv_reserved : s6Step350EntryFvBefore.reserve s6Step350EntryFvFresh.toFinset=some s6Step350EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step350EntryFvFresh,arenaWires]
  · norm_num [s6Step350EntryFvBefore,s6Step350EntryFBefore,s6Step350EntryFvFresh,arenaWires]
  · simp only [s6Step350EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step350EntryFv_checked : planRowResizeLog s6Step350EntryFvBefore s6Step350EntryFvRow 191 s6Step350EntryFvFresh=
    some (s6Step350EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩,growRow 776 s6Step350EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step350EntryFvBefore s6Step350EntryFvAfter s6Step350EntryFvRow 191 s6Step350EntryFvFresh
    s6Step350EntryFv_distinct s6Step350EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step350EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step350EntryFvRow.payload++s6Step350EntryFvFresh) s6Step350EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step350EntryGAfter : Arena := s6Step350EntryFBefore

private def s6Step350EntryGBefore : Arena := s6Step350EntryFBefore

private theorem s6Step350EntryG_Incoming : rowsOwned s6Step350EntryGBefore [s6Step350EntryGRow,s6Step350EntryFvRow,s6Step350EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step350EntryFRow,s6Step350EntryGRow,s6Step350EntryFvRow,s6Step350EntryGvRow] 1 s6Step350EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step350EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step350EntryG_Outgoing : rowsOwned s6Step350EntryGvAfter [s6Step350EntryGOut,s6Step350EntryFvOut,s6Step350EntryGvOut] :=
  hmrRows_owned_drop s6Step350EntryGvAfter [s6Step350EntryFOut,s6Step350EntryGOut,s6Step350EntryFvOut,s6Step350EntryGvOut] 1 s6Step350EntryBank_outgoingOwned

private theorem s6Step350EntryG_distinct : (s6Step350EntryGRow.sign::s6Step350EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350EntryG_owned : (s6Step350EntryGRow.sign::s6Step350EntryGRow.payload).toFinset⊆s6Step350EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step350EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350EntryG_reserved : s6Step350EntryGBefore.reserve s6Step350EntryGFresh.toFinset=some s6Step350EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step350EntryGFresh,arenaWires]
  · norm_num [s6Step350EntryGBefore,s6Step350EntryFBefore,s6Step350EntryGFresh,arenaWires]
  · simp only [s6Step350EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step350EntryG_checked : planRowResizeLog s6Step350EntryGBefore s6Step350EntryGRow 96 s6Step350EntryGFresh=
    some (s6Step350EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95],777⟩,growRow 777 s6Step350EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step350EntryGBefore s6Step350EntryGAfter s6Step350EntryGRow 96 s6Step350EntryGFresh
    s6Step350EntryG_distinct s6Step350EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step350EntryG_reserved
  have rowEq : WindowRow.mk (s6Step350EntryGRow.payload++s6Step350EntryGFresh) s6Step350EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step350EntryGvBefore : Arena := s6Step350EntryFBefore

private theorem s6Step350EntryGv_Incoming : rowsOwned s6Step350EntryGvBefore [s6Step350EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step350EntryFRow,s6Step350EntryGRow,s6Step350EntryFvRow,s6Step350EntryGvRow] 3 s6Step350EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step350EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step350EntryGv_Outgoing : rowsOwned s6Step350EntryGvAfter [s6Step350EntryGvOut] :=
  hmrRows_owned_drop s6Step350EntryGvAfter [s6Step350EntryFOut,s6Step350EntryGOut,s6Step350EntryFvOut,s6Step350EntryGvOut] 3 s6Step350EntryBank_outgoingOwned

private theorem s6Step350EntryGv_distinct : (s6Step350EntryGvRow.sign::s6Step350EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350EntryGv_owned : (s6Step350EntryGvRow.sign::s6Step350EntryGvRow.payload).toFinset⊆s6Step350EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step350EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350EntryGv_reserved : s6Step350EntryGvBefore.reserve s6Step350EntryGvFresh.toFinset=some s6Step350EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step350EntryGvFresh,arenaWires]
  · norm_num [s6Step350EntryGvBefore,s6Step350EntryFBefore,s6Step350EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step350EntryGvAfter,s6Step350EntryGvBefore,s6Step350EntryFBefore,s6Step350EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step350EntryGv_checked : planRowResizeLog s6Step350EntryGvBefore s6Step350EntryGvRow 191 s6Step350EntryGvFresh=
    some (s6Step350EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813],775⟩,growRow 775 s6Step350EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step350EntryGvBefore s6Step350EntryGvAfter s6Step350EntryGvRow 191 s6Step350EntryGvFresh
    s6Step350EntryGv_distinct s6Step350EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step350EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step350EntryGvRow.payload++s6Step350EntryGvFresh) s6Step350EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step350EntryBank_rows : planWindowRowsLog s6Step350EntryFBefore [(s6Step350EntryFRow,96),(s6Step350EntryGRow,96),(s6Step350EntryFvRow,191),(s6Step350EntryGvRow,191)] [s6Step350EntryFFresh,s6Step350EntryGFresh,s6Step350EntryFvFresh,s6Step350EntryGvFresh]=
    some (s6Step350EntryGvAfter,[s6Step350EntryFOut,s6Step350EntryGOut,s6Step350EntryFvOut,s6Step350EntryGvOut],(growRow 795 s6Step350EntryFFresh ++ (growRow 777 s6Step350EntryGFresh ++ (growRow 776 s6Step350EntryFvFresh ++ (growRow 775 s6Step350EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step350EntryGvAfter [] []=some (s6Step350EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step350EntryGvBefore s6Step350EntryGvAfter s6Step350EntryGvAfter
    s6Step350EntryGvRow s6Step350EntryGvOut 191 s6Step350EntryGvFresh [] [] []
    (growRow 775 s6Step350EntryGvFresh) ([]) s6Step350EntryGv_Incoming s6Step350EntryGv_checked h4 s6Step350EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step350EntryFvBefore s6Step350EntryFvAfter s6Step350EntryGvAfter
    s6Step350EntryFvRow s6Step350EntryFvOut 191 s6Step350EntryFvFresh [(s6Step350EntryGvRow,191)] [s6Step350EntryGvFresh] [s6Step350EntryGvOut]
    (growRow 776 s6Step350EntryFvFresh) ((growRow 775 s6Step350EntryGvFresh ++ [])) s6Step350EntryFv_Incoming s6Step350EntryFv_checked h3 s6Step350EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step350EntryGBefore s6Step350EntryGAfter s6Step350EntryGvAfter
    s6Step350EntryGRow s6Step350EntryGOut 96 s6Step350EntryGFresh [(s6Step350EntryFvRow,191),(s6Step350EntryGvRow,191)] [s6Step350EntryFvFresh,s6Step350EntryGvFresh] [s6Step350EntryFvOut,s6Step350EntryGvOut]
    (growRow 777 s6Step350EntryGFresh) ((growRow 776 s6Step350EntryFvFresh ++ (growRow 775 s6Step350EntryGvFresh ++ []))) s6Step350EntryG_Incoming s6Step350EntryG_checked h2 s6Step350EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step350EntryFBefore s6Step350EntryFAfter s6Step350EntryGvAfter
    s6Step350EntryFRow s6Step350EntryFOut 96 s6Step350EntryFFresh [(s6Step350EntryGRow,96),(s6Step350EntryFvRow,191),(s6Step350EntryGvRow,191)] [s6Step350EntryGFresh,s6Step350EntryFvFresh,s6Step350EntryGvFresh] [s6Step350EntryGOut,s6Step350EntryFvOut,s6Step350EntryGvOut]
    (growRow 795 s6Step350EntryFFresh) ((growRow 777 s6Step350EntryGFresh ++ (growRow 776 s6Step350EntryFvFresh ++ (growRow 775 s6Step350EntryGvFresh ++ [])))) s6Step350EntryF_Incoming s6Step350EntryF_checked h1 s6Step350EntryF_Outgoing
  exact h0

private theorem s6Step350EntryBank_checked : compileHmrBankResizeLog .entry s6Step350EntryFBefore ⟨s6Step350EntryFRow,s6Step350EntryGRow,s6Step350EntryFvRow,s6Step350EntryGvRow⟩ ⟨96,96,191,191⟩ [s6Step350EntryFFresh,s6Step350EntryGFresh,s6Step350EntryFvFresh,s6Step350EntryGvFresh]=
    some (s6Step350EntryGvAfter,⟨s6Step350EntryFOut,s6Step350EntryGOut,s6Step350EntryFvOut,s6Step350EntryGvOut⟩,(growRow 795 s6Step350EntryFFresh ++ (growRow 777 s6Step350EntryGFresh ++ (growRow 776 s6Step350EntryFvFresh ++ (growRow 775 s6Step350EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step350EntryBank_rows]
  rfl

private def s6Step350ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350ExitFBefore : Arena := s6Step350ExitGAfter

private def s6Step350ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 809],795⟩

private def s6Step350ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 906],776⟩

private def s6Step350ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 882],777⟩

private def s6Step350ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 817],775⟩

private theorem s6Step350ExitBank_incomingDistinct : ([s6Step350ExitGRow,s6Step350ExitFRow,s6Step350ExitFvRow,s6Step350ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350ExitF_Incoming : rowsOwned s6Step350ExitFBefore [s6Step350ExitFRow,s6Step350ExitFvRow,s6Step350ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step350ExitGRow,s6Step350ExitFRow,s6Step350ExitFvRow,s6Step350ExitGvRow] 1 s6Step350ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step350ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step350ExitBank_outgoingOwned : rowsOwned s6Step350ExitGvAfter [s6Step350ExitGOut,s6Step350ExitFOut,s6Step350ExitFvOut,s6Step350ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step350ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step350ExitF_Outgoing : rowsOwned s6Step350ExitGvAfter [s6Step350ExitFOut,s6Step350ExitFvOut,s6Step350ExitGvOut] :=
  hmrRows_owned_drop s6Step350ExitGvAfter [s6Step350ExitGOut,s6Step350ExitFOut,s6Step350ExitFvOut,s6Step350ExitGvOut] 1 s6Step350ExitBank_outgoingOwned

private theorem s6Step350ExitF_distinct : (s6Step350ExitFRow.sign::s6Step350ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350ExitF_owned : (s6Step350ExitFRow.sign::s6Step350ExitFRow.payload).toFinset⊆s6Step350ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step350ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350ExitF_retired : s6Step350ExitFBefore.retireSet s6Step350ExitFExtra.toFinset=s6Step350ExitFAfter := by
  unfold Arena.retireSet s6Step350ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step350ExitFBefore,s6Step350ExitGAfter,s6Step350ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step350ExitF_checked : planRowResizeLog s6Step350ExitFBefore s6Step350ExitFRow 96 []=
    some (s6Step350ExitFAfter,s6Step350ExitFOut,shrinkRow 795 s6Step350ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step350ExitFBefore s6Step350ExitFRow 96 s6Step350ExitF_distinct s6Step350ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step350ExitFRow.payload.take 96) s6Step350ExitFRow.sign=s6Step350ExitFOut := by decide +kernel
  have hi : s6Step350ExitFRow.payload.drop 96=s6Step350ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step350ExitF_retired] at result
  exact result

private def s6Step350ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350ExitFvBefore : Arena := s6Step350ExitFAfter

private theorem s6Step350ExitFv_Incoming : rowsOwned s6Step350ExitFvBefore [s6Step350ExitFvRow,s6Step350ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step350ExitGRow,s6Step350ExitFRow,s6Step350ExitFvRow,s6Step350ExitGvRow] 2 s6Step350ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step350ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step350ExitFv_Outgoing : rowsOwned s6Step350ExitGvAfter [s6Step350ExitFvOut,s6Step350ExitGvOut] :=
  hmrRows_owned_drop s6Step350ExitGvAfter [s6Step350ExitGOut,s6Step350ExitFOut,s6Step350ExitFvOut,s6Step350ExitGvOut] 2 s6Step350ExitBank_outgoingOwned

private theorem s6Step350ExitFv_distinct : (s6Step350ExitFvRow.sign::s6Step350ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350ExitFv_owned : (s6Step350ExitFvRow.sign::s6Step350ExitFvRow.payload).toFinset⊆s6Step350ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step350ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350ExitFv_retired : s6Step350ExitFvBefore.retireSet s6Step350ExitFvExtra.toFinset=s6Step350ExitFvAfter := by
  unfold Arena.retireSet s6Step350ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step350ExitFvBefore,s6Step350ExitFAfter,s6Step350ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step350ExitFv_checked : planRowResizeLog s6Step350ExitFvBefore s6Step350ExitFvRow 191 []=
    some (s6Step350ExitFvAfter,s6Step350ExitFvOut,shrinkRow 776 s6Step350ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step350ExitFvBefore s6Step350ExitFvRow 191 s6Step350ExitFv_distinct s6Step350ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step350ExitFvRow.payload.take 191) s6Step350ExitFvRow.sign=s6Step350ExitFvOut := by decide +kernel
  have hi : s6Step350ExitFvRow.payload.drop 191=s6Step350ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step350ExitFv_retired] at result
  exact result

private def s6Step350ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step350ExitG_Incoming : rowsOwned s6Step350ExitGBefore [s6Step350ExitGRow,s6Step350ExitFRow,s6Step350ExitFvRow,s6Step350ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step350ExitGRow,s6Step350ExitFRow,s6Step350ExitFvRow,s6Step350ExitGvRow] 0 s6Step350ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step350ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step350ExitG_Outgoing : rowsOwned s6Step350ExitGvAfter [s6Step350ExitGOut,s6Step350ExitFOut,s6Step350ExitFvOut,s6Step350ExitGvOut] :=
  hmrRows_owned_drop s6Step350ExitGvAfter [s6Step350ExitGOut,s6Step350ExitFOut,s6Step350ExitFvOut,s6Step350ExitGvOut] 0 s6Step350ExitBank_outgoingOwned

private theorem s6Step350ExitG_distinct : (s6Step350ExitGRow.sign::s6Step350ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350ExitG_owned : (s6Step350ExitGRow.sign::s6Step350ExitGRow.payload).toFinset⊆s6Step350ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step350ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350ExitG_retired : s6Step350ExitGBefore.retireSet s6Step350ExitGExtra.toFinset=s6Step350ExitGAfter := by
  unfold Arena.retireSet s6Step350ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step350ExitGBefore,s6Step350ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step350ExitG_checked : planRowResizeLog s6Step350ExitGBefore s6Step350ExitGRow 96 []=
    some (s6Step350ExitGAfter,s6Step350ExitGOut,shrinkRow 777 s6Step350ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step350ExitGBefore s6Step350ExitGRow 96 s6Step350ExitG_distinct s6Step350ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step350ExitGRow.payload.take 96) s6Step350ExitGRow.sign=s6Step350ExitGOut := by decide +kernel
  have hi : s6Step350ExitGRow.payload.drop 96=s6Step350ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step350ExitG_retired] at result
  exact result

private def s6Step350ExitGvBefore : Arena := s6Step350ExitFvAfter

private theorem s6Step350ExitGv_Incoming : rowsOwned s6Step350ExitGvBefore [s6Step350ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step350ExitGRow,s6Step350ExitFRow,s6Step350ExitFvRow,s6Step350ExitGvRow] 3 s6Step350ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step350ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step350ExitGv_Outgoing : rowsOwned s6Step350ExitGvAfter [s6Step350ExitGvOut] :=
  hmrRows_owned_drop s6Step350ExitGvAfter [s6Step350ExitGOut,s6Step350ExitFOut,s6Step350ExitFvOut,s6Step350ExitGvOut] 3 s6Step350ExitBank_outgoingOwned

private theorem s6Step350ExitGv_distinct : (s6Step350ExitGvRow.sign::s6Step350ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350ExitGv_owned : (s6Step350ExitGvRow.sign::s6Step350ExitGvRow.payload).toFinset⊆s6Step350ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step350ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350ExitGv_retired : s6Step350ExitGvBefore.retireSet s6Step350ExitGvExtra.toFinset=s6Step350ExitGvAfter := by
  unfold Arena.retireSet s6Step350ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step350ExitGvBefore,s6Step350ExitFvAfter,s6Step350ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step350ExitGv_checked : planRowResizeLog s6Step350ExitGvBefore s6Step350ExitGvRow 191 []=
    some (s6Step350ExitGvAfter,s6Step350ExitGvOut,shrinkRow 775 s6Step350ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step350ExitGvBefore s6Step350ExitGvRow 191 s6Step350ExitGv_distinct s6Step350ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step350ExitGvRow.payload.take 191) s6Step350ExitGvRow.sign=s6Step350ExitGvOut := by decide +kernel
  have hi : s6Step350ExitGvRow.payload.drop 191=s6Step350ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step350ExitGv_retired] at result
  exact result

private theorem s6Step350ExitBank_rows : planWindowRowsLog s6Step350ExitGBefore [(s6Step350ExitGRow,96),(s6Step350ExitFRow,96),(s6Step350ExitFvRow,191),(s6Step350ExitGvRow,191)] [[],[],[],[]]=
    some (s6Step350ExitGvAfter,[s6Step350ExitGOut,s6Step350ExitFOut,s6Step350ExitFvOut,s6Step350ExitGvOut],(shrinkRow 777 s6Step350ExitGExtra ++ (shrinkRow 795 s6Step350ExitFExtra ++ (shrinkRow 776 s6Step350ExitFvExtra ++ (shrinkRow 775 s6Step350ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step350ExitGvAfter [] []=some (s6Step350ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step350ExitGvBefore s6Step350ExitGvAfter s6Step350ExitGvAfter
    s6Step350ExitGvRow s6Step350ExitGvOut 191 [] [] [] []
    (shrinkRow 775 s6Step350ExitGvExtra) ([]) s6Step350ExitGv_Incoming s6Step350ExitGv_checked h4 s6Step350ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step350ExitFvBefore s6Step350ExitFvAfter s6Step350ExitGvAfter
    s6Step350ExitFvRow s6Step350ExitFvOut 191 [] [(s6Step350ExitGvRow,191)] [[]] [s6Step350ExitGvOut]
    (shrinkRow 776 s6Step350ExitFvExtra) ((shrinkRow 775 s6Step350ExitGvExtra ++ [])) s6Step350ExitFv_Incoming s6Step350ExitFv_checked h3 s6Step350ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step350ExitFBefore s6Step350ExitFAfter s6Step350ExitGvAfter
    s6Step350ExitFRow s6Step350ExitFOut 96 [] [(s6Step350ExitFvRow,191),(s6Step350ExitGvRow,191)] [[],[]] [s6Step350ExitFvOut,s6Step350ExitGvOut]
    (shrinkRow 795 s6Step350ExitFExtra) ((shrinkRow 776 s6Step350ExitFvExtra ++ (shrinkRow 775 s6Step350ExitGvExtra ++ []))) s6Step350ExitF_Incoming s6Step350ExitF_checked h2 s6Step350ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step350ExitGBefore s6Step350ExitGAfter s6Step350ExitGvAfter
    s6Step350ExitGRow s6Step350ExitGOut 96 [] [(s6Step350ExitFRow,96),(s6Step350ExitFvRow,191),(s6Step350ExitGvRow,191)] [[],[],[]] [s6Step350ExitFOut,s6Step350ExitFvOut,s6Step350ExitGvOut]
    (shrinkRow 777 s6Step350ExitGExtra) ((shrinkRow 795 s6Step350ExitFExtra ++ (shrinkRow 776 s6Step350ExitFvExtra ++ (shrinkRow 775 s6Step350ExitGvExtra ++ [])))) s6Step350ExitG_Incoming s6Step350ExitG_checked h1 s6Step350ExitG_Outgoing
  exact h0

private theorem s6Step350ExitBank_checked : compileHmrBankResizeLog .exit s6Step350ExitGBefore ⟨s6Step350ExitFRow,s6Step350ExitGRow,s6Step350ExitFvRow,s6Step350ExitGvRow⟩ ⟨96,96,191,191⟩ [[],[],[],[]]=
    some (s6Step350ExitGvAfter,⟨s6Step350ExitFOut,s6Step350ExitGOut,s6Step350ExitFvOut,s6Step350ExitGvOut⟩,(shrinkRow 777 s6Step350ExitGExtra ++ (shrinkRow 795 s6Step350ExitFExtra ++ (shrinkRow 776 s6Step350ExitFvExtra ++ (shrinkRow 775 s6Step350ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step350ExitBank_rows]
  rfl

private theorem s6Step350Add0_apart : Disjoint s6Step350Add0Arena.live s6Step350Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step350Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350Add0_card : s6Step350Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step350Add0_borrowed : s6Step350Add0Arena.checkBorrow (hmrHybridCount s6Step350Add0Arena s6Step350Add0B.length) s6Step350Add0Work=some s6Step350Add0During := by
  have len : s6Step350Add0Work.length=hmrHybridCount s6Step350Add0Arena s6Step350Add0B.length := by
    rw [hmrHybridCount,s6Step350Add0_card]
    decide +kernel
  have nd : s6Step350Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step350Add0Arena s6Step350Add0During s6Step350Add0Work.toFinset s6Step350Add0_bounded s6Step350Add0_apart rfl

private theorem s6Step350Add0_distinct : (881::789::927::(s6Step350Add0A++s6Step350Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350Add0_owned : (881::789::927::(s6Step350Add0A++s6Step350Add0B)).toFinset⊆s6Step350Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step350Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350Add0_checked : compileHmrHybridCinLog s6Step350Add0Arena 789 881 927 s6Step350Add0A s6Step350Add0B s6Step350Add0Work=some s6Step350Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step350Add0Arena s6Step350Add0During 789 881 927 s6Step350Add0A s6Step350Add0B s6Step350Add0Work
    (by decide +kernel) (by decide +kernel) s6Step350Add0_distinct
    (fun q hq => s6Step350Add0_owned (List.mem_toFinset.mpr hq)) s6Step350Add0_borrowed

private theorem s6Step350Add1_apart : Disjoint s6Step350Add1Arena.live s6Step350Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step350Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350Add1_card : s6Step350Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step350Add1_borrowed : s6Step350Add1Arena.checkBorrow (hmrHybridCount s6Step350Add1Arena s6Step350Add1B.length) s6Step350Add1Work=some s6Step350Add1During := by
  have len : s6Step350Add1Work.length=hmrHybridCount s6Step350Add1Arena s6Step350Add1B.length := by
    rw [hmrHybridCount,s6Step350Add1_card]
    decide +kernel
  have nd : s6Step350Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step350Add1Arena s6Step350Add1During s6Step350Add1Work.toFinset s6Step350Add1_bounded s6Step350Add1_apart rfl

private theorem s6Step350Add1_distinct : (881::789::927::(s6Step350Add1A++s6Step350Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350Add1_owned : (881::789::927::(s6Step350Add1A++s6Step350Add1B)).toFinset⊆s6Step350Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step350Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350Add1_checked : compileHmrHybridCinLog s6Step350Add1Arena 789 881 927 s6Step350Add1A s6Step350Add1B s6Step350Add1Work=some s6Step350Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step350Add1Arena s6Step350Add1During 789 881 927 s6Step350Add1A s6Step350Add1B s6Step350Add1Work
    (by decide +kernel) (by decide +kernel) s6Step350Add1_distinct
    (fun q hq => s6Step350Add1_owned (List.mem_toFinset.mpr hq)) s6Step350Add1_borrowed

private theorem s6Step350F4_apart : Disjoint (s6Step350Add0A++s6Step350Add0B).toFinset (s6Step350Add1A++s6Step350Add1B).toFinset := by
  have nd : ((s6Step350Add0A++s6Step350Add0B)++(s6Step350Add1A++s6Step350Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step350F4_carry : s6Step350F4FlagArena.checkBorrow 1 [927]=some s6Step350Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step350F4FlagArena,s6Step350HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step350F4FlagArena,s6Step350HeadFvAfter,s6Step350Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step350F4_distinct : (873::789::881::927::((s6Step350Add0A++s6Step350Add1A)++(s6Step350Add0B++s6Step350Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350F4_flag : s6Step350HeadFvAfter.checkBorrow 1 [881]=some s6Step350F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step350HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step350F4_owned : (873::789::((s6Step350Add0A++s6Step350Add1A)++(s6Step350Add0B++s6Step350Add1B))).toFinset⊆s6Step350HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step350HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350F4_checked : compileHmrHybridF4Log s6Step350HeadFvAfter 873 789 s6Step350Add0A s6Step350Add0B s6Step350Add1A s6Step350Add1B [881] [927] s6Step350Add0Work s6Step350Add1Work=some s6Step350F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step350HeadFvAfter s6Step350F4FlagArena s6Step350Add0Arena s6Step350Add0During s6Step350Add1During 873 789
    s6Step350Add0A s6Step350Add0B s6Step350Add1A s6Step350Add1B [881] [927] s6Step350Add0Work s6Step350Add1Work
    (fun q hq => s6Step350F4_owned (List.mem_toFinset.mpr hq)) s6Step350F4_flag s6Step350F4_carry
    s6Step350F4_distinct s6Step350F4_apart s6Step350Add0_checked s6Step350Add1_checked

private theorem s6Step350Front_branch : s6Step350FrontSigmaArena.checkBorrow 1 [789]=some s6Step350HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step350FrontSigmaArena,s6Step350EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step350FrontSigmaArena,s6Step350EntryGvAfter,s6Step350HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step350Front_entry : HmrFrontEntryValid s6Step350EntryFBefore s6Step350FrontBank 96 191 ⟨96,96,191,191⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step350FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step350EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step350EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step350FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step350Front_sigma : s6Step350EntryGvAfter.checkBorrow 1 [873]=some s6Step350FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step350EntryGvAfter,arenaWires]
  · rfl

private def s6Step350HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350HeadFBefore : Arena := s6Step350HeadGAfter

private def s6Step350HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩

private def s6Step350HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩

private def s6Step350HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95],777⟩

private def s6Step350HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813],775⟩

private theorem s6Step350HeadBank_incomingDistinct : ([s6Step350HeadGRow,s6Step350HeadFRow,s6Step350HeadGvRow,s6Step350HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350HeadF_Incoming : rowsOwned s6Step350HeadFBefore [s6Step350HeadFRow,s6Step350HeadGvRow,s6Step350HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step350HeadGRow,s6Step350HeadFRow,s6Step350HeadGvRow,s6Step350HeadFvRow] 1 s6Step350HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step350HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step350HeadBank_outgoingOwned : rowsOwned s6Step350HeadFvAfter [s6Step350HeadGOut,s6Step350HeadFOut,s6Step350HeadGvOut,s6Step350HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step350HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step350HeadF_Outgoing : rowsOwned s6Step350HeadFvAfter [s6Step350HeadFOut,s6Step350HeadGvOut,s6Step350HeadFvOut] :=
  hmrRows_owned_drop s6Step350HeadFvAfter [s6Step350HeadGOut,s6Step350HeadFOut,s6Step350HeadGvOut,s6Step350HeadFvOut] 1 s6Step350HeadBank_outgoingOwned

private theorem s6Step350HeadF_distinct : (s6Step350HeadFRow.sign::s6Step350HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350HeadF_owned : (s6Step350HeadFRow.sign::s6Step350HeadFRow.payload).toFinset⊆s6Step350HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step350HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350HeadF_reserved : s6Step350HeadFBefore.reserve s6Step350HeadFFresh.toFinset=some s6Step350HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step350HeadFFresh,arenaWires]
  · norm_num [s6Step350HeadFBefore,s6Step350HeadGAfter,s6Step350HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step350HeadFAfter,s6Step350HeadFBefore,s6Step350HeadGAfter,s6Step350HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step350HeadF_checked : planRowResizeLog s6Step350HeadFBefore s6Step350HeadFRow 97 s6Step350HeadFFresh=
    some (s6Step350HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 809],795⟩,growRow 795 s6Step350HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step350HeadFBefore s6Step350HeadFAfter s6Step350HeadFRow 97 s6Step350HeadFFresh
    s6Step350HeadF_distinct s6Step350HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step350HeadF_reserved
  have rowEq : WindowRow.mk (s6Step350HeadFRow.payload++s6Step350HeadFFresh) s6Step350HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 809],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step350HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step350HeadFvBefore : Arena := s6Step350HeadGvAfter

private theorem s6Step350HeadFv_Incoming : rowsOwned s6Step350HeadFvBefore [s6Step350HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step350HeadGRow,s6Step350HeadFRow,s6Step350HeadGvRow,s6Step350HeadFvRow] 3 s6Step350HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step350HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step350HeadFv_Outgoing : rowsOwned s6Step350HeadFvAfter [s6Step350HeadFvOut] :=
  hmrRows_owned_drop s6Step350HeadFvAfter [s6Step350HeadGOut,s6Step350HeadFOut,s6Step350HeadGvOut,s6Step350HeadFvOut] 3 s6Step350HeadBank_outgoingOwned

private theorem s6Step350HeadFv_distinct : (s6Step350HeadFvRow.sign::s6Step350HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350HeadFv_owned : (s6Step350HeadFvRow.sign::s6Step350HeadFvRow.payload).toFinset⊆s6Step350HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step350HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350HeadFv_reserved : s6Step350HeadFvBefore.reserve s6Step350HeadFvFresh.toFinset=some s6Step350HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step350HeadFvFresh,arenaWires]
  · norm_num [s6Step350HeadFvBefore,s6Step350HeadGvAfter,s6Step350HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step350HeadFvAfter,s6Step350HeadFvBefore,s6Step350HeadGvAfter,s6Step350HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step350HeadFv_checked : planRowResizeLog s6Step350HeadFvBefore s6Step350HeadFvRow 192 s6Step350HeadFvFresh=
    some (s6Step350HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 906],776⟩,growRow 776 s6Step350HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step350HeadFvBefore s6Step350HeadFvAfter s6Step350HeadFvRow 192 s6Step350HeadFvFresh
    s6Step350HeadFv_distinct s6Step350HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step350HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step350HeadFvRow.payload++s6Step350HeadFvFresh) s6Step350HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 906],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step350HeadG_Incoming : rowsOwned s6Step350HeadGBefore [s6Step350HeadGRow,s6Step350HeadFRow,s6Step350HeadGvRow,s6Step350HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step350HeadGRow,s6Step350HeadFRow,s6Step350HeadGvRow,s6Step350HeadFvRow] 0 s6Step350HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step350HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step350HeadG_Outgoing : rowsOwned s6Step350HeadFvAfter [s6Step350HeadGOut,s6Step350HeadFOut,s6Step350HeadGvOut,s6Step350HeadFvOut] :=
  hmrRows_owned_drop s6Step350HeadFvAfter [s6Step350HeadGOut,s6Step350HeadFOut,s6Step350HeadGvOut,s6Step350HeadFvOut] 0 s6Step350HeadBank_outgoingOwned

private theorem s6Step350HeadG_distinct : (s6Step350HeadGRow.sign::s6Step350HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350HeadG_owned : (s6Step350HeadGRow.sign::s6Step350HeadGRow.payload).toFinset⊆s6Step350HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step350HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350HeadG_reserved : s6Step350HeadGBefore.reserve s6Step350HeadGFresh.toFinset=some s6Step350HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step350HeadGFresh,arenaWires]
  · norm_num [s6Step350HeadGBefore,s6Step350HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step350HeadGAfter,s6Step350HeadGBefore,s6Step350HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step350HeadG_checked : planRowResizeLog s6Step350HeadGBefore s6Step350HeadGRow 97 s6Step350HeadGFresh=
    some (s6Step350HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 882],777⟩,growRow 777 s6Step350HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step350HeadGBefore s6Step350HeadGAfter s6Step350HeadGRow 97 s6Step350HeadGFresh
    s6Step350HeadG_distinct s6Step350HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step350HeadG_reserved
  have rowEq : WindowRow.mk (s6Step350HeadGRow.payload++s6Step350HeadGFresh) s6Step350HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 882],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step350HeadGvBefore : Arena := s6Step350HeadFAfter

private theorem s6Step350HeadGv_Incoming : rowsOwned s6Step350HeadGvBefore [s6Step350HeadGvRow,s6Step350HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step350HeadGRow,s6Step350HeadFRow,s6Step350HeadGvRow,s6Step350HeadFvRow] 2 s6Step350HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step350HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step350HeadGv_Outgoing : rowsOwned s6Step350HeadFvAfter [s6Step350HeadGvOut,s6Step350HeadFvOut] :=
  hmrRows_owned_drop s6Step350HeadFvAfter [s6Step350HeadGOut,s6Step350HeadFOut,s6Step350HeadGvOut,s6Step350HeadFvOut] 2 s6Step350HeadBank_outgoingOwned

private theorem s6Step350HeadGv_distinct : (s6Step350HeadGvRow.sign::s6Step350HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step350HeadGv_owned : (s6Step350HeadGvRow.sign::s6Step350HeadGvRow.payload).toFinset⊆s6Step350HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step350HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step350HeadGv_reserved : s6Step350HeadGvBefore.reserve s6Step350HeadGvFresh.toFinset=some s6Step350HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step350HeadGvFresh,arenaWires]
  · norm_num [s6Step350HeadGvBefore,s6Step350HeadFAfter,s6Step350HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step350HeadGvAfter,s6Step350HeadGvBefore,s6Step350HeadFAfter,s6Step350HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step350HeadGv_checked : planRowResizeLog s6Step350HeadGvBefore s6Step350HeadGvRow 192 s6Step350HeadGvFresh=
    some (s6Step350HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 817],775⟩,growRow 775 s6Step350HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step350HeadGvBefore s6Step350HeadGvAfter s6Step350HeadGvRow 192 s6Step350HeadGvFresh
    s6Step350HeadGv_distinct s6Step350HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step350HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step350HeadGvRow.payload++s6Step350HeadGvFresh) s6Step350HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 817],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step350HeadBank_rows : planWindowRowsLog s6Step350HeadGBefore [(s6Step350HeadGRow,97),(s6Step350HeadFRow,97),(s6Step350HeadGvRow,192),(s6Step350HeadFvRow,192)] [s6Step350HeadGFresh,s6Step350HeadFFresh,s6Step350HeadGvFresh,s6Step350HeadFvFresh]=
    some (s6Step350HeadFvAfter,[s6Step350HeadGOut,s6Step350HeadFOut,s6Step350HeadGvOut,s6Step350HeadFvOut],(growRow 777 s6Step350HeadGFresh ++ (growRow 795 s6Step350HeadFFresh ++ (growRow 775 s6Step350HeadGvFresh ++ (growRow 776 s6Step350HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step350HeadFvAfter [] []=some (s6Step350HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step350HeadFvBefore s6Step350HeadFvAfter s6Step350HeadFvAfter
    s6Step350HeadFvRow s6Step350HeadFvOut 192 s6Step350HeadFvFresh [] [] []
    (growRow 776 s6Step350HeadFvFresh) ([]) s6Step350HeadFv_Incoming s6Step350HeadFv_checked h4 s6Step350HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step350HeadGvBefore s6Step350HeadGvAfter s6Step350HeadFvAfter
    s6Step350HeadGvRow s6Step350HeadGvOut 192 s6Step350HeadGvFresh [(s6Step350HeadFvRow,192)] [s6Step350HeadFvFresh] [s6Step350HeadFvOut]
    (growRow 775 s6Step350HeadGvFresh) ((growRow 776 s6Step350HeadFvFresh ++ [])) s6Step350HeadGv_Incoming s6Step350HeadGv_checked h3 s6Step350HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step350HeadFBefore s6Step350HeadFAfter s6Step350HeadFvAfter
    s6Step350HeadFRow s6Step350HeadFOut 97 s6Step350HeadFFresh [(s6Step350HeadGvRow,192),(s6Step350HeadFvRow,192)] [s6Step350HeadGvFresh,s6Step350HeadFvFresh] [s6Step350HeadGvOut,s6Step350HeadFvOut]
    (growRow 795 s6Step350HeadFFresh) ((growRow 775 s6Step350HeadGvFresh ++ (growRow 776 s6Step350HeadFvFresh ++ []))) s6Step350HeadF_Incoming s6Step350HeadF_checked h2 s6Step350HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step350HeadGBefore s6Step350HeadGAfter s6Step350HeadFvAfter
    s6Step350HeadGRow s6Step350HeadGOut 97 s6Step350HeadGFresh [(s6Step350HeadFRow,97),(s6Step350HeadGvRow,192),(s6Step350HeadFvRow,192)] [s6Step350HeadFFresh,s6Step350HeadGvFresh,s6Step350HeadFvFresh] [s6Step350HeadFOut,s6Step350HeadGvOut,s6Step350HeadFvOut]
    (growRow 777 s6Step350HeadGFresh) ((growRow 795 s6Step350HeadFFresh ++ (growRow 775 s6Step350HeadGvFresh ++ (growRow 776 s6Step350HeadFvFresh ++ [])))) s6Step350HeadG_Incoming s6Step350HeadG_checked h1 s6Step350HeadG_Outgoing
  exact h0

private theorem s6Step350HeadBank_checked : compileHmrBankResizeLog .headroom s6Step350HeadGBefore ⟨s6Step350HeadFRow,s6Step350HeadGRow,s6Step350HeadFvRow,s6Step350HeadGvRow⟩ ⟨97,97,192,192⟩ [s6Step350HeadGFresh,s6Step350HeadFFresh,s6Step350HeadGvFresh,s6Step350HeadFvFresh]=
    some (s6Step350HeadFvAfter,⟨s6Step350HeadFOut,s6Step350HeadGOut,s6Step350HeadFvOut,s6Step350HeadGvOut⟩,(growRow 777 s6Step350HeadGFresh ++ (growRow 795 s6Step350HeadFFresh ++ (growRow 775 s6Step350HeadGvFresh ++ (growRow 776 s6Step350HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step350HeadBank_rows]
  rfl

private theorem s6Step350Front_checked : compileHmrSourceFrontLog s6Step350EntryFBefore s6Step350FrontBank 96 191 ⟨96,96,191,191⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step350FrontLog=some s6Step350FrontPlan := by
  have pairEq : s6Step350FrontPair=⟨s6Step350HeadFRow,s6Step350HeadGRow,s6Step350HeadFvRow,s6Step350HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step350FrontHead=⟨s6Step350ExitFRow,s6Step350ExitGRow,s6Step350ExitFvRow,s6Step350ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step350Add0A=s6Step350FrontHead.f.wires := by decide +kernel
  have gEq : s6Step350Add0B=s6Step350FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step350Add1A=s6Step350FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step350Add1B=s6Step350FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step350EntryFBefore s6Step350FrontBank 96 191 ⟨96,96,191,191⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step350FrontLog s6Step350FrontPlan
  · exact s6Step350Front_entry
  · exact s6Step350EntryBank_checked
  · exact s6Step350Front_sigma
  · rfl
  · exact s6Step350Front_branch
  · rfl
  · simpa only [s6Step350FrontPlan,pairEq] using s6Step350HeadBank_checked
  · simpa only [s6Step350FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step350F4_checked
  · exact s6Step350Counter_checked
  · rfl
  · simpa only [s6Step350FrontPlan,headEq] using s6Step350ExitBank_checked

private theorem s6Step350Complete_explicit_checked : compileHmrEarlyStepLog s6Step350EntryFBefore s6Step350FrontBank 96 191 ⟨96,96,191,191⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step350CompleteLog=some s6Step350CompletePlan := by
  let Q := s6Step350EarlyControlPlan
  have hq := s6Step350EarlyControl_plan_checked
  have fv1 : s6Step350CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step350CompleteOut.fv.payload[2]?.getD s6Step350CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step350CompleteOut.fv.payload[3]?.getD s6Step350CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step350CompleteOut.fv.payload[4]?.getD s6Step350CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step350EntryFBefore s6Step350EarlyControlArena s6Step350FrontBank 96 191 ⟨96,96,191,191⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step350CompleteLog s6Step350FrontPlan Q
    s6Step350Front_checked s6Step350Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step350Complete_owned s6Step350Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step350EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 873 s6Step350CompleteOut.fv.second (s6Step350CompleteOut.fv.payload[2]?.getD s6Step350CompleteOut.fv.sign) (s6Step350CompleteOut.fv.payload[3]?.getD s6Step350CompleteOut.fv.sign) (s6Step350CompleteOut.fv.payload[4]?.getD s6Step350CompleteOut.fv.sign) 789 60 s6Step350EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep350Arena : Arena := s6Step350EntryFBefore
def s6PrivateStep350Bank : WindowBank := s6Step350FrontBank
def s6PrivateStep350Spec : HmrSourceWalkStepLog := ⟨96,191,⟨96,96,191,191⟩,60,.early s6Step350CompleteLog⟩
def s6PrivateStep350Plan : HmrSourceStepPlan := .early s6Step350CompletePlan
theorem s6PrivateStep350_source : s6PrivateStep350Spec=s6ObservedLogs336[14] := rfl
theorem s6PrivateStep350_checked : compileHmrSourceStepLog s6PrivateStep350Arena s6PrivateStep350Bank
    s6PrivateStep350Spec.fgWidth s6PrivateStep350Spec.vWidth s6PrivateStep350Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 350 s6PrivateStep350Spec.need none s6PrivateStep350Spec.log=some s6PrivateStep350Plan := by
  change compileHmrSourceStepLog s6Step350EntryFBefore s6Step350FrontBank 96 191 ⟨96,96,191,191⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 350 60 none (.early s6Step350CompleteLog)=some (.early s6Step350CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 350<498)]
  rw [s6Step350Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
