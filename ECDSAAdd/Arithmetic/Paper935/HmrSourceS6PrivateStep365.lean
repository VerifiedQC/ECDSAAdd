import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep363
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

private def s6Step365CompleteMoves : List (Wire × Wire) := [(888,344)]

private def s6Step365EarlyControlLog : HmrEarlyControlLog := ⟨[888, 876, 906, 922, 898],[892],[858],[807, 805, 802, 843, 877, 792],[]⟩

private def s6Step365FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [898], [], []],[[892], [922], [876], [906]],[[], [], [], []]⟩,[908],[886],[858],[807],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[858, 807, 805, 802]⟩

private def s6Step365CompleteLog : HmrEarlyStepLog := ⟨s6Step365FrontLog,s6Step365CompleteMoves,s6Step365EarlyControlLog⟩

private def s6Step365ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343],795⟩

private def s6Step365ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩

private def s6Step365ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],777⟩

private def s6Step365ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private def s6Step365FrontOut : WindowBank := ⟨s6Step365ExitFOut,s6Step365ExitGOut,s6Step365ExitFvOut,s6Step365ExitGvOut⟩

private def s6Step365CompleteOut : WindowBank := s6Step365FrontOut.repacked s6Step365CompleteMoves

private def s6Step365EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step365EarlyControlPositiveArena,[892],s6Step365EarlyControlEqualityArena,[858],⟨⟨908,false⟩,[⟨⟨892,false⟩,858⟩]⟩⟩

private def s6Step365EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,888⟩,⟨⟨772,false⟩,876⟩,⟨⟨771,false⟩,906⟩,⟨⟨770,false⟩,922⟩,⟨⟨769,false⟩,898⟩]⟩

private def s6Step365EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step365EarlyControlZeroArena,s6Step365EarlyControlZeroPlan,s6Step365EarlyControlClassPlan,s6Step365EarlyControlFlagArena,s6Step365EarlyControlFittedArena,s6Step365EarlyControlHistoryArena,s6Step365EarlyControlSigmaArena,s6Step365EarlyControlOutputArena,s6Step365EarlyControlLog⟩

private def s6Step365CounterWork : List Wire := [858, 807, 805, 802]

private theorem s6Step365Counter_bounded : s6Step365CounterWork.toFinset⊆arenaWires := by norm_num [s6Step365CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step365HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365CounterDuring : Arena := ⟨s6Step365HeadFvAfter.live∪s6Step365CounterWork.toFinset,Finset.union_subset s6Step365HeadFvAfter.bounded s6Step365Counter_bounded⟩

private def s6Step365EntryFFresh : List Wire := []

private def s6Step365EntryFvFresh : List Wire := []

private def s6Step365EntryGFresh : List Wire := [898]

private def s6Step365EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365EntryGvAfter : Arena := s6Step365EntryGAfter

private def s6Step365EntryGvFresh : List Wire := []

private def s6Step365ExitFExtra : List Wire := [344, 922]

private def s6Step365ExitFvExtra : List Wire := [906]

private def s6Step365ExitGExtra : List Wire := [898, 892]

private def s6Step365ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<344) ∨ (345≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365ExitGvExtra : List Wire := [876]

private def s6Step365Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365Add0Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step365Add0_bounded : s6Step365Add0Work.toFinset⊆arenaWires := by
  have h : s6Step365Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step365Add0During : Arena := ⟨s6Step365Add0Arena.live∪s6Step365Add0Work.toFinset,Finset.union_subset s6Step365Add0Arena.bounded s6Step365Add0_bounded⟩

private def s6Step365Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365Add1Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step365Add1_bounded : s6Step365Add1Work.toFinset⊆arenaWires := by
  have h : s6Step365Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step365Add1During : Arena := ⟨s6Step365Add1Arena.live∪s6Step365Add1Work.toFinset,Finset.union_subset s6Step365Add1Arena.bounded s6Step365Add1_bounded⟩

private def s6Step365F4FlagArena : Arena := ⟨s6Step365HeadFvAfter.live∪{858},Finset.union_subset s6Step365HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step365F4Plan : HmrHybridF4Plan := ⟨s6Step365F4FlagArena,[858],s6Step365Add0Arena,[807],s6Step365Add0During,s6Step365Add0Work,s6Step365Add1During,s6Step365Add1Work⟩

private def s6Step365HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 922],795⟩

private def s6Step365HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 906],776⟩

private def s6Step365HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 898, 892],777⟩

private def s6Step365HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 876],775⟩

private def s6Step365FrontHead : WindowBank := ⟨s6Step365HeadFOut,s6Step365HeadGOut,s6Step365HeadFvOut,s6Step365HeadGvOut⟩

private def s6Step365EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344],795⟩

private def s6Step365EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩

private def s6Step365EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 898],777⟩

private def s6Step365EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private def s6Step365FrontPair : WindowBank := ⟨s6Step365EntryFOut,s6Step365EntryGOut,s6Step365EntryFvOut,s6Step365EntryGvOut⟩

private def s6Step365FrontSigmaArena : Arena := ⟨s6Step365EntryGvAfter.live∪{908},Finset.union_subset s6Step365EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step365HeadFFresh : List Wire := [922]

private def s6Step365HeadFvFresh : List Wire := [906]

private def s6Step365HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365HeadGFresh : List Wire := [892]

private def s6Step365HeadGvFresh : List Wire := [876]

private def s6Step365FrontPlan : HmrSourceFront := ⟨s6Step365EntryGvAfter,s6Step365FrontPair,(growRow 795 s6Step365EntryFFresh ++ (growRow 777 s6Step365EntryGFresh ++ (growRow 776 s6Step365EntryFvFresh ++ (growRow 775 s6Step365EntryGvFresh ++ [])))),s6Step365FrontSigmaArena,[908],s6Step365HeadGBefore,[886],
  s6Step365HeadFvAfter,s6Step365FrontHead,(growRow 777 s6Step365HeadGFresh ++ (growRow 795 s6Step365HeadFFresh ++ (growRow 775 s6Step365HeadGvFresh ++ (growRow 776 s6Step365HeadFvFresh ++ [])))),s6Step365F4Plan,s6Step365CounterDuring,s6Step365CounterWork,s6Step365ExitGvAfter,s6Step365FrontOut,(shrinkRow 777 s6Step365ExitGExtra ++ (shrinkRow 795 s6Step365ExitFExtra ++ (shrinkRow 776 s6Step365ExitFvExtra ++ (shrinkRow 775 s6Step365ExitGvExtra ++ []))))⟩

private def s6Step365CompletePlan : HmrEarlyStepPlan := ⟨s6Step365FrontPlan,s6Step365EarlyControlArena,s6Step365EarlyControlPlan,s6Step365CompleteMoves⟩

