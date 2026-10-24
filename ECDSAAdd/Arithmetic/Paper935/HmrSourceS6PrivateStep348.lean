import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep346
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

private def s6Step348CompleteMoves : List (Wire × Wire) := [(813,97)]

private def s6Step348EarlyControlLog : HmrEarlyControlLog := ⟨[813, 927, 881, 817, 906],[805],[802],[843, 877, 792, 816, 819, 920],[]⟩

private def s6Step348FrontLog : HmrFrontAllocationLog := ⟨⟨[[881], [], [], []],[[906], [817], [927], [855]],[[], [], [], []]⟩,[873],[809],[805],[802],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877]⟩

private def s6Step348CompleteLog : HmrEarlyStepLog := ⟨s6Step348FrontLog,s6Step348CompleteMoves,s6Step348EarlyControlLog⟩

private def s6Step348ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352],795⟩

private def s6Step348ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩

private def s6Step348ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96],777⟩

private def s6Step348ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩

private def s6Step348FrontOut : WindowBank := ⟨s6Step348ExitFOut,s6Step348ExitGOut,s6Step348ExitFvOut,s6Step348ExitGvOut⟩

private def s6Step348CompleteOut : WindowBank := s6Step348FrontOut.repacked s6Step348CompleteMoves

private def s6Step348EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step348EarlyControlPositiveArena,[805],s6Step348EarlyControlEqualityArena,[802],⟨⟨873,false⟩,[⟨⟨805,false⟩,802⟩]⟩⟩

private def s6Step348EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,813⟩,⟨⟨772,false⟩,927⟩,⟨⟨771,false⟩,881⟩,⟨⟨770,false⟩,817⟩,⟨⟨769,false⟩,906⟩]⟩

private def s6Step348EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step348EarlyControlZeroArena,s6Step348EarlyControlZeroPlan,s6Step348EarlyControlClassPlan,s6Step348EarlyControlFlagArena,s6Step348EarlyControlFittedArena,s6Step348EarlyControlHistoryArena,s6Step348EarlyControlSigmaArena,s6Step348EarlyControlOutputArena,s6Step348EarlyControlLog⟩

private def s6Step348CounterWork : List Wire := [805, 802, 843, 877]

private theorem s6Step348Counter_bounded : s6Step348CounterWork.toFinset⊆arenaWires := by norm_num [s6Step348CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step348HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348CounterDuring : Arena := ⟨s6Step348HeadFvAfter.live∪s6Step348CounterWork.toFinset,Finset.union_subset s6Step348HeadFvAfter.bounded s6Step348Counter_bounded⟩

private def s6Step348EntryFFresh : List Wire := [881]

private def s6Step348EntryFvFresh : List Wire := []

private def s6Step348EntryGFresh : List Wire := []

private def s6Step348EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348EntryGvAfter : Arena := s6Step348EntryFAfter

private def s6Step348EntryGvFresh : List Wire := []

private def s6Step348ExitFExtra : List Wire := [881, 817]

private def s6Step348ExitGExtra : List Wire := [97, 906]

private def s6Step348ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348ExitGvExtra : List Wire := [927]

private def s6Step348Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348Add0Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step348Add0_bounded : s6Step348Add0Work.toFinset⊆arenaWires := by
  have h : s6Step348Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step348Add0During : Arena := ⟨s6Step348Add0Arena.live∪s6Step348Add0Work.toFinset,Finset.union_subset s6Step348Add0Arena.bounded s6Step348Add0_bounded⟩

private def s6Step348Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348Add1Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step348Add1_bounded : s6Step348Add1Work.toFinset⊆arenaWires := by
  have h : s6Step348Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step348Add1During : Arena := ⟨s6Step348Add1Arena.live∪s6Step348Add1Work.toFinset,Finset.union_subset s6Step348Add1Arena.bounded s6Step348Add1_bounded⟩

private def s6Step348F4FlagArena : Arena := ⟨s6Step348HeadFvAfter.live∪{805},Finset.union_subset s6Step348HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step348F4Plan : HmrHybridF4Plan := ⟨s6Step348F4FlagArena,[805],s6Step348Add0Arena,[802],s6Step348Add0During,s6Step348Add0Work,s6Step348Add1During,s6Step348Add1Work⟩

private def s6Step348HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 881, 817],795⟩

private def s6Step348HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩

private def s6Step348HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 906],777⟩

private def s6Step348HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 927],775⟩

private def s6Step348FrontHead : WindowBank := ⟨s6Step348HeadFOut,s6Step348HeadGOut,s6Step348HeadFvOut,s6Step348HeadGvOut⟩

private def s6Step348EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 881],795⟩

private def s6Step348EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856],776⟩

private def s6Step348EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97],777⟩

private def s6Step348EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩

private def s6Step348FrontPair : WindowBank := ⟨s6Step348EntryFOut,s6Step348EntryGOut,s6Step348EntryFvOut,s6Step348EntryGvOut⟩

private def s6Step348FrontSigmaArena : Arena := ⟨s6Step348EntryGvAfter.live∪{873},Finset.union_subset s6Step348EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step348HeadFFresh : List Wire := [817]

private def s6Step348HeadFvFresh : List Wire := [855]

private def s6Step348HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348HeadGFresh : List Wire := [906]

private def s6Step348HeadGvFresh : List Wire := [927]

private def s6Step348FrontPlan : HmrSourceFront := ⟨s6Step348EntryGvAfter,s6Step348FrontPair,(growRow 795 s6Step348EntryFFresh ++ (growRow 777 s6Step348EntryGFresh ++ (growRow 776 s6Step348EntryFvFresh ++ (growRow 775 s6Step348EntryGvFresh ++ [])))),s6Step348FrontSigmaArena,[873],s6Step348HeadGBefore,[809],
  s6Step348HeadFvAfter,s6Step348FrontHead,(growRow 777 s6Step348HeadGFresh ++ (growRow 795 s6Step348HeadFFresh ++ (growRow 775 s6Step348HeadGvFresh ++ (growRow 776 s6Step348HeadFvFresh ++ [])))),s6Step348F4Plan,s6Step348CounterDuring,s6Step348CounterWork,s6Step348ExitGvAfter,s6Step348FrontOut,(shrinkRow 777 s6Step348ExitGExtra ++ (shrinkRow 795 s6Step348ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step348ExitGvExtra ++ []))))⟩

private def s6Step348CompletePlan : HmrEarlyStepPlan := ⟨s6Step348FrontPlan,s6Step348EarlyControlArena,s6Step348EarlyControlPlan,s6Step348CompleteMoves⟩

