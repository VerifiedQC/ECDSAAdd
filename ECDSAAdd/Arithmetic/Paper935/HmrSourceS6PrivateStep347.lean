import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep345
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

private def s6Step347CompleteMoves : List (Wire × Wire) := [(809,98)]

private def s6Step347EarlyControlLog : HmrEarlyControlLog := ⟨[809, 906, 817, 927, 855],[805],[802],[843, 877, 792, 816, 819, 920],[]⟩

private def s6Step347FrontLog : HmrFrontAllocationLog := ⟨⟨[[927, 855], [], [856], []],[[802], [805], [906], [817]],[[], [], [], []]⟩,[873],[881],[843],[877],[792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816]⟩

private def s6Step347CompleteLog : HmrEarlyStepLog := ⟨s6Step347FrontLog,s6Step347CompleteMoves,s6Step347EarlyControlLog⟩

private def s6Step347ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352],795⟩

private def s6Step347ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856],776⟩

private def s6Step347ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97],777⟩

private def s6Step347ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩

private def s6Step347FrontOut : WindowBank := ⟨s6Step347ExitFOut,s6Step347ExitGOut,s6Step347ExitFvOut,s6Step347ExitGvOut⟩

private def s6Step347CompleteOut : WindowBank := s6Step347FrontOut.repacked s6Step347CompleteMoves

private def s6Step347EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step347EarlyControlPositiveArena,[805],s6Step347EarlyControlEqualityArena,[802],⟨⟨873,false⟩,[⟨⟨805,false⟩,802⟩]⟩⟩

private def s6Step347EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,809⟩,⟨⟨772,false⟩,906⟩,⟨⟨771,false⟩,817⟩,⟨⟨770,false⟩,927⟩,⟨⟨769,false⟩,855⟩]⟩

private def s6Step347EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step347EarlyControlZeroArena,s6Step347EarlyControlZeroPlan,s6Step347EarlyControlClassPlan,s6Step347EarlyControlFlagArena,s6Step347EarlyControlFittedArena,s6Step347EarlyControlHistoryArena,s6Step347EarlyControlSigmaArena,s6Step347EarlyControlOutputArena,s6Step347EarlyControlLog⟩

private def s6Step347CounterWork : List Wire := [843, 877, 792, 816]

private theorem s6Step347Counter_bounded : s6Step347CounterWork.toFinset⊆arenaWires := by norm_num [s6Step347CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step347HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347CounterDuring : Arena := ⟨s6Step347HeadFvAfter.live∪s6Step347CounterWork.toFinset,Finset.union_subset s6Step347HeadFvAfter.bounded s6Step347Counter_bounded⟩

private def s6Step347EntryFFresh : List Wire := [927, 855]

private def s6Step347EntryFvFresh : List Wire := [856]

private def s6Step347EntryGFresh : List Wire := []

private def s6Step347EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347EntryGvAfter : Arena := s6Step347EntryFvAfter

private def s6Step347EntryGvFresh : List Wire := []

private def s6Step347ExitFExtra : List Wire := [927, 855, 805]

private def s6Step347ExitFvExtra : List Wire := [817]

private def s6Step347ExitGExtra : List Wire := [98, 802]

private def s6Step347ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347ExitGvExtra : List Wire := [906]

private def s6Step347Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347Add0Work : List Wire := [792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step347Add0_bounded : s6Step347Add0Work.toFinset⊆arenaWires := by
  have h : s6Step347Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step347Add0During : Arena := ⟨s6Step347Add0Arena.live∪s6Step347Add0Work.toFinset,Finset.union_subset s6Step347Add0Arena.bounded s6Step347Add0_bounded⟩

private def s6Step347Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347Add1Work : List Wire := [792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step347Add1_bounded : s6Step347Add1Work.toFinset⊆arenaWires := by
  have h : s6Step347Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step347Add1During : Arena := ⟨s6Step347Add1Arena.live∪s6Step347Add1Work.toFinset,Finset.union_subset s6Step347Add1Arena.bounded s6Step347Add1_bounded⟩

private def s6Step347F4FlagArena : Arena := ⟨s6Step347HeadFvAfter.live∪{843},Finset.union_subset s6Step347HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step347F4Plan : HmrHybridF4Plan := ⟨s6Step347F4FlagArena,[843],s6Step347Add0Arena,[877],s6Step347Add0During,s6Step347Add0Work,s6Step347Add1During,s6Step347Add1Work⟩

private def s6Step347HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 927, 855, 805],795⟩

private def s6Step347HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 817],776⟩

private def s6Step347HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 802],777⟩

private def s6Step347HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 906],775⟩

private def s6Step347FrontHead : WindowBank := ⟨s6Step347HeadFOut,s6Step347HeadGOut,s6Step347HeadFvOut,s6Step347HeadGvOut⟩

private def s6Step347EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 927, 855],795⟩

private def s6Step347EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856],776⟩

private def s6Step347EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],777⟩

private def s6Step347EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩

private def s6Step347FrontPair : WindowBank := ⟨s6Step347EntryFOut,s6Step347EntryGOut,s6Step347EntryFvOut,s6Step347EntryGvOut⟩

private def s6Step347FrontSigmaArena : Arena := ⟨s6Step347EntryGvAfter.live∪{873},Finset.union_subset s6Step347EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step347HeadFFresh : List Wire := [805]

private def s6Step347HeadFvFresh : List Wire := [817]

private def s6Step347HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347HeadGFresh : List Wire := [802]

private def s6Step347HeadGvFresh : List Wire := [906]

private def s6Step347FrontPlan : HmrSourceFront := ⟨s6Step347EntryGvAfter,s6Step347FrontPair,(growRow 795 s6Step347EntryFFresh ++ (growRow 777 s6Step347EntryGFresh ++ (growRow 776 s6Step347EntryFvFresh ++ (growRow 775 s6Step347EntryGvFresh ++ [])))),s6Step347FrontSigmaArena,[873],s6Step347HeadGBefore,[881],
  s6Step347HeadFvAfter,s6Step347FrontHead,(growRow 777 s6Step347HeadGFresh ++ (growRow 795 s6Step347HeadFFresh ++ (growRow 775 s6Step347HeadGvFresh ++ (growRow 776 s6Step347HeadFvFresh ++ [])))),s6Step347F4Plan,s6Step347CounterDuring,s6Step347CounterWork,s6Step347ExitGvAfter,s6Step347FrontOut,(shrinkRow 777 s6Step347ExitGExtra ++ (shrinkRow 795 s6Step347ExitFExtra ++ (shrinkRow 776 s6Step347ExitFvExtra ++ (shrinkRow 775 s6Step347ExitGvExtra ++ []))))⟩

private def s6Step347CompletePlan : HmrEarlyStepPlan := ⟨s6Step347FrontPlan,s6Step347EarlyControlArena,s6Step347EarlyControlPlan,s6Step347CompleteMoves⟩

