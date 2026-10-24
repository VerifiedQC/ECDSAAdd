import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep373
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

private def s6Step375CompleteMoves : List (Wire × Wire) := [(863,340)]

private def s6Step375EarlyControlLog : HmrEarlyControlLog := ⟨[863, 876, 796, 805, 857],[821],[843],[877, 792, 816, 819, 920, 842],[]⟩

private def s6Step375FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [857], [], [858]],[[821], [805], [876], [796]],[[], [], [], []]⟩,[908],[890],[843],[877],[792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816]⟩

private def s6Step375CompleteLog : HmrEarlyStepLog := ⟨s6Step375FrontLog,s6Step375CompleteMoves,s6Step375EarlyControlLog⟩

private def s6Step375ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339],795⟩

private def s6Step375ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩

private def s6Step375ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],777⟩

private def s6Step375ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858],775⟩

private def s6Step375FrontOut : WindowBank := ⟨s6Step375ExitFOut,s6Step375ExitGOut,s6Step375ExitFvOut,s6Step375ExitGvOut⟩

private def s6Step375CompleteOut : WindowBank := s6Step375FrontOut.repacked s6Step375CompleteMoves

private def s6Step375EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step375EarlyControlPositiveArena,[821],s6Step375EarlyControlEqualityArena,[843],⟨⟨908,false⟩,[⟨⟨821,false⟩,843⟩]⟩⟩

private def s6Step375EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,863⟩,⟨⟨772,false⟩,876⟩,⟨⟨771,false⟩,796⟩,⟨⟨770,false⟩,805⟩,⟨⟨769,false⟩,857⟩]⟩

private def s6Step375EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step375EarlyControlZeroArena,s6Step375EarlyControlZeroPlan,s6Step375EarlyControlClassPlan,s6Step375EarlyControlFlagArena,s6Step375EarlyControlFittedArena,s6Step375EarlyControlHistoryArena,s6Step375EarlyControlSigmaArena,s6Step375EarlyControlOutputArena,s6Step375EarlyControlLog⟩

private def s6Step375CounterWork : List Wire := [843, 877, 792, 816]

private theorem s6Step375Counter_bounded : s6Step375CounterWork.toFinset⊆arenaWires := by norm_num [s6Step375CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step375HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375CounterDuring : Arena := ⟨s6Step375HeadFvAfter.live∪s6Step375CounterWork.toFinset,Finset.union_subset s6Step375HeadFvAfter.bounded s6Step375Counter_bounded⟩

private def s6Step375EntryFFresh : List Wire := []

private def s6Step375EntryFvFresh : List Wire := []

private def s6Step375EntryGFresh : List Wire := [857]

private def s6Step375EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375EntryGvFresh : List Wire := [858]

private def s6Step375ExitFExtra : List Wire := [340, 805]

private def s6Step375ExitFvExtra : List Wire := [796]

private def s6Step375ExitGExtra : List Wire := [857, 821]

private def s6Step375ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<340) ∨ (341≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375ExitGvExtra : List Wire := [876]

private def s6Step375Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375Add0Work : List Wire := [792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step375Add0_bounded : s6Step375Add0Work.toFinset⊆arenaWires := by
  have h : s6Step375Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step375Add0During : Arena := ⟨s6Step375Add0Arena.live∪s6Step375Add0Work.toFinset,Finset.union_subset s6Step375Add0Arena.bounded s6Step375Add0_bounded⟩

private def s6Step375Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375Add1Work : List Wire := [792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step375Add1_bounded : s6Step375Add1Work.toFinset⊆arenaWires := by
  have h : s6Step375Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step375Add1During : Arena := ⟨s6Step375Add1Arena.live∪s6Step375Add1Work.toFinset,Finset.union_subset s6Step375Add1Arena.bounded s6Step375Add1_bounded⟩

private def s6Step375F4FlagArena : Arena := ⟨s6Step375HeadFvAfter.live∪{843},Finset.union_subset s6Step375HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step375F4Plan : HmrHybridF4Plan := ⟨s6Step375F4FlagArena,[843],s6Step375Add0Arena,[877],s6Step375Add0During,s6Step375Add0Work,s6Step375Add1During,s6Step375Add1Work⟩

private def s6Step375HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 805],795⟩

private def s6Step375HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 796],776⟩

private def s6Step375HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 857, 821],777⟩

private def s6Step375HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 876],775⟩

private def s6Step375FrontHead : WindowBank := ⟨s6Step375HeadFOut,s6Step375HeadGOut,s6Step375HeadFvOut,s6Step375HeadGvOut⟩

private def s6Step375EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩

private def s6Step375EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩

private def s6Step375EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 857],777⟩

private def s6Step375EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858],775⟩

private def s6Step375FrontPair : WindowBank := ⟨s6Step375EntryFOut,s6Step375EntryGOut,s6Step375EntryFvOut,s6Step375EntryGvOut⟩

private def s6Step375FrontSigmaArena : Arena := ⟨s6Step375EntryGvAfter.live∪{908},Finset.union_subset s6Step375EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step375HeadFFresh : List Wire := [805]

private def s6Step375HeadFvFresh : List Wire := [796]

private def s6Step375HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375HeadGFresh : List Wire := [821]

private def s6Step375HeadGvFresh : List Wire := [876]

private def s6Step375FrontPlan : HmrSourceFront := ⟨s6Step375EntryGvAfter,s6Step375FrontPair,(growRow 795 s6Step375EntryFFresh ++ (growRow 777 s6Step375EntryGFresh ++ (growRow 776 s6Step375EntryFvFresh ++ (growRow 775 s6Step375EntryGvFresh ++ [])))),s6Step375FrontSigmaArena,[908],s6Step375HeadGBefore,[890],
  s6Step375HeadFvAfter,s6Step375FrontHead,(growRow 777 s6Step375HeadGFresh ++ (growRow 795 s6Step375HeadFFresh ++ (growRow 775 s6Step375HeadGvFresh ++ (growRow 776 s6Step375HeadFvFresh ++ [])))),s6Step375F4Plan,s6Step375CounterDuring,s6Step375CounterWork,s6Step375ExitGvAfter,s6Step375FrontOut,(shrinkRow 777 s6Step375ExitGExtra ++ (shrinkRow 795 s6Step375ExitFExtra ++ (shrinkRow 776 s6Step375ExitFvExtra ++ (shrinkRow 775 s6Step375ExitGvExtra ++ []))))⟩

private def s6Step375CompletePlan : HmrEarlyStepPlan := ⟨s6Step375FrontPlan,s6Step375EarlyControlArena,s6Step375EarlyControlPlan,s6Step375CompleteMoves⟩

