import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep359
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

private def s6Step361CompleteMoves : List (Wire × Wire) := [(807,90),(922,346)]

private def s6Step361EarlyControlLog : HmrEarlyControlLog := ⟨[922, 807, 825, 876, 906],[892],[805],[802, 843, 877, 792, 816, 819],[]⟩

private def s6Step361FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [778]],[[892], [906], [825], [876]],[[], [], [], []]⟩,[858],[887],[805],[802],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877]⟩

private def s6Step361CompleteLog : HmrEarlyStepLog := ⟨s6Step361FrontLog,s6Step361CompleteMoves,s6Step361EarlyControlLog⟩

private def s6Step361ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345],795⟩

private def s6Step361ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩

private def s6Step361ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89],777⟩

private def s6Step361ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778],775⟩

private def s6Step361FrontOut : WindowBank := ⟨s6Step361ExitFOut,s6Step361ExitGOut,s6Step361ExitFvOut,s6Step361ExitGvOut⟩

private def s6Step361CompleteOut : WindowBank := s6Step361FrontOut.repacked s6Step361CompleteMoves

private def s6Step361EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step361EarlyControlPositiveArena,[892],s6Step361EarlyControlEqualityArena,[805],⟨⟨858,false⟩,[⟨⟨892,false⟩,805⟩]⟩⟩

private def s6Step361EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,922⟩,⟨⟨772,false⟩,807⟩,⟨⟨771,false⟩,825⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,906⟩]⟩

private def s6Step361EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step361EarlyControlZeroArena,s6Step361EarlyControlZeroPlan,s6Step361EarlyControlClassPlan,s6Step361EarlyControlFlagArena,s6Step361EarlyControlFittedArena,s6Step361EarlyControlHistoryArena,s6Step361EarlyControlSigmaArena,s6Step361EarlyControlOutputArena,s6Step361EarlyControlLog⟩

private def s6Step361CounterWork : List Wire := [805, 802, 843, 877]

private theorem s6Step361Counter_bounded : s6Step361CounterWork.toFinset⊆arenaWires := by norm_num [s6Step361CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step361HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361CounterDuring : Arena := ⟨s6Step361HeadFvAfter.live∪s6Step361CounterWork.toFinset,Finset.union_subset s6Step361HeadFvAfter.bounded s6Step361Counter_bounded⟩

private def s6Step361EntryFFresh : List Wire := []

private def s6Step361EntryFvFresh : List Wire := []

private def s6Step361EntryGFresh : List Wire := []

private def s6Step361EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361EntryGvFresh : List Wire := [778]

private def s6Step361ExitFExtra : List Wire := [346, 906]

private def s6Step361ExitFvExtra : List Wire := [876]

private def s6Step361ExitGExtra : List Wire := [90, 892]

private def s6Step361ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<346) ∨ (347≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361ExitGvExtra : List Wire := [825]

private def s6Step361Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361Add0Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step361Add0_bounded : s6Step361Add0Work.toFinset⊆arenaWires := by
  have h : s6Step361Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step361Add0During : Arena := ⟨s6Step361Add0Arena.live∪s6Step361Add0Work.toFinset,Finset.union_subset s6Step361Add0Arena.bounded s6Step361Add0_bounded⟩

private def s6Step361Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361Add1Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step361Add1_bounded : s6Step361Add1Work.toFinset⊆arenaWires := by
  have h : s6Step361Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step361Add1During : Arena := ⟨s6Step361Add1Arena.live∪s6Step361Add1Work.toFinset,Finset.union_subset s6Step361Add1Arena.bounded s6Step361Add1_bounded⟩

private def s6Step361F4FlagArena : Arena := ⟨s6Step361HeadFvAfter.live∪{805},Finset.union_subset s6Step361HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step361F4Plan : HmrHybridF4Plan := ⟨s6Step361F4FlagArena,[805],s6Step361Add0Arena,[802],s6Step361Add0During,s6Step361Add0Work,s6Step361Add1During,s6Step361Add1Work⟩

private def s6Step361HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 906],795⟩

private def s6Step361HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876],776⟩

private def s6Step361HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 892],777⟩

private def s6Step361HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 825],775⟩

private def s6Step361FrontHead : WindowBank := ⟨s6Step361HeadFOut,s6Step361HeadGOut,s6Step361HeadFvOut,s6Step361HeadGvOut⟩

private def s6Step361EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346],795⟩

private def s6Step361EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩

private def s6Step361EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],777⟩

private def s6Step361EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778],775⟩

private def s6Step361FrontPair : WindowBank := ⟨s6Step361EntryFOut,s6Step361EntryGOut,s6Step361EntryFvOut,s6Step361EntryGvOut⟩

private def s6Step361FrontSigmaArena : Arena := ⟨s6Step361EntryGvAfter.live∪{858},Finset.union_subset s6Step361EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step361HeadFFresh : List Wire := [906]

private def s6Step361HeadFvFresh : List Wire := [876]

private def s6Step361HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361HeadGFresh : List Wire := [892]

private def s6Step361HeadGvFresh : List Wire := [825]

private def s6Step361FrontPlan : HmrSourceFront := ⟨s6Step361EntryGvAfter,s6Step361FrontPair,(growRow 795 s6Step361EntryFFresh ++ (growRow 777 s6Step361EntryGFresh ++ (growRow 776 s6Step361EntryFvFresh ++ (growRow 775 s6Step361EntryGvFresh ++ [])))),s6Step361FrontSigmaArena,[858],s6Step361HeadGBefore,[887],
  s6Step361HeadFvAfter,s6Step361FrontHead,(growRow 777 s6Step361HeadGFresh ++ (growRow 795 s6Step361HeadFFresh ++ (growRow 775 s6Step361HeadGvFresh ++ (growRow 776 s6Step361HeadFvFresh ++ [])))),s6Step361F4Plan,s6Step361CounterDuring,s6Step361CounterWork,s6Step361ExitGvAfter,s6Step361FrontOut,(shrinkRow 777 s6Step361ExitGExtra ++ (shrinkRow 795 s6Step361ExitFExtra ++ (shrinkRow 776 s6Step361ExitFvExtra ++ (shrinkRow 775 s6Step361ExitGvExtra ++ []))))⟩

private def s6Step361CompletePlan : HmrEarlyStepPlan := ⟨s6Step361FrontPlan,s6Step361EarlyControlArena,s6Step361EarlyControlPlan,s6Step361CompleteMoves⟩