private theorem s6Step365Complete_apart : List.Disjoint (s6Step365CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [908, 886, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step365CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[908, 886, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step365Complete_owned : (s6Step365CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step365EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step365EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step365CompleteMoveArena : Arena := ⟨s6Step365ExitGvAfter.live∪{344},Finset.union_subset s6Step365ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step365Complete_repack : s6Step365ExitGvAfter.checkRepack s6Step365CompleteMoves=some s6Step365EarlyControlArena := by
  have owned : 888∈s6Step365ExitGvAfter.live := by norm_num [s6Step365ExitGvAfter,arenaWires]
  have reserve : s6Step365ExitGvAfter.reserve {344}=some s6Step365CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step365ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step365CompleteMoveArena.retireSet {888}=s6Step365EarlyControlArena := by
    unfold Arena.retireSet s6Step365EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step365CompleteMoveArena,s6Step365ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step365CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step365CompleteMoveArena.retireSet {888}).checkRepack []=some s6Step365EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step365EarlyControl_branchOwned : ([886] : List Wire).toFinset⊆s6Step365EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step365EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365EarlyControl_branch : compileHmrBranchRetirement s6Step365EarlyControlSigmaArena 886=some s6Step365EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step365EarlyControl_branchOwned
  · ext q
    simp [s6Step365EarlyControlOutputArena,s6Step365EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step365EarlyControl_classEqualityBorrow : s6Step365EarlyControlPositiveArena.checkBorrow (([908, 892] : List Wire).length-1) s6Step365EarlyControlLog.classWork=some s6Step365EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step365EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step365EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step365EarlyControlEqualityArena,s6Step365EarlyControlPositiveArena,s6Step365EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step365EarlyControl_classEqualityOwned : ([908, 892] : List Wire).toFinset⊆s6Step365EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step365EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365EarlyControl_classEquality : compileHmrEqualityLog s6Step365EarlyControlPositiveArena [908, 892] 0 s6Step365EarlyControlLog.classWork=some (s6Step365EarlyControlEqualityArena,s6Step365EarlyControlLog.classWork,s6Step365EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step365EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step365EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step365EarlyControl_classOwned : ([769, 898, 908] : List Wire).toFinset⊆s6Step365EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step365EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365EarlyControl_positiveBorrow : s6Step365EarlyControlZeroArena.checkBorrow (1) s6Step365EarlyControlLog.positiveWork=some s6Step365EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step365EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step365EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step365EarlyControlPositiveArena,s6Step365EarlyControlZeroArena,s6Step365EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step365EarlyControl_class : compileHmrSourceClassLog s6Step365EarlyControlZeroArena false 769 s6Step365EarlyControlZeroPlan.top 0 908 s6Step365EarlyControlLog.positiveWork s6Step365EarlyControlLog.classWork=some s6Step365EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step365EarlyControlClassPlan s6Step365EarlyControlZeroArena false 769 s6Step365EarlyControlZeroPlan.top 0 908
  constructor
  · decide +kernel
  · exact s6Step365EarlyControl_classOwned
  · exact s6Step365EarlyControl_positiveBorrow
  · exact s6Step365EarlyControl_classEquality

private theorem s6Step365EarlyControl_entryRecordOwned : ([886, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step365EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step365EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365EarlyControl_entrySigmaOwned : ([908, 254] : List Wire).toFinset⊆s6Step365EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step365EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365EarlyControl_fitBorrow : s6Step365EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step365EarlyControlLog.recordFresh=some s6Step365EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step365EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step365EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step365EarlyControlFittedArena,s6Step365EarlyControlFlagArena,s6Step365EarlyControlLog,arenaWires]

private theorem s6Step365EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step365EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step365EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365EarlyControl_fit : compileHmrRecordGrowLog s6Step365EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step365EarlyControlLog.recordFresh=some s6Step365EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step365EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step365EarlyControl_fitBorrow

private theorem s6Step365EarlyControl_flagsBorrow : s6Step365EarlyControlEqualityArena.checkBorrow (6) s6Step365EarlyControlLog.flagWork=some s6Step365EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step365EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step365EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step365EarlyControlFlagArena,s6Step365EarlyControlEqualityArena,s6Step365EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step365EarlyControl_flagsOwned : ([858, 253, 252, 251] : List Wire).toFinset⊆s6Step365EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step365EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365EarlyControl_flags : compileHmrFlagsLog s6Step365EarlyControlClassPlan.equalityArena s6Step365EarlyControlClassPlan.equality.top 253 252 251 s6Step365EarlyControlLog.flagWork=some s6Step365EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step365EarlyControl_flagsOwned⟩
  · exact s6Step365EarlyControl_flagsBorrow

private theorem s6Step365EarlyControl_historyBorrow : s6Step365EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step365EarlyControlLog.recordFresh=some s6Step365EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step365EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step365EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step365EarlyControlHistoryArena,s6Step365EarlyControlArena,s6Step365EarlyControlLog,arenaWires]

private theorem s6Step365EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step365EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step365EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365EarlyControl_history : compileHmrRecordGrowLog s6Step365EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step365EarlyControlLog.recordFresh=some s6Step365EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step365EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step365EarlyControl_historyBorrow

private theorem s6Step365EarlyControl_sigmaOwned : ([254, 908] : List Wire).toFinset⊆s6Step365EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step365EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365EarlyControl_sigmaReleaseOwned : ([908] : List Wire).toFinset⊆s6Step365EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step365EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365EarlyControl_sigmaRelease : s6Step365EarlyControlHistoryArena.release {908} (fun _ => false)=some s6Step365EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step365EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step365EarlyControlSigmaArena,s6Step365EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step365EarlyControl_sigma : compileHmrSigmaDropLog s6Step365EarlyControlHistoryArena false 0 0 254 908 []=some s6Step365EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step365EarlyControl_sigmaOwned⟩
  · exact s6Step365EarlyControl_sigmaRelease

private theorem s6Step365EarlyControl_zeroBorrow : s6Step365EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step365EarlyControlLog.zeroWork=some s6Step365EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step365EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step365EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step365EarlyControlZeroArena,s6Step365EarlyControlArena,s6Step365EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step365EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step365EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step365EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365EarlyControl_zero : compileHmrEqualityLog s6Step365EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step365EarlyControlLog.zeroWork=some (s6Step365EarlyControlZeroArena,s6Step365EarlyControlLog.zeroWork,s6Step365EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step365EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step365EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step365EarlyControl_logged : s6Step365EarlyControlPlan.Logged s6Step365EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 886 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step365EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step365EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step365EarlyControl_zero
  · exact s6Step365EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step365EarlyControl_flags
  · exact s6Step365EarlyControl_fit
  · exact s6Step365EarlyControl_history
  · exact s6Step365EarlyControl_sigma
  · exact s6Step365EarlyControl_branch

private theorem s6Step365EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step365EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 886 60 s6Step365EarlyControlLog=some s6Step365EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step365EarlyControlPlan s6Step365EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 886 60 s6Step365EarlyControl_logged

private def s6Step365EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344],795⟩

private def s6Step365EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩

private def s6Step365EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],777⟩

private def s6Step365EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private def s6Step365FrontBank : WindowBank := ⟨s6Step365EntryFRow,s6Step365EntryGRow,s6Step365EntryFvRow,s6Step365EntryGvRow⟩

private def s6Step365Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 922, 795]

private def s6Step365Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 898, 892, 777]

private def s6Step365Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 906, 776]

private def s6Step365Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 876, 775]

private theorem s6Step365Counter_apart : Disjoint s6Step365HeadFvAfter.live s6Step365CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step365HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365Counter_borrowed : s6Step365HeadFvAfter.checkBorrow 4 s6Step365CounterWork=some s6Step365CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step365HeadFvAfter s6Step365CounterDuring s6Step365CounterWork.toFinset s6Step365Counter_bounded s6Step365Counter_apart rfl