private theorem s6Step375Complete_apart : List.Disjoint (s6Step375CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [908, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step375CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[908, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step375Complete_owned : (s6Step375CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step375EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step375EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step375CompleteMoveArena : Arena := ⟨s6Step375ExitGvAfter.live∪{340},Finset.union_subset s6Step375ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step375Complete_repack : s6Step375ExitGvAfter.checkRepack s6Step375CompleteMoves=some s6Step375EarlyControlArena := by
  have owned : 863∈s6Step375ExitGvAfter.live := by norm_num [s6Step375ExitGvAfter,arenaWires]
  have reserve : s6Step375ExitGvAfter.reserve {340}=some s6Step375CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step375ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step375CompleteMoveArena.retireSet {863}=s6Step375EarlyControlArena := by
    unfold Arena.retireSet s6Step375EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step375CompleteMoveArena,s6Step375ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step375CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step375CompleteMoveArena.retireSet {863}).checkRepack []=some s6Step375EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step375EarlyControl_branchOwned : ([890] : List Wire).toFinset⊆s6Step375EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step375EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375EarlyControl_branch : compileHmrBranchRetirement s6Step375EarlyControlSigmaArena 890=some s6Step375EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step375EarlyControl_branchOwned
  · ext q
    simp [s6Step375EarlyControlOutputArena,s6Step375EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step375EarlyControl_classEqualityBorrow : s6Step375EarlyControlPositiveArena.checkBorrow (([908, 821] : List Wire).length-1) s6Step375EarlyControlLog.classWork=some s6Step375EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step375EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step375EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step375EarlyControlEqualityArena,s6Step375EarlyControlPositiveArena,s6Step375EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step375EarlyControl_classEqualityOwned : ([908, 821] : List Wire).toFinset⊆s6Step375EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step375EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375EarlyControl_classEquality : compileHmrEqualityLog s6Step375EarlyControlPositiveArena [908, 821] 0 s6Step375EarlyControlLog.classWork=some (s6Step375EarlyControlEqualityArena,s6Step375EarlyControlLog.classWork,s6Step375EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step375EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step375EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step375EarlyControl_classOwned : ([769, 857, 908] : List Wire).toFinset⊆s6Step375EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step375EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375EarlyControl_positiveBorrow : s6Step375EarlyControlZeroArena.checkBorrow (1) s6Step375EarlyControlLog.positiveWork=some s6Step375EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step375EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step375EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step375EarlyControlPositiveArena,s6Step375EarlyControlZeroArena,s6Step375EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step375EarlyControl_class : compileHmrSourceClassLog s6Step375EarlyControlZeroArena false 769 s6Step375EarlyControlZeroPlan.top 0 908 s6Step375EarlyControlLog.positiveWork s6Step375EarlyControlLog.classWork=some s6Step375EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step375EarlyControlClassPlan s6Step375EarlyControlZeroArena false 769 s6Step375EarlyControlZeroPlan.top 0 908
  constructor
  · decide +kernel
  · exact s6Step375EarlyControl_classOwned
  · exact s6Step375EarlyControl_positiveBorrow
  · exact s6Step375EarlyControl_classEquality

private theorem s6Step375EarlyControl_entryRecordOwned : ([890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step375EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step375EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375EarlyControl_entrySigmaOwned : ([908, 254] : List Wire).toFinset⊆s6Step375EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step375EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375EarlyControl_fitBorrow : s6Step375EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step375EarlyControlLog.recordFresh=some s6Step375EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step375EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step375EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step375EarlyControlFittedArena,s6Step375EarlyControlFlagArena,s6Step375EarlyControlLog,arenaWires]

private theorem s6Step375EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step375EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step375EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375EarlyControl_fit : compileHmrRecordGrowLog s6Step375EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step375EarlyControlLog.recordFresh=some s6Step375EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step375EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step375EarlyControl_fitBorrow

private theorem s6Step375EarlyControl_flagsBorrow : s6Step375EarlyControlEqualityArena.checkBorrow (6) s6Step375EarlyControlLog.flagWork=some s6Step375EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step375EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step375EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step375EarlyControlFlagArena,s6Step375EarlyControlEqualityArena,s6Step375EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step375EarlyControl_flagsOwned : ([843, 253, 252, 251] : List Wire).toFinset⊆s6Step375EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step375EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375EarlyControl_flags : compileHmrFlagsLog s6Step375EarlyControlClassPlan.equalityArena s6Step375EarlyControlClassPlan.equality.top 253 252 251 s6Step375EarlyControlLog.flagWork=some s6Step375EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step375EarlyControl_flagsOwned⟩
  · exact s6Step375EarlyControl_flagsBorrow

private theorem s6Step375EarlyControl_historyBorrow : s6Step375EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step375EarlyControlLog.recordFresh=some s6Step375EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step375EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step375EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step375EarlyControlHistoryArena,s6Step375EarlyControlArena,s6Step375EarlyControlLog,arenaWires]

private theorem s6Step375EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step375EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step375EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375EarlyControl_history : compileHmrRecordGrowLog s6Step375EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step375EarlyControlLog.recordFresh=some s6Step375EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step375EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step375EarlyControl_historyBorrow

private theorem s6Step375EarlyControl_sigmaOwned : ([254, 908] : List Wire).toFinset⊆s6Step375EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step375EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375EarlyControl_sigmaReleaseOwned : ([908] : List Wire).toFinset⊆s6Step375EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step375EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375EarlyControl_sigmaRelease : s6Step375EarlyControlHistoryArena.release {908} (fun _ => false)=some s6Step375EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step375EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step375EarlyControlSigmaArena,s6Step375EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step375EarlyControl_sigma : compileHmrSigmaDropLog s6Step375EarlyControlHistoryArena false 0 0 254 908 []=some s6Step375EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step375EarlyControl_sigmaOwned⟩
  · exact s6Step375EarlyControl_sigmaRelease

private theorem s6Step375EarlyControl_zeroBorrow : s6Step375EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step375EarlyControlLog.zeroWork=some s6Step375EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step375EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step375EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step375EarlyControlZeroArena,s6Step375EarlyControlArena,s6Step375EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step375EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step375EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step375EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375EarlyControl_zero : compileHmrEqualityLog s6Step375EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step375EarlyControlLog.zeroWork=some (s6Step375EarlyControlZeroArena,s6Step375EarlyControlLog.zeroWork,s6Step375EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step375EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step375EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step375EarlyControl_logged : s6Step375EarlyControlPlan.Logged s6Step375EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 890 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step375EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step375EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step375EarlyControl_zero
  · exact s6Step375EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step375EarlyControl_flags
  · exact s6Step375EarlyControl_fit
  · exact s6Step375EarlyControl_history
  · exact s6Step375EarlyControl_sigma
  · exact s6Step375EarlyControl_branch

private theorem s6Step375EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step375EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 890 60 s6Step375EarlyControlLog=some s6Step375EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step375EarlyControlPlan s6Step375EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 890 60 s6Step375EarlyControl_logged

private def s6Step375EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩

private def s6Step375EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩

private def s6Step375EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],777⟩

private def s6Step375EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828],775⟩

private def s6Step375FrontBank : WindowBank := ⟨s6Step375EntryFRow,s6Step375EntryGRow,s6Step375EntryFvRow,s6Step375EntryGvRow⟩

private def s6Step375Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 805, 795]

private def s6Step375Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 857, 821, 777]

private def s6Step375Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 796, 776]

private def s6Step375Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 876, 775]

private theorem s6Step375Counter_apart : Disjoint s6Step375HeadFvAfter.live s6Step375CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step375HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375Counter_borrowed : s6Step375HeadFvAfter.checkBorrow 4 s6Step375CounterWork=some s6Step375CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step375HeadFvAfter s6Step375CounterDuring s6Step375CounterWork.toFinset s6Step375Counter_bounded s6Step375Counter_apart rfl

