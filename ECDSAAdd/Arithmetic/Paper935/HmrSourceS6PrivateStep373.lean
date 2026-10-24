import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep371
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

private def s6Step373CompleteMoves : List (Wire × Wire) := [(857,84)]

private def s6Step373EarlyControlLog : HmrEarlyControlLog := ⟨[857, 805, 890, 908, 802],[876],[796],[843, 877, 792, 816, 819, 920],[]⟩

private def s6Step373FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [828]],[[802], [908], [805], [890]],[[], [], [], []]⟩,[858],[821],[876],[796],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[876, 796, 843, 877]⟩

private def s6Step373CompleteLog : HmrEarlyStepLog := ⟨s6Step373FrontLog,s6Step373CompleteMoves,s6Step373EarlyControlLog⟩

private def s6Step373ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩

private def s6Step373ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩

private def s6Step373ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],777⟩

private def s6Step373ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828],775⟩

private def s6Step373FrontOut : WindowBank := ⟨s6Step373ExitFOut,s6Step373ExitGOut,s6Step373ExitFvOut,s6Step373ExitGvOut⟩

private def s6Step373CompleteOut : WindowBank := s6Step373FrontOut.repacked s6Step373CompleteMoves

private def s6Step373EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step373EarlyControlPositiveArena,[876],s6Step373EarlyControlEqualityArena,[796],⟨⟨858,false⟩,[⟨⟨876,false⟩,796⟩]⟩⟩

private def s6Step373EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,857⟩,⟨⟨772,false⟩,805⟩,⟨⟨771,false⟩,890⟩,⟨⟨770,false⟩,908⟩,⟨⟨769,false⟩,802⟩]⟩

private def s6Step373EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step373EarlyControlZeroArena,s6Step373EarlyControlZeroPlan,s6Step373EarlyControlClassPlan,s6Step373EarlyControlFlagArena,s6Step373EarlyControlFittedArena,s6Step373EarlyControlHistoryArena,s6Step373EarlyControlSigmaArena,s6Step373EarlyControlOutputArena,s6Step373EarlyControlLog⟩

private def s6Step373CounterWork : List Wire := [876, 796, 843, 877]

private theorem s6Step373Counter_bounded : s6Step373CounterWork.toFinset⊆arenaWires := by norm_num [s6Step373CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step373HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373CounterDuring : Arena := ⟨s6Step373HeadFvAfter.live∪s6Step373CounterWork.toFinset,Finset.union_subset s6Step373HeadFvAfter.bounded s6Step373Counter_bounded⟩

private def s6Step373EntryFFresh : List Wire := []

private def s6Step373EntryFvFresh : List Wire := []

private def s6Step373EntryGFresh : List Wire := []

private def s6Step373EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373EntryGvFresh : List Wire := [828]

private def s6Step373ExitFExtra : List Wire := [908]

private def s6Step373ExitFvExtra : List Wire := [890]

private def s6Step373ExitGExtra : List Wire := [84, 802]

private def s6Step373ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373ExitGvExtra : List Wire := [805]

private def s6Step373Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373Add0Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step373Add0_bounded : s6Step373Add0Work.toFinset⊆arenaWires := by
  have h : s6Step373Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step373Add0During : Arena := ⟨s6Step373Add0Arena.live∪s6Step373Add0Work.toFinset,Finset.union_subset s6Step373Add0Arena.bounded s6Step373Add0_bounded⟩

private def s6Step373Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373Add1Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step373Add1_bounded : s6Step373Add1Work.toFinset⊆arenaWires := by
  have h : s6Step373Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step373Add1During : Arena := ⟨s6Step373Add1Arena.live∪s6Step373Add1Work.toFinset,Finset.union_subset s6Step373Add1Arena.bounded s6Step373Add1_bounded⟩

private def s6Step373F4FlagArena : Arena := ⟨s6Step373HeadFvAfter.live∪{876},Finset.union_subset s6Step373HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step373F4Plan : HmrHybridF4Plan := ⟨s6Step373F4FlagArena,[876],s6Step373Add0Arena,[796],s6Step373Add0During,s6Step373Add0Work,s6Step373Add1During,s6Step373Add1Work⟩

private def s6Step373HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 908],795⟩

private def s6Step373HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 890],776⟩

private def s6Step373HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 802],777⟩

private def s6Step373HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 805],775⟩

private def s6Step373FrontHead : WindowBank := ⟨s6Step373HeadFOut,s6Step373HeadGOut,s6Step373HeadFvOut,s6Step373HeadGvOut⟩

private def s6Step373EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩

private def s6Step373EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩

private def s6Step373EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84],777⟩

private def s6Step373EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828],775⟩

private def s6Step373FrontPair : WindowBank := ⟨s6Step373EntryFOut,s6Step373EntryGOut,s6Step373EntryFvOut,s6Step373EntryGvOut⟩

private def s6Step373FrontSigmaArena : Arena := ⟨s6Step373EntryGvAfter.live∪{858},Finset.union_subset s6Step373EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step373HeadFFresh : List Wire := [908]

private def s6Step373HeadFvFresh : List Wire := [890]

private def s6Step373HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373HeadGFresh : List Wire := [802]

private def s6Step373HeadGvFresh : List Wire := [805]

private def s6Step373FrontPlan : HmrSourceFront := ⟨s6Step373EntryGvAfter,s6Step373FrontPair,(growRow 795 s6Step373EntryFFresh ++ (growRow 777 s6Step373EntryGFresh ++ (growRow 776 s6Step373EntryFvFresh ++ (growRow 775 s6Step373EntryGvFresh ++ [])))),s6Step373FrontSigmaArena,[858],s6Step373HeadGBefore,[821],
  s6Step373HeadFvAfter,s6Step373FrontHead,(growRow 777 s6Step373HeadGFresh ++ (growRow 795 s6Step373HeadFFresh ++ (growRow 775 s6Step373HeadGvFresh ++ (growRow 776 s6Step373HeadFvFresh ++ [])))),s6Step373F4Plan,s6Step373CounterDuring,s6Step373CounterWork,s6Step373ExitGvAfter,s6Step373FrontOut,(shrinkRow 777 s6Step373ExitGExtra ++ (shrinkRow 795 s6Step373ExitFExtra ++ (shrinkRow 776 s6Step373ExitFvExtra ++ (shrinkRow 775 s6Step373ExitGvExtra ++ []))))⟩

private def s6Step373CompletePlan : HmrEarlyStepPlan := ⟨s6Step373FrontPlan,s6Step373EarlyControlArena,s6Step373EarlyControlPlan,s6Step373CompleteMoves⟩