private theorem s6Step365Counter_owned : (908::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step365HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step365HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365Counter_checked : compileHmrCounterStepLog s6Step365HeadFvAfter true 908 [774, 773, 772, 771, 770, 769] s6Step365CounterWork=some s6Step365CounterDuring := by
  have owned : ∀q∈908::[774, 773, 772, 771, 770, 769],q∈s6Step365HeadFvAfter.live := fun q hq => s6Step365Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step365Counter_borrowed

private def s6Step365EntryFAfter : Arena := s6Step365EntryFBefore

private theorem s6Step365EntryBank_incomingDistinct : ([s6Step365EntryFRow,s6Step365EntryGRow,s6Step365EntryFvRow,s6Step365EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365EntryF_Incoming : rowsOwned s6Step365EntryFBefore [s6Step365EntryFRow,s6Step365EntryGRow,s6Step365EntryFvRow,s6Step365EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step365EntryFRow,s6Step365EntryGRow,s6Step365EntryFvRow,s6Step365EntryGvRow] 0 s6Step365EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step365EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step365EntryBank_outgoingOwned : rowsOwned s6Step365EntryGvAfter [s6Step365EntryFOut,s6Step365EntryGOut,s6Step365EntryFvOut,s6Step365EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step365EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step365EntryF_Outgoing : rowsOwned s6Step365EntryGvAfter [s6Step365EntryFOut,s6Step365EntryGOut,s6Step365EntryFvOut,s6Step365EntryGvOut] :=
  hmrRows_owned_drop s6Step365EntryGvAfter [s6Step365EntryFOut,s6Step365EntryGOut,s6Step365EntryFvOut,s6Step365EntryGvOut] 0 s6Step365EntryBank_outgoingOwned

private theorem s6Step365EntryF_distinct : (s6Step365EntryFRow.sign::s6Step365EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365EntryF_owned : (s6Step365EntryFRow.sign::s6Step365EntryFRow.payload).toFinset⊆s6Step365EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step365EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365EntryF_reserved : s6Step365EntryFBefore.reserve s6Step365EntryFFresh.toFinset=some s6Step365EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step365EntryFFresh,arenaWires]
  · norm_num [s6Step365EntryFBefore,s6Step365EntryFFresh,arenaWires]
  · simp only [s6Step365EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step365EntryF_checked : planRowResizeLog s6Step365EntryFBefore s6Step365EntryFRow 89 s6Step365EntryFFresh=
    some (s6Step365EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344],795⟩,growRow 795 s6Step365EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step365EntryFBefore s6Step365EntryFAfter s6Step365EntryFRow 89 s6Step365EntryFFresh
    s6Step365EntryF_distinct s6Step365EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step365EntryF_reserved
  have rowEq : WindowRow.mk (s6Step365EntryFRow.payload++s6Step365EntryFFresh) s6Step365EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step365EntryFvAfter : Arena := s6Step365EntryGAfter

private def s6Step365EntryFvBefore : Arena := s6Step365EntryGAfter

private theorem s6Step365EntryFv_Incoming : rowsOwned s6Step365EntryFvBefore [s6Step365EntryFvRow,s6Step365EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step365EntryFRow,s6Step365EntryGRow,s6Step365EntryFvRow,s6Step365EntryGvRow] 2 s6Step365EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step365EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step365EntryFv_Outgoing : rowsOwned s6Step365EntryGvAfter [s6Step365EntryFvOut,s6Step365EntryGvOut] :=
  hmrRows_owned_drop s6Step365EntryGvAfter [s6Step365EntryFOut,s6Step365EntryGOut,s6Step365EntryFvOut,s6Step365EntryGvOut] 2 s6Step365EntryBank_outgoingOwned

private theorem s6Step365EntryFv_distinct : (s6Step365EntryFvRow.sign::s6Step365EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365EntryFv_owned : (s6Step365EntryFvRow.sign::s6Step365EntryFvRow.payload).toFinset⊆s6Step365EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step365EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365EntryFv_reserved : s6Step365EntryFvBefore.reserve s6Step365EntryFvFresh.toFinset=some s6Step365EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step365EntryFvFresh,arenaWires]
  · norm_num [s6Step365EntryFvBefore,s6Step365EntryGAfter,s6Step365EntryFvFresh,arenaWires]
  · simp only [s6Step365EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step365EntryFv_checked : planRowResizeLog s6Step365EntryFvBefore s6Step365EntryFvRow 198 s6Step365EntryFvFresh=
    some (s6Step365EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩,growRow 776 s6Step365EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step365EntryFvBefore s6Step365EntryFvAfter s6Step365EntryFvRow 198 s6Step365EntryFvFresh
    s6Step365EntryFv_distinct s6Step365EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step365EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step365EntryFvRow.payload++s6Step365EntryFvFresh) s6Step365EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step365EntryGBefore : Arena := s6Step365EntryFBefore

private theorem s6Step365EntryG_Incoming : rowsOwned s6Step365EntryGBefore [s6Step365EntryGRow,s6Step365EntryFvRow,s6Step365EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step365EntryFRow,s6Step365EntryGRow,s6Step365EntryFvRow,s6Step365EntryGvRow] 1 s6Step365EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step365EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step365EntryG_Outgoing : rowsOwned s6Step365EntryGvAfter [s6Step365EntryGOut,s6Step365EntryFvOut,s6Step365EntryGvOut] :=
  hmrRows_owned_drop s6Step365EntryGvAfter [s6Step365EntryFOut,s6Step365EntryGOut,s6Step365EntryFvOut,s6Step365EntryGvOut] 1 s6Step365EntryBank_outgoingOwned

private theorem s6Step365EntryG_distinct : (s6Step365EntryGRow.sign::s6Step365EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365EntryG_owned : (s6Step365EntryGRow.sign::s6Step365EntryGRow.payload).toFinset⊆s6Step365EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step365EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365EntryG_reserved : s6Step365EntryGBefore.reserve s6Step365EntryGFresh.toFinset=some s6Step365EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step365EntryGFresh,arenaWires]
  · norm_num [s6Step365EntryGBefore,s6Step365EntryFBefore,s6Step365EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step365EntryGAfter,s6Step365EntryGBefore,s6Step365EntryFBefore,s6Step365EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step365EntryG_checked : planRowResizeLog s6Step365EntryGBefore s6Step365EntryGRow 89 s6Step365EntryGFresh=
    some (s6Step365EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 898],777⟩,growRow 777 s6Step365EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step365EntryGBefore s6Step365EntryGAfter s6Step365EntryGRow 89 s6Step365EntryGFresh
    s6Step365EntryG_distinct s6Step365EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step365EntryG_reserved
  have rowEq : WindowRow.mk (s6Step365EntryGRow.payload++s6Step365EntryGFresh) s6Step365EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 898],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step365EntryGvBefore : Arena := s6Step365EntryGAfter

private theorem s6Step365EntryGv_Incoming : rowsOwned s6Step365EntryGvBefore [s6Step365EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step365EntryFRow,s6Step365EntryGRow,s6Step365EntryFvRow,s6Step365EntryGvRow] 3 s6Step365EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step365EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step365EntryGv_Outgoing : rowsOwned s6Step365EntryGvAfter [s6Step365EntryGvOut] :=
  hmrRows_owned_drop s6Step365EntryGvAfter [s6Step365EntryFOut,s6Step365EntryGOut,s6Step365EntryFvOut,s6Step365EntryGvOut] 3 s6Step365EntryBank_outgoingOwned

private theorem s6Step365EntryGv_distinct : (s6Step365EntryGvRow.sign::s6Step365EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365EntryGv_owned : (s6Step365EntryGvRow.sign::s6Step365EntryGvRow.payload).toFinset⊆s6Step365EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step365EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365EntryGv_reserved : s6Step365EntryGvBefore.reserve s6Step365EntryGvFresh.toFinset=some s6Step365EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step365EntryGvFresh,arenaWires]
  · norm_num [s6Step365EntryGvBefore,s6Step365EntryGAfter,s6Step365EntryGvFresh,arenaWires]
  · simp only [s6Step365EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step365EntryGv_checked : planRowResizeLog s6Step365EntryGvBefore s6Step365EntryGvRow 198 s6Step365EntryGvFresh=
    some (s6Step365EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩,growRow 775 s6Step365EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step365EntryGvBefore s6Step365EntryGvAfter s6Step365EntryGvRow 198 s6Step365EntryGvFresh
    s6Step365EntryGv_distinct s6Step365EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step365EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step365EntryGvRow.payload++s6Step365EntryGvFresh) s6Step365EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step365EntryBank_rows : planWindowRowsLog s6Step365EntryFBefore [(s6Step365EntryFRow,89),(s6Step365EntryGRow,89),(s6Step365EntryFvRow,198),(s6Step365EntryGvRow,198)] [s6Step365EntryFFresh,s6Step365EntryGFresh,s6Step365EntryFvFresh,s6Step365EntryGvFresh]=
    some (s6Step365EntryGvAfter,[s6Step365EntryFOut,s6Step365EntryGOut,s6Step365EntryFvOut,s6Step365EntryGvOut],(growRow 795 s6Step365EntryFFresh ++ (growRow 777 s6Step365EntryGFresh ++ (growRow 776 s6Step365EntryFvFresh ++ (growRow 775 s6Step365EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step365EntryGvAfter [] []=some (s6Step365EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step365EntryGvBefore s6Step365EntryGvAfter s6Step365EntryGvAfter
    s6Step365EntryGvRow s6Step365EntryGvOut 198 s6Step365EntryGvFresh [] [] []
    (growRow 775 s6Step365EntryGvFresh) ([]) s6Step365EntryGv_Incoming s6Step365EntryGv_checked h4 s6Step365EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step365EntryFvBefore s6Step365EntryFvAfter s6Step365EntryGvAfter
    s6Step365EntryFvRow s6Step365EntryFvOut 198 s6Step365EntryFvFresh [(s6Step365EntryGvRow,198)] [s6Step365EntryGvFresh] [s6Step365EntryGvOut]
    (growRow 776 s6Step365EntryFvFresh) ((growRow 775 s6Step365EntryGvFresh ++ [])) s6Step365EntryFv_Incoming s6Step365EntryFv_checked h3 s6Step365EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step365EntryGBefore s6Step365EntryGAfter s6Step365EntryGvAfter
    s6Step365EntryGRow s6Step365EntryGOut 89 s6Step365EntryGFresh [(s6Step365EntryFvRow,198),(s6Step365EntryGvRow,198)] [s6Step365EntryFvFresh,s6Step365EntryGvFresh] [s6Step365EntryFvOut,s6Step365EntryGvOut]
    (growRow 777 s6Step365EntryGFresh) ((growRow 776 s6Step365EntryFvFresh ++ (growRow 775 s6Step365EntryGvFresh ++ []))) s6Step365EntryG_Incoming s6Step365EntryG_checked h2 s6Step365EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step365EntryFBefore s6Step365EntryFAfter s6Step365EntryGvAfter
    s6Step365EntryFRow s6Step365EntryFOut 89 s6Step365EntryFFresh [(s6Step365EntryGRow,89),(s6Step365EntryFvRow,198),(s6Step365EntryGvRow,198)] [s6Step365EntryGFresh,s6Step365EntryFvFresh,s6Step365EntryGvFresh] [s6Step365EntryGOut,s6Step365EntryFvOut,s6Step365EntryGvOut]
    (growRow 795 s6Step365EntryFFresh) ((growRow 777 s6Step365EntryGFresh ++ (growRow 776 s6Step365EntryFvFresh ++ (growRow 775 s6Step365EntryGvFresh ++ [])))) s6Step365EntryF_Incoming s6Step365EntryF_checked h1 s6Step365EntryF_Outgoing
  exact h0

private theorem s6Step365EntryBank_checked : compileHmrBankResizeLog .entry s6Step365EntryFBefore ⟨s6Step365EntryFRow,s6Step365EntryGRow,s6Step365EntryFvRow,s6Step365EntryGvRow⟩ ⟨89,89,198,198⟩ [s6Step365EntryFFresh,s6Step365EntryGFresh,s6Step365EntryFvFresh,s6Step365EntryGvFresh]=
    some (s6Step365EntryGvAfter,⟨s6Step365EntryFOut,s6Step365EntryGOut,s6Step365EntryFvOut,s6Step365EntryGvOut⟩,(growRow 795 s6Step365EntryFFresh ++ (growRow 777 s6Step365EntryGFresh ++ (growRow 776 s6Step365EntryFvFresh ++ (growRow 775 s6Step365EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step365EntryBank_rows]
  rfl

private def s6Step365ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<344) ∨ (345≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365ExitFBefore : Arena := s6Step365ExitGAfter

private def s6Step365ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 922],795⟩

private def s6Step365ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 906],776⟩

private def s6Step365ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 898, 892],777⟩

private def s6Step365ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 876],775⟩

private theorem s6Step365ExitBank_incomingDistinct : ([s6Step365ExitGRow,s6Step365ExitFRow,s6Step365ExitFvRow,s6Step365ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365ExitF_Incoming : rowsOwned s6Step365ExitFBefore [s6Step365ExitFRow,s6Step365ExitFvRow,s6Step365ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step365ExitGRow,s6Step365ExitFRow,s6Step365ExitFvRow,s6Step365ExitGvRow] 1 s6Step365ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step365ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step365ExitBank_outgoingOwned : rowsOwned s6Step365ExitGvAfter [s6Step365ExitGOut,s6Step365ExitFOut,s6Step365ExitFvOut,s6Step365ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step365ExitGvAfter (fun q => (0≤q ∧ q<344) ∨ (345≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step365ExitF_Outgoing : rowsOwned s6Step365ExitGvAfter [s6Step365ExitFOut,s6Step365ExitFvOut,s6Step365ExitGvOut] :=
  hmrRows_owned_drop s6Step365ExitGvAfter [s6Step365ExitGOut,s6Step365ExitFOut,s6Step365ExitFvOut,s6Step365ExitGvOut] 1 s6Step365ExitBank_outgoingOwned

private theorem s6Step365ExitF_distinct : (s6Step365ExitFRow.sign::s6Step365ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365ExitF_owned : (s6Step365ExitFRow.sign::s6Step365ExitFRow.payload).toFinset⊆s6Step365ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step365ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365ExitF_retired : s6Step365ExitFBefore.retireSet s6Step365ExitFExtra.toFinset=s6Step365ExitFAfter := by
  unfold Arena.retireSet s6Step365ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step365ExitFBefore,s6Step365ExitGAfter,s6Step365ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step365ExitF_checked : planRowResizeLog s6Step365ExitFBefore s6Step365ExitFRow 88 []=
    some (s6Step365ExitFAfter,s6Step365ExitFOut,shrinkRow 795 s6Step365ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step365ExitFBefore s6Step365ExitFRow 88 s6Step365ExitF_distinct s6Step365ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step365ExitFRow.payload.take 88) s6Step365ExitFRow.sign=s6Step365ExitFOut := by decide +kernel
  have hi : s6Step365ExitFRow.payload.drop 88=s6Step365ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step365ExitF_retired] at result
  exact result

private def s6Step365ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<344) ∨ (345≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365ExitFvBefore : Arena := s6Step365ExitFAfter

private theorem s6Step365ExitFv_Incoming : rowsOwned s6Step365ExitFvBefore [s6Step365ExitFvRow,s6Step365ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step365ExitGRow,s6Step365ExitFRow,s6Step365ExitFvRow,s6Step365ExitGvRow] 2 s6Step365ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step365ExitFvBefore (fun q => (0≤q ∧ q<344) ∨ (345≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step365ExitFv_Outgoing : rowsOwned s6Step365ExitGvAfter [s6Step365ExitFvOut,s6Step365ExitGvOut] :=
  hmrRows_owned_drop s6Step365ExitGvAfter [s6Step365ExitGOut,s6Step365ExitFOut,s6Step365ExitFvOut,s6Step365ExitGvOut] 2 s6Step365ExitBank_outgoingOwned

private theorem s6Step365ExitFv_distinct : (s6Step365ExitFvRow.sign::s6Step365ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365ExitFv_owned : (s6Step365ExitFvRow.sign::s6Step365ExitFvRow.payload).toFinset⊆s6Step365ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step365ExitFvBefore (fun q => (0≤q ∧ q<344) ∨ (345≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365ExitFv_retired : s6Step365ExitFvBefore.retireSet s6Step365ExitFvExtra.toFinset=s6Step365ExitFvAfter := by
  unfold Arena.retireSet s6Step365ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step365ExitFvBefore,s6Step365ExitFAfter,s6Step365ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step365ExitFv_checked : planRowResizeLog s6Step365ExitFvBefore s6Step365ExitFvRow 198 []=
    some (s6Step365ExitFvAfter,s6Step365ExitFvOut,shrinkRow 776 s6Step365ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step365ExitFvBefore s6Step365ExitFvRow 198 s6Step365ExitFv_distinct s6Step365ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step365ExitFvRow.payload.take 198) s6Step365ExitFvRow.sign=s6Step365ExitFvOut := by decide +kernel
  have hi : s6Step365ExitFvRow.payload.drop 198=s6Step365ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step365ExitFv_retired] at result
  exact result

private def s6Step365ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step365ExitG_Incoming : rowsOwned s6Step365ExitGBefore [s6Step365ExitGRow,s6Step365ExitFRow,s6Step365ExitFvRow,s6Step365ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step365ExitGRow,s6Step365ExitFRow,s6Step365ExitFvRow,s6Step365ExitGvRow] 0 s6Step365ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step365ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step365ExitG_Outgoing : rowsOwned s6Step365ExitGvAfter [s6Step365ExitGOut,s6Step365ExitFOut,s6Step365ExitFvOut,s6Step365ExitGvOut] :=
  hmrRows_owned_drop s6Step365ExitGvAfter [s6Step365ExitGOut,s6Step365ExitFOut,s6Step365ExitFvOut,s6Step365ExitGvOut] 0 s6Step365ExitBank_outgoingOwned

private theorem s6Step365ExitG_distinct : (s6Step365ExitGRow.sign::s6Step365ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365ExitG_owned : (s6Step365ExitGRow.sign::s6Step365ExitGRow.payload).toFinset⊆s6Step365ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step365ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365ExitG_retired : s6Step365ExitGBefore.retireSet s6Step365ExitGExtra.toFinset=s6Step365ExitGAfter := by
  unfold Arena.retireSet s6Step365ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step365ExitGBefore,s6Step365ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step365ExitG_checked : planRowResizeLog s6Step365ExitGBefore s6Step365ExitGRow 88 []=
    some (s6Step365ExitGAfter,s6Step365ExitGOut,shrinkRow 777 s6Step365ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step365ExitGBefore s6Step365ExitGRow 88 s6Step365ExitG_distinct s6Step365ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step365ExitGRow.payload.take 88) s6Step365ExitGRow.sign=s6Step365ExitGOut := by decide +kernel
  have hi : s6Step365ExitGRow.payload.drop 88=s6Step365ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step365ExitG_retired] at result
  exact result

private def s6Step365ExitGvBefore : Arena := s6Step365ExitFvAfter

private theorem s6Step365ExitGv_Incoming : rowsOwned s6Step365ExitGvBefore [s6Step365ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step365ExitGRow,s6Step365ExitFRow,s6Step365ExitFvRow,s6Step365ExitGvRow] 3 s6Step365ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step365ExitGvBefore (fun q => (0≤q ∧ q<344) ∨ (345≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step365ExitGv_Outgoing : rowsOwned s6Step365ExitGvAfter [s6Step365ExitGvOut] :=
  hmrRows_owned_drop s6Step365ExitGvAfter [s6Step365ExitGOut,s6Step365ExitFOut,s6Step365ExitFvOut,s6Step365ExitGvOut] 3 s6Step365ExitBank_outgoingOwned

private theorem s6Step365ExitGv_distinct : (s6Step365ExitGvRow.sign::s6Step365ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365ExitGv_owned : (s6Step365ExitGvRow.sign::s6Step365ExitGvRow.payload).toFinset⊆s6Step365ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step365ExitGvBefore (fun q => (0≤q ∧ q<344) ∨ (345≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365ExitGv_retired : s6Step365ExitGvBefore.retireSet s6Step365ExitGvExtra.toFinset=s6Step365ExitGvAfter := by
  unfold Arena.retireSet s6Step365ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step365ExitGvBefore,s6Step365ExitFvAfter,s6Step365ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step365ExitGv_checked : planRowResizeLog s6Step365ExitGvBefore s6Step365ExitGvRow 198 []=
    some (s6Step365ExitGvAfter,s6Step365ExitGvOut,shrinkRow 775 s6Step365ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step365ExitGvBefore s6Step365ExitGvRow 198 s6Step365ExitGv_distinct s6Step365ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step365ExitGvRow.payload.take 198) s6Step365ExitGvRow.sign=s6Step365ExitGvOut := by decide +kernel
  have hi : s6Step365ExitGvRow.payload.drop 198=s6Step365ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step365ExitGv_retired] at result
  exact result

private theorem s6Step365ExitBank_rows : planWindowRowsLog s6Step365ExitGBefore [(s6Step365ExitGRow,88),(s6Step365ExitFRow,88),(s6Step365ExitFvRow,198),(s6Step365ExitGvRow,198)] [[],[],[],[]]=
    some (s6Step365ExitGvAfter,[s6Step365ExitGOut,s6Step365ExitFOut,s6Step365ExitFvOut,s6Step365ExitGvOut],(shrinkRow 777 s6Step365ExitGExtra ++ (shrinkRow 795 s6Step365ExitFExtra ++ (shrinkRow 776 s6Step365ExitFvExtra ++ (shrinkRow 775 s6Step365ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step365ExitGvAfter [] []=some (s6Step365ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step365ExitGvBefore s6Step365ExitGvAfter s6Step365ExitGvAfter
    s6Step365ExitGvRow s6Step365ExitGvOut 198 [] [] [] []
    (shrinkRow 775 s6Step365ExitGvExtra) ([]) s6Step365ExitGv_Incoming s6Step365ExitGv_checked h4 s6Step365ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step365ExitFvBefore s6Step365ExitFvAfter s6Step365ExitGvAfter
    s6Step365ExitFvRow s6Step365ExitFvOut 198 [] [(s6Step365ExitGvRow,198)] [[]] [s6Step365ExitGvOut]
    (shrinkRow 776 s6Step365ExitFvExtra) ((shrinkRow 775 s6Step365ExitGvExtra ++ [])) s6Step365ExitFv_Incoming s6Step365ExitFv_checked h3 s6Step365ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step365ExitFBefore s6Step365ExitFAfter s6Step365ExitGvAfter
    s6Step365ExitFRow s6Step365ExitFOut 88 [] [(s6Step365ExitFvRow,198),(s6Step365ExitGvRow,198)] [[],[]] [s6Step365ExitFvOut,s6Step365ExitGvOut]
    (shrinkRow 795 s6Step365ExitFExtra) ((shrinkRow 776 s6Step365ExitFvExtra ++ (shrinkRow 775 s6Step365ExitGvExtra ++ []))) s6Step365ExitF_Incoming s6Step365ExitF_checked h2 s6Step365ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step365ExitGBefore s6Step365ExitGAfter s6Step365ExitGvAfter
    s6Step365ExitGRow s6Step365ExitGOut 88 [] [(s6Step365ExitFRow,88),(s6Step365ExitFvRow,198),(s6Step365ExitGvRow,198)] [[],[],[]] [s6Step365ExitFOut,s6Step365ExitFvOut,s6Step365ExitGvOut]
    (shrinkRow 777 s6Step365ExitGExtra) ((shrinkRow 795 s6Step365ExitFExtra ++ (shrinkRow 776 s6Step365ExitFvExtra ++ (shrinkRow 775 s6Step365ExitGvExtra ++ [])))) s6Step365ExitG_Incoming s6Step365ExitG_checked h1 s6Step365ExitG_Outgoing
  exact h0

private theorem s6Step365ExitBank_checked : compileHmrBankResizeLog .exit s6Step365ExitGBefore ⟨s6Step365ExitFRow,s6Step365ExitGRow,s6Step365ExitFvRow,s6Step365ExitGvRow⟩ ⟨88,88,198,198⟩ [[],[],[],[]]=
    some (s6Step365ExitGvAfter,⟨s6Step365ExitFOut,s6Step365ExitGOut,s6Step365ExitFvOut,s6Step365ExitGvOut⟩,(shrinkRow 777 s6Step365ExitGExtra ++ (shrinkRow 795 s6Step365ExitFExtra ++ (shrinkRow 776 s6Step365ExitFvExtra ++ (shrinkRow 775 s6Step365ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step365ExitBank_rows]
  rfl

private theorem s6Step365Add0_apart : Disjoint s6Step365Add0Arena.live s6Step365Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step365Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365Add0_card : s6Step365Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step365Add0_borrowed : s6Step365Add0Arena.checkBorrow (hmrHybridCount s6Step365Add0Arena s6Step365Add0B.length) s6Step365Add0Work=some s6Step365Add0During := by
  have len : s6Step365Add0Work.length=hmrHybridCount s6Step365Add0Arena s6Step365Add0B.length := by
    rw [hmrHybridCount,s6Step365Add0_card]
    decide +kernel
  have nd : s6Step365Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step365Add0Arena s6Step365Add0During s6Step365Add0Work.toFinset s6Step365Add0_bounded s6Step365Add0_apart rfl

private theorem s6Step365Add0_distinct : (858::886::807::(s6Step365Add0A++s6Step365Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365Add0_owned : (858::886::807::(s6Step365Add0A++s6Step365Add0B)).toFinset⊆s6Step365Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step365Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365Add0_checked : compileHmrHybridCinLog s6Step365Add0Arena 886 858 807 s6Step365Add0A s6Step365Add0B s6Step365Add0Work=some s6Step365Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step365Add0Arena s6Step365Add0During 886 858 807 s6Step365Add0A s6Step365Add0B s6Step365Add0Work
    (by decide +kernel) (by decide +kernel) s6Step365Add0_distinct
    (fun q hq => s6Step365Add0_owned (List.mem_toFinset.mpr hq)) s6Step365Add0_borrowed

private theorem s6Step365Add1_apart : Disjoint s6Step365Add1Arena.live s6Step365Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step365Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365Add1_card : s6Step365Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step365Add1_borrowed : s6Step365Add1Arena.checkBorrow (hmrHybridCount s6Step365Add1Arena s6Step365Add1B.length) s6Step365Add1Work=some s6Step365Add1During := by
  have len : s6Step365Add1Work.length=hmrHybridCount s6Step365Add1Arena s6Step365Add1B.length := by
    rw [hmrHybridCount,s6Step365Add1_card]
    decide +kernel
  have nd : s6Step365Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step365Add1Arena s6Step365Add1During s6Step365Add1Work.toFinset s6Step365Add1_bounded s6Step365Add1_apart rfl

private theorem s6Step365Add1_distinct : (858::886::807::(s6Step365Add1A++s6Step365Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365Add1_owned : (858::886::807::(s6Step365Add1A++s6Step365Add1B)).toFinset⊆s6Step365Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step365Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365Add1_checked : compileHmrHybridCinLog s6Step365Add1Arena 886 858 807 s6Step365Add1A s6Step365Add1B s6Step365Add1Work=some s6Step365Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step365Add1Arena s6Step365Add1During 886 858 807 s6Step365Add1A s6Step365Add1B s6Step365Add1Work
    (by decide +kernel) (by decide +kernel) s6Step365Add1_distinct
    (fun q hq => s6Step365Add1_owned (List.mem_toFinset.mpr hq)) s6Step365Add1_borrowed

private theorem s6Step365F4_apart : Disjoint (s6Step365Add0A++s6Step365Add0B).toFinset (s6Step365Add1A++s6Step365Add1B).toFinset := by
  have nd : ((s6Step365Add0A++s6Step365Add0B)++(s6Step365Add1A++s6Step365Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step365F4_carry : s6Step365F4FlagArena.checkBorrow 1 [807]=some s6Step365Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step365F4FlagArena,s6Step365HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step365F4FlagArena,s6Step365HeadFvAfter,s6Step365Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step365F4_distinct : (908::886::858::807::((s6Step365Add0A++s6Step365Add1A)++(s6Step365Add0B++s6Step365Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365F4_flag : s6Step365HeadFvAfter.checkBorrow 1 [858]=some s6Step365F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step365HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step365F4_owned : (908::886::((s6Step365Add0A++s6Step365Add1A)++(s6Step365Add0B++s6Step365Add1B))).toFinset⊆s6Step365HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step365HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365F4_checked : compileHmrHybridF4Log s6Step365HeadFvAfter 908 886 s6Step365Add0A s6Step365Add0B s6Step365Add1A s6Step365Add1B [858] [807] s6Step365Add0Work s6Step365Add1Work=some s6Step365F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step365HeadFvAfter s6Step365F4FlagArena s6Step365Add0Arena s6Step365Add0During s6Step365Add1During 908 886
    s6Step365Add0A s6Step365Add0B s6Step365Add1A s6Step365Add1B [858] [807] s6Step365Add0Work s6Step365Add1Work
    (fun q hq => s6Step365F4_owned (List.mem_toFinset.mpr hq)) s6Step365F4_flag s6Step365F4_carry
    s6Step365F4_distinct s6Step365F4_apart s6Step365Add0_checked s6Step365Add1_checked

private theorem s6Step365Front_branch : s6Step365FrontSigmaArena.checkBorrow 1 [886]=some s6Step365HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step365FrontSigmaArena,s6Step365EntryGvAfter,s6Step365EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step365FrontSigmaArena,s6Step365EntryGvAfter,s6Step365EntryGAfter,s6Step365HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step365Front_entry : HmrFrontEntryValid s6Step365EntryFBefore s6Step365FrontBank 89 198 ⟨88,88,198,198⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step365FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step365EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step365EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step365FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step365Front_sigma : s6Step365EntryGvAfter.checkBorrow 1 [908]=some s6Step365FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step365EntryGvAfter,s6Step365EntryGAfter,arenaWires]
  · rfl

private def s6Step365HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365HeadFBefore : Arena := s6Step365HeadGAfter

private def s6Step365HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344],795⟩

private def s6Step365HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩

private def s6Step365HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 898],777⟩

private def s6Step365HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private theorem s6Step365HeadBank_incomingDistinct : ([s6Step365HeadGRow,s6Step365HeadFRow,s6Step365HeadGvRow,s6Step365HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365HeadF_Incoming : rowsOwned s6Step365HeadFBefore [s6Step365HeadFRow,s6Step365HeadGvRow,s6Step365HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step365HeadGRow,s6Step365HeadFRow,s6Step365HeadGvRow,s6Step365HeadFvRow] 1 s6Step365HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step365HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step365HeadBank_outgoingOwned : rowsOwned s6Step365HeadFvAfter [s6Step365HeadGOut,s6Step365HeadFOut,s6Step365HeadGvOut,s6Step365HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step365HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step365HeadF_Outgoing : rowsOwned s6Step365HeadFvAfter [s6Step365HeadFOut,s6Step365HeadGvOut,s6Step365HeadFvOut] :=
  hmrRows_owned_drop s6Step365HeadFvAfter [s6Step365HeadGOut,s6Step365HeadFOut,s6Step365HeadGvOut,s6Step365HeadFvOut] 1 s6Step365HeadBank_outgoingOwned

private theorem s6Step365HeadF_distinct : (s6Step365HeadFRow.sign::s6Step365HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365HeadF_owned : (s6Step365HeadFRow.sign::s6Step365HeadFRow.payload).toFinset⊆s6Step365HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step365HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365HeadF_reserved : s6Step365HeadFBefore.reserve s6Step365HeadFFresh.toFinset=some s6Step365HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step365HeadFFresh,arenaWires]
  · norm_num [s6Step365HeadFBefore,s6Step365HeadGAfter,s6Step365HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step365HeadFAfter,s6Step365HeadFBefore,s6Step365HeadGAfter,s6Step365HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step365HeadF_checked : planRowResizeLog s6Step365HeadFBefore s6Step365HeadFRow 90 s6Step365HeadFFresh=
    some (s6Step365HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 922],795⟩,growRow 795 s6Step365HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step365HeadFBefore s6Step365HeadFAfter s6Step365HeadFRow 90 s6Step365HeadFFresh
    s6Step365HeadF_distinct s6Step365HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step365HeadF_reserved
  have rowEq : WindowRow.mk (s6Step365HeadFRow.payload++s6Step365HeadFFresh) s6Step365HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 922],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step365HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step365HeadFvBefore : Arena := s6Step365HeadGvAfter

private theorem s6Step365HeadFv_Incoming : rowsOwned s6Step365HeadFvBefore [s6Step365HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step365HeadGRow,s6Step365HeadFRow,s6Step365HeadGvRow,s6Step365HeadFvRow] 3 s6Step365HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step365HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step365HeadFv_Outgoing : rowsOwned s6Step365HeadFvAfter [s6Step365HeadFvOut] :=
  hmrRows_owned_drop s6Step365HeadFvAfter [s6Step365HeadGOut,s6Step365HeadFOut,s6Step365HeadGvOut,s6Step365HeadFvOut] 3 s6Step365HeadBank_outgoingOwned

private theorem s6Step365HeadFv_distinct : (s6Step365HeadFvRow.sign::s6Step365HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365HeadFv_owned : (s6Step365HeadFvRow.sign::s6Step365HeadFvRow.payload).toFinset⊆s6Step365HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step365HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365HeadFv_reserved : s6Step365HeadFvBefore.reserve s6Step365HeadFvFresh.toFinset=some s6Step365HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step365HeadFvFresh,arenaWires]
  · norm_num [s6Step365HeadFvBefore,s6Step365HeadGvAfter,s6Step365HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step365HeadFvAfter,s6Step365HeadFvBefore,s6Step365HeadGvAfter,s6Step365HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step365HeadFv_checked : planRowResizeLog s6Step365HeadFvBefore s6Step365HeadFvRow 199 s6Step365HeadFvFresh=
    some (s6Step365HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 906],776⟩,growRow 776 s6Step365HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step365HeadFvBefore s6Step365HeadFvAfter s6Step365HeadFvRow 199 s6Step365HeadFvFresh
    s6Step365HeadFv_distinct s6Step365HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step365HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step365HeadFvRow.payload++s6Step365HeadFvFresh) s6Step365HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 906],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step365HeadG_Incoming : rowsOwned s6Step365HeadGBefore [s6Step365HeadGRow,s6Step365HeadFRow,s6Step365HeadGvRow,s6Step365HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step365HeadGRow,s6Step365HeadFRow,s6Step365HeadGvRow,s6Step365HeadFvRow] 0 s6Step365HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step365HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step365HeadG_Outgoing : rowsOwned s6Step365HeadFvAfter [s6Step365HeadGOut,s6Step365HeadFOut,s6Step365HeadGvOut,s6Step365HeadFvOut] :=
  hmrRows_owned_drop s6Step365HeadFvAfter [s6Step365HeadGOut,s6Step365HeadFOut,s6Step365HeadGvOut,s6Step365HeadFvOut] 0 s6Step365HeadBank_outgoingOwned

private theorem s6Step365HeadG_distinct : (s6Step365HeadGRow.sign::s6Step365HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365HeadG_owned : (s6Step365HeadGRow.sign::s6Step365HeadGRow.payload).toFinset⊆s6Step365HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step365HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365HeadG_reserved : s6Step365HeadGBefore.reserve s6Step365HeadGFresh.toFinset=some s6Step365HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step365HeadGFresh,arenaWires]
  · norm_num [s6Step365HeadGBefore,s6Step365HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step365HeadGAfter,s6Step365HeadGBefore,s6Step365HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step365HeadG_checked : planRowResizeLog s6Step365HeadGBefore s6Step365HeadGRow 90 s6Step365HeadGFresh=
    some (s6Step365HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 898, 892],777⟩,growRow 777 s6Step365HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step365HeadGBefore s6Step365HeadGAfter s6Step365HeadGRow 90 s6Step365HeadGFresh
    s6Step365HeadG_distinct s6Step365HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step365HeadG_reserved
  have rowEq : WindowRow.mk (s6Step365HeadGRow.payload++s6Step365HeadGFresh) s6Step365HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 898, 892],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step365HeadGvBefore : Arena := s6Step365HeadFAfter

private theorem s6Step365HeadGv_Incoming : rowsOwned s6Step365HeadGvBefore [s6Step365HeadGvRow,s6Step365HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step365HeadGRow,s6Step365HeadFRow,s6Step365HeadGvRow,s6Step365HeadFvRow] 2 s6Step365HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step365HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step365HeadGv_Outgoing : rowsOwned s6Step365HeadFvAfter [s6Step365HeadGvOut,s6Step365HeadFvOut] :=
  hmrRows_owned_drop s6Step365HeadFvAfter [s6Step365HeadGOut,s6Step365HeadFOut,s6Step365HeadGvOut,s6Step365HeadFvOut] 2 s6Step365HeadBank_outgoingOwned

private theorem s6Step365HeadGv_distinct : (s6Step365HeadGvRow.sign::s6Step365HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step365HeadGv_owned : (s6Step365HeadGvRow.sign::s6Step365HeadGvRow.payload).toFinset⊆s6Step365HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step365HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step365HeadGv_reserved : s6Step365HeadGvBefore.reserve s6Step365HeadGvFresh.toFinset=some s6Step365HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step365HeadGvFresh,arenaWires]
  · norm_num [s6Step365HeadGvBefore,s6Step365HeadFAfter,s6Step365HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step365HeadGvAfter,s6Step365HeadGvBefore,s6Step365HeadFAfter,s6Step365HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step365HeadGv_checked : planRowResizeLog s6Step365HeadGvBefore s6Step365HeadGvRow 199 s6Step365HeadGvFresh=
    some (s6Step365HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 876],775⟩,growRow 775 s6Step365HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step365HeadGvBefore s6Step365HeadGvAfter s6Step365HeadGvRow 199 s6Step365HeadGvFresh
    s6Step365HeadGv_distinct s6Step365HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step365HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step365HeadGvRow.payload++s6Step365HeadGvFresh) s6Step365HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 876],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step365HeadBank_rows : planWindowRowsLog s6Step365HeadGBefore [(s6Step365HeadGRow,90),(s6Step365HeadFRow,90),(s6Step365HeadGvRow,199),(s6Step365HeadFvRow,199)] [s6Step365HeadGFresh,s6Step365HeadFFresh,s6Step365HeadGvFresh,s6Step365HeadFvFresh]=
    some (s6Step365HeadFvAfter,[s6Step365HeadGOut,s6Step365HeadFOut,s6Step365HeadGvOut,s6Step365HeadFvOut],(growRow 777 s6Step365HeadGFresh ++ (growRow 795 s6Step365HeadFFresh ++ (growRow 775 s6Step365HeadGvFresh ++ (growRow 776 s6Step365HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step365HeadFvAfter [] []=some (s6Step365HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step365HeadFvBefore s6Step365HeadFvAfter s6Step365HeadFvAfter
    s6Step365HeadFvRow s6Step365HeadFvOut 199 s6Step365HeadFvFresh [] [] []
    (growRow 776 s6Step365HeadFvFresh) ([]) s6Step365HeadFv_Incoming s6Step365HeadFv_checked h4 s6Step365HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step365HeadGvBefore s6Step365HeadGvAfter s6Step365HeadFvAfter
    s6Step365HeadGvRow s6Step365HeadGvOut 199 s6Step365HeadGvFresh [(s6Step365HeadFvRow,199)] [s6Step365HeadFvFresh] [s6Step365HeadFvOut]
    (growRow 775 s6Step365HeadGvFresh) ((growRow 776 s6Step365HeadFvFresh ++ [])) s6Step365HeadGv_Incoming s6Step365HeadGv_checked h3 s6Step365HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step365HeadFBefore s6Step365HeadFAfter s6Step365HeadFvAfter
    s6Step365HeadFRow s6Step365HeadFOut 90 s6Step365HeadFFresh [(s6Step365HeadGvRow,199),(s6Step365HeadFvRow,199)] [s6Step365HeadGvFresh,s6Step365HeadFvFresh] [s6Step365HeadGvOut,s6Step365HeadFvOut]
    (growRow 795 s6Step365HeadFFresh) ((growRow 775 s6Step365HeadGvFresh ++ (growRow 776 s6Step365HeadFvFresh ++ []))) s6Step365HeadF_Incoming s6Step365HeadF_checked h2 s6Step365HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step365HeadGBefore s6Step365HeadGAfter s6Step365HeadFvAfter
    s6Step365HeadGRow s6Step365HeadGOut 90 s6Step365HeadGFresh [(s6Step365HeadFRow,90),(s6Step365HeadGvRow,199),(s6Step365HeadFvRow,199)] [s6Step365HeadFFresh,s6Step365HeadGvFresh,s6Step365HeadFvFresh] [s6Step365HeadFOut,s6Step365HeadGvOut,s6Step365HeadFvOut]
    (growRow 777 s6Step365HeadGFresh) ((growRow 795 s6Step365HeadFFresh ++ (growRow 775 s6Step365HeadGvFresh ++ (growRow 776 s6Step365HeadFvFresh ++ [])))) s6Step365HeadG_Incoming s6Step365HeadG_checked h1 s6Step365HeadG_Outgoing
  exact h0

private theorem s6Step365HeadBank_checked : compileHmrBankResizeLog .headroom s6Step365HeadGBefore ⟨s6Step365HeadFRow,s6Step365HeadGRow,s6Step365HeadFvRow,s6Step365HeadGvRow⟩ ⟨90,90,199,199⟩ [s6Step365HeadGFresh,s6Step365HeadFFresh,s6Step365HeadGvFresh,s6Step365HeadFvFresh]=
    some (s6Step365HeadFvAfter,⟨s6Step365HeadFOut,s6Step365HeadGOut,s6Step365HeadFvOut,s6Step365HeadGvOut⟩,(growRow 777 s6Step365HeadGFresh ++ (growRow 795 s6Step365HeadFFresh ++ (growRow 775 s6Step365HeadGvFresh ++ (growRow 776 s6Step365HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step365HeadBank_rows]
  rfl

private theorem s6Step365Front_checked : compileHmrSourceFrontLog s6Step365EntryFBefore s6Step365FrontBank 89 198 ⟨88,88,198,198⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step365FrontLog=some s6Step365FrontPlan := by
  have pairEq : s6Step365FrontPair=⟨s6Step365HeadFRow,s6Step365HeadGRow,s6Step365HeadFvRow,s6Step365HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step365FrontHead=⟨s6Step365ExitFRow,s6Step365ExitGRow,s6Step365ExitFvRow,s6Step365ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step365Add0A=s6Step365FrontHead.f.wires := by decide +kernel
  have gEq : s6Step365Add0B=s6Step365FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step365Add1A=s6Step365FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step365Add1B=s6Step365FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step365EntryFBefore s6Step365FrontBank 89 198 ⟨88,88,198,198⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step365FrontLog s6Step365FrontPlan
  · exact s6Step365Front_entry
  · exact s6Step365EntryBank_checked
  · exact s6Step365Front_sigma
  · rfl
  · exact s6Step365Front_branch
  · rfl
  · simpa only [s6Step365FrontPlan,pairEq] using s6Step365HeadBank_checked
  · simpa only [s6Step365FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step365F4_checked
  · exact s6Step365Counter_checked
  · rfl
  · simpa only [s6Step365FrontPlan,headEq] using s6Step365ExitBank_checked

private theorem s6Step365Complete_explicit_checked : compileHmrEarlyStepLog s6Step365EntryFBefore s6Step365FrontBank 89 198 ⟨88,88,198,198⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step365CompleteLog=some s6Step365CompletePlan := by
  let Q := s6Step365EarlyControlPlan
  have hq := s6Step365EarlyControl_plan_checked
  have fv1 : s6Step365CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step365CompleteOut.fv.payload[2]?.getD s6Step365CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step365CompleteOut.fv.payload[3]?.getD s6Step365CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step365CompleteOut.fv.payload[4]?.getD s6Step365CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step365EntryFBefore s6Step365EarlyControlArena s6Step365FrontBank 89 198 ⟨88,88,198,198⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step365CompleteLog s6Step365FrontPlan Q
    s6Step365Front_checked s6Step365Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step365Complete_owned s6Step365Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step365EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 s6Step365CompleteOut.fv.second (s6Step365CompleteOut.fv.payload[2]?.getD s6Step365CompleteOut.fv.sign) (s6Step365CompleteOut.fv.payload[3]?.getD s6Step365CompleteOut.fv.sign) (s6Step365CompleteOut.fv.payload[4]?.getD s6Step365CompleteOut.fv.sign) 886 60 s6Step365EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep365Arena : Arena := s6Step365EntryFBefore
def s6PrivateStep365Bank : WindowBank := s6Step365FrontBank
def s6PrivateStep365Spec : HmrSourceWalkStepLog := ⟨89,198,⟨88,88,198,198⟩,60,.early s6Step365CompleteLog⟩
def s6PrivateStep365Plan : HmrSourceStepPlan := .early s6Step365CompletePlan
theorem s6PrivateStep365_source : s6PrivateStep365Spec=s6ObservedLogs352[13] := rfl
theorem s6PrivateStep365_checked : compileHmrSourceStepLog s6PrivateStep365Arena s6PrivateStep365Bank
    s6PrivateStep365Spec.fgWidth s6PrivateStep365Spec.vWidth s6PrivateStep365Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 365 s6PrivateStep365Spec.need none s6PrivateStep365Spec.log=some s6PrivateStep365Plan := by
  change compileHmrSourceStepLog s6Step365EntryFBefore s6Step365FrontBank 89 198 ⟨88,88,198,198⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 365 60 none (.early s6Step365CompleteLog)=some (.early s6Step365CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 365<498)]
  rw [s6Step365Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