private theorem s6Step375Counter_owned : (908::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step375HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step375HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375Counter_checked : compileHmrCounterStepLog s6Step375HeadFvAfter true 908 [774, 773, 772, 771, 770, 769] s6Step375CounterWork=some s6Step375CounterDuring := by
  have owned : ∀q∈908::[774, 773, 772, 771, 770, 769],q∈s6Step375HeadFvAfter.live := fun q hq => s6Step375Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step375Counter_borrowed

private def s6Step375EntryFAfter : Arena := s6Step375EntryFBefore

private theorem s6Step375EntryBank_incomingDistinct : ([s6Step375EntryFRow,s6Step375EntryGRow,s6Step375EntryFvRow,s6Step375EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375EntryF_Incoming : rowsOwned s6Step375EntryFBefore [s6Step375EntryFRow,s6Step375EntryGRow,s6Step375EntryFvRow,s6Step375EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step375EntryFRow,s6Step375EntryGRow,s6Step375EntryFvRow,s6Step375EntryGvRow] 0 s6Step375EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step375EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step375EntryBank_outgoingOwned : rowsOwned s6Step375EntryGvAfter [s6Step375EntryFOut,s6Step375EntryGOut,s6Step375EntryFvOut,s6Step375EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step375EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step375EntryF_Outgoing : rowsOwned s6Step375EntryGvAfter [s6Step375EntryFOut,s6Step375EntryGOut,s6Step375EntryFvOut,s6Step375EntryGvOut] :=
  hmrRows_owned_drop s6Step375EntryGvAfter [s6Step375EntryFOut,s6Step375EntryGOut,s6Step375EntryFvOut,s6Step375EntryGvOut] 0 s6Step375EntryBank_outgoingOwned

private theorem s6Step375EntryF_distinct : (s6Step375EntryFRow.sign::s6Step375EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375EntryF_owned : (s6Step375EntryFRow.sign::s6Step375EntryFRow.payload).toFinset⊆s6Step375EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step375EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375EntryF_reserved : s6Step375EntryFBefore.reserve s6Step375EntryFFresh.toFinset=some s6Step375EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step375EntryFFresh,arenaWires]
  · norm_num [s6Step375EntryFBefore,s6Step375EntryFFresh,arenaWires]
  · simp only [s6Step375EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step375EntryF_checked : planRowResizeLog s6Step375EntryFBefore s6Step375EntryFRow 85 s6Step375EntryFFresh=
    some (s6Step375EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩,growRow 795 s6Step375EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step375EntryFBefore s6Step375EntryFAfter s6Step375EntryFRow 85 s6Step375EntryFFresh
    s6Step375EntryF_distinct s6Step375EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step375EntryF_reserved
  have rowEq : WindowRow.mk (s6Step375EntryFRow.payload++s6Step375EntryFFresh) s6Step375EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step375EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375EntryFvAfter : Arena := s6Step375EntryGAfter

private def s6Step375EntryFvBefore : Arena := s6Step375EntryGAfter

private theorem s6Step375EntryFv_Incoming : rowsOwned s6Step375EntryFvBefore [s6Step375EntryFvRow,s6Step375EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step375EntryFRow,s6Step375EntryGRow,s6Step375EntryFvRow,s6Step375EntryGvRow] 2 s6Step375EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step375EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step375EntryFv_Outgoing : rowsOwned s6Step375EntryGvAfter [s6Step375EntryFvOut,s6Step375EntryGvOut] :=
  hmrRows_owned_drop s6Step375EntryGvAfter [s6Step375EntryFOut,s6Step375EntryGOut,s6Step375EntryFvOut,s6Step375EntryGvOut] 2 s6Step375EntryBank_outgoingOwned

private theorem s6Step375EntryFv_distinct : (s6Step375EntryFvRow.sign::s6Step375EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375EntryFv_owned : (s6Step375EntryFvRow.sign::s6Step375EntryFvRow.payload).toFinset⊆s6Step375EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step375EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375EntryFv_reserved : s6Step375EntryFvBefore.reserve s6Step375EntryFvFresh.toFinset=some s6Step375EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step375EntryFvFresh,arenaWires]
  · norm_num [s6Step375EntryFvBefore,s6Step375EntryGAfter,s6Step375EntryFvFresh,arenaWires]
  · simp only [s6Step375EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step375EntryFv_checked : planRowResizeLog s6Step375EntryFvBefore s6Step375EntryFvRow 204 s6Step375EntryFvFresh=
    some (s6Step375EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩,growRow 776 s6Step375EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step375EntryFvBefore s6Step375EntryFvAfter s6Step375EntryFvRow 204 s6Step375EntryFvFresh
    s6Step375EntryFv_distinct s6Step375EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step375EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step375EntryFvRow.payload++s6Step375EntryFvFresh) s6Step375EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step375EntryGBefore : Arena := s6Step375EntryFBefore

private theorem s6Step375EntryG_Incoming : rowsOwned s6Step375EntryGBefore [s6Step375EntryGRow,s6Step375EntryFvRow,s6Step375EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step375EntryFRow,s6Step375EntryGRow,s6Step375EntryFvRow,s6Step375EntryGvRow] 1 s6Step375EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step375EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step375EntryG_Outgoing : rowsOwned s6Step375EntryGvAfter [s6Step375EntryGOut,s6Step375EntryFvOut,s6Step375EntryGvOut] :=
  hmrRows_owned_drop s6Step375EntryGvAfter [s6Step375EntryFOut,s6Step375EntryGOut,s6Step375EntryFvOut,s6Step375EntryGvOut] 1 s6Step375EntryBank_outgoingOwned

private theorem s6Step375EntryG_distinct : (s6Step375EntryGRow.sign::s6Step375EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375EntryG_owned : (s6Step375EntryGRow.sign::s6Step375EntryGRow.payload).toFinset⊆s6Step375EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step375EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375EntryG_reserved : s6Step375EntryGBefore.reserve s6Step375EntryGFresh.toFinset=some s6Step375EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step375EntryGFresh,arenaWires]
  · norm_num [s6Step375EntryGBefore,s6Step375EntryFBefore,s6Step375EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step375EntryGAfter,s6Step375EntryGBefore,s6Step375EntryFBefore,s6Step375EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step375EntryG_checked : planRowResizeLog s6Step375EntryGBefore s6Step375EntryGRow 85 s6Step375EntryGFresh=
    some (s6Step375EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 857],777⟩,growRow 777 s6Step375EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step375EntryGBefore s6Step375EntryGAfter s6Step375EntryGRow 85 s6Step375EntryGFresh
    s6Step375EntryG_distinct s6Step375EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step375EntryG_reserved
  have rowEq : WindowRow.mk (s6Step375EntryGRow.payload++s6Step375EntryGFresh) s6Step375EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 857],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step375EntryGvBefore : Arena := s6Step375EntryGAfter

private theorem s6Step375EntryGv_Incoming : rowsOwned s6Step375EntryGvBefore [s6Step375EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step375EntryFRow,s6Step375EntryGRow,s6Step375EntryFvRow,s6Step375EntryGvRow] 3 s6Step375EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step375EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step375EntryGv_Outgoing : rowsOwned s6Step375EntryGvAfter [s6Step375EntryGvOut] :=
  hmrRows_owned_drop s6Step375EntryGvAfter [s6Step375EntryFOut,s6Step375EntryGOut,s6Step375EntryFvOut,s6Step375EntryGvOut] 3 s6Step375EntryBank_outgoingOwned

private theorem s6Step375EntryGv_distinct : (s6Step375EntryGvRow.sign::s6Step375EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375EntryGv_owned : (s6Step375EntryGvRow.sign::s6Step375EntryGvRow.payload).toFinset⊆s6Step375EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step375EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375EntryGv_reserved : s6Step375EntryGvBefore.reserve s6Step375EntryGvFresh.toFinset=some s6Step375EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step375EntryGvFresh,arenaWires]
  · norm_num [s6Step375EntryGvBefore,s6Step375EntryGAfter,s6Step375EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step375EntryGvAfter,s6Step375EntryGvBefore,s6Step375EntryGAfter,s6Step375EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step375EntryGv_checked : planRowResizeLog s6Step375EntryGvBefore s6Step375EntryGvRow 204 s6Step375EntryGvFresh=
    some (s6Step375EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858],775⟩,growRow 775 s6Step375EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step375EntryGvBefore s6Step375EntryGvAfter s6Step375EntryGvRow 204 s6Step375EntryGvFresh
    s6Step375EntryGv_distinct s6Step375EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step375EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step375EntryGvRow.payload++s6Step375EntryGvFresh) s6Step375EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step375EntryBank_rows : planWindowRowsLog s6Step375EntryFBefore [(s6Step375EntryFRow,85),(s6Step375EntryGRow,85),(s6Step375EntryFvRow,204),(s6Step375EntryGvRow,204)] [s6Step375EntryFFresh,s6Step375EntryGFresh,s6Step375EntryFvFresh,s6Step375EntryGvFresh]=
    some (s6Step375EntryGvAfter,[s6Step375EntryFOut,s6Step375EntryGOut,s6Step375EntryFvOut,s6Step375EntryGvOut],(growRow 795 s6Step375EntryFFresh ++ (growRow 777 s6Step375EntryGFresh ++ (growRow 776 s6Step375EntryFvFresh ++ (growRow 775 s6Step375EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step375EntryGvAfter [] []=some (s6Step375EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step375EntryGvBefore s6Step375EntryGvAfter s6Step375EntryGvAfter
    s6Step375EntryGvRow s6Step375EntryGvOut 204 s6Step375EntryGvFresh [] [] []
    (growRow 775 s6Step375EntryGvFresh) ([]) s6Step375EntryGv_Incoming s6Step375EntryGv_checked h4 s6Step375EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step375EntryFvBefore s6Step375EntryFvAfter s6Step375EntryGvAfter
    s6Step375EntryFvRow s6Step375EntryFvOut 204 s6Step375EntryFvFresh [(s6Step375EntryGvRow,204)] [s6Step375EntryGvFresh] [s6Step375EntryGvOut]
    (growRow 776 s6Step375EntryFvFresh) ((growRow 775 s6Step375EntryGvFresh ++ [])) s6Step375EntryFv_Incoming s6Step375EntryFv_checked h3 s6Step375EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step375EntryGBefore s6Step375EntryGAfter s6Step375EntryGvAfter
    s6Step375EntryGRow s6Step375EntryGOut 85 s6Step375EntryGFresh [(s6Step375EntryFvRow,204),(s6Step375EntryGvRow,204)] [s6Step375EntryFvFresh,s6Step375EntryGvFresh] [s6Step375EntryFvOut,s6Step375EntryGvOut]
    (growRow 777 s6Step375EntryGFresh) ((growRow 776 s6Step375EntryFvFresh ++ (growRow 775 s6Step375EntryGvFresh ++ []))) s6Step375EntryG_Incoming s6Step375EntryG_checked h2 s6Step375EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step375EntryFBefore s6Step375EntryFAfter s6Step375EntryGvAfter
    s6Step375EntryFRow s6Step375EntryFOut 85 s6Step375EntryFFresh [(s6Step375EntryGRow,85),(s6Step375EntryFvRow,204),(s6Step375EntryGvRow,204)] [s6Step375EntryGFresh,s6Step375EntryFvFresh,s6Step375EntryGvFresh] [s6Step375EntryGOut,s6Step375EntryFvOut,s6Step375EntryGvOut]
    (growRow 795 s6Step375EntryFFresh) ((growRow 777 s6Step375EntryGFresh ++ (growRow 776 s6Step375EntryFvFresh ++ (growRow 775 s6Step375EntryGvFresh ++ [])))) s6Step375EntryF_Incoming s6Step375EntryF_checked h1 s6Step375EntryF_Outgoing
  exact h0

private theorem s6Step375EntryBank_checked : compileHmrBankResizeLog .entry s6Step375EntryFBefore ⟨s6Step375EntryFRow,s6Step375EntryGRow,s6Step375EntryFvRow,s6Step375EntryGvRow⟩ ⟨85,85,204,204⟩ [s6Step375EntryFFresh,s6Step375EntryGFresh,s6Step375EntryFvFresh,s6Step375EntryGvFresh]=
    some (s6Step375EntryGvAfter,⟨s6Step375EntryFOut,s6Step375EntryGOut,s6Step375EntryFvOut,s6Step375EntryGvOut⟩,(growRow 795 s6Step375EntryFFresh ++ (growRow 777 s6Step375EntryGFresh ++ (growRow 776 s6Step375EntryFvFresh ++ (growRow 775 s6Step375EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step375EntryBank_rows]
  rfl

private def s6Step375ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<340) ∨ (341≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375ExitFBefore : Arena := s6Step375ExitGAfter

private def s6Step375ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 805],795⟩

private def s6Step375ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 796],776⟩

private def s6Step375ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 857, 821],777⟩

private def s6Step375ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 876],775⟩

private theorem s6Step375ExitBank_incomingDistinct : ([s6Step375ExitGRow,s6Step375ExitFRow,s6Step375ExitFvRow,s6Step375ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375ExitF_Incoming : rowsOwned s6Step375ExitFBefore [s6Step375ExitFRow,s6Step375ExitFvRow,s6Step375ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step375ExitGRow,s6Step375ExitFRow,s6Step375ExitFvRow,s6Step375ExitGvRow] 1 s6Step375ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step375ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step375ExitBank_outgoingOwned : rowsOwned s6Step375ExitGvAfter [s6Step375ExitGOut,s6Step375ExitFOut,s6Step375ExitFvOut,s6Step375ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step375ExitGvAfter (fun q => (0≤q ∧ q<340) ∨ (341≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step375ExitF_Outgoing : rowsOwned s6Step375ExitGvAfter [s6Step375ExitFOut,s6Step375ExitFvOut,s6Step375ExitGvOut] :=
  hmrRows_owned_drop s6Step375ExitGvAfter [s6Step375ExitGOut,s6Step375ExitFOut,s6Step375ExitFvOut,s6Step375ExitGvOut] 1 s6Step375ExitBank_outgoingOwned

private theorem s6Step375ExitF_distinct : (s6Step375ExitFRow.sign::s6Step375ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375ExitF_owned : (s6Step375ExitFRow.sign::s6Step375ExitFRow.payload).toFinset⊆s6Step375ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step375ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375ExitF_retired : s6Step375ExitFBefore.retireSet s6Step375ExitFExtra.toFinset=s6Step375ExitFAfter := by
  unfold Arena.retireSet s6Step375ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step375ExitFBefore,s6Step375ExitGAfter,s6Step375ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step375ExitF_checked : planRowResizeLog s6Step375ExitFBefore s6Step375ExitFRow 84 []=
    some (s6Step375ExitFAfter,s6Step375ExitFOut,shrinkRow 795 s6Step375ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step375ExitFBefore s6Step375ExitFRow 84 s6Step375ExitF_distinct s6Step375ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step375ExitFRow.payload.take 84) s6Step375ExitFRow.sign=s6Step375ExitFOut := by decide +kernel
  have hi : s6Step375ExitFRow.payload.drop 84=s6Step375ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step375ExitF_retired] at result
  exact result

private def s6Step375ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<340) ∨ (341≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375ExitFvBefore : Arena := s6Step375ExitFAfter

private theorem s6Step375ExitFv_Incoming : rowsOwned s6Step375ExitFvBefore [s6Step375ExitFvRow,s6Step375ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step375ExitGRow,s6Step375ExitFRow,s6Step375ExitFvRow,s6Step375ExitGvRow] 2 s6Step375ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step375ExitFvBefore (fun q => (0≤q ∧ q<340) ∨ (341≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step375ExitFv_Outgoing : rowsOwned s6Step375ExitGvAfter [s6Step375ExitFvOut,s6Step375ExitGvOut] :=
  hmrRows_owned_drop s6Step375ExitGvAfter [s6Step375ExitGOut,s6Step375ExitFOut,s6Step375ExitFvOut,s6Step375ExitGvOut] 2 s6Step375ExitBank_outgoingOwned

private theorem s6Step375ExitFv_distinct : (s6Step375ExitFvRow.sign::s6Step375ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375ExitFv_owned : (s6Step375ExitFvRow.sign::s6Step375ExitFvRow.payload).toFinset⊆s6Step375ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step375ExitFvBefore (fun q => (0≤q ∧ q<340) ∨ (341≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375ExitFv_retired : s6Step375ExitFvBefore.retireSet s6Step375ExitFvExtra.toFinset=s6Step375ExitFvAfter := by
  unfold Arena.retireSet s6Step375ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step375ExitFvBefore,s6Step375ExitFAfter,s6Step375ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step375ExitFv_checked : planRowResizeLog s6Step375ExitFvBefore s6Step375ExitFvRow 204 []=
    some (s6Step375ExitFvAfter,s6Step375ExitFvOut,shrinkRow 776 s6Step375ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step375ExitFvBefore s6Step375ExitFvRow 204 s6Step375ExitFv_distinct s6Step375ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step375ExitFvRow.payload.take 204) s6Step375ExitFvRow.sign=s6Step375ExitFvOut := by decide +kernel
  have hi : s6Step375ExitFvRow.payload.drop 204=s6Step375ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step375ExitFv_retired] at result
  exact result

private def s6Step375ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step375ExitG_Incoming : rowsOwned s6Step375ExitGBefore [s6Step375ExitGRow,s6Step375ExitFRow,s6Step375ExitFvRow,s6Step375ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step375ExitGRow,s6Step375ExitFRow,s6Step375ExitFvRow,s6Step375ExitGvRow] 0 s6Step375ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step375ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step375ExitG_Outgoing : rowsOwned s6Step375ExitGvAfter [s6Step375ExitGOut,s6Step375ExitFOut,s6Step375ExitFvOut,s6Step375ExitGvOut] :=
  hmrRows_owned_drop s6Step375ExitGvAfter [s6Step375ExitGOut,s6Step375ExitFOut,s6Step375ExitFvOut,s6Step375ExitGvOut] 0 s6Step375ExitBank_outgoingOwned

private theorem s6Step375ExitG_distinct : (s6Step375ExitGRow.sign::s6Step375ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375ExitG_owned : (s6Step375ExitGRow.sign::s6Step375ExitGRow.payload).toFinset⊆s6Step375ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step375ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375ExitG_retired : s6Step375ExitGBefore.retireSet s6Step375ExitGExtra.toFinset=s6Step375ExitGAfter := by
  unfold Arena.retireSet s6Step375ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step375ExitGBefore,s6Step375ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step375ExitG_checked : planRowResizeLog s6Step375ExitGBefore s6Step375ExitGRow 84 []=
    some (s6Step375ExitGAfter,s6Step375ExitGOut,shrinkRow 777 s6Step375ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step375ExitGBefore s6Step375ExitGRow 84 s6Step375ExitG_distinct s6Step375ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step375ExitGRow.payload.take 84) s6Step375ExitGRow.sign=s6Step375ExitGOut := by decide +kernel
  have hi : s6Step375ExitGRow.payload.drop 84=s6Step375ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step375ExitG_retired] at result
  exact result

private def s6Step375ExitGvBefore : Arena := s6Step375ExitFvAfter

private theorem s6Step375ExitGv_Incoming : rowsOwned s6Step375ExitGvBefore [s6Step375ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step375ExitGRow,s6Step375ExitFRow,s6Step375ExitFvRow,s6Step375ExitGvRow] 3 s6Step375ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step375ExitGvBefore (fun q => (0≤q ∧ q<340) ∨ (341≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step375ExitGv_Outgoing : rowsOwned s6Step375ExitGvAfter [s6Step375ExitGvOut] :=
  hmrRows_owned_drop s6Step375ExitGvAfter [s6Step375ExitGOut,s6Step375ExitFOut,s6Step375ExitFvOut,s6Step375ExitGvOut] 3 s6Step375ExitBank_outgoingOwned

private theorem s6Step375ExitGv_distinct : (s6Step375ExitGvRow.sign::s6Step375ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375ExitGv_owned : (s6Step375ExitGvRow.sign::s6Step375ExitGvRow.payload).toFinset⊆s6Step375ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step375ExitGvBefore (fun q => (0≤q ∧ q<340) ∨ (341≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (858≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375ExitGv_retired : s6Step375ExitGvBefore.retireSet s6Step375ExitGvExtra.toFinset=s6Step375ExitGvAfter := by
  unfold Arena.retireSet s6Step375ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step375ExitGvBefore,s6Step375ExitFvAfter,s6Step375ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step375ExitGv_checked : planRowResizeLog s6Step375ExitGvBefore s6Step375ExitGvRow 204 []=
    some (s6Step375ExitGvAfter,s6Step375ExitGvOut,shrinkRow 775 s6Step375ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step375ExitGvBefore s6Step375ExitGvRow 204 s6Step375ExitGv_distinct s6Step375ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step375ExitGvRow.payload.take 204) s6Step375ExitGvRow.sign=s6Step375ExitGvOut := by decide +kernel
  have hi : s6Step375ExitGvRow.payload.drop 204=s6Step375ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step375ExitGv_retired] at result
  exact result

private theorem s6Step375ExitBank_rows : planWindowRowsLog s6Step375ExitGBefore [(s6Step375ExitGRow,84),(s6Step375ExitFRow,84),(s6Step375ExitFvRow,204),(s6Step375ExitGvRow,204)] [[],[],[],[]]=
    some (s6Step375ExitGvAfter,[s6Step375ExitGOut,s6Step375ExitFOut,s6Step375ExitFvOut,s6Step375ExitGvOut],(shrinkRow 777 s6Step375ExitGExtra ++ (shrinkRow 795 s6Step375ExitFExtra ++ (shrinkRow 776 s6Step375ExitFvExtra ++ (shrinkRow 775 s6Step375ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step375ExitGvAfter [] []=some (s6Step375ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step375ExitGvBefore s6Step375ExitGvAfter s6Step375ExitGvAfter
    s6Step375ExitGvRow s6Step375ExitGvOut 204 [] [] [] []
    (shrinkRow 775 s6Step375ExitGvExtra) ([]) s6Step375ExitGv_Incoming s6Step375ExitGv_checked h4 s6Step375ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step375ExitFvBefore s6Step375ExitFvAfter s6Step375ExitGvAfter
    s6Step375ExitFvRow s6Step375ExitFvOut 204 [] [(s6Step375ExitGvRow,204)] [[]] [s6Step375ExitGvOut]
    (shrinkRow 776 s6Step375ExitFvExtra) ((shrinkRow 775 s6Step375ExitGvExtra ++ [])) s6Step375ExitFv_Incoming s6Step375ExitFv_checked h3 s6Step375ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step375ExitFBefore s6Step375ExitFAfter s6Step375ExitGvAfter
    s6Step375ExitFRow s6Step375ExitFOut 84 [] [(s6Step375ExitFvRow,204),(s6Step375ExitGvRow,204)] [[],[]] [s6Step375ExitFvOut,s6Step375ExitGvOut]
    (shrinkRow 795 s6Step375ExitFExtra) ((shrinkRow 776 s6Step375ExitFvExtra ++ (shrinkRow 775 s6Step375ExitGvExtra ++ []))) s6Step375ExitF_Incoming s6Step375ExitF_checked h2 s6Step375ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step375ExitGBefore s6Step375ExitGAfter s6Step375ExitGvAfter
    s6Step375ExitGRow s6Step375ExitGOut 84 [] [(s6Step375ExitFRow,84),(s6Step375ExitFvRow,204),(s6Step375ExitGvRow,204)] [[],[],[]] [s6Step375ExitFOut,s6Step375ExitFvOut,s6Step375ExitGvOut]
    (shrinkRow 777 s6Step375ExitGExtra) ((shrinkRow 795 s6Step375ExitFExtra ++ (shrinkRow 776 s6Step375ExitFvExtra ++ (shrinkRow 775 s6Step375ExitGvExtra ++ [])))) s6Step375ExitG_Incoming s6Step375ExitG_checked h1 s6Step375ExitG_Outgoing
  exact h0

private theorem s6Step375ExitBank_checked : compileHmrBankResizeLog .exit s6Step375ExitGBefore ⟨s6Step375ExitFRow,s6Step375ExitGRow,s6Step375ExitFvRow,s6Step375ExitGvRow⟩ ⟨84,84,204,204⟩ [[],[],[],[]]=
    some (s6Step375ExitGvAfter,⟨s6Step375ExitFOut,s6Step375ExitGOut,s6Step375ExitFvOut,s6Step375ExitGvOut⟩,(shrinkRow 777 s6Step375ExitGExtra ++ (shrinkRow 795 s6Step375ExitFExtra ++ (shrinkRow 776 s6Step375ExitFvExtra ++ (shrinkRow 775 s6Step375ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step375ExitBank_rows]
  rfl

private theorem s6Step375Add0_apart : Disjoint s6Step375Add0Arena.live s6Step375Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step375Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375Add0_card : s6Step375Add0Arena.live.card=912 := by
  decide +kernel

private theorem s6Step375Add0_borrowed : s6Step375Add0Arena.checkBorrow (hmrHybridCount s6Step375Add0Arena s6Step375Add0B.length) s6Step375Add0Work=some s6Step375Add0During := by
  have len : s6Step375Add0Work.length=hmrHybridCount s6Step375Add0Arena s6Step375Add0B.length := by
    rw [hmrHybridCount,s6Step375Add0_card]
    decide +kernel
  have nd : s6Step375Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step375Add0Arena s6Step375Add0During s6Step375Add0Work.toFinset s6Step375Add0_bounded s6Step375Add0_apart rfl

private theorem s6Step375Add0_distinct : (843::890::877::(s6Step375Add0A++s6Step375Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375Add0_owned : (843::890::877::(s6Step375Add0A++s6Step375Add0B)).toFinset⊆s6Step375Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step375Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375Add0_checked : compileHmrHybridCinLog s6Step375Add0Arena 890 843 877 s6Step375Add0A s6Step375Add0B s6Step375Add0Work=some s6Step375Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step375Add0Arena s6Step375Add0During 890 843 877 s6Step375Add0A s6Step375Add0B s6Step375Add0Work
    (by decide +kernel) (by decide +kernel) s6Step375Add0_distinct
    (fun q hq => s6Step375Add0_owned (List.mem_toFinset.mpr hq)) s6Step375Add0_borrowed

private theorem s6Step375Add1_apart : Disjoint s6Step375Add1Arena.live s6Step375Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step375Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375Add1_card : s6Step375Add1Arena.live.card=912 := by
  decide +kernel

private theorem s6Step375Add1_borrowed : s6Step375Add1Arena.checkBorrow (hmrHybridCount s6Step375Add1Arena s6Step375Add1B.length) s6Step375Add1Work=some s6Step375Add1During := by
  have len : s6Step375Add1Work.length=hmrHybridCount s6Step375Add1Arena s6Step375Add1B.length := by
    rw [hmrHybridCount,s6Step375Add1_card]
    decide +kernel
  have nd : s6Step375Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step375Add1Arena s6Step375Add1During s6Step375Add1Work.toFinset s6Step375Add1_bounded s6Step375Add1_apart rfl

private theorem s6Step375Add1_distinct : (843::890::877::(s6Step375Add1A++s6Step375Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375Add1_owned : (843::890::877::(s6Step375Add1A++s6Step375Add1B)).toFinset⊆s6Step375Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step375Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375Add1_checked : compileHmrHybridCinLog s6Step375Add1Arena 890 843 877 s6Step375Add1A s6Step375Add1B s6Step375Add1Work=some s6Step375Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step375Add1Arena s6Step375Add1During 890 843 877 s6Step375Add1A s6Step375Add1B s6Step375Add1Work
    (by decide +kernel) (by decide +kernel) s6Step375Add1_distinct
    (fun q hq => s6Step375Add1_owned (List.mem_toFinset.mpr hq)) s6Step375Add1_borrowed

private theorem s6Step375F4_apart : Disjoint (s6Step375Add0A++s6Step375Add0B).toFinset (s6Step375Add1A++s6Step375Add1B).toFinset := by
  have nd : ((s6Step375Add0A++s6Step375Add0B)++(s6Step375Add1A++s6Step375Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step375F4_carry : s6Step375F4FlagArena.checkBorrow 1 [877]=some s6Step375Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step375F4FlagArena,s6Step375HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step375F4FlagArena,s6Step375HeadFvAfter,s6Step375Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step375F4_distinct : (908::890::843::877::((s6Step375Add0A++s6Step375Add1A)++(s6Step375Add0B++s6Step375Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375F4_flag : s6Step375HeadFvAfter.checkBorrow 1 [843]=some s6Step375F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step375HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step375F4_owned : (908::890::((s6Step375Add0A++s6Step375Add1A)++(s6Step375Add0B++s6Step375Add1B))).toFinset⊆s6Step375HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step375HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375F4_checked : compileHmrHybridF4Log s6Step375HeadFvAfter 908 890 s6Step375Add0A s6Step375Add0B s6Step375Add1A s6Step375Add1B [843] [877] s6Step375Add0Work s6Step375Add1Work=some s6Step375F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step375HeadFvAfter s6Step375F4FlagArena s6Step375Add0Arena s6Step375Add0During s6Step375Add1During 908 890
    s6Step375Add0A s6Step375Add0B s6Step375Add1A s6Step375Add1B [843] [877] s6Step375Add0Work s6Step375Add1Work
    (fun q hq => s6Step375F4_owned (List.mem_toFinset.mpr hq)) s6Step375F4_flag s6Step375F4_carry
    s6Step375F4_distinct s6Step375F4_apart s6Step375Add0_checked s6Step375Add1_checked

private theorem s6Step375Front_branch : s6Step375FrontSigmaArena.checkBorrow 1 [890]=some s6Step375HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step375FrontSigmaArena,s6Step375EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step375FrontSigmaArena,s6Step375EntryGvAfter,s6Step375HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step375Front_entry : HmrFrontEntryValid s6Step375EntryFBefore s6Step375FrontBank 85 204 ⟨84,84,204,204⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step375FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step375EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step375EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<857) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step375FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step375Front_sigma : s6Step375EntryGvAfter.checkBorrow 1 [908]=some s6Step375FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step375EntryGvAfter,arenaWires]
  · rfl

private def s6Step375HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375HeadFBefore : Arena := s6Step375HeadGAfter

private def s6Step375HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340],795⟩

private def s6Step375HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802],776⟩

private def s6Step375HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 857],777⟩

private def s6Step375HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858],775⟩

private theorem s6Step375HeadBank_incomingDistinct : ([s6Step375HeadGRow,s6Step375HeadFRow,s6Step375HeadGvRow,s6Step375HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375HeadF_Incoming : rowsOwned s6Step375HeadFBefore [s6Step375HeadFRow,s6Step375HeadGvRow,s6Step375HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step375HeadGRow,s6Step375HeadFRow,s6Step375HeadGvRow,s6Step375HeadFvRow] 1 s6Step375HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step375HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step375HeadBank_outgoingOwned : rowsOwned s6Step375HeadFvAfter [s6Step375HeadGOut,s6Step375HeadFOut,s6Step375HeadGvOut,s6Step375HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step375HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step375HeadF_Outgoing : rowsOwned s6Step375HeadFvAfter [s6Step375HeadFOut,s6Step375HeadGvOut,s6Step375HeadFvOut] :=
  hmrRows_owned_drop s6Step375HeadFvAfter [s6Step375HeadGOut,s6Step375HeadFOut,s6Step375HeadGvOut,s6Step375HeadFvOut] 1 s6Step375HeadBank_outgoingOwned

private theorem s6Step375HeadF_distinct : (s6Step375HeadFRow.sign::s6Step375HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375HeadF_owned : (s6Step375HeadFRow.sign::s6Step375HeadFRow.payload).toFinset⊆s6Step375HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step375HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375HeadF_reserved : s6Step375HeadFBefore.reserve s6Step375HeadFFresh.toFinset=some s6Step375HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step375HeadFFresh,arenaWires]
  · norm_num [s6Step375HeadFBefore,s6Step375HeadGAfter,s6Step375HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step375HeadFAfter,s6Step375HeadFBefore,s6Step375HeadGAfter,s6Step375HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step375HeadF_checked : planRowResizeLog s6Step375HeadFBefore s6Step375HeadFRow 86 s6Step375HeadFFresh=
    some (s6Step375HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 805],795⟩,growRow 795 s6Step375HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step375HeadFBefore s6Step375HeadFAfter s6Step375HeadFRow 86 s6Step375HeadFFresh
    s6Step375HeadF_distinct s6Step375HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step375HeadF_reserved
  have rowEq : WindowRow.mk (s6Step375HeadFRow.payload++s6Step375HeadFFresh) s6Step375HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 805],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step375HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step375HeadFvBefore : Arena := s6Step375HeadGvAfter

private theorem s6Step375HeadFv_Incoming : rowsOwned s6Step375HeadFvBefore [s6Step375HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step375HeadGRow,s6Step375HeadFRow,s6Step375HeadGvRow,s6Step375HeadFvRow] 3 s6Step375HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step375HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step375HeadFv_Outgoing : rowsOwned s6Step375HeadFvAfter [s6Step375HeadFvOut] :=
  hmrRows_owned_drop s6Step375HeadFvAfter [s6Step375HeadGOut,s6Step375HeadFOut,s6Step375HeadGvOut,s6Step375HeadFvOut] 3 s6Step375HeadBank_outgoingOwned

private theorem s6Step375HeadFv_distinct : (s6Step375HeadFvRow.sign::s6Step375HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375HeadFv_owned : (s6Step375HeadFvRow.sign::s6Step375HeadFvRow.payload).toFinset⊆s6Step375HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step375HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375HeadFv_reserved : s6Step375HeadFvBefore.reserve s6Step375HeadFvFresh.toFinset=some s6Step375HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step375HeadFvFresh,arenaWires]
  · norm_num [s6Step375HeadFvBefore,s6Step375HeadGvAfter,s6Step375HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step375HeadFvAfter,s6Step375HeadFvBefore,s6Step375HeadGvAfter,s6Step375HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step375HeadFv_checked : planRowResizeLog s6Step375HeadFvBefore s6Step375HeadFvRow 205 s6Step375HeadFvFresh=
    some (s6Step375HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 796],776⟩,growRow 776 s6Step375HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step375HeadFvBefore s6Step375HeadFvAfter s6Step375HeadFvRow 205 s6Step375HeadFvFresh
    s6Step375HeadFv_distinct s6Step375HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step375HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step375HeadFvRow.payload++s6Step375HeadFvFresh) s6Step375HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 807, 869, 802, 796],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step375HeadG_Incoming : rowsOwned s6Step375HeadGBefore [s6Step375HeadGRow,s6Step375HeadFRow,s6Step375HeadGvRow,s6Step375HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step375HeadGRow,s6Step375HeadFRow,s6Step375HeadGvRow,s6Step375HeadFvRow] 0 s6Step375HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step375HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step375HeadG_Outgoing : rowsOwned s6Step375HeadFvAfter [s6Step375HeadGOut,s6Step375HeadFOut,s6Step375HeadGvOut,s6Step375HeadFvOut] :=
  hmrRows_owned_drop s6Step375HeadFvAfter [s6Step375HeadGOut,s6Step375HeadFOut,s6Step375HeadGvOut,s6Step375HeadFvOut] 0 s6Step375HeadBank_outgoingOwned

private theorem s6Step375HeadG_distinct : (s6Step375HeadGRow.sign::s6Step375HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375HeadG_owned : (s6Step375HeadGRow.sign::s6Step375HeadGRow.payload).toFinset⊆s6Step375HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step375HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (822≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375HeadG_reserved : s6Step375HeadGBefore.reserve s6Step375HeadGFresh.toFinset=some s6Step375HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step375HeadGFresh,arenaWires]
  · norm_num [s6Step375HeadGBefore,s6Step375HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step375HeadGAfter,s6Step375HeadGBefore,s6Step375HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step375HeadG_checked : planRowResizeLog s6Step375HeadGBefore s6Step375HeadGRow 86 s6Step375HeadGFresh=
    some (s6Step375HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 857, 821],777⟩,growRow 777 s6Step375HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step375HeadGBefore s6Step375HeadGAfter s6Step375HeadGRow 86 s6Step375HeadGFresh
    s6Step375HeadG_distinct s6Step375HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step375HeadG_reserved
  have rowEq : WindowRow.mk (s6Step375HeadGRow.payload++s6Step375HeadGFresh) s6Step375HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 857, 821],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step375HeadGvBefore : Arena := s6Step375HeadFAfter

private theorem s6Step375HeadGv_Incoming : rowsOwned s6Step375HeadGvBefore [s6Step375HeadGvRow,s6Step375HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step375HeadGRow,s6Step375HeadFRow,s6Step375HeadGvRow,s6Step375HeadFvRow] 2 s6Step375HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step375HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step375HeadGv_Outgoing : rowsOwned s6Step375HeadFvAfter [s6Step375HeadGvOut,s6Step375HeadFvOut] :=
  hmrRows_owned_drop s6Step375HeadFvAfter [s6Step375HeadGOut,s6Step375HeadFOut,s6Step375HeadGvOut,s6Step375HeadFvOut] 2 s6Step375HeadBank_outgoingOwned

private theorem s6Step375HeadGv_distinct : (s6Step375HeadGvRow.sign::s6Step375HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step375HeadGv_owned : (s6Step375HeadGvRow.sign::s6Step375HeadGvRow.payload).toFinset⊆s6Step375HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step375HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step375HeadGv_reserved : s6Step375HeadGvBefore.reserve s6Step375HeadGvFresh.toFinset=some s6Step375HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step375HeadGvFresh,arenaWires]
  · norm_num [s6Step375HeadGvBefore,s6Step375HeadFAfter,s6Step375HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step375HeadGvAfter,s6Step375HeadGvBefore,s6Step375HeadFAfter,s6Step375HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step375HeadGv_checked : planRowResizeLog s6Step375HeadGvBefore s6Step375HeadGvRow 205 s6Step375HeadGvFresh=
    some (s6Step375HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 876],775⟩,growRow 775 s6Step375HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step375HeadGvBefore s6Step375HeadGvAfter s6Step375HeadGvRow 205 s6Step375HeadGvFresh
    s6Step375HeadGv_distinct s6Step375HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step375HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step375HeadGvRow.payload++s6Step375HeadGvFresh) s6Step375HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 823, 888, 828, 858, 876],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step375HeadBank_rows : planWindowRowsLog s6Step375HeadGBefore [(s6Step375HeadGRow,86),(s6Step375HeadFRow,86),(s6Step375HeadGvRow,205),(s6Step375HeadFvRow,205)] [s6Step375HeadGFresh,s6Step375HeadFFresh,s6Step375HeadGvFresh,s6Step375HeadFvFresh]=
    some (s6Step375HeadFvAfter,[s6Step375HeadGOut,s6Step375HeadFOut,s6Step375HeadGvOut,s6Step375HeadFvOut],(growRow 777 s6Step375HeadGFresh ++ (growRow 795 s6Step375HeadFFresh ++ (growRow 775 s6Step375HeadGvFresh ++ (growRow 776 s6Step375HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step375HeadFvAfter [] []=some (s6Step375HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step375HeadFvBefore s6Step375HeadFvAfter s6Step375HeadFvAfter
    s6Step375HeadFvRow s6Step375HeadFvOut 205 s6Step375HeadFvFresh [] [] []
    (growRow 776 s6Step375HeadFvFresh) ([]) s6Step375HeadFv_Incoming s6Step375HeadFv_checked h4 s6Step375HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step375HeadGvBefore s6Step375HeadGvAfter s6Step375HeadFvAfter
    s6Step375HeadGvRow s6Step375HeadGvOut 205 s6Step375HeadGvFresh [(s6Step375HeadFvRow,205)] [s6Step375HeadFvFresh] [s6Step375HeadFvOut]
    (growRow 775 s6Step375HeadGvFresh) ((growRow 776 s6Step375HeadFvFresh ++ [])) s6Step375HeadGv_Incoming s6Step375HeadGv_checked h3 s6Step375HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step375HeadFBefore s6Step375HeadFAfter s6Step375HeadFvAfter
    s6Step375HeadFRow s6Step375HeadFOut 86 s6Step375HeadFFresh [(s6Step375HeadGvRow,205),(s6Step375HeadFvRow,205)] [s6Step375HeadGvFresh,s6Step375HeadFvFresh] [s6Step375HeadGvOut,s6Step375HeadFvOut]
    (growRow 795 s6Step375HeadFFresh) ((growRow 775 s6Step375HeadGvFresh ++ (growRow 776 s6Step375HeadFvFresh ++ []))) s6Step375HeadF_Incoming s6Step375HeadF_checked h2 s6Step375HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step375HeadGBefore s6Step375HeadGAfter s6Step375HeadFvAfter
    s6Step375HeadGRow s6Step375HeadGOut 86 s6Step375HeadGFresh [(s6Step375HeadFRow,86),(s6Step375HeadGvRow,205),(s6Step375HeadFvRow,205)] [s6Step375HeadFFresh,s6Step375HeadGvFresh,s6Step375HeadFvFresh] [s6Step375HeadFOut,s6Step375HeadGvOut,s6Step375HeadFvOut]
    (growRow 777 s6Step375HeadGFresh) ((growRow 795 s6Step375HeadFFresh ++ (growRow 775 s6Step375HeadGvFresh ++ (growRow 776 s6Step375HeadFvFresh ++ [])))) s6Step375HeadG_Incoming s6Step375HeadG_checked h1 s6Step375HeadG_Outgoing
  exact h0

private theorem s6Step375HeadBank_checked : compileHmrBankResizeLog .headroom s6Step375HeadGBefore ⟨s6Step375HeadFRow,s6Step375HeadGRow,s6Step375HeadFvRow,s6Step375HeadGvRow⟩ ⟨86,86,205,205⟩ [s6Step375HeadGFresh,s6Step375HeadFFresh,s6Step375HeadGvFresh,s6Step375HeadFvFresh]=
    some (s6Step375HeadFvAfter,⟨s6Step375HeadFOut,s6Step375HeadGOut,s6Step375HeadFvOut,s6Step375HeadGvOut⟩,(growRow 777 s6Step375HeadGFresh ++ (growRow 795 s6Step375HeadFFresh ++ (growRow 775 s6Step375HeadGvFresh ++ (growRow 776 s6Step375HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step375HeadBank_rows]
  rfl

private theorem s6Step375Front_checked : compileHmrSourceFrontLog s6Step375EntryFBefore s6Step375FrontBank 85 204 ⟨84,84,204,204⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step375FrontLog=some s6Step375FrontPlan := by
  have pairEq : s6Step375FrontPair=⟨s6Step375HeadFRow,s6Step375HeadGRow,s6Step375HeadFvRow,s6Step375HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step375FrontHead=⟨s6Step375ExitFRow,s6Step375ExitGRow,s6Step375ExitFvRow,s6Step375ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step375Add0A=s6Step375FrontHead.f.wires := by decide +kernel
  have gEq : s6Step375Add0B=s6Step375FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step375Add1A=s6Step375FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step375Add1B=s6Step375FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step375EntryFBefore s6Step375FrontBank 85 204 ⟨84,84,204,204⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step375FrontLog s6Step375FrontPlan
  · exact s6Step375Front_entry
  · exact s6Step375EntryBank_checked
  · exact s6Step375Front_sigma
  · rfl
  · exact s6Step375Front_branch
  · rfl
  · simpa only [s6Step375FrontPlan,pairEq] using s6Step375HeadBank_checked
  · simpa only [s6Step375FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step375F4_checked
  · exact s6Step375Counter_checked
  · rfl
  · simpa only [s6Step375FrontPlan,headEq] using s6Step375ExitBank_checked

private theorem s6Step375Complete_explicit_checked : compileHmrEarlyStepLog s6Step375EntryFBefore s6Step375FrontBank 85 204 ⟨84,84,204,204⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step375CompleteLog=some s6Step375CompletePlan := by
  let Q := s6Step375EarlyControlPlan
  have hq := s6Step375EarlyControl_plan_checked
  have fv1 : s6Step375CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step375CompleteOut.fv.payload[2]?.getD s6Step375CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step375CompleteOut.fv.payload[3]?.getD s6Step375CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step375CompleteOut.fv.payload[4]?.getD s6Step375CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step375EntryFBefore s6Step375EarlyControlArena s6Step375FrontBank 85 204 ⟨84,84,204,204⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step375CompleteLog s6Step375FrontPlan Q
    s6Step375Front_checked s6Step375Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step375Complete_owned s6Step375Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step375EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 s6Step375CompleteOut.fv.second (s6Step375CompleteOut.fv.payload[2]?.getD s6Step375CompleteOut.fv.sign) (s6Step375CompleteOut.fv.payload[3]?.getD s6Step375CompleteOut.fv.sign) (s6Step375CompleteOut.fv.payload[4]?.getD s6Step375CompleteOut.fv.sign) 890 60 s6Step375EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep375Arena : Arena := s6Step375EntryFBefore
def s6PrivateStep375Bank : WindowBank := s6Step375FrontBank
def s6PrivateStep375Spec : HmrSourceWalkStepLog := ⟨85,204,⟨84,84,204,204⟩,60,.early s6Step375CompleteLog⟩
def s6PrivateStep375Plan : HmrSourceStepPlan := .early s6Step375CompletePlan
theorem s6PrivateStep375_source : s6PrivateStep375Spec=s6ObservedLogs368[7] := rfl
theorem s6PrivateStep375_checked : compileHmrSourceStepLog s6PrivateStep375Arena s6PrivateStep375Bank
    s6PrivateStep375Spec.fgWidth s6PrivateStep375Spec.vWidth s6PrivateStep375Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 375 s6PrivateStep375Spec.need none s6PrivateStep375Spec.log=some s6PrivateStep375Plan := by
  change compileHmrSourceStepLog s6Step375EntryFBefore s6Step375FrontBank 85 204 ⟨84,84,204,204⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 375 60 none (.early s6Step375CompleteLog)=some (.early s6Step375CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 375<498)]
  rw [s6Step375Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
