import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep354
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

private def s6Step356CompleteMoves : List (Wire × Wire) := [(876,92)]

private def s6Step356EarlyControlLog : HmrEarlyControlLog := ⟨[876, 858, 881, 778, 875],[906],[805],[802, 843, 877, 792, 816, 819],[]⟩

private def s6Step356FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [879]],[[778], [881], [858], [779]],[[], [], [], []]⟩,[789],[892],[875],[906],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 906, 805, 802]⟩

private def s6Step356CompleteLog : HmrEarlyStepLog := ⟨s6Step356FrontLog,s6Step356CompleteMoves,s6Step356EarlyControlLog⟩

private def s6Step356ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348],795⟩

private def s6Step356ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩

private def s6Step356ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],777⟩

private def s6Step356ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879],775⟩

private def s6Step356FrontOut : WindowBank := ⟨s6Step356ExitFOut,s6Step356ExitGOut,s6Step356ExitFvOut,s6Step356ExitGvOut⟩

private def s6Step356CompleteOut : WindowBank := s6Step356FrontOut.repacked s6Step356CompleteMoves

private def s6Step356EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step356EarlyControlPositiveArena,[906],s6Step356EarlyControlEqualityArena,[805],⟨⟨789,false⟩,[⟨⟨906,false⟩,805⟩]⟩⟩

private def s6Step356EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,876⟩,⟨⟨772,false⟩,858⟩,⟨⟨771,false⟩,881⟩,⟨⟨770,false⟩,778⟩,⟨⟨769,false⟩,875⟩]⟩

private def s6Step356EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step356EarlyControlZeroArena,s6Step356EarlyControlZeroPlan,s6Step356EarlyControlClassPlan,s6Step356EarlyControlFlagArena,s6Step356EarlyControlFittedArena,s6Step356EarlyControlHistoryArena,s6Step356EarlyControlSigmaArena,s6Step356EarlyControlOutputArena,s6Step356EarlyControlLog⟩

private def s6Step356CounterWork : List Wire := [875, 906, 805, 802]

private theorem s6Step356Counter_bounded : s6Step356CounterWork.toFinset⊆arenaWires := by norm_num [s6Step356CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step356HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356CounterDuring : Arena := ⟨s6Step356HeadFvAfter.live∪s6Step356CounterWork.toFinset,Finset.union_subset s6Step356HeadFvAfter.bounded s6Step356Counter_bounded⟩

private def s6Step356EntryFFresh : List Wire := []

private def s6Step356EntryFvFresh : List Wire := []

private def s6Step356EntryGFresh : List Wire := []

private def s6Step356EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356EntryGvFresh : List Wire := [879]

private def s6Step356ExitFExtra : List Wire := [881]

private def s6Step356ExitGExtra : List Wire := [92, 778]

private def s6Step356ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356ExitGvExtra : List Wire := [858]

private def s6Step356Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356Add0Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step356Add0_bounded : s6Step356Add0Work.toFinset⊆arenaWires := by
  have h : s6Step356Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step356Add0During : Arena := ⟨s6Step356Add0Arena.live∪s6Step356Add0Work.toFinset,Finset.union_subset s6Step356Add0Arena.bounded s6Step356Add0_bounded⟩

private def s6Step356Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356Add1Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step356Add1_bounded : s6Step356Add1Work.toFinset⊆arenaWires := by
  have h : s6Step356Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step356Add1During : Arena := ⟨s6Step356Add1Arena.live∪s6Step356Add1Work.toFinset,Finset.union_subset s6Step356Add1Arena.bounded s6Step356Add1_bounded⟩

private def s6Step356F4FlagArena : Arena := ⟨s6Step356HeadFvAfter.live∪{875},Finset.union_subset s6Step356HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step356F4Plan : HmrHybridF4Plan := ⟨s6Step356F4FlagArena,[875],s6Step356Add0Arena,[906],s6Step356Add0During,s6Step356Add0Work,s6Step356Add1During,s6Step356Add1Work⟩

private def s6Step356HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 881],795⟩

private def s6Step356HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩

private def s6Step356HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 778],777⟩

private def s6Step356HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 858],775⟩

private def s6Step356FrontHead : WindowBank := ⟨s6Step356HeadFOut,s6Step356HeadGOut,s6Step356HeadFvOut,s6Step356HeadGvOut⟩

private def s6Step356EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348],795⟩

private def s6Step356EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817],776⟩

private def s6Step356EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92],777⟩

private def s6Step356EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879],775⟩

private def s6Step356FrontPair : WindowBank := ⟨s6Step356EntryFOut,s6Step356EntryGOut,s6Step356EntryFvOut,s6Step356EntryGvOut⟩

private def s6Step356FrontSigmaArena : Arena := ⟨s6Step356EntryGvAfter.live∪{789},Finset.union_subset s6Step356EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step356HeadFFresh : List Wire := [881]

private def s6Step356HeadFvFresh : List Wire := [779]

private def s6Step356HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356HeadGFresh : List Wire := [778]

private def s6Step356HeadGvFresh : List Wire := [858]

private def s6Step356FrontPlan : HmrSourceFront := ⟨s6Step356EntryGvAfter,s6Step356FrontPair,(growRow 795 s6Step356EntryFFresh ++ (growRow 777 s6Step356EntryGFresh ++ (growRow 776 s6Step356EntryFvFresh ++ (growRow 775 s6Step356EntryGvFresh ++ [])))),s6Step356FrontSigmaArena,[789],s6Step356HeadGBefore,[892],
  s6Step356HeadFvAfter,s6Step356FrontHead,(growRow 777 s6Step356HeadGFresh ++ (growRow 795 s6Step356HeadFFresh ++ (growRow 775 s6Step356HeadGvFresh ++ (growRow 776 s6Step356HeadFvFresh ++ [])))),s6Step356F4Plan,s6Step356CounterDuring,s6Step356CounterWork,s6Step356ExitGvAfter,s6Step356FrontOut,(shrinkRow 777 s6Step356ExitGExtra ++ (shrinkRow 795 s6Step356ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step356ExitGvExtra ++ []))))⟩

private def s6Step356CompletePlan : HmrEarlyStepPlan := ⟨s6Step356FrontPlan,s6Step356EarlyControlArena,s6Step356EarlyControlPlan,s6Step356CompleteMoves⟩

