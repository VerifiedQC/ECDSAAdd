import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep360
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

private def s6Step362CompleteMoves : List (Wire × Wire) := [(908,89)]

private def s6Step362EarlyControlLog : HmrEarlyControlLog := ⟨[908, 825, 807, 922, 906],[892],[805],[802, 843, 877, 792, 816, 819],[]⟩

private def s6Step362FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[922], [807], [825], [876]],[[], [], [], []]⟩,[887],[858],[906],[892],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[906, 892, 805, 802]⟩

private def s6Step362CompleteLog : HmrEarlyStepLog := ⟨s6Step362FrontLog,s6Step362CompleteMoves,s6Step362EarlyControlLog⟩

private def s6Step362ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345],795⟩

private def s6Step362ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876],776⟩

private def s6Step362ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88],777⟩

private def s6Step362ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778],775⟩

private def s6Step362FrontOut : WindowBank := ⟨s6Step362ExitFOut,s6Step362ExitGOut,s6Step362ExitFvOut,s6Step362ExitGvOut⟩

private def s6Step362CompleteOut : WindowBank := s6Step362FrontOut.repacked s6Step362CompleteMoves

private def s6Step362EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step362EarlyControlPositiveArena,[892],s6Step362EarlyControlEqualityArena,[805],⟨⟨887,false⟩,[⟨⟨892,false⟩,805⟩]⟩⟩

private def s6Step362EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,908⟩,⟨⟨772,false⟩,825⟩,⟨⟨771,false⟩,807⟩,⟨⟨770,false⟩,922⟩,⟨⟨769,false⟩,906⟩]⟩

private def s6Step362EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step362EarlyControlZeroArena,s6Step362EarlyControlZeroPlan,s6Step362EarlyControlClassPlan,s6Step362EarlyControlFlagArena,s6Step362EarlyControlFittedArena,s6Step362EarlyControlHistoryArena,s6Step362EarlyControlSigmaArena,s6Step362EarlyControlOutputArena,s6Step362EarlyControlLog⟩

private def s6Step362CounterWork : List Wire := [906, 892, 805, 802]

private theorem s6Step362Counter_bounded : s6Step362CounterWork.toFinset⊆arenaWires := by norm_num [s6Step362CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step362HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362CounterDuring : Arena := ⟨s6Step362HeadFvAfter.live∪s6Step362CounterWork.toFinset,Finset.union_subset s6Step362HeadFvAfter.bounded s6Step362Counter_bounded⟩

private def s6Step362EntryFFresh : List Wire := []

private def s6Step362EntryFvFresh : List Wire := []

private def s6Step362EntryGFresh : List Wire := []

private def s6Step362EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362EntryGvAfter : Arena := s6Step362EntryFBefore

private def s6Step362EntryGvFresh : List Wire := []

private def s6Step362ExitFExtra : List Wire := [807]

private def s6Step362ExitGExtra : List Wire := [89, 922]

private def s6Step362ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<89) ∨ (90≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362ExitGvExtra : List Wire := [825]

private def s6Step362Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362Add0Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step362Add0_bounded : s6Step362Add0Work.toFinset⊆arenaWires := by
  have h : s6Step362Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step362Add0During : Arena := ⟨s6Step362Add0Arena.live∪s6Step362Add0Work.toFinset,Finset.union_subset s6Step362Add0Arena.bounded s6Step362Add0_bounded⟩

private def s6Step362Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362Add1Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step362Add1_bounded : s6Step362Add1Work.toFinset⊆arenaWires := by
  have h : s6Step362Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step362Add1During : Arena := ⟨s6Step362Add1Arena.live∪s6Step362Add1Work.toFinset,Finset.union_subset s6Step362Add1Arena.bounded s6Step362Add1_bounded⟩

private def s6Step362F4FlagArena : Arena := ⟨s6Step362HeadFvAfter.live∪{906},Finset.union_subset s6Step362HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step362F4Plan : HmrHybridF4Plan := ⟨s6Step362F4FlagArena,[906],s6Step362Add0Arena,[892],s6Step362Add0During,s6Step362Add0Work,s6Step362Add1During,s6Step362Add1Work⟩

private def s6Step362HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 807],795⟩

private def s6Step362HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876],776⟩

private def s6Step362HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 922],777⟩

private def s6Step362HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 825],775⟩

private def s6Step362FrontHead : WindowBank := ⟨s6Step362HeadFOut,s6Step362HeadGOut,s6Step362HeadFvOut,s6Step362HeadGvOut⟩

private def s6Step362EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345],795⟩

private def s6Step362EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩

private def s6Step362EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89],777⟩

private def s6Step362EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778],775⟩

private def s6Step362FrontPair : WindowBank := ⟨s6Step362EntryFOut,s6Step362EntryGOut,s6Step362EntryFvOut,s6Step362EntryGvOut⟩

private def s6Step362FrontSigmaArena : Arena := ⟨s6Step362EntryGvAfter.live∪{887},Finset.union_subset s6Step362EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step362HeadFFresh : List Wire := [807]

private def s6Step362HeadFvFresh : List Wire := [876]

private def s6Step362HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362HeadGFresh : List Wire := [922]

private def s6Step362HeadGvFresh : List Wire := [825]

private def s6Step362FrontPlan : HmrSourceFront := ⟨s6Step362EntryGvAfter,s6Step362FrontPair,(growRow 795 s6Step362EntryFFresh ++ (growRow 777 s6Step362EntryGFresh ++ (growRow 776 s6Step362EntryFvFresh ++ (growRow 775 s6Step362EntryGvFresh ++ [])))),s6Step362FrontSigmaArena,[887],s6Step362HeadGBefore,[858],
  s6Step362HeadFvAfter,s6Step362FrontHead,(growRow 777 s6Step362HeadGFresh ++ (growRow 795 s6Step362HeadFFresh ++ (growRow 775 s6Step362HeadGvFresh ++ (growRow 776 s6Step362HeadFvFresh ++ [])))),s6Step362F4Plan,s6Step362CounterDuring,s6Step362CounterWork,s6Step362ExitGvAfter,s6Step362FrontOut,(shrinkRow 777 s6Step362ExitGExtra ++ (shrinkRow 795 s6Step362ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step362ExitGvExtra ++ []))))⟩

private def s6Step362CompletePlan : HmrEarlyStepPlan := ⟨s6Step362FrontPlan,s6Step362EarlyControlArena,s6Step362EarlyControlPlan,s6Step362CompleteMoves⟩

