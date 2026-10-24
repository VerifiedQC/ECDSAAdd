import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep368
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

private def s6Step370CompleteMoves : List (Wire × Wire) := []

private def s6Step370EarlyControlLog : HmrEarlyControlLog := ⟨[858, 908, 796, 869, 805],[802],[843],[877, 792, 816, 819, 920, 842],[]⟩

private def s6Step370FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [796], [], [823]],[[869], [908], [858], [807]],[[], [], [], []]⟩,[888],[876],[805],[802],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877]⟩

private def s6Step370CompleteLog : HmrEarlyStepLog := ⟨s6Step370FrontLog,s6Step370CompleteMoves,s6Step370EarlyControlLog⟩

private def s6Step370ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step370ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩

private def s6Step370ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],777⟩

private def s6Step370ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823],775⟩

private def s6Step370FrontOut : WindowBank := ⟨s6Step370ExitFOut,s6Step370ExitGOut,s6Step370ExitFvOut,s6Step370ExitGvOut⟩

private def s6Step370CompleteOut : WindowBank := s6Step370FrontOut.repacked s6Step370CompleteMoves

private def s6Step370EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step370EarlyControlPositiveArena,[802],s6Step370EarlyControlEqualityArena,[843],⟨⟨888,false⟩,[⟨⟨802,false⟩,843⟩]⟩⟩

private def s6Step370EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,858⟩,⟨⟨772,false⟩,908⟩,⟨⟨771,false⟩,796⟩,⟨⟨770,false⟩,869⟩,⟨⟨769,false⟩,805⟩]⟩

private def s6Step370EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step370EarlyControlZeroArena,s6Step370EarlyControlZeroPlan,s6Step370EarlyControlClassPlan,s6Step370EarlyControlFlagArena,s6Step370EarlyControlFittedArena,s6Step370EarlyControlHistoryArena,s6Step370EarlyControlSigmaArena,s6Step370EarlyControlOutputArena,s6Step370EarlyControlLog⟩

private def s6Step370CounterWork : List Wire := [805, 802, 843, 877]

private theorem s6Step370Counter_bounded : s6Step370CounterWork.toFinset⊆arenaWires := by norm_num [s6Step370CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step370HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370CounterDuring : Arena := ⟨s6Step370HeadFvAfter.live∪s6Step370CounterWork.toFinset,Finset.union_subset s6Step370HeadFvAfter.bounded s6Step370Counter_bounded⟩

private def s6Step370EntryFFresh : List Wire := []

private def s6Step370EntryFvFresh : List Wire := []

private def s6Step370EntryGFresh : List Wire := [796]

private def s6Step370EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370EntryGvFresh : List Wire := [823]

private def s6Step370ExitFExtra : List Wire := [908]

private def s6Step370ExitGExtra : List Wire := [796, 869]

private def s6Step370ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370ExitGvExtra : List Wire := [858]

private def s6Step370Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370Add0Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step370Add0_bounded : s6Step370Add0Work.toFinset⊆arenaWires := by
  have h : s6Step370Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step370Add0During : Arena := ⟨s6Step370Add0Arena.live∪s6Step370Add0Work.toFinset,Finset.union_subset s6Step370Add0Arena.bounded s6Step370Add0_bounded⟩

private def s6Step370Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370Add1Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step370Add1_bounded : s6Step370Add1Work.toFinset⊆arenaWires := by
  have h : s6Step370Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step370Add1During : Arena := ⟨s6Step370Add1Arena.live∪s6Step370Add1Work.toFinset,Finset.union_subset s6Step370Add1Arena.bounded s6Step370Add1_bounded⟩

private def s6Step370F4FlagArena : Arena := ⟨s6Step370HeadFvAfter.live∪{805},Finset.union_subset s6Step370HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step370F4Plan : HmrHybridF4Plan := ⟨s6Step370F4FlagArena,[805],s6Step370Add0Arena,[802],s6Step370Add0During,s6Step370Add0Work,s6Step370Add1During,s6Step370Add1Work⟩

private def s6Step370HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 908],795⟩

private def s6Step370HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩

private def s6Step370HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 796, 869],777⟩

private def s6Step370HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 858],775⟩

private def s6Step370FrontHead : WindowBank := ⟨s6Step370HeadFOut,s6Step370HeadGOut,s6Step370HeadFvOut,s6Step370HeadGvOut⟩

private def s6Step370EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step370EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898],776⟩

private def s6Step370EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 796],777⟩

private def s6Step370EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823],775⟩

private def s6Step370FrontPair : WindowBank := ⟨s6Step370EntryFOut,s6Step370EntryGOut,s6Step370EntryFvOut,s6Step370EntryGvOut⟩

private def s6Step370FrontSigmaArena : Arena := ⟨s6Step370EntryGvAfter.live∪{888},Finset.union_subset s6Step370EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step370HeadFFresh : List Wire := [908]

private def s6Step370HeadFvFresh : List Wire := [807]

private def s6Step370HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370HeadGFresh : List Wire := [869]

private def s6Step370HeadGvFresh : List Wire := [858]

private def s6Step370FrontPlan : HmrSourceFront := ⟨s6Step370EntryGvAfter,s6Step370FrontPair,(growRow 795 s6Step370EntryFFresh ++ (growRow 777 s6Step370EntryGFresh ++ (growRow 776 s6Step370EntryFvFresh ++ (growRow 775 s6Step370EntryGvFresh ++ [])))),s6Step370FrontSigmaArena,[888],s6Step370HeadGBefore,[876],
  s6Step370HeadFvAfter,s6Step370FrontHead,(growRow 777 s6Step370HeadGFresh ++ (growRow 795 s6Step370HeadFFresh ++ (growRow 775 s6Step370HeadGvFresh ++ (growRow 776 s6Step370HeadFvFresh ++ [])))),s6Step370F4Plan,s6Step370CounterDuring,s6Step370CounterWork,s6Step370ExitGvAfter,s6Step370FrontOut,(shrinkRow 777 s6Step370ExitGExtra ++ (shrinkRow 795 s6Step370ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step370ExitGvExtra ++ []))))⟩

private def s6Step370CompletePlan : HmrEarlyStepPlan := ⟨s6Step370FrontPlan,s6Step370EarlyControlArena,s6Step370EarlyControlPlan,s6Step370CompleteMoves⟩

