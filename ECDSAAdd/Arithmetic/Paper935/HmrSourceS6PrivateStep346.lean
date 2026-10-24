import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep344
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

private def s6Step346CompleteMoves : List (Wire × Wire) := [(873,353),(856,354)]

private def s6Step346EarlyControlLog : HmrEarlyControlLog := ⟨[856, 873, 881, 802, 805],[906],[817],[843, 877, 792, 816, 819, 920],[]⟩

private def s6Step346FrontLog : HmrFrontAllocationLog := ⟨⟨[[906], [], [], [915]],[[877], [817], [881], [805]],[[], [], [], []]⟩,[855],[927],[792],[816],[819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[792, 816, 819, 920]⟩

private def s6Step346CompleteLog : HmrEarlyStepLog := ⟨s6Step346FrontLog,s6Step346CompleteMoves,s6Step346EarlyControlLog⟩

private def s6Step346ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352],795⟩

private def s6Step346ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768],776⟩

private def s6Step346ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],777⟩

private def s6Step346ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩

private def s6Step346FrontOut : WindowBank := ⟨s6Step346ExitFOut,s6Step346ExitGOut,s6Step346ExitFvOut,s6Step346ExitGvOut⟩

private def s6Step346CompleteOut : WindowBank := s6Step346FrontOut.repacked s6Step346CompleteMoves

private def s6Step346EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step346EarlyControlPositiveArena,[906],s6Step346EarlyControlEqualityArena,[817],⟨⟨855,false⟩,[⟨⟨906,false⟩,817⟩]⟩⟩

private def s6Step346EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,856⟩,⟨⟨772,false⟩,873⟩,⟨⟨771,false⟩,881⟩,⟨⟨770,false⟩,802⟩,⟨⟨769,false⟩,805⟩]⟩

private def s6Step346EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step346EarlyControlZeroArena,s6Step346EarlyControlZeroPlan,s6Step346EarlyControlClassPlan,s6Step346EarlyControlFlagArena,s6Step346EarlyControlFittedArena,s6Step346EarlyControlHistoryArena,s6Step346EarlyControlSigmaArena,s6Step346EarlyControlOutputArena,s6Step346EarlyControlLog⟩

private def s6Step346CounterWork : List Wire := [792, 816, 819, 920]

private theorem s6Step346Counter_bounded : s6Step346CounterWork.toFinset⊆arenaWires := by norm_num [s6Step346CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step346HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346CounterDuring : Arena := ⟨s6Step346HeadFvAfter.live∪s6Step346CounterWork.toFinset,Finset.union_subset s6Step346HeadFvAfter.bounded s6Step346Counter_bounded⟩

private def s6Step346EntryFFresh : List Wire := [906]

private def s6Step346EntryFvFresh : List Wire := []

private def s6Step346EntryGFresh : List Wire := []

private def s6Step346EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346EntryGvFresh : List Wire := [915]

private def s6Step346ExitFExtra : List Wire := [353, 354, 906, 817]

private def s6Step346ExitFvExtra : List Wire := [802, 805]

private def s6Step346ExitGExtra : List Wire := [843, 877]

private def s6Step346ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<353) ∨ (355≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346ExitGvExtra : List Wire := [881]

private def s6Step346Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346Add0Work : List Wire := [819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step346Add0_bounded : s6Step346Add0Work.toFinset⊆arenaWires := by
  have h : s6Step346Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step346Add0During : Arena := ⟨s6Step346Add0Arena.live∪s6Step346Add0Work.toFinset,Finset.union_subset s6Step346Add0Arena.bounded s6Step346Add0_bounded⟩

private def s6Step346Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346Add1Work : List Wire := [819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step346Add1_bounded : s6Step346Add1Work.toFinset⊆arenaWires := by
  have h : s6Step346Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step346Add1During : Arena := ⟨s6Step346Add1Arena.live∪s6Step346Add1Work.toFinset,Finset.union_subset s6Step346Add1Arena.bounded s6Step346Add1_bounded⟩

private def s6Step346F4FlagArena : Arena := ⟨s6Step346HeadFvAfter.live∪{792},Finset.union_subset s6Step346HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step346F4Plan : HmrHybridF4Plan := ⟨s6Step346F4FlagArena,[792],s6Step346Add0Arena,[816],s6Step346Add0During,s6Step346Add0Work,s6Step346Add1During,s6Step346Add1Work⟩

private def s6Step346HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 906, 817],795⟩

private def s6Step346HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 802, 805],776⟩

private def s6Step346HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 843, 877],777⟩

private def s6Step346HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 881],775⟩

private def s6Step346FrontHead : WindowBank := ⟨s6Step346HeadFOut,s6Step346HeadGOut,s6Step346HeadFvOut,s6Step346HeadGvOut⟩

private def s6Step346EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 906],795⟩

private def s6Step346EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 802],776⟩

private def s6Step346EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 843],777⟩

private def s6Step346EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩

private def s6Step346FrontPair : WindowBank := ⟨s6Step346EntryFOut,s6Step346EntryGOut,s6Step346EntryFvOut,s6Step346EntryGvOut⟩

private def s6Step346FrontSigmaArena : Arena := ⟨s6Step346EntryGvAfter.live∪{855},Finset.union_subset s6Step346EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step346HeadFFresh : List Wire := [817]

private def s6Step346HeadFvFresh : List Wire := [805]

private def s6Step346HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346HeadGFresh : List Wire := [877]

private def s6Step346HeadGvFresh : List Wire := [881]

private def s6Step346FrontPlan : HmrSourceFront := ⟨s6Step346EntryGvAfter,s6Step346FrontPair,(growRow 795 s6Step346EntryFFresh ++ (growRow 777 s6Step346EntryGFresh ++ (growRow 776 s6Step346EntryFvFresh ++ (growRow 775 s6Step346EntryGvFresh ++ [])))),s6Step346FrontSigmaArena,[855],s6Step346HeadGBefore,[927],
  s6Step346HeadFvAfter,s6Step346FrontHead,(growRow 777 s6Step346HeadGFresh ++ (growRow 795 s6Step346HeadFFresh ++ (growRow 775 s6Step346HeadGvFresh ++ (growRow 776 s6Step346HeadFvFresh ++ [])))),s6Step346F4Plan,s6Step346CounterDuring,s6Step346CounterWork,s6Step346ExitGvAfter,s6Step346FrontOut,(shrinkRow 777 s6Step346ExitGExtra ++ (shrinkRow 795 s6Step346ExitFExtra ++ (shrinkRow 776 s6Step346ExitFvExtra ++ (shrinkRow 775 s6Step346ExitGvExtra ++ []))))⟩

private def s6Step346CompletePlan : HmrEarlyStepPlan := ⟨s6Step346FrontPlan,s6Step346EarlyControlArena,s6Step346EarlyControlPlan,s6Step346CompleteMoves⟩