private theorem s6Step362Complete_apart : List.Disjoint (s6Step362CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [887, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step362CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[887, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step362Complete_owned : (s6Step362CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step362EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step362EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step362CompleteMoveArena : Arena := ⟨s6Step362ExitGvAfter.live∪{89},Finset.union_subset s6Step362ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step362Complete_repack : s6Step362ExitGvAfter.checkRepack s6Step362CompleteMoves=some s6Step362EarlyControlArena := by
  have owned : 908∈s6Step362ExitGvAfter.live := by norm_num [s6Step362ExitGvAfter,arenaWires]
  have reserve : s6Step362ExitGvAfter.reserve {89}=some s6Step362CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step362ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step362CompleteMoveArena.retireSet {908}=s6Step362EarlyControlArena := by
    unfold Arena.retireSet s6Step362EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step362CompleteMoveArena,s6Step362ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step362CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step362CompleteMoveArena.retireSet {908}).checkRepack []=some s6Step362EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step362EarlyControl_branchOwned : ([858] : List Wire).toFinset⊆s6Step362EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step362EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362EarlyControl_branch : compileHmrBranchRetirement s6Step362EarlyControlSigmaArena 858=some s6Step362EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step362EarlyControl_branchOwned
  · ext q
    simp [s6Step362EarlyControlOutputArena,s6Step362EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step362EarlyControl_classEqualityBorrow : s6Step362EarlyControlPositiveArena.checkBorrow (([887, 892] : List Wire).length-1) s6Step362EarlyControlLog.classWork=some s6Step362EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step362EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step362EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step362EarlyControlEqualityArena,s6Step362EarlyControlPositiveArena,s6Step362EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step362EarlyControl_classEqualityOwned : ([887, 892] : List Wire).toFinset⊆s6Step362EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step362EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362EarlyControl_classEquality : compileHmrEqualityLog s6Step362EarlyControlPositiveArena [887, 892] 0 s6Step362EarlyControlLog.classWork=some (s6Step362EarlyControlEqualityArena,s6Step362EarlyControlLog.classWork,s6Step362EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step362EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step362EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step362EarlyControl_classOwned : ([769, 906, 887] : List Wire).toFinset⊆s6Step362EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step362EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362EarlyControl_positiveBorrow : s6Step362EarlyControlZeroArena.checkBorrow (1) s6Step362EarlyControlLog.positiveWork=some s6Step362EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step362EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step362EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step362EarlyControlPositiveArena,s6Step362EarlyControlZeroArena,s6Step362EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step362EarlyControl_class : compileHmrSourceClassLog s6Step362EarlyControlZeroArena false 769 s6Step362EarlyControlZeroPlan.top 0 887 s6Step362EarlyControlLog.positiveWork s6Step362EarlyControlLog.classWork=some s6Step362EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step362EarlyControlClassPlan s6Step362EarlyControlZeroArena false 769 s6Step362EarlyControlZeroPlan.top 0 887
  constructor
  · decide +kernel
  · exact s6Step362EarlyControl_classOwned
  · exact s6Step362EarlyControl_positiveBorrow
  · exact s6Step362EarlyControl_classEquality

private theorem s6Step362EarlyControl_entryRecordOwned : ([858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step362EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step362EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362EarlyControl_entrySigmaOwned : ([887, 254] : List Wire).toFinset⊆s6Step362EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step362EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362EarlyControl_fitBorrow : s6Step362EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step362EarlyControlLog.recordFresh=some s6Step362EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step362EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step362EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step362EarlyControlFittedArena,s6Step362EarlyControlFlagArena,s6Step362EarlyControlLog,arenaWires]

private theorem s6Step362EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step362EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step362EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362EarlyControl_fit : compileHmrRecordGrowLog s6Step362EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step362EarlyControlLog.recordFresh=some s6Step362EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step362EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step362EarlyControl_fitBorrow

private theorem s6Step362EarlyControl_flagsBorrow : s6Step362EarlyControlEqualityArena.checkBorrow (6) s6Step362EarlyControlLog.flagWork=some s6Step362EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step362EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step362EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step362EarlyControlFlagArena,s6Step362EarlyControlEqualityArena,s6Step362EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step362EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step362EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step362EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362EarlyControl_flags : compileHmrFlagsLog s6Step362EarlyControlClassPlan.equalityArena s6Step362EarlyControlClassPlan.equality.top 253 252 251 s6Step362EarlyControlLog.flagWork=some s6Step362EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step362EarlyControl_flagsOwned⟩
  · exact s6Step362EarlyControl_flagsBorrow

private theorem s6Step362EarlyControl_historyBorrow : s6Step362EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step362EarlyControlLog.recordFresh=some s6Step362EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step362EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step362EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step362EarlyControlHistoryArena,s6Step362EarlyControlArena,s6Step362EarlyControlLog,arenaWires]

private theorem s6Step362EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step362EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step362EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362EarlyControl_history : compileHmrRecordGrowLog s6Step362EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step362EarlyControlLog.recordFresh=some s6Step362EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step362EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step362EarlyControl_historyBorrow

private theorem s6Step362EarlyControl_sigmaOwned : ([254, 887] : List Wire).toFinset⊆s6Step362EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step362EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362EarlyControl_sigmaReleaseOwned : ([887] : List Wire).toFinset⊆s6Step362EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step362EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362EarlyControl_sigmaRelease : s6Step362EarlyControlHistoryArena.release {887} (fun _ => false)=some s6Step362EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step362EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step362EarlyControlSigmaArena,s6Step362EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step362EarlyControl_sigma : compileHmrSigmaDropLog s6Step362EarlyControlHistoryArena false 0 0 254 887 []=some s6Step362EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step362EarlyControl_sigmaOwned⟩
  · exact s6Step362EarlyControl_sigmaRelease

private theorem s6Step362EarlyControl_zeroBorrow : s6Step362EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step362EarlyControlLog.zeroWork=some s6Step362EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step362EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step362EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step362EarlyControlZeroArena,s6Step362EarlyControlArena,s6Step362EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step362EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step362EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step362EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362EarlyControl_zero : compileHmrEqualityLog s6Step362EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step362EarlyControlLog.zeroWork=some (s6Step362EarlyControlZeroArena,s6Step362EarlyControlLog.zeroWork,s6Step362EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step362EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step362EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step362EarlyControl_logged : s6Step362EarlyControlPlan.Logged s6Step362EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 887 254 253 252 251 858 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step362EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step362EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step362EarlyControl_zero
  · exact s6Step362EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step362EarlyControl_flags
  · exact s6Step362EarlyControl_fit
  · exact s6Step362EarlyControl_history
  · exact s6Step362EarlyControl_sigma
  · exact s6Step362EarlyControl_branch

private theorem s6Step362EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step362EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 887 254 253 252 251 858 60 s6Step362EarlyControlLog=some s6Step362EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step362EarlyControlPlan s6Step362EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 887 254 253 252 251 858 60 s6Step362EarlyControl_logged

private def s6Step362EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345],795⟩

private def s6Step362EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩

private def s6Step362EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89],777⟩

private def s6Step362EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778],775⟩

private def s6Step362FrontBank : WindowBank := ⟨s6Step362EntryFRow,s6Step362EntryGRow,s6Step362EntryFvRow,s6Step362EntryGvRow⟩

private def s6Step362Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 807, 795]

private def s6Step362Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 922, 777]

private def s6Step362Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876, 776]

private def s6Step362Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 825, 775]

private theorem s6Step362Counter_apart : Disjoint s6Step362HeadFvAfter.live s6Step362CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step362HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362Counter_borrowed : s6Step362HeadFvAfter.checkBorrow 4 s6Step362CounterWork=some s6Step362CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step362HeadFvAfter s6Step362CounterDuring s6Step362CounterWork.toFinset s6Step362Counter_bounded s6Step362Counter_apart rfl