private theorem s6Step370Complete_apart : List.Disjoint (s6Step370CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [888, 876, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step370CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[888, 876, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step370Complete_owned : (s6Step370CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step370EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step370EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370Complete_repack : s6Step370ExitGvAfter.checkRepack s6Step370CompleteMoves=some s6Step370EarlyControlArena := by rfl

private theorem s6Step370EarlyControl_branchOwned : ([876] : List Wire).toFinset⊆s6Step370EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step370EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370EarlyControl_branch : compileHmrBranchRetirement s6Step370EarlyControlSigmaArena 876=some s6Step370EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step370EarlyControl_branchOwned
  · ext q
    simp [s6Step370EarlyControlOutputArena,s6Step370EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step370EarlyControl_classEqualityBorrow : s6Step370EarlyControlPositiveArena.checkBorrow (([888, 802] : List Wire).length-1) s6Step370EarlyControlLog.classWork=some s6Step370EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step370EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step370EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step370EarlyControlEqualityArena,s6Step370EarlyControlPositiveArena,s6Step370EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step370EarlyControl_classEqualityOwned : ([888, 802] : List Wire).toFinset⊆s6Step370EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step370EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370EarlyControl_classEquality : compileHmrEqualityLog s6Step370EarlyControlPositiveArena [888, 802] 0 s6Step370EarlyControlLog.classWork=some (s6Step370EarlyControlEqualityArena,s6Step370EarlyControlLog.classWork,s6Step370EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step370EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step370EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step370EarlyControl_classOwned : ([769, 805, 888] : List Wire).toFinset⊆s6Step370EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step370EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370EarlyControl_positiveBorrow : s6Step370EarlyControlZeroArena.checkBorrow (1) s6Step370EarlyControlLog.positiveWork=some s6Step370EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step370EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step370EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step370EarlyControlPositiveArena,s6Step370EarlyControlZeroArena,s6Step370EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step370EarlyControl_class : compileHmrSourceClassLog s6Step370EarlyControlZeroArena false 769 s6Step370EarlyControlZeroPlan.top 0 888 s6Step370EarlyControlLog.positiveWork s6Step370EarlyControlLog.classWork=some s6Step370EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step370EarlyControlClassPlan s6Step370EarlyControlZeroArena false 769 s6Step370EarlyControlZeroPlan.top 0 888
  constructor
  · decide +kernel
  · exact s6Step370EarlyControl_classOwned
  · exact s6Step370EarlyControl_positiveBorrow
  · exact s6Step370EarlyControl_classEquality

private theorem s6Step370EarlyControl_entryRecordOwned : ([876, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step370EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step370EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370EarlyControl_entrySigmaOwned : ([888, 254] : List Wire).toFinset⊆s6Step370EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step370EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370EarlyControl_fitBorrow : s6Step370EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step370EarlyControlLog.recordFresh=some s6Step370EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step370EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step370EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step370EarlyControlFittedArena,s6Step370EarlyControlFlagArena,s6Step370EarlyControlLog,arenaWires]

private theorem s6Step370EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step370EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step370EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370EarlyControl_fit : compileHmrRecordGrowLog s6Step370EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step370EarlyControlLog.recordFresh=some s6Step370EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step370EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step370EarlyControl_fitBorrow

private theorem s6Step370EarlyControl_flagsBorrow : s6Step370EarlyControlEqualityArena.checkBorrow (6) s6Step370EarlyControlLog.flagWork=some s6Step370EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step370EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step370EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step370EarlyControlFlagArena,s6Step370EarlyControlEqualityArena,s6Step370EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step370EarlyControl_flagsOwned : ([843, 253, 252, 251] : List Wire).toFinset⊆s6Step370EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step370EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370EarlyControl_flags : compileHmrFlagsLog s6Step370EarlyControlClassPlan.equalityArena s6Step370EarlyControlClassPlan.equality.top 253 252 251 s6Step370EarlyControlLog.flagWork=some s6Step370EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step370EarlyControl_flagsOwned⟩
  · exact s6Step370EarlyControl_flagsBorrow

private theorem s6Step370EarlyControl_historyBorrow : s6Step370EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step370EarlyControlLog.recordFresh=some s6Step370EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step370EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step370EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step370EarlyControlHistoryArena,s6Step370EarlyControlArena,s6Step370EarlyControlLog,arenaWires]

private theorem s6Step370EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step370EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step370EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370EarlyControl_history : compileHmrRecordGrowLog s6Step370EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step370EarlyControlLog.recordFresh=some s6Step370EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step370EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step370EarlyControl_historyBorrow

private theorem s6Step370EarlyControl_sigmaOwned : ([254, 888] : List Wire).toFinset⊆s6Step370EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step370EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370EarlyControl_sigmaReleaseOwned : ([888] : List Wire).toFinset⊆s6Step370EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step370EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370EarlyControl_sigmaRelease : s6Step370EarlyControlHistoryArena.release {888} (fun _ => false)=some s6Step370EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step370EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step370EarlyControlSigmaArena,s6Step370EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step370EarlyControl_sigma : compileHmrSigmaDropLog s6Step370EarlyControlHistoryArena false 0 0 254 888 []=some s6Step370EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step370EarlyControl_sigmaOwned⟩
  · exact s6Step370EarlyControl_sigmaRelease

private theorem s6Step370EarlyControl_zeroBorrow : s6Step370EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step370EarlyControlLog.zeroWork=some s6Step370EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step370EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step370EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step370EarlyControlZeroArena,s6Step370EarlyControlArena,s6Step370EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step370EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step370EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step370EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370EarlyControl_zero : compileHmrEqualityLog s6Step370EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step370EarlyControlLog.zeroWork=some (s6Step370EarlyControlZeroArena,s6Step370EarlyControlLog.zeroWork,s6Step370EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step370EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step370EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step370EarlyControl_logged : s6Step370EarlyControlPlan.Logged s6Step370EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 888 254 253 252 251 876 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step370EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step370EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step370EarlyControl_zero
  · exact s6Step370EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step370EarlyControl_flags
  · exact s6Step370EarlyControl_fit
  · exact s6Step370EarlyControl_history
  · exact s6Step370EarlyControl_sigma
  · exact s6Step370EarlyControl_branch

private theorem s6Step370EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step370EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 888 254 253 252 251 876 60 s6Step370EarlyControlLog=some s6Step370EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step370EarlyControlPlan s6Step370EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 888 254 253 252 251 876 60 s6Step370EarlyControl_logged

private def s6Step370EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step370EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898],776⟩

private def s6Step370EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],777⟩

private def s6Step370EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906],775⟩

private def s6Step370FrontBank : WindowBank := ⟨s6Step370EntryFRow,s6Step370EntryGRow,s6Step370EntryFvRow,s6Step370EntryGvRow⟩

private def s6Step370Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 908, 795]

private def s6Step370Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 796, 869, 777]

private def s6Step370Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 776]

private def s6Step370Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 858, 775]

private theorem s6Step370Counter_apart : Disjoint s6Step370HeadFvAfter.live s6Step370CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step370HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370Counter_borrowed : s6Step370HeadFvAfter.checkBorrow 4 s6Step370CounterWork=some s6Step370CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step370HeadFvAfter s6Step370CounterDuring s6Step370CounterWork.toFinset s6Step370Counter_bounded s6Step370Counter_apart rfl

