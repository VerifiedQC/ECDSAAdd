import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep370
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

private def s6Step372CompleteMoves : List (Wire × Wire) := [(821,85)]

private def s6Step372EarlyControlLog : HmrEarlyControlLog := ⟨[821, 802, 908, 805, 890],[876],[796],[843, 877, 792, 816, 819, 920],[]⟩

private def s6Step372FrontLog : HmrFrontAllocationLog := ⟨⟨[[908], [], [], []],[[890], [805], [802], [869]],[[], [], [], []]⟩,[858],[828],[876],[796],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[876, 796, 843, 877]⟩

private def s6Step372CompleteLog : HmrEarlyStepLog := ⟨s6Step372FrontLog,s6Step372CompleteMoves,s6Step372EarlyControlLog⟩

private def s6Step372ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩

private def s6Step372ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩

private def s6Step372ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84],777⟩

private def s6Step372ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888],775⟩

private def s6Step372FrontOut : WindowBank := ⟨s6Step372ExitFOut,s6Step372ExitGOut,s6Step372ExitFvOut,s6Step372ExitGvOut⟩

private def s6Step372CompleteOut : WindowBank := s6Step372FrontOut.repacked s6Step372CompleteMoves

private def s6Step372EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step372EarlyControlPositiveArena,[876],s6Step372EarlyControlEqualityArena,[796],⟨⟨858,false⟩,[⟨⟨876,false⟩,796⟩]⟩⟩

private def s6Step372EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,821⟩,⟨⟨772,false⟩,802⟩,⟨⟨771,false⟩,908⟩,⟨⟨770,false⟩,805⟩,⟨⟨769,false⟩,890⟩]⟩

private def s6Step372EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step372EarlyControlZeroArena,s6Step372EarlyControlZeroPlan,s6Step372EarlyControlClassPlan,s6Step372EarlyControlFlagArena,s6Step372EarlyControlFittedArena,s6Step372EarlyControlHistoryArena,s6Step372EarlyControlSigmaArena,s6Step372EarlyControlOutputArena,s6Step372EarlyControlLog⟩

private def s6Step372CounterWork : List Wire := [876, 796, 843, 877]

private theorem s6Step372Counter_bounded : s6Step372CounterWork.toFinset⊆arenaWires := by norm_num [s6Step372CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step372HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372CounterDuring : Arena := ⟨s6Step372HeadFvAfter.live∪s6Step372CounterWork.toFinset,Finset.union_subset s6Step372HeadFvAfter.bounded s6Step372Counter_bounded⟩

private def s6Step372EntryFFresh : List Wire := [908]

private def s6Step372EntryFvFresh : List Wire := []

private def s6Step372EntryGFresh : List Wire := []

private def s6Step372EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372EntryGvAfter : Arena := s6Step372EntryFAfter

private def s6Step372EntryGvFresh : List Wire := []

private def s6Step372ExitFExtra : List Wire := [908, 805]

private def s6Step372ExitGExtra : List Wire := [85, 890]

private def s6Step372ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372ExitGvExtra : List Wire := [802]

private def s6Step372Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372Add0Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step372Add0_bounded : s6Step372Add0Work.toFinset⊆arenaWires := by
  have h : s6Step372Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step372Add0During : Arena := ⟨s6Step372Add0Arena.live∪s6Step372Add0Work.toFinset,Finset.union_subset s6Step372Add0Arena.bounded s6Step372Add0_bounded⟩

private def s6Step372Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372Add1Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step372Add1_bounded : s6Step372Add1Work.toFinset⊆arenaWires := by
  have h : s6Step372Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step372Add1During : Arena := ⟨s6Step372Add1Arena.live∪s6Step372Add1Work.toFinset,Finset.union_subset s6Step372Add1Arena.bounded s6Step372Add1_bounded⟩

private def s6Step372F4FlagArena : Arena := ⟨s6Step372HeadFvAfter.live∪{876},Finset.union_subset s6Step372HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step372F4Plan : HmrHybridF4Plan := ⟨s6Step372F4FlagArena,[876],s6Step372Add0Arena,[796],s6Step372Add0During,s6Step372Add0Work,s6Step372Add1During,s6Step372Add1Work⟩

private def s6Step372HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 908, 805],795⟩

private def s6Step372HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩

private def s6Step372HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 890],777⟩

private def s6Step372HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 802],775⟩

private def s6Step372FrontHead : WindowBank := ⟨s6Step372HeadFOut,s6Step372HeadGOut,s6Step372HeadFvOut,s6Step372HeadGvOut⟩

private def s6Step372EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 908],795⟩

private def s6Step372EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩

private def s6Step372EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],777⟩

private def s6Step372EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888],775⟩

private def s6Step372FrontPair : WindowBank := ⟨s6Step372EntryFOut,s6Step372EntryGOut,s6Step372EntryFvOut,s6Step372EntryGvOut⟩

private def s6Step372FrontSigmaArena : Arena := ⟨s6Step372EntryGvAfter.live∪{858},Finset.union_subset s6Step372EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step372HeadFFresh : List Wire := [805]

private def s6Step372HeadFvFresh : List Wire := [869]

private def s6Step372HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372HeadGFresh : List Wire := [890]

private def s6Step372HeadGvFresh : List Wire := [802]

private def s6Step372FrontPlan : HmrSourceFront := ⟨s6Step372EntryGvAfter,s6Step372FrontPair,(growRow 795 s6Step372EntryFFresh ++ (growRow 777 s6Step372EntryGFresh ++ (growRow 776 s6Step372EntryFvFresh ++ (growRow 775 s6Step372EntryGvFresh ++ [])))),s6Step372FrontSigmaArena,[858],s6Step372HeadGBefore,[828],
  s6Step372HeadFvAfter,s6Step372FrontHead,(growRow 777 s6Step372HeadGFresh ++ (growRow 795 s6Step372HeadFFresh ++ (growRow 775 s6Step372HeadGvFresh ++ (growRow 776 s6Step372HeadFvFresh ++ [])))),s6Step372F4Plan,s6Step372CounterDuring,s6Step372CounterWork,s6Step372ExitGvAfter,s6Step372FrontOut,(shrinkRow 777 s6Step372ExitGExtra ++ (shrinkRow 795 s6Step372ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step372ExitGvExtra ++ []))))⟩

private def s6Step372CompletePlan : HmrEarlyStepPlan := ⟨s6Step372FrontPlan,s6Step372EarlyControlArena,s6Step372EarlyControlPlan,s6Step372CompleteMoves⟩