private theorem s6Step362Counter_owned : (887::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step362HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step362HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362Counter_checked : compileHmrCounterStepLog s6Step362HeadFvAfter true 887 [774, 773, 772, 771, 770, 769] s6Step362CounterWork=some s6Step362CounterDuring := by
  have owned : ∀q∈887::[774, 773, 772, 771, 770, 769],q∈s6Step362HeadFvAfter.live := fun q hq => s6Step362Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step362Counter_borrowed

private def s6Step362EntryFAfter : Arena := s6Step362EntryFBefore

private theorem s6Step362EntryBank_incomingDistinct : ([s6Step362EntryFRow,s6Step362EntryGRow,s6Step362EntryFvRow,s6Step362EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362EntryF_Incoming : rowsOwned s6Step362EntryFBefore [s6Step362EntryFRow,s6Step362EntryGRow,s6Step362EntryFvRow,s6Step362EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step362EntryFRow,s6Step362EntryGRow,s6Step362EntryFvRow,s6Step362EntryGvRow] 0 s6Step362EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step362EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step362EntryBank_outgoingOwned : rowsOwned s6Step362EntryGvAfter [s6Step362EntryFOut,s6Step362EntryGOut,s6Step362EntryFvOut,s6Step362EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step362EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step362EntryF_Outgoing : rowsOwned s6Step362EntryGvAfter [s6Step362EntryFOut,s6Step362EntryGOut,s6Step362EntryFvOut,s6Step362EntryGvOut] :=
  hmrRows_owned_drop s6Step362EntryGvAfter [s6Step362EntryFOut,s6Step362EntryGOut,s6Step362EntryFvOut,s6Step362EntryGvOut] 0 s6Step362EntryBank_outgoingOwned

private theorem s6Step362EntryF_distinct : (s6Step362EntryFRow.sign::s6Step362EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362EntryF_owned : (s6Step362EntryFRow.sign::s6Step362EntryFRow.payload).toFinset⊆s6Step362EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step362EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362EntryF_reserved : s6Step362EntryFBefore.reserve s6Step362EntryFFresh.toFinset=some s6Step362EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step362EntryFFresh,arenaWires]
  · norm_num [s6Step362EntryFBefore,s6Step362EntryFFresh,arenaWires]
  · simp only [s6Step362EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step362EntryF_checked : planRowResizeLog s6Step362EntryFBefore s6Step362EntryFRow 90 s6Step362EntryFFresh=
    some (s6Step362EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345],795⟩,growRow 795 s6Step362EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step362EntryFBefore s6Step362EntryFAfter s6Step362EntryFRow 90 s6Step362EntryFFresh
    s6Step362EntryF_distinct s6Step362EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step362EntryF_reserved
  have rowEq : WindowRow.mk (s6Step362EntryFRow.payload++s6Step362EntryFFresh) s6Step362EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step362EntryFvAfter : Arena := s6Step362EntryFBefore

private def s6Step362EntryFvBefore : Arena := s6Step362EntryFBefore

private theorem s6Step362EntryFv_Incoming : rowsOwned s6Step362EntryFvBefore [s6Step362EntryFvRow,s6Step362EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step362EntryFRow,s6Step362EntryGRow,s6Step362EntryFvRow,s6Step362EntryGvRow] 2 s6Step362EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step362EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step362EntryFv_Outgoing : rowsOwned s6Step362EntryGvAfter [s6Step362EntryFvOut,s6Step362EntryGvOut] :=
  hmrRows_owned_drop s6Step362EntryGvAfter [s6Step362EntryFOut,s6Step362EntryGOut,s6Step362EntryFvOut,s6Step362EntryGvOut] 2 s6Step362EntryBank_outgoingOwned

private theorem s6Step362EntryFv_distinct : (s6Step362EntryFvRow.sign::s6Step362EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362EntryFv_owned : (s6Step362EntryFvRow.sign::s6Step362EntryFvRow.payload).toFinset⊆s6Step362EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step362EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362EntryFv_reserved : s6Step362EntryFvBefore.reserve s6Step362EntryFvFresh.toFinset=some s6Step362EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step362EntryFvFresh,arenaWires]
  · norm_num [s6Step362EntryFvBefore,s6Step362EntryFBefore,s6Step362EntryFvFresh,arenaWires]
  · simp only [s6Step362EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step362EntryFv_checked : planRowResizeLog s6Step362EntryFvBefore s6Step362EntryFvRow 197 s6Step362EntryFvFresh=
    some (s6Step362EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩,growRow 776 s6Step362EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step362EntryFvBefore s6Step362EntryFvAfter s6Step362EntryFvRow 197 s6Step362EntryFvFresh
    s6Step362EntryFv_distinct s6Step362EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step362EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step362EntryFvRow.payload++s6Step362EntryFvFresh) s6Step362EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step362EntryGAfter : Arena := s6Step362EntryFBefore

private def s6Step362EntryGBefore : Arena := s6Step362EntryFBefore

private theorem s6Step362EntryG_Incoming : rowsOwned s6Step362EntryGBefore [s6Step362EntryGRow,s6Step362EntryFvRow,s6Step362EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step362EntryFRow,s6Step362EntryGRow,s6Step362EntryFvRow,s6Step362EntryGvRow] 1 s6Step362EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step362EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step362EntryG_Outgoing : rowsOwned s6Step362EntryGvAfter [s6Step362EntryGOut,s6Step362EntryFvOut,s6Step362EntryGvOut] :=
  hmrRows_owned_drop s6Step362EntryGvAfter [s6Step362EntryFOut,s6Step362EntryGOut,s6Step362EntryFvOut,s6Step362EntryGvOut] 1 s6Step362EntryBank_outgoingOwned

private theorem s6Step362EntryG_distinct : (s6Step362EntryGRow.sign::s6Step362EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362EntryG_owned : (s6Step362EntryGRow.sign::s6Step362EntryGRow.payload).toFinset⊆s6Step362EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step362EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362EntryG_reserved : s6Step362EntryGBefore.reserve s6Step362EntryGFresh.toFinset=some s6Step362EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step362EntryGFresh,arenaWires]
  · norm_num [s6Step362EntryGBefore,s6Step362EntryFBefore,s6Step362EntryGFresh,arenaWires]
  · simp only [s6Step362EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step362EntryG_checked : planRowResizeLog s6Step362EntryGBefore s6Step362EntryGRow 90 s6Step362EntryGFresh=
    some (s6Step362EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89],777⟩,growRow 777 s6Step362EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step362EntryGBefore s6Step362EntryGAfter s6Step362EntryGRow 90 s6Step362EntryGFresh
    s6Step362EntryG_distinct s6Step362EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step362EntryG_reserved
  have rowEq : WindowRow.mk (s6Step362EntryGRow.payload++s6Step362EntryGFresh) s6Step362EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step362EntryGvBefore : Arena := s6Step362EntryFBefore

private theorem s6Step362EntryGv_Incoming : rowsOwned s6Step362EntryGvBefore [s6Step362EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step362EntryFRow,s6Step362EntryGRow,s6Step362EntryFvRow,s6Step362EntryGvRow] 3 s6Step362EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step362EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step362EntryGv_Outgoing : rowsOwned s6Step362EntryGvAfter [s6Step362EntryGvOut] :=
  hmrRows_owned_drop s6Step362EntryGvAfter [s6Step362EntryFOut,s6Step362EntryGOut,s6Step362EntryFvOut,s6Step362EntryGvOut] 3 s6Step362EntryBank_outgoingOwned

private theorem s6Step362EntryGv_distinct : (s6Step362EntryGvRow.sign::s6Step362EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362EntryGv_owned : (s6Step362EntryGvRow.sign::s6Step362EntryGvRow.payload).toFinset⊆s6Step362EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step362EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362EntryGv_reserved : s6Step362EntryGvBefore.reserve s6Step362EntryGvFresh.toFinset=some s6Step362EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step362EntryGvFresh,arenaWires]
  · norm_num [s6Step362EntryGvBefore,s6Step362EntryFBefore,s6Step362EntryGvFresh,arenaWires]
  · simp only [s6Step362EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step362EntryGv_checked : planRowResizeLog s6Step362EntryGvBefore s6Step362EntryGvRow 197 s6Step362EntryGvFresh=
    some (s6Step362EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778],775⟩,growRow 775 s6Step362EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step362EntryGvBefore s6Step362EntryGvAfter s6Step362EntryGvRow 197 s6Step362EntryGvFresh
    s6Step362EntryGv_distinct s6Step362EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step362EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step362EntryGvRow.payload++s6Step362EntryGvFresh) s6Step362EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step362EntryBank_rows : planWindowRowsLog s6Step362EntryFBefore [(s6Step362EntryFRow,90),(s6Step362EntryGRow,90),(s6Step362EntryFvRow,197),(s6Step362EntryGvRow,197)] [s6Step362EntryFFresh,s6Step362EntryGFresh,s6Step362EntryFvFresh,s6Step362EntryGvFresh]=
    some (s6Step362EntryGvAfter,[s6Step362EntryFOut,s6Step362EntryGOut,s6Step362EntryFvOut,s6Step362EntryGvOut],(growRow 795 s6Step362EntryFFresh ++ (growRow 777 s6Step362EntryGFresh ++ (growRow 776 s6Step362EntryFvFresh ++ (growRow 775 s6Step362EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step362EntryGvAfter [] []=some (s6Step362EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step362EntryGvBefore s6Step362EntryGvAfter s6Step362EntryGvAfter
    s6Step362EntryGvRow s6Step362EntryGvOut 197 s6Step362EntryGvFresh [] [] []
    (growRow 775 s6Step362EntryGvFresh) ([]) s6Step362EntryGv_Incoming s6Step362EntryGv_checked h4 s6Step362EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step362EntryFvBefore s6Step362EntryFvAfter s6Step362EntryGvAfter
    s6Step362EntryFvRow s6Step362EntryFvOut 197 s6Step362EntryFvFresh [(s6Step362EntryGvRow,197)] [s6Step362EntryGvFresh] [s6Step362EntryGvOut]
    (growRow 776 s6Step362EntryFvFresh) ((growRow 775 s6Step362EntryGvFresh ++ [])) s6Step362EntryFv_Incoming s6Step362EntryFv_checked h3 s6Step362EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step362EntryGBefore s6Step362EntryGAfter s6Step362EntryGvAfter
    s6Step362EntryGRow s6Step362EntryGOut 90 s6Step362EntryGFresh [(s6Step362EntryFvRow,197),(s6Step362EntryGvRow,197)] [s6Step362EntryFvFresh,s6Step362EntryGvFresh] [s6Step362EntryFvOut,s6Step362EntryGvOut]
    (growRow 777 s6Step362EntryGFresh) ((growRow 776 s6Step362EntryFvFresh ++ (growRow 775 s6Step362EntryGvFresh ++ []))) s6Step362EntryG_Incoming s6Step362EntryG_checked h2 s6Step362EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step362EntryFBefore s6Step362EntryFAfter s6Step362EntryGvAfter
    s6Step362EntryFRow s6Step362EntryFOut 90 s6Step362EntryFFresh [(s6Step362EntryGRow,90),(s6Step362EntryFvRow,197),(s6Step362EntryGvRow,197)] [s6Step362EntryGFresh,s6Step362EntryFvFresh,s6Step362EntryGvFresh] [s6Step362EntryGOut,s6Step362EntryFvOut,s6Step362EntryGvOut]
    (growRow 795 s6Step362EntryFFresh) ((growRow 777 s6Step362EntryGFresh ++ (growRow 776 s6Step362EntryFvFresh ++ (growRow 775 s6Step362EntryGvFresh ++ [])))) s6Step362EntryF_Incoming s6Step362EntryF_checked h1 s6Step362EntryF_Outgoing
  exact h0

private theorem s6Step362EntryBank_checked : compileHmrBankResizeLog .entry s6Step362EntryFBefore ⟨s6Step362EntryFRow,s6Step362EntryGRow,s6Step362EntryFvRow,s6Step362EntryGvRow⟩ ⟨90,90,197,197⟩ [s6Step362EntryFFresh,s6Step362EntryGFresh,s6Step362EntryFvFresh,s6Step362EntryGvFresh]=
    some (s6Step362EntryGvAfter,⟨s6Step362EntryFOut,s6Step362EntryGOut,s6Step362EntryFvOut,s6Step362EntryGvOut⟩,(growRow 795 s6Step362EntryFFresh ++ (growRow 777 s6Step362EntryGFresh ++ (growRow 776 s6Step362EntryFvFresh ++ (growRow 775 s6Step362EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step362EntryBank_rows]
  rfl

private def s6Step362ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<89) ∨ (90≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<89) ∨ (90≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362ExitFBefore : Arena := s6Step362ExitGAfter

private def s6Step362ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 807],795⟩

private def s6Step362ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876],776⟩

private def s6Step362ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 922],777⟩

private def s6Step362ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 825],775⟩

private theorem s6Step362ExitBank_incomingDistinct : ([s6Step362ExitGRow,s6Step362ExitFRow,s6Step362ExitFvRow,s6Step362ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362ExitF_Incoming : rowsOwned s6Step362ExitFBefore [s6Step362ExitFRow,s6Step362ExitFvRow,s6Step362ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step362ExitGRow,s6Step362ExitFRow,s6Step362ExitFvRow,s6Step362ExitGvRow] 1 s6Step362ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step362ExitFBefore (fun q => (0≤q ∧ q<89) ∨ (90≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step362ExitBank_outgoingOwned : rowsOwned s6Step362ExitGvAfter [s6Step362ExitGOut,s6Step362ExitFOut,s6Step362ExitFvOut,s6Step362ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step362ExitGvAfter (fun q => (0≤q ∧ q<89) ∨ (90≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step362ExitF_Outgoing : rowsOwned s6Step362ExitGvAfter [s6Step362ExitFOut,s6Step362ExitFvOut,s6Step362ExitGvOut] :=
  hmrRows_owned_drop s6Step362ExitGvAfter [s6Step362ExitGOut,s6Step362ExitFOut,s6Step362ExitFvOut,s6Step362ExitGvOut] 1 s6Step362ExitBank_outgoingOwned

private theorem s6Step362ExitF_distinct : (s6Step362ExitFRow.sign::s6Step362ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362ExitF_owned : (s6Step362ExitFRow.sign::s6Step362ExitFRow.payload).toFinset⊆s6Step362ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step362ExitFBefore (fun q => (0≤q ∧ q<89) ∨ (90≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362ExitF_retired : s6Step362ExitFBefore.retireSet s6Step362ExitFExtra.toFinset=s6Step362ExitFAfter := by
  unfold Arena.retireSet s6Step362ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step362ExitFBefore,s6Step362ExitGAfter,s6Step362ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step362ExitF_checked : planRowResizeLog s6Step362ExitFBefore s6Step362ExitFRow 90 []=
    some (s6Step362ExitFAfter,s6Step362ExitFOut,shrinkRow 795 s6Step362ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step362ExitFBefore s6Step362ExitFRow 90 s6Step362ExitF_distinct s6Step362ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step362ExitFRow.payload.take 90) s6Step362ExitFRow.sign=s6Step362ExitFOut := by decide +kernel
  have hi : s6Step362ExitFRow.payload.drop 90=s6Step362ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step362ExitF_retired] at result
  exact result

private def s6Step362ExitFvAfter : Arena := s6Step362ExitFAfter

private def s6Step362ExitFvBefore : Arena := s6Step362ExitFAfter

private theorem s6Step362ExitFv_Incoming : rowsOwned s6Step362ExitFvBefore [s6Step362ExitFvRow,s6Step362ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step362ExitGRow,s6Step362ExitFRow,s6Step362ExitFvRow,s6Step362ExitGvRow] 2 s6Step362ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step362ExitFvBefore (fun q => (0≤q ∧ q<89) ∨ (90≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step362ExitFv_Outgoing : rowsOwned s6Step362ExitGvAfter [s6Step362ExitFvOut,s6Step362ExitGvOut] :=
  hmrRows_owned_drop s6Step362ExitGvAfter [s6Step362ExitGOut,s6Step362ExitFOut,s6Step362ExitFvOut,s6Step362ExitGvOut] 2 s6Step362ExitBank_outgoingOwned

private theorem s6Step362ExitFv_distinct : (s6Step362ExitFvRow.sign::s6Step362ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362ExitFv_owned : (s6Step362ExitFvRow.sign::s6Step362ExitFvRow.payload).toFinset⊆s6Step362ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step362ExitFvBefore (fun q => (0≤q ∧ q<89) ∨ (90≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362ExitFv_reserved : s6Step362ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step362ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step362ExitFv_checked : planRowResizeLog s6Step362ExitFvBefore s6Step362ExitFvRow 198 []=
    some (s6Step362ExitFvAfter,s6Step362ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step362ExitFvBefore s6Step362ExitFvAfter s6Step362ExitFvRow 198 []
    s6Step362ExitFv_distinct s6Step362ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step362ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step362ExitFvRow.payload++[]) s6Step362ExitFvRow.sign=s6Step362ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step362ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step362ExitG_Incoming : rowsOwned s6Step362ExitGBefore [s6Step362ExitGRow,s6Step362ExitFRow,s6Step362ExitFvRow,s6Step362ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step362ExitGRow,s6Step362ExitFRow,s6Step362ExitFvRow,s6Step362ExitGvRow] 0 s6Step362ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step362ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step362ExitG_Outgoing : rowsOwned s6Step362ExitGvAfter [s6Step362ExitGOut,s6Step362ExitFOut,s6Step362ExitFvOut,s6Step362ExitGvOut] :=
  hmrRows_owned_drop s6Step362ExitGvAfter [s6Step362ExitGOut,s6Step362ExitFOut,s6Step362ExitFvOut,s6Step362ExitGvOut] 0 s6Step362ExitBank_outgoingOwned

private theorem s6Step362ExitG_distinct : (s6Step362ExitGRow.sign::s6Step362ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362ExitG_owned : (s6Step362ExitGRow.sign::s6Step362ExitGRow.payload).toFinset⊆s6Step362ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step362ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362ExitG_retired : s6Step362ExitGBefore.retireSet s6Step362ExitGExtra.toFinset=s6Step362ExitGAfter := by
  unfold Arena.retireSet s6Step362ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step362ExitGBefore,s6Step362ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step362ExitG_checked : planRowResizeLog s6Step362ExitGBefore s6Step362ExitGRow 89 []=
    some (s6Step362ExitGAfter,s6Step362ExitGOut,shrinkRow 777 s6Step362ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step362ExitGBefore s6Step362ExitGRow 89 s6Step362ExitG_distinct s6Step362ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step362ExitGRow.payload.take 89) s6Step362ExitGRow.sign=s6Step362ExitGOut := by decide +kernel
  have hi : s6Step362ExitGRow.payload.drop 89=s6Step362ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step362ExitG_retired] at result
  exact result

private def s6Step362ExitGvBefore : Arena := s6Step362ExitFAfter

private theorem s6Step362ExitGv_Incoming : rowsOwned s6Step362ExitGvBefore [s6Step362ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step362ExitGRow,s6Step362ExitFRow,s6Step362ExitFvRow,s6Step362ExitGvRow] 3 s6Step362ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step362ExitGvBefore (fun q => (0≤q ∧ q<89) ∨ (90≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step362ExitGv_Outgoing : rowsOwned s6Step362ExitGvAfter [s6Step362ExitGvOut] :=
  hmrRows_owned_drop s6Step362ExitGvAfter [s6Step362ExitGOut,s6Step362ExitFOut,s6Step362ExitFvOut,s6Step362ExitGvOut] 3 s6Step362ExitBank_outgoingOwned

private theorem s6Step362ExitGv_distinct : (s6Step362ExitGvRow.sign::s6Step362ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362ExitGv_owned : (s6Step362ExitGvRow.sign::s6Step362ExitGvRow.payload).toFinset⊆s6Step362ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step362ExitGvBefore (fun q => (0≤q ∧ q<89) ∨ (90≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362ExitGv_retired : s6Step362ExitGvBefore.retireSet s6Step362ExitGvExtra.toFinset=s6Step362ExitGvAfter := by
  unfold Arena.retireSet s6Step362ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step362ExitGvBefore,s6Step362ExitFAfter,s6Step362ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step362ExitGv_checked : planRowResizeLog s6Step362ExitGvBefore s6Step362ExitGvRow 197 []=
    some (s6Step362ExitGvAfter,s6Step362ExitGvOut,shrinkRow 775 s6Step362ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step362ExitGvBefore s6Step362ExitGvRow 197 s6Step362ExitGv_distinct s6Step362ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step362ExitGvRow.payload.take 197) s6Step362ExitGvRow.sign=s6Step362ExitGvOut := by decide +kernel
  have hi : s6Step362ExitGvRow.payload.drop 197=s6Step362ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step362ExitGv_retired] at result
  exact result

private theorem s6Step362ExitBank_rows : planWindowRowsLog s6Step362ExitGBefore [(s6Step362ExitGRow,89),(s6Step362ExitFRow,90),(s6Step362ExitFvRow,198),(s6Step362ExitGvRow,197)] [[],[],[],[]]=
    some (s6Step362ExitGvAfter,[s6Step362ExitGOut,s6Step362ExitFOut,s6Step362ExitFvOut,s6Step362ExitGvOut],(shrinkRow 777 s6Step362ExitGExtra ++ (shrinkRow 795 s6Step362ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step362ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step362ExitGvAfter [] []=some (s6Step362ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step362ExitGvBefore s6Step362ExitGvAfter s6Step362ExitGvAfter
    s6Step362ExitGvRow s6Step362ExitGvOut 197 [] [] [] []
    (shrinkRow 775 s6Step362ExitGvExtra) ([]) s6Step362ExitGv_Incoming s6Step362ExitGv_checked h4 s6Step362ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step362ExitFvBefore s6Step362ExitFvAfter s6Step362ExitGvAfter
    s6Step362ExitFvRow s6Step362ExitFvOut 198 [] [(s6Step362ExitGvRow,197)] [[]] [s6Step362ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step362ExitGvExtra ++ [])) s6Step362ExitFv_Incoming s6Step362ExitFv_checked h3 s6Step362ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step362ExitFBefore s6Step362ExitFAfter s6Step362ExitGvAfter
    s6Step362ExitFRow s6Step362ExitFOut 90 [] [(s6Step362ExitFvRow,198),(s6Step362ExitGvRow,197)] [[],[]] [s6Step362ExitFvOut,s6Step362ExitGvOut]
    (shrinkRow 795 s6Step362ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step362ExitGvExtra ++ []))) s6Step362ExitF_Incoming s6Step362ExitF_checked h2 s6Step362ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step362ExitGBefore s6Step362ExitGAfter s6Step362ExitGvAfter
    s6Step362ExitGRow s6Step362ExitGOut 89 [] [(s6Step362ExitFRow,90),(s6Step362ExitFvRow,198),(s6Step362ExitGvRow,197)] [[],[],[]] [s6Step362ExitFOut,s6Step362ExitFvOut,s6Step362ExitGvOut]
    (shrinkRow 777 s6Step362ExitGExtra) ((shrinkRow 795 s6Step362ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step362ExitGvExtra ++ [])))) s6Step362ExitG_Incoming s6Step362ExitG_checked h1 s6Step362ExitG_Outgoing
  exact h0

private theorem s6Step362ExitBank_checked : compileHmrBankResizeLog .exit s6Step362ExitGBefore ⟨s6Step362ExitFRow,s6Step362ExitGRow,s6Step362ExitFvRow,s6Step362ExitGvRow⟩ ⟨90,89,198,197⟩ [[],[],[],[]]=
    some (s6Step362ExitGvAfter,⟨s6Step362ExitFOut,s6Step362ExitGOut,s6Step362ExitFvOut,s6Step362ExitGvOut⟩,(shrinkRow 777 s6Step362ExitGExtra ++ (shrinkRow 795 s6Step362ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step362ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step362ExitBank_rows]
  rfl

private theorem s6Step362Add0_apart : Disjoint s6Step362Add0Arena.live s6Step362Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step362Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362Add0_card : s6Step362Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step362Add0_borrowed : s6Step362Add0Arena.checkBorrow (hmrHybridCount s6Step362Add0Arena s6Step362Add0B.length) s6Step362Add0Work=some s6Step362Add0During := by
  have len : s6Step362Add0Work.length=hmrHybridCount s6Step362Add0Arena s6Step362Add0B.length := by
    rw [hmrHybridCount,s6Step362Add0_card]
    decide +kernel
  have nd : s6Step362Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step362Add0Arena s6Step362Add0During s6Step362Add0Work.toFinset s6Step362Add0_bounded s6Step362Add0_apart rfl

private theorem s6Step362Add0_distinct : (906::858::892::(s6Step362Add0A++s6Step362Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362Add0_owned : (906::858::892::(s6Step362Add0A++s6Step362Add0B)).toFinset⊆s6Step362Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step362Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362Add0_checked : compileHmrHybridCinLog s6Step362Add0Arena 858 906 892 s6Step362Add0A s6Step362Add0B s6Step362Add0Work=some s6Step362Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step362Add0Arena s6Step362Add0During 858 906 892 s6Step362Add0A s6Step362Add0B s6Step362Add0Work
    (by decide +kernel) (by decide +kernel) s6Step362Add0_distinct
    (fun q hq => s6Step362Add0_owned (List.mem_toFinset.mpr hq)) s6Step362Add0_borrowed

private theorem s6Step362Add1_apart : Disjoint s6Step362Add1Arena.live s6Step362Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step362Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362Add1_card : s6Step362Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step362Add1_borrowed : s6Step362Add1Arena.checkBorrow (hmrHybridCount s6Step362Add1Arena s6Step362Add1B.length) s6Step362Add1Work=some s6Step362Add1During := by
  have len : s6Step362Add1Work.length=hmrHybridCount s6Step362Add1Arena s6Step362Add1B.length := by
    rw [hmrHybridCount,s6Step362Add1_card]
    decide +kernel
  have nd : s6Step362Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step362Add1Arena s6Step362Add1During s6Step362Add1Work.toFinset s6Step362Add1_bounded s6Step362Add1_apart rfl

private theorem s6Step362Add1_distinct : (906::858::892::(s6Step362Add1A++s6Step362Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362Add1_owned : (906::858::892::(s6Step362Add1A++s6Step362Add1B)).toFinset⊆s6Step362Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step362Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362Add1_checked : compileHmrHybridCinLog s6Step362Add1Arena 858 906 892 s6Step362Add1A s6Step362Add1B s6Step362Add1Work=some s6Step362Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step362Add1Arena s6Step362Add1During 858 906 892 s6Step362Add1A s6Step362Add1B s6Step362Add1Work
    (by decide +kernel) (by decide +kernel) s6Step362Add1_distinct
    (fun q hq => s6Step362Add1_owned (List.mem_toFinset.mpr hq)) s6Step362Add1_borrowed

private theorem s6Step362F4_apart : Disjoint (s6Step362Add0A++s6Step362Add0B).toFinset (s6Step362Add1A++s6Step362Add1B).toFinset := by
  have nd : ((s6Step362Add0A++s6Step362Add0B)++(s6Step362Add1A++s6Step362Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step362F4_carry : s6Step362F4FlagArena.checkBorrow 1 [892]=some s6Step362Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step362F4FlagArena,s6Step362HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step362F4FlagArena,s6Step362HeadFvAfter,s6Step362Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step362F4_distinct : (887::858::906::892::((s6Step362Add0A++s6Step362Add1A)++(s6Step362Add0B++s6Step362Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362F4_flag : s6Step362HeadFvAfter.checkBorrow 1 [906]=some s6Step362F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step362HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step362F4_owned : (887::858::((s6Step362Add0A++s6Step362Add1A)++(s6Step362Add0B++s6Step362Add1B))).toFinset⊆s6Step362HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step362HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362F4_checked : compileHmrHybridF4Log s6Step362HeadFvAfter 887 858 s6Step362Add0A s6Step362Add0B s6Step362Add1A s6Step362Add1B [906] [892] s6Step362Add0Work s6Step362Add1Work=some s6Step362F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step362HeadFvAfter s6Step362F4FlagArena s6Step362Add0Arena s6Step362Add0During s6Step362Add1During 887 858
    s6Step362Add0A s6Step362Add0B s6Step362Add1A s6Step362Add1B [906] [892] s6Step362Add0Work s6Step362Add1Work
    (fun q hq => s6Step362F4_owned (List.mem_toFinset.mpr hq)) s6Step362F4_flag s6Step362F4_carry
    s6Step362F4_distinct s6Step362F4_apart s6Step362Add0_checked s6Step362Add1_checked

private theorem s6Step362Front_branch : s6Step362FrontSigmaArena.checkBorrow 1 [858]=some s6Step362HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step362FrontSigmaArena,s6Step362EntryGvAfter,s6Step362EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step362FrontSigmaArena,s6Step362EntryGvAfter,s6Step362EntryFBefore,s6Step362HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step362Front_entry : HmrFrontEntryValid s6Step362EntryFBefore s6Step362FrontBank 90 197 ⟨90,89,198,197⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step362FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step362EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step362EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step362FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step362Front_sigma : s6Step362EntryGvAfter.checkBorrow 1 [887]=some s6Step362FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step362EntryGvAfter,s6Step362EntryFBefore,arenaWires]
  · rfl

private def s6Step362HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362HeadFBefore : Arena := s6Step362HeadGAfter

private def s6Step362HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345],795⟩

private def s6Step362HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩

private def s6Step362HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89],777⟩

private def s6Step362HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778],775⟩

private theorem s6Step362HeadBank_incomingDistinct : ([s6Step362HeadGRow,s6Step362HeadFRow,s6Step362HeadGvRow,s6Step362HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362HeadF_Incoming : rowsOwned s6Step362HeadFBefore [s6Step362HeadFRow,s6Step362HeadGvRow,s6Step362HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step362HeadGRow,s6Step362HeadFRow,s6Step362HeadGvRow,s6Step362HeadFvRow] 1 s6Step362HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step362HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step362HeadBank_outgoingOwned : rowsOwned s6Step362HeadFvAfter [s6Step362HeadGOut,s6Step362HeadFOut,s6Step362HeadGvOut,s6Step362HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step362HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step362HeadF_Outgoing : rowsOwned s6Step362HeadFvAfter [s6Step362HeadFOut,s6Step362HeadGvOut,s6Step362HeadFvOut] :=
  hmrRows_owned_drop s6Step362HeadFvAfter [s6Step362HeadGOut,s6Step362HeadFOut,s6Step362HeadGvOut,s6Step362HeadFvOut] 1 s6Step362HeadBank_outgoingOwned

private theorem s6Step362HeadF_distinct : (s6Step362HeadFRow.sign::s6Step362HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362HeadF_owned : (s6Step362HeadFRow.sign::s6Step362HeadFRow.payload).toFinset⊆s6Step362HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step362HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362HeadF_reserved : s6Step362HeadFBefore.reserve s6Step362HeadFFresh.toFinset=some s6Step362HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step362HeadFFresh,arenaWires]
  · norm_num [s6Step362HeadFBefore,s6Step362HeadGAfter,s6Step362HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step362HeadFAfter,s6Step362HeadFBefore,s6Step362HeadGAfter,s6Step362HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step362HeadF_checked : planRowResizeLog s6Step362HeadFBefore s6Step362HeadFRow 91 s6Step362HeadFFresh=
    some (s6Step362HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 807],795⟩,growRow 795 s6Step362HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step362HeadFBefore s6Step362HeadFAfter s6Step362HeadFRow 91 s6Step362HeadFFresh
    s6Step362HeadF_distinct s6Step362HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step362HeadF_reserved
  have rowEq : WindowRow.mk (s6Step362HeadFRow.payload++s6Step362HeadFFresh) s6Step362HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 807],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step362HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step362HeadFvBefore : Arena := s6Step362HeadGvAfter

private theorem s6Step362HeadFv_Incoming : rowsOwned s6Step362HeadFvBefore [s6Step362HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step362HeadGRow,s6Step362HeadFRow,s6Step362HeadGvRow,s6Step362HeadFvRow] 3 s6Step362HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step362HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step362HeadFv_Outgoing : rowsOwned s6Step362HeadFvAfter [s6Step362HeadFvOut] :=
  hmrRows_owned_drop s6Step362HeadFvAfter [s6Step362HeadGOut,s6Step362HeadFOut,s6Step362HeadGvOut,s6Step362HeadFvOut] 3 s6Step362HeadBank_outgoingOwned

private theorem s6Step362HeadFv_distinct : (s6Step362HeadFvRow.sign::s6Step362HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362HeadFv_owned : (s6Step362HeadFvRow.sign::s6Step362HeadFvRow.payload).toFinset⊆s6Step362HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step362HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362HeadFv_reserved : s6Step362HeadFvBefore.reserve s6Step362HeadFvFresh.toFinset=some s6Step362HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step362HeadFvFresh,arenaWires]
  · norm_num [s6Step362HeadFvBefore,s6Step362HeadGvAfter,s6Step362HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step362HeadFvAfter,s6Step362HeadFvBefore,s6Step362HeadGvAfter,s6Step362HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step362HeadFv_checked : planRowResizeLog s6Step362HeadFvBefore s6Step362HeadFvRow 198 s6Step362HeadFvFresh=
    some (s6Step362HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876],776⟩,growRow 776 s6Step362HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step362HeadFvBefore s6Step362HeadFvAfter s6Step362HeadFvRow 198 s6Step362HeadFvFresh
    s6Step362HeadFv_distinct s6Step362HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step362HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step362HeadFvRow.payload++s6Step362HeadFvFresh) s6Step362HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step362HeadG_Incoming : rowsOwned s6Step362HeadGBefore [s6Step362HeadGRow,s6Step362HeadFRow,s6Step362HeadGvRow,s6Step362HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step362HeadGRow,s6Step362HeadFRow,s6Step362HeadGvRow,s6Step362HeadFvRow] 0 s6Step362HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step362HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step362HeadG_Outgoing : rowsOwned s6Step362HeadFvAfter [s6Step362HeadGOut,s6Step362HeadFOut,s6Step362HeadGvOut,s6Step362HeadFvOut] :=
  hmrRows_owned_drop s6Step362HeadFvAfter [s6Step362HeadGOut,s6Step362HeadFOut,s6Step362HeadGvOut,s6Step362HeadFvOut] 0 s6Step362HeadBank_outgoingOwned

private theorem s6Step362HeadG_distinct : (s6Step362HeadGRow.sign::s6Step362HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362HeadG_owned : (s6Step362HeadGRow.sign::s6Step362HeadGRow.payload).toFinset⊆s6Step362HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step362HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362HeadG_reserved : s6Step362HeadGBefore.reserve s6Step362HeadGFresh.toFinset=some s6Step362HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step362HeadGFresh,arenaWires]
  · norm_num [s6Step362HeadGBefore,s6Step362HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step362HeadGAfter,s6Step362HeadGBefore,s6Step362HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step362HeadG_checked : planRowResizeLog s6Step362HeadGBefore s6Step362HeadGRow 91 s6Step362HeadGFresh=
    some (s6Step362HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 922],777⟩,growRow 777 s6Step362HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step362HeadGBefore s6Step362HeadGAfter s6Step362HeadGRow 91 s6Step362HeadGFresh
    s6Step362HeadG_distinct s6Step362HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step362HeadG_reserved
  have rowEq : WindowRow.mk (s6Step362HeadGRow.payload++s6Step362HeadGFresh) s6Step362HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 922],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step362HeadGvBefore : Arena := s6Step362HeadFAfter

private theorem s6Step362HeadGv_Incoming : rowsOwned s6Step362HeadGvBefore [s6Step362HeadGvRow,s6Step362HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step362HeadGRow,s6Step362HeadFRow,s6Step362HeadGvRow,s6Step362HeadFvRow] 2 s6Step362HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step362HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step362HeadGv_Outgoing : rowsOwned s6Step362HeadFvAfter [s6Step362HeadGvOut,s6Step362HeadFvOut] :=
  hmrRows_owned_drop s6Step362HeadFvAfter [s6Step362HeadGOut,s6Step362HeadFOut,s6Step362HeadGvOut,s6Step362HeadFvOut] 2 s6Step362HeadBank_outgoingOwned

private theorem s6Step362HeadGv_distinct : (s6Step362HeadGvRow.sign::s6Step362HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step362HeadGv_owned : (s6Step362HeadGvRow.sign::s6Step362HeadGvRow.payload).toFinset⊆s6Step362HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step362HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step362HeadGv_reserved : s6Step362HeadGvBefore.reserve s6Step362HeadGvFresh.toFinset=some s6Step362HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step362HeadGvFresh,arenaWires]
  · norm_num [s6Step362HeadGvBefore,s6Step362HeadFAfter,s6Step362HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step362HeadGvAfter,s6Step362HeadGvBefore,s6Step362HeadFAfter,s6Step362HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step362HeadGv_checked : planRowResizeLog s6Step362HeadGvBefore s6Step362HeadGvRow 198 s6Step362HeadGvFresh=
    some (s6Step362HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 825],775⟩,growRow 775 s6Step362HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step362HeadGvBefore s6Step362HeadGvAfter s6Step362HeadGvRow 198 s6Step362HeadGvFresh
    s6Step362HeadGv_distinct s6Step362HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step362HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step362HeadGvRow.payload++s6Step362HeadGvFresh) s6Step362HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 825],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step362HeadBank_rows : planWindowRowsLog s6Step362HeadGBefore [(s6Step362HeadGRow,91),(s6Step362HeadFRow,91),(s6Step362HeadGvRow,198),(s6Step362HeadFvRow,198)] [s6Step362HeadGFresh,s6Step362HeadFFresh,s6Step362HeadGvFresh,s6Step362HeadFvFresh]=
    some (s6Step362HeadFvAfter,[s6Step362HeadGOut,s6Step362HeadFOut,s6Step362HeadGvOut,s6Step362HeadFvOut],(growRow 777 s6Step362HeadGFresh ++ (growRow 795 s6Step362HeadFFresh ++ (growRow 775 s6Step362HeadGvFresh ++ (growRow 776 s6Step362HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step362HeadFvAfter [] []=some (s6Step362HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step362HeadFvBefore s6Step362HeadFvAfter s6Step362HeadFvAfter
    s6Step362HeadFvRow s6Step362HeadFvOut 198 s6Step362HeadFvFresh [] [] []
    (growRow 776 s6Step362HeadFvFresh) ([]) s6Step362HeadFv_Incoming s6Step362HeadFv_checked h4 s6Step362HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step362HeadGvBefore s6Step362HeadGvAfter s6Step362HeadFvAfter
    s6Step362HeadGvRow s6Step362HeadGvOut 198 s6Step362HeadGvFresh [(s6Step362HeadFvRow,198)] [s6Step362HeadFvFresh] [s6Step362HeadFvOut]
    (growRow 775 s6Step362HeadGvFresh) ((growRow 776 s6Step362HeadFvFresh ++ [])) s6Step362HeadGv_Incoming s6Step362HeadGv_checked h3 s6Step362HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step362HeadFBefore s6Step362HeadFAfter s6Step362HeadFvAfter
    s6Step362HeadFRow s6Step362HeadFOut 91 s6Step362HeadFFresh [(s6Step362HeadGvRow,198),(s6Step362HeadFvRow,198)] [s6Step362HeadGvFresh,s6Step362HeadFvFresh] [s6Step362HeadGvOut,s6Step362HeadFvOut]
    (growRow 795 s6Step362HeadFFresh) ((growRow 775 s6Step362HeadGvFresh ++ (growRow 776 s6Step362HeadFvFresh ++ []))) s6Step362HeadF_Incoming s6Step362HeadF_checked h2 s6Step362HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step362HeadGBefore s6Step362HeadGAfter s6Step362HeadFvAfter
    s6Step362HeadGRow s6Step362HeadGOut 91 s6Step362HeadGFresh [(s6Step362HeadFRow,91),(s6Step362HeadGvRow,198),(s6Step362HeadFvRow,198)] [s6Step362HeadFFresh,s6Step362HeadGvFresh,s6Step362HeadFvFresh] [s6Step362HeadFOut,s6Step362HeadGvOut,s6Step362HeadFvOut]
    (growRow 777 s6Step362HeadGFresh) ((growRow 795 s6Step362HeadFFresh ++ (growRow 775 s6Step362HeadGvFresh ++ (growRow 776 s6Step362HeadFvFresh ++ [])))) s6Step362HeadG_Incoming s6Step362HeadG_checked h1 s6Step362HeadG_Outgoing
  exact h0

private theorem s6Step362HeadBank_checked : compileHmrBankResizeLog .headroom s6Step362HeadGBefore ⟨s6Step362HeadFRow,s6Step362HeadGRow,s6Step362HeadFvRow,s6Step362HeadGvRow⟩ ⟨91,91,198,198⟩ [s6Step362HeadGFresh,s6Step362HeadFFresh,s6Step362HeadGvFresh,s6Step362HeadFvFresh]=
    some (s6Step362HeadFvAfter,⟨s6Step362HeadFOut,s6Step362HeadGOut,s6Step362HeadFvOut,s6Step362HeadGvOut⟩,(growRow 777 s6Step362HeadGFresh ++ (growRow 795 s6Step362HeadFFresh ++ (growRow 775 s6Step362HeadGvFresh ++ (growRow 776 s6Step362HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step362HeadBank_rows]
  rfl

private theorem s6Step362Front_checked : compileHmrSourceFrontLog s6Step362EntryFBefore s6Step362FrontBank 90 197 ⟨90,89,198,197⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step362FrontLog=some s6Step362FrontPlan := by
  have pairEq : s6Step362FrontPair=⟨s6Step362HeadFRow,s6Step362HeadGRow,s6Step362HeadFvRow,s6Step362HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step362FrontHead=⟨s6Step362ExitFRow,s6Step362ExitGRow,s6Step362ExitFvRow,s6Step362ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step362Add0A=s6Step362FrontHead.f.wires := by decide +kernel
  have gEq : s6Step362Add0B=s6Step362FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step362Add1A=s6Step362FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step362Add1B=s6Step362FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step362EntryFBefore s6Step362FrontBank 90 197 ⟨90,89,198,197⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step362FrontLog s6Step362FrontPlan
  · exact s6Step362Front_entry
  · exact s6Step362EntryBank_checked
  · exact s6Step362Front_sigma
  · rfl
  · exact s6Step362Front_branch
  · rfl
  · simpa only [s6Step362FrontPlan,pairEq] using s6Step362HeadBank_checked
  · simpa only [s6Step362FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step362F4_checked
  · exact s6Step362Counter_checked
  · rfl
  · simpa only [s6Step362FrontPlan,headEq] using s6Step362ExitBank_checked

private theorem s6Step362Complete_explicit_checked : compileHmrEarlyStepLog s6Step362EntryFBefore s6Step362FrontBank 90 197 ⟨90,89,198,197⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step362CompleteLog=some s6Step362CompletePlan := by
  let Q := s6Step362EarlyControlPlan
  have hq := s6Step362EarlyControl_plan_checked
  have fv1 : s6Step362CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step362CompleteOut.fv.payload[2]?.getD s6Step362CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step362CompleteOut.fv.payload[3]?.getD s6Step362CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step362CompleteOut.fv.payload[4]?.getD s6Step362CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step362EntryFBefore s6Step362EarlyControlArena s6Step362FrontBank 90 197 ⟨90,89,198,197⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step362CompleteLog s6Step362FrontPlan Q
    s6Step362Front_checked s6Step362Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step362Complete_owned s6Step362Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step362EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 887 s6Step362CompleteOut.fv.second (s6Step362CompleteOut.fv.payload[2]?.getD s6Step362CompleteOut.fv.sign) (s6Step362CompleteOut.fv.payload[3]?.getD s6Step362CompleteOut.fv.sign) (s6Step362CompleteOut.fv.payload[4]?.getD s6Step362CompleteOut.fv.sign) 858 60 s6Step362EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep362Arena : Arena := s6Step362EntryFBefore
def s6PrivateStep362Bank : WindowBank := s6Step362FrontBank
def s6PrivateStep362Spec : HmrSourceWalkStepLog := ⟨90,197,⟨90,89,198,197⟩,60,.early s6Step362CompleteLog⟩
def s6PrivateStep362Plan : HmrSourceStepPlan := .early s6Step362CompletePlan
theorem s6PrivateStep362_source : s6PrivateStep362Spec=s6ObservedLogs352[10] := rfl
theorem s6PrivateStep362_checked : compileHmrSourceStepLog s6PrivateStep362Arena s6PrivateStep362Bank
    s6PrivateStep362Spec.fgWidth s6PrivateStep362Spec.vWidth s6PrivateStep362Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 362 s6PrivateStep362Spec.need none s6PrivateStep362Spec.log=some s6PrivateStep362Plan := by
  change compileHmrSourceStepLog s6Step362EntryFBefore s6Step362FrontBank 90 197 ⟨90,89,198,197⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 362 60 none (.early s6Step362CompleteLog)=some (.early s6Step362CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 362<498)]
  rw [s6Step362Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