private theorem s6Step356Complete_apart : List.Disjoint (s6Step356CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [789, 892, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step356CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[789, 892, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step356Complete_owned : (s6Step356CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step356EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step356EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step356CompleteMoveArena : Arena := ⟨s6Step356ExitGvAfter.live∪{92},Finset.union_subset s6Step356ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step356Complete_repack : s6Step356ExitGvAfter.checkRepack s6Step356CompleteMoves=some s6Step356EarlyControlArena := by
  have owned : 876∈s6Step356ExitGvAfter.live := by norm_num [s6Step356ExitGvAfter,arenaWires]
  have reserve : s6Step356ExitGvAfter.reserve {92}=some s6Step356CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step356ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step356CompleteMoveArena.retireSet {876}=s6Step356EarlyControlArena := by
    unfold Arena.retireSet s6Step356EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step356CompleteMoveArena,s6Step356ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step356CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step356CompleteMoveArena.retireSet {876}).checkRepack []=some s6Step356EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step356EarlyControl_branchOwned : ([892] : List Wire).toFinset⊆s6Step356EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step356EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356EarlyControl_branch : compileHmrBranchRetirement s6Step356EarlyControlSigmaArena 892=some s6Step356EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step356EarlyControl_branchOwned
  · ext q
    simp [s6Step356EarlyControlOutputArena,s6Step356EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step356EarlyControl_classEqualityBorrow : s6Step356EarlyControlPositiveArena.checkBorrow (([789, 906] : List Wire).length-1) s6Step356EarlyControlLog.classWork=some s6Step356EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step356EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step356EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step356EarlyControlEqualityArena,s6Step356EarlyControlPositiveArena,s6Step356EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step356EarlyControl_classEqualityOwned : ([789, 906] : List Wire).toFinset⊆s6Step356EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step356EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356EarlyControl_classEquality : compileHmrEqualityLog s6Step356EarlyControlPositiveArena [789, 906] 0 s6Step356EarlyControlLog.classWork=some (s6Step356EarlyControlEqualityArena,s6Step356EarlyControlLog.classWork,s6Step356EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step356EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step356EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step356EarlyControl_classOwned : ([769, 875, 789] : List Wire).toFinset⊆s6Step356EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step356EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356EarlyControl_positiveBorrow : s6Step356EarlyControlZeroArena.checkBorrow (1) s6Step356EarlyControlLog.positiveWork=some s6Step356EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step356EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step356EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step356EarlyControlPositiveArena,s6Step356EarlyControlZeroArena,s6Step356EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step356EarlyControl_class : compileHmrSourceClassLog s6Step356EarlyControlZeroArena false 769 s6Step356EarlyControlZeroPlan.top 0 789 s6Step356EarlyControlLog.positiveWork s6Step356EarlyControlLog.classWork=some s6Step356EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step356EarlyControlClassPlan s6Step356EarlyControlZeroArena false 769 s6Step356EarlyControlZeroPlan.top 0 789
  constructor
  · decide +kernel
  · exact s6Step356EarlyControl_classOwned
  · exact s6Step356EarlyControl_positiveBorrow
  · exact s6Step356EarlyControl_classEquality

private theorem s6Step356EarlyControl_entryRecordOwned : ([892, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step356EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step356EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356EarlyControl_entrySigmaOwned : ([789, 254] : List Wire).toFinset⊆s6Step356EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step356EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356EarlyControl_fitBorrow : s6Step356EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step356EarlyControlLog.recordFresh=some s6Step356EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step356EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step356EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step356EarlyControlFittedArena,s6Step356EarlyControlFlagArena,s6Step356EarlyControlLog,arenaWires]

private theorem s6Step356EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step356EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step356EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356EarlyControl_fit : compileHmrRecordGrowLog s6Step356EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step356EarlyControlLog.recordFresh=some s6Step356EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step356EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step356EarlyControl_fitBorrow

private theorem s6Step356EarlyControl_flagsBorrow : s6Step356EarlyControlEqualityArena.checkBorrow (6) s6Step356EarlyControlLog.flagWork=some s6Step356EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step356EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step356EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step356EarlyControlFlagArena,s6Step356EarlyControlEqualityArena,s6Step356EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step356EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step356EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step356EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356EarlyControl_flags : compileHmrFlagsLog s6Step356EarlyControlClassPlan.equalityArena s6Step356EarlyControlClassPlan.equality.top 253 252 251 s6Step356EarlyControlLog.flagWork=some s6Step356EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step356EarlyControl_flagsOwned⟩
  · exact s6Step356EarlyControl_flagsBorrow

private theorem s6Step356EarlyControl_historyBorrow : s6Step356EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step356EarlyControlLog.recordFresh=some s6Step356EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step356EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step356EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step356EarlyControlHistoryArena,s6Step356EarlyControlArena,s6Step356EarlyControlLog,arenaWires]

private theorem s6Step356EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step356EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step356EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356EarlyControl_history : compileHmrRecordGrowLog s6Step356EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step356EarlyControlLog.recordFresh=some s6Step356EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step356EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step356EarlyControl_historyBorrow

private theorem s6Step356EarlyControl_sigmaOwned : ([254, 789] : List Wire).toFinset⊆s6Step356EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step356EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356EarlyControl_sigmaReleaseOwned : ([789] : List Wire).toFinset⊆s6Step356EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step356EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356EarlyControl_sigmaRelease : s6Step356EarlyControlHistoryArena.release {789} (fun _ => false)=some s6Step356EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step356EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step356EarlyControlSigmaArena,s6Step356EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step356EarlyControl_sigma : compileHmrSigmaDropLog s6Step356EarlyControlHistoryArena false 0 0 254 789 []=some s6Step356EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step356EarlyControl_sigmaOwned⟩
  · exact s6Step356EarlyControl_sigmaRelease

private theorem s6Step356EarlyControl_zeroBorrow : s6Step356EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step356EarlyControlLog.zeroWork=some s6Step356EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step356EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step356EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step356EarlyControlZeroArena,s6Step356EarlyControlArena,s6Step356EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step356EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step356EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step356EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356EarlyControl_zero : compileHmrEqualityLog s6Step356EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step356EarlyControlLog.zeroWork=some (s6Step356EarlyControlZeroArena,s6Step356EarlyControlLog.zeroWork,s6Step356EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step356EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step356EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step356EarlyControl_logged : s6Step356EarlyControlPlan.Logged s6Step356EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 254 253 252 251 892 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step356EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step356EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step356EarlyControl_zero
  · exact s6Step356EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step356EarlyControl_flags
  · exact s6Step356EarlyControl_fit
  · exact s6Step356EarlyControl_history
  · exact s6Step356EarlyControl_sigma
  · exact s6Step356EarlyControl_branch

private theorem s6Step356EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step356EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 254 253 252 251 892 60 s6Step356EarlyControlLog=some s6Step356EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step356EarlyControlPlan s6Step356EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 254 253 252 251 892 60 s6Step356EarlyControl_logged

private def s6Step356EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348],795⟩

private def s6Step356EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817],776⟩

private def s6Step356EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92],777⟩

private def s6Step356EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873],775⟩

private def s6Step356FrontBank : WindowBank := ⟨s6Step356EntryFRow,s6Step356EntryGRow,s6Step356EntryFvRow,s6Step356EntryGvRow⟩

private def s6Step356Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 881, 795]

private def s6Step356Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 778, 777]

private def s6Step356Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 776]

private def s6Step356Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 858, 775]

private theorem s6Step356Counter_apart : Disjoint s6Step356HeadFvAfter.live s6Step356CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step356HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356Counter_borrowed : s6Step356HeadFvAfter.checkBorrow 4 s6Step356CounterWork=some s6Step356CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step356HeadFvAfter s6Step356CounterDuring s6Step356CounterWork.toFinset s6Step356Counter_bounded s6Step356Counter_apart rfl