private theorem s6Step372Complete_apart : List.Disjoint (s6Step372CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [858, 828, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step372CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[858, 828, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step372Complete_owned : (s6Step372CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step372EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step372EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step372CompleteMoveArena : Arena := ⟨s6Step372ExitGvAfter.live∪{85},Finset.union_subset s6Step372ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step372Complete_repack : s6Step372ExitGvAfter.checkRepack s6Step372CompleteMoves=some s6Step372EarlyControlArena := by
  have owned : 821∈s6Step372ExitGvAfter.live := by norm_num [s6Step372ExitGvAfter,arenaWires]
  have reserve : s6Step372ExitGvAfter.reserve {85}=some s6Step372CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step372ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step372CompleteMoveArena.retireSet {821}=s6Step372EarlyControlArena := by
    unfold Arena.retireSet s6Step372EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step372CompleteMoveArena,s6Step372ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step372CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step372CompleteMoveArena.retireSet {821}).checkRepack []=some s6Step372EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step372EarlyControl_branchOwned : ([828] : List Wire).toFinset⊆s6Step372EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step372EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372EarlyControl_branch : compileHmrBranchRetirement s6Step372EarlyControlSigmaArena 828=some s6Step372EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step372EarlyControl_branchOwned
  · ext q
    simp [s6Step372EarlyControlOutputArena,s6Step372EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step372EarlyControl_classEqualityBorrow : s6Step372EarlyControlPositiveArena.checkBorrow (([858, 876] : List Wire).length-1) s6Step372EarlyControlLog.classWork=some s6Step372EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step372EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step372EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step372EarlyControlEqualityArena,s6Step372EarlyControlPositiveArena,s6Step372EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step372EarlyControl_classEqualityOwned : ([858, 876] : List Wire).toFinset⊆s6Step372EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step372EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372EarlyControl_classEquality : compileHmrEqualityLog s6Step372EarlyControlPositiveArena [858, 876] 0 s6Step372EarlyControlLog.classWork=some (s6Step372EarlyControlEqualityArena,s6Step372EarlyControlLog.classWork,s6Step372EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step372EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step372EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step372EarlyControl_classOwned : ([769, 890, 858] : List Wire).toFinset⊆s6Step372EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step372EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372EarlyControl_positiveBorrow : s6Step372EarlyControlZeroArena.checkBorrow (1) s6Step372EarlyControlLog.positiveWork=some s6Step372EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step372EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step372EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step372EarlyControlPositiveArena,s6Step372EarlyControlZeroArena,s6Step372EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step372EarlyControl_class : compileHmrSourceClassLog s6Step372EarlyControlZeroArena false 769 s6Step372EarlyControlZeroPlan.top 0 858 s6Step372EarlyControlLog.positiveWork s6Step372EarlyControlLog.classWork=some s6Step372EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step372EarlyControlClassPlan s6Step372EarlyControlZeroArena false 769 s6Step372EarlyControlZeroPlan.top 0 858
  constructor
  · decide +kernel
  · exact s6Step372EarlyControl_classOwned
  · exact s6Step372EarlyControl_positiveBorrow
  · exact s6Step372EarlyControl_classEquality

private theorem s6Step372EarlyControl_entryRecordOwned : ([828, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step372EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step372EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372EarlyControl_entrySigmaOwned : ([858, 254] : List Wire).toFinset⊆s6Step372EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step372EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372EarlyControl_fitBorrow : s6Step372EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step372EarlyControlLog.recordFresh=some s6Step372EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step372EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step372EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step372EarlyControlFittedArena,s6Step372EarlyControlFlagArena,s6Step372EarlyControlLog,arenaWires]

private theorem s6Step372EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step372EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step372EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372EarlyControl_fit : compileHmrRecordGrowLog s6Step372EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step372EarlyControlLog.recordFresh=some s6Step372EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step372EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step372EarlyControl_fitBorrow

private theorem s6Step372EarlyControl_flagsBorrow : s6Step372EarlyControlEqualityArena.checkBorrow (6) s6Step372EarlyControlLog.flagWork=some s6Step372EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step372EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step372EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step372EarlyControlFlagArena,s6Step372EarlyControlEqualityArena,s6Step372EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step372EarlyControl_flagsOwned : ([796, 253, 252, 251] : List Wire).toFinset⊆s6Step372EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step372EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372EarlyControl_flags : compileHmrFlagsLog s6Step372EarlyControlClassPlan.equalityArena s6Step372EarlyControlClassPlan.equality.top 253 252 251 s6Step372EarlyControlLog.flagWork=some s6Step372EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step372EarlyControl_flagsOwned⟩
  · exact s6Step372EarlyControl_flagsBorrow

private theorem s6Step372EarlyControl_historyBorrow : s6Step372EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step372EarlyControlLog.recordFresh=some s6Step372EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step372EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step372EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step372EarlyControlHistoryArena,s6Step372EarlyControlArena,s6Step372EarlyControlLog,arenaWires]

private theorem s6Step372EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step372EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step372EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372EarlyControl_history : compileHmrRecordGrowLog s6Step372EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step372EarlyControlLog.recordFresh=some s6Step372EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step372EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step372EarlyControl_historyBorrow

private theorem s6Step372EarlyControl_sigmaOwned : ([254, 858] : List Wire).toFinset⊆s6Step372EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step372EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372EarlyControl_sigmaReleaseOwned : ([858] : List Wire).toFinset⊆s6Step372EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step372EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372EarlyControl_sigmaRelease : s6Step372EarlyControlHistoryArena.release {858} (fun _ => false)=some s6Step372EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step372EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step372EarlyControlSigmaArena,s6Step372EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step372EarlyControl_sigma : compileHmrSigmaDropLog s6Step372EarlyControlHistoryArena false 0 0 254 858 []=some s6Step372EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step372EarlyControl_sigmaOwned⟩
  · exact s6Step372EarlyControl_sigmaRelease

private theorem s6Step372EarlyControl_zeroBorrow : s6Step372EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step372EarlyControlLog.zeroWork=some s6Step372EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step372EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step372EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step372EarlyControlZeroArena,s6Step372EarlyControlArena,s6Step372EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step372EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step372EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step372EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372EarlyControl_zero : compileHmrEqualityLog s6Step372EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step372EarlyControlLog.zeroWork=some (s6Step372EarlyControlZeroArena,s6Step372EarlyControlLog.zeroWork,s6Step372EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step372EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step372EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step372EarlyControl_logged : s6Step372EarlyControlPlan.Logged s6Step372EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 828 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step372EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step372EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step372EarlyControl_zero
  · exact s6Step372EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step372EarlyControl_flags
  · exact s6Step372EarlyControl_fit
  · exact s6Step372EarlyControl_history
  · exact s6Step372EarlyControl_sigma
  · exact s6Step372EarlyControl_branch

private theorem s6Step372EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step372EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 828 60 s6Step372EarlyControlLog=some s6Step372EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step372EarlyControlPlan s6Step372EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 828 60 s6Step372EarlyControl_logged

private def s6Step372EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩

private def s6Step372EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩

private def s6Step372EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],777⟩

private def s6Step372EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888],775⟩

private def s6Step372FrontBank : WindowBank := ⟨s6Step372EntryFRow,s6Step372EntryGRow,s6Step372EntryFvRow,s6Step372EntryGvRow⟩

private def s6Step372Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 908, 805, 795]

private def s6Step372Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 890, 777]

private def s6Step372Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 776]

private def s6Step372Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 802, 775]

private theorem s6Step372Counter_apart : Disjoint s6Step372HeadFvAfter.live s6Step372CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step372HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372Counter_borrowed : s6Step372HeadFvAfter.checkBorrow 4 s6Step372CounterWork=some s6Step372CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step372HeadFvAfter s6Step372CounterDuring s6Step372CounterWork.toFinset s6Step372Counter_bounded s6Step372Counter_apart rfl

