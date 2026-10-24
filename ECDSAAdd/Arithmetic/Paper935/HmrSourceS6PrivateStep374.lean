import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep372
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

private def s6Step374CompleteMoves : List (Wire × Wire) := []

private def s6Step374EarlyControlLog : HmrEarlyControlLog := ⟨[908, 890, 821, 805, 876],[796],[843],[877, 792, 816, 819, 920, 842],[]⟩

private def s6Step374FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [821], [], []],[[805], [890], [908], [802]],[[], [], [], []]⟩,[858],[857],[876],[796],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[876, 796, 843, 877]⟩

private def s6Step374CompleteLog : HmrEarlyStepLog := ⟨s6Step374FrontLog,s6Step374CompleteMoves,s6Step374EarlyControlLog⟩

private def s6Step374ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩

private def s6Step374ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩

private def s6Step374ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],777⟩

private def s6Step374ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828],775⟩

private def s6Step374FrontOut : WindowBank := ⟨s6Step374ExitFOut,s6Step374ExitGOut,s6Step374ExitFvOut,s6Step374ExitGvOut⟩

private def s6Step374CompleteOut : WindowBank := s6Step374FrontOut.repacked s6Step374CompleteMoves

private def s6Step374EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step374EarlyControlPositiveArena,[796],s6Step374EarlyControlEqualityArena,[843],⟨⟨858,false⟩,[⟨⟨796,false⟩,843⟩]⟩⟩

private def s6Step374EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,908⟩,⟨⟨772,false⟩,890⟩,⟨⟨771,false⟩,821⟩,⟨⟨770,false⟩,805⟩,⟨⟨769,false⟩,876⟩]⟩

private def s6Step374EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step374EarlyControlZeroArena,s6Step374EarlyControlZeroPlan,s6Step374EarlyControlClassPlan,s6Step374EarlyControlFlagArena,s6Step374EarlyControlFittedArena,s6Step374EarlyControlHistoryArena,s6Step374EarlyControlSigmaArena,s6Step374EarlyControlOutputArena,s6Step374EarlyControlLog⟩

private def s6Step374CounterWork : List Wire := [876, 796, 843, 877]

private theorem s6Step374Counter_bounded : s6Step374CounterWork.toFinset⊆arenaWires := by norm_num [s6Step374CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step374HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374CounterDuring : Arena := ⟨s6Step374HeadFvAfter.live∪s6Step374CounterWork.toFinset,Finset.union_subset s6Step374HeadFvAfter.bounded s6Step374Counter_bounded⟩

private def s6Step374EntryFFresh : List Wire := []

private def s6Step374EntryFvFresh : List Wire := []

private def s6Step374EntryGFresh : List Wire := [821]

private def s6Step374EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374EntryGvAfter : Arena := s6Step374EntryGAfter

private def s6Step374EntryGvFresh : List Wire := []

private def s6Step374ExitFExtra : List Wire := [890]

private def s6Step374ExitGExtra : List Wire := [821, 805]

private def s6Step374ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374ExitGvExtra : List Wire := [908]

private def s6Step374Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374Add0Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step374Add0_bounded : s6Step374Add0Work.toFinset⊆arenaWires := by
  have h : s6Step374Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step374Add0During : Arena := ⟨s6Step374Add0Arena.live∪s6Step374Add0Work.toFinset,Finset.union_subset s6Step374Add0Arena.bounded s6Step374Add0_bounded⟩

private def s6Step374Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374Add1Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step374Add1_bounded : s6Step374Add1Work.toFinset⊆arenaWires := by
  have h : s6Step374Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step374Add1During : Arena := ⟨s6Step374Add1Arena.live∪s6Step374Add1Work.toFinset,Finset.union_subset s6Step374Add1Arena.bounded s6Step374Add1_bounded⟩

private def s6Step374F4FlagArena : Arena := ⟨s6Step374HeadFvAfter.live∪{876},Finset.union_subset s6Step374HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step374F4Plan : HmrHybridF4Plan := ⟨s6Step374F4FlagArena,[876],s6Step374Add0Arena,[796],s6Step374Add0During,s6Step374Add0Work,s6Step374Add1During,s6Step374Add1Work⟩

private def s6Step374HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 890],795⟩

private def s6Step374HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩

private def s6Step374HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 821, 805],777⟩

private def s6Step374HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 908],775⟩

private def s6Step374FrontHead : WindowBank := ⟨s6Step374HeadFOut,s6Step374HeadGOut,s6Step374HeadFvOut,s6Step374HeadGvOut⟩

private def s6Step374EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩

private def s6Step374EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩

private def s6Step374EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 821],777⟩

private def s6Step374EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828],775⟩

private def s6Step374FrontPair : WindowBank := ⟨s6Step374EntryFOut,s6Step374EntryGOut,s6Step374EntryFvOut,s6Step374EntryGvOut⟩

private def s6Step374FrontSigmaArena : Arena := ⟨s6Step374EntryGvAfter.live∪{858},Finset.union_subset s6Step374EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step374HeadFFresh : List Wire := [890]

private def s6Step374HeadFvFresh : List Wire := [802]

private def s6Step374HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374HeadGFresh : List Wire := [805]

private def s6Step374HeadGvFresh : List Wire := [908]

private def s6Step374FrontPlan : HmrSourceFront := ⟨s6Step374EntryGvAfter,s6Step374FrontPair,(growRow 795 s6Step374EntryFFresh ++ (growRow 777 s6Step374EntryGFresh ++ (growRow 776 s6Step374EntryFvFresh ++ (growRow 775 s6Step374EntryGvFresh ++ [])))),s6Step374FrontSigmaArena,[858],s6Step374HeadGBefore,[857],
  s6Step374HeadFvAfter,s6Step374FrontHead,(growRow 777 s6Step374HeadGFresh ++ (growRow 795 s6Step374HeadFFresh ++ (growRow 775 s6Step374HeadGvFresh ++ (growRow 776 s6Step374HeadFvFresh ++ [])))),s6Step374F4Plan,s6Step374CounterDuring,s6Step374CounterWork,s6Step374ExitGvAfter,s6Step374FrontOut,(shrinkRow 777 s6Step374ExitGExtra ++ (shrinkRow 795 s6Step374ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step374ExitGvExtra ++ []))))⟩

private def s6Step374CompletePlan : HmrEarlyStepPlan := ⟨s6Step374FrontPlan,s6Step374EarlyControlArena,s6Step374EarlyControlPlan,s6Step374CompleteMoves⟩