private theorem s6Step348Complete_apart : List.Disjoint (s6Step348CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [873, 809, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step348CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[873, 809, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step348Complete_owned : (s6Step348CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step348EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step348EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step348CompleteMoveArena : Arena := ⟨s6Step348ExitGvAfter.live∪{97},Finset.union_subset s6Step348ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step348Complete_repack : s6Step348ExitGvAfter.checkRepack s6Step348CompleteMoves=some s6Step348EarlyControlArena := by
  have owned : 813∈s6Step348ExitGvAfter.live := by norm_num [s6Step348ExitGvAfter,arenaWires]
  have reserve : s6Step348ExitGvAfter.reserve {97}=some s6Step348CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step348ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step348CompleteMoveArena.retireSet {813}=s6Step348EarlyControlArena := by
    unfold Arena.retireSet s6Step348EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step348CompleteMoveArena,s6Step348ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step348CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step348CompleteMoveArena.retireSet {813}).checkRepack []=some s6Step348EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step348EarlyControl_branchOwned : ([809] : List Wire).toFinset⊆s6Step348EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step348EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348EarlyControl_branch : compileHmrBranchRetirement s6Step348EarlyControlSigmaArena 809=some s6Step348EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step348EarlyControl_branchOwned
  · ext q
    simp [s6Step348EarlyControlOutputArena,s6Step348EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step348EarlyControl_classEqualityBorrow : s6Step348EarlyControlPositiveArena.checkBorrow (([873, 805] : List Wire).length-1) s6Step348EarlyControlLog.classWork=some s6Step348EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step348EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step348EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step348EarlyControlEqualityArena,s6Step348EarlyControlPositiveArena,s6Step348EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step348EarlyControl_classEqualityOwned : ([873, 805] : List Wire).toFinset⊆s6Step348EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step348EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348EarlyControl_classEquality : compileHmrEqualityLog s6Step348EarlyControlPositiveArena [873, 805] 0 s6Step348EarlyControlLog.classWork=some (s6Step348EarlyControlEqualityArena,s6Step348EarlyControlLog.classWork,s6Step348EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step348EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step348EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step348EarlyControl_classOwned : ([769, 906, 873] : List Wire).toFinset⊆s6Step348EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step348EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348EarlyControl_positiveBorrow : s6Step348EarlyControlZeroArena.checkBorrow (1) s6Step348EarlyControlLog.positiveWork=some s6Step348EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step348EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step348EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step348EarlyControlPositiveArena,s6Step348EarlyControlZeroArena,s6Step348EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step348EarlyControl_class : compileHmrSourceClassLog s6Step348EarlyControlZeroArena false 769 s6Step348EarlyControlZeroPlan.top 0 873 s6Step348EarlyControlLog.positiveWork s6Step348EarlyControlLog.classWork=some s6Step348EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step348EarlyControlClassPlan s6Step348EarlyControlZeroArena false 769 s6Step348EarlyControlZeroPlan.top 0 873
  constructor
  · decide +kernel
  · exact s6Step348EarlyControl_classOwned
  · exact s6Step348EarlyControl_positiveBorrow
  · exact s6Step348EarlyControl_classEquality

private theorem s6Step348EarlyControl_entryRecordOwned : ([809, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step348EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step348EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348EarlyControl_entrySigmaOwned : ([873, 254] : List Wire).toFinset⊆s6Step348EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step348EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348EarlyControl_fitBorrow : s6Step348EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step348EarlyControlLog.recordFresh=some s6Step348EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step348EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step348EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step348EarlyControlFittedArena,s6Step348EarlyControlFlagArena,s6Step348EarlyControlLog,arenaWires]

private theorem s6Step348EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step348EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step348EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348EarlyControl_fit : compileHmrRecordGrowLog s6Step348EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step348EarlyControlLog.recordFresh=some s6Step348EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step348EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step348EarlyControl_fitBorrow

private theorem s6Step348EarlyControl_flagsBorrow : s6Step348EarlyControlEqualityArena.checkBorrow (6) s6Step348EarlyControlLog.flagWork=some s6Step348EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step348EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step348EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step348EarlyControlFlagArena,s6Step348EarlyControlEqualityArena,s6Step348EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step348EarlyControl_flagsOwned : ([802, 253, 252, 251] : List Wire).toFinset⊆s6Step348EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step348EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348EarlyControl_flags : compileHmrFlagsLog s6Step348EarlyControlClassPlan.equalityArena s6Step348EarlyControlClassPlan.equality.top 253 252 251 s6Step348EarlyControlLog.flagWork=some s6Step348EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step348EarlyControl_flagsOwned⟩
  · exact s6Step348EarlyControl_flagsBorrow

private theorem s6Step348EarlyControl_historyBorrow : s6Step348EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step348EarlyControlLog.recordFresh=some s6Step348EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step348EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step348EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step348EarlyControlHistoryArena,s6Step348EarlyControlArena,s6Step348EarlyControlLog,arenaWires]

private theorem s6Step348EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step348EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step348EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348EarlyControl_history : compileHmrRecordGrowLog s6Step348EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step348EarlyControlLog.recordFresh=some s6Step348EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step348EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step348EarlyControl_historyBorrow

private theorem s6Step348EarlyControl_sigmaOwned : ([254, 873] : List Wire).toFinset⊆s6Step348EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step348EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348EarlyControl_sigmaReleaseOwned : ([873] : List Wire).toFinset⊆s6Step348EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step348EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348EarlyControl_sigmaRelease : s6Step348EarlyControlHistoryArena.release {873} (fun _ => false)=some s6Step348EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step348EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step348EarlyControlSigmaArena,s6Step348EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step348EarlyControl_sigma : compileHmrSigmaDropLog s6Step348EarlyControlHistoryArena false 0 0 254 873 []=some s6Step348EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step348EarlyControl_sigmaOwned⟩
  · exact s6Step348EarlyControl_sigmaRelease

private theorem s6Step348EarlyControl_zeroBorrow : s6Step348EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step348EarlyControlLog.zeroWork=some s6Step348EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step348EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step348EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step348EarlyControlZeroArena,s6Step348EarlyControlArena,s6Step348EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step348EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step348EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step348EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<813) ∨ (814≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348EarlyControl_zero : compileHmrEqualityLog s6Step348EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step348EarlyControlLog.zeroWork=some (s6Step348EarlyControlZeroArena,s6Step348EarlyControlLog.zeroWork,s6Step348EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step348EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step348EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step348EarlyControl_logged : s6Step348EarlyControlPlan.Logged s6Step348EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 873 254 253 252 251 809 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step348EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step348EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step348EarlyControl_zero
  · exact s6Step348EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step348EarlyControl_flags
  · exact s6Step348EarlyControl_fit
  · exact s6Step348EarlyControl_history
  · exact s6Step348EarlyControl_sigma
  · exact s6Step348EarlyControl_branch

private theorem s6Step348EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step348EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 873 254 253 252 251 809 60 s6Step348EarlyControlLog=some s6Step348EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step348EarlyControlPlan s6Step348EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 873 254 253 252 251 809 60 s6Step348EarlyControl_logged

private def s6Step348EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352],795⟩

private def s6Step348EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856],776⟩

private def s6Step348EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97],777⟩

private def s6Step348EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩

private def s6Step348FrontBank : WindowBank := ⟨s6Step348EntryFRow,s6Step348EntryGRow,s6Step348EntryFvRow,s6Step348EntryGvRow⟩

private def s6Step348Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 881, 817, 795]

private def s6Step348Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 906, 777]

private def s6Step348Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 776]

private def s6Step348Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 927, 775]

private theorem s6Step348Counter_apart : Disjoint s6Step348HeadFvAfter.live s6Step348CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step348HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348Counter_borrowed : s6Step348HeadFvAfter.checkBorrow 4 s6Step348CounterWork=some s6Step348CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step348HeadFvAfter s6Step348CounterDuring s6Step348CounterWork.toFinset s6Step348Counter_bounded s6Step348Counter_apart rfl