private theorem s6Step372Counter_owned : (858::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step372HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step372HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372Counter_checked : compileHmrCounterStepLog s6Step372HeadFvAfter true 858 [774, 773, 772, 771, 770, 769] s6Step372CounterWork=some s6Step372CounterDuring := by
  have owned : ∀q∈858::[774, 773, 772, 771, 770, 769],q∈s6Step372HeadFvAfter.live := fun q hq => s6Step372Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step372Counter_borrowed

private theorem s6Step372EntryBank_incomingDistinct : ([s6Step372EntryFRow,s6Step372EntryGRow,s6Step372EntryFvRow,s6Step372EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372EntryF_Incoming : rowsOwned s6Step372EntryFBefore [s6Step372EntryFRow,s6Step372EntryGRow,s6Step372EntryFvRow,s6Step372EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step372EntryFRow,s6Step372EntryGRow,s6Step372EntryFvRow,s6Step372EntryGvRow] 0 s6Step372EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step372EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step372EntryBank_outgoingOwned : rowsOwned s6Step372EntryGvAfter [s6Step372EntryFOut,s6Step372EntryGOut,s6Step372EntryFvOut,s6Step372EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step372EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step372EntryF_Outgoing : rowsOwned s6Step372EntryGvAfter [s6Step372EntryFOut,s6Step372EntryGOut,s6Step372EntryFvOut,s6Step372EntryGvOut] :=
  hmrRows_owned_drop s6Step372EntryGvAfter [s6Step372EntryFOut,s6Step372EntryGOut,s6Step372EntryFvOut,s6Step372EntryGvOut] 0 s6Step372EntryBank_outgoingOwned

private theorem s6Step372EntryF_distinct : (s6Step372EntryFRow.sign::s6Step372EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372EntryF_owned : (s6Step372EntryFRow.sign::s6Step372EntryFRow.payload).toFinset⊆s6Step372EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step372EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372EntryF_reserved : s6Step372EntryFBefore.reserve s6Step372EntryFFresh.toFinset=some s6Step372EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step372EntryFFresh,arenaWires]
  · norm_num [s6Step372EntryFBefore,s6Step372EntryFFresh,arenaWires]
  · ext q
    simp only [s6Step372EntryFAfter,s6Step372EntryFBefore,s6Step372EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step372EntryF_checked : planRowResizeLog s6Step372EntryFBefore s6Step372EntryFRow 86 s6Step372EntryFFresh=
    some (s6Step372EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 908],795⟩,growRow 795 s6Step372EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step372EntryFBefore s6Step372EntryFAfter s6Step372EntryFRow 86 s6Step372EntryFFresh
    s6Step372EntryF_distinct s6Step372EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step372EntryF_reserved
  have rowEq : WindowRow.mk (s6Step372EntryFRow.payload++s6Step372EntryFFresh) s6Step372EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 908],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step372EntryFvAfter : Arena := s6Step372EntryFAfter

private def s6Step372EntryFvBefore : Arena := s6Step372EntryFAfter

private theorem s6Step372EntryFv_Incoming : rowsOwned s6Step372EntryFvBefore [s6Step372EntryFvRow,s6Step372EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step372EntryFRow,s6Step372EntryGRow,s6Step372EntryFvRow,s6Step372EntryGvRow] 2 s6Step372EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step372EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step372EntryFv_Outgoing : rowsOwned s6Step372EntryGvAfter [s6Step372EntryFvOut,s6Step372EntryGvOut] :=
  hmrRows_owned_drop s6Step372EntryGvAfter [s6Step372EntryFOut,s6Step372EntryGOut,s6Step372EntryFvOut,s6Step372EntryGvOut] 2 s6Step372EntryBank_outgoingOwned

private theorem s6Step372EntryFv_distinct : (s6Step372EntryFvRow.sign::s6Step372EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372EntryFv_owned : (s6Step372EntryFvRow.sign::s6Step372EntryFvRow.payload).toFinset⊆s6Step372EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step372EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372EntryFv_reserved : s6Step372EntryFvBefore.reserve s6Step372EntryFvFresh.toFinset=some s6Step372EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step372EntryFvFresh,arenaWires]
  · norm_num [s6Step372EntryFvBefore,s6Step372EntryFAfter,s6Step372EntryFvFresh,arenaWires]
  · simp only [s6Step372EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step372EntryFv_checked : planRowResizeLog s6Step372EntryFvBefore s6Step372EntryFvRow 202 s6Step372EntryFvFresh=
    some (s6Step372EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩,growRow 776 s6Step372EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step372EntryFvBefore s6Step372EntryFvAfter s6Step372EntryFvRow 202 s6Step372EntryFvFresh
    s6Step372EntryFv_distinct s6Step372EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step372EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step372EntryFvRow.payload++s6Step372EntryFvFresh) s6Step372EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step372EntryGAfter : Arena := s6Step372EntryFAfter

private def s6Step372EntryGBefore : Arena := s6Step372EntryFAfter

private theorem s6Step372EntryG_Incoming : rowsOwned s6Step372EntryGBefore [s6Step372EntryGRow,s6Step372EntryFvRow,s6Step372EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step372EntryFRow,s6Step372EntryGRow,s6Step372EntryFvRow,s6Step372EntryGvRow] 1 s6Step372EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step372EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step372EntryG_Outgoing : rowsOwned s6Step372EntryGvAfter [s6Step372EntryGOut,s6Step372EntryFvOut,s6Step372EntryGvOut] :=
  hmrRows_owned_drop s6Step372EntryGvAfter [s6Step372EntryFOut,s6Step372EntryGOut,s6Step372EntryFvOut,s6Step372EntryGvOut] 1 s6Step372EntryBank_outgoingOwned

private theorem s6Step372EntryG_distinct : (s6Step372EntryGRow.sign::s6Step372EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372EntryG_owned : (s6Step372EntryGRow.sign::s6Step372EntryGRow.payload).toFinset⊆s6Step372EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step372EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372EntryG_reserved : s6Step372EntryGBefore.reserve s6Step372EntryGFresh.toFinset=some s6Step372EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step372EntryGFresh,arenaWires]
  · norm_num [s6Step372EntryGBefore,s6Step372EntryFAfter,s6Step372EntryGFresh,arenaWires]
  · simp only [s6Step372EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step372EntryG_checked : planRowResizeLog s6Step372EntryGBefore s6Step372EntryGRow 86 s6Step372EntryGFresh=
    some (s6Step372EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],777⟩,growRow 777 s6Step372EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step372EntryGBefore s6Step372EntryGAfter s6Step372EntryGRow 86 s6Step372EntryGFresh
    s6Step372EntryG_distinct s6Step372EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step372EntryG_reserved
  have rowEq : WindowRow.mk (s6Step372EntryGRow.payload++s6Step372EntryGFresh) s6Step372EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step372EntryGvBefore : Arena := s6Step372EntryFAfter

private theorem s6Step372EntryGv_Incoming : rowsOwned s6Step372EntryGvBefore [s6Step372EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step372EntryFRow,s6Step372EntryGRow,s6Step372EntryFvRow,s6Step372EntryGvRow] 3 s6Step372EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step372EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step372EntryGv_Outgoing : rowsOwned s6Step372EntryGvAfter [s6Step372EntryGvOut] :=
  hmrRows_owned_drop s6Step372EntryGvAfter [s6Step372EntryFOut,s6Step372EntryGOut,s6Step372EntryFvOut,s6Step372EntryGvOut] 3 s6Step372EntryBank_outgoingOwned

private theorem s6Step372EntryGv_distinct : (s6Step372EntryGvRow.sign::s6Step372EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372EntryGv_owned : (s6Step372EntryGvRow.sign::s6Step372EntryGvRow.payload).toFinset⊆s6Step372EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step372EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372EntryGv_reserved : s6Step372EntryGvBefore.reserve s6Step372EntryGvFresh.toFinset=some s6Step372EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step372EntryGvFresh,arenaWires]
  · norm_num [s6Step372EntryGvBefore,s6Step372EntryFAfter,s6Step372EntryGvFresh,arenaWires]
  · simp only [s6Step372EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step372EntryGv_checked : planRowResizeLog s6Step372EntryGvBefore s6Step372EntryGvRow 202 s6Step372EntryGvFresh=
    some (s6Step372EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888],775⟩,growRow 775 s6Step372EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step372EntryGvBefore s6Step372EntryGvAfter s6Step372EntryGvRow 202 s6Step372EntryGvFresh
    s6Step372EntryGv_distinct s6Step372EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step372EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step372EntryGvRow.payload++s6Step372EntryGvFresh) s6Step372EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step372EntryBank_rows : planWindowRowsLog s6Step372EntryFBefore [(s6Step372EntryFRow,86),(s6Step372EntryGRow,86),(s6Step372EntryFvRow,202),(s6Step372EntryGvRow,202)] [s6Step372EntryFFresh,s6Step372EntryGFresh,s6Step372EntryFvFresh,s6Step372EntryGvFresh]=
    some (s6Step372EntryGvAfter,[s6Step372EntryFOut,s6Step372EntryGOut,s6Step372EntryFvOut,s6Step372EntryGvOut],(growRow 795 s6Step372EntryFFresh ++ (growRow 777 s6Step372EntryGFresh ++ (growRow 776 s6Step372EntryFvFresh ++ (growRow 775 s6Step372EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step372EntryGvAfter [] []=some (s6Step372EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step372EntryGvBefore s6Step372EntryGvAfter s6Step372EntryGvAfter
    s6Step372EntryGvRow s6Step372EntryGvOut 202 s6Step372EntryGvFresh [] [] []
    (growRow 775 s6Step372EntryGvFresh) ([]) s6Step372EntryGv_Incoming s6Step372EntryGv_checked h4 s6Step372EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step372EntryFvBefore s6Step372EntryFvAfter s6Step372EntryGvAfter
    s6Step372EntryFvRow s6Step372EntryFvOut 202 s6Step372EntryFvFresh [(s6Step372EntryGvRow,202)] [s6Step372EntryGvFresh] [s6Step372EntryGvOut]
    (growRow 776 s6Step372EntryFvFresh) ((growRow 775 s6Step372EntryGvFresh ++ [])) s6Step372EntryFv_Incoming s6Step372EntryFv_checked h3 s6Step372EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step372EntryGBefore s6Step372EntryGAfter s6Step372EntryGvAfter
    s6Step372EntryGRow s6Step372EntryGOut 86 s6Step372EntryGFresh [(s6Step372EntryFvRow,202),(s6Step372EntryGvRow,202)] [s6Step372EntryFvFresh,s6Step372EntryGvFresh] [s6Step372EntryFvOut,s6Step372EntryGvOut]
    (growRow 777 s6Step372EntryGFresh) ((growRow 776 s6Step372EntryFvFresh ++ (growRow 775 s6Step372EntryGvFresh ++ []))) s6Step372EntryG_Incoming s6Step372EntryG_checked h2 s6Step372EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step372EntryFBefore s6Step372EntryFAfter s6Step372EntryGvAfter
    s6Step372EntryFRow s6Step372EntryFOut 86 s6Step372EntryFFresh [(s6Step372EntryGRow,86),(s6Step372EntryFvRow,202),(s6Step372EntryGvRow,202)] [s6Step372EntryGFresh,s6Step372EntryFvFresh,s6Step372EntryGvFresh] [s6Step372EntryGOut,s6Step372EntryFvOut,s6Step372EntryGvOut]
    (growRow 795 s6Step372EntryFFresh) ((growRow 777 s6Step372EntryGFresh ++ (growRow 776 s6Step372EntryFvFresh ++ (growRow 775 s6Step372EntryGvFresh ++ [])))) s6Step372EntryF_Incoming s6Step372EntryF_checked h1 s6Step372EntryF_Outgoing
  exact h0

private theorem s6Step372EntryBank_checked : compileHmrBankResizeLog .entry s6Step372EntryFBefore ⟨s6Step372EntryFRow,s6Step372EntryGRow,s6Step372EntryFvRow,s6Step372EntryGvRow⟩ ⟨86,86,202,202⟩ [s6Step372EntryFFresh,s6Step372EntryGFresh,s6Step372EntryFvFresh,s6Step372EntryGvFresh]=
    some (s6Step372EntryGvAfter,⟨s6Step372EntryFOut,s6Step372EntryGOut,s6Step372EntryFvOut,s6Step372EntryGvOut⟩,(growRow 795 s6Step372EntryFFresh ++ (growRow 777 s6Step372EntryGFresh ++ (growRow 776 s6Step372EntryFvFresh ++ (growRow 775 s6Step372EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step372EntryBank_rows]
  rfl

private def s6Step372ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372ExitFBefore : Arena := s6Step372ExitGAfter

private def s6Step372ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 908, 805],795⟩

private def s6Step372ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩

private def s6Step372ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 890],777⟩

private def s6Step372ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 802],775⟩

private theorem s6Step372ExitBank_incomingDistinct : ([s6Step372ExitGRow,s6Step372ExitFRow,s6Step372ExitFvRow,s6Step372ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372ExitF_Incoming : rowsOwned s6Step372ExitFBefore [s6Step372ExitFRow,s6Step372ExitFvRow,s6Step372ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step372ExitGRow,s6Step372ExitFRow,s6Step372ExitFvRow,s6Step372ExitGvRow] 1 s6Step372ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step372ExitFBefore (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step372ExitBank_outgoingOwned : rowsOwned s6Step372ExitGvAfter [s6Step372ExitGOut,s6Step372ExitFOut,s6Step372ExitFvOut,s6Step372ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step372ExitGvAfter (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step372ExitF_Outgoing : rowsOwned s6Step372ExitGvAfter [s6Step372ExitFOut,s6Step372ExitFvOut,s6Step372ExitGvOut] :=
  hmrRows_owned_drop s6Step372ExitGvAfter [s6Step372ExitGOut,s6Step372ExitFOut,s6Step372ExitFvOut,s6Step372ExitGvOut] 1 s6Step372ExitBank_outgoingOwned

private theorem s6Step372ExitF_distinct : (s6Step372ExitFRow.sign::s6Step372ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372ExitF_owned : (s6Step372ExitFRow.sign::s6Step372ExitFRow.payload).toFinset⊆s6Step372ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step372ExitFBefore (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372ExitF_retired : s6Step372ExitFBefore.retireSet s6Step372ExitFExtra.toFinset=s6Step372ExitFAfter := by
  unfold Arena.retireSet s6Step372ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step372ExitFBefore,s6Step372ExitGAfter,s6Step372ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step372ExitF_checked : planRowResizeLog s6Step372ExitFBefore s6Step372ExitFRow 85 []=
    some (s6Step372ExitFAfter,s6Step372ExitFOut,shrinkRow 795 s6Step372ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step372ExitFBefore s6Step372ExitFRow 85 s6Step372ExitF_distinct s6Step372ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step372ExitFRow.payload.take 85) s6Step372ExitFRow.sign=s6Step372ExitFOut := by decide +kernel
  have hi : s6Step372ExitFRow.payload.drop 85=s6Step372ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step372ExitF_retired] at result
  exact result

private def s6Step372ExitFvAfter : Arena := s6Step372ExitFAfter

private def s6Step372ExitFvBefore : Arena := s6Step372ExitFAfter

private theorem s6Step372ExitFv_Incoming : rowsOwned s6Step372ExitFvBefore [s6Step372ExitFvRow,s6Step372ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step372ExitGRow,s6Step372ExitFRow,s6Step372ExitFvRow,s6Step372ExitGvRow] 2 s6Step372ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step372ExitFvBefore (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step372ExitFv_Outgoing : rowsOwned s6Step372ExitGvAfter [s6Step372ExitFvOut,s6Step372ExitGvOut] :=
  hmrRows_owned_drop s6Step372ExitGvAfter [s6Step372ExitGOut,s6Step372ExitFOut,s6Step372ExitFvOut,s6Step372ExitGvOut] 2 s6Step372ExitBank_outgoingOwned

private theorem s6Step372ExitFv_distinct : (s6Step372ExitFvRow.sign::s6Step372ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372ExitFv_owned : (s6Step372ExitFvRow.sign::s6Step372ExitFvRow.payload).toFinset⊆s6Step372ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step372ExitFvBefore (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372ExitFv_reserved : s6Step372ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step372ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step372ExitFv_checked : planRowResizeLog s6Step372ExitFvBefore s6Step372ExitFvRow 203 []=
    some (s6Step372ExitFvAfter,s6Step372ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step372ExitFvBefore s6Step372ExitFvAfter s6Step372ExitFvRow 203 []
    s6Step372ExitFv_distinct s6Step372ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step372ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step372ExitFvRow.payload++[]) s6Step372ExitFvRow.sign=s6Step372ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step372ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step372ExitG_Incoming : rowsOwned s6Step372ExitGBefore [s6Step372ExitGRow,s6Step372ExitFRow,s6Step372ExitFvRow,s6Step372ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step372ExitGRow,s6Step372ExitFRow,s6Step372ExitFvRow,s6Step372ExitGvRow] 0 s6Step372ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step372ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step372ExitG_Outgoing : rowsOwned s6Step372ExitGvAfter [s6Step372ExitGOut,s6Step372ExitFOut,s6Step372ExitFvOut,s6Step372ExitGvOut] :=
  hmrRows_owned_drop s6Step372ExitGvAfter [s6Step372ExitGOut,s6Step372ExitFOut,s6Step372ExitFvOut,s6Step372ExitGvOut] 0 s6Step372ExitBank_outgoingOwned

private theorem s6Step372ExitG_distinct : (s6Step372ExitGRow.sign::s6Step372ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372ExitG_owned : (s6Step372ExitGRow.sign::s6Step372ExitGRow.payload).toFinset⊆s6Step372ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step372ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372ExitG_retired : s6Step372ExitGBefore.retireSet s6Step372ExitGExtra.toFinset=s6Step372ExitGAfter := by
  unfold Arena.retireSet s6Step372ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step372ExitGBefore,s6Step372ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step372ExitG_checked : planRowResizeLog s6Step372ExitGBefore s6Step372ExitGRow 85 []=
    some (s6Step372ExitGAfter,s6Step372ExitGOut,shrinkRow 777 s6Step372ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step372ExitGBefore s6Step372ExitGRow 85 s6Step372ExitG_distinct s6Step372ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step372ExitGRow.payload.take 85) s6Step372ExitGRow.sign=s6Step372ExitGOut := by decide +kernel
  have hi : s6Step372ExitGRow.payload.drop 85=s6Step372ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step372ExitG_retired] at result
  exact result

private def s6Step372ExitGvBefore : Arena := s6Step372ExitFAfter

private theorem s6Step372ExitGv_Incoming : rowsOwned s6Step372ExitGvBefore [s6Step372ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step372ExitGRow,s6Step372ExitFRow,s6Step372ExitFvRow,s6Step372ExitGvRow] 3 s6Step372ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step372ExitGvBefore (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step372ExitGv_Outgoing : rowsOwned s6Step372ExitGvAfter [s6Step372ExitGvOut] :=
  hmrRows_owned_drop s6Step372ExitGvAfter [s6Step372ExitGOut,s6Step372ExitFOut,s6Step372ExitFvOut,s6Step372ExitGvOut] 3 s6Step372ExitBank_outgoingOwned

private theorem s6Step372ExitGv_distinct : (s6Step372ExitGvRow.sign::s6Step372ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372ExitGv_owned : (s6Step372ExitGvRow.sign::s6Step372ExitGvRow.payload).toFinset⊆s6Step372ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step372ExitGvBefore (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372ExitGv_retired : s6Step372ExitGvBefore.retireSet s6Step372ExitGvExtra.toFinset=s6Step372ExitGvAfter := by
  unfold Arena.retireSet s6Step372ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step372ExitGvBefore,s6Step372ExitFAfter,s6Step372ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step372ExitGv_checked : planRowResizeLog s6Step372ExitGvBefore s6Step372ExitGvRow 202 []=
    some (s6Step372ExitGvAfter,s6Step372ExitGvOut,shrinkRow 775 s6Step372ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step372ExitGvBefore s6Step372ExitGvRow 202 s6Step372ExitGv_distinct s6Step372ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step372ExitGvRow.payload.take 202) s6Step372ExitGvRow.sign=s6Step372ExitGvOut := by decide +kernel
  have hi : s6Step372ExitGvRow.payload.drop 202=s6Step372ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step372ExitGv_retired] at result
  exact result

private theorem s6Step372ExitBank_rows : planWindowRowsLog s6Step372ExitGBefore [(s6Step372ExitGRow,85),(s6Step372ExitFRow,85),(s6Step372ExitFvRow,203),(s6Step372ExitGvRow,202)] [[],[],[],[]]=
    some (s6Step372ExitGvAfter,[s6Step372ExitGOut,s6Step372ExitFOut,s6Step372ExitFvOut,s6Step372ExitGvOut],(shrinkRow 777 s6Step372ExitGExtra ++ (shrinkRow 795 s6Step372ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step372ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step372ExitGvAfter [] []=some (s6Step372ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step372ExitGvBefore s6Step372ExitGvAfter s6Step372ExitGvAfter
    s6Step372ExitGvRow s6Step372ExitGvOut 202 [] [] [] []
    (shrinkRow 775 s6Step372ExitGvExtra) ([]) s6Step372ExitGv_Incoming s6Step372ExitGv_checked h4 s6Step372ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step372ExitFvBefore s6Step372ExitFvAfter s6Step372ExitGvAfter
    s6Step372ExitFvRow s6Step372ExitFvOut 203 [] [(s6Step372ExitGvRow,202)] [[]] [s6Step372ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step372ExitGvExtra ++ [])) s6Step372ExitFv_Incoming s6Step372ExitFv_checked h3 s6Step372ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step372ExitFBefore s6Step372ExitFAfter s6Step372ExitGvAfter
    s6Step372ExitFRow s6Step372ExitFOut 85 [] [(s6Step372ExitFvRow,203),(s6Step372ExitGvRow,202)] [[],[]] [s6Step372ExitFvOut,s6Step372ExitGvOut]
    (shrinkRow 795 s6Step372ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step372ExitGvExtra ++ []))) s6Step372ExitF_Incoming s6Step372ExitF_checked h2 s6Step372ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step372ExitGBefore s6Step372ExitGAfter s6Step372ExitGvAfter
    s6Step372ExitGRow s6Step372ExitGOut 85 [] [(s6Step372ExitFRow,85),(s6Step372ExitFvRow,203),(s6Step372ExitGvRow,202)] [[],[],[]] [s6Step372ExitFOut,s6Step372ExitFvOut,s6Step372ExitGvOut]
    (shrinkRow 777 s6Step372ExitGExtra) ((shrinkRow 795 s6Step372ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step372ExitGvExtra ++ [])))) s6Step372ExitG_Incoming s6Step372ExitG_checked h1 s6Step372ExitG_Outgoing
  exact h0

private theorem s6Step372ExitBank_checked : compileHmrBankResizeLog .exit s6Step372ExitGBefore ⟨s6Step372ExitFRow,s6Step372ExitGRow,s6Step372ExitFvRow,s6Step372ExitGvRow⟩ ⟨85,85,203,202⟩ [[],[],[],[]]=
    some (s6Step372ExitGvAfter,⟨s6Step372ExitFOut,s6Step372ExitGOut,s6Step372ExitFvOut,s6Step372ExitGvOut⟩,(shrinkRow 777 s6Step372ExitGExtra ++ (shrinkRow 795 s6Step372ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step372ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step372ExitBank_rows]
  rfl

private theorem s6Step372Add0_apart : Disjoint s6Step372Add0Arena.live s6Step372Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step372Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372Add0_card : s6Step372Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step372Add0_borrowed : s6Step372Add0Arena.checkBorrow (hmrHybridCount s6Step372Add0Arena s6Step372Add0B.length) s6Step372Add0Work=some s6Step372Add0During := by
  have len : s6Step372Add0Work.length=hmrHybridCount s6Step372Add0Arena s6Step372Add0B.length := by
    rw [hmrHybridCount,s6Step372Add0_card]
    decide +kernel
  have nd : s6Step372Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step372Add0Arena s6Step372Add0During s6Step372Add0Work.toFinset s6Step372Add0_bounded s6Step372Add0_apart rfl

private theorem s6Step372Add0_distinct : (876::828::796::(s6Step372Add0A++s6Step372Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372Add0_owned : (876::828::796::(s6Step372Add0A++s6Step372Add0B)).toFinset⊆s6Step372Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step372Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372Add0_checked : compileHmrHybridCinLog s6Step372Add0Arena 828 876 796 s6Step372Add0A s6Step372Add0B s6Step372Add0Work=some s6Step372Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step372Add0Arena s6Step372Add0During 828 876 796 s6Step372Add0A s6Step372Add0B s6Step372Add0Work
    (by decide +kernel) (by decide +kernel) s6Step372Add0_distinct
    (fun q hq => s6Step372Add0_owned (List.mem_toFinset.mpr hq)) s6Step372Add0_borrowed

private theorem s6Step372Add1_apart : Disjoint s6Step372Add1Arena.live s6Step372Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step372Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372Add1_card : s6Step372Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step372Add1_borrowed : s6Step372Add1Arena.checkBorrow (hmrHybridCount s6Step372Add1Arena s6Step372Add1B.length) s6Step372Add1Work=some s6Step372Add1During := by
  have len : s6Step372Add1Work.length=hmrHybridCount s6Step372Add1Arena s6Step372Add1B.length := by
    rw [hmrHybridCount,s6Step372Add1_card]
    decide +kernel
  have nd : s6Step372Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step372Add1Arena s6Step372Add1During s6Step372Add1Work.toFinset s6Step372Add1_bounded s6Step372Add1_apart rfl

private theorem s6Step372Add1_distinct : (876::828::796::(s6Step372Add1A++s6Step372Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372Add1_owned : (876::828::796::(s6Step372Add1A++s6Step372Add1B)).toFinset⊆s6Step372Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step372Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372Add1_checked : compileHmrHybridCinLog s6Step372Add1Arena 828 876 796 s6Step372Add1A s6Step372Add1B s6Step372Add1Work=some s6Step372Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step372Add1Arena s6Step372Add1During 828 876 796 s6Step372Add1A s6Step372Add1B s6Step372Add1Work
    (by decide +kernel) (by decide +kernel) s6Step372Add1_distinct
    (fun q hq => s6Step372Add1_owned (List.mem_toFinset.mpr hq)) s6Step372Add1_borrowed

private theorem s6Step372F4_apart : Disjoint (s6Step372Add0A++s6Step372Add0B).toFinset (s6Step372Add1A++s6Step372Add1B).toFinset := by
  have nd : ((s6Step372Add0A++s6Step372Add0B)++(s6Step372Add1A++s6Step372Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step372F4_carry : s6Step372F4FlagArena.checkBorrow 1 [796]=some s6Step372Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step372F4FlagArena,s6Step372HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step372F4FlagArena,s6Step372HeadFvAfter,s6Step372Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step372F4_distinct : (858::828::876::796::((s6Step372Add0A++s6Step372Add1A)++(s6Step372Add0B++s6Step372Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372F4_flag : s6Step372HeadFvAfter.checkBorrow 1 [876]=some s6Step372F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step372HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step372F4_owned : (858::828::((s6Step372Add0A++s6Step372Add1A)++(s6Step372Add0B++s6Step372Add1B))).toFinset⊆s6Step372HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step372HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372F4_checked : compileHmrHybridF4Log s6Step372HeadFvAfter 858 828 s6Step372Add0A s6Step372Add0B s6Step372Add1A s6Step372Add1B [876] [796] s6Step372Add0Work s6Step372Add1Work=some s6Step372F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step372HeadFvAfter s6Step372F4FlagArena s6Step372Add0Arena s6Step372Add0During s6Step372Add1During 858 828
    s6Step372Add0A s6Step372Add0B s6Step372Add1A s6Step372Add1B [876] [796] s6Step372Add0Work s6Step372Add1Work
    (fun q hq => s6Step372F4_owned (List.mem_toFinset.mpr hq)) s6Step372F4_flag s6Step372F4_carry
    s6Step372F4_distinct s6Step372F4_apart s6Step372Add0_checked s6Step372Add1_checked

private theorem s6Step372Front_branch : s6Step372FrontSigmaArena.checkBorrow 1 [828]=some s6Step372HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step372FrontSigmaArena,s6Step372EntryGvAfter,s6Step372EntryFAfter,arenaWires]
  · ext q
    simp only [s6Step372FrontSigmaArena,s6Step372EntryGvAfter,s6Step372EntryFAfter,s6Step372HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step372Front_entry : HmrFrontEntryValid s6Step372EntryFBefore s6Step372FrontBank 86 202 ⟨85,85,203,202⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step372FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step372EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step372EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step372FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step372Front_sigma : s6Step372EntryGvAfter.checkBorrow 1 [858]=some s6Step372FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step372EntryGvAfter,s6Step372EntryFAfter,arenaWires]
  · rfl

private def s6Step372HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372HeadFBefore : Arena := s6Step372HeadGAfter

private def s6Step372HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 908],795⟩

private def s6Step372HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩

private def s6Step372HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],777⟩

private def s6Step372HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888],775⟩

private theorem s6Step372HeadBank_incomingDistinct : ([s6Step372HeadGRow,s6Step372HeadFRow,s6Step372HeadGvRow,s6Step372HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372HeadF_Incoming : rowsOwned s6Step372HeadFBefore [s6Step372HeadFRow,s6Step372HeadGvRow,s6Step372HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step372HeadGRow,s6Step372HeadFRow,s6Step372HeadGvRow,s6Step372HeadFvRow] 1 s6Step372HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step372HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step372HeadBank_outgoingOwned : rowsOwned s6Step372HeadFvAfter [s6Step372HeadGOut,s6Step372HeadFOut,s6Step372HeadGvOut,s6Step372HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step372HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step372HeadF_Outgoing : rowsOwned s6Step372HeadFvAfter [s6Step372HeadFOut,s6Step372HeadGvOut,s6Step372HeadFvOut] :=
  hmrRows_owned_drop s6Step372HeadFvAfter [s6Step372HeadGOut,s6Step372HeadFOut,s6Step372HeadGvOut,s6Step372HeadFvOut] 1 s6Step372HeadBank_outgoingOwned

private theorem s6Step372HeadF_distinct : (s6Step372HeadFRow.sign::s6Step372HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372HeadF_owned : (s6Step372HeadFRow.sign::s6Step372HeadFRow.payload).toFinset⊆s6Step372HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step372HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372HeadF_reserved : s6Step372HeadFBefore.reserve s6Step372HeadFFresh.toFinset=some s6Step372HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step372HeadFFresh,arenaWires]
  · norm_num [s6Step372HeadFBefore,s6Step372HeadGAfter,s6Step372HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step372HeadFAfter,s6Step372HeadFBefore,s6Step372HeadGAfter,s6Step372HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step372HeadF_checked : planRowResizeLog s6Step372HeadFBefore s6Step372HeadFRow 87 s6Step372HeadFFresh=
    some (s6Step372HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 908, 805],795⟩,growRow 795 s6Step372HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step372HeadFBefore s6Step372HeadFAfter s6Step372HeadFRow 87 s6Step372HeadFFresh
    s6Step372HeadF_distinct s6Step372HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step372HeadF_reserved
  have rowEq : WindowRow.mk (s6Step372HeadFRow.payload++s6Step372HeadFFresh) s6Step372HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 908, 805],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step372HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step372HeadFvBefore : Arena := s6Step372HeadGvAfter

private theorem s6Step372HeadFv_Incoming : rowsOwned s6Step372HeadFvBefore [s6Step372HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step372HeadGRow,s6Step372HeadFRow,s6Step372HeadGvRow,s6Step372HeadFvRow] 3 s6Step372HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step372HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step372HeadFv_Outgoing : rowsOwned s6Step372HeadFvAfter [s6Step372HeadFvOut] :=
  hmrRows_owned_drop s6Step372HeadFvAfter [s6Step372HeadGOut,s6Step372HeadFOut,s6Step372HeadGvOut,s6Step372HeadFvOut] 3 s6Step372HeadBank_outgoingOwned

private theorem s6Step372HeadFv_distinct : (s6Step372HeadFvRow.sign::s6Step372HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372HeadFv_owned : (s6Step372HeadFvRow.sign::s6Step372HeadFvRow.payload).toFinset⊆s6Step372HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step372HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372HeadFv_reserved : s6Step372HeadFvBefore.reserve s6Step372HeadFvFresh.toFinset=some s6Step372HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step372HeadFvFresh,arenaWires]
  · norm_num [s6Step372HeadFvBefore,s6Step372HeadGvAfter,s6Step372HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step372HeadFvAfter,s6Step372HeadFvBefore,s6Step372HeadGvAfter,s6Step372HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step372HeadFv_checked : planRowResizeLog s6Step372HeadFvBefore s6Step372HeadFvRow 203 s6Step372HeadFvFresh=
    some (s6Step372HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩,growRow 776 s6Step372HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step372HeadFvBefore s6Step372HeadFvAfter s6Step372HeadFvRow 203 s6Step372HeadFvFresh
    s6Step372HeadFv_distinct s6Step372HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step372HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step372HeadFvRow.payload++s6Step372HeadFvFresh) s6Step372HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step372HeadG_Incoming : rowsOwned s6Step372HeadGBefore [s6Step372HeadGRow,s6Step372HeadFRow,s6Step372HeadGvRow,s6Step372HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step372HeadGRow,s6Step372HeadFRow,s6Step372HeadGvRow,s6Step372HeadFvRow] 0 s6Step372HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step372HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step372HeadG_Outgoing : rowsOwned s6Step372HeadFvAfter [s6Step372HeadGOut,s6Step372HeadFOut,s6Step372HeadGvOut,s6Step372HeadFvOut] :=
  hmrRows_owned_drop s6Step372HeadFvAfter [s6Step372HeadGOut,s6Step372HeadFOut,s6Step372HeadGvOut,s6Step372HeadFvOut] 0 s6Step372HeadBank_outgoingOwned

private theorem s6Step372HeadG_distinct : (s6Step372HeadGRow.sign::s6Step372HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372HeadG_owned : (s6Step372HeadGRow.sign::s6Step372HeadGRow.payload).toFinset⊆s6Step372HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step372HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372HeadG_reserved : s6Step372HeadGBefore.reserve s6Step372HeadGFresh.toFinset=some s6Step372HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step372HeadGFresh,arenaWires]
  · norm_num [s6Step372HeadGBefore,s6Step372HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step372HeadGAfter,s6Step372HeadGBefore,s6Step372HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step372HeadG_checked : planRowResizeLog s6Step372HeadGBefore s6Step372HeadGRow 87 s6Step372HeadGFresh=
    some (s6Step372HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 890],777⟩,growRow 777 s6Step372HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step372HeadGBefore s6Step372HeadGAfter s6Step372HeadGRow 87 s6Step372HeadGFresh
    s6Step372HeadG_distinct s6Step372HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step372HeadG_reserved
  have rowEq : WindowRow.mk (s6Step372HeadGRow.payload++s6Step372HeadGFresh) s6Step372HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 890],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step372HeadGvBefore : Arena := s6Step372HeadFAfter

private theorem s6Step372HeadGv_Incoming : rowsOwned s6Step372HeadGvBefore [s6Step372HeadGvRow,s6Step372HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step372HeadGRow,s6Step372HeadFRow,s6Step372HeadGvRow,s6Step372HeadFvRow] 2 s6Step372HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step372HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step372HeadGv_Outgoing : rowsOwned s6Step372HeadFvAfter [s6Step372HeadGvOut,s6Step372HeadFvOut] :=
  hmrRows_owned_drop s6Step372HeadFvAfter [s6Step372HeadGOut,s6Step372HeadFOut,s6Step372HeadGvOut,s6Step372HeadFvOut] 2 s6Step372HeadBank_outgoingOwned

private theorem s6Step372HeadGv_distinct : (s6Step372HeadGvRow.sign::s6Step372HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step372HeadGv_owned : (s6Step372HeadGvRow.sign::s6Step372HeadGvRow.payload).toFinset⊆s6Step372HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step372HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step372HeadGv_reserved : s6Step372HeadGvBefore.reserve s6Step372HeadGvFresh.toFinset=some s6Step372HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step372HeadGvFresh,arenaWires]
  · norm_num [s6Step372HeadGvBefore,s6Step372HeadFAfter,s6Step372HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step372HeadGvAfter,s6Step372HeadGvBefore,s6Step372HeadFAfter,s6Step372HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step372HeadGv_checked : planRowResizeLog s6Step372HeadGvBefore s6Step372HeadGvRow 203 s6Step372HeadGvFresh=
    some (s6Step372HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 802],775⟩,growRow 775 s6Step372HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step372HeadGvBefore s6Step372HeadGvAfter s6Step372HeadGvRow 203 s6Step372HeadGvFresh
    s6Step372HeadGv_distinct s6Step372HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step372HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step372HeadGvRow.payload++s6Step372HeadGvFresh) s6Step372HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 802],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step372HeadBank_rows : planWindowRowsLog s6Step372HeadGBefore [(s6Step372HeadGRow,87),(s6Step372HeadFRow,87),(s6Step372HeadGvRow,203),(s6Step372HeadFvRow,203)] [s6Step372HeadGFresh,s6Step372HeadFFresh,s6Step372HeadGvFresh,s6Step372HeadFvFresh]=
    some (s6Step372HeadFvAfter,[s6Step372HeadGOut,s6Step372HeadFOut,s6Step372HeadGvOut,s6Step372HeadFvOut],(growRow 777 s6Step372HeadGFresh ++ (growRow 795 s6Step372HeadFFresh ++ (growRow 775 s6Step372HeadGvFresh ++ (growRow 776 s6Step372HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step372HeadFvAfter [] []=some (s6Step372HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step372HeadFvBefore s6Step372HeadFvAfter s6Step372HeadFvAfter
    s6Step372HeadFvRow s6Step372HeadFvOut 203 s6Step372HeadFvFresh [] [] []
    (growRow 776 s6Step372HeadFvFresh) ([]) s6Step372HeadFv_Incoming s6Step372HeadFv_checked h4 s6Step372HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step372HeadGvBefore s6Step372HeadGvAfter s6Step372HeadFvAfter
    s6Step372HeadGvRow s6Step372HeadGvOut 203 s6Step372HeadGvFresh [(s6Step372HeadFvRow,203)] [s6Step372HeadFvFresh] [s6Step372HeadFvOut]
    (growRow 775 s6Step372HeadGvFresh) ((growRow 776 s6Step372HeadFvFresh ++ [])) s6Step372HeadGv_Incoming s6Step372HeadGv_checked h3 s6Step372HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step372HeadFBefore s6Step372HeadFAfter s6Step372HeadFvAfter
    s6Step372HeadFRow s6Step372HeadFOut 87 s6Step372HeadFFresh [(s6Step372HeadGvRow,203),(s6Step372HeadFvRow,203)] [s6Step372HeadGvFresh,s6Step372HeadFvFresh] [s6Step372HeadGvOut,s6Step372HeadFvOut]
    (growRow 795 s6Step372HeadFFresh) ((growRow 775 s6Step372HeadGvFresh ++ (growRow 776 s6Step372HeadFvFresh ++ []))) s6Step372HeadF_Incoming s6Step372HeadF_checked h2 s6Step372HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step372HeadGBefore s6Step372HeadGAfter s6Step372HeadFvAfter
    s6Step372HeadGRow s6Step372HeadGOut 87 s6Step372HeadGFresh [(s6Step372HeadFRow,87),(s6Step372HeadGvRow,203),(s6Step372HeadFvRow,203)] [s6Step372HeadFFresh,s6Step372HeadGvFresh,s6Step372HeadFvFresh] [s6Step372HeadFOut,s6Step372HeadGvOut,s6Step372HeadFvOut]
    (growRow 777 s6Step372HeadGFresh) ((growRow 795 s6Step372HeadFFresh ++ (growRow 775 s6Step372HeadGvFresh ++ (growRow 776 s6Step372HeadFvFresh ++ [])))) s6Step372HeadG_Incoming s6Step372HeadG_checked h1 s6Step372HeadG_Outgoing
  exact h0

private theorem s6Step372HeadBank_checked : compileHmrBankResizeLog .headroom s6Step372HeadGBefore ⟨s6Step372HeadFRow,s6Step372HeadGRow,s6Step372HeadFvRow,s6Step372HeadGvRow⟩ ⟨87,87,203,203⟩ [s6Step372HeadGFresh,s6Step372HeadFFresh,s6Step372HeadGvFresh,s6Step372HeadFvFresh]=
    some (s6Step372HeadFvAfter,⟨s6Step372HeadFOut,s6Step372HeadGOut,s6Step372HeadFvOut,s6Step372HeadGvOut⟩,(growRow 777 s6Step372HeadGFresh ++ (growRow 795 s6Step372HeadFFresh ++ (growRow 775 s6Step372HeadGvFresh ++ (growRow 776 s6Step372HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step372HeadBank_rows]
  rfl

private theorem s6Step372Front_checked : compileHmrSourceFrontLog s6Step372EntryFBefore s6Step372FrontBank 86 202 ⟨85,85,203,202⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step372FrontLog=some s6Step372FrontPlan := by
  have pairEq : s6Step372FrontPair=⟨s6Step372HeadFRow,s6Step372HeadGRow,s6Step372HeadFvRow,s6Step372HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step372FrontHead=⟨s6Step372ExitFRow,s6Step372ExitGRow,s6Step372ExitFvRow,s6Step372ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step372Add0A=s6Step372FrontHead.f.wires := by decide +kernel
  have gEq : s6Step372Add0B=s6Step372FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step372Add1A=s6Step372FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step372Add1B=s6Step372FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step372EntryFBefore s6Step372FrontBank 86 202 ⟨85,85,203,202⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step372FrontLog s6Step372FrontPlan
  · exact s6Step372Front_entry
  · exact s6Step372EntryBank_checked
  · exact s6Step372Front_sigma
  · rfl
  · exact s6Step372Front_branch
  · rfl
  · simpa only [s6Step372FrontPlan,pairEq] using s6Step372HeadBank_checked
  · simpa only [s6Step372FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step372F4_checked
  · exact s6Step372Counter_checked
  · rfl
  · simpa only [s6Step372FrontPlan,headEq] using s6Step372ExitBank_checked

private theorem s6Step372Complete_explicit_checked : compileHmrEarlyStepLog s6Step372EntryFBefore s6Step372FrontBank 86 202 ⟨85,85,203,202⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step372CompleteLog=some s6Step372CompletePlan := by
  let Q := s6Step372EarlyControlPlan
  have hq := s6Step372EarlyControl_plan_checked
  have fv1 : s6Step372CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step372CompleteOut.fv.payload[2]?.getD s6Step372CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step372CompleteOut.fv.payload[3]?.getD s6Step372CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step372CompleteOut.fv.payload[4]?.getD s6Step372CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step372EntryFBefore s6Step372EarlyControlArena s6Step372FrontBank 86 202 ⟨85,85,203,202⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step372CompleteLog s6Step372FrontPlan Q
    s6Step372Front_checked s6Step372Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step372Complete_owned s6Step372Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step372EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 s6Step372CompleteOut.fv.second (s6Step372CompleteOut.fv.payload[2]?.getD s6Step372CompleteOut.fv.sign) (s6Step372CompleteOut.fv.payload[3]?.getD s6Step372CompleteOut.fv.sign) (s6Step372CompleteOut.fv.payload[4]?.getD s6Step372CompleteOut.fv.sign) 828 60 s6Step372EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep372Arena : Arena := s6Step372EntryFBefore
def s6PrivateStep372Bank : WindowBank := s6Step372FrontBank
def s6PrivateStep372Spec : HmrSourceWalkStepLog := ⟨86,202,⟨85,85,203,202⟩,60,.early s6Step372CompleteLog⟩
def s6PrivateStep372Plan : HmrSourceStepPlan := .early s6Step372CompletePlan
theorem s6PrivateStep372_source : s6PrivateStep372Spec=s6ObservedLogs368[4] := rfl
theorem s6PrivateStep372_checked : compileHmrSourceStepLog s6PrivateStep372Arena s6PrivateStep372Bank
    s6PrivateStep372Spec.fgWidth s6PrivateStep372Spec.vWidth s6PrivateStep372Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 372 s6PrivateStep372Spec.need none s6PrivateStep372Spec.log=some s6PrivateStep372Plan := by
  change compileHmrSourceStepLog s6Step372EntryFBefore s6Step372FrontBank 86 202 ⟨85,85,203,202⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 372 60 none (.early s6Step372CompleteLog)=some (.early s6Step372CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 372<498)]
  rw [s6Step372Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