private theorem s6Step374Complete_apart : List.Disjoint (s6Step374CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [858, 857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step374CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[858, 857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step374Complete_owned : (s6Step374CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step374EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step374EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374Complete_repack : s6Step374ExitGvAfter.checkRepack s6Step374CompleteMoves=some s6Step374EarlyControlArena := by rfl

private theorem s6Step374EarlyControl_branchOwned : ([857] : List Wire).toFinset⊆s6Step374EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step374EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374EarlyControl_branch : compileHmrBranchRetirement s6Step374EarlyControlSigmaArena 857=some s6Step374EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step374EarlyControl_branchOwned
  · ext q
    simp [s6Step374EarlyControlOutputArena,s6Step374EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step374EarlyControl_classEqualityBorrow : s6Step374EarlyControlPositiveArena.checkBorrow (([858, 796] : List Wire).length-1) s6Step374EarlyControlLog.classWork=some s6Step374EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step374EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step374EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step374EarlyControlEqualityArena,s6Step374EarlyControlPositiveArena,s6Step374EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step374EarlyControl_classEqualityOwned : ([858, 796] : List Wire).toFinset⊆s6Step374EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step374EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374EarlyControl_classEquality : compileHmrEqualityLog s6Step374EarlyControlPositiveArena [858, 796] 0 s6Step374EarlyControlLog.classWork=some (s6Step374EarlyControlEqualityArena,s6Step374EarlyControlLog.classWork,s6Step374EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step374EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step374EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step374EarlyControl_classOwned : ([769, 876, 858] : List Wire).toFinset⊆s6Step374EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step374EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374EarlyControl_positiveBorrow : s6Step374EarlyControlZeroArena.checkBorrow (1) s6Step374EarlyControlLog.positiveWork=some s6Step374EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step374EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step374EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step374EarlyControlPositiveArena,s6Step374EarlyControlZeroArena,s6Step374EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step374EarlyControl_class : compileHmrSourceClassLog s6Step374EarlyControlZeroArena false 769 s6Step374EarlyControlZeroPlan.top 0 858 s6Step374EarlyControlLog.positiveWork s6Step374EarlyControlLog.classWork=some s6Step374EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step374EarlyControlClassPlan s6Step374EarlyControlZeroArena false 769 s6Step374EarlyControlZeroPlan.top 0 858
  constructor
  · decide +kernel
  · exact s6Step374EarlyControl_classOwned
  · exact s6Step374EarlyControl_positiveBorrow
  · exact s6Step374EarlyControl_classEquality

private theorem s6Step374EarlyControl_entryRecordOwned : ([857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step374EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step374EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374EarlyControl_entrySigmaOwned : ([858, 254] : List Wire).toFinset⊆s6Step374EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step374EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374EarlyControl_fitBorrow : s6Step374EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step374EarlyControlLog.recordFresh=some s6Step374EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step374EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step374EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step374EarlyControlFittedArena,s6Step374EarlyControlFlagArena,s6Step374EarlyControlLog,arenaWires]

private theorem s6Step374EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step374EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step374EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374EarlyControl_fit : compileHmrRecordGrowLog s6Step374EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step374EarlyControlLog.recordFresh=some s6Step374EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step374EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step374EarlyControl_fitBorrow

private theorem s6Step374EarlyControl_flagsBorrow : s6Step374EarlyControlEqualityArena.checkBorrow (6) s6Step374EarlyControlLog.flagWork=some s6Step374EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step374EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step374EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step374EarlyControlFlagArena,s6Step374EarlyControlEqualityArena,s6Step374EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step374EarlyControl_flagsOwned : ([843, 253, 252, 251] : List Wire).toFinset⊆s6Step374EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step374EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374EarlyControl_flags : compileHmrFlagsLog s6Step374EarlyControlClassPlan.equalityArena s6Step374EarlyControlClassPlan.equality.top 253 252 251 s6Step374EarlyControlLog.flagWork=some s6Step374EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step374EarlyControl_flagsOwned⟩
  · exact s6Step374EarlyControl_flagsBorrow

private theorem s6Step374EarlyControl_historyBorrow : s6Step374EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step374EarlyControlLog.recordFresh=some s6Step374EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step374EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step374EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step374EarlyControlHistoryArena,s6Step374EarlyControlArena,s6Step374EarlyControlLog,arenaWires]

private theorem s6Step374EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step374EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step374EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374EarlyControl_history : compileHmrRecordGrowLog s6Step374EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step374EarlyControlLog.recordFresh=some s6Step374EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step374EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step374EarlyControl_historyBorrow

private theorem s6Step374EarlyControl_sigmaOwned : ([254, 858] : List Wire).toFinset⊆s6Step374EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step374EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374EarlyControl_sigmaReleaseOwned : ([858] : List Wire).toFinset⊆s6Step374EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step374EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374EarlyControl_sigmaRelease : s6Step374EarlyControlHistoryArena.release {858} (fun _ => false)=some s6Step374EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step374EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step374EarlyControlSigmaArena,s6Step374EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step374EarlyControl_sigma : compileHmrSigmaDropLog s6Step374EarlyControlHistoryArena false 0 0 254 858 []=some s6Step374EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step374EarlyControl_sigmaOwned⟩
  · exact s6Step374EarlyControl_sigmaRelease

private theorem s6Step374EarlyControl_zeroBorrow : s6Step374EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step374EarlyControlLog.zeroWork=some s6Step374EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step374EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step374EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step374EarlyControlZeroArena,s6Step374EarlyControlArena,s6Step374EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step374EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step374EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step374EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374EarlyControl_zero : compileHmrEqualityLog s6Step374EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step374EarlyControlLog.zeroWork=some (s6Step374EarlyControlZeroArena,s6Step374EarlyControlLog.zeroWork,s6Step374EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step374EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step374EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step374EarlyControl_logged : s6Step374EarlyControlPlan.Logged s6Step374EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 857 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step374EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step374EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step374EarlyControl_zero
  · exact s6Step374EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step374EarlyControl_flags
  · exact s6Step374EarlyControl_fit
  · exact s6Step374EarlyControl_history
  · exact s6Step374EarlyControl_sigma
  · exact s6Step374EarlyControl_branch

private theorem s6Step374EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step374EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 857 60 s6Step374EarlyControlLog=some s6Step374EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step374EarlyControlPlan s6Step374EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 857 60 s6Step374EarlyControl_logged

private def s6Step374EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩

private def s6Step374EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩

private def s6Step374EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],777⟩

private def s6Step374EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828],775⟩

private def s6Step374FrontBank : WindowBank := ⟨s6Step374EntryFRow,s6Step374EntryGRow,s6Step374EntryFvRow,s6Step374EntryGvRow⟩

private def s6Step374Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 890, 795]

private def s6Step374Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 821, 805, 777]

private def s6Step374Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 776]

private def s6Step374Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 908, 775]

private theorem s6Step374Counter_apart : Disjoint s6Step374HeadFvAfter.live s6Step374CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step374HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374Counter_borrowed : s6Step374HeadFvAfter.checkBorrow 4 s6Step374CounterWork=some s6Step374CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step374HeadFvAfter s6Step374CounterDuring s6Step374CounterWork.toFinset s6Step374Counter_bounded s6Step374Counter_apart rfl

private theorem s6Step374Counter_owned : (858::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step374HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step374HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374Counter_checked : compileHmrCounterStepLog s6Step374HeadFvAfter true 858 [774, 773, 772, 771, 770, 769] s6Step374CounterWork=some s6Step374CounterDuring := by
  have owned : ∀q∈858::[774, 773, 772, 771, 770, 769],q∈s6Step374HeadFvAfter.live := fun q hq => s6Step374Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step374Counter_borrowed

private def s6Step374EntryFAfter : Arena := s6Step374EntryFBefore

private theorem s6Step374EntryBank_incomingDistinct : ([s6Step374EntryFRow,s6Step374EntryGRow,s6Step374EntryFvRow,s6Step374EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374EntryF_Incoming : rowsOwned s6Step374EntryFBefore [s6Step374EntryFRow,s6Step374EntryGRow,s6Step374EntryFvRow,s6Step374EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step374EntryFRow,s6Step374EntryGRow,s6Step374EntryFvRow,s6Step374EntryGvRow] 0 s6Step374EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step374EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step374EntryBank_outgoingOwned : rowsOwned s6Step374EntryGvAfter [s6Step374EntryFOut,s6Step374EntryGOut,s6Step374EntryFvOut,s6Step374EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step374EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step374EntryF_Outgoing : rowsOwned s6Step374EntryGvAfter [s6Step374EntryFOut,s6Step374EntryGOut,s6Step374EntryFvOut,s6Step374EntryGvOut] :=
  hmrRows_owned_drop s6Step374EntryGvAfter [s6Step374EntryFOut,s6Step374EntryGOut,s6Step374EntryFvOut,s6Step374EntryGvOut] 0 s6Step374EntryBank_outgoingOwned

private theorem s6Step374EntryF_distinct : (s6Step374EntryFRow.sign::s6Step374EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374EntryF_owned : (s6Step374EntryFRow.sign::s6Step374EntryFRow.payload).toFinset⊆s6Step374EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step374EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374EntryF_reserved : s6Step374EntryFBefore.reserve s6Step374EntryFFresh.toFinset=some s6Step374EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step374EntryFFresh,arenaWires]
  · norm_num [s6Step374EntryFBefore,s6Step374EntryFFresh,arenaWires]
  · simp only [s6Step374EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step374EntryF_checked : planRowResizeLog s6Step374EntryFBefore s6Step374EntryFRow 85 s6Step374EntryFFresh=
    some (s6Step374EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩,growRow 795 s6Step374EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step374EntryFBefore s6Step374EntryFAfter s6Step374EntryFRow 85 s6Step374EntryFFresh
    s6Step374EntryF_distinct s6Step374EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step374EntryF_reserved
  have rowEq : WindowRow.mk (s6Step374EntryFRow.payload++s6Step374EntryFFresh) s6Step374EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step374EntryFvAfter : Arena := s6Step374EntryGAfter

private def s6Step374EntryFvBefore : Arena := s6Step374EntryGAfter

private theorem s6Step374EntryFv_Incoming : rowsOwned s6Step374EntryFvBefore [s6Step374EntryFvRow,s6Step374EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step374EntryFRow,s6Step374EntryGRow,s6Step374EntryFvRow,s6Step374EntryGvRow] 2 s6Step374EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step374EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step374EntryFv_Outgoing : rowsOwned s6Step374EntryGvAfter [s6Step374EntryFvOut,s6Step374EntryGvOut] :=
  hmrRows_owned_drop s6Step374EntryGvAfter [s6Step374EntryFOut,s6Step374EntryGOut,s6Step374EntryFvOut,s6Step374EntryGvOut] 2 s6Step374EntryBank_outgoingOwned

private theorem s6Step374EntryFv_distinct : (s6Step374EntryFvRow.sign::s6Step374EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374EntryFv_owned : (s6Step374EntryFvRow.sign::s6Step374EntryFvRow.payload).toFinset⊆s6Step374EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step374EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374EntryFv_reserved : s6Step374EntryFvBefore.reserve s6Step374EntryFvFresh.toFinset=some s6Step374EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step374EntryFvFresh,arenaWires]
  · norm_num [s6Step374EntryFvBefore,s6Step374EntryGAfter,s6Step374EntryFvFresh,arenaWires]
  · simp only [s6Step374EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step374EntryFv_checked : planRowResizeLog s6Step374EntryFvBefore s6Step374EntryFvRow 203 s6Step374EntryFvFresh=
    some (s6Step374EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩,growRow 776 s6Step374EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step374EntryFvBefore s6Step374EntryFvAfter s6Step374EntryFvRow 203 s6Step374EntryFvFresh
    s6Step374EntryFv_distinct s6Step374EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step374EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step374EntryFvRow.payload++s6Step374EntryFvFresh) s6Step374EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step374EntryGBefore : Arena := s6Step374EntryFBefore

private theorem s6Step374EntryG_Incoming : rowsOwned s6Step374EntryGBefore [s6Step374EntryGRow,s6Step374EntryFvRow,s6Step374EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step374EntryFRow,s6Step374EntryGRow,s6Step374EntryFvRow,s6Step374EntryGvRow] 1 s6Step374EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step374EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step374EntryG_Outgoing : rowsOwned s6Step374EntryGvAfter [s6Step374EntryGOut,s6Step374EntryFvOut,s6Step374EntryGvOut] :=
  hmrRows_owned_drop s6Step374EntryGvAfter [s6Step374EntryFOut,s6Step374EntryGOut,s6Step374EntryFvOut,s6Step374EntryGvOut] 1 s6Step374EntryBank_outgoingOwned

private theorem s6Step374EntryG_distinct : (s6Step374EntryGRow.sign::s6Step374EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374EntryG_owned : (s6Step374EntryGRow.sign::s6Step374EntryGRow.payload).toFinset⊆s6Step374EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step374EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374EntryG_reserved : s6Step374EntryGBefore.reserve s6Step374EntryGFresh.toFinset=some s6Step374EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step374EntryGFresh,arenaWires]
  · norm_num [s6Step374EntryGBefore,s6Step374EntryFBefore,s6Step374EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step374EntryGAfter,s6Step374EntryGBefore,s6Step374EntryFBefore,s6Step374EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step374EntryG_checked : planRowResizeLog s6Step374EntryGBefore s6Step374EntryGRow 85 s6Step374EntryGFresh=
    some (s6Step374EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 821],777⟩,growRow 777 s6Step374EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step374EntryGBefore s6Step374EntryGAfter s6Step374EntryGRow 85 s6Step374EntryGFresh
    s6Step374EntryG_distinct s6Step374EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step374EntryG_reserved
  have rowEq : WindowRow.mk (s6Step374EntryGRow.payload++s6Step374EntryGFresh) s6Step374EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 821],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step374EntryGvBefore : Arena := s6Step374EntryGAfter

private theorem s6Step374EntryGv_Incoming : rowsOwned s6Step374EntryGvBefore [s6Step374EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step374EntryFRow,s6Step374EntryGRow,s6Step374EntryFvRow,s6Step374EntryGvRow] 3 s6Step374EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step374EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step374EntryGv_Outgoing : rowsOwned s6Step374EntryGvAfter [s6Step374EntryGvOut] :=
  hmrRows_owned_drop s6Step374EntryGvAfter [s6Step374EntryFOut,s6Step374EntryGOut,s6Step374EntryFvOut,s6Step374EntryGvOut] 3 s6Step374EntryBank_outgoingOwned

private theorem s6Step374EntryGv_distinct : (s6Step374EntryGvRow.sign::s6Step374EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374EntryGv_owned : (s6Step374EntryGvRow.sign::s6Step374EntryGvRow.payload).toFinset⊆s6Step374EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step374EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374EntryGv_reserved : s6Step374EntryGvBefore.reserve s6Step374EntryGvFresh.toFinset=some s6Step374EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step374EntryGvFresh,arenaWires]
  · norm_num [s6Step374EntryGvBefore,s6Step374EntryGAfter,s6Step374EntryGvFresh,arenaWires]
  · simp only [s6Step374EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step374EntryGv_checked : planRowResizeLog s6Step374EntryGvBefore s6Step374EntryGvRow 203 s6Step374EntryGvFresh=
    some (s6Step374EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828],775⟩,growRow 775 s6Step374EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step374EntryGvBefore s6Step374EntryGvAfter s6Step374EntryGvRow 203 s6Step374EntryGvFresh
    s6Step374EntryGv_distinct s6Step374EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step374EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step374EntryGvRow.payload++s6Step374EntryGvFresh) s6Step374EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step374EntryBank_rows : planWindowRowsLog s6Step374EntryFBefore [(s6Step374EntryFRow,85),(s6Step374EntryGRow,85),(s6Step374EntryFvRow,203),(s6Step374EntryGvRow,203)] [s6Step374EntryFFresh,s6Step374EntryGFresh,s6Step374EntryFvFresh,s6Step374EntryGvFresh]=
    some (s6Step374EntryGvAfter,[s6Step374EntryFOut,s6Step374EntryGOut,s6Step374EntryFvOut,s6Step374EntryGvOut],(growRow 795 s6Step374EntryFFresh ++ (growRow 777 s6Step374EntryGFresh ++ (growRow 776 s6Step374EntryFvFresh ++ (growRow 775 s6Step374EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step374EntryGvAfter [] []=some (s6Step374EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step374EntryGvBefore s6Step374EntryGvAfter s6Step374EntryGvAfter
    s6Step374EntryGvRow s6Step374EntryGvOut 203 s6Step374EntryGvFresh [] [] []
    (growRow 775 s6Step374EntryGvFresh) ([]) s6Step374EntryGv_Incoming s6Step374EntryGv_checked h4 s6Step374EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step374EntryFvBefore s6Step374EntryFvAfter s6Step374EntryGvAfter
    s6Step374EntryFvRow s6Step374EntryFvOut 203 s6Step374EntryFvFresh [(s6Step374EntryGvRow,203)] [s6Step374EntryGvFresh] [s6Step374EntryGvOut]
    (growRow 776 s6Step374EntryFvFresh) ((growRow 775 s6Step374EntryGvFresh ++ [])) s6Step374EntryFv_Incoming s6Step374EntryFv_checked h3 s6Step374EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step374EntryGBefore s6Step374EntryGAfter s6Step374EntryGvAfter
    s6Step374EntryGRow s6Step374EntryGOut 85 s6Step374EntryGFresh [(s6Step374EntryFvRow,203),(s6Step374EntryGvRow,203)] [s6Step374EntryFvFresh,s6Step374EntryGvFresh] [s6Step374EntryFvOut,s6Step374EntryGvOut]
    (growRow 777 s6Step374EntryGFresh) ((growRow 776 s6Step374EntryFvFresh ++ (growRow 775 s6Step374EntryGvFresh ++ []))) s6Step374EntryG_Incoming s6Step374EntryG_checked h2 s6Step374EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step374EntryFBefore s6Step374EntryFAfter s6Step374EntryGvAfter
    s6Step374EntryFRow s6Step374EntryFOut 85 s6Step374EntryFFresh [(s6Step374EntryGRow,85),(s6Step374EntryFvRow,203),(s6Step374EntryGvRow,203)] [s6Step374EntryGFresh,s6Step374EntryFvFresh,s6Step374EntryGvFresh] [s6Step374EntryGOut,s6Step374EntryFvOut,s6Step374EntryGvOut]
    (growRow 795 s6Step374EntryFFresh) ((growRow 777 s6Step374EntryGFresh ++ (growRow 776 s6Step374EntryFvFresh ++ (growRow 775 s6Step374EntryGvFresh ++ [])))) s6Step374EntryF_Incoming s6Step374EntryF_checked h1 s6Step374EntryF_Outgoing
  exact h0

private theorem s6Step374EntryBank_checked : compileHmrBankResizeLog .entry s6Step374EntryFBefore ⟨s6Step374EntryFRow,s6Step374EntryGRow,s6Step374EntryFvRow,s6Step374EntryGvRow⟩ ⟨85,85,203,203⟩ [s6Step374EntryFFresh,s6Step374EntryGFresh,s6Step374EntryFvFresh,s6Step374EntryGvFresh]=
    some (s6Step374EntryGvAfter,⟨s6Step374EntryFOut,s6Step374EntryGOut,s6Step374EntryFvOut,s6Step374EntryGvOut⟩,(growRow 795 s6Step374EntryFFresh ++ (growRow 777 s6Step374EntryGFresh ++ (growRow 776 s6Step374EntryFvFresh ++ (growRow 775 s6Step374EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step374EntryBank_rows]
  rfl

private def s6Step374ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374ExitFBefore : Arena := s6Step374ExitGAfter

private def s6Step374ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 890],795⟩

private def s6Step374ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩

private def s6Step374ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 821, 805],777⟩

private def s6Step374ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 908],775⟩

private theorem s6Step374ExitBank_incomingDistinct : ([s6Step374ExitGRow,s6Step374ExitFRow,s6Step374ExitFvRow,s6Step374ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374ExitF_Incoming : rowsOwned s6Step374ExitFBefore [s6Step374ExitFRow,s6Step374ExitFvRow,s6Step374ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step374ExitGRow,s6Step374ExitFRow,s6Step374ExitFvRow,s6Step374ExitGvRow] 1 s6Step374ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step374ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step374ExitBank_outgoingOwned : rowsOwned s6Step374ExitGvAfter [s6Step374ExitGOut,s6Step374ExitFOut,s6Step374ExitFvOut,s6Step374ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step374ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step374ExitF_Outgoing : rowsOwned s6Step374ExitGvAfter [s6Step374ExitFOut,s6Step374ExitFvOut,s6Step374ExitGvOut] :=
  hmrRows_owned_drop s6Step374ExitGvAfter [s6Step374ExitGOut,s6Step374ExitFOut,s6Step374ExitFvOut,s6Step374ExitGvOut] 1 s6Step374ExitBank_outgoingOwned

private theorem s6Step374ExitF_distinct : (s6Step374ExitFRow.sign::s6Step374ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374ExitF_owned : (s6Step374ExitFRow.sign::s6Step374ExitFRow.payload).toFinset⊆s6Step374ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step374ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374ExitF_retired : s6Step374ExitFBefore.retireSet s6Step374ExitFExtra.toFinset=s6Step374ExitFAfter := by
  unfold Arena.retireSet s6Step374ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step374ExitFBefore,s6Step374ExitGAfter,s6Step374ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step374ExitF_checked : planRowResizeLog s6Step374ExitFBefore s6Step374ExitFRow 85 []=
    some (s6Step374ExitFAfter,s6Step374ExitFOut,shrinkRow 795 s6Step374ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step374ExitFBefore s6Step374ExitFRow 85 s6Step374ExitF_distinct s6Step374ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step374ExitFRow.payload.take 85) s6Step374ExitFRow.sign=s6Step374ExitFOut := by decide +kernel
  have hi : s6Step374ExitFRow.payload.drop 85=s6Step374ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step374ExitF_retired] at result
  exact result

private def s6Step374ExitFvAfter : Arena := s6Step374ExitFAfter

private def s6Step374ExitFvBefore : Arena := s6Step374ExitFAfter

private theorem s6Step374ExitFv_Incoming : rowsOwned s6Step374ExitFvBefore [s6Step374ExitFvRow,s6Step374ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step374ExitGRow,s6Step374ExitFRow,s6Step374ExitFvRow,s6Step374ExitGvRow] 2 s6Step374ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step374ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step374ExitFv_Outgoing : rowsOwned s6Step374ExitGvAfter [s6Step374ExitFvOut,s6Step374ExitGvOut] :=
  hmrRows_owned_drop s6Step374ExitGvAfter [s6Step374ExitGOut,s6Step374ExitFOut,s6Step374ExitFvOut,s6Step374ExitGvOut] 2 s6Step374ExitBank_outgoingOwned

private theorem s6Step374ExitFv_distinct : (s6Step374ExitFvRow.sign::s6Step374ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374ExitFv_owned : (s6Step374ExitFvRow.sign::s6Step374ExitFvRow.payload).toFinset⊆s6Step374ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step374ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374ExitFv_reserved : s6Step374ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step374ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step374ExitFv_checked : planRowResizeLog s6Step374ExitFvBefore s6Step374ExitFvRow 204 []=
    some (s6Step374ExitFvAfter,s6Step374ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step374ExitFvBefore s6Step374ExitFvAfter s6Step374ExitFvRow 204 []
    s6Step374ExitFv_distinct s6Step374ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step374ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step374ExitFvRow.payload++[]) s6Step374ExitFvRow.sign=s6Step374ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step374ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step374ExitG_Incoming : rowsOwned s6Step374ExitGBefore [s6Step374ExitGRow,s6Step374ExitFRow,s6Step374ExitFvRow,s6Step374ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step374ExitGRow,s6Step374ExitFRow,s6Step374ExitFvRow,s6Step374ExitGvRow] 0 s6Step374ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step374ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step374ExitG_Outgoing : rowsOwned s6Step374ExitGvAfter [s6Step374ExitGOut,s6Step374ExitFOut,s6Step374ExitFvOut,s6Step374ExitGvOut] :=
  hmrRows_owned_drop s6Step374ExitGvAfter [s6Step374ExitGOut,s6Step374ExitFOut,s6Step374ExitFvOut,s6Step374ExitGvOut] 0 s6Step374ExitBank_outgoingOwned

private theorem s6Step374ExitG_distinct : (s6Step374ExitGRow.sign::s6Step374ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374ExitG_owned : (s6Step374ExitGRow.sign::s6Step374ExitGRow.payload).toFinset⊆s6Step374ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step374ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374ExitG_retired : s6Step374ExitGBefore.retireSet s6Step374ExitGExtra.toFinset=s6Step374ExitGAfter := by
  unfold Arena.retireSet s6Step374ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step374ExitGBefore,s6Step374ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step374ExitG_checked : planRowResizeLog s6Step374ExitGBefore s6Step374ExitGRow 84 []=
    some (s6Step374ExitGAfter,s6Step374ExitGOut,shrinkRow 777 s6Step374ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step374ExitGBefore s6Step374ExitGRow 84 s6Step374ExitG_distinct s6Step374ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step374ExitGRow.payload.take 84) s6Step374ExitGRow.sign=s6Step374ExitGOut := by decide +kernel
  have hi : s6Step374ExitGRow.payload.drop 84=s6Step374ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step374ExitG_retired] at result
  exact result

private def s6Step374ExitGvBefore : Arena := s6Step374ExitFAfter

private theorem s6Step374ExitGv_Incoming : rowsOwned s6Step374ExitGvBefore [s6Step374ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step374ExitGRow,s6Step374ExitFRow,s6Step374ExitFvRow,s6Step374ExitGvRow] 3 s6Step374ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step374ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step374ExitGv_Outgoing : rowsOwned s6Step374ExitGvAfter [s6Step374ExitGvOut] :=
  hmrRows_owned_drop s6Step374ExitGvAfter [s6Step374ExitGOut,s6Step374ExitFOut,s6Step374ExitFvOut,s6Step374ExitGvOut] 3 s6Step374ExitBank_outgoingOwned

private theorem s6Step374ExitGv_distinct : (s6Step374ExitGvRow.sign::s6Step374ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374ExitGv_owned : (s6Step374ExitGvRow.sign::s6Step374ExitGvRow.payload).toFinset⊆s6Step374ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step374ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374ExitGv_retired : s6Step374ExitGvBefore.retireSet s6Step374ExitGvExtra.toFinset=s6Step374ExitGvAfter := by
  unfold Arena.retireSet s6Step374ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step374ExitGvBefore,s6Step374ExitFAfter,s6Step374ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step374ExitGv_checked : planRowResizeLog s6Step374ExitGvBefore s6Step374ExitGvRow 203 []=
    some (s6Step374ExitGvAfter,s6Step374ExitGvOut,shrinkRow 775 s6Step374ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step374ExitGvBefore s6Step374ExitGvRow 203 s6Step374ExitGv_distinct s6Step374ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step374ExitGvRow.payload.take 203) s6Step374ExitGvRow.sign=s6Step374ExitGvOut := by decide +kernel
  have hi : s6Step374ExitGvRow.payload.drop 203=s6Step374ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step374ExitGv_retired] at result
  exact result

private theorem s6Step374ExitBank_rows : planWindowRowsLog s6Step374ExitGBefore [(s6Step374ExitGRow,84),(s6Step374ExitFRow,85),(s6Step374ExitFvRow,204),(s6Step374ExitGvRow,203)] [[],[],[],[]]=
    some (s6Step374ExitGvAfter,[s6Step374ExitGOut,s6Step374ExitFOut,s6Step374ExitFvOut,s6Step374ExitGvOut],(shrinkRow 777 s6Step374ExitGExtra ++ (shrinkRow 795 s6Step374ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step374ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step374ExitGvAfter [] []=some (s6Step374ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step374ExitGvBefore s6Step374ExitGvAfter s6Step374ExitGvAfter
    s6Step374ExitGvRow s6Step374ExitGvOut 203 [] [] [] []
    (shrinkRow 775 s6Step374ExitGvExtra) ([]) s6Step374ExitGv_Incoming s6Step374ExitGv_checked h4 s6Step374ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step374ExitFvBefore s6Step374ExitFvAfter s6Step374ExitGvAfter
    s6Step374ExitFvRow s6Step374ExitFvOut 204 [] [(s6Step374ExitGvRow,203)] [[]] [s6Step374ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step374ExitGvExtra ++ [])) s6Step374ExitFv_Incoming s6Step374ExitFv_checked h3 s6Step374ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step374ExitFBefore s6Step374ExitFAfter s6Step374ExitGvAfter
    s6Step374ExitFRow s6Step374ExitFOut 85 [] [(s6Step374ExitFvRow,204),(s6Step374ExitGvRow,203)] [[],[]] [s6Step374ExitFvOut,s6Step374ExitGvOut]
    (shrinkRow 795 s6Step374ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step374ExitGvExtra ++ []))) s6Step374ExitF_Incoming s6Step374ExitF_checked h2 s6Step374ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step374ExitGBefore s6Step374ExitGAfter s6Step374ExitGvAfter
    s6Step374ExitGRow s6Step374ExitGOut 84 [] [(s6Step374ExitFRow,85),(s6Step374ExitFvRow,204),(s6Step374ExitGvRow,203)] [[],[],[]] [s6Step374ExitFOut,s6Step374ExitFvOut,s6Step374ExitGvOut]
    (shrinkRow 777 s6Step374ExitGExtra) ((shrinkRow 795 s6Step374ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step374ExitGvExtra ++ [])))) s6Step374ExitG_Incoming s6Step374ExitG_checked h1 s6Step374ExitG_Outgoing
  exact h0

private theorem s6Step374ExitBank_checked : compileHmrBankResizeLog .exit s6Step374ExitGBefore ⟨s6Step374ExitFRow,s6Step374ExitGRow,s6Step374ExitFvRow,s6Step374ExitGvRow⟩ ⟨85,84,204,203⟩ [[],[],[],[]]=
    some (s6Step374ExitGvAfter,⟨s6Step374ExitFOut,s6Step374ExitGOut,s6Step374ExitFvOut,s6Step374ExitGvOut⟩,(shrinkRow 777 s6Step374ExitGExtra ++ (shrinkRow 795 s6Step374ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step374ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step374ExitBank_rows]
  rfl

private theorem s6Step374Add0_apart : Disjoint s6Step374Add0Arena.live s6Step374Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step374Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374Add0_card : s6Step374Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step374Add0_borrowed : s6Step374Add0Arena.checkBorrow (hmrHybridCount s6Step374Add0Arena s6Step374Add0B.length) s6Step374Add0Work=some s6Step374Add0During := by
  have len : s6Step374Add0Work.length=hmrHybridCount s6Step374Add0Arena s6Step374Add0B.length := by
    rw [hmrHybridCount,s6Step374Add0_card]
    decide +kernel
  have nd : s6Step374Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step374Add0Arena s6Step374Add0During s6Step374Add0Work.toFinset s6Step374Add0_bounded s6Step374Add0_apart rfl

private theorem s6Step374Add0_distinct : (876::857::796::(s6Step374Add0A++s6Step374Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374Add0_owned : (876::857::796::(s6Step374Add0A++s6Step374Add0B)).toFinset⊆s6Step374Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step374Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374Add0_checked : compileHmrHybridCinLog s6Step374Add0Arena 857 876 796 s6Step374Add0A s6Step374Add0B s6Step374Add0Work=some s6Step374Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step374Add0Arena s6Step374Add0During 857 876 796 s6Step374Add0A s6Step374Add0B s6Step374Add0Work
    (by decide +kernel) (by decide +kernel) s6Step374Add0_distinct
    (fun q hq => s6Step374Add0_owned (List.mem_toFinset.mpr hq)) s6Step374Add0_borrowed

private theorem s6Step374Add1_apart : Disjoint s6Step374Add1Arena.live s6Step374Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step374Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374Add1_card : s6Step374Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step374Add1_borrowed : s6Step374Add1Arena.checkBorrow (hmrHybridCount s6Step374Add1Arena s6Step374Add1B.length) s6Step374Add1Work=some s6Step374Add1During := by
  have len : s6Step374Add1Work.length=hmrHybridCount s6Step374Add1Arena s6Step374Add1B.length := by
    rw [hmrHybridCount,s6Step374Add1_card]
    decide +kernel
  have nd : s6Step374Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step374Add1Arena s6Step374Add1During s6Step374Add1Work.toFinset s6Step374Add1_bounded s6Step374Add1_apart rfl

private theorem s6Step374Add1_distinct : (876::857::796::(s6Step374Add1A++s6Step374Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374Add1_owned : (876::857::796::(s6Step374Add1A++s6Step374Add1B)).toFinset⊆s6Step374Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step374Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374Add1_checked : compileHmrHybridCinLog s6Step374Add1Arena 857 876 796 s6Step374Add1A s6Step374Add1B s6Step374Add1Work=some s6Step374Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step374Add1Arena s6Step374Add1During 857 876 796 s6Step374Add1A s6Step374Add1B s6Step374Add1Work
    (by decide +kernel) (by decide +kernel) s6Step374Add1_distinct
    (fun q hq => s6Step374Add1_owned (List.mem_toFinset.mpr hq)) s6Step374Add1_borrowed

private theorem s6Step374F4_apart : Disjoint (s6Step374Add0A++s6Step374Add0B).toFinset (s6Step374Add1A++s6Step374Add1B).toFinset := by
  have nd : ((s6Step374Add0A++s6Step374Add0B)++(s6Step374Add1A++s6Step374Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step374F4_carry : s6Step374F4FlagArena.checkBorrow 1 [796]=some s6Step374Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step374F4FlagArena,s6Step374HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step374F4FlagArena,s6Step374HeadFvAfter,s6Step374Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step374F4_distinct : (858::857::876::796::((s6Step374Add0A++s6Step374Add1A)++(s6Step374Add0B++s6Step374Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374F4_flag : s6Step374HeadFvAfter.checkBorrow 1 [876]=some s6Step374F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step374HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step374F4_owned : (858::857::((s6Step374Add0A++s6Step374Add1A)++(s6Step374Add0B++s6Step374Add1B))).toFinset⊆s6Step374HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step374HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374F4_checked : compileHmrHybridF4Log s6Step374HeadFvAfter 858 857 s6Step374Add0A s6Step374Add0B s6Step374Add1A s6Step374Add1B [876] [796] s6Step374Add0Work s6Step374Add1Work=some s6Step374F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step374HeadFvAfter s6Step374F4FlagArena s6Step374Add0Arena s6Step374Add0During s6Step374Add1During 858 857
    s6Step374Add0A s6Step374Add0B s6Step374Add1A s6Step374Add1B [876] [796] s6Step374Add0Work s6Step374Add1Work
    (fun q hq => s6Step374F4_owned (List.mem_toFinset.mpr hq)) s6Step374F4_flag s6Step374F4_carry
    s6Step374F4_distinct s6Step374F4_apart s6Step374Add0_checked s6Step374Add1_checked

private theorem s6Step374Front_branch : s6Step374FrontSigmaArena.checkBorrow 1 [857]=some s6Step374HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step374FrontSigmaArena,s6Step374EntryGvAfter,s6Step374EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step374FrontSigmaArena,s6Step374EntryGvAfter,s6Step374EntryGAfter,s6Step374HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step374Front_entry : HmrFrontEntryValid s6Step374EntryFBefore s6Step374FrontBank 85 203 ⟨85,84,204,203⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step374FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step374EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step374EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step374FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step374Front_sigma : s6Step374EntryGvAfter.checkBorrow 1 [858]=some s6Step374FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step374EntryGvAfter,s6Step374EntryGAfter,arenaWires]
  · rfl

private def s6Step374HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374HeadFBefore : Arena := s6Step374HeadGAfter

private def s6Step374HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩

private def s6Step374HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869],776⟩

private def s6Step374HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 821],777⟩

private def s6Step374HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828],775⟩

private theorem s6Step374HeadBank_incomingDistinct : ([s6Step374HeadGRow,s6Step374HeadFRow,s6Step374HeadGvRow,s6Step374HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374HeadF_Incoming : rowsOwned s6Step374HeadFBefore [s6Step374HeadFRow,s6Step374HeadGvRow,s6Step374HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step374HeadGRow,s6Step374HeadFRow,s6Step374HeadGvRow,s6Step374HeadFvRow] 1 s6Step374HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step374HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step374HeadBank_outgoingOwned : rowsOwned s6Step374HeadFvAfter [s6Step374HeadGOut,s6Step374HeadFOut,s6Step374HeadGvOut,s6Step374HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step374HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step374HeadF_Outgoing : rowsOwned s6Step374HeadFvAfter [s6Step374HeadFOut,s6Step374HeadGvOut,s6Step374HeadFvOut] :=
  hmrRows_owned_drop s6Step374HeadFvAfter [s6Step374HeadGOut,s6Step374HeadFOut,s6Step374HeadGvOut,s6Step374HeadFvOut] 1 s6Step374HeadBank_outgoingOwned

private theorem s6Step374HeadF_distinct : (s6Step374HeadFRow.sign::s6Step374HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374HeadF_owned : (s6Step374HeadFRow.sign::s6Step374HeadFRow.payload).toFinset⊆s6Step374HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step374HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374HeadF_reserved : s6Step374HeadFBefore.reserve s6Step374HeadFFresh.toFinset=some s6Step374HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step374HeadFFresh,arenaWires]
  · norm_num [s6Step374HeadFBefore,s6Step374HeadGAfter,s6Step374HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step374HeadFAfter,s6Step374HeadFBefore,s6Step374HeadGAfter,s6Step374HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step374HeadF_checked : planRowResizeLog s6Step374HeadFBefore s6Step374HeadFRow 86 s6Step374HeadFFresh=
    some (s6Step374HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 890],795⟩,growRow 795 s6Step374HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step374HeadFBefore s6Step374HeadFAfter s6Step374HeadFRow 86 s6Step374HeadFFresh
    s6Step374HeadF_distinct s6Step374HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step374HeadF_reserved
  have rowEq : WindowRow.mk (s6Step374HeadFRow.payload++s6Step374HeadFFresh) s6Step374HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 890],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step374HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step374HeadFvBefore : Arena := s6Step374HeadGvAfter

private theorem s6Step374HeadFv_Incoming : rowsOwned s6Step374HeadFvBefore [s6Step374HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step374HeadGRow,s6Step374HeadFRow,s6Step374HeadGvRow,s6Step374HeadFvRow] 3 s6Step374HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step374HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step374HeadFv_Outgoing : rowsOwned s6Step374HeadFvAfter [s6Step374HeadFvOut] :=
  hmrRows_owned_drop s6Step374HeadFvAfter [s6Step374HeadGOut,s6Step374HeadFOut,s6Step374HeadGvOut,s6Step374HeadFvOut] 3 s6Step374HeadBank_outgoingOwned

private theorem s6Step374HeadFv_distinct : (s6Step374HeadFvRow.sign::s6Step374HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374HeadFv_owned : (s6Step374HeadFvRow.sign::s6Step374HeadFvRow.payload).toFinset⊆s6Step374HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step374HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374HeadFv_reserved : s6Step374HeadFvBefore.reserve s6Step374HeadFvFresh.toFinset=some s6Step374HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step374HeadFvFresh,arenaWires]
  · norm_num [s6Step374HeadFvBefore,s6Step374HeadGvAfter,s6Step374HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step374HeadFvAfter,s6Step374HeadFvBefore,s6Step374HeadGvAfter,s6Step374HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step374HeadFv_checked : planRowResizeLog s6Step374HeadFvBefore s6Step374HeadFvRow 204 s6Step374HeadFvFresh=
    some (s6Step374HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩,growRow 776 s6Step374HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step374HeadFvBefore s6Step374HeadFvAfter s6Step374HeadFvRow 204 s6Step374HeadFvFresh
    s6Step374HeadFv_distinct s6Step374HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step374HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step374HeadFvRow.payload++s6Step374HeadFvFresh) s6Step374HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step374HeadG_Incoming : rowsOwned s6Step374HeadGBefore [s6Step374HeadGRow,s6Step374HeadFRow,s6Step374HeadGvRow,s6Step374HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step374HeadGRow,s6Step374HeadFRow,s6Step374HeadGvRow,s6Step374HeadFvRow] 0 s6Step374HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step374HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step374HeadG_Outgoing : rowsOwned s6Step374HeadFvAfter [s6Step374HeadGOut,s6Step374HeadFOut,s6Step374HeadGvOut,s6Step374HeadFvOut] :=
  hmrRows_owned_drop s6Step374HeadFvAfter [s6Step374HeadGOut,s6Step374HeadFOut,s6Step374HeadGvOut,s6Step374HeadFvOut] 0 s6Step374HeadBank_outgoingOwned

private theorem s6Step374HeadG_distinct : (s6Step374HeadGRow.sign::s6Step374HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374HeadG_owned : (s6Step374HeadGRow.sign::s6Step374HeadGRow.payload).toFinset⊆s6Step374HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step374HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374HeadG_reserved : s6Step374HeadGBefore.reserve s6Step374HeadGFresh.toFinset=some s6Step374HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step374HeadGFresh,arenaWires]
  · norm_num [s6Step374HeadGBefore,s6Step374HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step374HeadGAfter,s6Step374HeadGBefore,s6Step374HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step374HeadG_checked : planRowResizeLog s6Step374HeadGBefore s6Step374HeadGRow 86 s6Step374HeadGFresh=
    some (s6Step374HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 821, 805],777⟩,growRow 777 s6Step374HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step374HeadGBefore s6Step374HeadGAfter s6Step374HeadGRow 86 s6Step374HeadGFresh
    s6Step374HeadG_distinct s6Step374HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step374HeadG_reserved
  have rowEq : WindowRow.mk (s6Step374HeadGRow.payload++s6Step374HeadGFresh) s6Step374HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 821, 805],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step374HeadGvBefore : Arena := s6Step374HeadFAfter

private theorem s6Step374HeadGv_Incoming : rowsOwned s6Step374HeadGvBefore [s6Step374HeadGvRow,s6Step374HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step374HeadGRow,s6Step374HeadFRow,s6Step374HeadGvRow,s6Step374HeadFvRow] 2 s6Step374HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step374HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step374HeadGv_Outgoing : rowsOwned s6Step374HeadFvAfter [s6Step374HeadGvOut,s6Step374HeadFvOut] :=
  hmrRows_owned_drop s6Step374HeadFvAfter [s6Step374HeadGOut,s6Step374HeadFOut,s6Step374HeadGvOut,s6Step374HeadFvOut] 2 s6Step374HeadBank_outgoingOwned

private theorem s6Step374HeadGv_distinct : (s6Step374HeadGvRow.sign::s6Step374HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step374HeadGv_owned : (s6Step374HeadGvRow.sign::s6Step374HeadGvRow.payload).toFinset⊆s6Step374HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step374HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step374HeadGv_reserved : s6Step374HeadGvBefore.reserve s6Step374HeadGvFresh.toFinset=some s6Step374HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step374HeadGvFresh,arenaWires]
  · norm_num [s6Step374HeadGvBefore,s6Step374HeadFAfter,s6Step374HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step374HeadGvAfter,s6Step374HeadGvBefore,s6Step374HeadFAfter,s6Step374HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step374HeadGv_checked : planRowResizeLog s6Step374HeadGvBefore s6Step374HeadGvRow 204 s6Step374HeadGvFresh=
    some (s6Step374HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 908],775⟩,growRow 775 s6Step374HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step374HeadGvBefore s6Step374HeadGvAfter s6Step374HeadGvRow 204 s6Step374HeadGvFresh
    s6Step374HeadGv_distinct s6Step374HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step374HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step374HeadGvRow.payload++s6Step374HeadGvFresh) s6Step374HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 908],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step374HeadBank_rows : planWindowRowsLog s6Step374HeadGBefore [(s6Step374HeadGRow,86),(s6Step374HeadFRow,86),(s6Step374HeadGvRow,204),(s6Step374HeadFvRow,204)] [s6Step374HeadGFresh,s6Step374HeadFFresh,s6Step374HeadGvFresh,s6Step374HeadFvFresh]=
    some (s6Step374HeadFvAfter,[s6Step374HeadGOut,s6Step374HeadFOut,s6Step374HeadGvOut,s6Step374HeadFvOut],(growRow 777 s6Step374HeadGFresh ++ (growRow 795 s6Step374HeadFFresh ++ (growRow 775 s6Step374HeadGvFresh ++ (growRow 776 s6Step374HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step374HeadFvAfter [] []=some (s6Step374HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step374HeadFvBefore s6Step374HeadFvAfter s6Step374HeadFvAfter
    s6Step374HeadFvRow s6Step374HeadFvOut 204 s6Step374HeadFvFresh [] [] []
    (growRow 776 s6Step374HeadFvFresh) ([]) s6Step374HeadFv_Incoming s6Step374HeadFv_checked h4 s6Step374HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step374HeadGvBefore s6Step374HeadGvAfter s6Step374HeadFvAfter
    s6Step374HeadGvRow s6Step374HeadGvOut 204 s6Step374HeadGvFresh [(s6Step374HeadFvRow,204)] [s6Step374HeadFvFresh] [s6Step374HeadFvOut]
    (growRow 775 s6Step374HeadGvFresh) ((growRow 776 s6Step374HeadFvFresh ++ [])) s6Step374HeadGv_Incoming s6Step374HeadGv_checked h3 s6Step374HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step374HeadFBefore s6Step374HeadFAfter s6Step374HeadFvAfter
    s6Step374HeadFRow s6Step374HeadFOut 86 s6Step374HeadFFresh [(s6Step374HeadGvRow,204),(s6Step374HeadFvRow,204)] [s6Step374HeadGvFresh,s6Step374HeadFvFresh] [s6Step374HeadGvOut,s6Step374HeadFvOut]
    (growRow 795 s6Step374HeadFFresh) ((growRow 775 s6Step374HeadGvFresh ++ (growRow 776 s6Step374HeadFvFresh ++ []))) s6Step374HeadF_Incoming s6Step374HeadF_checked h2 s6Step374HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step374HeadGBefore s6Step374HeadGAfter s6Step374HeadFvAfter
    s6Step374HeadGRow s6Step374HeadGOut 86 s6Step374HeadGFresh [(s6Step374HeadFRow,86),(s6Step374HeadGvRow,204),(s6Step374HeadFvRow,204)] [s6Step374HeadFFresh,s6Step374HeadGvFresh,s6Step374HeadFvFresh] [s6Step374HeadFOut,s6Step374HeadGvOut,s6Step374HeadFvOut]
    (growRow 777 s6Step374HeadGFresh) ((growRow 795 s6Step374HeadFFresh ++ (growRow 775 s6Step374HeadGvFresh ++ (growRow 776 s6Step374HeadFvFresh ++ [])))) s6Step374HeadG_Incoming s6Step374HeadG_checked h1 s6Step374HeadG_Outgoing
  exact h0

private theorem s6Step374HeadBank_checked : compileHmrBankResizeLog .headroom s6Step374HeadGBefore ⟨s6Step374HeadFRow,s6Step374HeadGRow,s6Step374HeadFvRow,s6Step374HeadGvRow⟩ ⟨86,86,204,204⟩ [s6Step374HeadGFresh,s6Step374HeadFFresh,s6Step374HeadGvFresh,s6Step374HeadFvFresh]=
    some (s6Step374HeadFvAfter,⟨s6Step374HeadFOut,s6Step374HeadGOut,s6Step374HeadFvOut,s6Step374HeadGvOut⟩,(growRow 777 s6Step374HeadGFresh ++ (growRow 795 s6Step374HeadFFresh ++ (growRow 775 s6Step374HeadGvFresh ++ (growRow 776 s6Step374HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step374HeadBank_rows]
  rfl

private theorem s6Step374Front_checked : compileHmrSourceFrontLog s6Step374EntryFBefore s6Step374FrontBank 85 203 ⟨85,84,204,203⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step374FrontLog=some s6Step374FrontPlan := by
  have pairEq : s6Step374FrontPair=⟨s6Step374HeadFRow,s6Step374HeadGRow,s6Step374HeadFvRow,s6Step374HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step374FrontHead=⟨s6Step374ExitFRow,s6Step374ExitGRow,s6Step374ExitFvRow,s6Step374ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step374Add0A=s6Step374FrontHead.f.wires := by decide +kernel
  have gEq : s6Step374Add0B=s6Step374FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step374Add1A=s6Step374FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step374Add1B=s6Step374FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step374EntryFBefore s6Step374FrontBank 85 203 ⟨85,84,204,203⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step374FrontLog s6Step374FrontPlan
  · exact s6Step374Front_entry
  · exact s6Step374EntryBank_checked
  · exact s6Step374Front_sigma
  · rfl
  · exact s6Step374Front_branch
  · rfl
  · simpa only [s6Step374FrontPlan,pairEq] using s6Step374HeadBank_checked
  · simpa only [s6Step374FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step374F4_checked
  · exact s6Step374Counter_checked
  · rfl
  · simpa only [s6Step374FrontPlan,headEq] using s6Step374ExitBank_checked

private theorem s6Step374Complete_explicit_checked : compileHmrEarlyStepLog s6Step374EntryFBefore s6Step374FrontBank 85 203 ⟨85,84,204,203⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step374CompleteLog=some s6Step374CompletePlan := by
  let Q := s6Step374EarlyControlPlan
  have hq := s6Step374EarlyControl_plan_checked
  have fv1 : s6Step374CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step374CompleteOut.fv.payload[2]?.getD s6Step374CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step374CompleteOut.fv.payload[3]?.getD s6Step374CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step374CompleteOut.fv.payload[4]?.getD s6Step374CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step374EntryFBefore s6Step374EarlyControlArena s6Step374FrontBank 85 203 ⟨85,84,204,203⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step374CompleteLog s6Step374FrontPlan Q
    s6Step374Front_checked s6Step374Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step374Complete_owned s6Step374Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step374EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 s6Step374CompleteOut.fv.second (s6Step374CompleteOut.fv.payload[2]?.getD s6Step374CompleteOut.fv.sign) (s6Step374CompleteOut.fv.payload[3]?.getD s6Step374CompleteOut.fv.sign) (s6Step374CompleteOut.fv.payload[4]?.getD s6Step374CompleteOut.fv.sign) 857 60 s6Step374EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep374Arena : Arena := s6Step374EntryFBefore
def s6PrivateStep374Bank : WindowBank := s6Step374FrontBank
def s6PrivateStep374Spec : HmrSourceWalkStepLog := ⟨85,203,⟨85,84,204,203⟩,60,.early s6Step374CompleteLog⟩
def s6PrivateStep374Plan : HmrSourceStepPlan := .early s6Step374CompletePlan
theorem s6PrivateStep374_source : s6PrivateStep374Spec=s6ObservedLogs368[6] := rfl
theorem s6PrivateStep374_checked : compileHmrSourceStepLog s6PrivateStep374Arena s6PrivateStep374Bank
    s6PrivateStep374Spec.fgWidth s6PrivateStep374Spec.vWidth s6PrivateStep374Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 374 s6PrivateStep374Spec.need none s6PrivateStep374Spec.log=some s6PrivateStep374Plan := by
  change compileHmrSourceStepLog s6Step374EntryFBefore s6Step374FrontBank 85 203 ⟨85,84,204,203⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 374 60 none (.early s6Step374CompleteLog)=some (.early s6Step374CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 374<498)]
  rw [s6Step374Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