private theorem s6Step356Counter_owned : (789::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step356HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step356HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356Counter_checked : compileHmrCounterStepLog s6Step356HeadFvAfter true 789 [774, 773, 772, 771, 770, 769] s6Step356CounterWork=some s6Step356CounterDuring := by
  have owned : ∀q∈789::[774, 773, 772, 771, 770, 769],q∈s6Step356HeadFvAfter.live := fun q hq => s6Step356Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step356Counter_borrowed

private def s6Step356EntryFAfter : Arena := s6Step356EntryFBefore

private theorem s6Step356EntryBank_incomingDistinct : ([s6Step356EntryFRow,s6Step356EntryGRow,s6Step356EntryFvRow,s6Step356EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356EntryF_Incoming : rowsOwned s6Step356EntryFBefore [s6Step356EntryFRow,s6Step356EntryGRow,s6Step356EntryFvRow,s6Step356EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step356EntryFRow,s6Step356EntryGRow,s6Step356EntryFvRow,s6Step356EntryGvRow] 0 s6Step356EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step356EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step356EntryBank_outgoingOwned : rowsOwned s6Step356EntryGvAfter [s6Step356EntryFOut,s6Step356EntryGOut,s6Step356EntryFvOut,s6Step356EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step356EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step356EntryF_Outgoing : rowsOwned s6Step356EntryGvAfter [s6Step356EntryFOut,s6Step356EntryGOut,s6Step356EntryFvOut,s6Step356EntryGvOut] :=
  hmrRows_owned_drop s6Step356EntryGvAfter [s6Step356EntryFOut,s6Step356EntryGOut,s6Step356EntryFvOut,s6Step356EntryGvOut] 0 s6Step356EntryBank_outgoingOwned

private theorem s6Step356EntryF_distinct : (s6Step356EntryFRow.sign::s6Step356EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356EntryF_owned : (s6Step356EntryFRow.sign::s6Step356EntryFRow.payload).toFinset⊆s6Step356EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step356EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356EntryF_reserved : s6Step356EntryFBefore.reserve s6Step356EntryFFresh.toFinset=some s6Step356EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step356EntryFFresh,arenaWires]
  · norm_num [s6Step356EntryFBefore,s6Step356EntryFFresh,arenaWires]
  · simp only [s6Step356EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step356EntryF_checked : planRowResizeLog s6Step356EntryFBefore s6Step356EntryFRow 93 s6Step356EntryFFresh=
    some (s6Step356EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348],795⟩,growRow 795 s6Step356EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step356EntryFBefore s6Step356EntryFAfter s6Step356EntryFRow 93 s6Step356EntryFFresh
    s6Step356EntryF_distinct s6Step356EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step356EntryF_reserved
  have rowEq : WindowRow.mk (s6Step356EntryFRow.payload++s6Step356EntryFFresh) s6Step356EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step356EntryFvAfter : Arena := s6Step356EntryFBefore

private def s6Step356EntryFvBefore : Arena := s6Step356EntryFBefore

private theorem s6Step356EntryFv_Incoming : rowsOwned s6Step356EntryFvBefore [s6Step356EntryFvRow,s6Step356EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step356EntryFRow,s6Step356EntryGRow,s6Step356EntryFvRow,s6Step356EntryGvRow] 2 s6Step356EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step356EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step356EntryFv_Outgoing : rowsOwned s6Step356EntryGvAfter [s6Step356EntryFvOut,s6Step356EntryGvOut] :=
  hmrRows_owned_drop s6Step356EntryGvAfter [s6Step356EntryFOut,s6Step356EntryGOut,s6Step356EntryFvOut,s6Step356EntryGvOut] 2 s6Step356EntryBank_outgoingOwned

private theorem s6Step356EntryFv_distinct : (s6Step356EntryFvRow.sign::s6Step356EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356EntryFv_owned : (s6Step356EntryFvRow.sign::s6Step356EntryFvRow.payload).toFinset⊆s6Step356EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step356EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356EntryFv_reserved : s6Step356EntryFvBefore.reserve s6Step356EntryFvFresh.toFinset=some s6Step356EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step356EntryFvFresh,arenaWires]
  · norm_num [s6Step356EntryFvBefore,s6Step356EntryFBefore,s6Step356EntryFvFresh,arenaWires]
  · simp only [s6Step356EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step356EntryFv_checked : planRowResizeLog s6Step356EntryFvBefore s6Step356EntryFvRow 194 s6Step356EntryFvFresh=
    some (s6Step356EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817],776⟩,growRow 776 s6Step356EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step356EntryFvBefore s6Step356EntryFvAfter s6Step356EntryFvRow 194 s6Step356EntryFvFresh
    s6Step356EntryFv_distinct s6Step356EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step356EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step356EntryFvRow.payload++s6Step356EntryFvFresh) s6Step356EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step356EntryGAfter : Arena := s6Step356EntryFBefore

private def s6Step356EntryGBefore : Arena := s6Step356EntryFBefore

private theorem s6Step356EntryG_Incoming : rowsOwned s6Step356EntryGBefore [s6Step356EntryGRow,s6Step356EntryFvRow,s6Step356EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step356EntryFRow,s6Step356EntryGRow,s6Step356EntryFvRow,s6Step356EntryGvRow] 1 s6Step356EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step356EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step356EntryG_Outgoing : rowsOwned s6Step356EntryGvAfter [s6Step356EntryGOut,s6Step356EntryFvOut,s6Step356EntryGvOut] :=
  hmrRows_owned_drop s6Step356EntryGvAfter [s6Step356EntryFOut,s6Step356EntryGOut,s6Step356EntryFvOut,s6Step356EntryGvOut] 1 s6Step356EntryBank_outgoingOwned

private theorem s6Step356EntryG_distinct : (s6Step356EntryGRow.sign::s6Step356EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356EntryG_owned : (s6Step356EntryGRow.sign::s6Step356EntryGRow.payload).toFinset⊆s6Step356EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step356EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356EntryG_reserved : s6Step356EntryGBefore.reserve s6Step356EntryGFresh.toFinset=some s6Step356EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step356EntryGFresh,arenaWires]
  · norm_num [s6Step356EntryGBefore,s6Step356EntryFBefore,s6Step356EntryGFresh,arenaWires]
  · simp only [s6Step356EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step356EntryG_checked : planRowResizeLog s6Step356EntryGBefore s6Step356EntryGRow 93 s6Step356EntryGFresh=
    some (s6Step356EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92],777⟩,growRow 777 s6Step356EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step356EntryGBefore s6Step356EntryGAfter s6Step356EntryGRow 93 s6Step356EntryGFresh
    s6Step356EntryG_distinct s6Step356EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step356EntryG_reserved
  have rowEq : WindowRow.mk (s6Step356EntryGRow.payload++s6Step356EntryGFresh) s6Step356EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step356EntryGvBefore : Arena := s6Step356EntryFBefore

private theorem s6Step356EntryGv_Incoming : rowsOwned s6Step356EntryGvBefore [s6Step356EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step356EntryFRow,s6Step356EntryGRow,s6Step356EntryFvRow,s6Step356EntryGvRow] 3 s6Step356EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step356EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step356EntryGv_Outgoing : rowsOwned s6Step356EntryGvAfter [s6Step356EntryGvOut] :=
  hmrRows_owned_drop s6Step356EntryGvAfter [s6Step356EntryFOut,s6Step356EntryGOut,s6Step356EntryFvOut,s6Step356EntryGvOut] 3 s6Step356EntryBank_outgoingOwned

private theorem s6Step356EntryGv_distinct : (s6Step356EntryGvRow.sign::s6Step356EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356EntryGv_owned : (s6Step356EntryGvRow.sign::s6Step356EntryGvRow.payload).toFinset⊆s6Step356EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step356EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356EntryGv_reserved : s6Step356EntryGvBefore.reserve s6Step356EntryGvFresh.toFinset=some s6Step356EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step356EntryGvFresh,arenaWires]
  · norm_num [s6Step356EntryGvBefore,s6Step356EntryFBefore,s6Step356EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step356EntryGvAfter,s6Step356EntryGvBefore,s6Step356EntryFBefore,s6Step356EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step356EntryGv_checked : planRowResizeLog s6Step356EntryGvBefore s6Step356EntryGvRow 194 s6Step356EntryGvFresh=
    some (s6Step356EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879],775⟩,growRow 775 s6Step356EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step356EntryGvBefore s6Step356EntryGvAfter s6Step356EntryGvRow 194 s6Step356EntryGvFresh
    s6Step356EntryGv_distinct s6Step356EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step356EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step356EntryGvRow.payload++s6Step356EntryGvFresh) s6Step356EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step356EntryBank_rows : planWindowRowsLog s6Step356EntryFBefore [(s6Step356EntryFRow,93),(s6Step356EntryGRow,93),(s6Step356EntryFvRow,194),(s6Step356EntryGvRow,194)] [s6Step356EntryFFresh,s6Step356EntryGFresh,s6Step356EntryFvFresh,s6Step356EntryGvFresh]=
    some (s6Step356EntryGvAfter,[s6Step356EntryFOut,s6Step356EntryGOut,s6Step356EntryFvOut,s6Step356EntryGvOut],(growRow 795 s6Step356EntryFFresh ++ (growRow 777 s6Step356EntryGFresh ++ (growRow 776 s6Step356EntryFvFresh ++ (growRow 775 s6Step356EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step356EntryGvAfter [] []=some (s6Step356EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step356EntryGvBefore s6Step356EntryGvAfter s6Step356EntryGvAfter
    s6Step356EntryGvRow s6Step356EntryGvOut 194 s6Step356EntryGvFresh [] [] []
    (growRow 775 s6Step356EntryGvFresh) ([]) s6Step356EntryGv_Incoming s6Step356EntryGv_checked h4 s6Step356EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step356EntryFvBefore s6Step356EntryFvAfter s6Step356EntryGvAfter
    s6Step356EntryFvRow s6Step356EntryFvOut 194 s6Step356EntryFvFresh [(s6Step356EntryGvRow,194)] [s6Step356EntryGvFresh] [s6Step356EntryGvOut]
    (growRow 776 s6Step356EntryFvFresh) ((growRow 775 s6Step356EntryGvFresh ++ [])) s6Step356EntryFv_Incoming s6Step356EntryFv_checked h3 s6Step356EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step356EntryGBefore s6Step356EntryGAfter s6Step356EntryGvAfter
    s6Step356EntryGRow s6Step356EntryGOut 93 s6Step356EntryGFresh [(s6Step356EntryFvRow,194),(s6Step356EntryGvRow,194)] [s6Step356EntryFvFresh,s6Step356EntryGvFresh] [s6Step356EntryFvOut,s6Step356EntryGvOut]
    (growRow 777 s6Step356EntryGFresh) ((growRow 776 s6Step356EntryFvFresh ++ (growRow 775 s6Step356EntryGvFresh ++ []))) s6Step356EntryG_Incoming s6Step356EntryG_checked h2 s6Step356EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step356EntryFBefore s6Step356EntryFAfter s6Step356EntryGvAfter
    s6Step356EntryFRow s6Step356EntryFOut 93 s6Step356EntryFFresh [(s6Step356EntryGRow,93),(s6Step356EntryFvRow,194),(s6Step356EntryGvRow,194)] [s6Step356EntryGFresh,s6Step356EntryFvFresh,s6Step356EntryGvFresh] [s6Step356EntryGOut,s6Step356EntryFvOut,s6Step356EntryGvOut]
    (growRow 795 s6Step356EntryFFresh) ((growRow 777 s6Step356EntryGFresh ++ (growRow 776 s6Step356EntryFvFresh ++ (growRow 775 s6Step356EntryGvFresh ++ [])))) s6Step356EntryF_Incoming s6Step356EntryF_checked h1 s6Step356EntryF_Outgoing
  exact h0

private theorem s6Step356EntryBank_checked : compileHmrBankResizeLog .entry s6Step356EntryFBefore ⟨s6Step356EntryFRow,s6Step356EntryGRow,s6Step356EntryFvRow,s6Step356EntryGvRow⟩ ⟨93,93,194,194⟩ [s6Step356EntryFFresh,s6Step356EntryGFresh,s6Step356EntryFvFresh,s6Step356EntryGvFresh]=
    some (s6Step356EntryGvAfter,⟨s6Step356EntryFOut,s6Step356EntryGOut,s6Step356EntryFvOut,s6Step356EntryGvOut⟩,(growRow 795 s6Step356EntryFFresh ++ (growRow 777 s6Step356EntryGFresh ++ (growRow 776 s6Step356EntryFvFresh ++ (growRow 775 s6Step356EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step356EntryBank_rows]
  rfl

private def s6Step356ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356ExitFBefore : Arena := s6Step356ExitGAfter

private def s6Step356ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 881],795⟩

private def s6Step356ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩

private def s6Step356ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 778],777⟩

private def s6Step356ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 858],775⟩

private theorem s6Step356ExitBank_incomingDistinct : ([s6Step356ExitGRow,s6Step356ExitFRow,s6Step356ExitFvRow,s6Step356ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356ExitF_Incoming : rowsOwned s6Step356ExitFBefore [s6Step356ExitFRow,s6Step356ExitFvRow,s6Step356ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step356ExitGRow,s6Step356ExitFRow,s6Step356ExitFvRow,s6Step356ExitGvRow] 1 s6Step356ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step356ExitFBefore (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step356ExitBank_outgoingOwned : rowsOwned s6Step356ExitGvAfter [s6Step356ExitGOut,s6Step356ExitFOut,s6Step356ExitFvOut,s6Step356ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step356ExitGvAfter (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step356ExitF_Outgoing : rowsOwned s6Step356ExitGvAfter [s6Step356ExitFOut,s6Step356ExitFvOut,s6Step356ExitGvOut] :=
  hmrRows_owned_drop s6Step356ExitGvAfter [s6Step356ExitGOut,s6Step356ExitFOut,s6Step356ExitFvOut,s6Step356ExitGvOut] 1 s6Step356ExitBank_outgoingOwned

private theorem s6Step356ExitF_distinct : (s6Step356ExitFRow.sign::s6Step356ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356ExitF_owned : (s6Step356ExitFRow.sign::s6Step356ExitFRow.payload).toFinset⊆s6Step356ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step356ExitFBefore (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356ExitF_retired : s6Step356ExitFBefore.retireSet s6Step356ExitFExtra.toFinset=s6Step356ExitFAfter := by
  unfold Arena.retireSet s6Step356ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step356ExitFBefore,s6Step356ExitGAfter,s6Step356ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step356ExitF_checked : planRowResizeLog s6Step356ExitFBefore s6Step356ExitFRow 93 []=
    some (s6Step356ExitFAfter,s6Step356ExitFOut,shrinkRow 795 s6Step356ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step356ExitFBefore s6Step356ExitFRow 93 s6Step356ExitF_distinct s6Step356ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step356ExitFRow.payload.take 93) s6Step356ExitFRow.sign=s6Step356ExitFOut := by decide +kernel
  have hi : s6Step356ExitFRow.payload.drop 93=s6Step356ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step356ExitF_retired] at result
  exact result

private def s6Step356ExitFvAfter : Arena := s6Step356ExitFAfter

private def s6Step356ExitFvBefore : Arena := s6Step356ExitFAfter

private theorem s6Step356ExitFv_Incoming : rowsOwned s6Step356ExitFvBefore [s6Step356ExitFvRow,s6Step356ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step356ExitGRow,s6Step356ExitFRow,s6Step356ExitFvRow,s6Step356ExitGvRow] 2 s6Step356ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step356ExitFvBefore (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step356ExitFv_Outgoing : rowsOwned s6Step356ExitGvAfter [s6Step356ExitFvOut,s6Step356ExitGvOut] :=
  hmrRows_owned_drop s6Step356ExitGvAfter [s6Step356ExitGOut,s6Step356ExitFOut,s6Step356ExitFvOut,s6Step356ExitGvOut] 2 s6Step356ExitBank_outgoingOwned

private theorem s6Step356ExitFv_distinct : (s6Step356ExitFvRow.sign::s6Step356ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356ExitFv_owned : (s6Step356ExitFvRow.sign::s6Step356ExitFvRow.payload).toFinset⊆s6Step356ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step356ExitFvBefore (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356ExitFv_reserved : s6Step356ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step356ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step356ExitFv_checked : planRowResizeLog s6Step356ExitFvBefore s6Step356ExitFvRow 195 []=
    some (s6Step356ExitFvAfter,s6Step356ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step356ExitFvBefore s6Step356ExitFvAfter s6Step356ExitFvRow 195 []
    s6Step356ExitFv_distinct s6Step356ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step356ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step356ExitFvRow.payload++[]) s6Step356ExitFvRow.sign=s6Step356ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step356ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step356ExitG_Incoming : rowsOwned s6Step356ExitGBefore [s6Step356ExitGRow,s6Step356ExitFRow,s6Step356ExitFvRow,s6Step356ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step356ExitGRow,s6Step356ExitFRow,s6Step356ExitFvRow,s6Step356ExitGvRow] 0 s6Step356ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step356ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step356ExitG_Outgoing : rowsOwned s6Step356ExitGvAfter [s6Step356ExitGOut,s6Step356ExitFOut,s6Step356ExitFvOut,s6Step356ExitGvOut] :=
  hmrRows_owned_drop s6Step356ExitGvAfter [s6Step356ExitGOut,s6Step356ExitFOut,s6Step356ExitFvOut,s6Step356ExitGvOut] 0 s6Step356ExitBank_outgoingOwned

private theorem s6Step356ExitG_distinct : (s6Step356ExitGRow.sign::s6Step356ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356ExitG_owned : (s6Step356ExitGRow.sign::s6Step356ExitGRow.payload).toFinset⊆s6Step356ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step356ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356ExitG_retired : s6Step356ExitGBefore.retireSet s6Step356ExitGExtra.toFinset=s6Step356ExitGAfter := by
  unfold Arena.retireSet s6Step356ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step356ExitGBefore,s6Step356ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step356ExitG_checked : planRowResizeLog s6Step356ExitGBefore s6Step356ExitGRow 92 []=
    some (s6Step356ExitGAfter,s6Step356ExitGOut,shrinkRow 777 s6Step356ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step356ExitGBefore s6Step356ExitGRow 92 s6Step356ExitG_distinct s6Step356ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step356ExitGRow.payload.take 92) s6Step356ExitGRow.sign=s6Step356ExitGOut := by decide +kernel
  have hi : s6Step356ExitGRow.payload.drop 92=s6Step356ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step356ExitG_retired] at result
  exact result

private def s6Step356ExitGvBefore : Arena := s6Step356ExitFAfter

private theorem s6Step356ExitGv_Incoming : rowsOwned s6Step356ExitGvBefore [s6Step356ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step356ExitGRow,s6Step356ExitFRow,s6Step356ExitFvRow,s6Step356ExitGvRow] 3 s6Step356ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step356ExitGvBefore (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step356ExitGv_Outgoing : rowsOwned s6Step356ExitGvAfter [s6Step356ExitGvOut] :=
  hmrRows_owned_drop s6Step356ExitGvAfter [s6Step356ExitGOut,s6Step356ExitFOut,s6Step356ExitFvOut,s6Step356ExitGvOut] 3 s6Step356ExitBank_outgoingOwned

private theorem s6Step356ExitGv_distinct : (s6Step356ExitGvRow.sign::s6Step356ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356ExitGv_owned : (s6Step356ExitGvRow.sign::s6Step356ExitGvRow.payload).toFinset⊆s6Step356ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step356ExitGvBefore (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356ExitGv_retired : s6Step356ExitGvBefore.retireSet s6Step356ExitGvExtra.toFinset=s6Step356ExitGvAfter := by
  unfold Arena.retireSet s6Step356ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step356ExitGvBefore,s6Step356ExitFAfter,s6Step356ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step356ExitGv_checked : planRowResizeLog s6Step356ExitGvBefore s6Step356ExitGvRow 194 []=
    some (s6Step356ExitGvAfter,s6Step356ExitGvOut,shrinkRow 775 s6Step356ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step356ExitGvBefore s6Step356ExitGvRow 194 s6Step356ExitGv_distinct s6Step356ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step356ExitGvRow.payload.take 194) s6Step356ExitGvRow.sign=s6Step356ExitGvOut := by decide +kernel
  have hi : s6Step356ExitGvRow.payload.drop 194=s6Step356ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step356ExitGv_retired] at result
  exact result

private theorem s6Step356ExitBank_rows : planWindowRowsLog s6Step356ExitGBefore [(s6Step356ExitGRow,92),(s6Step356ExitFRow,93),(s6Step356ExitFvRow,195),(s6Step356ExitGvRow,194)] [[],[],[],[]]=
    some (s6Step356ExitGvAfter,[s6Step356ExitGOut,s6Step356ExitFOut,s6Step356ExitFvOut,s6Step356ExitGvOut],(shrinkRow 777 s6Step356ExitGExtra ++ (shrinkRow 795 s6Step356ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step356ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step356ExitGvAfter [] []=some (s6Step356ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step356ExitGvBefore s6Step356ExitGvAfter s6Step356ExitGvAfter
    s6Step356ExitGvRow s6Step356ExitGvOut 194 [] [] [] []
    (shrinkRow 775 s6Step356ExitGvExtra) ([]) s6Step356ExitGv_Incoming s6Step356ExitGv_checked h4 s6Step356ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step356ExitFvBefore s6Step356ExitFvAfter s6Step356ExitGvAfter
    s6Step356ExitFvRow s6Step356ExitFvOut 195 [] [(s6Step356ExitGvRow,194)] [[]] [s6Step356ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step356ExitGvExtra ++ [])) s6Step356ExitFv_Incoming s6Step356ExitFv_checked h3 s6Step356ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step356ExitFBefore s6Step356ExitFAfter s6Step356ExitGvAfter
    s6Step356ExitFRow s6Step356ExitFOut 93 [] [(s6Step356ExitFvRow,195),(s6Step356ExitGvRow,194)] [[],[]] [s6Step356ExitFvOut,s6Step356ExitGvOut]
    (shrinkRow 795 s6Step356ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step356ExitGvExtra ++ []))) s6Step356ExitF_Incoming s6Step356ExitF_checked h2 s6Step356ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step356ExitGBefore s6Step356ExitGAfter s6Step356ExitGvAfter
    s6Step356ExitGRow s6Step356ExitGOut 92 [] [(s6Step356ExitFRow,93),(s6Step356ExitFvRow,195),(s6Step356ExitGvRow,194)] [[],[],[]] [s6Step356ExitFOut,s6Step356ExitFvOut,s6Step356ExitGvOut]
    (shrinkRow 777 s6Step356ExitGExtra) ((shrinkRow 795 s6Step356ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step356ExitGvExtra ++ [])))) s6Step356ExitG_Incoming s6Step356ExitG_checked h1 s6Step356ExitG_Outgoing
  exact h0

private theorem s6Step356ExitBank_checked : compileHmrBankResizeLog .exit s6Step356ExitGBefore ⟨s6Step356ExitFRow,s6Step356ExitGRow,s6Step356ExitFvRow,s6Step356ExitGvRow⟩ ⟨93,92,195,194⟩ [[],[],[],[]]=
    some (s6Step356ExitGvAfter,⟨s6Step356ExitFOut,s6Step356ExitGOut,s6Step356ExitFvOut,s6Step356ExitGvOut⟩,(shrinkRow 777 s6Step356ExitGExtra ++ (shrinkRow 795 s6Step356ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step356ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step356ExitBank_rows]
  rfl

private theorem s6Step356Add0_apart : Disjoint s6Step356Add0Arena.live s6Step356Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step356Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356Add0_card : s6Step356Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step356Add0_borrowed : s6Step356Add0Arena.checkBorrow (hmrHybridCount s6Step356Add0Arena s6Step356Add0B.length) s6Step356Add0Work=some s6Step356Add0During := by
  have len : s6Step356Add0Work.length=hmrHybridCount s6Step356Add0Arena s6Step356Add0B.length := by
    rw [hmrHybridCount,s6Step356Add0_card]
    decide +kernel
  have nd : s6Step356Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step356Add0Arena s6Step356Add0During s6Step356Add0Work.toFinset s6Step356Add0_bounded s6Step356Add0_apart rfl

private theorem s6Step356Add0_distinct : (875::892::906::(s6Step356Add0A++s6Step356Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356Add0_owned : (875::892::906::(s6Step356Add0A++s6Step356Add0B)).toFinset⊆s6Step356Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step356Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356Add0_checked : compileHmrHybridCinLog s6Step356Add0Arena 892 875 906 s6Step356Add0A s6Step356Add0B s6Step356Add0Work=some s6Step356Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step356Add0Arena s6Step356Add0During 892 875 906 s6Step356Add0A s6Step356Add0B s6Step356Add0Work
    (by decide +kernel) (by decide +kernel) s6Step356Add0_distinct
    (fun q hq => s6Step356Add0_owned (List.mem_toFinset.mpr hq)) s6Step356Add0_borrowed

private theorem s6Step356Add1_apart : Disjoint s6Step356Add1Arena.live s6Step356Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step356Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356Add1_card : s6Step356Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step356Add1_borrowed : s6Step356Add1Arena.checkBorrow (hmrHybridCount s6Step356Add1Arena s6Step356Add1B.length) s6Step356Add1Work=some s6Step356Add1During := by
  have len : s6Step356Add1Work.length=hmrHybridCount s6Step356Add1Arena s6Step356Add1B.length := by
    rw [hmrHybridCount,s6Step356Add1_card]
    decide +kernel
  have nd : s6Step356Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step356Add1Arena s6Step356Add1During s6Step356Add1Work.toFinset s6Step356Add1_bounded s6Step356Add1_apart rfl

private theorem s6Step356Add1_distinct : (875::892::906::(s6Step356Add1A++s6Step356Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356Add1_owned : (875::892::906::(s6Step356Add1A++s6Step356Add1B)).toFinset⊆s6Step356Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step356Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356Add1_checked : compileHmrHybridCinLog s6Step356Add1Arena 892 875 906 s6Step356Add1A s6Step356Add1B s6Step356Add1Work=some s6Step356Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step356Add1Arena s6Step356Add1During 892 875 906 s6Step356Add1A s6Step356Add1B s6Step356Add1Work
    (by decide +kernel) (by decide +kernel) s6Step356Add1_distinct
    (fun q hq => s6Step356Add1_owned (List.mem_toFinset.mpr hq)) s6Step356Add1_borrowed

private theorem s6Step356F4_apart : Disjoint (s6Step356Add0A++s6Step356Add0B).toFinset (s6Step356Add1A++s6Step356Add1B).toFinset := by
  have nd : ((s6Step356Add0A++s6Step356Add0B)++(s6Step356Add1A++s6Step356Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step356F4_carry : s6Step356F4FlagArena.checkBorrow 1 [906]=some s6Step356Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step356F4FlagArena,s6Step356HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step356F4FlagArena,s6Step356HeadFvAfter,s6Step356Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step356F4_distinct : (789::892::875::906::((s6Step356Add0A++s6Step356Add1A)++(s6Step356Add0B++s6Step356Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356F4_flag : s6Step356HeadFvAfter.checkBorrow 1 [875]=some s6Step356F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step356HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step356F4_owned : (789::892::((s6Step356Add0A++s6Step356Add1A)++(s6Step356Add0B++s6Step356Add1B))).toFinset⊆s6Step356HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step356HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356F4_checked : compileHmrHybridF4Log s6Step356HeadFvAfter 789 892 s6Step356Add0A s6Step356Add0B s6Step356Add1A s6Step356Add1B [875] [906] s6Step356Add0Work s6Step356Add1Work=some s6Step356F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step356HeadFvAfter s6Step356F4FlagArena s6Step356Add0Arena s6Step356Add0During s6Step356Add1During 789 892
    s6Step356Add0A s6Step356Add0B s6Step356Add1A s6Step356Add1B [875] [906] s6Step356Add0Work s6Step356Add1Work
    (fun q hq => s6Step356F4_owned (List.mem_toFinset.mpr hq)) s6Step356F4_flag s6Step356F4_carry
    s6Step356F4_distinct s6Step356F4_apart s6Step356Add0_checked s6Step356Add1_checked

private theorem s6Step356Front_branch : s6Step356FrontSigmaArena.checkBorrow 1 [892]=some s6Step356HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step356FrontSigmaArena,s6Step356EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step356FrontSigmaArena,s6Step356EntryGvAfter,s6Step356HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step356Front_entry : HmrFrontEntryValid s6Step356EntryFBefore s6Step356FrontBank 93 194 ⟨93,92,195,194⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step356FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step356EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step356EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step356FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step356Front_sigma : s6Step356EntryGvAfter.checkBorrow 1 [789]=some s6Step356FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step356EntryGvAfter,arenaWires]
  · rfl

private def s6Step356HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356HeadFBefore : Arena := s6Step356HeadGAfter

private def s6Step356HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348],795⟩

private def s6Step356HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817],776⟩

private def s6Step356HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92],777⟩

private def s6Step356HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879],775⟩

private theorem s6Step356HeadBank_incomingDistinct : ([s6Step356HeadGRow,s6Step356HeadFRow,s6Step356HeadGvRow,s6Step356HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356HeadF_Incoming : rowsOwned s6Step356HeadFBefore [s6Step356HeadFRow,s6Step356HeadGvRow,s6Step356HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step356HeadGRow,s6Step356HeadFRow,s6Step356HeadGvRow,s6Step356HeadFvRow] 1 s6Step356HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step356HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step356HeadBank_outgoingOwned : rowsOwned s6Step356HeadFvAfter [s6Step356HeadGOut,s6Step356HeadFOut,s6Step356HeadGvOut,s6Step356HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step356HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step356HeadF_Outgoing : rowsOwned s6Step356HeadFvAfter [s6Step356HeadFOut,s6Step356HeadGvOut,s6Step356HeadFvOut] :=
  hmrRows_owned_drop s6Step356HeadFvAfter [s6Step356HeadGOut,s6Step356HeadFOut,s6Step356HeadGvOut,s6Step356HeadFvOut] 1 s6Step356HeadBank_outgoingOwned

private theorem s6Step356HeadF_distinct : (s6Step356HeadFRow.sign::s6Step356HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356HeadF_owned : (s6Step356HeadFRow.sign::s6Step356HeadFRow.payload).toFinset⊆s6Step356HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step356HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356HeadF_reserved : s6Step356HeadFBefore.reserve s6Step356HeadFFresh.toFinset=some s6Step356HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step356HeadFFresh,arenaWires]
  · norm_num [s6Step356HeadFBefore,s6Step356HeadGAfter,s6Step356HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step356HeadFAfter,s6Step356HeadFBefore,s6Step356HeadGAfter,s6Step356HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step356HeadF_checked : planRowResizeLog s6Step356HeadFBefore s6Step356HeadFRow 94 s6Step356HeadFFresh=
    some (s6Step356HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 881],795⟩,growRow 795 s6Step356HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step356HeadFBefore s6Step356HeadFAfter s6Step356HeadFRow 94 s6Step356HeadFFresh
    s6Step356HeadF_distinct s6Step356HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step356HeadF_reserved
  have rowEq : WindowRow.mk (s6Step356HeadFRow.payload++s6Step356HeadFFresh) s6Step356HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 881],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step356HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step356HeadFvBefore : Arena := s6Step356HeadGvAfter

private theorem s6Step356HeadFv_Incoming : rowsOwned s6Step356HeadFvBefore [s6Step356HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step356HeadGRow,s6Step356HeadFRow,s6Step356HeadGvRow,s6Step356HeadFvRow] 3 s6Step356HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step356HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step356HeadFv_Outgoing : rowsOwned s6Step356HeadFvAfter [s6Step356HeadFvOut] :=
  hmrRows_owned_drop s6Step356HeadFvAfter [s6Step356HeadGOut,s6Step356HeadFOut,s6Step356HeadGvOut,s6Step356HeadFvOut] 3 s6Step356HeadBank_outgoingOwned

private theorem s6Step356HeadFv_distinct : (s6Step356HeadFvRow.sign::s6Step356HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356HeadFv_owned : (s6Step356HeadFvRow.sign::s6Step356HeadFvRow.payload).toFinset⊆s6Step356HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step356HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356HeadFv_reserved : s6Step356HeadFvBefore.reserve s6Step356HeadFvFresh.toFinset=some s6Step356HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step356HeadFvFresh,arenaWires]
  · norm_num [s6Step356HeadFvBefore,s6Step356HeadGvAfter,s6Step356HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step356HeadFvAfter,s6Step356HeadFvBefore,s6Step356HeadGvAfter,s6Step356HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step356HeadFv_checked : planRowResizeLog s6Step356HeadFvBefore s6Step356HeadFvRow 195 s6Step356HeadFvFresh=
    some (s6Step356HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩,growRow 776 s6Step356HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step356HeadFvBefore s6Step356HeadFvAfter s6Step356HeadFvRow 195 s6Step356HeadFvFresh
    s6Step356HeadFv_distinct s6Step356HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step356HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step356HeadFvRow.payload++s6Step356HeadFvFresh) s6Step356HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step356HeadG_Incoming : rowsOwned s6Step356HeadGBefore [s6Step356HeadGRow,s6Step356HeadFRow,s6Step356HeadGvRow,s6Step356HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step356HeadGRow,s6Step356HeadFRow,s6Step356HeadGvRow,s6Step356HeadFvRow] 0 s6Step356HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step356HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step356HeadG_Outgoing : rowsOwned s6Step356HeadFvAfter [s6Step356HeadGOut,s6Step356HeadFOut,s6Step356HeadGvOut,s6Step356HeadFvOut] :=
  hmrRows_owned_drop s6Step356HeadFvAfter [s6Step356HeadGOut,s6Step356HeadFOut,s6Step356HeadGvOut,s6Step356HeadFvOut] 0 s6Step356HeadBank_outgoingOwned

private theorem s6Step356HeadG_distinct : (s6Step356HeadGRow.sign::s6Step356HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356HeadG_owned : (s6Step356HeadGRow.sign::s6Step356HeadGRow.payload).toFinset⊆s6Step356HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step356HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356HeadG_reserved : s6Step356HeadGBefore.reserve s6Step356HeadGFresh.toFinset=some s6Step356HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step356HeadGFresh,arenaWires]
  · norm_num [s6Step356HeadGBefore,s6Step356HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step356HeadGAfter,s6Step356HeadGBefore,s6Step356HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step356HeadG_checked : planRowResizeLog s6Step356HeadGBefore s6Step356HeadGRow 94 s6Step356HeadGFresh=
    some (s6Step356HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 778],777⟩,growRow 777 s6Step356HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step356HeadGBefore s6Step356HeadGAfter s6Step356HeadGRow 94 s6Step356HeadGFresh
    s6Step356HeadG_distinct s6Step356HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step356HeadG_reserved
  have rowEq : WindowRow.mk (s6Step356HeadGRow.payload++s6Step356HeadGFresh) s6Step356HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 778],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step356HeadGvBefore : Arena := s6Step356HeadFAfter

private theorem s6Step356HeadGv_Incoming : rowsOwned s6Step356HeadGvBefore [s6Step356HeadGvRow,s6Step356HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step356HeadGRow,s6Step356HeadFRow,s6Step356HeadGvRow,s6Step356HeadFvRow] 2 s6Step356HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step356HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step356HeadGv_Outgoing : rowsOwned s6Step356HeadFvAfter [s6Step356HeadGvOut,s6Step356HeadFvOut] :=
  hmrRows_owned_drop s6Step356HeadFvAfter [s6Step356HeadGOut,s6Step356HeadFOut,s6Step356HeadGvOut,s6Step356HeadFvOut] 2 s6Step356HeadBank_outgoingOwned

private theorem s6Step356HeadGv_distinct : (s6Step356HeadGvRow.sign::s6Step356HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step356HeadGv_owned : (s6Step356HeadGvRow.sign::s6Step356HeadGvRow.payload).toFinset⊆s6Step356HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step356HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step356HeadGv_reserved : s6Step356HeadGvBefore.reserve s6Step356HeadGvFresh.toFinset=some s6Step356HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step356HeadGvFresh,arenaWires]
  · norm_num [s6Step356HeadGvBefore,s6Step356HeadFAfter,s6Step356HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step356HeadGvAfter,s6Step356HeadGvBefore,s6Step356HeadFAfter,s6Step356HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step356HeadGv_checked : planRowResizeLog s6Step356HeadGvBefore s6Step356HeadGvRow 195 s6Step356HeadGvFresh=
    some (s6Step356HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 858],775⟩,growRow 775 s6Step356HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step356HeadGvBefore s6Step356HeadGvAfter s6Step356HeadGvRow 195 s6Step356HeadGvFresh
    s6Step356HeadGv_distinct s6Step356HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step356HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step356HeadGvRow.payload++s6Step356HeadGvFresh) s6Step356HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 858],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step356HeadBank_rows : planWindowRowsLog s6Step356HeadGBefore [(s6Step356HeadGRow,94),(s6Step356HeadFRow,94),(s6Step356HeadGvRow,195),(s6Step356HeadFvRow,195)] [s6Step356HeadGFresh,s6Step356HeadFFresh,s6Step356HeadGvFresh,s6Step356HeadFvFresh]=
    some (s6Step356HeadFvAfter,[s6Step356HeadGOut,s6Step356HeadFOut,s6Step356HeadGvOut,s6Step356HeadFvOut],(growRow 777 s6Step356HeadGFresh ++ (growRow 795 s6Step356HeadFFresh ++ (growRow 775 s6Step356HeadGvFresh ++ (growRow 776 s6Step356HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step356HeadFvAfter [] []=some (s6Step356HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step356HeadFvBefore s6Step356HeadFvAfter s6Step356HeadFvAfter
    s6Step356HeadFvRow s6Step356HeadFvOut 195 s6Step356HeadFvFresh [] [] []
    (growRow 776 s6Step356HeadFvFresh) ([]) s6Step356HeadFv_Incoming s6Step356HeadFv_checked h4 s6Step356HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step356HeadGvBefore s6Step356HeadGvAfter s6Step356HeadFvAfter
    s6Step356HeadGvRow s6Step356HeadGvOut 195 s6Step356HeadGvFresh [(s6Step356HeadFvRow,195)] [s6Step356HeadFvFresh] [s6Step356HeadFvOut]
    (growRow 775 s6Step356HeadGvFresh) ((growRow 776 s6Step356HeadFvFresh ++ [])) s6Step356HeadGv_Incoming s6Step356HeadGv_checked h3 s6Step356HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step356HeadFBefore s6Step356HeadFAfter s6Step356HeadFvAfter
    s6Step356HeadFRow s6Step356HeadFOut 94 s6Step356HeadFFresh [(s6Step356HeadGvRow,195),(s6Step356HeadFvRow,195)] [s6Step356HeadGvFresh,s6Step356HeadFvFresh] [s6Step356HeadGvOut,s6Step356HeadFvOut]
    (growRow 795 s6Step356HeadFFresh) ((growRow 775 s6Step356HeadGvFresh ++ (growRow 776 s6Step356HeadFvFresh ++ []))) s6Step356HeadF_Incoming s6Step356HeadF_checked h2 s6Step356HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step356HeadGBefore s6Step356HeadGAfter s6Step356HeadFvAfter
    s6Step356HeadGRow s6Step356HeadGOut 94 s6Step356HeadGFresh [(s6Step356HeadFRow,94),(s6Step356HeadGvRow,195),(s6Step356HeadFvRow,195)] [s6Step356HeadFFresh,s6Step356HeadGvFresh,s6Step356HeadFvFresh] [s6Step356HeadFOut,s6Step356HeadGvOut,s6Step356HeadFvOut]
    (growRow 777 s6Step356HeadGFresh) ((growRow 795 s6Step356HeadFFresh ++ (growRow 775 s6Step356HeadGvFresh ++ (growRow 776 s6Step356HeadFvFresh ++ [])))) s6Step356HeadG_Incoming s6Step356HeadG_checked h1 s6Step356HeadG_Outgoing
  exact h0

private theorem s6Step356HeadBank_checked : compileHmrBankResizeLog .headroom s6Step356HeadGBefore ⟨s6Step356HeadFRow,s6Step356HeadGRow,s6Step356HeadFvRow,s6Step356HeadGvRow⟩ ⟨94,94,195,195⟩ [s6Step356HeadGFresh,s6Step356HeadFFresh,s6Step356HeadGvFresh,s6Step356HeadFvFresh]=
    some (s6Step356HeadFvAfter,⟨s6Step356HeadFOut,s6Step356HeadGOut,s6Step356HeadFvOut,s6Step356HeadGvOut⟩,(growRow 777 s6Step356HeadGFresh ++ (growRow 795 s6Step356HeadFFresh ++ (growRow 775 s6Step356HeadGvFresh ++ (growRow 776 s6Step356HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step356HeadBank_rows]
  rfl

private theorem s6Step356Front_checked : compileHmrSourceFrontLog s6Step356EntryFBefore s6Step356FrontBank 93 194 ⟨93,92,195,194⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step356FrontLog=some s6Step356FrontPlan := by
  have pairEq : s6Step356FrontPair=⟨s6Step356HeadFRow,s6Step356HeadGRow,s6Step356HeadFvRow,s6Step356HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step356FrontHead=⟨s6Step356ExitFRow,s6Step356ExitGRow,s6Step356ExitFvRow,s6Step356ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step356Add0A=s6Step356FrontHead.f.wires := by decide +kernel
  have gEq : s6Step356Add0B=s6Step356FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step356Add1A=s6Step356FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step356Add1B=s6Step356FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step356EntryFBefore s6Step356FrontBank 93 194 ⟨93,92,195,194⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step356FrontLog s6Step356FrontPlan
  · exact s6Step356Front_entry
  · exact s6Step356EntryBank_checked
  · exact s6Step356Front_sigma
  · rfl
  · exact s6Step356Front_branch
  · rfl
  · simpa only [s6Step356FrontPlan,pairEq] using s6Step356HeadBank_checked
  · simpa only [s6Step356FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step356F4_checked
  · exact s6Step356Counter_checked
  · rfl
  · simpa only [s6Step356FrontPlan,headEq] using s6Step356ExitBank_checked

private theorem s6Step356Complete_explicit_checked : compileHmrEarlyStepLog s6Step356EntryFBefore s6Step356FrontBank 93 194 ⟨93,92,195,194⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step356CompleteLog=some s6Step356CompletePlan := by
  let Q := s6Step356EarlyControlPlan
  have hq := s6Step356EarlyControl_plan_checked
  have fv1 : s6Step356CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step356CompleteOut.fv.payload[2]?.getD s6Step356CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step356CompleteOut.fv.payload[3]?.getD s6Step356CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step356CompleteOut.fv.payload[4]?.getD s6Step356CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step356EntryFBefore s6Step356EarlyControlArena s6Step356FrontBank 93 194 ⟨93,92,195,194⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step356CompleteLog s6Step356FrontPlan Q
    s6Step356Front_checked s6Step356Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step356Complete_owned s6Step356Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step356EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 s6Step356CompleteOut.fv.second (s6Step356CompleteOut.fv.payload[2]?.getD s6Step356CompleteOut.fv.sign) (s6Step356CompleteOut.fv.payload[3]?.getD s6Step356CompleteOut.fv.sign) (s6Step356CompleteOut.fv.payload[4]?.getD s6Step356CompleteOut.fv.sign) 892 60 s6Step356EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep356Arena : Arena := s6Step356EntryFBefore
def s6PrivateStep356Bank : WindowBank := s6Step356FrontBank
def s6PrivateStep356Spec : HmrSourceWalkStepLog := ⟨93,194,⟨93,92,195,194⟩,60,.early s6Step356CompleteLog⟩
def s6PrivateStep356Plan : HmrSourceStepPlan := .early s6Step356CompletePlan
theorem s6PrivateStep356_source : s6PrivateStep356Spec=s6ObservedLogs352[4] := rfl
theorem s6PrivateStep356_checked : compileHmrSourceStepLog s6PrivateStep356Arena s6PrivateStep356Bank
    s6PrivateStep356Spec.fgWidth s6PrivateStep356Spec.vWidth s6PrivateStep356Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 356 s6PrivateStep356Spec.need none s6PrivateStep356Spec.log=some s6PrivateStep356Plan := by
  change compileHmrSourceStepLog s6Step356EntryFBefore s6Step356FrontBank 93 194 ⟨93,92,195,194⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 356 60 none (.early s6Step356CompleteLog)=some (.early s6Step356CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 356<498)]
  rw [s6Step356Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