private theorem s6Step373Complete_apart : List.Disjoint (s6Step373CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [858, 821, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step373CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[858, 821, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step373Complete_owned : (s6Step373CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step373EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step373EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step373CompleteMoveArena : Arena := ⟨s6Step373ExitGvAfter.live∪{84},Finset.union_subset s6Step373ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step373Complete_repack : s6Step373ExitGvAfter.checkRepack s6Step373CompleteMoves=some s6Step373EarlyControlArena := by
  have owned : 857∈s6Step373ExitGvAfter.live := by norm_num [s6Step373ExitGvAfter,arenaWires]
  have reserve : s6Step373ExitGvAfter.reserve {84}=some s6Step373CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step373ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step373CompleteMoveArena.retireSet {857}=s6Step373EarlyControlArena := by
    unfold Arena.retireSet s6Step373EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step373CompleteMoveArena,s6Step373ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step373CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step373CompleteMoveArena.retireSet {857}).checkRepack []=some s6Step373EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step373EarlyControl_branchOwned : ([821] : List Wire).toFinset⊆s6Step373EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step373EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373EarlyControl_branch : compileHmrBranchRetirement s6Step373EarlyControlSigmaArena 821=some s6Step373EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step373EarlyControl_branchOwned
  · ext q
    simp [s6Step373EarlyControlOutputArena,s6Step373EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step373EarlyControl_classEqualityBorrow : s6Step373EarlyControlPositiveArena.checkBorrow (([858, 876] : List Wire).length-1) s6Step373EarlyControlLog.classWork=some s6Step373EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step373EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step373EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step373EarlyControlEqualityArena,s6Step373EarlyControlPositiveArena,s6Step373EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step373EarlyControl_classEqualityOwned : ([858, 876] : List Wire).toFinset⊆s6Step373EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step373EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373EarlyControl_classEquality : compileHmrEqualityLog s6Step373EarlyControlPositiveArena [858, 876] 0 s6Step373EarlyControlLog.classWork=some (s6Step373EarlyControlEqualityArena,s6Step373EarlyControlLog.classWork,s6Step373EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step373EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step373EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step373EarlyControl_classOwned : ([769, 802, 858] : List Wire).toFinset⊆s6Step373EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step373EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373EarlyControl_positiveBorrow : s6Step373EarlyControlZeroArena.checkBorrow (1) s6Step373EarlyControlLog.positiveWork=some s6Step373EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step373EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step373EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step373EarlyControlPositiveArena,s6Step373EarlyControlZeroArena,s6Step373EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step373EarlyControl_class : compileHmrSourceClassLog s6Step373EarlyControlZeroArena false 769 s6Step373EarlyControlZeroPlan.top 0 858 s6Step373EarlyControlLog.positiveWork s6Step373EarlyControlLog.classWork=some s6Step373EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step373EarlyControlClassPlan s6Step373EarlyControlZeroArena false 769 s6Step373EarlyControlZeroPlan.top 0 858
  constructor
  · decide +kernel
  · exact s6Step373EarlyControl_classOwned
  · exact s6Step373EarlyControl_positiveBorrow
  · exact s6Step373EarlyControl_classEquality

private theorem s6Step373EarlyControl_entryRecordOwned : ([821, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step373EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step373EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373EarlyControl_entrySigmaOwned : ([858, 254] : List Wire).toFinset⊆s6Step373EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step373EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373EarlyControl_fitBorrow : s6Step373EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step373EarlyControlLog.recordFresh=some s6Step373EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step373EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step373EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step373EarlyControlFittedArena,s6Step373EarlyControlFlagArena,s6Step373EarlyControlLog,arenaWires]

private theorem s6Step373EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step373EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step373EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373EarlyControl_fit : compileHmrRecordGrowLog s6Step373EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step373EarlyControlLog.recordFresh=some s6Step373EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step373EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step373EarlyControl_fitBorrow

private theorem s6Step373EarlyControl_flagsBorrow : s6Step373EarlyControlEqualityArena.checkBorrow (6) s6Step373EarlyControlLog.flagWork=some s6Step373EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step373EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step373EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step373EarlyControlFlagArena,s6Step373EarlyControlEqualityArena,s6Step373EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step373EarlyControl_flagsOwned : ([796, 253, 252, 251] : List Wire).toFinset⊆s6Step373EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step373EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373EarlyControl_flags : compileHmrFlagsLog s6Step373EarlyControlClassPlan.equalityArena s6Step373EarlyControlClassPlan.equality.top 253 252 251 s6Step373EarlyControlLog.flagWork=some s6Step373EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step373EarlyControl_flagsOwned⟩
  · exact s6Step373EarlyControl_flagsBorrow

private theorem s6Step373EarlyControl_historyBorrow : s6Step373EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step373EarlyControlLog.recordFresh=some s6Step373EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step373EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step373EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step373EarlyControlHistoryArena,s6Step373EarlyControlArena,s6Step373EarlyControlLog,arenaWires]

private theorem s6Step373EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step373EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step373EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373EarlyControl_history : compileHmrRecordGrowLog s6Step373EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step373EarlyControlLog.recordFresh=some s6Step373EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step373EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step373EarlyControl_historyBorrow

private theorem s6Step373EarlyControl_sigmaOwned : ([254, 858] : List Wire).toFinset⊆s6Step373EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step373EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373EarlyControl_sigmaReleaseOwned : ([858] : List Wire).toFinset⊆s6Step373EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step373EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373EarlyControl_sigmaRelease : s6Step373EarlyControlHistoryArena.release {858} (fun _ => false)=some s6Step373EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step373EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step373EarlyControlSigmaArena,s6Step373EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step373EarlyControl_sigma : compileHmrSigmaDropLog s6Step373EarlyControlHistoryArena false 0 0 254 858 []=some s6Step373EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step373EarlyControl_sigmaOwned⟩
  · exact s6Step373EarlyControl_sigmaRelease

private theorem s6Step373EarlyControl_zeroBorrow : s6Step373EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step373EarlyControlLog.zeroWork=some s6Step373EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step373EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step373EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step373EarlyControlZeroArena,s6Step373EarlyControlArena,s6Step373EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step373EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step373EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step373EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373EarlyControl_zero : compileHmrEqualityLog s6Step373EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step373EarlyControlLog.zeroWork=some (s6Step373EarlyControlZeroArena,s6Step373EarlyControlLog.zeroWork,s6Step373EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step373EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step373EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step373EarlyControl_logged : s6Step373EarlyControlPlan.Logged s6Step373EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 821 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step373EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step373EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step373EarlyControl_zero
  · exact s6Step373EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step373EarlyControl_flags
  · exact s6Step373EarlyControl_fit
  · exact s6Step373EarlyControl_history
  · exact s6Step373EarlyControl_sigma
  · exact s6Step373EarlyControl_branch

private theorem s6Step373EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step373EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 821 60 s6Step373EarlyControlLog=some s6Step373EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step373EarlyControlPlan s6Step373EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 821 60 s6Step373EarlyControl_logged

private def s6Step373EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩

private def s6Step373EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩

private def s6Step373EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84],777⟩

private def s6Step373EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888],775⟩

private def s6Step373FrontBank : WindowBank := ⟨s6Step373EntryFRow,s6Step373EntryGRow,s6Step373EntryFvRow,s6Step373EntryGvRow⟩

private def s6Step373Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 908, 795]

private def s6Step373Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 802, 777]

private def s6Step373Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 890, 776]

private def s6Step373Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 805, 775]

private theorem s6Step373Counter_apart : Disjoint s6Step373HeadFvAfter.live s6Step373CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step373HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373Counter_borrowed : s6Step373HeadFvAfter.checkBorrow 4 s6Step373CounterWork=some s6Step373CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step373HeadFvAfter s6Step373CounterDuring s6Step373CounterWork.toFinset s6Step373Counter_bounded s6Step373Counter_apart rfl