private theorem s6Step361Complete_apart : List.Disjoint (s6Step361CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [858, 887, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step361CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[858, 887, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step361Complete_owned : (s6Step361CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step361EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step361EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step361CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,346),(347,782),(783,790),(791,792),(793,797),(799,800),(801,802),(803,805),(806,807),(809,816),(817,819),(821,825),(826,832),(833,842),(844,876),(878,892),(893,896),(897,906),(907,914),(915,916),(917,918),(919,920),(921,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step361CompleteRelocationMove0Borrowed : Arena := ⟨s6Step361ExitGvAfter.live∪{90},Finset.union_subset s6Step361ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step361CompleteRelocationMove1Borrowed : Arena := ⟨s6Step361CompleteRelocationMove0After.live∪{346},Finset.union_subset s6Step361CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step361CompleteRelocation_move0_owned : 807∈s6Step361ExitGvAfter.live := by norm_num [s6Step361ExitGvAfter,arenaWires]

private theorem s6Step361CompleteRelocation_move0_reserve : s6Step361ExitGvAfter.reserve {90}=some s6Step361CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step361ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step361CompleteRelocation_move0_retire : s6Step361CompleteRelocationMove0Borrowed.retireSet {807}=s6Step361CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step361CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step361CompleteRelocationMove0Borrowed,s6Step361ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step361CompleteRelocation_move1_owned : 922∈s6Step361CompleteRelocationMove0After.live := by norm_num [s6Step361CompleteRelocationMove0After,arenaWires]

private theorem s6Step361CompleteRelocation_move1_reserve : s6Step361CompleteRelocationMove0After.reserve {346}=some s6Step361CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step361CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step361CompleteRelocation_move1_retire : s6Step361CompleteRelocationMove1Borrowed.retireSet {922}=s6Step361EarlyControlArena := by
  unfold Arena.retireSet s6Step361EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step361CompleteRelocationMove1Borrowed,s6Step361CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step361CompleteRelocation_checked : s6Step361ExitGvAfter.checkRepack [(807,90),(922,346)]=some s6Step361EarlyControlArena := by
  have tail2 : s6Step361EarlyControlArena.checkRepack []=some s6Step361EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step361CompleteRelocationMove0After s6Step361CompleteRelocationMove1Borrowed s6Step361EarlyControlArena s6Step361EarlyControlArena 922 346 []
    s6Step361CompleteRelocation_move1_owned s6Step361CompleteRelocation_move1_reserve s6Step361CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step361ExitGvAfter s6Step361CompleteRelocationMove0Borrowed s6Step361CompleteRelocationMove0After s6Step361EarlyControlArena 807 90 [(922,346)]
    s6Step361CompleteRelocation_move0_owned s6Step361CompleteRelocation_move0_reserve s6Step361CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step361Complete_repack : s6Step361ExitGvAfter.checkRepack s6Step361CompleteMoves=some s6Step361EarlyControlArena := by
  simpa only [s6Step361CompleteMoves] using s6Step361CompleteRelocation_checked

private theorem s6Step361EarlyControl_branchOwned : ([887] : List Wire).toFinset⊆s6Step361EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step361EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361EarlyControl_branch : compileHmrBranchRetirement s6Step361EarlyControlSigmaArena 887=some s6Step361EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step361EarlyControl_branchOwned
  · ext q
    simp [s6Step361EarlyControlOutputArena,s6Step361EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step361EarlyControl_classEqualityBorrow : s6Step361EarlyControlPositiveArena.checkBorrow (([858, 892] : List Wire).length-1) s6Step361EarlyControlLog.classWork=some s6Step361EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step361EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step361EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step361EarlyControlEqualityArena,s6Step361EarlyControlPositiveArena,s6Step361EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step361EarlyControl_classEqualityOwned : ([858, 892] : List Wire).toFinset⊆s6Step361EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step361EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361EarlyControl_classEquality : compileHmrEqualityLog s6Step361EarlyControlPositiveArena [858, 892] 0 s6Step361EarlyControlLog.classWork=some (s6Step361EarlyControlEqualityArena,s6Step361EarlyControlLog.classWork,s6Step361EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step361EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step361EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step361EarlyControl_classOwned : ([769, 906, 858] : List Wire).toFinset⊆s6Step361EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step361EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361EarlyControl_positiveBorrow : s6Step361EarlyControlZeroArena.checkBorrow (1) s6Step361EarlyControlLog.positiveWork=some s6Step361EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step361EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step361EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step361EarlyControlPositiveArena,s6Step361EarlyControlZeroArena,s6Step361EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step361EarlyControl_class : compileHmrSourceClassLog s6Step361EarlyControlZeroArena false 769 s6Step361EarlyControlZeroPlan.top 0 858 s6Step361EarlyControlLog.positiveWork s6Step361EarlyControlLog.classWork=some s6Step361EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step361EarlyControlClassPlan s6Step361EarlyControlZeroArena false 769 s6Step361EarlyControlZeroPlan.top 0 858
  constructor
  · decide +kernel
  · exact s6Step361EarlyControl_classOwned
  · exact s6Step361EarlyControl_positiveBorrow
  · exact s6Step361EarlyControl_classEquality

private theorem s6Step361EarlyControl_entryRecordOwned : ([887, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step361EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step361EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361EarlyControl_entrySigmaOwned : ([858, 254] : List Wire).toFinset⊆s6Step361EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step361EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361EarlyControl_fitBorrow : s6Step361EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step361EarlyControlLog.recordFresh=some s6Step361EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step361EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step361EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step361EarlyControlFittedArena,s6Step361EarlyControlFlagArena,s6Step361EarlyControlLog,arenaWires]

private theorem s6Step361EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step361EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step361EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361EarlyControl_fit : compileHmrRecordGrowLog s6Step361EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step361EarlyControlLog.recordFresh=some s6Step361EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step361EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step361EarlyControl_fitBorrow

private theorem s6Step361EarlyControl_flagsBorrow : s6Step361EarlyControlEqualityArena.checkBorrow (6) s6Step361EarlyControlLog.flagWork=some s6Step361EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step361EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step361EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step361EarlyControlFlagArena,s6Step361EarlyControlEqualityArena,s6Step361EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step361EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step361EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step361EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361EarlyControl_flags : compileHmrFlagsLog s6Step361EarlyControlClassPlan.equalityArena s6Step361EarlyControlClassPlan.equality.top 253 252 251 s6Step361EarlyControlLog.flagWork=some s6Step361EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step361EarlyControl_flagsOwned⟩
  · exact s6Step361EarlyControl_flagsBorrow

private theorem s6Step361EarlyControl_historyBorrow : s6Step361EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step361EarlyControlLog.recordFresh=some s6Step361EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step361EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step361EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step361EarlyControlHistoryArena,s6Step361EarlyControlArena,s6Step361EarlyControlLog,arenaWires]

private theorem s6Step361EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step361EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step361EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361EarlyControl_history : compileHmrRecordGrowLog s6Step361EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step361EarlyControlLog.recordFresh=some s6Step361EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step361EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step361EarlyControl_historyBorrow

private theorem s6Step361EarlyControl_sigmaOwned : ([254, 858] : List Wire).toFinset⊆s6Step361EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step361EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361EarlyControl_sigmaReleaseOwned : ([858] : List Wire).toFinset⊆s6Step361EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step361EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361EarlyControl_sigmaRelease : s6Step361EarlyControlHistoryArena.release {858} (fun _ => false)=some s6Step361EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step361EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step361EarlyControlSigmaArena,s6Step361EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step361EarlyControl_sigma : compileHmrSigmaDropLog s6Step361EarlyControlHistoryArena false 0 0 254 858 []=some s6Step361EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step361EarlyControl_sigmaOwned⟩
  · exact s6Step361EarlyControl_sigmaRelease

private theorem s6Step361EarlyControl_zeroBorrow : s6Step361EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step361EarlyControlLog.zeroWork=some s6Step361EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step361EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step361EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step361EarlyControlZeroArena,s6Step361EarlyControlArena,s6Step361EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step361EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step361EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step361EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361EarlyControl_zero : compileHmrEqualityLog s6Step361EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step361EarlyControlLog.zeroWork=some (s6Step361EarlyControlZeroArena,s6Step361EarlyControlLog.zeroWork,s6Step361EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step361EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step361EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step361EarlyControl_logged : s6Step361EarlyControlPlan.Logged s6Step361EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 887 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step361EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step361EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step361EarlyControl_zero
  · exact s6Step361EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step361EarlyControl_flags
  · exact s6Step361EarlyControl_fit
  · exact s6Step361EarlyControl_history
  · exact s6Step361EarlyControl_sigma
  · exact s6Step361EarlyControl_branch

private theorem s6Step361EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step361EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 887 60 s6Step361EarlyControlLog=some s6Step361EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step361EarlyControlPlan s6Step361EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 887 60 s6Step361EarlyControl_logged

private def s6Step361EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346],795⟩

private def s6Step361EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩

private def s6Step361EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],777⟩

private def s6Step361EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩

private def s6Step361FrontBank : WindowBank := ⟨s6Step361EntryFRow,s6Step361EntryGRow,s6Step361EntryFvRow,s6Step361EntryGvRow⟩

private def s6Step361Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 906, 795]

private def s6Step361Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 892, 777]

private def s6Step361Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876, 776]

private def s6Step361Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 825, 775]

private theorem s6Step361Counter_apart : Disjoint s6Step361HeadFvAfter.live s6Step361CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step361HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361Counter_borrowed : s6Step361HeadFvAfter.checkBorrow 4 s6Step361CounterWork=some s6Step361CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step361HeadFvAfter s6Step361CounterDuring s6Step361CounterWork.toFinset s6Step361Counter_bounded s6Step361Counter_apart rfl

private theorem s6Step361Counter_owned : (858::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step361HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step361HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361Counter_checked : compileHmrCounterStepLog s6Step361HeadFvAfter true 858 [774, 773, 772, 771, 770, 769] s6Step361CounterWork=some s6Step361CounterDuring := by
  have owned : ∀q∈858::[774, 773, 772, 771, 770, 769],q∈s6Step361HeadFvAfter.live := fun q hq => s6Step361Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step361Counter_borrowed

private def s6Step361EntryFAfter : Arena := s6Step361EntryFBefore

private theorem s6Step361EntryBank_incomingDistinct : ([s6Step361EntryFRow,s6Step361EntryGRow,s6Step361EntryFvRow,s6Step361EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361EntryF_Incoming : rowsOwned s6Step361EntryFBefore [s6Step361EntryFRow,s6Step361EntryGRow,s6Step361EntryFvRow,s6Step361EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step361EntryFRow,s6Step361EntryGRow,s6Step361EntryFvRow,s6Step361EntryGvRow] 0 s6Step361EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step361EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step361EntryBank_outgoingOwned : rowsOwned s6Step361EntryGvAfter [s6Step361EntryFOut,s6Step361EntryGOut,s6Step361EntryFvOut,s6Step361EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step361EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step361EntryF_Outgoing : rowsOwned s6Step361EntryGvAfter [s6Step361EntryFOut,s6Step361EntryGOut,s6Step361EntryFvOut,s6Step361EntryGvOut] :=
  hmrRows_owned_drop s6Step361EntryGvAfter [s6Step361EntryFOut,s6Step361EntryGOut,s6Step361EntryFvOut,s6Step361EntryGvOut] 0 s6Step361EntryBank_outgoingOwned

private theorem s6Step361EntryF_distinct : (s6Step361EntryFRow.sign::s6Step361EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361EntryF_owned : (s6Step361EntryFRow.sign::s6Step361EntryFRow.payload).toFinset⊆s6Step361EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step361EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361EntryF_reserved : s6Step361EntryFBefore.reserve s6Step361EntryFFresh.toFinset=some s6Step361EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step361EntryFFresh,arenaWires]
  · norm_num [s6Step361EntryFBefore,s6Step361EntryFFresh,arenaWires]
  · simp only [s6Step361EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step361EntryF_checked : planRowResizeLog s6Step361EntryFBefore s6Step361EntryFRow 91 s6Step361EntryFFresh=
    some (s6Step361EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346],795⟩,growRow 795 s6Step361EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step361EntryFBefore s6Step361EntryFAfter s6Step361EntryFRow 91 s6Step361EntryFFresh
    s6Step361EntryF_distinct s6Step361EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step361EntryF_reserved
  have rowEq : WindowRow.mk (s6Step361EntryFRow.payload++s6Step361EntryFFresh) s6Step361EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step361EntryFvAfter : Arena := s6Step361EntryFBefore

private def s6Step361EntryFvBefore : Arena := s6Step361EntryFBefore

private theorem s6Step361EntryFv_Incoming : rowsOwned s6Step361EntryFvBefore [s6Step361EntryFvRow,s6Step361EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step361EntryFRow,s6Step361EntryGRow,s6Step361EntryFvRow,s6Step361EntryGvRow] 2 s6Step361EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step361EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step361EntryFv_Outgoing : rowsOwned s6Step361EntryGvAfter [s6Step361EntryFvOut,s6Step361EntryGvOut] :=
  hmrRows_owned_drop s6Step361EntryGvAfter [s6Step361EntryFOut,s6Step361EntryGOut,s6Step361EntryFvOut,s6Step361EntryGvOut] 2 s6Step361EntryBank_outgoingOwned

private theorem s6Step361EntryFv_distinct : (s6Step361EntryFvRow.sign::s6Step361EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361EntryFv_owned : (s6Step361EntryFvRow.sign::s6Step361EntryFvRow.payload).toFinset⊆s6Step361EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step361EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361EntryFv_reserved : s6Step361EntryFvBefore.reserve s6Step361EntryFvFresh.toFinset=some s6Step361EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step361EntryFvFresh,arenaWires]
  · norm_num [s6Step361EntryFvBefore,s6Step361EntryFBefore,s6Step361EntryFvFresh,arenaWires]
  · simp only [s6Step361EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step361EntryFv_checked : planRowResizeLog s6Step361EntryFvBefore s6Step361EntryFvRow 197 s6Step361EntryFvFresh=
    some (s6Step361EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩,growRow 776 s6Step361EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step361EntryFvBefore s6Step361EntryFvAfter s6Step361EntryFvRow 197 s6Step361EntryFvFresh
    s6Step361EntryFv_distinct s6Step361EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step361EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step361EntryFvRow.payload++s6Step361EntryFvFresh) s6Step361EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step361EntryGAfter : Arena := s6Step361EntryFBefore

private def s6Step361EntryGBefore : Arena := s6Step361EntryFBefore

private theorem s6Step361EntryG_Incoming : rowsOwned s6Step361EntryGBefore [s6Step361EntryGRow,s6Step361EntryFvRow,s6Step361EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step361EntryFRow,s6Step361EntryGRow,s6Step361EntryFvRow,s6Step361EntryGvRow] 1 s6Step361EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step361EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step361EntryG_Outgoing : rowsOwned s6Step361EntryGvAfter [s6Step361EntryGOut,s6Step361EntryFvOut,s6Step361EntryGvOut] :=
  hmrRows_owned_drop s6Step361EntryGvAfter [s6Step361EntryFOut,s6Step361EntryGOut,s6Step361EntryFvOut,s6Step361EntryGvOut] 1 s6Step361EntryBank_outgoingOwned

private theorem s6Step361EntryG_distinct : (s6Step361EntryGRow.sign::s6Step361EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361EntryG_owned : (s6Step361EntryGRow.sign::s6Step361EntryGRow.payload).toFinset⊆s6Step361EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step361EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361EntryG_reserved : s6Step361EntryGBefore.reserve s6Step361EntryGFresh.toFinset=some s6Step361EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step361EntryGFresh,arenaWires]
  · norm_num [s6Step361EntryGBefore,s6Step361EntryFBefore,s6Step361EntryGFresh,arenaWires]
  · simp only [s6Step361EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step361EntryG_checked : planRowResizeLog s6Step361EntryGBefore s6Step361EntryGRow 91 s6Step361EntryGFresh=
    some (s6Step361EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],777⟩,growRow 777 s6Step361EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step361EntryGBefore s6Step361EntryGAfter s6Step361EntryGRow 91 s6Step361EntryGFresh
    s6Step361EntryG_distinct s6Step361EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step361EntryG_reserved
  have rowEq : WindowRow.mk (s6Step361EntryGRow.payload++s6Step361EntryGFresh) s6Step361EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step361EntryGvBefore : Arena := s6Step361EntryFBefore

private theorem s6Step361EntryGv_Incoming : rowsOwned s6Step361EntryGvBefore [s6Step361EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step361EntryFRow,s6Step361EntryGRow,s6Step361EntryFvRow,s6Step361EntryGvRow] 3 s6Step361EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step361EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step361EntryGv_Outgoing : rowsOwned s6Step361EntryGvAfter [s6Step361EntryGvOut] :=
  hmrRows_owned_drop s6Step361EntryGvAfter [s6Step361EntryFOut,s6Step361EntryGOut,s6Step361EntryFvOut,s6Step361EntryGvOut] 3 s6Step361EntryBank_outgoingOwned

private theorem s6Step361EntryGv_distinct : (s6Step361EntryGvRow.sign::s6Step361EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361EntryGv_owned : (s6Step361EntryGvRow.sign::s6Step361EntryGvRow.payload).toFinset⊆s6Step361EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step361EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361EntryGv_reserved : s6Step361EntryGvBefore.reserve s6Step361EntryGvFresh.toFinset=some s6Step361EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step361EntryGvFresh,arenaWires]
  · norm_num [s6Step361EntryGvBefore,s6Step361EntryFBefore,s6Step361EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step361EntryGvAfter,s6Step361EntryGvBefore,s6Step361EntryFBefore,s6Step361EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step361EntryGv_checked : planRowResizeLog s6Step361EntryGvBefore s6Step361EntryGvRow 197 s6Step361EntryGvFresh=
    some (s6Step361EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778],775⟩,growRow 775 s6Step361EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step361EntryGvBefore s6Step361EntryGvAfter s6Step361EntryGvRow 197 s6Step361EntryGvFresh
    s6Step361EntryGv_distinct s6Step361EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step361EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step361EntryGvRow.payload++s6Step361EntryGvFresh) s6Step361EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step361EntryBank_rows : planWindowRowsLog s6Step361EntryFBefore [(s6Step361EntryFRow,91),(s6Step361EntryGRow,91),(s6Step361EntryFvRow,197),(s6Step361EntryGvRow,197)] [s6Step361EntryFFresh,s6Step361EntryGFresh,s6Step361EntryFvFresh,s6Step361EntryGvFresh]=
    some (s6Step361EntryGvAfter,[s6Step361EntryFOut,s6Step361EntryGOut,s6Step361EntryFvOut,s6Step361EntryGvOut],(growRow 795 s6Step361EntryFFresh ++ (growRow 777 s6Step361EntryGFresh ++ (growRow 776 s6Step361EntryFvFresh ++ (growRow 775 s6Step361EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step361EntryGvAfter [] []=some (s6Step361EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step361EntryGvBefore s6Step361EntryGvAfter s6Step361EntryGvAfter
    s6Step361EntryGvRow s6Step361EntryGvOut 197 s6Step361EntryGvFresh [] [] []
    (growRow 775 s6Step361EntryGvFresh) ([]) s6Step361EntryGv_Incoming s6Step361EntryGv_checked h4 s6Step361EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step361EntryFvBefore s6Step361EntryFvAfter s6Step361EntryGvAfter
    s6Step361EntryFvRow s6Step361EntryFvOut 197 s6Step361EntryFvFresh [(s6Step361EntryGvRow,197)] [s6Step361EntryGvFresh] [s6Step361EntryGvOut]
    (growRow 776 s6Step361EntryFvFresh) ((growRow 775 s6Step361EntryGvFresh ++ [])) s6Step361EntryFv_Incoming s6Step361EntryFv_checked h3 s6Step361EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step361EntryGBefore s6Step361EntryGAfter s6Step361EntryGvAfter
    s6Step361EntryGRow s6Step361EntryGOut 91 s6Step361EntryGFresh [(s6Step361EntryFvRow,197),(s6Step361EntryGvRow,197)] [s6Step361EntryFvFresh,s6Step361EntryGvFresh] [s6Step361EntryFvOut,s6Step361EntryGvOut]
    (growRow 777 s6Step361EntryGFresh) ((growRow 776 s6Step361EntryFvFresh ++ (growRow 775 s6Step361EntryGvFresh ++ []))) s6Step361EntryG_Incoming s6Step361EntryG_checked h2 s6Step361EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step361EntryFBefore s6Step361EntryFAfter s6Step361EntryGvAfter
    s6Step361EntryFRow s6Step361EntryFOut 91 s6Step361EntryFFresh [(s6Step361EntryGRow,91),(s6Step361EntryFvRow,197),(s6Step361EntryGvRow,197)] [s6Step361EntryGFresh,s6Step361EntryFvFresh,s6Step361EntryGvFresh] [s6Step361EntryGOut,s6Step361EntryFvOut,s6Step361EntryGvOut]
    (growRow 795 s6Step361EntryFFresh) ((growRow 777 s6Step361EntryGFresh ++ (growRow 776 s6Step361EntryFvFresh ++ (growRow 775 s6Step361EntryGvFresh ++ [])))) s6Step361EntryF_Incoming s6Step361EntryF_checked h1 s6Step361EntryF_Outgoing
  exact h0

private theorem s6Step361EntryBank_checked : compileHmrBankResizeLog .entry s6Step361EntryFBefore ⟨s6Step361EntryFRow,s6Step361EntryGRow,s6Step361EntryFvRow,s6Step361EntryGvRow⟩ ⟨91,91,197,197⟩ [s6Step361EntryFFresh,s6Step361EntryGFresh,s6Step361EntryFvFresh,s6Step361EntryGvFresh]=
    some (s6Step361EntryGvAfter,⟨s6Step361EntryFOut,s6Step361EntryGOut,s6Step361EntryFvOut,s6Step361EntryGvOut⟩,(growRow 795 s6Step361EntryFFresh ++ (growRow 777 s6Step361EntryGFresh ++ (growRow 776 s6Step361EntryFvFresh ++ (growRow 775 s6Step361EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step361EntryBank_rows]
  rfl

private def s6Step361ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<346) ∨ (347≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361ExitFBefore : Arena := s6Step361ExitGAfter

private def s6Step361ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 906],795⟩

private def s6Step361ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876],776⟩

private def s6Step361ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 892],777⟩

private def s6Step361ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 825],775⟩

private theorem s6Step361ExitBank_incomingDistinct : ([s6Step361ExitGRow,s6Step361ExitFRow,s6Step361ExitFvRow,s6Step361ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361ExitF_Incoming : rowsOwned s6Step361ExitFBefore [s6Step361ExitFRow,s6Step361ExitFvRow,s6Step361ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step361ExitGRow,s6Step361ExitFRow,s6Step361ExitFvRow,s6Step361ExitGvRow] 1 s6Step361ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step361ExitFBefore (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step361ExitBank_outgoingOwned : rowsOwned s6Step361ExitGvAfter [s6Step361ExitGOut,s6Step361ExitFOut,s6Step361ExitFvOut,s6Step361ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step361ExitGvAfter (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<346) ∨ (347≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step361ExitF_Outgoing : rowsOwned s6Step361ExitGvAfter [s6Step361ExitFOut,s6Step361ExitFvOut,s6Step361ExitGvOut] :=
  hmrRows_owned_drop s6Step361ExitGvAfter [s6Step361ExitGOut,s6Step361ExitFOut,s6Step361ExitFvOut,s6Step361ExitGvOut] 1 s6Step361ExitBank_outgoingOwned

private theorem s6Step361ExitF_distinct : (s6Step361ExitFRow.sign::s6Step361ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361ExitF_owned : (s6Step361ExitFRow.sign::s6Step361ExitFRow.payload).toFinset⊆s6Step361ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step361ExitFBefore (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361ExitF_retired : s6Step361ExitFBefore.retireSet s6Step361ExitFExtra.toFinset=s6Step361ExitFAfter := by
  unfold Arena.retireSet s6Step361ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step361ExitFBefore,s6Step361ExitGAfter,s6Step361ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step361ExitF_checked : planRowResizeLog s6Step361ExitFBefore s6Step361ExitFRow 90 []=
    some (s6Step361ExitFAfter,s6Step361ExitFOut,shrinkRow 795 s6Step361ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step361ExitFBefore s6Step361ExitFRow 90 s6Step361ExitF_distinct s6Step361ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step361ExitFRow.payload.take 90) s6Step361ExitFRow.sign=s6Step361ExitFOut := by decide +kernel
  have hi : s6Step361ExitFRow.payload.drop 90=s6Step361ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step361ExitF_retired] at result
  exact result

private def s6Step361ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<346) ∨ (347≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361ExitFvBefore : Arena := s6Step361ExitFAfter

private theorem s6Step361ExitFv_Incoming : rowsOwned s6Step361ExitFvBefore [s6Step361ExitFvRow,s6Step361ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step361ExitGRow,s6Step361ExitFRow,s6Step361ExitFvRow,s6Step361ExitGvRow] 2 s6Step361ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step361ExitFvBefore (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<346) ∨ (347≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step361ExitFv_Outgoing : rowsOwned s6Step361ExitGvAfter [s6Step361ExitFvOut,s6Step361ExitGvOut] :=
  hmrRows_owned_drop s6Step361ExitGvAfter [s6Step361ExitGOut,s6Step361ExitFOut,s6Step361ExitFvOut,s6Step361ExitGvOut] 2 s6Step361ExitBank_outgoingOwned

private theorem s6Step361ExitFv_distinct : (s6Step361ExitFvRow.sign::s6Step361ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361ExitFv_owned : (s6Step361ExitFvRow.sign::s6Step361ExitFvRow.payload).toFinset⊆s6Step361ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step361ExitFvBefore (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<346) ∨ (347≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361ExitFv_retired : s6Step361ExitFvBefore.retireSet s6Step361ExitFvExtra.toFinset=s6Step361ExitFvAfter := by
  unfold Arena.retireSet s6Step361ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step361ExitFvBefore,s6Step361ExitFAfter,s6Step361ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step361ExitFv_checked : planRowResizeLog s6Step361ExitFvBefore s6Step361ExitFvRow 197 []=
    some (s6Step361ExitFvAfter,s6Step361ExitFvOut,shrinkRow 776 s6Step361ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step361ExitFvBefore s6Step361ExitFvRow 197 s6Step361ExitFv_distinct s6Step361ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step361ExitFvRow.payload.take 197) s6Step361ExitFvRow.sign=s6Step361ExitFvOut := by decide +kernel
  have hi : s6Step361ExitFvRow.payload.drop 197=s6Step361ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step361ExitFv_retired] at result
  exact result

private def s6Step361ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step361ExitG_Incoming : rowsOwned s6Step361ExitGBefore [s6Step361ExitGRow,s6Step361ExitFRow,s6Step361ExitFvRow,s6Step361ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step361ExitGRow,s6Step361ExitFRow,s6Step361ExitFvRow,s6Step361ExitGvRow] 0 s6Step361ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step361ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step361ExitG_Outgoing : rowsOwned s6Step361ExitGvAfter [s6Step361ExitGOut,s6Step361ExitFOut,s6Step361ExitFvOut,s6Step361ExitGvOut] :=
  hmrRows_owned_drop s6Step361ExitGvAfter [s6Step361ExitGOut,s6Step361ExitFOut,s6Step361ExitFvOut,s6Step361ExitGvOut] 0 s6Step361ExitBank_outgoingOwned

private theorem s6Step361ExitG_distinct : (s6Step361ExitGRow.sign::s6Step361ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361ExitG_owned : (s6Step361ExitGRow.sign::s6Step361ExitGRow.payload).toFinset⊆s6Step361ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step361ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361ExitG_retired : s6Step361ExitGBefore.retireSet s6Step361ExitGExtra.toFinset=s6Step361ExitGAfter := by
  unfold Arena.retireSet s6Step361ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step361ExitGBefore,s6Step361ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step361ExitG_checked : planRowResizeLog s6Step361ExitGBefore s6Step361ExitGRow 90 []=
    some (s6Step361ExitGAfter,s6Step361ExitGOut,shrinkRow 777 s6Step361ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step361ExitGBefore s6Step361ExitGRow 90 s6Step361ExitG_distinct s6Step361ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step361ExitGRow.payload.take 90) s6Step361ExitGRow.sign=s6Step361ExitGOut := by decide +kernel
  have hi : s6Step361ExitGRow.payload.drop 90=s6Step361ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step361ExitG_retired] at result
  exact result

private def s6Step361ExitGvBefore : Arena := s6Step361ExitFvAfter

private theorem s6Step361ExitGv_Incoming : rowsOwned s6Step361ExitGvBefore [s6Step361ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step361ExitGRow,s6Step361ExitFRow,s6Step361ExitFvRow,s6Step361ExitGvRow] 3 s6Step361ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step361ExitGvBefore (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<346) ∨ (347≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step361ExitGv_Outgoing : rowsOwned s6Step361ExitGvAfter [s6Step361ExitGvOut] :=
  hmrRows_owned_drop s6Step361ExitGvAfter [s6Step361ExitGOut,s6Step361ExitFOut,s6Step361ExitFvOut,s6Step361ExitGvOut] 3 s6Step361ExitBank_outgoingOwned

private theorem s6Step361ExitGv_distinct : (s6Step361ExitGvRow.sign::s6Step361ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361ExitGv_owned : (s6Step361ExitGvRow.sign::s6Step361ExitGvRow.payload).toFinset⊆s6Step361ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step361ExitGvBefore (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<346) ∨ (347≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361ExitGv_retired : s6Step361ExitGvBefore.retireSet s6Step361ExitGvExtra.toFinset=s6Step361ExitGvAfter := by
  unfold Arena.retireSet s6Step361ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step361ExitGvBefore,s6Step361ExitFvAfter,s6Step361ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step361ExitGv_checked : planRowResizeLog s6Step361ExitGvBefore s6Step361ExitGvRow 197 []=
    some (s6Step361ExitGvAfter,s6Step361ExitGvOut,shrinkRow 775 s6Step361ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step361ExitGvBefore s6Step361ExitGvRow 197 s6Step361ExitGv_distinct s6Step361ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step361ExitGvRow.payload.take 197) s6Step361ExitGvRow.sign=s6Step361ExitGvOut := by decide +kernel
  have hi : s6Step361ExitGvRow.payload.drop 197=s6Step361ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step361ExitGv_retired] at result
  exact result

private theorem s6Step361ExitBank_rows : planWindowRowsLog s6Step361ExitGBefore [(s6Step361ExitGRow,90),(s6Step361ExitFRow,90),(s6Step361ExitFvRow,197),(s6Step361ExitGvRow,197)] [[],[],[],[]]=
    some (s6Step361ExitGvAfter,[s6Step361ExitGOut,s6Step361ExitFOut,s6Step361ExitFvOut,s6Step361ExitGvOut],(shrinkRow 777 s6Step361ExitGExtra ++ (shrinkRow 795 s6Step361ExitFExtra ++ (shrinkRow 776 s6Step361ExitFvExtra ++ (shrinkRow 775 s6Step361ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step361ExitGvAfter [] []=some (s6Step361ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step361ExitGvBefore s6Step361ExitGvAfter s6Step361ExitGvAfter
    s6Step361ExitGvRow s6Step361ExitGvOut 197 [] [] [] []
    (shrinkRow 775 s6Step361ExitGvExtra) ([]) s6Step361ExitGv_Incoming s6Step361ExitGv_checked h4 s6Step361ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step361ExitFvBefore s6Step361ExitFvAfter s6Step361ExitGvAfter
    s6Step361ExitFvRow s6Step361ExitFvOut 197 [] [(s6Step361ExitGvRow,197)] [[]] [s6Step361ExitGvOut]
    (shrinkRow 776 s6Step361ExitFvExtra) ((shrinkRow 775 s6Step361ExitGvExtra ++ [])) s6Step361ExitFv_Incoming s6Step361ExitFv_checked h3 s6Step361ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step361ExitFBefore s6Step361ExitFAfter s6Step361ExitGvAfter
    s6Step361ExitFRow s6Step361ExitFOut 90 [] [(s6Step361ExitFvRow,197),(s6Step361ExitGvRow,197)] [[],[]] [s6Step361ExitFvOut,s6Step361ExitGvOut]
    (shrinkRow 795 s6Step361ExitFExtra) ((shrinkRow 776 s6Step361ExitFvExtra ++ (shrinkRow 775 s6Step361ExitGvExtra ++ []))) s6Step361ExitF_Incoming s6Step361ExitF_checked h2 s6Step361ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step361ExitGBefore s6Step361ExitGAfter s6Step361ExitGvAfter
    s6Step361ExitGRow s6Step361ExitGOut 90 [] [(s6Step361ExitFRow,90),(s6Step361ExitFvRow,197),(s6Step361ExitGvRow,197)] [[],[],[]] [s6Step361ExitFOut,s6Step361ExitFvOut,s6Step361ExitGvOut]
    (shrinkRow 777 s6Step361ExitGExtra) ((shrinkRow 795 s6Step361ExitFExtra ++ (shrinkRow 776 s6Step361ExitFvExtra ++ (shrinkRow 775 s6Step361ExitGvExtra ++ [])))) s6Step361ExitG_Incoming s6Step361ExitG_checked h1 s6Step361ExitG_Outgoing
  exact h0

private theorem s6Step361ExitBank_checked : compileHmrBankResizeLog .exit s6Step361ExitGBefore ⟨s6Step361ExitFRow,s6Step361ExitGRow,s6Step361ExitFvRow,s6Step361ExitGvRow⟩ ⟨90,90,197,197⟩ [[],[],[],[]]=
    some (s6Step361ExitGvAfter,⟨s6Step361ExitFOut,s6Step361ExitGOut,s6Step361ExitFvOut,s6Step361ExitGvOut⟩,(shrinkRow 777 s6Step361ExitGExtra ++ (shrinkRow 795 s6Step361ExitFExtra ++ (shrinkRow 776 s6Step361ExitFvExtra ++ (shrinkRow 775 s6Step361ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step361ExitBank_rows]
  rfl

private theorem s6Step361Add0_apart : Disjoint s6Step361Add0Arena.live s6Step361Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step361Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361Add0_card : s6Step361Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step361Add0_borrowed : s6Step361Add0Arena.checkBorrow (hmrHybridCount s6Step361Add0Arena s6Step361Add0B.length) s6Step361Add0Work=some s6Step361Add0During := by
  have len : s6Step361Add0Work.length=hmrHybridCount s6Step361Add0Arena s6Step361Add0B.length := by
    rw [hmrHybridCount,s6Step361Add0_card]
    decide +kernel
  have nd : s6Step361Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step361Add0Arena s6Step361Add0During s6Step361Add0Work.toFinset s6Step361Add0_bounded s6Step361Add0_apart rfl

private theorem s6Step361Add0_distinct : (805::887::802::(s6Step361Add0A++s6Step361Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361Add0_owned : (805::887::802::(s6Step361Add0A++s6Step361Add0B)).toFinset⊆s6Step361Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step361Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361Add0_checked : compileHmrHybridCinLog s6Step361Add0Arena 887 805 802 s6Step361Add0A s6Step361Add0B s6Step361Add0Work=some s6Step361Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step361Add0Arena s6Step361Add0During 887 805 802 s6Step361Add0A s6Step361Add0B s6Step361Add0Work
    (by decide +kernel) (by decide +kernel) s6Step361Add0_distinct
    (fun q hq => s6Step361Add0_owned (List.mem_toFinset.mpr hq)) s6Step361Add0_borrowed

private theorem s6Step361Add1_apart : Disjoint s6Step361Add1Arena.live s6Step361Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step361Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361Add1_card : s6Step361Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step361Add1_borrowed : s6Step361Add1Arena.checkBorrow (hmrHybridCount s6Step361Add1Arena s6Step361Add1B.length) s6Step361Add1Work=some s6Step361Add1During := by
  have len : s6Step361Add1Work.length=hmrHybridCount s6Step361Add1Arena s6Step361Add1B.length := by
    rw [hmrHybridCount,s6Step361Add1_card]
    decide +kernel
  have nd : s6Step361Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step361Add1Arena s6Step361Add1During s6Step361Add1Work.toFinset s6Step361Add1_bounded s6Step361Add1_apart rfl

private theorem s6Step361Add1_distinct : (805::887::802::(s6Step361Add1A++s6Step361Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361Add1_owned : (805::887::802::(s6Step361Add1A++s6Step361Add1B)).toFinset⊆s6Step361Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step361Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361Add1_checked : compileHmrHybridCinLog s6Step361Add1Arena 887 805 802 s6Step361Add1A s6Step361Add1B s6Step361Add1Work=some s6Step361Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step361Add1Arena s6Step361Add1During 887 805 802 s6Step361Add1A s6Step361Add1B s6Step361Add1Work
    (by decide +kernel) (by decide +kernel) s6Step361Add1_distinct
    (fun q hq => s6Step361Add1_owned (List.mem_toFinset.mpr hq)) s6Step361Add1_borrowed

private theorem s6Step361F4_apart : Disjoint (s6Step361Add0A++s6Step361Add0B).toFinset (s6Step361Add1A++s6Step361Add1B).toFinset := by
  have nd : ((s6Step361Add0A++s6Step361Add0B)++(s6Step361Add1A++s6Step361Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step361F4_carry : s6Step361F4FlagArena.checkBorrow 1 [802]=some s6Step361Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step361F4FlagArena,s6Step361HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step361F4FlagArena,s6Step361HeadFvAfter,s6Step361Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step361F4_distinct : (858::887::805::802::((s6Step361Add0A++s6Step361Add1A)++(s6Step361Add0B++s6Step361Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361F4_flag : s6Step361HeadFvAfter.checkBorrow 1 [805]=some s6Step361F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step361HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step361F4_owned : (858::887::((s6Step361Add0A++s6Step361Add1A)++(s6Step361Add0B++s6Step361Add1B))).toFinset⊆s6Step361HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step361HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361F4_checked : compileHmrHybridF4Log s6Step361HeadFvAfter 858 887 s6Step361Add0A s6Step361Add0B s6Step361Add1A s6Step361Add1B [805] [802] s6Step361Add0Work s6Step361Add1Work=some s6Step361F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step361HeadFvAfter s6Step361F4FlagArena s6Step361Add0Arena s6Step361Add0During s6Step361Add1During 858 887
    s6Step361Add0A s6Step361Add0B s6Step361Add1A s6Step361Add1B [805] [802] s6Step361Add0Work s6Step361Add1Work
    (fun q hq => s6Step361F4_owned (List.mem_toFinset.mpr hq)) s6Step361F4_flag s6Step361F4_carry
    s6Step361F4_distinct s6Step361F4_apart s6Step361Add0_checked s6Step361Add1_checked

private theorem s6Step361Front_branch : s6Step361FrontSigmaArena.checkBorrow 1 [887]=some s6Step361HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step361FrontSigmaArena,s6Step361EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step361FrontSigmaArena,s6Step361EntryGvAfter,s6Step361HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step361Front_entry : HmrFrontEntryValid s6Step361EntryFBefore s6Step361FrontBank 91 197 ⟨90,90,197,197⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step361FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step361EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step361EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step361FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step361Front_sigma : s6Step361EntryGvAfter.checkBorrow 1 [858]=some s6Step361FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step361EntryGvAfter,arenaWires]
  · rfl

private def s6Step361HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361HeadFBefore : Arena := s6Step361HeadGAfter

private def s6Step361HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346],795⟩

private def s6Step361HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩

private def s6Step361HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],777⟩

private def s6Step361HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778],775⟩

private theorem s6Step361HeadBank_incomingDistinct : ([s6Step361HeadGRow,s6Step361HeadFRow,s6Step361HeadGvRow,s6Step361HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361HeadF_Incoming : rowsOwned s6Step361HeadFBefore [s6Step361HeadFRow,s6Step361HeadGvRow,s6Step361HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step361HeadGRow,s6Step361HeadFRow,s6Step361HeadGvRow,s6Step361HeadFvRow] 1 s6Step361HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step361HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step361HeadBank_outgoingOwned : rowsOwned s6Step361HeadFvAfter [s6Step361HeadGOut,s6Step361HeadFOut,s6Step361HeadGvOut,s6Step361HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step361HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step361HeadF_Outgoing : rowsOwned s6Step361HeadFvAfter [s6Step361HeadFOut,s6Step361HeadGvOut,s6Step361HeadFvOut] :=
  hmrRows_owned_drop s6Step361HeadFvAfter [s6Step361HeadGOut,s6Step361HeadFOut,s6Step361HeadGvOut,s6Step361HeadFvOut] 1 s6Step361HeadBank_outgoingOwned

private theorem s6Step361HeadF_distinct : (s6Step361HeadFRow.sign::s6Step361HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361HeadF_owned : (s6Step361HeadFRow.sign::s6Step361HeadFRow.payload).toFinset⊆s6Step361HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step361HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361HeadF_reserved : s6Step361HeadFBefore.reserve s6Step361HeadFFresh.toFinset=some s6Step361HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step361HeadFFresh,arenaWires]
  · norm_num [s6Step361HeadFBefore,s6Step361HeadGAfter,s6Step361HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step361HeadFAfter,s6Step361HeadFBefore,s6Step361HeadGAfter,s6Step361HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step361HeadF_checked : planRowResizeLog s6Step361HeadFBefore s6Step361HeadFRow 92 s6Step361HeadFFresh=
    some (s6Step361HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 906],795⟩,growRow 795 s6Step361HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step361HeadFBefore s6Step361HeadFAfter s6Step361HeadFRow 92 s6Step361HeadFFresh
    s6Step361HeadF_distinct s6Step361HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step361HeadF_reserved
  have rowEq : WindowRow.mk (s6Step361HeadFRow.payload++s6Step361HeadFFresh) s6Step361HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 906],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step361HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step361HeadFvBefore : Arena := s6Step361HeadGvAfter

private theorem s6Step361HeadFv_Incoming : rowsOwned s6Step361HeadFvBefore [s6Step361HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step361HeadGRow,s6Step361HeadFRow,s6Step361HeadGvRow,s6Step361HeadFvRow] 3 s6Step361HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step361HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step361HeadFv_Outgoing : rowsOwned s6Step361HeadFvAfter [s6Step361HeadFvOut] :=
  hmrRows_owned_drop s6Step361HeadFvAfter [s6Step361HeadGOut,s6Step361HeadFOut,s6Step361HeadGvOut,s6Step361HeadFvOut] 3 s6Step361HeadBank_outgoingOwned

private theorem s6Step361HeadFv_distinct : (s6Step361HeadFvRow.sign::s6Step361HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361HeadFv_owned : (s6Step361HeadFvRow.sign::s6Step361HeadFvRow.payload).toFinset⊆s6Step361HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step361HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361HeadFv_reserved : s6Step361HeadFvBefore.reserve s6Step361HeadFvFresh.toFinset=some s6Step361HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step361HeadFvFresh,arenaWires]
  · norm_num [s6Step361HeadFvBefore,s6Step361HeadGvAfter,s6Step361HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step361HeadFvAfter,s6Step361HeadFvBefore,s6Step361HeadGvAfter,s6Step361HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step361HeadFv_checked : planRowResizeLog s6Step361HeadFvBefore s6Step361HeadFvRow 198 s6Step361HeadFvFresh=
    some (s6Step361HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876],776⟩,growRow 776 s6Step361HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step361HeadFvBefore s6Step361HeadFvAfter s6Step361HeadFvRow 198 s6Step361HeadFvFresh
    s6Step361HeadFv_distinct s6Step361HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step361HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step361HeadFvRow.payload++s6Step361HeadFvFresh) s6Step361HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step361HeadG_Incoming : rowsOwned s6Step361HeadGBefore [s6Step361HeadGRow,s6Step361HeadFRow,s6Step361HeadGvRow,s6Step361HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step361HeadGRow,s6Step361HeadFRow,s6Step361HeadGvRow,s6Step361HeadFvRow] 0 s6Step361HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step361HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step361HeadG_Outgoing : rowsOwned s6Step361HeadFvAfter [s6Step361HeadGOut,s6Step361HeadFOut,s6Step361HeadGvOut,s6Step361HeadFvOut] :=
  hmrRows_owned_drop s6Step361HeadFvAfter [s6Step361HeadGOut,s6Step361HeadFOut,s6Step361HeadGvOut,s6Step361HeadFvOut] 0 s6Step361HeadBank_outgoingOwned

private theorem s6Step361HeadG_distinct : (s6Step361HeadGRow.sign::s6Step361HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361HeadG_owned : (s6Step361HeadGRow.sign::s6Step361HeadGRow.payload).toFinset⊆s6Step361HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step361HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361HeadG_reserved : s6Step361HeadGBefore.reserve s6Step361HeadGFresh.toFinset=some s6Step361HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step361HeadGFresh,arenaWires]
  · norm_num [s6Step361HeadGBefore,s6Step361HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step361HeadGAfter,s6Step361HeadGBefore,s6Step361HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step361HeadG_checked : planRowResizeLog s6Step361HeadGBefore s6Step361HeadGRow 92 s6Step361HeadGFresh=
    some (s6Step361HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 892],777⟩,growRow 777 s6Step361HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step361HeadGBefore s6Step361HeadGAfter s6Step361HeadGRow 92 s6Step361HeadGFresh
    s6Step361HeadG_distinct s6Step361HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step361HeadG_reserved
  have rowEq : WindowRow.mk (s6Step361HeadGRow.payload++s6Step361HeadGFresh) s6Step361HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 892],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step361HeadGvBefore : Arena := s6Step361HeadFAfter

private theorem s6Step361HeadGv_Incoming : rowsOwned s6Step361HeadGvBefore [s6Step361HeadGvRow,s6Step361HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step361HeadGRow,s6Step361HeadFRow,s6Step361HeadGvRow,s6Step361HeadFvRow] 2 s6Step361HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step361HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step361HeadGv_Outgoing : rowsOwned s6Step361HeadFvAfter [s6Step361HeadGvOut,s6Step361HeadFvOut] :=
  hmrRows_owned_drop s6Step361HeadFvAfter [s6Step361HeadGOut,s6Step361HeadFOut,s6Step361HeadGvOut,s6Step361HeadFvOut] 2 s6Step361HeadBank_outgoingOwned

private theorem s6Step361HeadGv_distinct : (s6Step361HeadGvRow.sign::s6Step361HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step361HeadGv_owned : (s6Step361HeadGvRow.sign::s6Step361HeadGvRow.payload).toFinset⊆s6Step361HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step361HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step361HeadGv_reserved : s6Step361HeadGvBefore.reserve s6Step361HeadGvFresh.toFinset=some s6Step361HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step361HeadGvFresh,arenaWires]
  · norm_num [s6Step361HeadGvBefore,s6Step361HeadFAfter,s6Step361HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step361HeadGvAfter,s6Step361HeadGvBefore,s6Step361HeadFAfter,s6Step361HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step361HeadGv_checked : planRowResizeLog s6Step361HeadGvBefore s6Step361HeadGvRow 198 s6Step361HeadGvFresh=
    some (s6Step361HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 825],775⟩,growRow 775 s6Step361HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step361HeadGvBefore s6Step361HeadGvAfter s6Step361HeadGvRow 198 s6Step361HeadGvFresh
    s6Step361HeadGv_distinct s6Step361HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step361HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step361HeadGvRow.payload++s6Step361HeadGvFresh) s6Step361HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 825],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step361HeadBank_rows : planWindowRowsLog s6Step361HeadGBefore [(s6Step361HeadGRow,92),(s6Step361HeadFRow,92),(s6Step361HeadGvRow,198),(s6Step361HeadFvRow,198)] [s6Step361HeadGFresh,s6Step361HeadFFresh,s6Step361HeadGvFresh,s6Step361HeadFvFresh]=
    some (s6Step361HeadFvAfter,[s6Step361HeadGOut,s6Step361HeadFOut,s6Step361HeadGvOut,s6Step361HeadFvOut],(growRow 777 s6Step361HeadGFresh ++ (growRow 795 s6Step361HeadFFresh ++ (growRow 775 s6Step361HeadGvFresh ++ (growRow 776 s6Step361HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step361HeadFvAfter [] []=some (s6Step361HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step361HeadFvBefore s6Step361HeadFvAfter s6Step361HeadFvAfter
    s6Step361HeadFvRow s6Step361HeadFvOut 198 s6Step361HeadFvFresh [] [] []
    (growRow 776 s6Step361HeadFvFresh) ([]) s6Step361HeadFv_Incoming s6Step361HeadFv_checked h4 s6Step361HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step361HeadGvBefore s6Step361HeadGvAfter s6Step361HeadFvAfter
    s6Step361HeadGvRow s6Step361HeadGvOut 198 s6Step361HeadGvFresh [(s6Step361HeadFvRow,198)] [s6Step361HeadFvFresh] [s6Step361HeadFvOut]
    (growRow 775 s6Step361HeadGvFresh) ((growRow 776 s6Step361HeadFvFresh ++ [])) s6Step361HeadGv_Incoming s6Step361HeadGv_checked h3 s6Step361HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step361HeadFBefore s6Step361HeadFAfter s6Step361HeadFvAfter
    s6Step361HeadFRow s6Step361HeadFOut 92 s6Step361HeadFFresh [(s6Step361HeadGvRow,198),(s6Step361HeadFvRow,198)] [s6Step361HeadGvFresh,s6Step361HeadFvFresh] [s6Step361HeadGvOut,s6Step361HeadFvOut]
    (growRow 795 s6Step361HeadFFresh) ((growRow 775 s6Step361HeadGvFresh ++ (growRow 776 s6Step361HeadFvFresh ++ []))) s6Step361HeadF_Incoming s6Step361HeadF_checked h2 s6Step361HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step361HeadGBefore s6Step361HeadGAfter s6Step361HeadFvAfter
    s6Step361HeadGRow s6Step361HeadGOut 92 s6Step361HeadGFresh [(s6Step361HeadFRow,92),(s6Step361HeadGvRow,198),(s6Step361HeadFvRow,198)] [s6Step361HeadFFresh,s6Step361HeadGvFresh,s6Step361HeadFvFresh] [s6Step361HeadFOut,s6Step361HeadGvOut,s6Step361HeadFvOut]
    (growRow 777 s6Step361HeadGFresh) ((growRow 795 s6Step361HeadFFresh ++ (growRow 775 s6Step361HeadGvFresh ++ (growRow 776 s6Step361HeadFvFresh ++ [])))) s6Step361HeadG_Incoming s6Step361HeadG_checked h1 s6Step361HeadG_Outgoing
  exact h0

private theorem s6Step361HeadBank_checked : compileHmrBankResizeLog .headroom s6Step361HeadGBefore ⟨s6Step361HeadFRow,s6Step361HeadGRow,s6Step361HeadFvRow,s6Step361HeadGvRow⟩ ⟨92,92,198,198⟩ [s6Step361HeadGFresh,s6Step361HeadFFresh,s6Step361HeadGvFresh,s6Step361HeadFvFresh]=
    some (s6Step361HeadFvAfter,⟨s6Step361HeadFOut,s6Step361HeadGOut,s6Step361HeadFvOut,s6Step361HeadGvOut⟩,(growRow 777 s6Step361HeadGFresh ++ (growRow 795 s6Step361HeadFFresh ++ (growRow 775 s6Step361HeadGvFresh ++ (growRow 776 s6Step361HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step361HeadBank_rows]
  rfl

private theorem s6Step361Front_checked : compileHmrSourceFrontLog s6Step361EntryFBefore s6Step361FrontBank 91 197 ⟨90,90,197,197⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step361FrontLog=some s6Step361FrontPlan := by
  have pairEq : s6Step361FrontPair=⟨s6Step361HeadFRow,s6Step361HeadGRow,s6Step361HeadFvRow,s6Step361HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step361FrontHead=⟨s6Step361ExitFRow,s6Step361ExitGRow,s6Step361ExitFvRow,s6Step361ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step361Add0A=s6Step361FrontHead.f.wires := by decide +kernel
  have gEq : s6Step361Add0B=s6Step361FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step361Add1A=s6Step361FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step361Add1B=s6Step361FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step361EntryFBefore s6Step361FrontBank 91 197 ⟨90,90,197,197⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step361FrontLog s6Step361FrontPlan
  · exact s6Step361Front_entry
  · exact s6Step361EntryBank_checked
  · exact s6Step361Front_sigma
  · rfl
  · exact s6Step361Front_branch
  · rfl
  · simpa only [s6Step361FrontPlan,pairEq] using s6Step361HeadBank_checked
  · simpa only [s6Step361FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step361F4_checked
  · exact s6Step361Counter_checked
  · rfl
  · simpa only [s6Step361FrontPlan,headEq] using s6Step361ExitBank_checked

private theorem s6Step361Complete_explicit_checked : compileHmrEarlyStepLog s6Step361EntryFBefore s6Step361FrontBank 91 197 ⟨90,90,197,197⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step361CompleteLog=some s6Step361CompletePlan := by
  let Q := s6Step361EarlyControlPlan
  have hq := s6Step361EarlyControl_plan_checked
  have fv1 : s6Step361CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step361CompleteOut.fv.payload[2]?.getD s6Step361CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step361CompleteOut.fv.payload[3]?.getD s6Step361CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step361CompleteOut.fv.payload[4]?.getD s6Step361CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step361EntryFBefore s6Step361EarlyControlArena s6Step361FrontBank 91 197 ⟨90,90,197,197⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step361CompleteLog s6Step361FrontPlan Q
    s6Step361Front_checked s6Step361Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step361Complete_owned s6Step361Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step361EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 s6Step361CompleteOut.fv.second (s6Step361CompleteOut.fv.payload[2]?.getD s6Step361CompleteOut.fv.sign) (s6Step361CompleteOut.fv.payload[3]?.getD s6Step361CompleteOut.fv.sign) (s6Step361CompleteOut.fv.payload[4]?.getD s6Step361CompleteOut.fv.sign) 887 60 s6Step361EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep361Arena : Arena := s6Step361EntryFBefore
def s6PrivateStep361Bank : WindowBank := s6Step361FrontBank
def s6PrivateStep361Spec : HmrSourceWalkStepLog := ⟨91,197,⟨90,90,197,197⟩,60,.early s6Step361CompleteLog⟩
def s6PrivateStep361Plan : HmrSourceStepPlan := .early s6Step361CompletePlan
theorem s6PrivateStep361_source : s6PrivateStep361Spec=s6ObservedLogs352[9] := rfl
theorem s6PrivateStep361_checked : compileHmrSourceStepLog s6PrivateStep361Arena s6PrivateStep361Bank
    s6PrivateStep361Spec.fgWidth s6PrivateStep361Spec.vWidth s6PrivateStep361Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 361 s6PrivateStep361Spec.need none s6PrivateStep361Spec.log=some s6PrivateStep361Plan := by
  change compileHmrSourceStepLog s6Step361EntryFBefore s6Step361FrontBank 91 197 ⟨90,90,197,197⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 361 60 none (.early s6Step361CompleteLog)=some (.early s6Step361CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 361<498)]
  rw [s6Step361Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