private theorem s6Step346Complete_apart : List.Disjoint (s6Step346CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [855, 927, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step346CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[855, 927, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step346Complete_owned : (s6Step346CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step346EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step346EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step346CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,354),(355,782),(783,790),(791,792),(793,797),(799,800),(801,802),(803,805),(806,808),(809,816),(818,819),(821,832),(833,842),(844,873),(874,877),(878,881),(882,896),(897,906),(907,914),(915,916),(917,918),(919,920),(921,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step346CompleteRelocationMove0Borrowed : Arena := ⟨s6Step346ExitGvAfter.live∪{353},Finset.union_subset s6Step346ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step346CompleteRelocationMove1Borrowed : Arena := ⟨s6Step346CompleteRelocationMove0After.live∪{354},Finset.union_subset s6Step346CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step346CompleteRelocation_move0_owned : 873∈s6Step346ExitGvAfter.live := by norm_num [s6Step346ExitGvAfter,arenaWires]

private theorem s6Step346CompleteRelocation_move0_reserve : s6Step346ExitGvAfter.reserve {353}=some s6Step346CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step346ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step346CompleteRelocation_move0_retire : s6Step346CompleteRelocationMove0Borrowed.retireSet {873}=s6Step346CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step346CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step346CompleteRelocationMove0Borrowed,s6Step346ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step346CompleteRelocation_move1_owned : 856∈s6Step346CompleteRelocationMove0After.live := by norm_num [s6Step346CompleteRelocationMove0After,arenaWires]

private theorem s6Step346CompleteRelocation_move1_reserve : s6Step346CompleteRelocationMove0After.reserve {354}=some s6Step346CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step346CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step346CompleteRelocation_move1_retire : s6Step346CompleteRelocationMove1Borrowed.retireSet {856}=s6Step346EarlyControlArena := by
  unfold Arena.retireSet s6Step346EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step346CompleteRelocationMove1Borrowed,s6Step346CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step346CompleteRelocation_checked : s6Step346ExitGvAfter.checkRepack [(873,353),(856,354)]=some s6Step346EarlyControlArena := by
  have tail2 : s6Step346EarlyControlArena.checkRepack []=some s6Step346EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step346CompleteRelocationMove0After s6Step346CompleteRelocationMove1Borrowed s6Step346EarlyControlArena s6Step346EarlyControlArena 856 354 []
    s6Step346CompleteRelocation_move1_owned s6Step346CompleteRelocation_move1_reserve s6Step346CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step346ExitGvAfter s6Step346CompleteRelocationMove0Borrowed s6Step346CompleteRelocationMove0After s6Step346EarlyControlArena 873 353 [(856,354)]
    s6Step346CompleteRelocation_move0_owned s6Step346CompleteRelocation_move0_reserve s6Step346CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step346Complete_repack : s6Step346ExitGvAfter.checkRepack s6Step346CompleteMoves=some s6Step346EarlyControlArena := by
  simpa only [s6Step346CompleteMoves] using s6Step346CompleteRelocation_checked

private theorem s6Step346EarlyControl_branchOwned : ([927] : List Wire).toFinset⊆s6Step346EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step346EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<855) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346EarlyControl_branch : compileHmrBranchRetirement s6Step346EarlyControlSigmaArena 927=some s6Step346EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step346EarlyControl_branchOwned
  · ext q
    simp [s6Step346EarlyControlOutputArena,s6Step346EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step346EarlyControl_classEqualityBorrow : s6Step346EarlyControlPositiveArena.checkBorrow (([855, 906] : List Wire).length-1) s6Step346EarlyControlLog.classWork=some s6Step346EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step346EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step346EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step346EarlyControlEqualityArena,s6Step346EarlyControlPositiveArena,s6Step346EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step346EarlyControl_classEqualityOwned : ([855, 906] : List Wire).toFinset⊆s6Step346EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step346EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346EarlyControl_classEquality : compileHmrEqualityLog s6Step346EarlyControlPositiveArena [855, 906] 0 s6Step346EarlyControlLog.classWork=some (s6Step346EarlyControlEqualityArena,s6Step346EarlyControlLog.classWork,s6Step346EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step346EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step346EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step346EarlyControl_classOwned : ([769, 805, 855] : List Wire).toFinset⊆s6Step346EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step346EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346EarlyControl_positiveBorrow : s6Step346EarlyControlZeroArena.checkBorrow (1) s6Step346EarlyControlLog.positiveWork=some s6Step346EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step346EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step346EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step346EarlyControlPositiveArena,s6Step346EarlyControlZeroArena,s6Step346EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step346EarlyControl_class : compileHmrSourceClassLog s6Step346EarlyControlZeroArena false 769 s6Step346EarlyControlZeroPlan.top 0 855 s6Step346EarlyControlLog.positiveWork s6Step346EarlyControlLog.classWork=some s6Step346EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step346EarlyControlClassPlan s6Step346EarlyControlZeroArena false 769 s6Step346EarlyControlZeroPlan.top 0 855
  constructor
  · decide +kernel
  · exact s6Step346EarlyControl_classOwned
  · exact s6Step346EarlyControl_positiveBorrow
  · exact s6Step346EarlyControl_classEquality

private theorem s6Step346EarlyControl_entryRecordOwned : ([927, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step346EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step346EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346EarlyControl_entrySigmaOwned : ([855, 254] : List Wire).toFinset⊆s6Step346EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step346EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346EarlyControl_fitBorrow : s6Step346EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step346EarlyControlLog.recordFresh=some s6Step346EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step346EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step346EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step346EarlyControlFittedArena,s6Step346EarlyControlFlagArena,s6Step346EarlyControlLog,arenaWires]

private theorem s6Step346EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step346EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step346EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346EarlyControl_fit : compileHmrRecordGrowLog s6Step346EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step346EarlyControlLog.recordFresh=some s6Step346EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step346EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step346EarlyControl_fitBorrow

private theorem s6Step346EarlyControl_flagsBorrow : s6Step346EarlyControlEqualityArena.checkBorrow (6) s6Step346EarlyControlLog.flagWork=some s6Step346EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step346EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step346EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step346EarlyControlFlagArena,s6Step346EarlyControlEqualityArena,s6Step346EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step346EarlyControl_flagsOwned : ([817, 253, 252, 251] : List Wire).toFinset⊆s6Step346EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step346EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346EarlyControl_flags : compileHmrFlagsLog s6Step346EarlyControlClassPlan.equalityArena s6Step346EarlyControlClassPlan.equality.top 253 252 251 s6Step346EarlyControlLog.flagWork=some s6Step346EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step346EarlyControl_flagsOwned⟩
  · exact s6Step346EarlyControl_flagsBorrow

private theorem s6Step346EarlyControl_historyBorrow : s6Step346EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step346EarlyControlLog.recordFresh=some s6Step346EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step346EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step346EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step346EarlyControlHistoryArena,s6Step346EarlyControlArena,s6Step346EarlyControlLog,arenaWires]

private theorem s6Step346EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step346EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step346EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346EarlyControl_history : compileHmrRecordGrowLog s6Step346EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step346EarlyControlLog.recordFresh=some s6Step346EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step346EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step346EarlyControl_historyBorrow

private theorem s6Step346EarlyControl_sigmaOwned : ([254, 855] : List Wire).toFinset⊆s6Step346EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step346EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346EarlyControl_sigmaReleaseOwned : ([855] : List Wire).toFinset⊆s6Step346EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step346EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346EarlyControl_sigmaRelease : s6Step346EarlyControlHistoryArena.release {855} (fun _ => false)=some s6Step346EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step346EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step346EarlyControlSigmaArena,s6Step346EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step346EarlyControl_sigma : compileHmrSigmaDropLog s6Step346EarlyControlHistoryArena false 0 0 254 855 []=some s6Step346EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step346EarlyControl_sigmaOwned⟩
  · exact s6Step346EarlyControl_sigmaRelease

private theorem s6Step346EarlyControl_zeroBorrow : s6Step346EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step346EarlyControlLog.zeroWork=some s6Step346EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step346EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step346EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step346EarlyControlZeroArena,s6Step346EarlyControlArena,s6Step346EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step346EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step346EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step346EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<856) ∨ (857≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346EarlyControl_zero : compileHmrEqualityLog s6Step346EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step346EarlyControlLog.zeroWork=some (s6Step346EarlyControlZeroArena,s6Step346EarlyControlLog.zeroWork,s6Step346EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step346EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step346EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step346EarlyControl_logged : s6Step346EarlyControlPlan.Logged s6Step346EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 855 254 253 252 251 927 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step346EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step346EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step346EarlyControl_zero
  · exact s6Step346EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step346EarlyControl_flags
  · exact s6Step346EarlyControl_fit
  · exact s6Step346EarlyControl_history
  · exact s6Step346EarlyControl_sigma
  · exact s6Step346EarlyControl_branch

private theorem s6Step346EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step346EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 855 254 253 252 251 927 60 s6Step346EarlyControlLog=some s6Step346EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step346EarlyControlPlan s6Step346EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 855 254 253 252 251 927 60 s6Step346EarlyControl_logged

private def s6Step346EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354],795⟩

private def s6Step346EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 802],776⟩

private def s6Step346EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 843],777⟩

private def s6Step346EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903],775⟩

private def s6Step346FrontBank : WindowBank := ⟨s6Step346EntryFRow,s6Step346EntryGRow,s6Step346EntryFvRow,s6Step346EntryGvRow⟩

private def s6Step346Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 906, 817, 795]

private def s6Step346Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 843, 877, 777]