private theorem s6Step347Complete_apart : List.Disjoint (s6Step347CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [873, 881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step347CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[873, 881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step347Complete_owned : (s6Step347CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step347EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step347EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step347CompleteMoveArena : Arena := ⟨s6Step347ExitGvAfter.live∪{98},Finset.union_subset s6Step347ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step347Complete_repack : s6Step347ExitGvAfter.checkRepack s6Step347CompleteMoves=some s6Step347EarlyControlArena := by
  have owned : 809∈s6Step347ExitGvAfter.live := by norm_num [s6Step347ExitGvAfter,arenaWires]
  have reserve : s6Step347ExitGvAfter.reserve {98}=some s6Step347CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step347ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step347CompleteMoveArena.retireSet {809}=s6Step347EarlyControlArena := by
    unfold Arena.retireSet s6Step347EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step347CompleteMoveArena,s6Step347ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step347CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step347CompleteMoveArena.retireSet {809}).checkRepack []=some s6Step347EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step347EarlyControl_branchOwned : ([881] : List Wire).toFinset⊆s6Step347EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step347EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347EarlyControl_branch : compileHmrBranchRetirement s6Step347EarlyControlSigmaArena 881=some s6Step347EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step347EarlyControl_branchOwned
  · ext q
    simp [s6Step347EarlyControlOutputArena,s6Step347EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step347EarlyControl_classEqualityBorrow : s6Step347EarlyControlPositiveArena.checkBorrow (([873, 805] : List Wire).length-1) s6Step347EarlyControlLog.classWork=some s6Step347EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step347EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step347EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step347EarlyControlEqualityArena,s6Step347EarlyControlPositiveArena,s6Step347EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step347EarlyControl_classEqualityOwned : ([873, 805] : List Wire).toFinset⊆s6Step347EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step347EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347EarlyControl_classEquality : compileHmrEqualityLog s6Step347EarlyControlPositiveArena [873, 805] 0 s6Step347EarlyControlLog.classWork=some (s6Step347EarlyControlEqualityArena,s6Step347EarlyControlLog.classWork,s6Step347EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step347EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step347EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step347EarlyControl_classOwned : ([769, 855, 873] : List Wire).toFinset⊆s6Step347EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step347EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347EarlyControl_positiveBorrow : s6Step347EarlyControlZeroArena.checkBorrow (1) s6Step347EarlyControlLog.positiveWork=some s6Step347EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step347EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step347EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step347EarlyControlPositiveArena,s6Step347EarlyControlZeroArena,s6Step347EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step347EarlyControl_class : compileHmrSourceClassLog s6Step347EarlyControlZeroArena false 769 s6Step347EarlyControlZeroPlan.top 0 873 s6Step347EarlyControlLog.positiveWork s6Step347EarlyControlLog.classWork=some s6Step347EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step347EarlyControlClassPlan s6Step347EarlyControlZeroArena false 769 s6Step347EarlyControlZeroPlan.top 0 873
  constructor
  · decide +kernel
  · exact s6Step347EarlyControl_classOwned
  · exact s6Step347EarlyControl_positiveBorrow
  · exact s6Step347EarlyControl_classEquality

private theorem s6Step347EarlyControl_entryRecordOwned : ([881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step347EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step347EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347EarlyControl_entrySigmaOwned : ([873, 254] : List Wire).toFinset⊆s6Step347EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step347EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347EarlyControl_fitBorrow : s6Step347EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step347EarlyControlLog.recordFresh=some s6Step347EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step347EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step347EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step347EarlyControlFittedArena,s6Step347EarlyControlFlagArena,s6Step347EarlyControlLog,arenaWires]

private theorem s6Step347EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step347EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step347EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347EarlyControl_fit : compileHmrRecordGrowLog s6Step347EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step347EarlyControlLog.recordFresh=some s6Step347EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step347EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step347EarlyControl_fitBorrow

private theorem s6Step347EarlyControl_flagsBorrow : s6Step347EarlyControlEqualityArena.checkBorrow (6) s6Step347EarlyControlLog.flagWork=some s6Step347EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step347EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step347EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step347EarlyControlFlagArena,s6Step347EarlyControlEqualityArena,s6Step347EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step347EarlyControl_flagsOwned : ([802, 253, 252, 251] : List Wire).toFinset⊆s6Step347EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step347EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347EarlyControl_flags : compileHmrFlagsLog s6Step347EarlyControlClassPlan.equalityArena s6Step347EarlyControlClassPlan.equality.top 253 252 251 s6Step347EarlyControlLog.flagWork=some s6Step347EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step347EarlyControl_flagsOwned⟩
  · exact s6Step347EarlyControl_flagsBorrow

private theorem s6Step347EarlyControl_historyBorrow : s6Step347EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step347EarlyControlLog.recordFresh=some s6Step347EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step347EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step347EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step347EarlyControlHistoryArena,s6Step347EarlyControlArena,s6Step347EarlyControlLog,arenaWires]

private theorem s6Step347EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step347EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step347EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347EarlyControl_history : compileHmrRecordGrowLog s6Step347EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step347EarlyControlLog.recordFresh=some s6Step347EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step347EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step347EarlyControl_historyBorrow

private theorem s6Step347EarlyControl_sigmaOwned : ([254, 873] : List Wire).toFinset⊆s6Step347EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step347EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347EarlyControl_sigmaReleaseOwned : ([873] : List Wire).toFinset⊆s6Step347EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step347EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347EarlyControl_sigmaRelease : s6Step347EarlyControlHistoryArena.release {873} (fun _ => false)=some s6Step347EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step347EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step347EarlyControlSigmaArena,s6Step347EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step347EarlyControl_sigma : compileHmrSigmaDropLog s6Step347EarlyControlHistoryArena false 0 0 254 873 []=some s6Step347EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step347EarlyControl_sigmaOwned⟩
  · exact s6Step347EarlyControl_sigmaRelease

private theorem s6Step347EarlyControl_zeroBorrow : s6Step347EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step347EarlyControlLog.zeroWork=some s6Step347EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step347EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step347EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step347EarlyControlZeroArena,s6Step347EarlyControlArena,s6Step347EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step347EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step347EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step347EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347EarlyControl_zero : compileHmrEqualityLog s6Step347EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step347EarlyControlLog.zeroWork=some (s6Step347EarlyControlZeroArena,s6Step347EarlyControlLog.zeroWork,s6Step347EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step347EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step347EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step347EarlyControl_logged : s6Step347EarlyControlPlan.Logged s6Step347EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 873 254 253 252 251 881 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step347EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step347EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step347EarlyControl_zero
  · exact s6Step347EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step347EarlyControl_flags
  · exact s6Step347EarlyControl_fit
  · exact s6Step347EarlyControl_history
  · exact s6Step347EarlyControl_sigma
  · exact s6Step347EarlyControl_branch

private theorem s6Step347EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step347EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 873 254 253 252 251 881 60 s6Step347EarlyControlLog=some s6Step347EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step347EarlyControlPlan s6Step347EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 873 254 253 252 251 881 60 s6Step347EarlyControl_logged

private def s6Step347EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352],795⟩

private def s6Step347EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768],776⟩

private def s6Step347EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],777⟩

private def s6Step347EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩

private def s6Step347FrontBank : WindowBank := ⟨s6Step347EntryFRow,s6Step347EntryGRow,s6Step347EntryFvRow,s6Step347EntryGvRow⟩

private def s6Step347Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 927, 855, 805, 795]

private def s6Step347Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 802, 777]

private def s6Step347Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 817, 776]

private def s6Step347Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 906, 775]

private theorem s6Step347Counter_apart : Disjoint s6Step347HeadFvAfter.live s6Step347CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step347HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347Counter_borrowed : s6Step347HeadFvAfter.checkBorrow 4 s6Step347CounterWork=some s6Step347CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step347HeadFvAfter s6Step347CounterDuring s6Step347CounterWork.toFinset s6Step347Counter_bounded s6Step347Counter_apart rfl