private theorem s6Step370Counter_owned : (888::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step370HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step370HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370Counter_checked : compileHmrCounterStepLog s6Step370HeadFvAfter true 888 [774, 773, 772, 771, 770, 769] s6Step370CounterWork=some s6Step370CounterDuring := by
  have owned : ∀q∈888::[774, 773, 772, 771, 770, 769],q∈s6Step370HeadFvAfter.live := fun q hq => s6Step370Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step370Counter_borrowed

private def s6Step370EntryFAfter : Arena := s6Step370EntryFBefore

private theorem s6Step370EntryBank_incomingDistinct : ([s6Step370EntryFRow,s6Step370EntryGRow,s6Step370EntryFvRow,s6Step370EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370EntryF_Incoming : rowsOwned s6Step370EntryFBefore [s6Step370EntryFRow,s6Step370EntryGRow,s6Step370EntryFvRow,s6Step370EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step370EntryFRow,s6Step370EntryGRow,s6Step370EntryFvRow,s6Step370EntryGvRow] 0 s6Step370EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step370EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step370EntryBank_outgoingOwned : rowsOwned s6Step370EntryGvAfter [s6Step370EntryFOut,s6Step370EntryGOut,s6Step370EntryFvOut,s6Step370EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step370EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step370EntryF_Outgoing : rowsOwned s6Step370EntryGvAfter [s6Step370EntryFOut,s6Step370EntryGOut,s6Step370EntryFvOut,s6Step370EntryGvOut] :=
  hmrRows_owned_drop s6Step370EntryGvAfter [s6Step370EntryFOut,s6Step370EntryGOut,s6Step370EntryFvOut,s6Step370EntryGvOut] 0 s6Step370EntryBank_outgoingOwned

private theorem s6Step370EntryF_distinct : (s6Step370EntryFRow.sign::s6Step370EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370EntryF_owned : (s6Step370EntryFRow.sign::s6Step370EntryFRow.payload).toFinset⊆s6Step370EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step370EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370EntryF_reserved : s6Step370EntryFBefore.reserve s6Step370EntryFFresh.toFinset=some s6Step370EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step370EntryFFresh,arenaWires]
  · norm_num [s6Step370EntryFBefore,s6Step370EntryFFresh,arenaWires]
  · simp only [s6Step370EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step370EntryF_checked : planRowResizeLog s6Step370EntryFBefore s6Step370EntryFRow 87 s6Step370EntryFFresh=
    some (s6Step370EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩,growRow 795 s6Step370EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step370EntryFBefore s6Step370EntryFAfter s6Step370EntryFRow 87 s6Step370EntryFFresh
    s6Step370EntryF_distinct s6Step370EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step370EntryF_reserved
  have rowEq : WindowRow.mk (s6Step370EntryFRow.payload++s6Step370EntryFFresh) s6Step370EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step370EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370EntryFvAfter : Arena := s6Step370EntryGAfter

private def s6Step370EntryFvBefore : Arena := s6Step370EntryGAfter

private theorem s6Step370EntryFv_Incoming : rowsOwned s6Step370EntryFvBefore [s6Step370EntryFvRow,s6Step370EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step370EntryFRow,s6Step370EntryGRow,s6Step370EntryFvRow,s6Step370EntryGvRow] 2 s6Step370EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step370EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step370EntryFv_Outgoing : rowsOwned s6Step370EntryGvAfter [s6Step370EntryFvOut,s6Step370EntryGvOut] :=
  hmrRows_owned_drop s6Step370EntryGvAfter [s6Step370EntryFOut,s6Step370EntryGOut,s6Step370EntryFvOut,s6Step370EntryGvOut] 2 s6Step370EntryBank_outgoingOwned

private theorem s6Step370EntryFv_distinct : (s6Step370EntryFvRow.sign::s6Step370EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370EntryFv_owned : (s6Step370EntryFvRow.sign::s6Step370EntryFvRow.payload).toFinset⊆s6Step370EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step370EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370EntryFv_reserved : s6Step370EntryFvBefore.reserve s6Step370EntryFvFresh.toFinset=some s6Step370EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step370EntryFvFresh,arenaWires]
  · norm_num [s6Step370EntryFvBefore,s6Step370EntryGAfter,s6Step370EntryFvFresh,arenaWires]
  · simp only [s6Step370EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step370EntryFv_checked : planRowResizeLog s6Step370EntryFvBefore s6Step370EntryFvRow 201 s6Step370EntryFvFresh=
    some (s6Step370EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898],776⟩,growRow 776 s6Step370EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step370EntryFvBefore s6Step370EntryFvAfter s6Step370EntryFvRow 201 s6Step370EntryFvFresh
    s6Step370EntryFv_distinct s6Step370EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step370EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step370EntryFvRow.payload++s6Step370EntryFvFresh) s6Step370EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step370EntryGBefore : Arena := s6Step370EntryFBefore

private theorem s6Step370EntryG_Incoming : rowsOwned s6Step370EntryGBefore [s6Step370EntryGRow,s6Step370EntryFvRow,s6Step370EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step370EntryFRow,s6Step370EntryGRow,s6Step370EntryFvRow,s6Step370EntryGvRow] 1 s6Step370EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step370EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step370EntryG_Outgoing : rowsOwned s6Step370EntryGvAfter [s6Step370EntryGOut,s6Step370EntryFvOut,s6Step370EntryGvOut] :=
  hmrRows_owned_drop s6Step370EntryGvAfter [s6Step370EntryFOut,s6Step370EntryGOut,s6Step370EntryFvOut,s6Step370EntryGvOut] 1 s6Step370EntryBank_outgoingOwned

private theorem s6Step370EntryG_distinct : (s6Step370EntryGRow.sign::s6Step370EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370EntryG_owned : (s6Step370EntryGRow.sign::s6Step370EntryGRow.payload).toFinset⊆s6Step370EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step370EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370EntryG_reserved : s6Step370EntryGBefore.reserve s6Step370EntryGFresh.toFinset=some s6Step370EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step370EntryGFresh,arenaWires]
  · norm_num [s6Step370EntryGBefore,s6Step370EntryFBefore,s6Step370EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step370EntryGAfter,s6Step370EntryGBefore,s6Step370EntryFBefore,s6Step370EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step370EntryG_checked : planRowResizeLog s6Step370EntryGBefore s6Step370EntryGRow 87 s6Step370EntryGFresh=
    some (s6Step370EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 796],777⟩,growRow 777 s6Step370EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step370EntryGBefore s6Step370EntryGAfter s6Step370EntryGRow 87 s6Step370EntryGFresh
    s6Step370EntryG_distinct s6Step370EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step370EntryG_reserved
  have rowEq : WindowRow.mk (s6Step370EntryGRow.payload++s6Step370EntryGFresh) s6Step370EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 796],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step370EntryGvBefore : Arena := s6Step370EntryGAfter

private theorem s6Step370EntryGv_Incoming : rowsOwned s6Step370EntryGvBefore [s6Step370EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step370EntryFRow,s6Step370EntryGRow,s6Step370EntryFvRow,s6Step370EntryGvRow] 3 s6Step370EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step370EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step370EntryGv_Outgoing : rowsOwned s6Step370EntryGvAfter [s6Step370EntryGvOut] :=
  hmrRows_owned_drop s6Step370EntryGvAfter [s6Step370EntryFOut,s6Step370EntryGOut,s6Step370EntryFvOut,s6Step370EntryGvOut] 3 s6Step370EntryBank_outgoingOwned

private theorem s6Step370EntryGv_distinct : (s6Step370EntryGvRow.sign::s6Step370EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370EntryGv_owned : (s6Step370EntryGvRow.sign::s6Step370EntryGvRow.payload).toFinset⊆s6Step370EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step370EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370EntryGv_reserved : s6Step370EntryGvBefore.reserve s6Step370EntryGvFresh.toFinset=some s6Step370EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step370EntryGvFresh,arenaWires]
  · norm_num [s6Step370EntryGvBefore,s6Step370EntryGAfter,s6Step370EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step370EntryGvAfter,s6Step370EntryGvBefore,s6Step370EntryGAfter,s6Step370EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step370EntryGv_checked : planRowResizeLog s6Step370EntryGvBefore s6Step370EntryGvRow 201 s6Step370EntryGvFresh=
    some (s6Step370EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823],775⟩,growRow 775 s6Step370EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step370EntryGvBefore s6Step370EntryGvAfter s6Step370EntryGvRow 201 s6Step370EntryGvFresh
    s6Step370EntryGv_distinct s6Step370EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step370EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step370EntryGvRow.payload++s6Step370EntryGvFresh) s6Step370EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step370EntryBank_rows : planWindowRowsLog s6Step370EntryFBefore [(s6Step370EntryFRow,87),(s6Step370EntryGRow,87),(s6Step370EntryFvRow,201),(s6Step370EntryGvRow,201)] [s6Step370EntryFFresh,s6Step370EntryGFresh,s6Step370EntryFvFresh,s6Step370EntryGvFresh]=
    some (s6Step370EntryGvAfter,[s6Step370EntryFOut,s6Step370EntryGOut,s6Step370EntryFvOut,s6Step370EntryGvOut],(growRow 795 s6Step370EntryFFresh ++ (growRow 777 s6Step370EntryGFresh ++ (growRow 776 s6Step370EntryFvFresh ++ (growRow 775 s6Step370EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step370EntryGvAfter [] []=some (s6Step370EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step370EntryGvBefore s6Step370EntryGvAfter s6Step370EntryGvAfter
    s6Step370EntryGvRow s6Step370EntryGvOut 201 s6Step370EntryGvFresh [] [] []
    (growRow 775 s6Step370EntryGvFresh) ([]) s6Step370EntryGv_Incoming s6Step370EntryGv_checked h4 s6Step370EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step370EntryFvBefore s6Step370EntryFvAfter s6Step370EntryGvAfter
    s6Step370EntryFvRow s6Step370EntryFvOut 201 s6Step370EntryFvFresh [(s6Step370EntryGvRow,201)] [s6Step370EntryGvFresh] [s6Step370EntryGvOut]
    (growRow 776 s6Step370EntryFvFresh) ((growRow 775 s6Step370EntryGvFresh ++ [])) s6Step370EntryFv_Incoming s6Step370EntryFv_checked h3 s6Step370EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step370EntryGBefore s6Step370EntryGAfter s6Step370EntryGvAfter
    s6Step370EntryGRow s6Step370EntryGOut 87 s6Step370EntryGFresh [(s6Step370EntryFvRow,201),(s6Step370EntryGvRow,201)] [s6Step370EntryFvFresh,s6Step370EntryGvFresh] [s6Step370EntryFvOut,s6Step370EntryGvOut]
    (growRow 777 s6Step370EntryGFresh) ((growRow 776 s6Step370EntryFvFresh ++ (growRow 775 s6Step370EntryGvFresh ++ []))) s6Step370EntryG_Incoming s6Step370EntryG_checked h2 s6Step370EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step370EntryFBefore s6Step370EntryFAfter s6Step370EntryGvAfter
    s6Step370EntryFRow s6Step370EntryFOut 87 s6Step370EntryFFresh [(s6Step370EntryGRow,87),(s6Step370EntryFvRow,201),(s6Step370EntryGvRow,201)] [s6Step370EntryGFresh,s6Step370EntryFvFresh,s6Step370EntryGvFresh] [s6Step370EntryGOut,s6Step370EntryFvOut,s6Step370EntryGvOut]
    (growRow 795 s6Step370EntryFFresh) ((growRow 777 s6Step370EntryGFresh ++ (growRow 776 s6Step370EntryFvFresh ++ (growRow 775 s6Step370EntryGvFresh ++ [])))) s6Step370EntryF_Incoming s6Step370EntryF_checked h1 s6Step370EntryF_Outgoing
  exact h0

private theorem s6Step370EntryBank_checked : compileHmrBankResizeLog .entry s6Step370EntryFBefore ⟨s6Step370EntryFRow,s6Step370EntryGRow,s6Step370EntryFvRow,s6Step370EntryGvRow⟩ ⟨87,87,201,201⟩ [s6Step370EntryFFresh,s6Step370EntryGFresh,s6Step370EntryFvFresh,s6Step370EntryGvFresh]=
    some (s6Step370EntryGvAfter,⟨s6Step370EntryFOut,s6Step370EntryGOut,s6Step370EntryFvOut,s6Step370EntryGvOut⟩,(growRow 795 s6Step370EntryFFresh ++ (growRow 777 s6Step370EntryGFresh ++ (growRow 776 s6Step370EntryFvFresh ++ (growRow 775 s6Step370EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step370EntryBank_rows]
  rfl

private def s6Step370ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370ExitFBefore : Arena := s6Step370ExitGAfter

private def s6Step370ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 908],795⟩

private def s6Step370ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩

private def s6Step370ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 796, 869],777⟩

private def s6Step370ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 858],775⟩

private theorem s6Step370ExitBank_incomingDistinct : ([s6Step370ExitGRow,s6Step370ExitFRow,s6Step370ExitFvRow,s6Step370ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370ExitF_Incoming : rowsOwned s6Step370ExitFBefore [s6Step370ExitFRow,s6Step370ExitFvRow,s6Step370ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step370ExitGRow,s6Step370ExitFRow,s6Step370ExitFvRow,s6Step370ExitGvRow] 1 s6Step370ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step370ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step370ExitBank_outgoingOwned : rowsOwned s6Step370ExitGvAfter [s6Step370ExitGOut,s6Step370ExitFOut,s6Step370ExitFvOut,s6Step370ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step370ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step370ExitF_Outgoing : rowsOwned s6Step370ExitGvAfter [s6Step370ExitFOut,s6Step370ExitFvOut,s6Step370ExitGvOut] :=
  hmrRows_owned_drop s6Step370ExitGvAfter [s6Step370ExitGOut,s6Step370ExitFOut,s6Step370ExitFvOut,s6Step370ExitGvOut] 1 s6Step370ExitBank_outgoingOwned

private theorem s6Step370ExitF_distinct : (s6Step370ExitFRow.sign::s6Step370ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370ExitF_owned : (s6Step370ExitFRow.sign::s6Step370ExitFRow.payload).toFinset⊆s6Step370ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step370ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370ExitF_retired : s6Step370ExitFBefore.retireSet s6Step370ExitFExtra.toFinset=s6Step370ExitFAfter := by
  unfold Arena.retireSet s6Step370ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step370ExitFBefore,s6Step370ExitGAfter,s6Step370ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step370ExitF_checked : planRowResizeLog s6Step370ExitFBefore s6Step370ExitFRow 87 []=
    some (s6Step370ExitFAfter,s6Step370ExitFOut,shrinkRow 795 s6Step370ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step370ExitFBefore s6Step370ExitFRow 87 s6Step370ExitF_distinct s6Step370ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step370ExitFRow.payload.take 87) s6Step370ExitFRow.sign=s6Step370ExitFOut := by decide +kernel
  have hi : s6Step370ExitFRow.payload.drop 87=s6Step370ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step370ExitF_retired] at result
  exact result

private def s6Step370ExitFvAfter : Arena := s6Step370ExitFAfter

private def s6Step370ExitFvBefore : Arena := s6Step370ExitFAfter

private theorem s6Step370ExitFv_Incoming : rowsOwned s6Step370ExitFvBefore [s6Step370ExitFvRow,s6Step370ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step370ExitGRow,s6Step370ExitFRow,s6Step370ExitFvRow,s6Step370ExitGvRow] 2 s6Step370ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step370ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step370ExitFv_Outgoing : rowsOwned s6Step370ExitGvAfter [s6Step370ExitFvOut,s6Step370ExitGvOut] :=
  hmrRows_owned_drop s6Step370ExitGvAfter [s6Step370ExitGOut,s6Step370ExitFOut,s6Step370ExitFvOut,s6Step370ExitGvOut] 2 s6Step370ExitBank_outgoingOwned

private theorem s6Step370ExitFv_distinct : (s6Step370ExitFvRow.sign::s6Step370ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370ExitFv_owned : (s6Step370ExitFvRow.sign::s6Step370ExitFvRow.payload).toFinset⊆s6Step370ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step370ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370ExitFv_reserved : s6Step370ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step370ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step370ExitFv_checked : planRowResizeLog s6Step370ExitFvBefore s6Step370ExitFvRow 202 []=
    some (s6Step370ExitFvAfter,s6Step370ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step370ExitFvBefore s6Step370ExitFvAfter s6Step370ExitFvRow 202 []
    s6Step370ExitFv_distinct s6Step370ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step370ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step370ExitFvRow.payload++[]) s6Step370ExitFvRow.sign=s6Step370ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step370ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step370ExitG_Incoming : rowsOwned s6Step370ExitGBefore [s6Step370ExitGRow,s6Step370ExitFRow,s6Step370ExitFvRow,s6Step370ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step370ExitGRow,s6Step370ExitFRow,s6Step370ExitFvRow,s6Step370ExitGvRow] 0 s6Step370ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step370ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step370ExitG_Outgoing : rowsOwned s6Step370ExitGvAfter [s6Step370ExitGOut,s6Step370ExitFOut,s6Step370ExitFvOut,s6Step370ExitGvOut] :=
  hmrRows_owned_drop s6Step370ExitGvAfter [s6Step370ExitGOut,s6Step370ExitFOut,s6Step370ExitFvOut,s6Step370ExitGvOut] 0 s6Step370ExitBank_outgoingOwned

private theorem s6Step370ExitG_distinct : (s6Step370ExitGRow.sign::s6Step370ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370ExitG_owned : (s6Step370ExitGRow.sign::s6Step370ExitGRow.payload).toFinset⊆s6Step370ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step370ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370ExitG_retired : s6Step370ExitGBefore.retireSet s6Step370ExitGExtra.toFinset=s6Step370ExitGAfter := by
  unfold Arena.retireSet s6Step370ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step370ExitGBefore,s6Step370ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step370ExitG_checked : planRowResizeLog s6Step370ExitGBefore s6Step370ExitGRow 86 []=
    some (s6Step370ExitGAfter,s6Step370ExitGOut,shrinkRow 777 s6Step370ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step370ExitGBefore s6Step370ExitGRow 86 s6Step370ExitG_distinct s6Step370ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step370ExitGRow.payload.take 86) s6Step370ExitGRow.sign=s6Step370ExitGOut := by decide +kernel
  have hi : s6Step370ExitGRow.payload.drop 86=s6Step370ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step370ExitG_retired] at result
  exact result

private def s6Step370ExitGvBefore : Arena := s6Step370ExitFAfter

private theorem s6Step370ExitGv_Incoming : rowsOwned s6Step370ExitGvBefore [s6Step370ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step370ExitGRow,s6Step370ExitFRow,s6Step370ExitFvRow,s6Step370ExitGvRow] 3 s6Step370ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step370ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step370ExitGv_Outgoing : rowsOwned s6Step370ExitGvAfter [s6Step370ExitGvOut] :=
  hmrRows_owned_drop s6Step370ExitGvAfter [s6Step370ExitGOut,s6Step370ExitFOut,s6Step370ExitFvOut,s6Step370ExitGvOut] 3 s6Step370ExitBank_outgoingOwned

private theorem s6Step370ExitGv_distinct : (s6Step370ExitGvRow.sign::s6Step370ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370ExitGv_owned : (s6Step370ExitGvRow.sign::s6Step370ExitGvRow.payload).toFinset⊆s6Step370ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step370ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370ExitGv_retired : s6Step370ExitGvBefore.retireSet s6Step370ExitGvExtra.toFinset=s6Step370ExitGvAfter := by
  unfold Arena.retireSet s6Step370ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step370ExitGvBefore,s6Step370ExitFAfter,s6Step370ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step370ExitGv_checked : planRowResizeLog s6Step370ExitGvBefore s6Step370ExitGvRow 201 []=
    some (s6Step370ExitGvAfter,s6Step370ExitGvOut,shrinkRow 775 s6Step370ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step370ExitGvBefore s6Step370ExitGvRow 201 s6Step370ExitGv_distinct s6Step370ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step370ExitGvRow.payload.take 201) s6Step370ExitGvRow.sign=s6Step370ExitGvOut := by decide +kernel
  have hi : s6Step370ExitGvRow.payload.drop 201=s6Step370ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step370ExitGv_retired] at result
  exact result

private theorem s6Step370ExitBank_rows : planWindowRowsLog s6Step370ExitGBefore [(s6Step370ExitGRow,86),(s6Step370ExitFRow,87),(s6Step370ExitFvRow,202),(s6Step370ExitGvRow,201)] [[],[],[],[]]=
    some (s6Step370ExitGvAfter,[s6Step370ExitGOut,s6Step370ExitFOut,s6Step370ExitFvOut,s6Step370ExitGvOut],(shrinkRow 777 s6Step370ExitGExtra ++ (shrinkRow 795 s6Step370ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step370ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step370ExitGvAfter [] []=some (s6Step370ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step370ExitGvBefore s6Step370ExitGvAfter s6Step370ExitGvAfter
    s6Step370ExitGvRow s6Step370ExitGvOut 201 [] [] [] []
    (shrinkRow 775 s6Step370ExitGvExtra) ([]) s6Step370ExitGv_Incoming s6Step370ExitGv_checked h4 s6Step370ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step370ExitFvBefore s6Step370ExitFvAfter s6Step370ExitGvAfter
    s6Step370ExitFvRow s6Step370ExitFvOut 202 [] [(s6Step370ExitGvRow,201)] [[]] [s6Step370ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step370ExitGvExtra ++ [])) s6Step370ExitFv_Incoming s6Step370ExitFv_checked h3 s6Step370ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step370ExitFBefore s6Step370ExitFAfter s6Step370ExitGvAfter
    s6Step370ExitFRow s6Step370ExitFOut 87 [] [(s6Step370ExitFvRow,202),(s6Step370ExitGvRow,201)] [[],[]] [s6Step370ExitFvOut,s6Step370ExitGvOut]
    (shrinkRow 795 s6Step370ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step370ExitGvExtra ++ []))) s6Step370ExitF_Incoming s6Step370ExitF_checked h2 s6Step370ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step370ExitGBefore s6Step370ExitGAfter s6Step370ExitGvAfter
    s6Step370ExitGRow s6Step370ExitGOut 86 [] [(s6Step370ExitFRow,87),(s6Step370ExitFvRow,202),(s6Step370ExitGvRow,201)] [[],[],[]] [s6Step370ExitFOut,s6Step370ExitFvOut,s6Step370ExitGvOut]
    (shrinkRow 777 s6Step370ExitGExtra) ((shrinkRow 795 s6Step370ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step370ExitGvExtra ++ [])))) s6Step370ExitG_Incoming s6Step370ExitG_checked h1 s6Step370ExitG_Outgoing
  exact h0

private theorem s6Step370ExitBank_checked : compileHmrBankResizeLog .exit s6Step370ExitGBefore ⟨s6Step370ExitFRow,s6Step370ExitGRow,s6Step370ExitFvRow,s6Step370ExitGvRow⟩ ⟨87,86,202,201⟩ [[],[],[],[]]=
    some (s6Step370ExitGvAfter,⟨s6Step370ExitFOut,s6Step370ExitGOut,s6Step370ExitFvOut,s6Step370ExitGvOut⟩,(shrinkRow 777 s6Step370ExitGExtra ++ (shrinkRow 795 s6Step370ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step370ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step370ExitBank_rows]
  rfl

private theorem s6Step370Add0_apart : Disjoint s6Step370Add0Arena.live s6Step370Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step370Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370Add0_card : s6Step370Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step370Add0_borrowed : s6Step370Add0Arena.checkBorrow (hmrHybridCount s6Step370Add0Arena s6Step370Add0B.length) s6Step370Add0Work=some s6Step370Add0During := by
  have len : s6Step370Add0Work.length=hmrHybridCount s6Step370Add0Arena s6Step370Add0B.length := by
    rw [hmrHybridCount,s6Step370Add0_card]
    decide +kernel
  have nd : s6Step370Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step370Add0Arena s6Step370Add0During s6Step370Add0Work.toFinset s6Step370Add0_bounded s6Step370Add0_apart rfl

private theorem s6Step370Add0_distinct : (805::876::802::(s6Step370Add0A++s6Step370Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370Add0_owned : (805::876::802::(s6Step370Add0A++s6Step370Add0B)).toFinset⊆s6Step370Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step370Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370Add0_checked : compileHmrHybridCinLog s6Step370Add0Arena 876 805 802 s6Step370Add0A s6Step370Add0B s6Step370Add0Work=some s6Step370Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step370Add0Arena s6Step370Add0During 876 805 802 s6Step370Add0A s6Step370Add0B s6Step370Add0Work
    (by decide +kernel) (by decide +kernel) s6Step370Add0_distinct
    (fun q hq => s6Step370Add0_owned (List.mem_toFinset.mpr hq)) s6Step370Add0_borrowed

private theorem s6Step370Add1_apart : Disjoint s6Step370Add1Arena.live s6Step370Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step370Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370Add1_card : s6Step370Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step370Add1_borrowed : s6Step370Add1Arena.checkBorrow (hmrHybridCount s6Step370Add1Arena s6Step370Add1B.length) s6Step370Add1Work=some s6Step370Add1During := by
  have len : s6Step370Add1Work.length=hmrHybridCount s6Step370Add1Arena s6Step370Add1B.length := by
    rw [hmrHybridCount,s6Step370Add1_card]
    decide +kernel
  have nd : s6Step370Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step370Add1Arena s6Step370Add1During s6Step370Add1Work.toFinset s6Step370Add1_bounded s6Step370Add1_apart rfl

private theorem s6Step370Add1_distinct : (805::876::802::(s6Step370Add1A++s6Step370Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370Add1_owned : (805::876::802::(s6Step370Add1A++s6Step370Add1B)).toFinset⊆s6Step370Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step370Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370Add1_checked : compileHmrHybridCinLog s6Step370Add1Arena 876 805 802 s6Step370Add1A s6Step370Add1B s6Step370Add1Work=some s6Step370Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step370Add1Arena s6Step370Add1During 876 805 802 s6Step370Add1A s6Step370Add1B s6Step370Add1Work
    (by decide +kernel) (by decide +kernel) s6Step370Add1_distinct
    (fun q hq => s6Step370Add1_owned (List.mem_toFinset.mpr hq)) s6Step370Add1_borrowed

private theorem s6Step370F4_apart : Disjoint (s6Step370Add0A++s6Step370Add0B).toFinset (s6Step370Add1A++s6Step370Add1B).toFinset := by
  have nd : ((s6Step370Add0A++s6Step370Add0B)++(s6Step370Add1A++s6Step370Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step370F4_carry : s6Step370F4FlagArena.checkBorrow 1 [802]=some s6Step370Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step370F4FlagArena,s6Step370HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step370F4FlagArena,s6Step370HeadFvAfter,s6Step370Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step370F4_distinct : (888::876::805::802::((s6Step370Add0A++s6Step370Add1A)++(s6Step370Add0B++s6Step370Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370F4_flag : s6Step370HeadFvAfter.checkBorrow 1 [805]=some s6Step370F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step370HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step370F4_owned : (888::876::((s6Step370Add0A++s6Step370Add1A)++(s6Step370Add0B++s6Step370Add1B))).toFinset⊆s6Step370HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step370HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370F4_checked : compileHmrHybridF4Log s6Step370HeadFvAfter 888 876 s6Step370Add0A s6Step370Add0B s6Step370Add1A s6Step370Add1B [805] [802] s6Step370Add0Work s6Step370Add1Work=some s6Step370F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step370HeadFvAfter s6Step370F4FlagArena s6Step370Add0Arena s6Step370Add0During s6Step370Add1During 888 876
    s6Step370Add0A s6Step370Add0B s6Step370Add1A s6Step370Add1B [805] [802] s6Step370Add0Work s6Step370Add1Work
    (fun q hq => s6Step370F4_owned (List.mem_toFinset.mpr hq)) s6Step370F4_flag s6Step370F4_carry
    s6Step370F4_distinct s6Step370F4_apart s6Step370Add0_checked s6Step370Add1_checked

private theorem s6Step370Front_branch : s6Step370FrontSigmaArena.checkBorrow 1 [876]=some s6Step370HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step370FrontSigmaArena,s6Step370EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step370FrontSigmaArena,s6Step370EntryGvAfter,s6Step370HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step370Front_entry : HmrFrontEntryValid s6Step370EntryFBefore s6Step370FrontBank 87 201 ⟨87,86,202,201⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step370FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step370EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step370EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step370FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step370Front_sigma : s6Step370EntryGvAfter.checkBorrow 1 [888]=some s6Step370FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step370EntryGvAfter,arenaWires]
  · rfl

private def s6Step370HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370HeadFBefore : Arena := s6Step370HeadGAfter

private def s6Step370HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step370HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898],776⟩

private def s6Step370HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 796],777⟩

private def s6Step370HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823],775⟩

private theorem s6Step370HeadBank_incomingDistinct : ([s6Step370HeadGRow,s6Step370HeadFRow,s6Step370HeadGvRow,s6Step370HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370HeadF_Incoming : rowsOwned s6Step370HeadFBefore [s6Step370HeadFRow,s6Step370HeadGvRow,s6Step370HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step370HeadGRow,s6Step370HeadFRow,s6Step370HeadGvRow,s6Step370HeadFvRow] 1 s6Step370HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step370HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step370HeadBank_outgoingOwned : rowsOwned s6Step370HeadFvAfter [s6Step370HeadGOut,s6Step370HeadFOut,s6Step370HeadGvOut,s6Step370HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step370HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step370HeadF_Outgoing : rowsOwned s6Step370HeadFvAfter [s6Step370HeadFOut,s6Step370HeadGvOut,s6Step370HeadFvOut] :=
  hmrRows_owned_drop s6Step370HeadFvAfter [s6Step370HeadGOut,s6Step370HeadFOut,s6Step370HeadGvOut,s6Step370HeadFvOut] 1 s6Step370HeadBank_outgoingOwned

private theorem s6Step370HeadF_distinct : (s6Step370HeadFRow.sign::s6Step370HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370HeadF_owned : (s6Step370HeadFRow.sign::s6Step370HeadFRow.payload).toFinset⊆s6Step370HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step370HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370HeadF_reserved : s6Step370HeadFBefore.reserve s6Step370HeadFFresh.toFinset=some s6Step370HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step370HeadFFresh,arenaWires]
  · norm_num [s6Step370HeadFBefore,s6Step370HeadGAfter,s6Step370HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step370HeadFAfter,s6Step370HeadFBefore,s6Step370HeadGAfter,s6Step370HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step370HeadF_checked : planRowResizeLog s6Step370HeadFBefore s6Step370HeadFRow 88 s6Step370HeadFFresh=
    some (s6Step370HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 908],795⟩,growRow 795 s6Step370HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step370HeadFBefore s6Step370HeadFAfter s6Step370HeadFRow 88 s6Step370HeadFFresh
    s6Step370HeadF_distinct s6Step370HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step370HeadF_reserved
  have rowEq : WindowRow.mk (s6Step370HeadFRow.payload++s6Step370HeadFFresh) s6Step370HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 908],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step370HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step370HeadFvBefore : Arena := s6Step370HeadGvAfter

private theorem s6Step370HeadFv_Incoming : rowsOwned s6Step370HeadFvBefore [s6Step370HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step370HeadGRow,s6Step370HeadFRow,s6Step370HeadGvRow,s6Step370HeadFvRow] 3 s6Step370HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step370HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step370HeadFv_Outgoing : rowsOwned s6Step370HeadFvAfter [s6Step370HeadFvOut] :=
  hmrRows_owned_drop s6Step370HeadFvAfter [s6Step370HeadGOut,s6Step370HeadFOut,s6Step370HeadGvOut,s6Step370HeadFvOut] 3 s6Step370HeadBank_outgoingOwned

private theorem s6Step370HeadFv_distinct : (s6Step370HeadFvRow.sign::s6Step370HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370HeadFv_owned : (s6Step370HeadFvRow.sign::s6Step370HeadFvRow.payload).toFinset⊆s6Step370HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step370HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370HeadFv_reserved : s6Step370HeadFvBefore.reserve s6Step370HeadFvFresh.toFinset=some s6Step370HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step370HeadFvFresh,arenaWires]
  · norm_num [s6Step370HeadFvBefore,s6Step370HeadGvAfter,s6Step370HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step370HeadFvAfter,s6Step370HeadFvBefore,s6Step370HeadGvAfter,s6Step370HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step370HeadFv_checked : planRowResizeLog s6Step370HeadFvBefore s6Step370HeadFvRow 202 s6Step370HeadFvFresh=
    some (s6Step370HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩,growRow 776 s6Step370HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step370HeadFvBefore s6Step370HeadFvAfter s6Step370HeadFvRow 202 s6Step370HeadFvFresh
    s6Step370HeadFv_distinct s6Step370HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step370HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step370HeadFvRow.payload++s6Step370HeadFvFresh) s6Step370HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step370HeadG_Incoming : rowsOwned s6Step370HeadGBefore [s6Step370HeadGRow,s6Step370HeadFRow,s6Step370HeadGvRow,s6Step370HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step370HeadGRow,s6Step370HeadFRow,s6Step370HeadGvRow,s6Step370HeadFvRow] 0 s6Step370HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step370HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step370HeadG_Outgoing : rowsOwned s6Step370HeadFvAfter [s6Step370HeadGOut,s6Step370HeadFOut,s6Step370HeadGvOut,s6Step370HeadFvOut] :=
  hmrRows_owned_drop s6Step370HeadFvAfter [s6Step370HeadGOut,s6Step370HeadFOut,s6Step370HeadGvOut,s6Step370HeadFvOut] 0 s6Step370HeadBank_outgoingOwned

private theorem s6Step370HeadG_distinct : (s6Step370HeadGRow.sign::s6Step370HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370HeadG_owned : (s6Step370HeadGRow.sign::s6Step370HeadGRow.payload).toFinset⊆s6Step370HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step370HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370HeadG_reserved : s6Step370HeadGBefore.reserve s6Step370HeadGFresh.toFinset=some s6Step370HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step370HeadGFresh,arenaWires]
  · norm_num [s6Step370HeadGBefore,s6Step370HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step370HeadGAfter,s6Step370HeadGBefore,s6Step370HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step370HeadG_checked : planRowResizeLog s6Step370HeadGBefore s6Step370HeadGRow 88 s6Step370HeadGFresh=
    some (s6Step370HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 796, 869],777⟩,growRow 777 s6Step370HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step370HeadGBefore s6Step370HeadGAfter s6Step370HeadGRow 88 s6Step370HeadGFresh
    s6Step370HeadG_distinct s6Step370HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step370HeadG_reserved
  have rowEq : WindowRow.mk (s6Step370HeadGRow.payload++s6Step370HeadGFresh) s6Step370HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 796, 869],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step370HeadGvBefore : Arena := s6Step370HeadFAfter

private theorem s6Step370HeadGv_Incoming : rowsOwned s6Step370HeadGvBefore [s6Step370HeadGvRow,s6Step370HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step370HeadGRow,s6Step370HeadFRow,s6Step370HeadGvRow,s6Step370HeadFvRow] 2 s6Step370HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step370HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step370HeadGv_Outgoing : rowsOwned s6Step370HeadFvAfter [s6Step370HeadGvOut,s6Step370HeadFvOut] :=
  hmrRows_owned_drop s6Step370HeadFvAfter [s6Step370HeadGOut,s6Step370HeadFOut,s6Step370HeadGvOut,s6Step370HeadFvOut] 2 s6Step370HeadBank_outgoingOwned

private theorem s6Step370HeadGv_distinct : (s6Step370HeadGvRow.sign::s6Step370HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step370HeadGv_owned : (s6Step370HeadGvRow.sign::s6Step370HeadGvRow.payload).toFinset⊆s6Step370HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step370HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step370HeadGv_reserved : s6Step370HeadGvBefore.reserve s6Step370HeadGvFresh.toFinset=some s6Step370HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step370HeadGvFresh,arenaWires]
  · norm_num [s6Step370HeadGvBefore,s6Step370HeadFAfter,s6Step370HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step370HeadGvAfter,s6Step370HeadGvBefore,s6Step370HeadFAfter,s6Step370HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step370HeadGv_checked : planRowResizeLog s6Step370HeadGvBefore s6Step370HeadGvRow 202 s6Step370HeadGvFresh=
    some (s6Step370HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 858],775⟩,growRow 775 s6Step370HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step370HeadGvBefore s6Step370HeadGvAfter s6Step370HeadGvRow 202 s6Step370HeadGvFresh
    s6Step370HeadGv_distinct s6Step370HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step370HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step370HeadGvRow.payload++s6Step370HeadGvFresh) s6Step370HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 858],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step370HeadBank_rows : planWindowRowsLog s6Step370HeadGBefore [(s6Step370HeadGRow,88),(s6Step370HeadFRow,88),(s6Step370HeadGvRow,202),(s6Step370HeadFvRow,202)] [s6Step370HeadGFresh,s6Step370HeadFFresh,s6Step370HeadGvFresh,s6Step370HeadFvFresh]=
    some (s6Step370HeadFvAfter,[s6Step370HeadGOut,s6Step370HeadFOut,s6Step370HeadGvOut,s6Step370HeadFvOut],(growRow 777 s6Step370HeadGFresh ++ (growRow 795 s6Step370HeadFFresh ++ (growRow 775 s6Step370HeadGvFresh ++ (growRow 776 s6Step370HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step370HeadFvAfter [] []=some (s6Step370HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step370HeadFvBefore s6Step370HeadFvAfter s6Step370HeadFvAfter
    s6Step370HeadFvRow s6Step370HeadFvOut 202 s6Step370HeadFvFresh [] [] []
    (growRow 776 s6Step370HeadFvFresh) ([]) s6Step370HeadFv_Incoming s6Step370HeadFv_checked h4 s6Step370HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step370HeadGvBefore s6Step370HeadGvAfter s6Step370HeadFvAfter
    s6Step370HeadGvRow s6Step370HeadGvOut 202 s6Step370HeadGvFresh [(s6Step370HeadFvRow,202)] [s6Step370HeadFvFresh] [s6Step370HeadFvOut]
    (growRow 775 s6Step370HeadGvFresh) ((growRow 776 s6Step370HeadFvFresh ++ [])) s6Step370HeadGv_Incoming s6Step370HeadGv_checked h3 s6Step370HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step370HeadFBefore s6Step370HeadFAfter s6Step370HeadFvAfter
    s6Step370HeadFRow s6Step370HeadFOut 88 s6Step370HeadFFresh [(s6Step370HeadGvRow,202),(s6Step370HeadFvRow,202)] [s6Step370HeadGvFresh,s6Step370HeadFvFresh] [s6Step370HeadGvOut,s6Step370HeadFvOut]
    (growRow 795 s6Step370HeadFFresh) ((growRow 775 s6Step370HeadGvFresh ++ (growRow 776 s6Step370HeadFvFresh ++ []))) s6Step370HeadF_Incoming s6Step370HeadF_checked h2 s6Step370HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step370HeadGBefore s6Step370HeadGAfter s6Step370HeadFvAfter
    s6Step370HeadGRow s6Step370HeadGOut 88 s6Step370HeadGFresh [(s6Step370HeadFRow,88),(s6Step370HeadGvRow,202),(s6Step370HeadFvRow,202)] [s6Step370HeadFFresh,s6Step370HeadGvFresh,s6Step370HeadFvFresh] [s6Step370HeadFOut,s6Step370HeadGvOut,s6Step370HeadFvOut]
    (growRow 777 s6Step370HeadGFresh) ((growRow 795 s6Step370HeadFFresh ++ (growRow 775 s6Step370HeadGvFresh ++ (growRow 776 s6Step370HeadFvFresh ++ [])))) s6Step370HeadG_Incoming s6Step370HeadG_checked h1 s6Step370HeadG_Outgoing
  exact h0

private theorem s6Step370HeadBank_checked : compileHmrBankResizeLog .headroom s6Step370HeadGBefore ⟨s6Step370HeadFRow,s6Step370HeadGRow,s6Step370HeadFvRow,s6Step370HeadGvRow⟩ ⟨88,88,202,202⟩ [s6Step370HeadGFresh,s6Step370HeadFFresh,s6Step370HeadGvFresh,s6Step370HeadFvFresh]=
    some (s6Step370HeadFvAfter,⟨s6Step370HeadFOut,s6Step370HeadGOut,s6Step370HeadFvOut,s6Step370HeadGvOut⟩,(growRow 777 s6Step370HeadGFresh ++ (growRow 795 s6Step370HeadFFresh ++ (growRow 775 s6Step370HeadGvFresh ++ (growRow 776 s6Step370HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step370HeadBank_rows]
  rfl

private theorem s6Step370Front_checked : compileHmrSourceFrontLog s6Step370EntryFBefore s6Step370FrontBank 87 201 ⟨87,86,202,201⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step370FrontLog=some s6Step370FrontPlan := by
  have pairEq : s6Step370FrontPair=⟨s6Step370HeadFRow,s6Step370HeadGRow,s6Step370HeadFvRow,s6Step370HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step370FrontHead=⟨s6Step370ExitFRow,s6Step370ExitGRow,s6Step370ExitFvRow,s6Step370ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step370Add0A=s6Step370FrontHead.f.wires := by decide +kernel
  have gEq : s6Step370Add0B=s6Step370FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step370Add1A=s6Step370FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step370Add1B=s6Step370FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step370EntryFBefore s6Step370FrontBank 87 201 ⟨87,86,202,201⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step370FrontLog s6Step370FrontPlan
  · exact s6Step370Front_entry
  · exact s6Step370EntryBank_checked
  · exact s6Step370Front_sigma
  · rfl
  · exact s6Step370Front_branch
  · rfl
  · simpa only [s6Step370FrontPlan,pairEq] using s6Step370HeadBank_checked
  · simpa only [s6Step370FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step370F4_checked
  · exact s6Step370Counter_checked
  · rfl
  · simpa only [s6Step370FrontPlan,headEq] using s6Step370ExitBank_checked

private theorem s6Step370Complete_explicit_checked : compileHmrEarlyStepLog s6Step370EntryFBefore s6Step370FrontBank 87 201 ⟨87,86,202,201⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step370CompleteLog=some s6Step370CompletePlan := by
  let Q := s6Step370EarlyControlPlan
  have hq := s6Step370EarlyControl_plan_checked
  have fv1 : s6Step370CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step370CompleteOut.fv.payload[2]?.getD s6Step370CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step370CompleteOut.fv.payload[3]?.getD s6Step370CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step370CompleteOut.fv.payload[4]?.getD s6Step370CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step370EntryFBefore s6Step370EarlyControlArena s6Step370FrontBank 87 201 ⟨87,86,202,201⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step370CompleteLog s6Step370FrontPlan Q
    s6Step370Front_checked s6Step370Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step370Complete_owned s6Step370Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step370EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 888 s6Step370CompleteOut.fv.second (s6Step370CompleteOut.fv.payload[2]?.getD s6Step370CompleteOut.fv.sign) (s6Step370CompleteOut.fv.payload[3]?.getD s6Step370CompleteOut.fv.sign) (s6Step370CompleteOut.fv.payload[4]?.getD s6Step370CompleteOut.fv.sign) 876 60 s6Step370EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep370Arena : Arena := s6Step370EntryFBefore
def s6PrivateStep370Bank : WindowBank := s6Step370FrontBank
def s6PrivateStep370Spec : HmrSourceWalkStepLog := ⟨87,201,⟨87,86,202,201⟩,60,.early s6Step370CompleteLog⟩
def s6PrivateStep370Plan : HmrSourceStepPlan := .early s6Step370CompletePlan
theorem s6PrivateStep370_source : s6PrivateStep370Spec=s6ObservedLogs368[2] := rfl
theorem s6PrivateStep370_checked : compileHmrSourceStepLog s6PrivateStep370Arena s6PrivateStep370Bank
    s6PrivateStep370Spec.fgWidth s6PrivateStep370Spec.vWidth s6PrivateStep370Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 370 s6PrivateStep370Spec.need none s6PrivateStep370Spec.log=some s6PrivateStep370Plan := by
  change compileHmrSourceStepLog s6Step370EntryFBefore s6Step370FrontBank 87 201 ⟨87,86,202,201⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 370 60 none (.early s6Step370CompleteLog)=some (.early s6Step370CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 370<498)]
  rw [s6Step370Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