private theorem s6Step373Counter_owned : (858::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step373HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step373HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373Counter_checked : compileHmrCounterStepLog s6Step373HeadFvAfter true 858 [774, 773, 772, 771, 770, 769] s6Step373CounterWork=some s6Step373CounterDuring := by
  have owned : ∀q∈858::[774, 773, 772, 771, 770, 769],q∈s6Step373HeadFvAfter.live := fun q hq => s6Step373Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step373Counter_borrowed

private def s6Step373EntryFAfter : Arena := s6Step373EntryFBefore

private theorem s6Step373EntryBank_incomingDistinct : ([s6Step373EntryFRow,s6Step373EntryGRow,s6Step373EntryFvRow,s6Step373EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373EntryF_Incoming : rowsOwned s6Step373EntryFBefore [s6Step373EntryFRow,s6Step373EntryGRow,s6Step373EntryFvRow,s6Step373EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step373EntryFRow,s6Step373EntryGRow,s6Step373EntryFvRow,s6Step373EntryGvRow] 0 s6Step373EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step373EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step373EntryBank_outgoingOwned : rowsOwned s6Step373EntryGvAfter [s6Step373EntryFOut,s6Step373EntryGOut,s6Step373EntryFvOut,s6Step373EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step373EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step373EntryF_Outgoing : rowsOwned s6Step373EntryGvAfter [s6Step373EntryFOut,s6Step373EntryGOut,s6Step373EntryFvOut,s6Step373EntryGvOut] :=
  hmrRows_owned_drop s6Step373EntryGvAfter [s6Step373EntryFOut,s6Step373EntryGOut,s6Step373EntryFvOut,s6Step373EntryGvOut] 0 s6Step373EntryBank_outgoingOwned

private theorem s6Step373EntryF_distinct : (s6Step373EntryFRow.sign::s6Step373EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373EntryF_owned : (s6Step373EntryFRow.sign::s6Step373EntryFRow.payload).toFinset⊆s6Step373EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step373EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373EntryF_reserved : s6Step373EntryFBefore.reserve s6Step373EntryFFresh.toFinset=some s6Step373EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step373EntryFFresh,arenaWires]
  · norm_num [s6Step373EntryFBefore,s6Step373EntryFFresh,arenaWires]
  · simp only [s6Step373EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step373EntryF_checked : planRowResizeLog s6Step373EntryFBefore s6Step373EntryFRow 85 s6Step373EntryFFresh=
    some (s6Step373EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩,growRow 795 s6Step373EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step373EntryFBefore s6Step373EntryFAfter s6Step373EntryFRow 85 s6Step373EntryFFresh
    s6Step373EntryF_distinct s6Step373EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step373EntryF_reserved
  have rowEq : WindowRow.mk (s6Step373EntryFRow.payload++s6Step373EntryFFresh) s6Step373EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step373EntryFvAfter : Arena := s6Step373EntryFBefore

private def s6Step373EntryFvBefore : Arena := s6Step373EntryFBefore

private theorem s6Step373EntryFv_Incoming : rowsOwned s6Step373EntryFvBefore [s6Step373EntryFvRow,s6Step373EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step373EntryFRow,s6Step373EntryGRow,s6Step373EntryFvRow,s6Step373EntryGvRow] 2 s6Step373EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step373EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step373EntryFv_Outgoing : rowsOwned s6Step373EntryGvAfter [s6Step373EntryFvOut,s6Step373EntryGvOut] :=
  hmrRows_owned_drop s6Step373EntryGvAfter [s6Step373EntryFOut,s6Step373EntryGOut,s6Step373EntryFvOut,s6Step373EntryGvOut] 2 s6Step373EntryBank_outgoingOwned

private theorem s6Step373EntryFv_distinct : (s6Step373EntryFvRow.sign::s6Step373EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373EntryFv_owned : (s6Step373EntryFvRow.sign::s6Step373EntryFvRow.payload).toFinset⊆s6Step373EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step373EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373EntryFv_reserved : s6Step373EntryFvBefore.reserve s6Step373EntryFvFresh.toFinset=some s6Step373EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step373EntryFvFresh,arenaWires]
  · norm_num [s6Step373EntryFvBefore,s6Step373EntryFBefore,s6Step373EntryFvFresh,arenaWires]
  · simp only [s6Step373EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step373EntryFv_checked : planRowResizeLog s6Step373EntryFvBefore s6Step373EntryFvRow 203 s6Step373EntryFvFresh=
    some (s6Step373EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩,growRow 776 s6Step373EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step373EntryFvBefore s6Step373EntryFvAfter s6Step373EntryFvRow 203 s6Step373EntryFvFresh
    s6Step373EntryFv_distinct s6Step373EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step373EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step373EntryFvRow.payload++s6Step373EntryFvFresh) s6Step373EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step373EntryGAfter : Arena := s6Step373EntryFBefore

private def s6Step373EntryGBefore : Arena := s6Step373EntryFBefore

private theorem s6Step373EntryG_Incoming : rowsOwned s6Step373EntryGBefore [s6Step373EntryGRow,s6Step373EntryFvRow,s6Step373EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step373EntryFRow,s6Step373EntryGRow,s6Step373EntryFvRow,s6Step373EntryGvRow] 1 s6Step373EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step373EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step373EntryG_Outgoing : rowsOwned s6Step373EntryGvAfter [s6Step373EntryGOut,s6Step373EntryFvOut,s6Step373EntryGvOut] :=
  hmrRows_owned_drop s6Step373EntryGvAfter [s6Step373EntryFOut,s6Step373EntryGOut,s6Step373EntryFvOut,s6Step373EntryGvOut] 1 s6Step373EntryBank_outgoingOwned

private theorem s6Step373EntryG_distinct : (s6Step373EntryGRow.sign::s6Step373EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373EntryG_owned : (s6Step373EntryGRow.sign::s6Step373EntryGRow.payload).toFinset⊆s6Step373EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step373EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373EntryG_reserved : s6Step373EntryGBefore.reserve s6Step373EntryGFresh.toFinset=some s6Step373EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step373EntryGFresh,arenaWires]
  · norm_num [s6Step373EntryGBefore,s6Step373EntryFBefore,s6Step373EntryGFresh,arenaWires]
  · simp only [s6Step373EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step373EntryG_checked : planRowResizeLog s6Step373EntryGBefore s6Step373EntryGRow 85 s6Step373EntryGFresh=
    some (s6Step373EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84],777⟩,growRow 777 s6Step373EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step373EntryGBefore s6Step373EntryGAfter s6Step373EntryGRow 85 s6Step373EntryGFresh
    s6Step373EntryG_distinct s6Step373EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step373EntryG_reserved
  have rowEq : WindowRow.mk (s6Step373EntryGRow.payload++s6Step373EntryGFresh) s6Step373EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step373EntryGvBefore : Arena := s6Step373EntryFBefore

private theorem s6Step373EntryGv_Incoming : rowsOwned s6Step373EntryGvBefore [s6Step373EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step373EntryFRow,s6Step373EntryGRow,s6Step373EntryFvRow,s6Step373EntryGvRow] 3 s6Step373EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step373EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step373EntryGv_Outgoing : rowsOwned s6Step373EntryGvAfter [s6Step373EntryGvOut] :=
  hmrRows_owned_drop s6Step373EntryGvAfter [s6Step373EntryFOut,s6Step373EntryGOut,s6Step373EntryFvOut,s6Step373EntryGvOut] 3 s6Step373EntryBank_outgoingOwned

private theorem s6Step373EntryGv_distinct : (s6Step373EntryGvRow.sign::s6Step373EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373EntryGv_owned : (s6Step373EntryGvRow.sign::s6Step373EntryGvRow.payload).toFinset⊆s6Step373EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step373EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373EntryGv_reserved : s6Step373EntryGvBefore.reserve s6Step373EntryGvFresh.toFinset=some s6Step373EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step373EntryGvFresh,arenaWires]
  · norm_num [s6Step373EntryGvBefore,s6Step373EntryFBefore,s6Step373EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step373EntryGvAfter,s6Step373EntryGvBefore,s6Step373EntryFBefore,s6Step373EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step373EntryGv_checked : planRowResizeLog s6Step373EntryGvBefore s6Step373EntryGvRow 203 s6Step373EntryGvFresh=
    some (s6Step373EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828],775⟩,growRow 775 s6Step373EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step373EntryGvBefore s6Step373EntryGvAfter s6Step373EntryGvRow 203 s6Step373EntryGvFresh
    s6Step373EntryGv_distinct s6Step373EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step373EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step373EntryGvRow.payload++s6Step373EntryGvFresh) s6Step373EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step373EntryBank_rows : planWindowRowsLog s6Step373EntryFBefore [(s6Step373EntryFRow,85),(s6Step373EntryGRow,85),(s6Step373EntryFvRow,203),(s6Step373EntryGvRow,203)] [s6Step373EntryFFresh,s6Step373EntryGFresh,s6Step373EntryFvFresh,s6Step373EntryGvFresh]=
    some (s6Step373EntryGvAfter,[s6Step373EntryFOut,s6Step373EntryGOut,s6Step373EntryFvOut,s6Step373EntryGvOut],(growRow 795 s6Step373EntryFFresh ++ (growRow 777 s6Step373EntryGFresh ++ (growRow 776 s6Step373EntryFvFresh ++ (growRow 775 s6Step373EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step373EntryGvAfter [] []=some (s6Step373EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step373EntryGvBefore s6Step373EntryGvAfter s6Step373EntryGvAfter
    s6Step373EntryGvRow s6Step373EntryGvOut 203 s6Step373EntryGvFresh [] [] []
    (growRow 775 s6Step373EntryGvFresh) ([]) s6Step373EntryGv_Incoming s6Step373EntryGv_checked h4 s6Step373EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step373EntryFvBefore s6Step373EntryFvAfter s6Step373EntryGvAfter
    s6Step373EntryFvRow s6Step373EntryFvOut 203 s6Step373EntryFvFresh [(s6Step373EntryGvRow,203)] [s6Step373EntryGvFresh] [s6Step373EntryGvOut]
    (growRow 776 s6Step373EntryFvFresh) ((growRow 775 s6Step373EntryGvFresh ++ [])) s6Step373EntryFv_Incoming s6Step373EntryFv_checked h3 s6Step373EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step373EntryGBefore s6Step373EntryGAfter s6Step373EntryGvAfter
    s6Step373EntryGRow s6Step373EntryGOut 85 s6Step373EntryGFresh [(s6Step373EntryFvRow,203),(s6Step373EntryGvRow,203)] [s6Step373EntryFvFresh,s6Step373EntryGvFresh] [s6Step373EntryFvOut,s6Step373EntryGvOut]
    (growRow 777 s6Step373EntryGFresh) ((growRow 776 s6Step373EntryFvFresh ++ (growRow 775 s6Step373EntryGvFresh ++ []))) s6Step373EntryG_Incoming s6Step373EntryG_checked h2 s6Step373EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step373EntryFBefore s6Step373EntryFAfter s6Step373EntryGvAfter
    s6Step373EntryFRow s6Step373EntryFOut 85 s6Step373EntryFFresh [(s6Step373EntryGRow,85),(s6Step373EntryFvRow,203),(s6Step373EntryGvRow,203)] [s6Step373EntryGFresh,s6Step373EntryFvFresh,s6Step373EntryGvFresh] [s6Step373EntryGOut,s6Step373EntryFvOut,s6Step373EntryGvOut]
    (growRow 795 s6Step373EntryFFresh) ((growRow 777 s6Step373EntryGFresh ++ (growRow 776 s6Step373EntryFvFresh ++ (growRow 775 s6Step373EntryGvFresh ++ [])))) s6Step373EntryF_Incoming s6Step373EntryF_checked h1 s6Step373EntryF_Outgoing
  exact h0

private theorem s6Step373EntryBank_checked : compileHmrBankResizeLog .entry s6Step373EntryFBefore ⟨s6Step373EntryFRow,s6Step373EntryGRow,s6Step373EntryFvRow,s6Step373EntryGvRow⟩ ⟨85,85,203,203⟩ [s6Step373EntryFFresh,s6Step373EntryGFresh,s6Step373EntryFvFresh,s6Step373EntryGvFresh]=
    some (s6Step373EntryGvAfter,⟨s6Step373EntryFOut,s6Step373EntryGOut,s6Step373EntryFvOut,s6Step373EntryGvOut⟩,(growRow 795 s6Step373EntryFFresh ++ (growRow 777 s6Step373EntryGFresh ++ (growRow 776 s6Step373EntryFvFresh ++ (growRow 775 s6Step373EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step373EntryBank_rows]
  rfl

private def s6Step373ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373ExitFBefore : Arena := s6Step373ExitGAfter

private def s6Step373ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 908],795⟩

private def s6Step373ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 890],776⟩

private def s6Step373ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 802],777⟩

private def s6Step373ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 805],775⟩

private theorem s6Step373ExitBank_incomingDistinct : ([s6Step373ExitGRow,s6Step373ExitFRow,s6Step373ExitFvRow,s6Step373ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373ExitF_Incoming : rowsOwned s6Step373ExitFBefore [s6Step373ExitFRow,s6Step373ExitFvRow,s6Step373ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step373ExitGRow,s6Step373ExitFRow,s6Step373ExitFvRow,s6Step373ExitGvRow] 1 s6Step373ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step373ExitFBefore (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step373ExitBank_outgoingOwned : rowsOwned s6Step373ExitGvAfter [s6Step373ExitGOut,s6Step373ExitFOut,s6Step373ExitFvOut,s6Step373ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step373ExitGvAfter (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step373ExitF_Outgoing : rowsOwned s6Step373ExitGvAfter [s6Step373ExitFOut,s6Step373ExitFvOut,s6Step373ExitGvOut] :=
  hmrRows_owned_drop s6Step373ExitGvAfter [s6Step373ExitGOut,s6Step373ExitFOut,s6Step373ExitFvOut,s6Step373ExitGvOut] 1 s6Step373ExitBank_outgoingOwned

private theorem s6Step373ExitF_distinct : (s6Step373ExitFRow.sign::s6Step373ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373ExitF_owned : (s6Step373ExitFRow.sign::s6Step373ExitFRow.payload).toFinset⊆s6Step373ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step373ExitFBefore (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373ExitF_retired : s6Step373ExitFBefore.retireSet s6Step373ExitFExtra.toFinset=s6Step373ExitFAfter := by
  unfold Arena.retireSet s6Step373ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step373ExitFBefore,s6Step373ExitGAfter,s6Step373ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step373ExitF_checked : planRowResizeLog s6Step373ExitFBefore s6Step373ExitFRow 85 []=
    some (s6Step373ExitFAfter,s6Step373ExitFOut,shrinkRow 795 s6Step373ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step373ExitFBefore s6Step373ExitFRow 85 s6Step373ExitF_distinct s6Step373ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step373ExitFRow.payload.take 85) s6Step373ExitFRow.sign=s6Step373ExitFOut := by decide +kernel
  have hi : s6Step373ExitFRow.payload.drop 85=s6Step373ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step373ExitF_retired] at result
  exact result

private def s6Step373ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373ExitFvBefore : Arena := s6Step373ExitFAfter

private theorem s6Step373ExitFv_Incoming : rowsOwned s6Step373ExitFvBefore [s6Step373ExitFvRow,s6Step373ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step373ExitGRow,s6Step373ExitFRow,s6Step373ExitFvRow,s6Step373ExitGvRow] 2 s6Step373ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step373ExitFvBefore (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step373ExitFv_Outgoing : rowsOwned s6Step373ExitGvAfter [s6Step373ExitFvOut,s6Step373ExitGvOut] :=
  hmrRows_owned_drop s6Step373ExitGvAfter [s6Step373ExitGOut,s6Step373ExitFOut,s6Step373ExitFvOut,s6Step373ExitGvOut] 2 s6Step373ExitBank_outgoingOwned

private theorem s6Step373ExitFv_distinct : (s6Step373ExitFvRow.sign::s6Step373ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373ExitFv_owned : (s6Step373ExitFvRow.sign::s6Step373ExitFvRow.payload).toFinset⊆s6Step373ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step373ExitFvBefore (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373ExitFv_retired : s6Step373ExitFvBefore.retireSet s6Step373ExitFvExtra.toFinset=s6Step373ExitFvAfter := by
  unfold Arena.retireSet s6Step373ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step373ExitFvBefore,s6Step373ExitFAfter,s6Step373ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step373ExitFv_checked : planRowResizeLog s6Step373ExitFvBefore s6Step373ExitFvRow 203 []=
    some (s6Step373ExitFvAfter,s6Step373ExitFvOut,shrinkRow 776 s6Step373ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step373ExitFvBefore s6Step373ExitFvRow 203 s6Step373ExitFv_distinct s6Step373ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step373ExitFvRow.payload.take 203) s6Step373ExitFvRow.sign=s6Step373ExitFvOut := by decide +kernel
  have hi : s6Step373ExitFvRow.payload.drop 203=s6Step373ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step373ExitFv_retired] at result
  exact result

private def s6Step373ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step373ExitG_Incoming : rowsOwned s6Step373ExitGBefore [s6Step373ExitGRow,s6Step373ExitFRow,s6Step373ExitFvRow,s6Step373ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step373ExitGRow,s6Step373ExitFRow,s6Step373ExitFvRow,s6Step373ExitGvRow] 0 s6Step373ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step373ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step373ExitG_Outgoing : rowsOwned s6Step373ExitGvAfter [s6Step373ExitGOut,s6Step373ExitFOut,s6Step373ExitFvOut,s6Step373ExitGvOut] :=
  hmrRows_owned_drop s6Step373ExitGvAfter [s6Step373ExitGOut,s6Step373ExitFOut,s6Step373ExitFvOut,s6Step373ExitGvOut] 0 s6Step373ExitBank_outgoingOwned

private theorem s6Step373ExitG_distinct : (s6Step373ExitGRow.sign::s6Step373ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373ExitG_owned : (s6Step373ExitGRow.sign::s6Step373ExitGRow.payload).toFinset⊆s6Step373ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step373ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373ExitG_retired : s6Step373ExitGBefore.retireSet s6Step373ExitGExtra.toFinset=s6Step373ExitGAfter := by
  unfold Arena.retireSet s6Step373ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step373ExitGBefore,s6Step373ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step373ExitG_checked : planRowResizeLog s6Step373ExitGBefore s6Step373ExitGRow 84 []=
    some (s6Step373ExitGAfter,s6Step373ExitGOut,shrinkRow 777 s6Step373ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step373ExitGBefore s6Step373ExitGRow 84 s6Step373ExitG_distinct s6Step373ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step373ExitGRow.payload.take 84) s6Step373ExitGRow.sign=s6Step373ExitGOut := by decide +kernel
  have hi : s6Step373ExitGRow.payload.drop 84=s6Step373ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step373ExitG_retired] at result
  exact result

private def s6Step373ExitGvBefore : Arena := s6Step373ExitFvAfter

private theorem s6Step373ExitGv_Incoming : rowsOwned s6Step373ExitGvBefore [s6Step373ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step373ExitGRow,s6Step373ExitFRow,s6Step373ExitFvRow,s6Step373ExitGvRow] 3 s6Step373ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step373ExitGvBefore (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step373ExitGv_Outgoing : rowsOwned s6Step373ExitGvAfter [s6Step373ExitGvOut] :=
  hmrRows_owned_drop s6Step373ExitGvAfter [s6Step373ExitGOut,s6Step373ExitFOut,s6Step373ExitFvOut,s6Step373ExitGvOut] 3 s6Step373ExitBank_outgoingOwned

private theorem s6Step373ExitGv_distinct : (s6Step373ExitGvRow.sign::s6Step373ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373ExitGv_owned : (s6Step373ExitGvRow.sign::s6Step373ExitGvRow.payload).toFinset⊆s6Step373ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step373ExitGvBefore (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373ExitGv_retired : s6Step373ExitGvBefore.retireSet s6Step373ExitGvExtra.toFinset=s6Step373ExitGvAfter := by
  unfold Arena.retireSet s6Step373ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step373ExitGvBefore,s6Step373ExitFvAfter,s6Step373ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step373ExitGv_checked : planRowResizeLog s6Step373ExitGvBefore s6Step373ExitGvRow 203 []=
    some (s6Step373ExitGvAfter,s6Step373ExitGvOut,shrinkRow 775 s6Step373ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step373ExitGvBefore s6Step373ExitGvRow 203 s6Step373ExitGv_distinct s6Step373ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step373ExitGvRow.payload.take 203) s6Step373ExitGvRow.sign=s6Step373ExitGvOut := by decide +kernel
  have hi : s6Step373ExitGvRow.payload.drop 203=s6Step373ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step373ExitGv_retired] at result
  exact result

private theorem s6Step373ExitBank_rows : planWindowRowsLog s6Step373ExitGBefore [(s6Step373ExitGRow,84),(s6Step373ExitFRow,85),(s6Step373ExitFvRow,203),(s6Step373ExitGvRow,203)] [[],[],[],[]]=
    some (s6Step373ExitGvAfter,[s6Step373ExitGOut,s6Step373ExitFOut,s6Step373ExitFvOut,s6Step373ExitGvOut],(shrinkRow 777 s6Step373ExitGExtra ++ (shrinkRow 795 s6Step373ExitFExtra ++ (shrinkRow 776 s6Step373ExitFvExtra ++ (shrinkRow 775 s6Step373ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step373ExitGvAfter [] []=some (s6Step373ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step373ExitGvBefore s6Step373ExitGvAfter s6Step373ExitGvAfter
    s6Step373ExitGvRow s6Step373ExitGvOut 203 [] [] [] []
    (shrinkRow 775 s6Step373ExitGvExtra) ([]) s6Step373ExitGv_Incoming s6Step373ExitGv_checked h4 s6Step373ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step373ExitFvBefore s6Step373ExitFvAfter s6Step373ExitGvAfter
    s6Step373ExitFvRow s6Step373ExitFvOut 203 [] [(s6Step373ExitGvRow,203)] [[]] [s6Step373ExitGvOut]
    (shrinkRow 776 s6Step373ExitFvExtra) ((shrinkRow 775 s6Step373ExitGvExtra ++ [])) s6Step373ExitFv_Incoming s6Step373ExitFv_checked h3 s6Step373ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step373ExitFBefore s6Step373ExitFAfter s6Step373ExitGvAfter
    s6Step373ExitFRow s6Step373ExitFOut 85 [] [(s6Step373ExitFvRow,203),(s6Step373ExitGvRow,203)] [[],[]] [s6Step373ExitFvOut,s6Step373ExitGvOut]
    (shrinkRow 795 s6Step373ExitFExtra) ((shrinkRow 776 s6Step373ExitFvExtra ++ (shrinkRow 775 s6Step373ExitGvExtra ++ []))) s6Step373ExitF_Incoming s6Step373ExitF_checked h2 s6Step373ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step373ExitGBefore s6Step373ExitGAfter s6Step373ExitGvAfter
    s6Step373ExitGRow s6Step373ExitGOut 84 [] [(s6Step373ExitFRow,85),(s6Step373ExitFvRow,203),(s6Step373ExitGvRow,203)] [[],[],[]] [s6Step373ExitFOut,s6Step373ExitFvOut,s6Step373ExitGvOut]
    (shrinkRow 777 s6Step373ExitGExtra) ((shrinkRow 795 s6Step373ExitFExtra ++ (shrinkRow 776 s6Step373ExitFvExtra ++ (shrinkRow 775 s6Step373ExitGvExtra ++ [])))) s6Step373ExitG_Incoming s6Step373ExitG_checked h1 s6Step373ExitG_Outgoing
  exact h0

private theorem s6Step373ExitBank_checked : compileHmrBankResizeLog .exit s6Step373ExitGBefore ⟨s6Step373ExitFRow,s6Step373ExitGRow,s6Step373ExitFvRow,s6Step373ExitGvRow⟩ ⟨85,84,203,203⟩ [[],[],[],[]]=
    some (s6Step373ExitGvAfter,⟨s6Step373ExitFOut,s6Step373ExitGOut,s6Step373ExitFvOut,s6Step373ExitGvOut⟩,(shrinkRow 777 s6Step373ExitGExtra ++ (shrinkRow 795 s6Step373ExitFExtra ++ (shrinkRow 776 s6Step373ExitFvExtra ++ (shrinkRow 775 s6Step373ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step373ExitBank_rows]
  rfl

private theorem s6Step373Add0_apart : Disjoint s6Step373Add0Arena.live s6Step373Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step373Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373Add0_card : s6Step373Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step373Add0_borrowed : s6Step373Add0Arena.checkBorrow (hmrHybridCount s6Step373Add0Arena s6Step373Add0B.length) s6Step373Add0Work=some s6Step373Add0During := by
  have len : s6Step373Add0Work.length=hmrHybridCount s6Step373Add0Arena s6Step373Add0B.length := by
    rw [hmrHybridCount,s6Step373Add0_card]
    decide +kernel
  have nd : s6Step373Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step373Add0Arena s6Step373Add0During s6Step373Add0Work.toFinset s6Step373Add0_bounded s6Step373Add0_apart rfl

private theorem s6Step373Add0_distinct : (876::821::796::(s6Step373Add0A++s6Step373Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373Add0_owned : (876::821::796::(s6Step373Add0A++s6Step373Add0B)).toFinset⊆s6Step373Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step373Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373Add0_checked : compileHmrHybridCinLog s6Step373Add0Arena 821 876 796 s6Step373Add0A s6Step373Add0B s6Step373Add0Work=some s6Step373Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step373Add0Arena s6Step373Add0During 821 876 796 s6Step373Add0A s6Step373Add0B s6Step373Add0Work
    (by decide +kernel) (by decide +kernel) s6Step373Add0_distinct
    (fun q hq => s6Step373Add0_owned (List.mem_toFinset.mpr hq)) s6Step373Add0_borrowed

private theorem s6Step373Add1_apart : Disjoint s6Step373Add1Arena.live s6Step373Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step373Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373Add1_card : s6Step373Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step373Add1_borrowed : s6Step373Add1Arena.checkBorrow (hmrHybridCount s6Step373Add1Arena s6Step373Add1B.length) s6Step373Add1Work=some s6Step373Add1During := by
  have len : s6Step373Add1Work.length=hmrHybridCount s6Step373Add1Arena s6Step373Add1B.length := by
    rw [hmrHybridCount,s6Step373Add1_card]
    decide +kernel
  have nd : s6Step373Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step373Add1Arena s6Step373Add1During s6Step373Add1Work.toFinset s6Step373Add1_bounded s6Step373Add1_apart rfl

private theorem s6Step373Add1_distinct : (876::821::796::(s6Step373Add1A++s6Step373Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373Add1_owned : (876::821::796::(s6Step373Add1A++s6Step373Add1B)).toFinset⊆s6Step373Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step373Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373Add1_checked : compileHmrHybridCinLog s6Step373Add1Arena 821 876 796 s6Step373Add1A s6Step373Add1B s6Step373Add1Work=some s6Step373Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step373Add1Arena s6Step373Add1During 821 876 796 s6Step373Add1A s6Step373Add1B s6Step373Add1Work
    (by decide +kernel) (by decide +kernel) s6Step373Add1_distinct
    (fun q hq => s6Step373Add1_owned (List.mem_toFinset.mpr hq)) s6Step373Add1_borrowed

private theorem s6Step373F4_apart : Disjoint (s6Step373Add0A++s6Step373Add0B).toFinset (s6Step373Add1A++s6Step373Add1B).toFinset := by
  have nd : ((s6Step373Add0A++s6Step373Add0B)++(s6Step373Add1A++s6Step373Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step373F4_carry : s6Step373F4FlagArena.checkBorrow 1 [796]=some s6Step373Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step373F4FlagArena,s6Step373HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step373F4FlagArena,s6Step373HeadFvAfter,s6Step373Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step373F4_distinct : (858::821::876::796::((s6Step373Add0A++s6Step373Add1A)++(s6Step373Add0B++s6Step373Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373F4_flag : s6Step373HeadFvAfter.checkBorrow 1 [876]=some s6Step373F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step373HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step373F4_owned : (858::821::((s6Step373Add0A++s6Step373Add1A)++(s6Step373Add0B++s6Step373Add1B))).toFinset⊆s6Step373HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step373HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373F4_checked : compileHmrHybridF4Log s6Step373HeadFvAfter 858 821 s6Step373Add0A s6Step373Add0B s6Step373Add1A s6Step373Add1B [876] [796] s6Step373Add0Work s6Step373Add1Work=some s6Step373F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step373HeadFvAfter s6Step373F4FlagArena s6Step373Add0Arena s6Step373Add0During s6Step373Add1During 858 821
    s6Step373Add0A s6Step373Add0B s6Step373Add1A s6Step373Add1B [876] [796] s6Step373Add0Work s6Step373Add1Work
    (fun q hq => s6Step373F4_owned (List.mem_toFinset.mpr hq)) s6Step373F4_flag s6Step373F4_carry
    s6Step373F4_distinct s6Step373F4_apart s6Step373Add0_checked s6Step373Add1_checked

private theorem s6Step373Front_branch : s6Step373FrontSigmaArena.checkBorrow 1 [821]=some s6Step373HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step373FrontSigmaArena,s6Step373EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step373FrontSigmaArena,s6Step373EntryGvAfter,s6Step373HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step373Front_entry : HmrFrontEntryValid s6Step373EntryFBefore s6Step373FrontBank 85 203 ⟨85,84,203,203⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step373FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step373EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step373EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step373FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step373Front_sigma : s6Step373EntryGvAfter.checkBorrow 1 [858]=some s6Step373FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step373EntryGvAfter,arenaWires]
  · rfl

private def s6Step373HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373HeadFBefore : Arena := s6Step373HeadGAfter

private def s6Step373HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩

private def s6Step373HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩

private def s6Step373HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84],777⟩

private def s6Step373HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828],775⟩

private theorem s6Step373HeadBank_incomingDistinct : ([s6Step373HeadGRow,s6Step373HeadFRow,s6Step373HeadGvRow,s6Step373HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373HeadF_Incoming : rowsOwned s6Step373HeadFBefore [s6Step373HeadFRow,s6Step373HeadGvRow,s6Step373HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step373HeadGRow,s6Step373HeadFRow,s6Step373HeadGvRow,s6Step373HeadFvRow] 1 s6Step373HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step373HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step373HeadBank_outgoingOwned : rowsOwned s6Step373HeadFvAfter [s6Step373HeadGOut,s6Step373HeadFOut,s6Step373HeadGvOut,s6Step373HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step373HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step373HeadF_Outgoing : rowsOwned s6Step373HeadFvAfter [s6Step373HeadFOut,s6Step373HeadGvOut,s6Step373HeadFvOut] :=
  hmrRows_owned_drop s6Step373HeadFvAfter [s6Step373HeadGOut,s6Step373HeadFOut,s6Step373HeadGvOut,s6Step373HeadFvOut] 1 s6Step373HeadBank_outgoingOwned

private theorem s6Step373HeadF_distinct : (s6Step373HeadFRow.sign::s6Step373HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373HeadF_owned : (s6Step373HeadFRow.sign::s6Step373HeadFRow.payload).toFinset⊆s6Step373HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step373HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373HeadF_reserved : s6Step373HeadFBefore.reserve s6Step373HeadFFresh.toFinset=some s6Step373HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step373HeadFFresh,arenaWires]
  · norm_num [s6Step373HeadFBefore,s6Step373HeadGAfter,s6Step373HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step373HeadFAfter,s6Step373HeadFBefore,s6Step373HeadGAfter,s6Step373HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step373HeadF_checked : planRowResizeLog s6Step373HeadFBefore s6Step373HeadFRow 86 s6Step373HeadFFresh=
    some (s6Step373HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 908],795⟩,growRow 795 s6Step373HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step373HeadFBefore s6Step373HeadFAfter s6Step373HeadFRow 86 s6Step373HeadFFresh
    s6Step373HeadF_distinct s6Step373HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step373HeadF_reserved
  have rowEq : WindowRow.mk (s6Step373HeadFRow.payload++s6Step373HeadFFresh) s6Step373HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 908],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step373HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step373HeadFvBefore : Arena := s6Step373HeadGvAfter

private theorem s6Step373HeadFv_Incoming : rowsOwned s6Step373HeadFvBefore [s6Step373HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step373HeadGRow,s6Step373HeadFRow,s6Step373HeadGvRow,s6Step373HeadFvRow] 3 s6Step373HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step373HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step373HeadFv_Outgoing : rowsOwned s6Step373HeadFvAfter [s6Step373HeadFvOut] :=
  hmrRows_owned_drop s6Step373HeadFvAfter [s6Step373HeadGOut,s6Step373HeadFOut,s6Step373HeadGvOut,s6Step373HeadFvOut] 3 s6Step373HeadBank_outgoingOwned

private theorem s6Step373HeadFv_distinct : (s6Step373HeadFvRow.sign::s6Step373HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373HeadFv_owned : (s6Step373HeadFvRow.sign::s6Step373HeadFvRow.payload).toFinset⊆s6Step373HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step373HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373HeadFv_reserved : s6Step373HeadFvBefore.reserve s6Step373HeadFvFresh.toFinset=some s6Step373HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step373HeadFvFresh,arenaWires]
  · norm_num [s6Step373HeadFvBefore,s6Step373HeadGvAfter,s6Step373HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step373HeadFvAfter,s6Step373HeadFvBefore,s6Step373HeadGvAfter,s6Step373HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step373HeadFv_checked : planRowResizeLog s6Step373HeadFvBefore s6Step373HeadFvRow 204 s6Step373HeadFvFresh=
    some (s6Step373HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 890],776⟩,growRow 776 s6Step373HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step373HeadFvBefore s6Step373HeadFvAfter s6Step373HeadFvRow 204 s6Step373HeadFvFresh
    s6Step373HeadFv_distinct s6Step373HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step373HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step373HeadFvRow.payload++s6Step373HeadFvFresh) s6Step373HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 890],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step373HeadG_Incoming : rowsOwned s6Step373HeadGBefore [s6Step373HeadGRow,s6Step373HeadFRow,s6Step373HeadGvRow,s6Step373HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step373HeadGRow,s6Step373HeadFRow,s6Step373HeadGvRow,s6Step373HeadFvRow] 0 s6Step373HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step373HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step373HeadG_Outgoing : rowsOwned s6Step373HeadFvAfter [s6Step373HeadGOut,s6Step373HeadFOut,s6Step373HeadGvOut,s6Step373HeadFvOut] :=
  hmrRows_owned_drop s6Step373HeadFvAfter [s6Step373HeadGOut,s6Step373HeadFOut,s6Step373HeadGvOut,s6Step373HeadFvOut] 0 s6Step373HeadBank_outgoingOwned

private theorem s6Step373HeadG_distinct : (s6Step373HeadGRow.sign::s6Step373HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373HeadG_owned : (s6Step373HeadGRow.sign::s6Step373HeadGRow.payload).toFinset⊆s6Step373HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step373HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373HeadG_reserved : s6Step373HeadGBefore.reserve s6Step373HeadGFresh.toFinset=some s6Step373HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step373HeadGFresh,arenaWires]
  · norm_num [s6Step373HeadGBefore,s6Step373HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step373HeadGAfter,s6Step373HeadGBefore,s6Step373HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step373HeadG_checked : planRowResizeLog s6Step373HeadGBefore s6Step373HeadGRow 86 s6Step373HeadGFresh=
    some (s6Step373HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 802],777⟩,growRow 777 s6Step373HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step373HeadGBefore s6Step373HeadGAfter s6Step373HeadGRow 86 s6Step373HeadGFresh
    s6Step373HeadG_distinct s6Step373HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step373HeadG_reserved
  have rowEq : WindowRow.mk (s6Step373HeadGRow.payload++s6Step373HeadGFresh) s6Step373HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 802],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step373HeadGvBefore : Arena := s6Step373HeadFAfter

private theorem s6Step373HeadGv_Incoming : rowsOwned s6Step373HeadGvBefore [s6Step373HeadGvRow,s6Step373HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step373HeadGRow,s6Step373HeadFRow,s6Step373HeadGvRow,s6Step373HeadFvRow] 2 s6Step373HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step373HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step373HeadGv_Outgoing : rowsOwned s6Step373HeadFvAfter [s6Step373HeadGvOut,s6Step373HeadFvOut] :=
  hmrRows_owned_drop s6Step373HeadFvAfter [s6Step373HeadGOut,s6Step373HeadFOut,s6Step373HeadGvOut,s6Step373HeadFvOut] 2 s6Step373HeadBank_outgoingOwned

private theorem s6Step373HeadGv_distinct : (s6Step373HeadGvRow.sign::s6Step373HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step373HeadGv_owned : (s6Step373HeadGvRow.sign::s6Step373HeadGvRow.payload).toFinset⊆s6Step373HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step373HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step373HeadGv_reserved : s6Step373HeadGvBefore.reserve s6Step373HeadGvFresh.toFinset=some s6Step373HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step373HeadGvFresh,arenaWires]
  · norm_num [s6Step373HeadGvBefore,s6Step373HeadFAfter,s6Step373HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step373HeadGvAfter,s6Step373HeadGvBefore,s6Step373HeadFAfter,s6Step373HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step373HeadGv_checked : planRowResizeLog s6Step373HeadGvBefore s6Step373HeadGvRow 204 s6Step373HeadGvFresh=
    some (s6Step373HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 805],775⟩,growRow 775 s6Step373HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step373HeadGvBefore s6Step373HeadGvAfter s6Step373HeadGvRow 204 s6Step373HeadGvFresh
    s6Step373HeadGv_distinct s6Step373HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step373HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step373HeadGvRow.payload++s6Step373HeadGvFresh) s6Step373HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 805],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step373HeadBank_rows : planWindowRowsLog s6Step373HeadGBefore [(s6Step373HeadGRow,86),(s6Step373HeadFRow,86),(s6Step373HeadGvRow,204),(s6Step373HeadFvRow,204)] [s6Step373HeadGFresh,s6Step373HeadFFresh,s6Step373HeadGvFresh,s6Step373HeadFvFresh]=
    some (s6Step373HeadFvAfter,[s6Step373HeadGOut,s6Step373HeadFOut,s6Step373HeadGvOut,s6Step373HeadFvOut],(growRow 777 s6Step373HeadGFresh ++ (growRow 795 s6Step373HeadFFresh ++ (growRow 775 s6Step373HeadGvFresh ++ (growRow 776 s6Step373HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step373HeadFvAfter [] []=some (s6Step373HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step373HeadFvBefore s6Step373HeadFvAfter s6Step373HeadFvAfter
    s6Step373HeadFvRow s6Step373HeadFvOut 204 s6Step373HeadFvFresh [] [] []
    (growRow 776 s6Step373HeadFvFresh) ([]) s6Step373HeadFv_Incoming s6Step373HeadFv_checked h4 s6Step373HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step373HeadGvBefore s6Step373HeadGvAfter s6Step373HeadFvAfter
    s6Step373HeadGvRow s6Step373HeadGvOut 204 s6Step373HeadGvFresh [(s6Step373HeadFvRow,204)] [s6Step373HeadFvFresh] [s6Step373HeadFvOut]
    (growRow 775 s6Step373HeadGvFresh) ((growRow 776 s6Step373HeadFvFresh ++ [])) s6Step373HeadGv_Incoming s6Step373HeadGv_checked h3 s6Step373HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step373HeadFBefore s6Step373HeadFAfter s6Step373HeadFvAfter
    s6Step373HeadFRow s6Step373HeadFOut 86 s6Step373HeadFFresh [(s6Step373HeadGvRow,204),(s6Step373HeadFvRow,204)] [s6Step373HeadGvFresh,s6Step373HeadFvFresh] [s6Step373HeadGvOut,s6Step373HeadFvOut]
    (growRow 795 s6Step373HeadFFresh) ((growRow 775 s6Step373HeadGvFresh ++ (growRow 776 s6Step373HeadFvFresh ++ []))) s6Step373HeadF_Incoming s6Step373HeadF_checked h2 s6Step373HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step373HeadGBefore s6Step373HeadGAfter s6Step373HeadFvAfter
    s6Step373HeadGRow s6Step373HeadGOut 86 s6Step373HeadGFresh [(s6Step373HeadFRow,86),(s6Step373HeadGvRow,204),(s6Step373HeadFvRow,204)] [s6Step373HeadFFresh,s6Step373HeadGvFresh,s6Step373HeadFvFresh] [s6Step373HeadFOut,s6Step373HeadGvOut,s6Step373HeadFvOut]
    (growRow 777 s6Step373HeadGFresh) ((growRow 795 s6Step373HeadFFresh ++ (growRow 775 s6Step373HeadGvFresh ++ (growRow 776 s6Step373HeadFvFresh ++ [])))) s6Step373HeadG_Incoming s6Step373HeadG_checked h1 s6Step373HeadG_Outgoing
  exact h0

private theorem s6Step373HeadBank_checked : compileHmrBankResizeLog .headroom s6Step373HeadGBefore ⟨s6Step373HeadFRow,s6Step373HeadGRow,s6Step373HeadFvRow,s6Step373HeadGvRow⟩ ⟨86,86,204,204⟩ [s6Step373HeadGFresh,s6Step373HeadFFresh,s6Step373HeadGvFresh,s6Step373HeadFvFresh]=
    some (s6Step373HeadFvAfter,⟨s6Step373HeadFOut,s6Step373HeadGOut,s6Step373HeadFvOut,s6Step373HeadGvOut⟩,(growRow 777 s6Step373HeadGFresh ++ (growRow 795 s6Step373HeadFFresh ++ (growRow 775 s6Step373HeadGvFresh ++ (growRow 776 s6Step373HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step373HeadBank_rows]
  rfl

private theorem s6Step373Front_checked : compileHmrSourceFrontLog s6Step373EntryFBefore s6Step373FrontBank 85 203 ⟨85,84,203,203⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step373FrontLog=some s6Step373FrontPlan := by
  have pairEq : s6Step373FrontPair=⟨s6Step373HeadFRow,s6Step373HeadGRow,s6Step373HeadFvRow,s6Step373HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step373FrontHead=⟨s6Step373ExitFRow,s6Step373ExitGRow,s6Step373ExitFvRow,s6Step373ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step373Add0A=s6Step373FrontHead.f.wires := by decide +kernel
  have gEq : s6Step373Add0B=s6Step373FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step373Add1A=s6Step373FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step373Add1B=s6Step373FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step373EntryFBefore s6Step373FrontBank 85 203 ⟨85,84,203,203⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step373FrontLog s6Step373FrontPlan
  · exact s6Step373Front_entry
  · exact s6Step373EntryBank_checked
  · exact s6Step373Front_sigma
  · rfl
  · exact s6Step373Front_branch
  · rfl
  · simpa only [s6Step373FrontPlan,pairEq] using s6Step373HeadBank_checked
  · simpa only [s6Step373FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step373F4_checked
  · exact s6Step373Counter_checked
  · rfl
  · simpa only [s6Step373FrontPlan,headEq] using s6Step373ExitBank_checked

private theorem s6Step373Complete_explicit_checked : compileHmrEarlyStepLog s6Step373EntryFBefore s6Step373FrontBank 85 203 ⟨85,84,203,203⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step373CompleteLog=some s6Step373CompletePlan := by
  let Q := s6Step373EarlyControlPlan
  have hq := s6Step373EarlyControl_plan_checked
  have fv1 : s6Step373CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step373CompleteOut.fv.payload[2]?.getD s6Step373CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step373CompleteOut.fv.payload[3]?.getD s6Step373CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step373CompleteOut.fv.payload[4]?.getD s6Step373CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step373EntryFBefore s6Step373EarlyControlArena s6Step373FrontBank 85 203 ⟨85,84,203,203⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step373CompleteLog s6Step373FrontPlan Q
    s6Step373Front_checked s6Step373Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step373Complete_owned s6Step373Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step373EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 s6Step373CompleteOut.fv.second (s6Step373CompleteOut.fv.payload[2]?.getD s6Step373CompleteOut.fv.sign) (s6Step373CompleteOut.fv.payload[3]?.getD s6Step373CompleteOut.fv.sign) (s6Step373CompleteOut.fv.payload[4]?.getD s6Step373CompleteOut.fv.sign) 821 60 s6Step373EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep373Arena : Arena := s6Step373EntryFBefore
def s6PrivateStep373Bank : WindowBank := s6Step373FrontBank
def s6PrivateStep373Spec : HmrSourceWalkStepLog := ⟨85,203,⟨85,84,203,203⟩,60,.early s6Step373CompleteLog⟩
def s6PrivateStep373Plan : HmrSourceStepPlan := .early s6Step373CompletePlan
theorem s6PrivateStep373_source : s6PrivateStep373Spec=s6ObservedLogs368[5] := rfl
theorem s6PrivateStep373_checked : compileHmrSourceStepLog s6PrivateStep373Arena s6PrivateStep373Bank
    s6PrivateStep373Spec.fgWidth s6PrivateStep373Spec.vWidth s6PrivateStep373Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 373 s6PrivateStep373Spec.need none s6PrivateStep373Spec.log=some s6PrivateStep373Plan := by
  change compileHmrSourceStepLog s6Step373EntryFBefore s6Step373FrontBank 85 203 ⟨85,84,203,203⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 373 60 none (.early s6Step373CompleteLog)=some (.early s6Step373CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 373<498)]
  rw [s6Step373Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