private theorem s6Step348Counter_owned : (873::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step348HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step348HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348Counter_checked : compileHmrCounterStepLog s6Step348HeadFvAfter true 873 [774, 773, 772, 771, 770, 769] s6Step348CounterWork=some s6Step348CounterDuring := by
  have owned : ∀q∈873::[774, 773, 772, 771, 770, 769],q∈s6Step348HeadFvAfter.live := fun q hq => s6Step348Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step348Counter_borrowed

private theorem s6Step348EntryBank_incomingDistinct : ([s6Step348EntryFRow,s6Step348EntryGRow,s6Step348EntryFvRow,s6Step348EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348EntryF_Incoming : rowsOwned s6Step348EntryFBefore [s6Step348EntryFRow,s6Step348EntryGRow,s6Step348EntryFvRow,s6Step348EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step348EntryFRow,s6Step348EntryGRow,s6Step348EntryFvRow,s6Step348EntryGvRow] 0 s6Step348EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step348EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step348EntryBank_outgoingOwned : rowsOwned s6Step348EntryGvAfter [s6Step348EntryFOut,s6Step348EntryGOut,s6Step348EntryFvOut,s6Step348EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step348EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step348EntryF_Outgoing : rowsOwned s6Step348EntryGvAfter [s6Step348EntryFOut,s6Step348EntryGOut,s6Step348EntryFvOut,s6Step348EntryGvOut] :=
  hmrRows_owned_drop s6Step348EntryGvAfter [s6Step348EntryFOut,s6Step348EntryGOut,s6Step348EntryFvOut,s6Step348EntryGvOut] 0 s6Step348EntryBank_outgoingOwned

private theorem s6Step348EntryF_distinct : (s6Step348EntryFRow.sign::s6Step348EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348EntryF_owned : (s6Step348EntryFRow.sign::s6Step348EntryFRow.payload).toFinset⊆s6Step348EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step348EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348EntryF_reserved : s6Step348EntryFBefore.reserve s6Step348EntryFFresh.toFinset=some s6Step348EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step348EntryFFresh,arenaWires]
  · norm_num [s6Step348EntryFBefore,s6Step348EntryFFresh,arenaWires]
  · ext q
    simp only [s6Step348EntryFAfter,s6Step348EntryFBefore,s6Step348EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step348EntryF_checked : planRowResizeLog s6Step348EntryFBefore s6Step348EntryFRow 98 s6Step348EntryFFresh=
    some (s6Step348EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 881],795⟩,growRow 795 s6Step348EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step348EntryFBefore s6Step348EntryFAfter s6Step348EntryFRow 98 s6Step348EntryFFresh
    s6Step348EntryF_distinct s6Step348EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step348EntryF_reserved
  have rowEq : WindowRow.mk (s6Step348EntryFRow.payload++s6Step348EntryFFresh) s6Step348EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 881],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step348EntryFvAfter : Arena := s6Step348EntryFAfter

private def s6Step348EntryFvBefore : Arena := s6Step348EntryFAfter

private theorem s6Step348EntryFv_Incoming : rowsOwned s6Step348EntryFvBefore [s6Step348EntryFvRow,s6Step348EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step348EntryFRow,s6Step348EntryGRow,s6Step348EntryFvRow,s6Step348EntryGvRow] 2 s6Step348EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step348EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step348EntryFv_Outgoing : rowsOwned s6Step348EntryGvAfter [s6Step348EntryFvOut,s6Step348EntryGvOut] :=
  hmrRows_owned_drop s6Step348EntryGvAfter [s6Step348EntryFOut,s6Step348EntryGOut,s6Step348EntryFvOut,s6Step348EntryGvOut] 2 s6Step348EntryBank_outgoingOwned

private theorem s6Step348EntryFv_distinct : (s6Step348EntryFvRow.sign::s6Step348EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348EntryFv_owned : (s6Step348EntryFvRow.sign::s6Step348EntryFvRow.payload).toFinset⊆s6Step348EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step348EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348EntryFv_reserved : s6Step348EntryFvBefore.reserve s6Step348EntryFvFresh.toFinset=some s6Step348EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step348EntryFvFresh,arenaWires]
  · norm_num [s6Step348EntryFvBefore,s6Step348EntryFAfter,s6Step348EntryFvFresh,arenaWires]
  · simp only [s6Step348EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step348EntryFv_checked : planRowResizeLog s6Step348EntryFvBefore s6Step348EntryFvRow 190 s6Step348EntryFvFresh=
    some (s6Step348EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856],776⟩,growRow 776 s6Step348EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step348EntryFvBefore s6Step348EntryFvAfter s6Step348EntryFvRow 190 s6Step348EntryFvFresh
    s6Step348EntryFv_distinct s6Step348EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step348EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step348EntryFvRow.payload++s6Step348EntryFvFresh) s6Step348EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step348EntryGAfter : Arena := s6Step348EntryFAfter

private def s6Step348EntryGBefore : Arena := s6Step348EntryFAfter

private theorem s6Step348EntryG_Incoming : rowsOwned s6Step348EntryGBefore [s6Step348EntryGRow,s6Step348EntryFvRow,s6Step348EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step348EntryFRow,s6Step348EntryGRow,s6Step348EntryFvRow,s6Step348EntryGvRow] 1 s6Step348EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step348EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step348EntryG_Outgoing : rowsOwned s6Step348EntryGvAfter [s6Step348EntryGOut,s6Step348EntryFvOut,s6Step348EntryGvOut] :=
  hmrRows_owned_drop s6Step348EntryGvAfter [s6Step348EntryFOut,s6Step348EntryGOut,s6Step348EntryFvOut,s6Step348EntryGvOut] 1 s6Step348EntryBank_outgoingOwned

private theorem s6Step348EntryG_distinct : (s6Step348EntryGRow.sign::s6Step348EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348EntryG_owned : (s6Step348EntryGRow.sign::s6Step348EntryGRow.payload).toFinset⊆s6Step348EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step348EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348EntryG_reserved : s6Step348EntryGBefore.reserve s6Step348EntryGFresh.toFinset=some s6Step348EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step348EntryGFresh,arenaWires]
  · norm_num [s6Step348EntryGBefore,s6Step348EntryFAfter,s6Step348EntryGFresh,arenaWires]
  · simp only [s6Step348EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step348EntryG_checked : planRowResizeLog s6Step348EntryGBefore s6Step348EntryGRow 98 s6Step348EntryGFresh=
    some (s6Step348EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97],777⟩,growRow 777 s6Step348EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step348EntryGBefore s6Step348EntryGAfter s6Step348EntryGRow 98 s6Step348EntryGFresh
    s6Step348EntryG_distinct s6Step348EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step348EntryG_reserved
  have rowEq : WindowRow.mk (s6Step348EntryGRow.payload++s6Step348EntryGFresh) s6Step348EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step348EntryGvBefore : Arena := s6Step348EntryFAfter

private theorem s6Step348EntryGv_Incoming : rowsOwned s6Step348EntryGvBefore [s6Step348EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step348EntryFRow,s6Step348EntryGRow,s6Step348EntryFvRow,s6Step348EntryGvRow] 3 s6Step348EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step348EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step348EntryGv_Outgoing : rowsOwned s6Step348EntryGvAfter [s6Step348EntryGvOut] :=
  hmrRows_owned_drop s6Step348EntryGvAfter [s6Step348EntryFOut,s6Step348EntryGOut,s6Step348EntryFvOut,s6Step348EntryGvOut] 3 s6Step348EntryBank_outgoingOwned

private theorem s6Step348EntryGv_distinct : (s6Step348EntryGvRow.sign::s6Step348EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348EntryGv_owned : (s6Step348EntryGvRow.sign::s6Step348EntryGvRow.payload).toFinset⊆s6Step348EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step348EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348EntryGv_reserved : s6Step348EntryGvBefore.reserve s6Step348EntryGvFresh.toFinset=some s6Step348EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step348EntryGvFresh,arenaWires]
  · norm_num [s6Step348EntryGvBefore,s6Step348EntryFAfter,s6Step348EntryGvFresh,arenaWires]
  · simp only [s6Step348EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step348EntryGv_checked : planRowResizeLog s6Step348EntryGvBefore s6Step348EntryGvRow 190 s6Step348EntryGvFresh=
    some (s6Step348EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩,growRow 775 s6Step348EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step348EntryGvBefore s6Step348EntryGvAfter s6Step348EntryGvRow 190 s6Step348EntryGvFresh
    s6Step348EntryGv_distinct s6Step348EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step348EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step348EntryGvRow.payload++s6Step348EntryGvFresh) s6Step348EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step348EntryBank_rows : planWindowRowsLog s6Step348EntryFBefore [(s6Step348EntryFRow,98),(s6Step348EntryGRow,98),(s6Step348EntryFvRow,190),(s6Step348EntryGvRow,190)] [s6Step348EntryFFresh,s6Step348EntryGFresh,s6Step348EntryFvFresh,s6Step348EntryGvFresh]=
    some (s6Step348EntryGvAfter,[s6Step348EntryFOut,s6Step348EntryGOut,s6Step348EntryFvOut,s6Step348EntryGvOut],(growRow 795 s6Step348EntryFFresh ++ (growRow 777 s6Step348EntryGFresh ++ (growRow 776 s6Step348EntryFvFresh ++ (growRow 775 s6Step348EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step348EntryGvAfter [] []=some (s6Step348EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step348EntryGvBefore s6Step348EntryGvAfter s6Step348EntryGvAfter
    s6Step348EntryGvRow s6Step348EntryGvOut 190 s6Step348EntryGvFresh [] [] []
    (growRow 775 s6Step348EntryGvFresh) ([]) s6Step348EntryGv_Incoming s6Step348EntryGv_checked h4 s6Step348EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step348EntryFvBefore s6Step348EntryFvAfter s6Step348EntryGvAfter
    s6Step348EntryFvRow s6Step348EntryFvOut 190 s6Step348EntryFvFresh [(s6Step348EntryGvRow,190)] [s6Step348EntryGvFresh] [s6Step348EntryGvOut]
    (growRow 776 s6Step348EntryFvFresh) ((growRow 775 s6Step348EntryGvFresh ++ [])) s6Step348EntryFv_Incoming s6Step348EntryFv_checked h3 s6Step348EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step348EntryGBefore s6Step348EntryGAfter s6Step348EntryGvAfter
    s6Step348EntryGRow s6Step348EntryGOut 98 s6Step348EntryGFresh [(s6Step348EntryFvRow,190),(s6Step348EntryGvRow,190)] [s6Step348EntryFvFresh,s6Step348EntryGvFresh] [s6Step348EntryFvOut,s6Step348EntryGvOut]
    (growRow 777 s6Step348EntryGFresh) ((growRow 776 s6Step348EntryFvFresh ++ (growRow 775 s6Step348EntryGvFresh ++ []))) s6Step348EntryG_Incoming s6Step348EntryG_checked h2 s6Step348EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step348EntryFBefore s6Step348EntryFAfter s6Step348EntryGvAfter
    s6Step348EntryFRow s6Step348EntryFOut 98 s6Step348EntryFFresh [(s6Step348EntryGRow,98),(s6Step348EntryFvRow,190),(s6Step348EntryGvRow,190)] [s6Step348EntryGFresh,s6Step348EntryFvFresh,s6Step348EntryGvFresh] [s6Step348EntryGOut,s6Step348EntryFvOut,s6Step348EntryGvOut]
    (growRow 795 s6Step348EntryFFresh) ((growRow 777 s6Step348EntryGFresh ++ (growRow 776 s6Step348EntryFvFresh ++ (growRow 775 s6Step348EntryGvFresh ++ [])))) s6Step348EntryF_Incoming s6Step348EntryF_checked h1 s6Step348EntryF_Outgoing
  exact h0

private theorem s6Step348EntryBank_checked : compileHmrBankResizeLog .entry s6Step348EntryFBefore ⟨s6Step348EntryFRow,s6Step348EntryGRow,s6Step348EntryFvRow,s6Step348EntryGvRow⟩ ⟨98,98,190,190⟩ [s6Step348EntryFFresh,s6Step348EntryGFresh,s6Step348EntryFvFresh,s6Step348EntryGvFresh]=
    some (s6Step348EntryGvAfter,⟨s6Step348EntryFOut,s6Step348EntryGOut,s6Step348EntryFvOut,s6Step348EntryGvOut⟩,(growRow 795 s6Step348EntryFFresh ++ (growRow 777 s6Step348EntryGFresh ++ (growRow 776 s6Step348EntryFvFresh ++ (growRow 775 s6Step348EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step348EntryBank_rows]
  rfl

private def s6Step348ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348ExitFBefore : Arena := s6Step348ExitGAfter

private def s6Step348ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 881, 817],795⟩

private def s6Step348ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩

private def s6Step348ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 906],777⟩

private def s6Step348ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 927],775⟩

private theorem s6Step348ExitBank_incomingDistinct : ([s6Step348ExitGRow,s6Step348ExitFRow,s6Step348ExitFvRow,s6Step348ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348ExitF_Incoming : rowsOwned s6Step348ExitFBefore [s6Step348ExitFRow,s6Step348ExitFvRow,s6Step348ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step348ExitGRow,s6Step348ExitFRow,s6Step348ExitFvRow,s6Step348ExitGvRow] 1 s6Step348ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step348ExitFBefore (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step348ExitBank_outgoingOwned : rowsOwned s6Step348ExitGvAfter [s6Step348ExitGOut,s6Step348ExitFOut,s6Step348ExitFvOut,s6Step348ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step348ExitGvAfter (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step348ExitF_Outgoing : rowsOwned s6Step348ExitGvAfter [s6Step348ExitFOut,s6Step348ExitFvOut,s6Step348ExitGvOut] :=
  hmrRows_owned_drop s6Step348ExitGvAfter [s6Step348ExitGOut,s6Step348ExitFOut,s6Step348ExitFvOut,s6Step348ExitGvOut] 1 s6Step348ExitBank_outgoingOwned

private theorem s6Step348ExitF_distinct : (s6Step348ExitFRow.sign::s6Step348ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348ExitF_owned : (s6Step348ExitFRow.sign::s6Step348ExitFRow.payload).toFinset⊆s6Step348ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step348ExitFBefore (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348ExitF_retired : s6Step348ExitFBefore.retireSet s6Step348ExitFExtra.toFinset=s6Step348ExitFAfter := by
  unfold Arena.retireSet s6Step348ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step348ExitFBefore,s6Step348ExitGAfter,s6Step348ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step348ExitF_checked : planRowResizeLog s6Step348ExitFBefore s6Step348ExitFRow 97 []=
    some (s6Step348ExitFAfter,s6Step348ExitFOut,shrinkRow 795 s6Step348ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step348ExitFBefore s6Step348ExitFRow 97 s6Step348ExitF_distinct s6Step348ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step348ExitFRow.payload.take 97) s6Step348ExitFRow.sign=s6Step348ExitFOut := by decide +kernel
  have hi : s6Step348ExitFRow.payload.drop 97=s6Step348ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step348ExitF_retired] at result
  exact result

private def s6Step348ExitFvAfter : Arena := s6Step348ExitFAfter

private def s6Step348ExitFvBefore : Arena := s6Step348ExitFAfter

private theorem s6Step348ExitFv_Incoming : rowsOwned s6Step348ExitFvBefore [s6Step348ExitFvRow,s6Step348ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step348ExitGRow,s6Step348ExitFRow,s6Step348ExitFvRow,s6Step348ExitGvRow] 2 s6Step348ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step348ExitFvBefore (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step348ExitFv_Outgoing : rowsOwned s6Step348ExitGvAfter [s6Step348ExitFvOut,s6Step348ExitGvOut] :=
  hmrRows_owned_drop s6Step348ExitGvAfter [s6Step348ExitGOut,s6Step348ExitFOut,s6Step348ExitFvOut,s6Step348ExitGvOut] 2 s6Step348ExitBank_outgoingOwned

private theorem s6Step348ExitFv_distinct : (s6Step348ExitFvRow.sign::s6Step348ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348ExitFv_owned : (s6Step348ExitFvRow.sign::s6Step348ExitFvRow.payload).toFinset⊆s6Step348ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step348ExitFvBefore (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348ExitFv_reserved : s6Step348ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step348ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step348ExitFv_checked : planRowResizeLog s6Step348ExitFvBefore s6Step348ExitFvRow 191 []=
    some (s6Step348ExitFvAfter,s6Step348ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step348ExitFvBefore s6Step348ExitFvAfter s6Step348ExitFvRow 191 []
    s6Step348ExitFv_distinct s6Step348ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step348ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step348ExitFvRow.payload++[]) s6Step348ExitFvRow.sign=s6Step348ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step348ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step348ExitG_Incoming : rowsOwned s6Step348ExitGBefore [s6Step348ExitGRow,s6Step348ExitFRow,s6Step348ExitFvRow,s6Step348ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step348ExitGRow,s6Step348ExitFRow,s6Step348ExitFvRow,s6Step348ExitGvRow] 0 s6Step348ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step348ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step348ExitG_Outgoing : rowsOwned s6Step348ExitGvAfter [s6Step348ExitGOut,s6Step348ExitFOut,s6Step348ExitFvOut,s6Step348ExitGvOut] :=
  hmrRows_owned_drop s6Step348ExitGvAfter [s6Step348ExitGOut,s6Step348ExitFOut,s6Step348ExitFvOut,s6Step348ExitGvOut] 0 s6Step348ExitBank_outgoingOwned

private theorem s6Step348ExitG_distinct : (s6Step348ExitGRow.sign::s6Step348ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348ExitG_owned : (s6Step348ExitGRow.sign::s6Step348ExitGRow.payload).toFinset⊆s6Step348ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step348ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348ExitG_retired : s6Step348ExitGBefore.retireSet s6Step348ExitGExtra.toFinset=s6Step348ExitGAfter := by
  unfold Arena.retireSet s6Step348ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step348ExitGBefore,s6Step348ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step348ExitG_checked : planRowResizeLog s6Step348ExitGBefore s6Step348ExitGRow 97 []=
    some (s6Step348ExitGAfter,s6Step348ExitGOut,shrinkRow 777 s6Step348ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step348ExitGBefore s6Step348ExitGRow 97 s6Step348ExitG_distinct s6Step348ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step348ExitGRow.payload.take 97) s6Step348ExitGRow.sign=s6Step348ExitGOut := by decide +kernel
  have hi : s6Step348ExitGRow.payload.drop 97=s6Step348ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step348ExitG_retired] at result
  exact result

private def s6Step348ExitGvBefore : Arena := s6Step348ExitFAfter

private theorem s6Step348ExitGv_Incoming : rowsOwned s6Step348ExitGvBefore [s6Step348ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step348ExitGRow,s6Step348ExitFRow,s6Step348ExitFvRow,s6Step348ExitGvRow] 3 s6Step348ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step348ExitGvBefore (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step348ExitGv_Outgoing : rowsOwned s6Step348ExitGvAfter [s6Step348ExitGvOut] :=
  hmrRows_owned_drop s6Step348ExitGvAfter [s6Step348ExitGOut,s6Step348ExitFOut,s6Step348ExitFvOut,s6Step348ExitGvOut] 3 s6Step348ExitBank_outgoingOwned

private theorem s6Step348ExitGv_distinct : (s6Step348ExitGvRow.sign::s6Step348ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348ExitGv_owned : (s6Step348ExitGvRow.sign::s6Step348ExitGvRow.payload).toFinset⊆s6Step348ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step348ExitGvBefore (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348ExitGv_retired : s6Step348ExitGvBefore.retireSet s6Step348ExitGvExtra.toFinset=s6Step348ExitGvAfter := by
  unfold Arena.retireSet s6Step348ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step348ExitGvBefore,s6Step348ExitFAfter,s6Step348ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step348ExitGv_checked : planRowResizeLog s6Step348ExitGvBefore s6Step348ExitGvRow 190 []=
    some (s6Step348ExitGvAfter,s6Step348ExitGvOut,shrinkRow 775 s6Step348ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step348ExitGvBefore s6Step348ExitGvRow 190 s6Step348ExitGv_distinct s6Step348ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step348ExitGvRow.payload.take 190) s6Step348ExitGvRow.sign=s6Step348ExitGvOut := by decide +kernel
  have hi : s6Step348ExitGvRow.payload.drop 190=s6Step348ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step348ExitGv_retired] at result
  exact result

private theorem s6Step348ExitBank_rows : planWindowRowsLog s6Step348ExitGBefore [(s6Step348ExitGRow,97),(s6Step348ExitFRow,97),(s6Step348ExitFvRow,191),(s6Step348ExitGvRow,190)] [[],[],[],[]]=
    some (s6Step348ExitGvAfter,[s6Step348ExitGOut,s6Step348ExitFOut,s6Step348ExitFvOut,s6Step348ExitGvOut],(shrinkRow 777 s6Step348ExitGExtra ++ (shrinkRow 795 s6Step348ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step348ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step348ExitGvAfter [] []=some (s6Step348ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step348ExitGvBefore s6Step348ExitGvAfter s6Step348ExitGvAfter
    s6Step348ExitGvRow s6Step348ExitGvOut 190 [] [] [] []
    (shrinkRow 775 s6Step348ExitGvExtra) ([]) s6Step348ExitGv_Incoming s6Step348ExitGv_checked h4 s6Step348ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step348ExitFvBefore s6Step348ExitFvAfter s6Step348ExitGvAfter
    s6Step348ExitFvRow s6Step348ExitFvOut 191 [] [(s6Step348ExitGvRow,190)] [[]] [s6Step348ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step348ExitGvExtra ++ [])) s6Step348ExitFv_Incoming s6Step348ExitFv_checked h3 s6Step348ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step348ExitFBefore s6Step348ExitFAfter s6Step348ExitGvAfter
    s6Step348ExitFRow s6Step348ExitFOut 97 [] [(s6Step348ExitFvRow,191),(s6Step348ExitGvRow,190)] [[],[]] [s6Step348ExitFvOut,s6Step348ExitGvOut]
    (shrinkRow 795 s6Step348ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step348ExitGvExtra ++ []))) s6Step348ExitF_Incoming s6Step348ExitF_checked h2 s6Step348ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step348ExitGBefore s6Step348ExitGAfter s6Step348ExitGvAfter
    s6Step348ExitGRow s6Step348ExitGOut 97 [] [(s6Step348ExitFRow,97),(s6Step348ExitFvRow,191),(s6Step348ExitGvRow,190)] [[],[],[]] [s6Step348ExitFOut,s6Step348ExitFvOut,s6Step348ExitGvOut]
    (shrinkRow 777 s6Step348ExitGExtra) ((shrinkRow 795 s6Step348ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step348ExitGvExtra ++ [])))) s6Step348ExitG_Incoming s6Step348ExitG_checked h1 s6Step348ExitG_Outgoing
  exact h0

private theorem s6Step348ExitBank_checked : compileHmrBankResizeLog .exit s6Step348ExitGBefore ⟨s6Step348ExitFRow,s6Step348ExitGRow,s6Step348ExitFvRow,s6Step348ExitGvRow⟩ ⟨97,97,191,190⟩ [[],[],[],[]]=
    some (s6Step348ExitGvAfter,⟨s6Step348ExitFOut,s6Step348ExitGOut,s6Step348ExitFvOut,s6Step348ExitGvOut⟩,(shrinkRow 777 s6Step348ExitGExtra ++ (shrinkRow 795 s6Step348ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step348ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step348ExitBank_rows]
  rfl

private theorem s6Step348Add0_apart : Disjoint s6Step348Add0Arena.live s6Step348Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step348Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348Add0_card : s6Step348Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step348Add0_borrowed : s6Step348Add0Arena.checkBorrow (hmrHybridCount s6Step348Add0Arena s6Step348Add0B.length) s6Step348Add0Work=some s6Step348Add0During := by
  have len : s6Step348Add0Work.length=hmrHybridCount s6Step348Add0Arena s6Step348Add0B.length := by
    rw [hmrHybridCount,s6Step348Add0_card]
    decide +kernel
  have nd : s6Step348Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step348Add0Arena s6Step348Add0During s6Step348Add0Work.toFinset s6Step348Add0_bounded s6Step348Add0_apart rfl

private theorem s6Step348Add0_distinct : (805::809::802::(s6Step348Add0A++s6Step348Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348Add0_owned : (805::809::802::(s6Step348Add0A++s6Step348Add0B)).toFinset⊆s6Step348Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step348Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348Add0_checked : compileHmrHybridCinLog s6Step348Add0Arena 809 805 802 s6Step348Add0A s6Step348Add0B s6Step348Add0Work=some s6Step348Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step348Add0Arena s6Step348Add0During 809 805 802 s6Step348Add0A s6Step348Add0B s6Step348Add0Work
    (by decide +kernel) (by decide +kernel) s6Step348Add0_distinct
    (fun q hq => s6Step348Add0_owned (List.mem_toFinset.mpr hq)) s6Step348Add0_borrowed

private theorem s6Step348Add1_apart : Disjoint s6Step348Add1Arena.live s6Step348Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step348Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348Add1_card : s6Step348Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step348Add1_borrowed : s6Step348Add1Arena.checkBorrow (hmrHybridCount s6Step348Add1Arena s6Step348Add1B.length) s6Step348Add1Work=some s6Step348Add1During := by
  have len : s6Step348Add1Work.length=hmrHybridCount s6Step348Add1Arena s6Step348Add1B.length := by
    rw [hmrHybridCount,s6Step348Add1_card]
    decide +kernel
  have nd : s6Step348Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step348Add1Arena s6Step348Add1During s6Step348Add1Work.toFinset s6Step348Add1_bounded s6Step348Add1_apart rfl

private theorem s6Step348Add1_distinct : (805::809::802::(s6Step348Add1A++s6Step348Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348Add1_owned : (805::809::802::(s6Step348Add1A++s6Step348Add1B)).toFinset⊆s6Step348Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step348Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348Add1_checked : compileHmrHybridCinLog s6Step348Add1Arena 809 805 802 s6Step348Add1A s6Step348Add1B s6Step348Add1Work=some s6Step348Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step348Add1Arena s6Step348Add1During 809 805 802 s6Step348Add1A s6Step348Add1B s6Step348Add1Work
    (by decide +kernel) (by decide +kernel) s6Step348Add1_distinct
    (fun q hq => s6Step348Add1_owned (List.mem_toFinset.mpr hq)) s6Step348Add1_borrowed

private theorem s6Step348F4_apart : Disjoint (s6Step348Add0A++s6Step348Add0B).toFinset (s6Step348Add1A++s6Step348Add1B).toFinset := by
  have nd : ((s6Step348Add0A++s6Step348Add0B)++(s6Step348Add1A++s6Step348Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step348F4_carry : s6Step348F4FlagArena.checkBorrow 1 [802]=some s6Step348Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step348F4FlagArena,s6Step348HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step348F4FlagArena,s6Step348HeadFvAfter,s6Step348Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step348F4_distinct : (873::809::805::802::((s6Step348Add0A++s6Step348Add1A)++(s6Step348Add0B++s6Step348Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348F4_flag : s6Step348HeadFvAfter.checkBorrow 1 [805]=some s6Step348F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step348HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step348F4_owned : (873::809::((s6Step348Add0A++s6Step348Add1A)++(s6Step348Add0B++s6Step348Add1B))).toFinset⊆s6Step348HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step348HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348F4_checked : compileHmrHybridF4Log s6Step348HeadFvAfter 873 809 s6Step348Add0A s6Step348Add0B s6Step348Add1A s6Step348Add1B [805] [802] s6Step348Add0Work s6Step348Add1Work=some s6Step348F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step348HeadFvAfter s6Step348F4FlagArena s6Step348Add0Arena s6Step348Add0During s6Step348Add1During 873 809
    s6Step348Add0A s6Step348Add0B s6Step348Add1A s6Step348Add1B [805] [802] s6Step348Add0Work s6Step348Add1Work
    (fun q hq => s6Step348F4_owned (List.mem_toFinset.mpr hq)) s6Step348F4_flag s6Step348F4_carry
    s6Step348F4_distinct s6Step348F4_apart s6Step348Add0_checked s6Step348Add1_checked

private theorem s6Step348Front_branch : s6Step348FrontSigmaArena.checkBorrow 1 [809]=some s6Step348HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step348FrontSigmaArena,s6Step348EntryGvAfter,s6Step348EntryFAfter,arenaWires]
  · ext q
    simp only [s6Step348FrontSigmaArena,s6Step348EntryGvAfter,s6Step348EntryFAfter,s6Step348HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step348Front_entry : HmrFrontEntryValid s6Step348EntryFBefore s6Step348FrontBank 98 190 ⟨97,97,191,190⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step348FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step348EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step348EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step348FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step348Front_sigma : s6Step348EntryGvAfter.checkBorrow 1 [873]=some s6Step348FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step348EntryGvAfter,s6Step348EntryFAfter,arenaWires]
  · rfl

private def s6Step348HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348HeadFBefore : Arena := s6Step348HeadGAfter

private def s6Step348HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 881],795⟩

private def s6Step348HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856],776⟩

private def s6Step348HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97],777⟩

private def s6Step348HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩

private theorem s6Step348HeadBank_incomingDistinct : ([s6Step348HeadGRow,s6Step348HeadFRow,s6Step348HeadGvRow,s6Step348HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348HeadF_Incoming : rowsOwned s6Step348HeadFBefore [s6Step348HeadFRow,s6Step348HeadGvRow,s6Step348HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step348HeadGRow,s6Step348HeadFRow,s6Step348HeadGvRow,s6Step348HeadFvRow] 1 s6Step348HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step348HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step348HeadBank_outgoingOwned : rowsOwned s6Step348HeadFvAfter [s6Step348HeadGOut,s6Step348HeadFOut,s6Step348HeadGvOut,s6Step348HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step348HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step348HeadF_Outgoing : rowsOwned s6Step348HeadFvAfter [s6Step348HeadFOut,s6Step348HeadGvOut,s6Step348HeadFvOut] :=
  hmrRows_owned_drop s6Step348HeadFvAfter [s6Step348HeadGOut,s6Step348HeadFOut,s6Step348HeadGvOut,s6Step348HeadFvOut] 1 s6Step348HeadBank_outgoingOwned

private theorem s6Step348HeadF_distinct : (s6Step348HeadFRow.sign::s6Step348HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348HeadF_owned : (s6Step348HeadFRow.sign::s6Step348HeadFRow.payload).toFinset⊆s6Step348HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step348HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348HeadF_reserved : s6Step348HeadFBefore.reserve s6Step348HeadFFresh.toFinset=some s6Step348HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step348HeadFFresh,arenaWires]
  · norm_num [s6Step348HeadFBefore,s6Step348HeadGAfter,s6Step348HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step348HeadFAfter,s6Step348HeadFBefore,s6Step348HeadGAfter,s6Step348HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step348HeadF_checked : planRowResizeLog s6Step348HeadFBefore s6Step348HeadFRow 99 s6Step348HeadFFresh=
    some (s6Step348HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 881, 817],795⟩,growRow 795 s6Step348HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step348HeadFBefore s6Step348HeadFAfter s6Step348HeadFRow 99 s6Step348HeadFFresh
    s6Step348HeadF_distinct s6Step348HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step348HeadF_reserved
  have rowEq : WindowRow.mk (s6Step348HeadFRow.payload++s6Step348HeadFFresh) s6Step348HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 881, 817],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step348HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step348HeadFvBefore : Arena := s6Step348HeadGvAfter

private theorem s6Step348HeadFv_Incoming : rowsOwned s6Step348HeadFvBefore [s6Step348HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step348HeadGRow,s6Step348HeadFRow,s6Step348HeadGvRow,s6Step348HeadFvRow] 3 s6Step348HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step348HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step348HeadFv_Outgoing : rowsOwned s6Step348HeadFvAfter [s6Step348HeadFvOut] :=
  hmrRows_owned_drop s6Step348HeadFvAfter [s6Step348HeadGOut,s6Step348HeadFOut,s6Step348HeadGvOut,s6Step348HeadFvOut] 3 s6Step348HeadBank_outgoingOwned

private theorem s6Step348HeadFv_distinct : (s6Step348HeadFvRow.sign::s6Step348HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348HeadFv_owned : (s6Step348HeadFvRow.sign::s6Step348HeadFvRow.payload).toFinset⊆s6Step348HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step348HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348HeadFv_reserved : s6Step348HeadFvBefore.reserve s6Step348HeadFvFresh.toFinset=some s6Step348HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step348HeadFvFresh,arenaWires]
  · norm_num [s6Step348HeadFvBefore,s6Step348HeadGvAfter,s6Step348HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step348HeadFvAfter,s6Step348HeadFvBefore,s6Step348HeadGvAfter,s6Step348HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step348HeadFv_checked : planRowResizeLog s6Step348HeadFvBefore s6Step348HeadFvRow 191 s6Step348HeadFvFresh=
    some (s6Step348HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩,growRow 776 s6Step348HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step348HeadFvBefore s6Step348HeadFvAfter s6Step348HeadFvRow 191 s6Step348HeadFvFresh
    s6Step348HeadFv_distinct s6Step348HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step348HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step348HeadFvRow.payload++s6Step348HeadFvFresh) s6Step348HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step348HeadG_Incoming : rowsOwned s6Step348HeadGBefore [s6Step348HeadGRow,s6Step348HeadFRow,s6Step348HeadGvRow,s6Step348HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step348HeadGRow,s6Step348HeadFRow,s6Step348HeadGvRow,s6Step348HeadFvRow] 0 s6Step348HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step348HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step348HeadG_Outgoing : rowsOwned s6Step348HeadFvAfter [s6Step348HeadGOut,s6Step348HeadFOut,s6Step348HeadGvOut,s6Step348HeadFvOut] :=
  hmrRows_owned_drop s6Step348HeadFvAfter [s6Step348HeadGOut,s6Step348HeadFOut,s6Step348HeadGvOut,s6Step348HeadFvOut] 0 s6Step348HeadBank_outgoingOwned

private theorem s6Step348HeadG_distinct : (s6Step348HeadGRow.sign::s6Step348HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348HeadG_owned : (s6Step348HeadGRow.sign::s6Step348HeadGRow.payload).toFinset⊆s6Step348HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step348HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348HeadG_reserved : s6Step348HeadGBefore.reserve s6Step348HeadGFresh.toFinset=some s6Step348HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step348HeadGFresh,arenaWires]
  · norm_num [s6Step348HeadGBefore,s6Step348HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step348HeadGAfter,s6Step348HeadGBefore,s6Step348HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step348HeadG_checked : planRowResizeLog s6Step348HeadGBefore s6Step348HeadGRow 99 s6Step348HeadGFresh=
    some (s6Step348HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 906],777⟩,growRow 777 s6Step348HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step348HeadGBefore s6Step348HeadGAfter s6Step348HeadGRow 99 s6Step348HeadGFresh
    s6Step348HeadG_distinct s6Step348HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step348HeadG_reserved
  have rowEq : WindowRow.mk (s6Step348HeadGRow.payload++s6Step348HeadGFresh) s6Step348HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 906],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step348HeadGvBefore : Arena := s6Step348HeadFAfter

private theorem s6Step348HeadGv_Incoming : rowsOwned s6Step348HeadGvBefore [s6Step348HeadGvRow,s6Step348HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step348HeadGRow,s6Step348HeadFRow,s6Step348HeadGvRow,s6Step348HeadFvRow] 2 s6Step348HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step348HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step348HeadGv_Outgoing : rowsOwned s6Step348HeadFvAfter [s6Step348HeadGvOut,s6Step348HeadFvOut] :=
  hmrRows_owned_drop s6Step348HeadFvAfter [s6Step348HeadGOut,s6Step348HeadFOut,s6Step348HeadGvOut,s6Step348HeadFvOut] 2 s6Step348HeadBank_outgoingOwned

private theorem s6Step348HeadGv_distinct : (s6Step348HeadGvRow.sign::s6Step348HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step348HeadGv_owned : (s6Step348HeadGvRow.sign::s6Step348HeadGvRow.payload).toFinset⊆s6Step348HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step348HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step348HeadGv_reserved : s6Step348HeadGvBefore.reserve s6Step348HeadGvFresh.toFinset=some s6Step348HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step348HeadGvFresh,arenaWires]
  · norm_num [s6Step348HeadGvBefore,s6Step348HeadFAfter,s6Step348HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step348HeadGvAfter,s6Step348HeadGvBefore,s6Step348HeadFAfter,s6Step348HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step348HeadGv_checked : planRowResizeLog s6Step348HeadGvBefore s6Step348HeadGvRow 191 s6Step348HeadGvFresh=
    some (s6Step348HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 927],775⟩,growRow 775 s6Step348HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step348HeadGvBefore s6Step348HeadGvAfter s6Step348HeadGvRow 191 s6Step348HeadGvFresh
    s6Step348HeadGv_distinct s6Step348HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step348HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step348HeadGvRow.payload++s6Step348HeadGvFresh) s6Step348HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 927],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step348HeadBank_rows : planWindowRowsLog s6Step348HeadGBefore [(s6Step348HeadGRow,99),(s6Step348HeadFRow,99),(s6Step348HeadGvRow,191),(s6Step348HeadFvRow,191)] [s6Step348HeadGFresh,s6Step348HeadFFresh,s6Step348HeadGvFresh,s6Step348HeadFvFresh]=
    some (s6Step348HeadFvAfter,[s6Step348HeadGOut,s6Step348HeadFOut,s6Step348HeadGvOut,s6Step348HeadFvOut],(growRow 777 s6Step348HeadGFresh ++ (growRow 795 s6Step348HeadFFresh ++ (growRow 775 s6Step348HeadGvFresh ++ (growRow 776 s6Step348HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step348HeadFvAfter [] []=some (s6Step348HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step348HeadFvBefore s6Step348HeadFvAfter s6Step348HeadFvAfter
    s6Step348HeadFvRow s6Step348HeadFvOut 191 s6Step348HeadFvFresh [] [] []
    (growRow 776 s6Step348HeadFvFresh) ([]) s6Step348HeadFv_Incoming s6Step348HeadFv_checked h4 s6Step348HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step348HeadGvBefore s6Step348HeadGvAfter s6Step348HeadFvAfter
    s6Step348HeadGvRow s6Step348HeadGvOut 191 s6Step348HeadGvFresh [(s6Step348HeadFvRow,191)] [s6Step348HeadFvFresh] [s6Step348HeadFvOut]
    (growRow 775 s6Step348HeadGvFresh) ((growRow 776 s6Step348HeadFvFresh ++ [])) s6Step348HeadGv_Incoming s6Step348HeadGv_checked h3 s6Step348HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step348HeadFBefore s6Step348HeadFAfter s6Step348HeadFvAfter
    s6Step348HeadFRow s6Step348HeadFOut 99 s6Step348HeadFFresh [(s6Step348HeadGvRow,191),(s6Step348HeadFvRow,191)] [s6Step348HeadGvFresh,s6Step348HeadFvFresh] [s6Step348HeadGvOut,s6Step348HeadFvOut]
    (growRow 795 s6Step348HeadFFresh) ((growRow 775 s6Step348HeadGvFresh ++ (growRow 776 s6Step348HeadFvFresh ++ []))) s6Step348HeadF_Incoming s6Step348HeadF_checked h2 s6Step348HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step348HeadGBefore s6Step348HeadGAfter s6Step348HeadFvAfter
    s6Step348HeadGRow s6Step348HeadGOut 99 s6Step348HeadGFresh [(s6Step348HeadFRow,99),(s6Step348HeadGvRow,191),(s6Step348HeadFvRow,191)] [s6Step348HeadFFresh,s6Step348HeadGvFresh,s6Step348HeadFvFresh] [s6Step348HeadFOut,s6Step348HeadGvOut,s6Step348HeadFvOut]
    (growRow 777 s6Step348HeadGFresh) ((growRow 795 s6Step348HeadFFresh ++ (growRow 775 s6Step348HeadGvFresh ++ (growRow 776 s6Step348HeadFvFresh ++ [])))) s6Step348HeadG_Incoming s6Step348HeadG_checked h1 s6Step348HeadG_Outgoing
  exact h0

private theorem s6Step348HeadBank_checked : compileHmrBankResizeLog .headroom s6Step348HeadGBefore ⟨s6Step348HeadFRow,s6Step348HeadGRow,s6Step348HeadFvRow,s6Step348HeadGvRow⟩ ⟨99,99,191,191⟩ [s6Step348HeadGFresh,s6Step348HeadFFresh,s6Step348HeadGvFresh,s6Step348HeadFvFresh]=
    some (s6Step348HeadFvAfter,⟨s6Step348HeadFOut,s6Step348HeadGOut,s6Step348HeadFvOut,s6Step348HeadGvOut⟩,(growRow 777 s6Step348HeadGFresh ++ (growRow 795 s6Step348HeadFFresh ++ (growRow 775 s6Step348HeadGvFresh ++ (growRow 776 s6Step348HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step348HeadBank_rows]
  rfl

private theorem s6Step348Front_checked : compileHmrSourceFrontLog s6Step348EntryFBefore s6Step348FrontBank 98 190 ⟨97,97,191,190⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step348FrontLog=some s6Step348FrontPlan := by
  have pairEq : s6Step348FrontPair=⟨s6Step348HeadFRow,s6Step348HeadGRow,s6Step348HeadFvRow,s6Step348HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step348FrontHead=⟨s6Step348ExitFRow,s6Step348ExitGRow,s6Step348ExitFvRow,s6Step348ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step348Add0A=s6Step348FrontHead.f.wires := by decide +kernel
  have gEq : s6Step348Add0B=s6Step348FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step348Add1A=s6Step348FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step348Add1B=s6Step348FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step348EntryFBefore s6Step348FrontBank 98 190 ⟨97,97,191,190⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step348FrontLog s6Step348FrontPlan
  · exact s6Step348Front_entry
  · exact s6Step348EntryBank_checked
  · exact s6Step348Front_sigma
  · rfl
  · exact s6Step348Front_branch
  · rfl
  · simpa only [s6Step348FrontPlan,pairEq] using s6Step348HeadBank_checked
  · simpa only [s6Step348FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step348F4_checked
  · exact s6Step348Counter_checked
  · rfl
  · simpa only [s6Step348FrontPlan,headEq] using s6Step348ExitBank_checked

private theorem s6Step348Complete_explicit_checked : compileHmrEarlyStepLog s6Step348EntryFBefore s6Step348FrontBank 98 190 ⟨97,97,191,190⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step348CompleteLog=some s6Step348CompletePlan := by
  let Q := s6Step348EarlyControlPlan
  have hq := s6Step348EarlyControl_plan_checked
  have fv1 : s6Step348CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step348CompleteOut.fv.payload[2]?.getD s6Step348CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step348CompleteOut.fv.payload[3]?.getD s6Step348CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step348CompleteOut.fv.payload[4]?.getD s6Step348CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step348EntryFBefore s6Step348EarlyControlArena s6Step348FrontBank 98 190 ⟨97,97,191,190⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step348CompleteLog s6Step348FrontPlan Q
    s6Step348Front_checked s6Step348Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step348Complete_owned s6Step348Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step348EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 873 s6Step348CompleteOut.fv.second (s6Step348CompleteOut.fv.payload[2]?.getD s6Step348CompleteOut.fv.sign) (s6Step348CompleteOut.fv.payload[3]?.getD s6Step348CompleteOut.fv.sign) (s6Step348CompleteOut.fv.payload[4]?.getD s6Step348CompleteOut.fv.sign) 809 60 s6Step348EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep348Arena : Arena := s6Step348EntryFBefore
def s6PrivateStep348Bank : WindowBank := s6Step348FrontBank
def s6PrivateStep348Spec : HmrSourceWalkStepLog := ⟨98,190,⟨97,97,191,190⟩,60,.early s6Step348CompleteLog⟩
def s6PrivateStep348Plan : HmrSourceStepPlan := .early s6Step348CompletePlan
theorem s6PrivateStep348_source : s6PrivateStep348Spec=s6ObservedLogs336[12] := rfl
theorem s6PrivateStep348_checked : compileHmrSourceStepLog s6PrivateStep348Arena s6PrivateStep348Bank
    s6PrivateStep348Spec.fgWidth s6PrivateStep348Spec.vWidth s6PrivateStep348Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 348 s6PrivateStep348Spec.need none s6PrivateStep348Spec.log=some s6PrivateStep348Plan := by
  change compileHmrSourceStepLog s6Step348EntryFBefore s6Step348FrontBank 98 190 ⟨97,97,191,190⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 348 60 none (.early s6Step348CompleteLog)=some (.early s6Step348CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 348<498)]
  rw [s6Step348Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