private def s6Step346Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 802, 805, 776]

private def s6Step346Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 881, 775]

private theorem s6Step346Counter_apart : Disjoint s6Step346HeadFvAfter.live s6Step346CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step346HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346Counter_borrowed : s6Step346HeadFvAfter.checkBorrow 4 s6Step346CounterWork=some s6Step346CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step346HeadFvAfter s6Step346CounterDuring s6Step346CounterWork.toFinset s6Step346Counter_bounded s6Step346Counter_apart rfl

private theorem s6Step346Counter_owned : (855::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step346HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step346HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346Counter_checked : compileHmrCounterStepLog s6Step346HeadFvAfter true 855 [774, 773, 772, 771, 770, 769] s6Step346CounterWork=some s6Step346CounterDuring := by
  have owned : ∀q∈855::[774, 773, 772, 771, 770, 769],q∈s6Step346HeadFvAfter.live := fun q hq => s6Step346Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step346Counter_borrowed

private def s6Step346EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step346EntryBank_incomingDistinct : ([s6Step346EntryFRow,s6Step346EntryGRow,s6Step346EntryFvRow,s6Step346EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346EntryF_Incoming : rowsOwned s6Step346EntryFBefore [s6Step346EntryFRow,s6Step346EntryGRow,s6Step346EntryFvRow,s6Step346EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step346EntryFRow,s6Step346EntryGRow,s6Step346EntryFvRow,s6Step346EntryGvRow] 0 s6Step346EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step346EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step346EntryBank_outgoingOwned : rowsOwned s6Step346EntryGvAfter [s6Step346EntryFOut,s6Step346EntryGOut,s6Step346EntryFvOut,s6Step346EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step346EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step346EntryF_Outgoing : rowsOwned s6Step346EntryGvAfter [s6Step346EntryFOut,s6Step346EntryGOut,s6Step346EntryFvOut,s6Step346EntryGvOut] :=
  hmrRows_owned_drop s6Step346EntryGvAfter [s6Step346EntryFOut,s6Step346EntryGOut,s6Step346EntryFvOut,s6Step346EntryGvOut] 0 s6Step346EntryBank_outgoingOwned

private theorem s6Step346EntryF_distinct : (s6Step346EntryFRow.sign::s6Step346EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346EntryF_owned : (s6Step346EntryFRow.sign::s6Step346EntryFRow.payload).toFinset⊆s6Step346EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step346EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346EntryF_reserved : s6Step346EntryFBefore.reserve s6Step346EntryFFresh.toFinset=some s6Step346EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step346EntryFFresh,arenaWires]
  · norm_num [s6Step346EntryFBefore,s6Step346EntryFFresh,arenaWires]
  · ext q
    simp only [s6Step346EntryFAfter,s6Step346EntryFBefore,s6Step346EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step346EntryF_checked : planRowResizeLog s6Step346EntryFBefore s6Step346EntryFRow 100 s6Step346EntryFFresh=
    some (s6Step346EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 906],795⟩,growRow 795 s6Step346EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step346EntryFBefore s6Step346EntryFAfter s6Step346EntryFRow 100 s6Step346EntryFFresh
    s6Step346EntryF_distinct s6Step346EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step346EntryF_reserved
  have rowEq : WindowRow.mk (s6Step346EntryFRow.payload++s6Step346EntryFFresh) s6Step346EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 906],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step346EntryFvAfter : Arena := s6Step346EntryFAfter

private def s6Step346EntryFvBefore : Arena := s6Step346EntryFAfter

private theorem s6Step346EntryFv_Incoming : rowsOwned s6Step346EntryFvBefore [s6Step346EntryFvRow,s6Step346EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step346EntryFRow,s6Step346EntryGRow,s6Step346EntryFvRow,s6Step346EntryGvRow] 2 s6Step346EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step346EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step346EntryFv_Outgoing : rowsOwned s6Step346EntryGvAfter [s6Step346EntryFvOut,s6Step346EntryGvOut] :=
  hmrRows_owned_drop s6Step346EntryGvAfter [s6Step346EntryFOut,s6Step346EntryGOut,s6Step346EntryFvOut,s6Step346EntryGvOut] 2 s6Step346EntryBank_outgoingOwned

private theorem s6Step346EntryFv_distinct : (s6Step346EntryFvRow.sign::s6Step346EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346EntryFv_owned : (s6Step346EntryFvRow.sign::s6Step346EntryFvRow.payload).toFinset⊆s6Step346EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step346EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346EntryFv_reserved : s6Step346EntryFvBefore.reserve s6Step346EntryFvFresh.toFinset=some s6Step346EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step346EntryFvFresh,arenaWires]
  · norm_num [s6Step346EntryFvBefore,s6Step346EntryFAfter,s6Step346EntryFvFresh,arenaWires]
  · simp only [s6Step346EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step346EntryFv_checked : planRowResizeLog s6Step346EntryFvBefore s6Step346EntryFvRow 190 s6Step346EntryFvFresh=
    some (s6Step346EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 802],776⟩,growRow 776 s6Step346EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step346EntryFvBefore s6Step346EntryFvAfter s6Step346EntryFvRow 190 s6Step346EntryFvFresh
    s6Step346EntryFv_distinct s6Step346EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step346EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step346EntryFvRow.payload++s6Step346EntryFvFresh) s6Step346EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 802],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step346EntryGAfter : Arena := s6Step346EntryFAfter

private def s6Step346EntryGBefore : Arena := s6Step346EntryFAfter

private theorem s6Step346EntryG_Incoming : rowsOwned s6Step346EntryGBefore [s6Step346EntryGRow,s6Step346EntryFvRow,s6Step346EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step346EntryFRow,s6Step346EntryGRow,s6Step346EntryFvRow,s6Step346EntryGvRow] 1 s6Step346EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step346EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step346EntryG_Outgoing : rowsOwned s6Step346EntryGvAfter [s6Step346EntryGOut,s6Step346EntryFvOut,s6Step346EntryGvOut] :=
  hmrRows_owned_drop s6Step346EntryGvAfter [s6Step346EntryFOut,s6Step346EntryGOut,s6Step346EntryFvOut,s6Step346EntryGvOut] 1 s6Step346EntryBank_outgoingOwned

private theorem s6Step346EntryG_distinct : (s6Step346EntryGRow.sign::s6Step346EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346EntryG_owned : (s6Step346EntryGRow.sign::s6Step346EntryGRow.payload).toFinset⊆s6Step346EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step346EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346EntryG_reserved : s6Step346EntryGBefore.reserve s6Step346EntryGFresh.toFinset=some s6Step346EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step346EntryGFresh,arenaWires]
  · norm_num [s6Step346EntryGBefore,s6Step346EntryFAfter,s6Step346EntryGFresh,arenaWires]
  · simp only [s6Step346EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step346EntryG_checked : planRowResizeLog s6Step346EntryGBefore s6Step346EntryGRow 100 s6Step346EntryGFresh=
    some (s6Step346EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 843],777⟩,growRow 777 s6Step346EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step346EntryGBefore s6Step346EntryGAfter s6Step346EntryGRow 100 s6Step346EntryGFresh
    s6Step346EntryG_distinct s6Step346EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step346EntryG_reserved
  have rowEq : WindowRow.mk (s6Step346EntryGRow.payload++s6Step346EntryGFresh) s6Step346EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 843],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step346EntryGvBefore : Arena := s6Step346EntryFAfter

private theorem s6Step346EntryGv_Incoming : rowsOwned s6Step346EntryGvBefore [s6Step346EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step346EntryFRow,s6Step346EntryGRow,s6Step346EntryFvRow,s6Step346EntryGvRow] 3 s6Step346EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step346EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step346EntryGv_Outgoing : rowsOwned s6Step346EntryGvAfter [s6Step346EntryGvOut] :=
  hmrRows_owned_drop s6Step346EntryGvAfter [s6Step346EntryFOut,s6Step346EntryGOut,s6Step346EntryFvOut,s6Step346EntryGvOut] 3 s6Step346EntryBank_outgoingOwned

private theorem s6Step346EntryGv_distinct : (s6Step346EntryGvRow.sign::s6Step346EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346EntryGv_owned : (s6Step346EntryGvRow.sign::s6Step346EntryGvRow.payload).toFinset⊆s6Step346EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step346EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346EntryGv_reserved : s6Step346EntryGvBefore.reserve s6Step346EntryGvFresh.toFinset=some s6Step346EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step346EntryGvFresh,arenaWires]
  · norm_num [s6Step346EntryGvBefore,s6Step346EntryFAfter,s6Step346EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step346EntryGvAfter,s6Step346EntryGvBefore,s6Step346EntryFAfter,s6Step346EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step346EntryGv_checked : planRowResizeLog s6Step346EntryGvBefore s6Step346EntryGvRow 190 s6Step346EntryGvFresh=
    some (s6Step346EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩,growRow 775 s6Step346EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step346EntryGvBefore s6Step346EntryGvAfter s6Step346EntryGvRow 190 s6Step346EntryGvFresh
    s6Step346EntryGv_distinct s6Step346EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step346EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step346EntryGvRow.payload++s6Step346EntryGvFresh) s6Step346EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step346EntryBank_rows : planWindowRowsLog s6Step346EntryFBefore [(s6Step346EntryFRow,100),(s6Step346EntryGRow,100),(s6Step346EntryFvRow,190),(s6Step346EntryGvRow,190)] [s6Step346EntryFFresh,s6Step346EntryGFresh,s6Step346EntryFvFresh,s6Step346EntryGvFresh]=
    some (s6Step346EntryGvAfter,[s6Step346EntryFOut,s6Step346EntryGOut,s6Step346EntryFvOut,s6Step346EntryGvOut],(growRow 795 s6Step346EntryFFresh ++ (growRow 777 s6Step346EntryGFresh ++ (growRow 776 s6Step346EntryFvFresh ++ (growRow 775 s6Step346EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step346EntryGvAfter [] []=some (s6Step346EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step346EntryGvBefore s6Step346EntryGvAfter s6Step346EntryGvAfter
    s6Step346EntryGvRow s6Step346EntryGvOut 190 s6Step346EntryGvFresh [] [] []
    (growRow 775 s6Step346EntryGvFresh) ([]) s6Step346EntryGv_Incoming s6Step346EntryGv_checked h4 s6Step346EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step346EntryFvBefore s6Step346EntryFvAfter s6Step346EntryGvAfter
    s6Step346EntryFvRow s6Step346EntryFvOut 190 s6Step346EntryFvFresh [(s6Step346EntryGvRow,190)] [s6Step346EntryGvFresh] [s6Step346EntryGvOut]
    (growRow 776 s6Step346EntryFvFresh) ((growRow 775 s6Step346EntryGvFresh ++ [])) s6Step346EntryFv_Incoming s6Step346EntryFv_checked h3 s6Step346EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step346EntryGBefore s6Step346EntryGAfter s6Step346EntryGvAfter
    s6Step346EntryGRow s6Step346EntryGOut 100 s6Step346EntryGFresh [(s6Step346EntryFvRow,190),(s6Step346EntryGvRow,190)] [s6Step346EntryFvFresh,s6Step346EntryGvFresh] [s6Step346EntryFvOut,s6Step346EntryGvOut]
    (growRow 777 s6Step346EntryGFresh) ((growRow 776 s6Step346EntryFvFresh ++ (growRow 775 s6Step346EntryGvFresh ++ []))) s6Step346EntryG_Incoming s6Step346EntryG_checked h2 s6Step346EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step346EntryFBefore s6Step346EntryFAfter s6Step346EntryGvAfter
    s6Step346EntryFRow s6Step346EntryFOut 100 s6Step346EntryFFresh [(s6Step346EntryGRow,100),(s6Step346EntryFvRow,190),(s6Step346EntryGvRow,190)] [s6Step346EntryGFresh,s6Step346EntryFvFresh,s6Step346EntryGvFresh] [s6Step346EntryGOut,s6Step346EntryFvOut,s6Step346EntryGvOut]
    (growRow 795 s6Step346EntryFFresh) ((growRow 777 s6Step346EntryGFresh ++ (growRow 776 s6Step346EntryFvFresh ++ (growRow 775 s6Step346EntryGvFresh ++ [])))) s6Step346EntryF_Incoming s6Step346EntryF_checked h1 s6Step346EntryF_Outgoing
  exact h0

private theorem s6Step346EntryBank_checked : compileHmrBankResizeLog .entry s6Step346EntryFBefore ⟨s6Step346EntryFRow,s6Step346EntryGRow,s6Step346EntryFvRow,s6Step346EntryGvRow⟩ ⟨100,100,190,190⟩ [s6Step346EntryFFresh,s6Step346EntryGFresh,s6Step346EntryFvFresh,s6Step346EntryGvFresh]=
    some (s6Step346EntryGvAfter,⟨s6Step346EntryFOut,s6Step346EntryGOut,s6Step346EntryFvOut,s6Step346EntryGvOut⟩,(growRow 795 s6Step346EntryFFresh ++ (growRow 777 s6Step346EntryGFresh ++ (growRow 776 s6Step346EntryFvFresh ++ (growRow 775 s6Step346EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step346EntryBank_rows]
  rfl

private def s6Step346ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<353) ∨ (355≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346ExitFBefore : Arena := s6Step346ExitGAfter

private def s6Step346ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 906, 817],795⟩

private def s6Step346ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 802, 805],776⟩

private def s6Step346ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 843, 877],777⟩

private def s6Step346ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 881],775⟩

private theorem s6Step346ExitBank_incomingDistinct : ([s6Step346ExitGRow,s6Step346ExitFRow,s6Step346ExitFvRow,s6Step346ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346ExitF_Incoming : rowsOwned s6Step346ExitFBefore [s6Step346ExitFRow,s6Step346ExitFvRow,s6Step346ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step346ExitGRow,s6Step346ExitFRow,s6Step346ExitFvRow,s6Step346ExitGvRow] 1 s6Step346ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step346ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step346ExitBank_outgoingOwned : rowsOwned s6Step346ExitGvAfter [s6Step346ExitGOut,s6Step346ExitFOut,s6Step346ExitFvOut,s6Step346ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step346ExitGvAfter (fun q => (0≤q ∧ q<353) ∨ (355≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step346ExitF_Outgoing : rowsOwned s6Step346ExitGvAfter [s6Step346ExitFOut,s6Step346ExitFvOut,s6Step346ExitGvOut] :=
  hmrRows_owned_drop s6Step346ExitGvAfter [s6Step346ExitGOut,s6Step346ExitFOut,s6Step346ExitFvOut,s6Step346ExitGvOut] 1 s6Step346ExitBank_outgoingOwned

private theorem s6Step346ExitF_distinct : (s6Step346ExitFRow.sign::s6Step346ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346ExitF_owned : (s6Step346ExitFRow.sign::s6Step346ExitFRow.payload).toFinset⊆s6Step346ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step346ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346ExitF_retired : s6Step346ExitFBefore.retireSet s6Step346ExitFExtra.toFinset=s6Step346ExitFAfter := by
  unfold Arena.retireSet s6Step346ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step346ExitFBefore,s6Step346ExitGAfter,s6Step346ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step346ExitF_checked : planRowResizeLog s6Step346ExitFBefore s6Step346ExitFRow 97 []=
    some (s6Step346ExitFAfter,s6Step346ExitFOut,shrinkRow 795 s6Step346ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step346ExitFBefore s6Step346ExitFRow 97 s6Step346ExitF_distinct s6Step346ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step346ExitFRow.payload.take 97) s6Step346ExitFRow.sign=s6Step346ExitFOut := by decide +kernel
  have hi : s6Step346ExitFRow.payload.drop 97=s6Step346ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step346ExitF_retired] at result
  exact result

private def s6Step346ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<353) ∨ (355≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346ExitFvBefore : Arena := s6Step346ExitFAfter

private theorem s6Step346ExitFv_Incoming : rowsOwned s6Step346ExitFvBefore [s6Step346ExitFvRow,s6Step346ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step346ExitGRow,s6Step346ExitFRow,s6Step346ExitFvRow,s6Step346ExitGvRow] 2 s6Step346ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step346ExitFvBefore (fun q => (0≤q ∧ q<353) ∨ (355≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step346ExitFv_Outgoing : rowsOwned s6Step346ExitGvAfter [s6Step346ExitFvOut,s6Step346ExitGvOut] :=
  hmrRows_owned_drop s6Step346ExitGvAfter [s6Step346ExitGOut,s6Step346ExitFOut,s6Step346ExitFvOut,s6Step346ExitGvOut] 2 s6Step346ExitBank_outgoingOwned

private theorem s6Step346ExitFv_distinct : (s6Step346ExitFvRow.sign::s6Step346ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346ExitFv_owned : (s6Step346ExitFvRow.sign::s6Step346ExitFvRow.payload).toFinset⊆s6Step346ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step346ExitFvBefore (fun q => (0≤q ∧ q<353) ∨ (355≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346ExitFv_retired : s6Step346ExitFvBefore.retireSet s6Step346ExitFvExtra.toFinset=s6Step346ExitFvAfter := by
  unfold Arena.retireSet s6Step346ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step346ExitFvBefore,s6Step346ExitFAfter,s6Step346ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step346ExitFv_checked : planRowResizeLog s6Step346ExitFvBefore s6Step346ExitFvRow 189 []=
    some (s6Step346ExitFvAfter,s6Step346ExitFvOut,shrinkRow 776 s6Step346ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step346ExitFvBefore s6Step346ExitFvRow 189 s6Step346ExitFv_distinct s6Step346ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step346ExitFvRow.payload.take 189) s6Step346ExitFvRow.sign=s6Step346ExitFvOut := by decide +kernel
  have hi : s6Step346ExitFvRow.payload.drop 189=s6Step346ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step346ExitFv_retired] at result
  exact result

private def s6Step346ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step346ExitG_Incoming : rowsOwned s6Step346ExitGBefore [s6Step346ExitGRow,s6Step346ExitFRow,s6Step346ExitFvRow,s6Step346ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step346ExitGRow,s6Step346ExitFRow,s6Step346ExitFvRow,s6Step346ExitGvRow] 0 s6Step346ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step346ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step346ExitG_Outgoing : rowsOwned s6Step346ExitGvAfter [s6Step346ExitGOut,s6Step346ExitFOut,s6Step346ExitFvOut,s6Step346ExitGvOut] :=
  hmrRows_owned_drop s6Step346ExitGvAfter [s6Step346ExitGOut,s6Step346ExitFOut,s6Step346ExitFvOut,s6Step346ExitGvOut] 0 s6Step346ExitBank_outgoingOwned

private theorem s6Step346ExitG_distinct : (s6Step346ExitGRow.sign::s6Step346ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346ExitG_owned : (s6Step346ExitGRow.sign::s6Step346ExitGRow.payload).toFinset⊆s6Step346ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step346ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346ExitG_retired : s6Step346ExitGBefore.retireSet s6Step346ExitGExtra.toFinset=s6Step346ExitGAfter := by
  unfold Arena.retireSet s6Step346ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step346ExitGBefore,s6Step346ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step346ExitG_checked : planRowResizeLog s6Step346ExitGBefore s6Step346ExitGRow 99 []=
    some (s6Step346ExitGAfter,s6Step346ExitGOut,shrinkRow 777 s6Step346ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step346ExitGBefore s6Step346ExitGRow 99 s6Step346ExitG_distinct s6Step346ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step346ExitGRow.payload.take 99) s6Step346ExitGRow.sign=s6Step346ExitGOut := by decide +kernel
  have hi : s6Step346ExitGRow.payload.drop 99=s6Step346ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step346ExitG_retired] at result
  exact result

private def s6Step346ExitGvBefore : Arena := s6Step346ExitFvAfter

private theorem s6Step346ExitGv_Incoming : rowsOwned s6Step346ExitGvBefore [s6Step346ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step346ExitGRow,s6Step346ExitFRow,s6Step346ExitFvRow,s6Step346ExitGvRow] 3 s6Step346ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step346ExitGvBefore (fun q => (0≤q ∧ q<353) ∨ (355≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step346ExitGv_Outgoing : rowsOwned s6Step346ExitGvAfter [s6Step346ExitGvOut] :=
  hmrRows_owned_drop s6Step346ExitGvAfter [s6Step346ExitGOut,s6Step346ExitFOut,s6Step346ExitFvOut,s6Step346ExitGvOut] 3 s6Step346ExitBank_outgoingOwned

private theorem s6Step346ExitGv_distinct : (s6Step346ExitGvRow.sign::s6Step346ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346ExitGv_owned : (s6Step346ExitGvRow.sign::s6Step346ExitGvRow.payload).toFinset⊆s6Step346ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step346ExitGvBefore (fun q => (0≤q ∧ q<353) ∨ (355≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346ExitGv_retired : s6Step346ExitGvBefore.retireSet s6Step346ExitGvExtra.toFinset=s6Step346ExitGvAfter := by
  unfold Arena.retireSet s6Step346ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step346ExitGvBefore,s6Step346ExitFvAfter,s6Step346ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step346ExitGv_checked : planRowResizeLog s6Step346ExitGvBefore s6Step346ExitGvRow 190 []=
    some (s6Step346ExitGvAfter,s6Step346ExitGvOut,shrinkRow 775 s6Step346ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step346ExitGvBefore s6Step346ExitGvRow 190 s6Step346ExitGv_distinct s6Step346ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step346ExitGvRow.payload.take 190) s6Step346ExitGvRow.sign=s6Step346ExitGvOut := by decide +kernel
  have hi : s6Step346ExitGvRow.payload.drop 190=s6Step346ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step346ExitGv_retired] at result
  exact result

private theorem s6Step346ExitBank_rows : planWindowRowsLog s6Step346ExitGBefore [(s6Step346ExitGRow,99),(s6Step346ExitFRow,97),(s6Step346ExitFvRow,189),(s6Step346ExitGvRow,190)] [[],[],[],[]]=
    some (s6Step346ExitGvAfter,[s6Step346ExitGOut,s6Step346ExitFOut,s6Step346ExitFvOut,s6Step346ExitGvOut],(shrinkRow 777 s6Step346ExitGExtra ++ (shrinkRow 795 s6Step346ExitFExtra ++ (shrinkRow 776 s6Step346ExitFvExtra ++ (shrinkRow 775 s6Step346ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step346ExitGvAfter [] []=some (s6Step346ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step346ExitGvBefore s6Step346ExitGvAfter s6Step346ExitGvAfter
    s6Step346ExitGvRow s6Step346ExitGvOut 190 [] [] [] []
    (shrinkRow 775 s6Step346ExitGvExtra) ([]) s6Step346ExitGv_Incoming s6Step346ExitGv_checked h4 s6Step346ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step346ExitFvBefore s6Step346ExitFvAfter s6Step346ExitGvAfter
    s6Step346ExitFvRow s6Step346ExitFvOut 189 [] [(s6Step346ExitGvRow,190)] [[]] [s6Step346ExitGvOut]
    (shrinkRow 776 s6Step346ExitFvExtra) ((shrinkRow 775 s6Step346ExitGvExtra ++ [])) s6Step346ExitFv_Incoming s6Step346ExitFv_checked h3 s6Step346ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step346ExitFBefore s6Step346ExitFAfter s6Step346ExitGvAfter
    s6Step346ExitFRow s6Step346ExitFOut 97 [] [(s6Step346ExitFvRow,189),(s6Step346ExitGvRow,190)] [[],[]] [s6Step346ExitFvOut,s6Step346ExitGvOut]
    (shrinkRow 795 s6Step346ExitFExtra) ((shrinkRow 776 s6Step346ExitFvExtra ++ (shrinkRow 775 s6Step346ExitGvExtra ++ []))) s6Step346ExitF_Incoming s6Step346ExitF_checked h2 s6Step346ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step346ExitGBefore s6Step346ExitGAfter s6Step346ExitGvAfter
    s6Step346ExitGRow s6Step346ExitGOut 99 [] [(s6Step346ExitFRow,97),(s6Step346ExitFvRow,189),(s6Step346ExitGvRow,190)] [[],[],[]] [s6Step346ExitFOut,s6Step346ExitFvOut,s6Step346ExitGvOut]
    (shrinkRow 777 s6Step346ExitGExtra) ((shrinkRow 795 s6Step346ExitFExtra ++ (shrinkRow 776 s6Step346ExitFvExtra ++ (shrinkRow 775 s6Step346ExitGvExtra ++ [])))) s6Step346ExitG_Incoming s6Step346ExitG_checked h1 s6Step346ExitG_Outgoing
  exact h0

private theorem s6Step346ExitBank_checked : compileHmrBankResizeLog .exit s6Step346ExitGBefore ⟨s6Step346ExitFRow,s6Step346ExitGRow,s6Step346ExitFvRow,s6Step346ExitGvRow⟩ ⟨97,99,189,190⟩ [[],[],[],[]]=
    some (s6Step346ExitGvAfter,⟨s6Step346ExitFOut,s6Step346ExitGOut,s6Step346ExitFvOut,s6Step346ExitGvOut⟩,(shrinkRow 777 s6Step346ExitGExtra ++ (shrinkRow 795 s6Step346ExitFExtra ++ (shrinkRow 776 s6Step346ExitFvExtra ++ (shrinkRow 775 s6Step346ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step346ExitBank_rows]
  rfl

private theorem s6Step346Add0_apart : Disjoint s6Step346Add0Arena.live s6Step346Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step346Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346Add0_card : s6Step346Add0Arena.live.card=914 := by
  decide +kernel

private theorem s6Step346Add0_borrowed : s6Step346Add0Arena.checkBorrow (hmrHybridCount s6Step346Add0Arena s6Step346Add0B.length) s6Step346Add0Work=some s6Step346Add0During := by
  have len : s6Step346Add0Work.length=hmrHybridCount s6Step346Add0Arena s6Step346Add0B.length := by
    rw [hmrHybridCount,s6Step346Add0_card]
    decide +kernel
  have nd : s6Step346Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step346Add0Arena s6Step346Add0During s6Step346Add0Work.toFinset s6Step346Add0_bounded s6Step346Add0_apart rfl

private theorem s6Step346Add0_distinct : (792::927::816::(s6Step346Add0A++s6Step346Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346Add0_owned : (792::927::816::(s6Step346Add0A++s6Step346Add0B)).toFinset⊆s6Step346Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step346Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346Add0_checked : compileHmrHybridCinLog s6Step346Add0Arena 927 792 816 s6Step346Add0A s6Step346Add0B s6Step346Add0Work=some s6Step346Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step346Add0Arena s6Step346Add0During 927 792 816 s6Step346Add0A s6Step346Add0B s6Step346Add0Work
    (by decide +kernel) (by decide +kernel) s6Step346Add0_distinct
    (fun q hq => s6Step346Add0_owned (List.mem_toFinset.mpr hq)) s6Step346Add0_borrowed

private theorem s6Step346Add1_apart : Disjoint s6Step346Add1Arena.live s6Step346Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step346Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346Add1_card : s6Step346Add1Arena.live.card=914 := by
  decide +kernel

private theorem s6Step346Add1_borrowed : s6Step346Add1Arena.checkBorrow (hmrHybridCount s6Step346Add1Arena s6Step346Add1B.length) s6Step346Add1Work=some s6Step346Add1During := by
  have len : s6Step346Add1Work.length=hmrHybridCount s6Step346Add1Arena s6Step346Add1B.length := by
    rw [hmrHybridCount,s6Step346Add1_card]
    decide +kernel
  have nd : s6Step346Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step346Add1Arena s6Step346Add1During s6Step346Add1Work.toFinset s6Step346Add1_bounded s6Step346Add1_apart rfl

private theorem s6Step346Add1_distinct : (792::927::816::(s6Step346Add1A++s6Step346Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346Add1_owned : (792::927::816::(s6Step346Add1A++s6Step346Add1B)).toFinset⊆s6Step346Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step346Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346Add1_checked : compileHmrHybridCinLog s6Step346Add1Arena 927 792 816 s6Step346Add1A s6Step346Add1B s6Step346Add1Work=some s6Step346Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step346Add1Arena s6Step346Add1During 927 792 816 s6Step346Add1A s6Step346Add1B s6Step346Add1Work
    (by decide +kernel) (by decide +kernel) s6Step346Add1_distinct
    (fun q hq => s6Step346Add1_owned (List.mem_toFinset.mpr hq)) s6Step346Add1_borrowed

private theorem s6Step346F4_apart : Disjoint (s6Step346Add0A++s6Step346Add0B).toFinset (s6Step346Add1A++s6Step346Add1B).toFinset := by
  have nd : ((s6Step346Add0A++s6Step346Add0B)++(s6Step346Add1A++s6Step346Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step346F4_carry : s6Step346F4FlagArena.checkBorrow 1 [816]=some s6Step346Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step346F4FlagArena,s6Step346HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step346F4FlagArena,s6Step346HeadFvAfter,s6Step346Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step346F4_distinct : (855::927::792::816::((s6Step346Add0A++s6Step346Add1A)++(s6Step346Add0B++s6Step346Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346F4_flag : s6Step346HeadFvAfter.checkBorrow 1 [792]=some s6Step346F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step346HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step346F4_owned : (855::927::((s6Step346Add0A++s6Step346Add1A)++(s6Step346Add0B++s6Step346Add1B))).toFinset⊆s6Step346HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step346HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346F4_checked : compileHmrHybridF4Log s6Step346HeadFvAfter 855 927 s6Step346Add0A s6Step346Add0B s6Step346Add1A s6Step346Add1B [792] [816] s6Step346Add0Work s6Step346Add1Work=some s6Step346F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step346HeadFvAfter s6Step346F4FlagArena s6Step346Add0Arena s6Step346Add0During s6Step346Add1During 855 927
    s6Step346Add0A s6Step346Add0B s6Step346Add1A s6Step346Add1B [792] [816] s6Step346Add0Work s6Step346Add1Work
    (fun q hq => s6Step346F4_owned (List.mem_toFinset.mpr hq)) s6Step346F4_flag s6Step346F4_carry
    s6Step346F4_distinct s6Step346F4_apart s6Step346Add0_checked s6Step346Add1_checked

private theorem s6Step346Front_branch : s6Step346FrontSigmaArena.checkBorrow 1 [927]=some s6Step346HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step346FrontSigmaArena,s6Step346EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step346FrontSigmaArena,s6Step346EntryGvAfter,s6Step346HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step346Front_entry : HmrFrontEntryValid s6Step346EntryFBefore s6Step346FrontBank 100 190 ⟨97,99,189,190⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step346FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step346EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step346EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<855) ∨ (856≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step346FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step346Front_sigma : s6Step346EntryGvAfter.checkBorrow 1 [855]=some s6Step346FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step346EntryGvAfter,arenaWires]
  · rfl

private def s6Step346HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346HeadFBefore : Arena := s6Step346HeadGAfter

private def s6Step346HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 906],795⟩

private def s6Step346HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 802],776⟩

private def s6Step346HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 843],777⟩

private def s6Step346HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915],775⟩

private theorem s6Step346HeadBank_incomingDistinct : ([s6Step346HeadGRow,s6Step346HeadFRow,s6Step346HeadGvRow,s6Step346HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346HeadF_Incoming : rowsOwned s6Step346HeadFBefore [s6Step346HeadFRow,s6Step346HeadGvRow,s6Step346HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step346HeadGRow,s6Step346HeadFRow,s6Step346HeadGvRow,s6Step346HeadFvRow] 1 s6Step346HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step346HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step346HeadBank_outgoingOwned : rowsOwned s6Step346HeadFvAfter [s6Step346HeadGOut,s6Step346HeadFOut,s6Step346HeadGvOut,s6Step346HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step346HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step346HeadF_Outgoing : rowsOwned s6Step346HeadFvAfter [s6Step346HeadFOut,s6Step346HeadGvOut,s6Step346HeadFvOut] :=
  hmrRows_owned_drop s6Step346HeadFvAfter [s6Step346HeadGOut,s6Step346HeadFOut,s6Step346HeadGvOut,s6Step346HeadFvOut] 1 s6Step346HeadBank_outgoingOwned

private theorem s6Step346HeadF_distinct : (s6Step346HeadFRow.sign::s6Step346HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346HeadF_owned : (s6Step346HeadFRow.sign::s6Step346HeadFRow.payload).toFinset⊆s6Step346HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step346HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346HeadF_reserved : s6Step346HeadFBefore.reserve s6Step346HeadFFresh.toFinset=some s6Step346HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step346HeadFFresh,arenaWires]
  · norm_num [s6Step346HeadFBefore,s6Step346HeadGAfter,s6Step346HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step346HeadFAfter,s6Step346HeadFBefore,s6Step346HeadGAfter,s6Step346HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step346HeadF_checked : planRowResizeLog s6Step346HeadFBefore s6Step346HeadFRow 101 s6Step346HeadFFresh=
    some (s6Step346HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 906, 817],795⟩,growRow 795 s6Step346HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step346HeadFBefore s6Step346HeadFAfter s6Step346HeadFRow 101 s6Step346HeadFFresh
    s6Step346HeadF_distinct s6Step346HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step346HeadF_reserved
  have rowEq : WindowRow.mk (s6Step346HeadFRow.payload++s6Step346HeadFFresh) s6Step346HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 906, 817],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step346HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step346HeadFvBefore : Arena := s6Step346HeadGvAfter

private theorem s6Step346HeadFv_Incoming : rowsOwned s6Step346HeadFvBefore [s6Step346HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step346HeadGRow,s6Step346HeadFRow,s6Step346HeadGvRow,s6Step346HeadFvRow] 3 s6Step346HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step346HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step346HeadFv_Outgoing : rowsOwned s6Step346HeadFvAfter [s6Step346HeadFvOut] :=
  hmrRows_owned_drop s6Step346HeadFvAfter [s6Step346HeadGOut,s6Step346HeadFOut,s6Step346HeadGvOut,s6Step346HeadFvOut] 3 s6Step346HeadBank_outgoingOwned

private theorem s6Step346HeadFv_distinct : (s6Step346HeadFvRow.sign::s6Step346HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346HeadFv_owned : (s6Step346HeadFvRow.sign::s6Step346HeadFvRow.payload).toFinset⊆s6Step346HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step346HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346HeadFv_reserved : s6Step346HeadFvBefore.reserve s6Step346HeadFvFresh.toFinset=some s6Step346HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step346HeadFvFresh,arenaWires]
  · norm_num [s6Step346HeadFvBefore,s6Step346HeadGvAfter,s6Step346HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step346HeadFvAfter,s6Step346HeadFvBefore,s6Step346HeadGvAfter,s6Step346HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step346HeadFv_checked : planRowResizeLog s6Step346HeadFvBefore s6Step346HeadFvRow 191 s6Step346HeadFvFresh=
    some (s6Step346HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 802, 805],776⟩,growRow 776 s6Step346HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step346HeadFvBefore s6Step346HeadFvAfter s6Step346HeadFvRow 191 s6Step346HeadFvFresh
    s6Step346HeadFv_distinct s6Step346HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step346HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step346HeadFvRow.payload++s6Step346HeadFvFresh) s6Step346HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 802, 805],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step346HeadG_Incoming : rowsOwned s6Step346HeadGBefore [s6Step346HeadGRow,s6Step346HeadFRow,s6Step346HeadGvRow,s6Step346HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step346HeadGRow,s6Step346HeadFRow,s6Step346HeadGvRow,s6Step346HeadFvRow] 0 s6Step346HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step346HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step346HeadG_Outgoing : rowsOwned s6Step346HeadFvAfter [s6Step346HeadGOut,s6Step346HeadFOut,s6Step346HeadGvOut,s6Step346HeadFvOut] :=
  hmrRows_owned_drop s6Step346HeadFvAfter [s6Step346HeadGOut,s6Step346HeadFOut,s6Step346HeadGvOut,s6Step346HeadFvOut] 0 s6Step346HeadBank_outgoingOwned

private theorem s6Step346HeadG_distinct : (s6Step346HeadGRow.sign::s6Step346HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346HeadG_owned : (s6Step346HeadGRow.sign::s6Step346HeadGRow.payload).toFinset⊆s6Step346HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step346HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346HeadG_reserved : s6Step346HeadGBefore.reserve s6Step346HeadGFresh.toFinset=some s6Step346HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step346HeadGFresh,arenaWires]
  · norm_num [s6Step346HeadGBefore,s6Step346HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step346HeadGAfter,s6Step346HeadGBefore,s6Step346HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step346HeadG_checked : planRowResizeLog s6Step346HeadGBefore s6Step346HeadGRow 101 s6Step346HeadGFresh=
    some (s6Step346HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 843, 877],777⟩,growRow 777 s6Step346HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step346HeadGBefore s6Step346HeadGAfter s6Step346HeadGRow 101 s6Step346HeadGFresh
    s6Step346HeadG_distinct s6Step346HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step346HeadG_reserved
  have rowEq : WindowRow.mk (s6Step346HeadGRow.payload++s6Step346HeadGFresh) s6Step346HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 843, 877],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step346HeadGvBefore : Arena := s6Step346HeadFAfter

private theorem s6Step346HeadGv_Incoming : rowsOwned s6Step346HeadGvBefore [s6Step346HeadGvRow,s6Step346HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step346HeadGRow,s6Step346HeadFRow,s6Step346HeadGvRow,s6Step346HeadFvRow] 2 s6Step346HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step346HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step346HeadGv_Outgoing : rowsOwned s6Step346HeadFvAfter [s6Step346HeadGvOut,s6Step346HeadFvOut] :=
  hmrRows_owned_drop s6Step346HeadFvAfter [s6Step346HeadGOut,s6Step346HeadFOut,s6Step346HeadGvOut,s6Step346HeadFvOut] 2 s6Step346HeadBank_outgoingOwned

private theorem s6Step346HeadGv_distinct : (s6Step346HeadGvRow.sign::s6Step346HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step346HeadGv_owned : (s6Step346HeadGvRow.sign::s6Step346HeadGvRow.payload).toFinset⊆s6Step346HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step346HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step346HeadGv_reserved : s6Step346HeadGvBefore.reserve s6Step346HeadGvFresh.toFinset=some s6Step346HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step346HeadGvFresh,arenaWires]
  · norm_num [s6Step346HeadGvBefore,s6Step346HeadFAfter,s6Step346HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step346HeadGvAfter,s6Step346HeadGvBefore,s6Step346HeadFAfter,s6Step346HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step346HeadGv_checked : planRowResizeLog s6Step346HeadGvBefore s6Step346HeadGvRow 191 s6Step346HeadGvFresh=
    some (s6Step346HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 881],775⟩,growRow 775 s6Step346HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step346HeadGvBefore s6Step346HeadGvAfter s6Step346HeadGvRow 191 s6Step346HeadGvFresh
    s6Step346HeadGv_distinct s6Step346HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step346HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step346HeadGvRow.payload++s6Step346HeadGvFresh) s6Step346HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 881],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step346HeadBank_rows : planWindowRowsLog s6Step346HeadGBefore [(s6Step346HeadGRow,101),(s6Step346HeadFRow,101),(s6Step346HeadGvRow,191),(s6Step346HeadFvRow,191)] [s6Step346HeadGFresh,s6Step346HeadFFresh,s6Step346HeadGvFresh,s6Step346HeadFvFresh]=
    some (s6Step346HeadFvAfter,[s6Step346HeadGOut,s6Step346HeadFOut,s6Step346HeadGvOut,s6Step346HeadFvOut],(growRow 777 s6Step346HeadGFresh ++ (growRow 795 s6Step346HeadFFresh ++ (growRow 775 s6Step346HeadGvFresh ++ (growRow 776 s6Step346HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step346HeadFvAfter [] []=some (s6Step346HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step346HeadFvBefore s6Step346HeadFvAfter s6Step346HeadFvAfter
    s6Step346HeadFvRow s6Step346HeadFvOut 191 s6Step346HeadFvFresh [] [] []
    (growRow 776 s6Step346HeadFvFresh) ([]) s6Step346HeadFv_Incoming s6Step346HeadFv_checked h4 s6Step346HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step346HeadGvBefore s6Step346HeadGvAfter s6Step346HeadFvAfter
    s6Step346HeadGvRow s6Step346HeadGvOut 191 s6Step346HeadGvFresh [(s6Step346HeadFvRow,191)] [s6Step346HeadFvFresh] [s6Step346HeadFvOut]
    (growRow 775 s6Step346HeadGvFresh) ((growRow 776 s6Step346HeadFvFresh ++ [])) s6Step346HeadGv_Incoming s6Step346HeadGv_checked h3 s6Step346HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step346HeadFBefore s6Step346HeadFAfter s6Step346HeadFvAfter
    s6Step346HeadFRow s6Step346HeadFOut 101 s6Step346HeadFFresh [(s6Step346HeadGvRow,191),(s6Step346HeadFvRow,191)] [s6Step346HeadGvFresh,s6Step346HeadFvFresh] [s6Step346HeadGvOut,s6Step346HeadFvOut]
    (growRow 795 s6Step346HeadFFresh) ((growRow 775 s6Step346HeadGvFresh ++ (growRow 776 s6Step346HeadFvFresh ++ []))) s6Step346HeadF_Incoming s6Step346HeadF_checked h2 s6Step346HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step346HeadGBefore s6Step346HeadGAfter s6Step346HeadFvAfter
    s6Step346HeadGRow s6Step346HeadGOut 101 s6Step346HeadGFresh [(s6Step346HeadFRow,101),(s6Step346HeadGvRow,191),(s6Step346HeadFvRow,191)] [s6Step346HeadFFresh,s6Step346HeadGvFresh,s6Step346HeadFvFresh] [s6Step346HeadFOut,s6Step346HeadGvOut,s6Step346HeadFvOut]
    (growRow 777 s6Step346HeadGFresh) ((growRow 795 s6Step346HeadFFresh ++ (growRow 775 s6Step346HeadGvFresh ++ (growRow 776 s6Step346HeadFvFresh ++ [])))) s6Step346HeadG_Incoming s6Step346HeadG_checked h1 s6Step346HeadG_Outgoing
  exact h0

private theorem s6Step346HeadBank_checked : compileHmrBankResizeLog .headroom s6Step346HeadGBefore ⟨s6Step346HeadFRow,s6Step346HeadGRow,s6Step346HeadFvRow,s6Step346HeadGvRow⟩ ⟨101,101,191,191⟩ [s6Step346HeadGFresh,s6Step346HeadFFresh,s6Step346HeadGvFresh,s6Step346HeadFvFresh]=
    some (s6Step346HeadFvAfter,⟨s6Step346HeadFOut,s6Step346HeadGOut,s6Step346HeadFvOut,s6Step346HeadGvOut⟩,(growRow 777 s6Step346HeadGFresh ++ (growRow 795 s6Step346HeadFFresh ++ (growRow 775 s6Step346HeadGvFresh ++ (growRow 776 s6Step346HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step346HeadBank_rows]
  rfl

private theorem s6Step346Front_checked : compileHmrSourceFrontLog s6Step346EntryFBefore s6Step346FrontBank 100 190 ⟨97,99,189,190⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step346FrontLog=some s6Step346FrontPlan := by
  have pairEq : s6Step346FrontPair=⟨s6Step346HeadFRow,s6Step346HeadGRow,s6Step346HeadFvRow,s6Step346HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step346FrontHead=⟨s6Step346ExitFRow,s6Step346ExitGRow,s6Step346ExitFvRow,s6Step346ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step346Add0A=s6Step346FrontHead.f.wires := by decide +kernel
  have gEq : s6Step346Add0B=s6Step346FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step346Add1A=s6Step346FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step346Add1B=s6Step346FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step346EntryFBefore s6Step346FrontBank 100 190 ⟨97,99,189,190⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step346FrontLog s6Step346FrontPlan
  · exact s6Step346Front_entry
  · exact s6Step346EntryBank_checked
  · exact s6Step346Front_sigma
  · rfl
  · exact s6Step346Front_branch
  · rfl
  · simpa only [s6Step346FrontPlan,pairEq] using s6Step346HeadBank_checked
  · simpa only [s6Step346FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step346F4_checked
  · exact s6Step346Counter_checked
  · rfl
  · simpa only [s6Step346FrontPlan,headEq] using s6Step346ExitBank_checked

private theorem s6Step346Complete_explicit_checked : compileHmrEarlyStepLog s6Step346EntryFBefore s6Step346FrontBank 100 190 ⟨97,99,189,190⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step346CompleteLog=some s6Step346CompletePlan := by
  let Q := s6Step346EarlyControlPlan
  have hq := s6Step346EarlyControl_plan_checked
  have fv1 : s6Step346CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step346CompleteOut.fv.payload[2]?.getD s6Step346CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step346CompleteOut.fv.payload[3]?.getD s6Step346CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step346CompleteOut.fv.payload[4]?.getD s6Step346CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step346EntryFBefore s6Step346EarlyControlArena s6Step346FrontBank 100 190 ⟨97,99,189,190⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step346CompleteLog s6Step346FrontPlan Q
    s6Step346Front_checked s6Step346Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step346Complete_owned s6Step346Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step346EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 855 s6Step346CompleteOut.fv.second (s6Step346CompleteOut.fv.payload[2]?.getD s6Step346CompleteOut.fv.sign) (s6Step346CompleteOut.fv.payload[3]?.getD s6Step346CompleteOut.fv.sign) (s6Step346CompleteOut.fv.payload[4]?.getD s6Step346CompleteOut.fv.sign) 927 60 s6Step346EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep346Arena : Arena := s6Step346EntryFBefore
def s6PrivateStep346Bank : WindowBank := s6Step346FrontBank
def s6PrivateStep346Spec : HmrSourceWalkStepLog := ⟨100,190,⟨97,99,189,190⟩,60,.early s6Step346CompleteLog⟩
def s6PrivateStep346Plan : HmrSourceStepPlan := .early s6Step346CompletePlan
theorem s6PrivateStep346_source : s6PrivateStep346Spec=s6ObservedLogs336[10] := rfl
theorem s6PrivateStep346_checked : compileHmrSourceStepLog s6PrivateStep346Arena s6PrivateStep346Bank
    s6PrivateStep346Spec.fgWidth s6PrivateStep346Spec.vWidth s6PrivateStep346Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 346 s6PrivateStep346Spec.need none s6PrivateStep346Spec.log=some s6PrivateStep346Plan := by
  change compileHmrSourceStepLog s6Step346EntryFBefore s6Step346FrontBank 100 190 ⟨97,99,189,190⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 346 60 none (.early s6Step346CompleteLog)=some (.early s6Step346CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 346<498)]
  rw [s6Step346Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