private theorem s6Step347Counter_owned : (873::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step347HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step347HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347Counter_checked : compileHmrCounterStepLog s6Step347HeadFvAfter true 873 [774, 773, 772, 771, 770, 769] s6Step347CounterWork=some s6Step347CounterDuring := by
  have owned : ∀q∈873::[774, 773, 772, 771, 770, 769],q∈s6Step347HeadFvAfter.live := fun q hq => s6Step347Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step347Counter_borrowed

private def s6Step347EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step347EntryBank_incomingDistinct : ([s6Step347EntryFRow,s6Step347EntryGRow,s6Step347EntryFvRow,s6Step347EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347EntryF_Incoming : rowsOwned s6Step347EntryFBefore [s6Step347EntryFRow,s6Step347EntryGRow,s6Step347EntryFvRow,s6Step347EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step347EntryFRow,s6Step347EntryGRow,s6Step347EntryFvRow,s6Step347EntryGvRow] 0 s6Step347EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step347EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step347EntryBank_outgoingOwned : rowsOwned s6Step347EntryGvAfter [s6Step347EntryFOut,s6Step347EntryGOut,s6Step347EntryFvOut,s6Step347EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step347EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step347EntryF_Outgoing : rowsOwned s6Step347EntryGvAfter [s6Step347EntryFOut,s6Step347EntryGOut,s6Step347EntryFvOut,s6Step347EntryGvOut] :=
  hmrRows_owned_drop s6Step347EntryGvAfter [s6Step347EntryFOut,s6Step347EntryGOut,s6Step347EntryFvOut,s6Step347EntryGvOut] 0 s6Step347EntryBank_outgoingOwned

private theorem s6Step347EntryF_distinct : (s6Step347EntryFRow.sign::s6Step347EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347EntryF_owned : (s6Step347EntryFRow.sign::s6Step347EntryFRow.payload).toFinset⊆s6Step347EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step347EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347EntryF_reserved : s6Step347EntryFBefore.reserve s6Step347EntryFFresh.toFinset=some s6Step347EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step347EntryFFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step347EntryFBefore,s6Step347EntryFFresh,arenaWires]
  · ext q
    simp only [s6Step347EntryFAfter,s6Step347EntryFBefore,s6Step347EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step347EntryF_checked : planRowResizeLog s6Step347EntryFBefore s6Step347EntryFRow 99 s6Step347EntryFFresh=
    some (s6Step347EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 927, 855],795⟩,growRow 795 s6Step347EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step347EntryFBefore s6Step347EntryFAfter s6Step347EntryFRow 99 s6Step347EntryFFresh
    s6Step347EntryF_distinct s6Step347EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step347EntryF_reserved
  have rowEq : WindowRow.mk (s6Step347EntryFRow.payload++s6Step347EntryFFresh) s6Step347EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 927, 855],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step347EntryFvBefore : Arena := s6Step347EntryFAfter

private theorem s6Step347EntryFv_Incoming : rowsOwned s6Step347EntryFvBefore [s6Step347EntryFvRow,s6Step347EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step347EntryFRow,s6Step347EntryGRow,s6Step347EntryFvRow,s6Step347EntryGvRow] 2 s6Step347EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step347EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step347EntryFv_Outgoing : rowsOwned s6Step347EntryGvAfter [s6Step347EntryFvOut,s6Step347EntryGvOut] :=
  hmrRows_owned_drop s6Step347EntryGvAfter [s6Step347EntryFOut,s6Step347EntryGOut,s6Step347EntryFvOut,s6Step347EntryGvOut] 2 s6Step347EntryBank_outgoingOwned

private theorem s6Step347EntryFv_distinct : (s6Step347EntryFvRow.sign::s6Step347EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347EntryFv_owned : (s6Step347EntryFvRow.sign::s6Step347EntryFvRow.payload).toFinset⊆s6Step347EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step347EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347EntryFv_reserved : s6Step347EntryFvBefore.reserve s6Step347EntryFvFresh.toFinset=some s6Step347EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step347EntryFvFresh,arenaWires]
  · norm_num [s6Step347EntryFvBefore,s6Step347EntryFAfter,s6Step347EntryFvFresh,arenaWires]
  · ext q
    simp only [s6Step347EntryFvAfter,s6Step347EntryFvBefore,s6Step347EntryFAfter,s6Step347EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step347EntryFv_checked : planRowResizeLog s6Step347EntryFvBefore s6Step347EntryFvRow 190 s6Step347EntryFvFresh=
    some (s6Step347EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856],776⟩,growRow 776 s6Step347EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step347EntryFvBefore s6Step347EntryFvAfter s6Step347EntryFvRow 190 s6Step347EntryFvFresh
    s6Step347EntryFv_distinct s6Step347EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step347EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step347EntryFvRow.payload++s6Step347EntryFvFresh) s6Step347EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step347EntryGAfter : Arena := s6Step347EntryFAfter

private def s6Step347EntryGBefore : Arena := s6Step347EntryFAfter

private theorem s6Step347EntryG_Incoming : rowsOwned s6Step347EntryGBefore [s6Step347EntryGRow,s6Step347EntryFvRow,s6Step347EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step347EntryFRow,s6Step347EntryGRow,s6Step347EntryFvRow,s6Step347EntryGvRow] 1 s6Step347EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step347EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step347EntryG_Outgoing : rowsOwned s6Step347EntryGvAfter [s6Step347EntryGOut,s6Step347EntryFvOut,s6Step347EntryGvOut] :=
  hmrRows_owned_drop s6Step347EntryGvAfter [s6Step347EntryFOut,s6Step347EntryGOut,s6Step347EntryFvOut,s6Step347EntryGvOut] 1 s6Step347EntryBank_outgoingOwned

private theorem s6Step347EntryG_distinct : (s6Step347EntryGRow.sign::s6Step347EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347EntryG_owned : (s6Step347EntryGRow.sign::s6Step347EntryGRow.payload).toFinset⊆s6Step347EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step347EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347EntryG_reserved : s6Step347EntryGBefore.reserve s6Step347EntryGFresh.toFinset=some s6Step347EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step347EntryGFresh,arenaWires]
  · norm_num [s6Step347EntryGBefore,s6Step347EntryFAfter,s6Step347EntryGFresh,arenaWires]
  · simp only [s6Step347EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step347EntryG_checked : planRowResizeLog s6Step347EntryGBefore s6Step347EntryGRow 99 s6Step347EntryGFresh=
    some (s6Step347EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],777⟩,growRow 777 s6Step347EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step347EntryGBefore s6Step347EntryGAfter s6Step347EntryGRow 99 s6Step347EntryGFresh
    s6Step347EntryG_distinct s6Step347EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step347EntryG_reserved
  have rowEq : WindowRow.mk (s6Step347EntryGRow.payload++s6Step347EntryGFresh) s6Step347EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step347EntryGvBefore : Arena := s6Step347EntryFvAfter

private theorem s6Step347EntryGv_Incoming : rowsOwned s6Step347EntryGvBefore [s6Step347EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step347EntryFRow,s6Step347EntryGRow,s6Step347EntryFvRow,s6Step347EntryGvRow] 3 s6Step347EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step347EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step347EntryGv_Outgoing : rowsOwned s6Step347EntryGvAfter [s6Step347EntryGvOut] :=
  hmrRows_owned_drop s6Step347EntryGvAfter [s6Step347EntryFOut,s6Step347EntryGOut,s6Step347EntryFvOut,s6Step347EntryGvOut] 3 s6Step347EntryBank_outgoingOwned

private theorem s6Step347EntryGv_distinct : (s6Step347EntryGvRow.sign::s6Step347EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347EntryGv_owned : (s6Step347EntryGvRow.sign::s6Step347EntryGvRow.payload).toFinset⊆s6Step347EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step347EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347EntryGv_reserved : s6Step347EntryGvBefore.reserve s6Step347EntryGvFresh.toFinset=some s6Step347EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step347EntryGvFresh,arenaWires]
  · norm_num [s6Step347EntryGvBefore,s6Step347EntryFvAfter,s6Step347EntryGvFresh,arenaWires]
  · simp only [s6Step347EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step347EntryGv_checked : planRowResizeLog s6Step347EntryGvBefore s6Step347EntryGvRow 190 s6Step347EntryGvFresh=
    some (s6Step347EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩,growRow 775 s6Step347EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step347EntryGvBefore s6Step347EntryGvAfter s6Step347EntryGvRow 190 s6Step347EntryGvFresh
    s6Step347EntryGv_distinct s6Step347EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step347EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step347EntryGvRow.payload++s6Step347EntryGvFresh) s6Step347EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step347EntryBank_rows : planWindowRowsLog s6Step347EntryFBefore [(s6Step347EntryFRow,99),(s6Step347EntryGRow,99),(s6Step347EntryFvRow,190),(s6Step347EntryGvRow,190)] [s6Step347EntryFFresh,s6Step347EntryGFresh,s6Step347EntryFvFresh,s6Step347EntryGvFresh]=
    some (s6Step347EntryGvAfter,[s6Step347EntryFOut,s6Step347EntryGOut,s6Step347EntryFvOut,s6Step347EntryGvOut],(growRow 795 s6Step347EntryFFresh ++ (growRow 777 s6Step347EntryGFresh ++ (growRow 776 s6Step347EntryFvFresh ++ (growRow 775 s6Step347EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step347EntryGvAfter [] []=some (s6Step347EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step347EntryGvBefore s6Step347EntryGvAfter s6Step347EntryGvAfter
    s6Step347EntryGvRow s6Step347EntryGvOut 190 s6Step347EntryGvFresh [] [] []
    (growRow 775 s6Step347EntryGvFresh) ([]) s6Step347EntryGv_Incoming s6Step347EntryGv_checked h4 s6Step347EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step347EntryFvBefore s6Step347EntryFvAfter s6Step347EntryGvAfter
    s6Step347EntryFvRow s6Step347EntryFvOut 190 s6Step347EntryFvFresh [(s6Step347EntryGvRow,190)] [s6Step347EntryGvFresh] [s6Step347EntryGvOut]
    (growRow 776 s6Step347EntryFvFresh) ((growRow 775 s6Step347EntryGvFresh ++ [])) s6Step347EntryFv_Incoming s6Step347EntryFv_checked h3 s6Step347EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step347EntryGBefore s6Step347EntryGAfter s6Step347EntryGvAfter
    s6Step347EntryGRow s6Step347EntryGOut 99 s6Step347EntryGFresh [(s6Step347EntryFvRow,190),(s6Step347EntryGvRow,190)] [s6Step347EntryFvFresh,s6Step347EntryGvFresh] [s6Step347EntryFvOut,s6Step347EntryGvOut]
    (growRow 777 s6Step347EntryGFresh) ((growRow 776 s6Step347EntryFvFresh ++ (growRow 775 s6Step347EntryGvFresh ++ []))) s6Step347EntryG_Incoming s6Step347EntryG_checked h2 s6Step347EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step347EntryFBefore s6Step347EntryFAfter s6Step347EntryGvAfter
    s6Step347EntryFRow s6Step347EntryFOut 99 s6Step347EntryFFresh [(s6Step347EntryGRow,99),(s6Step347EntryFvRow,190),(s6Step347EntryGvRow,190)] [s6Step347EntryGFresh,s6Step347EntryFvFresh,s6Step347EntryGvFresh] [s6Step347EntryGOut,s6Step347EntryFvOut,s6Step347EntryGvOut]
    (growRow 795 s6Step347EntryFFresh) ((growRow 777 s6Step347EntryGFresh ++ (growRow 776 s6Step347EntryFvFresh ++ (growRow 775 s6Step347EntryGvFresh ++ [])))) s6Step347EntryF_Incoming s6Step347EntryF_checked h1 s6Step347EntryF_Outgoing
  exact h0

private theorem s6Step347EntryBank_checked : compileHmrBankResizeLog .entry s6Step347EntryFBefore ⟨s6Step347EntryFRow,s6Step347EntryGRow,s6Step347EntryFvRow,s6Step347EntryGvRow⟩ ⟨99,99,190,190⟩ [s6Step347EntryFFresh,s6Step347EntryGFresh,s6Step347EntryFvFresh,s6Step347EntryGvFresh]=
    some (s6Step347EntryGvAfter,⟨s6Step347EntryFOut,s6Step347EntryGOut,s6Step347EntryFvOut,s6Step347EntryGvOut⟩,(growRow 795 s6Step347EntryFFresh ++ (growRow 777 s6Step347EntryGFresh ++ (growRow 776 s6Step347EntryFvFresh ++ (growRow 775 s6Step347EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step347EntryBank_rows]
  rfl

private def s6Step347ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347ExitFBefore : Arena := s6Step347ExitGAfter

private def s6Step347ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 927, 855, 805],795⟩

private def s6Step347ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 817],776⟩

private def s6Step347ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 802],777⟩

private def s6Step347ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 906],775⟩

private theorem s6Step347ExitBank_incomingDistinct : ([s6Step347ExitGRow,s6Step347ExitFRow,s6Step347ExitFvRow,s6Step347ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347ExitF_Incoming : rowsOwned s6Step347ExitFBefore [s6Step347ExitFRow,s6Step347ExitFvRow,s6Step347ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step347ExitGRow,s6Step347ExitFRow,s6Step347ExitFvRow,s6Step347ExitGvRow] 1 s6Step347ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step347ExitFBefore (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step347ExitBank_outgoingOwned : rowsOwned s6Step347ExitGvAfter [s6Step347ExitGOut,s6Step347ExitFOut,s6Step347ExitFvOut,s6Step347ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step347ExitGvAfter (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step347ExitF_Outgoing : rowsOwned s6Step347ExitGvAfter [s6Step347ExitFOut,s6Step347ExitFvOut,s6Step347ExitGvOut] :=
  hmrRows_owned_drop s6Step347ExitGvAfter [s6Step347ExitGOut,s6Step347ExitFOut,s6Step347ExitFvOut,s6Step347ExitGvOut] 1 s6Step347ExitBank_outgoingOwned

private theorem s6Step347ExitF_distinct : (s6Step347ExitFRow.sign::s6Step347ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347ExitF_owned : (s6Step347ExitFRow.sign::s6Step347ExitFRow.payload).toFinset⊆s6Step347ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step347ExitFBefore (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347ExitF_retired : s6Step347ExitFBefore.retireSet s6Step347ExitFExtra.toFinset=s6Step347ExitFAfter := by
  unfold Arena.retireSet s6Step347ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step347ExitFBefore,s6Step347ExitGAfter,s6Step347ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step347ExitF_checked : planRowResizeLog s6Step347ExitFBefore s6Step347ExitFRow 97 []=
    some (s6Step347ExitFAfter,s6Step347ExitFOut,shrinkRow 795 s6Step347ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step347ExitFBefore s6Step347ExitFRow 97 s6Step347ExitF_distinct s6Step347ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step347ExitFRow.payload.take 97) s6Step347ExitFRow.sign=s6Step347ExitFOut := by decide +kernel
  have hi : s6Step347ExitFRow.payload.drop 97=s6Step347ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step347ExitF_retired] at result
  exact result

private def s6Step347ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347ExitFvBefore : Arena := s6Step347ExitFAfter

private theorem s6Step347ExitFv_Incoming : rowsOwned s6Step347ExitFvBefore [s6Step347ExitFvRow,s6Step347ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step347ExitGRow,s6Step347ExitFRow,s6Step347ExitFvRow,s6Step347ExitGvRow] 2 s6Step347ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step347ExitFvBefore (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step347ExitFv_Outgoing : rowsOwned s6Step347ExitGvAfter [s6Step347ExitFvOut,s6Step347ExitGvOut] :=
  hmrRows_owned_drop s6Step347ExitGvAfter [s6Step347ExitGOut,s6Step347ExitFOut,s6Step347ExitFvOut,s6Step347ExitGvOut] 2 s6Step347ExitBank_outgoingOwned

private theorem s6Step347ExitFv_distinct : (s6Step347ExitFvRow.sign::s6Step347ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347ExitFv_owned : (s6Step347ExitFvRow.sign::s6Step347ExitFvRow.payload).toFinset⊆s6Step347ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step347ExitFvBefore (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347ExitFv_retired : s6Step347ExitFvBefore.retireSet s6Step347ExitFvExtra.toFinset=s6Step347ExitFvAfter := by
  unfold Arena.retireSet s6Step347ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step347ExitFvBefore,s6Step347ExitFAfter,s6Step347ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step347ExitFv_checked : planRowResizeLog s6Step347ExitFvBefore s6Step347ExitFvRow 190 []=
    some (s6Step347ExitFvAfter,s6Step347ExitFvOut,shrinkRow 776 s6Step347ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step347ExitFvBefore s6Step347ExitFvRow 190 s6Step347ExitFv_distinct s6Step347ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step347ExitFvRow.payload.take 190) s6Step347ExitFvRow.sign=s6Step347ExitFvOut := by decide +kernel
  have hi : s6Step347ExitFvRow.payload.drop 190=s6Step347ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step347ExitFv_retired] at result
  exact result

private def s6Step347ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step347ExitG_Incoming : rowsOwned s6Step347ExitGBefore [s6Step347ExitGRow,s6Step347ExitFRow,s6Step347ExitFvRow,s6Step347ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step347ExitGRow,s6Step347ExitFRow,s6Step347ExitFvRow,s6Step347ExitGvRow] 0 s6Step347ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step347ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step347ExitG_Outgoing : rowsOwned s6Step347ExitGvAfter [s6Step347ExitGOut,s6Step347ExitFOut,s6Step347ExitFvOut,s6Step347ExitGvOut] :=
  hmrRows_owned_drop s6Step347ExitGvAfter [s6Step347ExitGOut,s6Step347ExitFOut,s6Step347ExitFvOut,s6Step347ExitGvOut] 0 s6Step347ExitBank_outgoingOwned

private theorem s6Step347ExitG_distinct : (s6Step347ExitGRow.sign::s6Step347ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347ExitG_owned : (s6Step347ExitGRow.sign::s6Step347ExitGRow.payload).toFinset⊆s6Step347ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step347ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347ExitG_retired : s6Step347ExitGBefore.retireSet s6Step347ExitGExtra.toFinset=s6Step347ExitGAfter := by
  unfold Arena.retireSet s6Step347ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step347ExitGBefore,s6Step347ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step347ExitG_checked : planRowResizeLog s6Step347ExitGBefore s6Step347ExitGRow 98 []=
    some (s6Step347ExitGAfter,s6Step347ExitGOut,shrinkRow 777 s6Step347ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step347ExitGBefore s6Step347ExitGRow 98 s6Step347ExitG_distinct s6Step347ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step347ExitGRow.payload.take 98) s6Step347ExitGRow.sign=s6Step347ExitGOut := by decide +kernel
  have hi : s6Step347ExitGRow.payload.drop 98=s6Step347ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step347ExitG_retired] at result
  exact result

private def s6Step347ExitGvBefore : Arena := s6Step347ExitFvAfter

private theorem s6Step347ExitGv_Incoming : rowsOwned s6Step347ExitGvBefore [s6Step347ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step347ExitGRow,s6Step347ExitFRow,s6Step347ExitFvRow,s6Step347ExitGvRow] 3 s6Step347ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step347ExitGvBefore (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step347ExitGv_Outgoing : rowsOwned s6Step347ExitGvAfter [s6Step347ExitGvOut] :=
  hmrRows_owned_drop s6Step347ExitGvAfter [s6Step347ExitGOut,s6Step347ExitFOut,s6Step347ExitFvOut,s6Step347ExitGvOut] 3 s6Step347ExitBank_outgoingOwned

private theorem s6Step347ExitGv_distinct : (s6Step347ExitGvRow.sign::s6Step347ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347ExitGv_owned : (s6Step347ExitGvRow.sign::s6Step347ExitGvRow.payload).toFinset⊆s6Step347ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step347ExitGvBefore (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347ExitGv_retired : s6Step347ExitGvBefore.retireSet s6Step347ExitGvExtra.toFinset=s6Step347ExitGvAfter := by
  unfold Arena.retireSet s6Step347ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step347ExitGvBefore,s6Step347ExitFvAfter,s6Step347ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step347ExitGv_checked : planRowResizeLog s6Step347ExitGvBefore s6Step347ExitGvRow 190 []=
    some (s6Step347ExitGvAfter,s6Step347ExitGvOut,shrinkRow 775 s6Step347ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step347ExitGvBefore s6Step347ExitGvRow 190 s6Step347ExitGv_distinct s6Step347ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step347ExitGvRow.payload.take 190) s6Step347ExitGvRow.sign=s6Step347ExitGvOut := by decide +kernel
  have hi : s6Step347ExitGvRow.payload.drop 190=s6Step347ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step347ExitGv_retired] at result
  exact result

private theorem s6Step347ExitBank_rows : planWindowRowsLog s6Step347ExitGBefore [(s6Step347ExitGRow,98),(s6Step347ExitFRow,97),(s6Step347ExitFvRow,190),(s6Step347ExitGvRow,190)] [[],[],[],[]]=
    some (s6Step347ExitGvAfter,[s6Step347ExitGOut,s6Step347ExitFOut,s6Step347ExitFvOut,s6Step347ExitGvOut],(shrinkRow 777 s6Step347ExitGExtra ++ (shrinkRow 795 s6Step347ExitFExtra ++ (shrinkRow 776 s6Step347ExitFvExtra ++ (shrinkRow 775 s6Step347ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step347ExitGvAfter [] []=some (s6Step347ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step347ExitGvBefore s6Step347ExitGvAfter s6Step347ExitGvAfter
    s6Step347ExitGvRow s6Step347ExitGvOut 190 [] [] [] []
    (shrinkRow 775 s6Step347ExitGvExtra) ([]) s6Step347ExitGv_Incoming s6Step347ExitGv_checked h4 s6Step347ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step347ExitFvBefore s6Step347ExitFvAfter s6Step347ExitGvAfter
    s6Step347ExitFvRow s6Step347ExitFvOut 190 [] [(s6Step347ExitGvRow,190)] [[]] [s6Step347ExitGvOut]
    (shrinkRow 776 s6Step347ExitFvExtra) ((shrinkRow 775 s6Step347ExitGvExtra ++ [])) s6Step347ExitFv_Incoming s6Step347ExitFv_checked h3 s6Step347ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step347ExitFBefore s6Step347ExitFAfter s6Step347ExitGvAfter
    s6Step347ExitFRow s6Step347ExitFOut 97 [] [(s6Step347ExitFvRow,190),(s6Step347ExitGvRow,190)] [[],[]] [s6Step347ExitFvOut,s6Step347ExitGvOut]
    (shrinkRow 795 s6Step347ExitFExtra) ((shrinkRow 776 s6Step347ExitFvExtra ++ (shrinkRow 775 s6Step347ExitGvExtra ++ []))) s6Step347ExitF_Incoming s6Step347ExitF_checked h2 s6Step347ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step347ExitGBefore s6Step347ExitGAfter s6Step347ExitGvAfter
    s6Step347ExitGRow s6Step347ExitGOut 98 [] [(s6Step347ExitFRow,97),(s6Step347ExitFvRow,190),(s6Step347ExitGvRow,190)] [[],[],[]] [s6Step347ExitFOut,s6Step347ExitFvOut,s6Step347ExitGvOut]
    (shrinkRow 777 s6Step347ExitGExtra) ((shrinkRow 795 s6Step347ExitFExtra ++ (shrinkRow 776 s6Step347ExitFvExtra ++ (shrinkRow 775 s6Step347ExitGvExtra ++ [])))) s6Step347ExitG_Incoming s6Step347ExitG_checked h1 s6Step347ExitG_Outgoing
  exact h0

private theorem s6Step347ExitBank_checked : compileHmrBankResizeLog .exit s6Step347ExitGBefore ⟨s6Step347ExitFRow,s6Step347ExitGRow,s6Step347ExitFvRow,s6Step347ExitGvRow⟩ ⟨97,98,190,190⟩ [[],[],[],[]]=
    some (s6Step347ExitGvAfter,⟨s6Step347ExitFOut,s6Step347ExitGOut,s6Step347ExitFvOut,s6Step347ExitGvOut⟩,(shrinkRow 777 s6Step347ExitGExtra ++ (shrinkRow 795 s6Step347ExitFExtra ++ (shrinkRow 776 s6Step347ExitFvExtra ++ (shrinkRow 775 s6Step347ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step347ExitBank_rows]
  rfl

private theorem s6Step347Add0_apart : Disjoint s6Step347Add0Arena.live s6Step347Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step347Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347Add0_card : s6Step347Add0Arena.live.card=912 := by
  decide +kernel

private theorem s6Step347Add0_borrowed : s6Step347Add0Arena.checkBorrow (hmrHybridCount s6Step347Add0Arena s6Step347Add0B.length) s6Step347Add0Work=some s6Step347Add0During := by
  have len : s6Step347Add0Work.length=hmrHybridCount s6Step347Add0Arena s6Step347Add0B.length := by
    rw [hmrHybridCount,s6Step347Add0_card]
    decide +kernel
  have nd : s6Step347Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step347Add0Arena s6Step347Add0During s6Step347Add0Work.toFinset s6Step347Add0_bounded s6Step347Add0_apart rfl

private theorem s6Step347Add0_distinct : (843::881::877::(s6Step347Add0A++s6Step347Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347Add0_owned : (843::881::877::(s6Step347Add0A++s6Step347Add0B)).toFinset⊆s6Step347Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step347Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347Add0_checked : compileHmrHybridCinLog s6Step347Add0Arena 881 843 877 s6Step347Add0A s6Step347Add0B s6Step347Add0Work=some s6Step347Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step347Add0Arena s6Step347Add0During 881 843 877 s6Step347Add0A s6Step347Add0B s6Step347Add0Work
    (by decide +kernel) (by decide +kernel) s6Step347Add0_distinct
    (fun q hq => s6Step347Add0_owned (List.mem_toFinset.mpr hq)) s6Step347Add0_borrowed

private theorem s6Step347Add1_apart : Disjoint s6Step347Add1Arena.live s6Step347Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step347Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347Add1_card : s6Step347Add1Arena.live.card=912 := by
  decide +kernel

private theorem s6Step347Add1_borrowed : s6Step347Add1Arena.checkBorrow (hmrHybridCount s6Step347Add1Arena s6Step347Add1B.length) s6Step347Add1Work=some s6Step347Add1During := by
  have len : s6Step347Add1Work.length=hmrHybridCount s6Step347Add1Arena s6Step347Add1B.length := by
    rw [hmrHybridCount,s6Step347Add1_card]
    decide +kernel
  have nd : s6Step347Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step347Add1Arena s6Step347Add1During s6Step347Add1Work.toFinset s6Step347Add1_bounded s6Step347Add1_apart rfl

private theorem s6Step347Add1_distinct : (843::881::877::(s6Step347Add1A++s6Step347Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347Add1_owned : (843::881::877::(s6Step347Add1A++s6Step347Add1B)).toFinset⊆s6Step347Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step347Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347Add1_checked : compileHmrHybridCinLog s6Step347Add1Arena 881 843 877 s6Step347Add1A s6Step347Add1B s6Step347Add1Work=some s6Step347Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step347Add1Arena s6Step347Add1During 881 843 877 s6Step347Add1A s6Step347Add1B s6Step347Add1Work
    (by decide +kernel) (by decide +kernel) s6Step347Add1_distinct
    (fun q hq => s6Step347Add1_owned (List.mem_toFinset.mpr hq)) s6Step347Add1_borrowed

private theorem s6Step347F4_apart : Disjoint (s6Step347Add0A++s6Step347Add0B).toFinset (s6Step347Add1A++s6Step347Add1B).toFinset := by
  have nd : ((s6Step347Add0A++s6Step347Add0B)++(s6Step347Add1A++s6Step347Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step347F4_carry : s6Step347F4FlagArena.checkBorrow 1 [877]=some s6Step347Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step347F4FlagArena,s6Step347HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step347F4FlagArena,s6Step347HeadFvAfter,s6Step347Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step347F4_distinct : (873::881::843::877::((s6Step347Add0A++s6Step347Add1A)++(s6Step347Add0B++s6Step347Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347F4_flag : s6Step347HeadFvAfter.checkBorrow 1 [843]=some s6Step347F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step347HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step347F4_owned : (873::881::((s6Step347Add0A++s6Step347Add1A)++(s6Step347Add0B++s6Step347Add1B))).toFinset⊆s6Step347HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step347HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347F4_checked : compileHmrHybridF4Log s6Step347HeadFvAfter 873 881 s6Step347Add0A s6Step347Add0B s6Step347Add1A s6Step347Add1B [843] [877] s6Step347Add0Work s6Step347Add1Work=some s6Step347F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step347HeadFvAfter s6Step347F4FlagArena s6Step347Add0Arena s6Step347Add0During s6Step347Add1During 873 881
    s6Step347Add0A s6Step347Add0B s6Step347Add1A s6Step347Add1B [843] [877] s6Step347Add0Work s6Step347Add1Work
    (fun q hq => s6Step347F4_owned (List.mem_toFinset.mpr hq)) s6Step347F4_flag s6Step347F4_carry
    s6Step347F4_distinct s6Step347F4_apart s6Step347Add0_checked s6Step347Add1_checked

private theorem s6Step347Front_branch : s6Step347FrontSigmaArena.checkBorrow 1 [881]=some s6Step347HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step347FrontSigmaArena,s6Step347EntryGvAfter,s6Step347EntryFvAfter,arenaWires]
  · ext q
    simp only [s6Step347FrontSigmaArena,s6Step347EntryGvAfter,s6Step347EntryFvAfter,s6Step347HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step347Front_entry : HmrFrontEntryValid s6Step347EntryFBefore s6Step347FrontBank 99 190 ⟨97,98,190,190⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step347FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step347EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step347EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step347FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step347Front_sigma : s6Step347EntryGvAfter.checkBorrow 1 [873]=some s6Step347FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step347EntryGvAfter,s6Step347EntryFvAfter,arenaWires]
  · rfl

private def s6Step347HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347HeadFBefore : Arena := s6Step347HeadGAfter

private def s6Step347HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 927, 855],795⟩

private def s6Step347HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856],776⟩

private def s6Step347HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],777⟩

private def s6Step347HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩

private theorem s6Step347HeadBank_incomingDistinct : ([s6Step347HeadGRow,s6Step347HeadFRow,s6Step347HeadGvRow,s6Step347HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347HeadF_Incoming : rowsOwned s6Step347HeadFBefore [s6Step347HeadFRow,s6Step347HeadGvRow,s6Step347HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step347HeadGRow,s6Step347HeadFRow,s6Step347HeadGvRow,s6Step347HeadFvRow] 1 s6Step347HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step347HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step347HeadBank_outgoingOwned : rowsOwned s6Step347HeadFvAfter [s6Step347HeadGOut,s6Step347HeadFOut,s6Step347HeadGvOut,s6Step347HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step347HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step347HeadF_Outgoing : rowsOwned s6Step347HeadFvAfter [s6Step347HeadFOut,s6Step347HeadGvOut,s6Step347HeadFvOut] :=
  hmrRows_owned_drop s6Step347HeadFvAfter [s6Step347HeadGOut,s6Step347HeadFOut,s6Step347HeadGvOut,s6Step347HeadFvOut] 1 s6Step347HeadBank_outgoingOwned

private theorem s6Step347HeadF_distinct : (s6Step347HeadFRow.sign::s6Step347HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347HeadF_owned : (s6Step347HeadFRow.sign::s6Step347HeadFRow.payload).toFinset⊆s6Step347HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step347HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347HeadF_reserved : s6Step347HeadFBefore.reserve s6Step347HeadFFresh.toFinset=some s6Step347HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step347HeadFFresh,arenaWires]
  · norm_num [s6Step347HeadFBefore,s6Step347HeadGAfter,s6Step347HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step347HeadFAfter,s6Step347HeadFBefore,s6Step347HeadGAfter,s6Step347HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step347HeadF_checked : planRowResizeLog s6Step347HeadFBefore s6Step347HeadFRow 100 s6Step347HeadFFresh=
    some (s6Step347HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 927, 855, 805],795⟩,growRow 795 s6Step347HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step347HeadFBefore s6Step347HeadFAfter s6Step347HeadFRow 100 s6Step347HeadFFresh
    s6Step347HeadF_distinct s6Step347HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step347HeadF_reserved
  have rowEq : WindowRow.mk (s6Step347HeadFRow.payload++s6Step347HeadFFresh) s6Step347HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 927, 855, 805],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step347HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step347HeadFvBefore : Arena := s6Step347HeadGvAfter

private theorem s6Step347HeadFv_Incoming : rowsOwned s6Step347HeadFvBefore [s6Step347HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step347HeadGRow,s6Step347HeadFRow,s6Step347HeadGvRow,s6Step347HeadFvRow] 3 s6Step347HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step347HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step347HeadFv_Outgoing : rowsOwned s6Step347HeadFvAfter [s6Step347HeadFvOut] :=
  hmrRows_owned_drop s6Step347HeadFvAfter [s6Step347HeadGOut,s6Step347HeadFOut,s6Step347HeadGvOut,s6Step347HeadFvOut] 3 s6Step347HeadBank_outgoingOwned

private theorem s6Step347HeadFv_distinct : (s6Step347HeadFvRow.sign::s6Step347HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347HeadFv_owned : (s6Step347HeadFvRow.sign::s6Step347HeadFvRow.payload).toFinset⊆s6Step347HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step347HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347HeadFv_reserved : s6Step347HeadFvBefore.reserve s6Step347HeadFvFresh.toFinset=some s6Step347HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step347HeadFvFresh,arenaWires]
  · norm_num [s6Step347HeadFvBefore,s6Step347HeadGvAfter,s6Step347HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step347HeadFvAfter,s6Step347HeadFvBefore,s6Step347HeadGvAfter,s6Step347HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step347HeadFv_checked : planRowResizeLog s6Step347HeadFvBefore s6Step347HeadFvRow 191 s6Step347HeadFvFresh=
    some (s6Step347HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 817],776⟩,growRow 776 s6Step347HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step347HeadFvBefore s6Step347HeadFvAfter s6Step347HeadFvRow 191 s6Step347HeadFvFresh
    s6Step347HeadFv_distinct s6Step347HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step347HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step347HeadFvRow.payload++s6Step347HeadFvFresh) s6Step347HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 817],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step347HeadG_Incoming : rowsOwned s6Step347HeadGBefore [s6Step347HeadGRow,s6Step347HeadFRow,s6Step347HeadGvRow,s6Step347HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step347HeadGRow,s6Step347HeadFRow,s6Step347HeadGvRow,s6Step347HeadFvRow] 0 s6Step347HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step347HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step347HeadG_Outgoing : rowsOwned s6Step347HeadFvAfter [s6Step347HeadGOut,s6Step347HeadFOut,s6Step347HeadGvOut,s6Step347HeadFvOut] :=
  hmrRows_owned_drop s6Step347HeadFvAfter [s6Step347HeadGOut,s6Step347HeadFOut,s6Step347HeadGvOut,s6Step347HeadFvOut] 0 s6Step347HeadBank_outgoingOwned

private theorem s6Step347HeadG_distinct : (s6Step347HeadGRow.sign::s6Step347HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347HeadG_owned : (s6Step347HeadGRow.sign::s6Step347HeadGRow.payload).toFinset⊆s6Step347HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step347HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347HeadG_reserved : s6Step347HeadGBefore.reserve s6Step347HeadGFresh.toFinset=some s6Step347HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step347HeadGFresh,arenaWires]
  · norm_num [s6Step347HeadGBefore,s6Step347HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step347HeadGAfter,s6Step347HeadGBefore,s6Step347HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step347HeadG_checked : planRowResizeLog s6Step347HeadGBefore s6Step347HeadGRow 100 s6Step347HeadGFresh=
    some (s6Step347HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 802],777⟩,growRow 777 s6Step347HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step347HeadGBefore s6Step347HeadGAfter s6Step347HeadGRow 100 s6Step347HeadGFresh
    s6Step347HeadG_distinct s6Step347HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step347HeadG_reserved
  have rowEq : WindowRow.mk (s6Step347HeadGRow.payload++s6Step347HeadGFresh) s6Step347HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 802],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step347HeadGvBefore : Arena := s6Step347HeadFAfter

private theorem s6Step347HeadGv_Incoming : rowsOwned s6Step347HeadGvBefore [s6Step347HeadGvRow,s6Step347HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step347HeadGRow,s6Step347HeadFRow,s6Step347HeadGvRow,s6Step347HeadFvRow] 2 s6Step347HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step347HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step347HeadGv_Outgoing : rowsOwned s6Step347HeadFvAfter [s6Step347HeadGvOut,s6Step347HeadFvOut] :=
  hmrRows_owned_drop s6Step347HeadFvAfter [s6Step347HeadGOut,s6Step347HeadFOut,s6Step347HeadGvOut,s6Step347HeadFvOut] 2 s6Step347HeadBank_outgoingOwned

private theorem s6Step347HeadGv_distinct : (s6Step347HeadGvRow.sign::s6Step347HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step347HeadGv_owned : (s6Step347HeadGvRow.sign::s6Step347HeadGvRow.payload).toFinset⊆s6Step347HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step347HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step347HeadGv_reserved : s6Step347HeadGvBefore.reserve s6Step347HeadGvFresh.toFinset=some s6Step347HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step347HeadGvFresh,arenaWires]
  · norm_num [s6Step347HeadGvBefore,s6Step347HeadFAfter,s6Step347HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step347HeadGvAfter,s6Step347HeadGvBefore,s6Step347HeadFAfter,s6Step347HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step347HeadGv_checked : planRowResizeLog s6Step347HeadGvBefore s6Step347HeadGvRow 191 s6Step347HeadGvFresh=
    some (s6Step347HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 906],775⟩,growRow 775 s6Step347HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step347HeadGvBefore s6Step347HeadGvAfter s6Step347HeadGvRow 191 s6Step347HeadGvFresh
    s6Step347HeadGv_distinct s6Step347HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step347HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step347HeadGvRow.payload++s6Step347HeadGvFresh) s6Step347HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 906],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step347HeadBank_rows : planWindowRowsLog s6Step347HeadGBefore [(s6Step347HeadGRow,100),(s6Step347HeadFRow,100),(s6Step347HeadGvRow,191),(s6Step347HeadFvRow,191)] [s6Step347HeadGFresh,s6Step347HeadFFresh,s6Step347HeadGvFresh,s6Step347HeadFvFresh]=
    some (s6Step347HeadFvAfter,[s6Step347HeadGOut,s6Step347HeadFOut,s6Step347HeadGvOut,s6Step347HeadFvOut],(growRow 777 s6Step347HeadGFresh ++ (growRow 795 s6Step347HeadFFresh ++ (growRow 775 s6Step347HeadGvFresh ++ (growRow 776 s6Step347HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step347HeadFvAfter [] []=some (s6Step347HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step347HeadFvBefore s6Step347HeadFvAfter s6Step347HeadFvAfter
    s6Step347HeadFvRow s6Step347HeadFvOut 191 s6Step347HeadFvFresh [] [] []
    (growRow 776 s6Step347HeadFvFresh) ([]) s6Step347HeadFv_Incoming s6Step347HeadFv_checked h4 s6Step347HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step347HeadGvBefore s6Step347HeadGvAfter s6Step347HeadFvAfter
    s6Step347HeadGvRow s6Step347HeadGvOut 191 s6Step347HeadGvFresh [(s6Step347HeadFvRow,191)] [s6Step347HeadFvFresh] [s6Step347HeadFvOut]
    (growRow 775 s6Step347HeadGvFresh) ((growRow 776 s6Step347HeadFvFresh ++ [])) s6Step347HeadGv_Incoming s6Step347HeadGv_checked h3 s6Step347HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step347HeadFBefore s6Step347HeadFAfter s6Step347HeadFvAfter
    s6Step347HeadFRow s6Step347HeadFOut 100 s6Step347HeadFFresh [(s6Step347HeadGvRow,191),(s6Step347HeadFvRow,191)] [s6Step347HeadGvFresh,s6Step347HeadFvFresh] [s6Step347HeadGvOut,s6Step347HeadFvOut]
    (growRow 795 s6Step347HeadFFresh) ((growRow 775 s6Step347HeadGvFresh ++ (growRow 776 s6Step347HeadFvFresh ++ []))) s6Step347HeadF_Incoming s6Step347HeadF_checked h2 s6Step347HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step347HeadGBefore s6Step347HeadGAfter s6Step347HeadFvAfter
    s6Step347HeadGRow s6Step347HeadGOut 100 s6Step347HeadGFresh [(s6Step347HeadFRow,100),(s6Step347HeadGvRow,191),(s6Step347HeadFvRow,191)] [s6Step347HeadFFresh,s6Step347HeadGvFresh,s6Step347HeadFvFresh] [s6Step347HeadFOut,s6Step347HeadGvOut,s6Step347HeadFvOut]
    (growRow 777 s6Step347HeadGFresh) ((growRow 795 s6Step347HeadFFresh ++ (growRow 775 s6Step347HeadGvFresh ++ (growRow 776 s6Step347HeadFvFresh ++ [])))) s6Step347HeadG_Incoming s6Step347HeadG_checked h1 s6Step347HeadG_Outgoing
  exact h0

private theorem s6Step347HeadBank_checked : compileHmrBankResizeLog .headroom s6Step347HeadGBefore ⟨s6Step347HeadFRow,s6Step347HeadGRow,s6Step347HeadFvRow,s6Step347HeadGvRow⟩ ⟨100,100,191,191⟩ [s6Step347HeadGFresh,s6Step347HeadFFresh,s6Step347HeadGvFresh,s6Step347HeadFvFresh]=
    some (s6Step347HeadFvAfter,⟨s6Step347HeadFOut,s6Step347HeadGOut,s6Step347HeadFvOut,s6Step347HeadGvOut⟩,(growRow 777 s6Step347HeadGFresh ++ (growRow 795 s6Step347HeadFFresh ++ (growRow 775 s6Step347HeadGvFresh ++ (growRow 776 s6Step347HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step347HeadBank_rows]
  rfl

private theorem s6Step347Front_checked : compileHmrSourceFrontLog s6Step347EntryFBefore s6Step347FrontBank 99 190 ⟨97,98,190,190⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step347FrontLog=some s6Step347FrontPlan := by
  have pairEq : s6Step347FrontPair=⟨s6Step347HeadFRow,s6Step347HeadGRow,s6Step347HeadFvRow,s6Step347HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step347FrontHead=⟨s6Step347ExitFRow,s6Step347ExitGRow,s6Step347ExitFvRow,s6Step347ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step347Add0A=s6Step347FrontHead.f.wires := by decide +kernel
  have gEq : s6Step347Add0B=s6Step347FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step347Add1A=s6Step347FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step347Add1B=s6Step347FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step347EntryFBefore s6Step347FrontBank 99 190 ⟨97,98,190,190⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step347FrontLog s6Step347FrontPlan
  · exact s6Step347Front_entry
  · exact s6Step347EntryBank_checked
  · exact s6Step347Front_sigma
  · rfl
  · exact s6Step347Front_branch
  · rfl
  · simpa only [s6Step347FrontPlan,pairEq] using s6Step347HeadBank_checked
  · simpa only [s6Step347FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step347F4_checked
  · exact s6Step347Counter_checked
  · rfl
  · simpa only [s6Step347FrontPlan,headEq] using s6Step347ExitBank_checked

private theorem s6Step347Complete_explicit_checked : compileHmrEarlyStepLog s6Step347EntryFBefore s6Step347FrontBank 99 190 ⟨97,98,190,190⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step347CompleteLog=some s6Step347CompletePlan := by
  let Q := s6Step347EarlyControlPlan
  have hq := s6Step347EarlyControl_plan_checked
  have fv1 : s6Step347CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step347CompleteOut.fv.payload[2]?.getD s6Step347CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step347CompleteOut.fv.payload[3]?.getD s6Step347CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step347CompleteOut.fv.payload[4]?.getD s6Step347CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step347EntryFBefore s6Step347EarlyControlArena s6Step347FrontBank 99 190 ⟨97,98,190,190⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step347CompleteLog s6Step347FrontPlan Q
    s6Step347Front_checked s6Step347Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step347Complete_owned s6Step347Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step347EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 873 s6Step347CompleteOut.fv.second (s6Step347CompleteOut.fv.payload[2]?.getD s6Step347CompleteOut.fv.sign) (s6Step347CompleteOut.fv.payload[3]?.getD s6Step347CompleteOut.fv.sign) (s6Step347CompleteOut.fv.payload[4]?.getD s6Step347CompleteOut.fv.sign) 881 60 s6Step347EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep347Arena : Arena := s6Step347EntryFBefore
def s6PrivateStep347Bank : WindowBank := s6Step347FrontBank
def s6PrivateStep347Spec : HmrSourceWalkStepLog := ⟨99,190,⟨97,98,190,190⟩,60,.early s6Step347CompleteLog⟩
def s6PrivateStep347Plan : HmrSourceStepPlan := .early s6Step347CompletePlan
theorem s6PrivateStep347_source : s6PrivateStep347Spec=s6ObservedLogs336[11] := rfl
theorem s6PrivateStep347_checked : compileHmrSourceStepLog s6PrivateStep347Arena s6PrivateStep347Bank
    s6PrivateStep347Spec.fgWidth s6PrivateStep347Spec.vWidth s6PrivateStep347Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 347 s6PrivateStep347Spec.need none s6PrivateStep347Spec.log=some s6PrivateStep347Plan := by
  change compileHmrSourceStepLog s6Step347EntryFBefore s6Step347FrontBank 99 190 ⟨97,98,190,190⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 347 60 none (.early s6Step347CompleteLog)=some (.early s6Step347CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 347<498)]
  rw [s6Step347Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
