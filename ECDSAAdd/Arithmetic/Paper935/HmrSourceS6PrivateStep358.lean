import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep356
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

private def s6Step358CompleteMoves : List (Wire × Wire) := [(825,91)]

private def s6Step358EarlyControlLog : HmrEarlyControlLog := ⟨[825, 906, 778, 875, 848],[892],[881],[805, 802, 843, 877, 792, 816],[]⟩

private def s6Step358FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[848], [875], [906], [778]],[[], [], [], []]⟩,[858],[876],[892],[881],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[892, 881, 805, 802]⟩

private def s6Step358CompleteLog : HmrEarlyStepLog := ⟨s6Step358FrontLog,s6Step358CompleteMoves,s6Step358EarlyControlLog⟩

private def s6Step358ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩

private def s6Step358ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩

private def s6Step358ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],777⟩

private def s6Step358ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩

private def s6Step358FrontOut : WindowBank := ⟨s6Step358ExitFOut,s6Step358ExitGOut,s6Step358ExitFvOut,s6Step358ExitGvOut⟩

private def s6Step358CompleteOut : WindowBank := s6Step358FrontOut.repacked s6Step358CompleteMoves

private def s6Step358EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step358EarlyControlPositiveArena,[892],s6Step358EarlyControlEqualityArena,[881],⟨⟨858,false⟩,[⟨⟨892,false⟩,881⟩]⟩⟩

private def s6Step358EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,825⟩,⟨⟨772,false⟩,906⟩,⟨⟨771,false⟩,778⟩,⟨⟨770,false⟩,875⟩,⟨⟨769,false⟩,848⟩]⟩

private def s6Step358EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step358EarlyControlZeroArena,s6Step358EarlyControlZeroPlan,s6Step358EarlyControlClassPlan,s6Step358EarlyControlFlagArena,s6Step358EarlyControlFittedArena,s6Step358EarlyControlHistoryArena,s6Step358EarlyControlSigmaArena,s6Step358EarlyControlOutputArena,s6Step358EarlyControlLog⟩

private def s6Step358CounterWork : List Wire := [892, 881, 805, 802]

private theorem s6Step358Counter_bounded : s6Step358CounterWork.toFinset⊆arenaWires := by norm_num [s6Step358CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step358HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358CounterDuring : Arena := ⟨s6Step358HeadFvAfter.live∪s6Step358CounterWork.toFinset,Finset.union_subset s6Step358HeadFvAfter.bounded s6Step358Counter_bounded⟩

private def s6Step358EntryFFresh : List Wire := []

private def s6Step358EntryFvFresh : List Wire := []

private def s6Step358EntryGFresh : List Wire := []

private def s6Step358EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358EntryGvAfter : Arena := s6Step358EntryFBefore

private def s6Step358EntryGvFresh : List Wire := []

private def s6Step358ExitFExtra : List Wire := [875]

private def s6Step358ExitFvExtra : List Wire := [778]

private def s6Step358ExitGExtra : List Wire := [91, 848]

private def s6Step358ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358ExitGvExtra : List Wire := [906]

private def s6Step358Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358Add0Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step358Add0_bounded : s6Step358Add0Work.toFinset⊆arenaWires := by
  have h : s6Step358Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step358Add0During : Arena := ⟨s6Step358Add0Arena.live∪s6Step358Add0Work.toFinset,Finset.union_subset s6Step358Add0Arena.bounded s6Step358Add0_bounded⟩

private def s6Step358Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358Add1Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step358Add1_bounded : s6Step358Add1Work.toFinset⊆arenaWires := by
  have h : s6Step358Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step358Add1During : Arena := ⟨s6Step358Add1Arena.live∪s6Step358Add1Work.toFinset,Finset.union_subset s6Step358Add1Arena.bounded s6Step358Add1_bounded⟩

private def s6Step358F4FlagArena : Arena := ⟨s6Step358HeadFvAfter.live∪{892},Finset.union_subset s6Step358HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step358F4Plan : HmrHybridF4Plan := ⟨s6Step358F4FlagArena,[892],s6Step358Add0Arena,[881],s6Step358Add0During,s6Step358Add0Work,s6Step358Add1During,s6Step358Add1Work⟩

private def s6Step358HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 875],795⟩

private def s6Step358HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 778],776⟩

private def s6Step358HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 848],777⟩

private def s6Step358HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 906],775⟩

private def s6Step358FrontHead : WindowBank := ⟨s6Step358HeadFOut,s6Step358HeadGOut,s6Step358HeadFvOut,s6Step358HeadGvOut⟩

private def s6Step358EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩

private def s6Step358EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩

private def s6Step358EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],777⟩

private def s6Step358EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩

private def s6Step358FrontPair : WindowBank := ⟨s6Step358EntryFOut,s6Step358EntryGOut,s6Step358EntryFvOut,s6Step358EntryGvOut⟩

private def s6Step358FrontSigmaArena : Arena := ⟨s6Step358EntryGvAfter.live∪{858},Finset.union_subset s6Step358EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step358HeadFFresh : List Wire := [875]

private def s6Step358HeadFvFresh : List Wire := [778]

private def s6Step358HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358HeadGFresh : List Wire := [848]

private def s6Step358HeadGvFresh : List Wire := [906]

private def s6Step358FrontPlan : HmrSourceFront := ⟨s6Step358EntryGvAfter,s6Step358FrontPair,(growRow 795 s6Step358EntryFFresh ++ (growRow 777 s6Step358EntryGFresh ++ (growRow 776 s6Step358EntryFvFresh ++ (growRow 775 s6Step358EntryGvFresh ++ [])))),s6Step358FrontSigmaArena,[858],s6Step358HeadGBefore,[876],
  s6Step358HeadFvAfter,s6Step358FrontHead,(growRow 777 s6Step358HeadGFresh ++ (growRow 795 s6Step358HeadFFresh ++ (growRow 775 s6Step358HeadGvFresh ++ (growRow 776 s6Step358HeadFvFresh ++ [])))),s6Step358F4Plan,s6Step358CounterDuring,s6Step358CounterWork,s6Step358ExitGvAfter,s6Step358FrontOut,(shrinkRow 777 s6Step358ExitGExtra ++ (shrinkRow 795 s6Step358ExitFExtra ++ (shrinkRow 776 s6Step358ExitFvExtra ++ (shrinkRow 775 s6Step358ExitGvExtra ++ []))))⟩

private def s6Step358CompletePlan : HmrEarlyStepPlan := ⟨s6Step358FrontPlan,s6Step358EarlyControlArena,s6Step358EarlyControlPlan,s6Step358CompleteMoves⟩

private theorem s6Step358Complete_apart : List.Disjoint (s6Step358CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [858, 876, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step358CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[858, 876, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step358Complete_owned : (s6Step358CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step358EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step358EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step358CompleteMoveArena : Arena := ⟨s6Step358ExitGvAfter.live∪{91},Finset.union_subset s6Step358ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step358Complete_repack : s6Step358ExitGvAfter.checkRepack s6Step358CompleteMoves=some s6Step358EarlyControlArena := by
  have owned : 825∈s6Step358ExitGvAfter.live := by norm_num [s6Step358ExitGvAfter,arenaWires]
  have reserve : s6Step358ExitGvAfter.reserve {91}=some s6Step358CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step358ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step358CompleteMoveArena.retireSet {825}=s6Step358EarlyControlArena := by
    unfold Arena.retireSet s6Step358EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step358CompleteMoveArena,s6Step358ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step358CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step358CompleteMoveArena.retireSet {825}).checkRepack []=some s6Step358EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step358EarlyControl_branchOwned : ([876] : List Wire).toFinset⊆s6Step358EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step358EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358EarlyControl_branch : compileHmrBranchRetirement s6Step358EarlyControlSigmaArena 876=some s6Step358EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step358EarlyControl_branchOwned
  · ext q
    simp [s6Step358EarlyControlOutputArena,s6Step358EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step358EarlyControl_classEqualityBorrow : s6Step358EarlyControlPositiveArena.checkBorrow (([858, 892] : List Wire).length-1) s6Step358EarlyControlLog.classWork=some s6Step358EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step358EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step358EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step358EarlyControlEqualityArena,s6Step358EarlyControlPositiveArena,s6Step358EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step358EarlyControl_classEqualityOwned : ([858, 892] : List Wire).toFinset⊆s6Step358EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step358EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358EarlyControl_classEquality : compileHmrEqualityLog s6Step358EarlyControlPositiveArena [858, 892] 0 s6Step358EarlyControlLog.classWork=some (s6Step358EarlyControlEqualityArena,s6Step358EarlyControlLog.classWork,s6Step358EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step358EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step358EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step358EarlyControl_classOwned : ([769, 848, 858] : List Wire).toFinset⊆s6Step358EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step358EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358EarlyControl_positiveBorrow : s6Step358EarlyControlZeroArena.checkBorrow (1) s6Step358EarlyControlLog.positiveWork=some s6Step358EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step358EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step358EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step358EarlyControlPositiveArena,s6Step358EarlyControlZeroArena,s6Step358EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step358EarlyControl_class : compileHmrSourceClassLog s6Step358EarlyControlZeroArena false 769 s6Step358EarlyControlZeroPlan.top 0 858 s6Step358EarlyControlLog.positiveWork s6Step358EarlyControlLog.classWork=some s6Step358EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step358EarlyControlClassPlan s6Step358EarlyControlZeroArena false 769 s6Step358EarlyControlZeroPlan.top 0 858
  constructor
  · decide +kernel
  · exact s6Step358EarlyControl_classOwned
  · exact s6Step358EarlyControl_positiveBorrow
  · exact s6Step358EarlyControl_classEquality

private theorem s6Step358EarlyControl_entryRecordOwned : ([876, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step358EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step358EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358EarlyControl_entrySigmaOwned : ([858, 254] : List Wire).toFinset⊆s6Step358EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step358EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358EarlyControl_fitBorrow : s6Step358EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step358EarlyControlLog.recordFresh=some s6Step358EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step358EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step358EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step358EarlyControlFittedArena,s6Step358EarlyControlFlagArena,s6Step358EarlyControlLog,arenaWires]

private theorem s6Step358EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step358EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step358EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358EarlyControl_fit : compileHmrRecordGrowLog s6Step358EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step358EarlyControlLog.recordFresh=some s6Step358EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step358EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step358EarlyControl_fitBorrow

private theorem s6Step358EarlyControl_flagsBorrow : s6Step358EarlyControlEqualityArena.checkBorrow (6) s6Step358EarlyControlLog.flagWork=some s6Step358EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step358EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step358EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step358EarlyControlFlagArena,s6Step358EarlyControlEqualityArena,s6Step358EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step358EarlyControl_flagsOwned : ([881, 253, 252, 251] : List Wire).toFinset⊆s6Step358EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step358EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358EarlyControl_flags : compileHmrFlagsLog s6Step358EarlyControlClassPlan.equalityArena s6Step358EarlyControlClassPlan.equality.top 253 252 251 s6Step358EarlyControlLog.flagWork=some s6Step358EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step358EarlyControl_flagsOwned⟩
  · exact s6Step358EarlyControl_flagsBorrow

private theorem s6Step358EarlyControl_historyBorrow : s6Step358EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step358EarlyControlLog.recordFresh=some s6Step358EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step358EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step358EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step358EarlyControlHistoryArena,s6Step358EarlyControlArena,s6Step358EarlyControlLog,arenaWires]

private theorem s6Step358EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step358EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step358EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358EarlyControl_history : compileHmrRecordGrowLog s6Step358EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step358EarlyControlLog.recordFresh=some s6Step358EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step358EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step358EarlyControl_historyBorrow

private theorem s6Step358EarlyControl_sigmaOwned : ([254, 858] : List Wire).toFinset⊆s6Step358EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step358EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358EarlyControl_sigmaReleaseOwned : ([858] : List Wire).toFinset⊆s6Step358EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step358EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358EarlyControl_sigmaRelease : s6Step358EarlyControlHistoryArena.release {858} (fun _ => false)=some s6Step358EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step358EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step358EarlyControlSigmaArena,s6Step358EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step358EarlyControl_sigma : compileHmrSigmaDropLog s6Step358EarlyControlHistoryArena false 0 0 254 858 []=some s6Step358EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step358EarlyControl_sigmaOwned⟩
  · exact s6Step358EarlyControl_sigmaRelease

private theorem s6Step358EarlyControl_zeroBorrow : s6Step358EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step358EarlyControlLog.zeroWork=some s6Step358EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step358EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step358EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step358EarlyControlZeroArena,s6Step358EarlyControlArena,s6Step358EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step358EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step358EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step358EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358EarlyControl_zero : compileHmrEqualityLog s6Step358EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step358EarlyControlLog.zeroWork=some (s6Step358EarlyControlZeroArena,s6Step358EarlyControlLog.zeroWork,s6Step358EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step358EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step358EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step358EarlyControl_logged : s6Step358EarlyControlPlan.Logged s6Step358EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 876 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step358EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step358EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step358EarlyControl_zero
  · exact s6Step358EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step358EarlyControl_flags
  · exact s6Step358EarlyControl_fit
  · exact s6Step358EarlyControl_history
  · exact s6Step358EarlyControl_sigma
  · exact s6Step358EarlyControl_branch

private theorem s6Step358EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step358EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 876 60 s6Step358EarlyControlLog=some s6Step358EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step358EarlyControlPlan s6Step358EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 876 60 s6Step358EarlyControl_logged

private def s6Step358EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩

private def s6Step358EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩

private def s6Step358EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],777⟩

private def s6Step358EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩

private def s6Step358FrontBank : WindowBank := ⟨s6Step358EntryFRow,s6Step358EntryGRow,s6Step358EntryFvRow,s6Step358EntryGvRow⟩

private def s6Step358Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 875, 795]

private def s6Step358Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 848, 777]

private def s6Step358Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 778, 776]

private def s6Step358Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 906, 775]

private theorem s6Step358Counter_apart : Disjoint s6Step358HeadFvAfter.live s6Step358CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step358HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358Counter_borrowed : s6Step358HeadFvAfter.checkBorrow 4 s6Step358CounterWork=some s6Step358CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step358HeadFvAfter s6Step358CounterDuring s6Step358CounterWork.toFinset s6Step358Counter_bounded s6Step358Counter_apart rfl

private theorem s6Step358Counter_owned : (858::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step358HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step358HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358Counter_checked : compileHmrCounterStepLog s6Step358HeadFvAfter true 858 [774, 773, 772, 771, 770, 769] s6Step358CounterWork=some s6Step358CounterDuring := by
  have owned : ∀q∈858::[774, 773, 772, 771, 770, 769],q∈s6Step358HeadFvAfter.live := fun q hq => s6Step358Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step358Counter_borrowed

private def s6Step358EntryFAfter : Arena := s6Step358EntryFBefore

private theorem s6Step358EntryBank_incomingDistinct : ([s6Step358EntryFRow,s6Step358EntryGRow,s6Step358EntryFvRow,s6Step358EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358EntryF_Incoming : rowsOwned s6Step358EntryFBefore [s6Step358EntryFRow,s6Step358EntryGRow,s6Step358EntryFvRow,s6Step358EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step358EntryFRow,s6Step358EntryGRow,s6Step358EntryFvRow,s6Step358EntryGvRow] 0 s6Step358EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step358EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step358EntryBank_outgoingOwned : rowsOwned s6Step358EntryGvAfter [s6Step358EntryFOut,s6Step358EntryGOut,s6Step358EntryFvOut,s6Step358EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step358EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step358EntryF_Outgoing : rowsOwned s6Step358EntryGvAfter [s6Step358EntryFOut,s6Step358EntryGOut,s6Step358EntryFvOut,s6Step358EntryGvOut] :=
  hmrRows_owned_drop s6Step358EntryGvAfter [s6Step358EntryFOut,s6Step358EntryGOut,s6Step358EntryFvOut,s6Step358EntryGvOut] 0 s6Step358EntryBank_outgoingOwned

private theorem s6Step358EntryF_distinct : (s6Step358EntryFRow.sign::s6Step358EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358EntryF_owned : (s6Step358EntryFRow.sign::s6Step358EntryFRow.payload).toFinset⊆s6Step358EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step358EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358EntryF_reserved : s6Step358EntryFBefore.reserve s6Step358EntryFFresh.toFinset=some s6Step358EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step358EntryFFresh,arenaWires]
  · norm_num [s6Step358EntryFBefore,s6Step358EntryFFresh,arenaWires]
  · simp only [s6Step358EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step358EntryF_checked : planRowResizeLog s6Step358EntryFBefore s6Step358EntryFRow 92 s6Step358EntryFFresh=
    some (s6Step358EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩,growRow 795 s6Step358EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step358EntryFBefore s6Step358EntryFAfter s6Step358EntryFRow 92 s6Step358EntryFFresh
    s6Step358EntryF_distinct s6Step358EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step358EntryF_reserved
  have rowEq : WindowRow.mk (s6Step358EntryFRow.payload++s6Step358EntryFFresh) s6Step358EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step358EntryFvAfter : Arena := s6Step358EntryFBefore

private def s6Step358EntryFvBefore : Arena := s6Step358EntryFBefore

private theorem s6Step358EntryFv_Incoming : rowsOwned s6Step358EntryFvBefore [s6Step358EntryFvRow,s6Step358EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step358EntryFRow,s6Step358EntryGRow,s6Step358EntryFvRow,s6Step358EntryGvRow] 2 s6Step358EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step358EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step358EntryFv_Outgoing : rowsOwned s6Step358EntryGvAfter [s6Step358EntryFvOut,s6Step358EntryGvOut] :=
  hmrRows_owned_drop s6Step358EntryGvAfter [s6Step358EntryFOut,s6Step358EntryGOut,s6Step358EntryFvOut,s6Step358EntryGvOut] 2 s6Step358EntryBank_outgoingOwned

private theorem s6Step358EntryFv_distinct : (s6Step358EntryFvRow.sign::s6Step358EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358EntryFv_owned : (s6Step358EntryFvRow.sign::s6Step358EntryFvRow.payload).toFinset⊆s6Step358EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step358EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358EntryFv_reserved : s6Step358EntryFvBefore.reserve s6Step358EntryFvFresh.toFinset=some s6Step358EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step358EntryFvFresh,arenaWires]
  · norm_num [s6Step358EntryFvBefore,s6Step358EntryFBefore,s6Step358EntryFvFresh,arenaWires]
  · simp only [s6Step358EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step358EntryFv_checked : planRowResizeLog s6Step358EntryFvBefore s6Step358EntryFvRow 195 s6Step358EntryFvFresh=
    some (s6Step358EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩,growRow 776 s6Step358EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step358EntryFvBefore s6Step358EntryFvAfter s6Step358EntryFvRow 195 s6Step358EntryFvFresh
    s6Step358EntryFv_distinct s6Step358EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step358EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step358EntryFvRow.payload++s6Step358EntryFvFresh) s6Step358EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step358EntryGAfter : Arena := s6Step358EntryFBefore

private def s6Step358EntryGBefore : Arena := s6Step358EntryFBefore

private theorem s6Step358EntryG_Incoming : rowsOwned s6Step358EntryGBefore [s6Step358EntryGRow,s6Step358EntryFvRow,s6Step358EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step358EntryFRow,s6Step358EntryGRow,s6Step358EntryFvRow,s6Step358EntryGvRow] 1 s6Step358EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step358EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step358EntryG_Outgoing : rowsOwned s6Step358EntryGvAfter [s6Step358EntryGOut,s6Step358EntryFvOut,s6Step358EntryGvOut] :=
  hmrRows_owned_drop s6Step358EntryGvAfter [s6Step358EntryFOut,s6Step358EntryGOut,s6Step358EntryFvOut,s6Step358EntryGvOut] 1 s6Step358EntryBank_outgoingOwned

private theorem s6Step358EntryG_distinct : (s6Step358EntryGRow.sign::s6Step358EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358EntryG_owned : (s6Step358EntryGRow.sign::s6Step358EntryGRow.payload).toFinset⊆s6Step358EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step358EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358EntryG_reserved : s6Step358EntryGBefore.reserve s6Step358EntryGFresh.toFinset=some s6Step358EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step358EntryGFresh,arenaWires]
  · norm_num [s6Step358EntryGBefore,s6Step358EntryFBefore,s6Step358EntryGFresh,arenaWires]
  · simp only [s6Step358EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step358EntryG_checked : planRowResizeLog s6Step358EntryGBefore s6Step358EntryGRow 92 s6Step358EntryGFresh=
    some (s6Step358EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],777⟩,growRow 777 s6Step358EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step358EntryGBefore s6Step358EntryGAfter s6Step358EntryGRow 92 s6Step358EntryGFresh
    s6Step358EntryG_distinct s6Step358EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step358EntryG_reserved
  have rowEq : WindowRow.mk (s6Step358EntryGRow.payload++s6Step358EntryGFresh) s6Step358EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step358EntryGvBefore : Arena := s6Step358EntryFBefore

private theorem s6Step358EntryGv_Incoming : rowsOwned s6Step358EntryGvBefore [s6Step358EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step358EntryFRow,s6Step358EntryGRow,s6Step358EntryFvRow,s6Step358EntryGvRow] 3 s6Step358EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step358EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step358EntryGv_Outgoing : rowsOwned s6Step358EntryGvAfter [s6Step358EntryGvOut] :=
  hmrRows_owned_drop s6Step358EntryGvAfter [s6Step358EntryFOut,s6Step358EntryGOut,s6Step358EntryFvOut,s6Step358EntryGvOut] 3 s6Step358EntryBank_outgoingOwned

private theorem s6Step358EntryGv_distinct : (s6Step358EntryGvRow.sign::s6Step358EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358EntryGv_owned : (s6Step358EntryGvRow.sign::s6Step358EntryGvRow.payload).toFinset⊆s6Step358EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step358EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358EntryGv_reserved : s6Step358EntryGvBefore.reserve s6Step358EntryGvFresh.toFinset=some s6Step358EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step358EntryGvFresh,arenaWires]
  · norm_num [s6Step358EntryGvBefore,s6Step358EntryFBefore,s6Step358EntryGvFresh,arenaWires]
  · simp only [s6Step358EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step358EntryGv_checked : planRowResizeLog s6Step358EntryGvBefore s6Step358EntryGvRow 195 s6Step358EntryGvFresh=
    some (s6Step358EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩,growRow 775 s6Step358EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step358EntryGvBefore s6Step358EntryGvAfter s6Step358EntryGvRow 195 s6Step358EntryGvFresh
    s6Step358EntryGv_distinct s6Step358EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step358EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step358EntryGvRow.payload++s6Step358EntryGvFresh) s6Step358EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step358EntryBank_rows : planWindowRowsLog s6Step358EntryFBefore [(s6Step358EntryFRow,92),(s6Step358EntryGRow,92),(s6Step358EntryFvRow,195),(s6Step358EntryGvRow,195)] [s6Step358EntryFFresh,s6Step358EntryGFresh,s6Step358EntryFvFresh,s6Step358EntryGvFresh]=
    some (s6Step358EntryGvAfter,[s6Step358EntryFOut,s6Step358EntryGOut,s6Step358EntryFvOut,s6Step358EntryGvOut],(growRow 795 s6Step358EntryFFresh ++ (growRow 777 s6Step358EntryGFresh ++ (growRow 776 s6Step358EntryFvFresh ++ (growRow 775 s6Step358EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step358EntryGvAfter [] []=some (s6Step358EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step358EntryGvBefore s6Step358EntryGvAfter s6Step358EntryGvAfter
    s6Step358EntryGvRow s6Step358EntryGvOut 195 s6Step358EntryGvFresh [] [] []
    (growRow 775 s6Step358EntryGvFresh) ([]) s6Step358EntryGv_Incoming s6Step358EntryGv_checked h4 s6Step358EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step358EntryFvBefore s6Step358EntryFvAfter s6Step358EntryGvAfter
    s6Step358EntryFvRow s6Step358EntryFvOut 195 s6Step358EntryFvFresh [(s6Step358EntryGvRow,195)] [s6Step358EntryGvFresh] [s6Step358EntryGvOut]
    (growRow 776 s6Step358EntryFvFresh) ((growRow 775 s6Step358EntryGvFresh ++ [])) s6Step358EntryFv_Incoming s6Step358EntryFv_checked h3 s6Step358EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step358EntryGBefore s6Step358EntryGAfter s6Step358EntryGvAfter
    s6Step358EntryGRow s6Step358EntryGOut 92 s6Step358EntryGFresh [(s6Step358EntryFvRow,195),(s6Step358EntryGvRow,195)] [s6Step358EntryFvFresh,s6Step358EntryGvFresh] [s6Step358EntryFvOut,s6Step358EntryGvOut]
    (growRow 777 s6Step358EntryGFresh) ((growRow 776 s6Step358EntryFvFresh ++ (growRow 775 s6Step358EntryGvFresh ++ []))) s6Step358EntryG_Incoming s6Step358EntryG_checked h2 s6Step358EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step358EntryFBefore s6Step358EntryFAfter s6Step358EntryGvAfter
    s6Step358EntryFRow s6Step358EntryFOut 92 s6Step358EntryFFresh [(s6Step358EntryGRow,92),(s6Step358EntryFvRow,195),(s6Step358EntryGvRow,195)] [s6Step358EntryGFresh,s6Step358EntryFvFresh,s6Step358EntryGvFresh] [s6Step358EntryGOut,s6Step358EntryFvOut,s6Step358EntryGvOut]
    (growRow 795 s6Step358EntryFFresh) ((growRow 777 s6Step358EntryGFresh ++ (growRow 776 s6Step358EntryFvFresh ++ (growRow 775 s6Step358EntryGvFresh ++ [])))) s6Step358EntryF_Incoming s6Step358EntryF_checked h1 s6Step358EntryF_Outgoing
  exact h0

private theorem s6Step358EntryBank_checked : compileHmrBankResizeLog .entry s6Step358EntryFBefore ⟨s6Step358EntryFRow,s6Step358EntryGRow,s6Step358EntryFvRow,s6Step358EntryGvRow⟩ ⟨92,92,195,195⟩ [s6Step358EntryFFresh,s6Step358EntryGFresh,s6Step358EntryFvFresh,s6Step358EntryGvFresh]=
    some (s6Step358EntryGvAfter,⟨s6Step358EntryFOut,s6Step358EntryGOut,s6Step358EntryFvOut,s6Step358EntryGvOut⟩,(growRow 795 s6Step358EntryFFresh ++ (growRow 777 s6Step358EntryGFresh ++ (growRow 776 s6Step358EntryFvFresh ++ (growRow 775 s6Step358EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step358EntryBank_rows]
  rfl

private def s6Step358ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358ExitFBefore : Arena := s6Step358ExitGAfter

private def s6Step358ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 875],795⟩

private def s6Step358ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 778],776⟩

private def s6Step358ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 848],777⟩

private def s6Step358ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 906],775⟩

private theorem s6Step358ExitBank_incomingDistinct : ([s6Step358ExitGRow,s6Step358ExitFRow,s6Step358ExitFvRow,s6Step358ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358ExitF_Incoming : rowsOwned s6Step358ExitFBefore [s6Step358ExitFRow,s6Step358ExitFvRow,s6Step358ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step358ExitGRow,s6Step358ExitFRow,s6Step358ExitFvRow,s6Step358ExitGvRow] 1 s6Step358ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step358ExitFBefore (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step358ExitBank_outgoingOwned : rowsOwned s6Step358ExitGvAfter [s6Step358ExitGOut,s6Step358ExitFOut,s6Step358ExitFvOut,s6Step358ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step358ExitGvAfter (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step358ExitF_Outgoing : rowsOwned s6Step358ExitGvAfter [s6Step358ExitFOut,s6Step358ExitFvOut,s6Step358ExitGvOut] :=
  hmrRows_owned_drop s6Step358ExitGvAfter [s6Step358ExitGOut,s6Step358ExitFOut,s6Step358ExitFvOut,s6Step358ExitGvOut] 1 s6Step358ExitBank_outgoingOwned

private theorem s6Step358ExitF_distinct : (s6Step358ExitFRow.sign::s6Step358ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358ExitF_owned : (s6Step358ExitFRow.sign::s6Step358ExitFRow.payload).toFinset⊆s6Step358ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step358ExitFBefore (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358ExitF_retired : s6Step358ExitFBefore.retireSet s6Step358ExitFExtra.toFinset=s6Step358ExitFAfter := by
  unfold Arena.retireSet s6Step358ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step358ExitFBefore,s6Step358ExitGAfter,s6Step358ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step358ExitF_checked : planRowResizeLog s6Step358ExitFBefore s6Step358ExitFRow 92 []=
    some (s6Step358ExitFAfter,s6Step358ExitFOut,shrinkRow 795 s6Step358ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step358ExitFBefore s6Step358ExitFRow 92 s6Step358ExitF_distinct s6Step358ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step358ExitFRow.payload.take 92) s6Step358ExitFRow.sign=s6Step358ExitFOut := by decide +kernel
  have hi : s6Step358ExitFRow.payload.drop 92=s6Step358ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step358ExitF_retired] at result
  exact result

private def s6Step358ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358ExitFvBefore : Arena := s6Step358ExitFAfter

private theorem s6Step358ExitFv_Incoming : rowsOwned s6Step358ExitFvBefore [s6Step358ExitFvRow,s6Step358ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step358ExitGRow,s6Step358ExitFRow,s6Step358ExitFvRow,s6Step358ExitGvRow] 2 s6Step358ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step358ExitFvBefore (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step358ExitFv_Outgoing : rowsOwned s6Step358ExitGvAfter [s6Step358ExitFvOut,s6Step358ExitGvOut] :=
  hmrRows_owned_drop s6Step358ExitGvAfter [s6Step358ExitGOut,s6Step358ExitFOut,s6Step358ExitFvOut,s6Step358ExitGvOut] 2 s6Step358ExitBank_outgoingOwned

private theorem s6Step358ExitFv_distinct : (s6Step358ExitFvRow.sign::s6Step358ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358ExitFv_owned : (s6Step358ExitFvRow.sign::s6Step358ExitFvRow.payload).toFinset⊆s6Step358ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step358ExitFvBefore (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358ExitFv_retired : s6Step358ExitFvBefore.retireSet s6Step358ExitFvExtra.toFinset=s6Step358ExitFvAfter := by
  unfold Arena.retireSet s6Step358ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step358ExitFvBefore,s6Step358ExitFAfter,s6Step358ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step358ExitFv_checked : planRowResizeLog s6Step358ExitFvBefore s6Step358ExitFvRow 195 []=
    some (s6Step358ExitFvAfter,s6Step358ExitFvOut,shrinkRow 776 s6Step358ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step358ExitFvBefore s6Step358ExitFvRow 195 s6Step358ExitFv_distinct s6Step358ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step358ExitFvRow.payload.take 195) s6Step358ExitFvRow.sign=s6Step358ExitFvOut := by decide +kernel
  have hi : s6Step358ExitFvRow.payload.drop 195=s6Step358ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step358ExitFv_retired] at result
  exact result

private def s6Step358ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step358ExitG_Incoming : rowsOwned s6Step358ExitGBefore [s6Step358ExitGRow,s6Step358ExitFRow,s6Step358ExitFvRow,s6Step358ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step358ExitGRow,s6Step358ExitFRow,s6Step358ExitFvRow,s6Step358ExitGvRow] 0 s6Step358ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step358ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step358ExitG_Outgoing : rowsOwned s6Step358ExitGvAfter [s6Step358ExitGOut,s6Step358ExitFOut,s6Step358ExitFvOut,s6Step358ExitGvOut] :=
  hmrRows_owned_drop s6Step358ExitGvAfter [s6Step358ExitGOut,s6Step358ExitFOut,s6Step358ExitFvOut,s6Step358ExitGvOut] 0 s6Step358ExitBank_outgoingOwned

private theorem s6Step358ExitG_distinct : (s6Step358ExitGRow.sign::s6Step358ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358ExitG_owned : (s6Step358ExitGRow.sign::s6Step358ExitGRow.payload).toFinset⊆s6Step358ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step358ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358ExitG_retired : s6Step358ExitGBefore.retireSet s6Step358ExitGExtra.toFinset=s6Step358ExitGAfter := by
  unfold Arena.retireSet s6Step358ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step358ExitGBefore,s6Step358ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step358ExitG_checked : planRowResizeLog s6Step358ExitGBefore s6Step358ExitGRow 91 []=
    some (s6Step358ExitGAfter,s6Step358ExitGOut,shrinkRow 777 s6Step358ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step358ExitGBefore s6Step358ExitGRow 91 s6Step358ExitG_distinct s6Step358ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step358ExitGRow.payload.take 91) s6Step358ExitGRow.sign=s6Step358ExitGOut := by decide +kernel
  have hi : s6Step358ExitGRow.payload.drop 91=s6Step358ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step358ExitG_retired] at result
  exact result

private def s6Step358ExitGvBefore : Arena := s6Step358ExitFvAfter

private theorem s6Step358ExitGv_Incoming : rowsOwned s6Step358ExitGvBefore [s6Step358ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step358ExitGRow,s6Step358ExitFRow,s6Step358ExitFvRow,s6Step358ExitGvRow] 3 s6Step358ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step358ExitGvBefore (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step358ExitGv_Outgoing : rowsOwned s6Step358ExitGvAfter [s6Step358ExitGvOut] :=
  hmrRows_owned_drop s6Step358ExitGvAfter [s6Step358ExitGOut,s6Step358ExitFOut,s6Step358ExitFvOut,s6Step358ExitGvOut] 3 s6Step358ExitBank_outgoingOwned

private theorem s6Step358ExitGv_distinct : (s6Step358ExitGvRow.sign::s6Step358ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358ExitGv_owned : (s6Step358ExitGvRow.sign::s6Step358ExitGvRow.payload).toFinset⊆s6Step358ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step358ExitGvBefore (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358ExitGv_retired : s6Step358ExitGvBefore.retireSet s6Step358ExitGvExtra.toFinset=s6Step358ExitGvAfter := by
  unfold Arena.retireSet s6Step358ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step358ExitGvBefore,s6Step358ExitFvAfter,s6Step358ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step358ExitGv_checked : planRowResizeLog s6Step358ExitGvBefore s6Step358ExitGvRow 195 []=
    some (s6Step358ExitGvAfter,s6Step358ExitGvOut,shrinkRow 775 s6Step358ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step358ExitGvBefore s6Step358ExitGvRow 195 s6Step358ExitGv_distinct s6Step358ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step358ExitGvRow.payload.take 195) s6Step358ExitGvRow.sign=s6Step358ExitGvOut := by decide +kernel
  have hi : s6Step358ExitGvRow.payload.drop 195=s6Step358ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step358ExitGv_retired] at result
  exact result

private theorem s6Step358ExitBank_rows : planWindowRowsLog s6Step358ExitGBefore [(s6Step358ExitGRow,91),(s6Step358ExitFRow,92),(s6Step358ExitFvRow,195),(s6Step358ExitGvRow,195)] [[],[],[],[]]=
    some (s6Step358ExitGvAfter,[s6Step358ExitGOut,s6Step358ExitFOut,s6Step358ExitFvOut,s6Step358ExitGvOut],(shrinkRow 777 s6Step358ExitGExtra ++ (shrinkRow 795 s6Step358ExitFExtra ++ (shrinkRow 776 s6Step358ExitFvExtra ++ (shrinkRow 775 s6Step358ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step358ExitGvAfter [] []=some (s6Step358ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step358ExitGvBefore s6Step358ExitGvAfter s6Step358ExitGvAfter
    s6Step358ExitGvRow s6Step358ExitGvOut 195 [] [] [] []
    (shrinkRow 775 s6Step358ExitGvExtra) ([]) s6Step358ExitGv_Incoming s6Step358ExitGv_checked h4 s6Step358ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step358ExitFvBefore s6Step358ExitFvAfter s6Step358ExitGvAfter
    s6Step358ExitFvRow s6Step358ExitFvOut 195 [] [(s6Step358ExitGvRow,195)] [[]] [s6Step358ExitGvOut]
    (shrinkRow 776 s6Step358ExitFvExtra) ((shrinkRow 775 s6Step358ExitGvExtra ++ [])) s6Step358ExitFv_Incoming s6Step358ExitFv_checked h3 s6Step358ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step358ExitFBefore s6Step358ExitFAfter s6Step358ExitGvAfter
    s6Step358ExitFRow s6Step358ExitFOut 92 [] [(s6Step358ExitFvRow,195),(s6Step358ExitGvRow,195)] [[],[]] [s6Step358ExitFvOut,s6Step358ExitGvOut]
    (shrinkRow 795 s6Step358ExitFExtra) ((shrinkRow 776 s6Step358ExitFvExtra ++ (shrinkRow 775 s6Step358ExitGvExtra ++ []))) s6Step358ExitF_Incoming s6Step358ExitF_checked h2 s6Step358ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step358ExitGBefore s6Step358ExitGAfter s6Step358ExitGvAfter
    s6Step358ExitGRow s6Step358ExitGOut 91 [] [(s6Step358ExitFRow,92),(s6Step358ExitFvRow,195),(s6Step358ExitGvRow,195)] [[],[],[]] [s6Step358ExitFOut,s6Step358ExitFvOut,s6Step358ExitGvOut]
    (shrinkRow 777 s6Step358ExitGExtra) ((shrinkRow 795 s6Step358ExitFExtra ++ (shrinkRow 776 s6Step358ExitFvExtra ++ (shrinkRow 775 s6Step358ExitGvExtra ++ [])))) s6Step358ExitG_Incoming s6Step358ExitG_checked h1 s6Step358ExitG_Outgoing
  exact h0

private theorem s6Step358ExitBank_checked : compileHmrBankResizeLog .exit s6Step358ExitGBefore ⟨s6Step358ExitFRow,s6Step358ExitGRow,s6Step358ExitFvRow,s6Step358ExitGvRow⟩ ⟨92,91,195,195⟩ [[],[],[],[]]=
    some (s6Step358ExitGvAfter,⟨s6Step358ExitFOut,s6Step358ExitGOut,s6Step358ExitFvOut,s6Step358ExitGvOut⟩,(shrinkRow 777 s6Step358ExitGExtra ++ (shrinkRow 795 s6Step358ExitFExtra ++ (shrinkRow 776 s6Step358ExitFvExtra ++ (shrinkRow 775 s6Step358ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step358ExitBank_rows]
  rfl

private theorem s6Step358Add0_apart : Disjoint s6Step358Add0Arena.live s6Step358Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step358Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358Add0_card : s6Step358Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step358Add0_borrowed : s6Step358Add0Arena.checkBorrow (hmrHybridCount s6Step358Add0Arena s6Step358Add0B.length) s6Step358Add0Work=some s6Step358Add0During := by
  have len : s6Step358Add0Work.length=hmrHybridCount s6Step358Add0Arena s6Step358Add0B.length := by
    rw [hmrHybridCount,s6Step358Add0_card]
    decide +kernel
  have nd : s6Step358Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step358Add0Arena s6Step358Add0During s6Step358Add0Work.toFinset s6Step358Add0_bounded s6Step358Add0_apart rfl

private theorem s6Step358Add0_distinct : (892::876::881::(s6Step358Add0A++s6Step358Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358Add0_owned : (892::876::881::(s6Step358Add0A++s6Step358Add0B)).toFinset⊆s6Step358Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step358Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358Add0_checked : compileHmrHybridCinLog s6Step358Add0Arena 876 892 881 s6Step358Add0A s6Step358Add0B s6Step358Add0Work=some s6Step358Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step358Add0Arena s6Step358Add0During 876 892 881 s6Step358Add0A s6Step358Add0B s6Step358Add0Work
    (by decide +kernel) (by decide +kernel) s6Step358Add0_distinct
    (fun q hq => s6Step358Add0_owned (List.mem_toFinset.mpr hq)) s6Step358Add0_borrowed

private theorem s6Step358Add1_apart : Disjoint s6Step358Add1Arena.live s6Step358Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step358Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358Add1_card : s6Step358Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step358Add1_borrowed : s6Step358Add1Arena.checkBorrow (hmrHybridCount s6Step358Add1Arena s6Step358Add1B.length) s6Step358Add1Work=some s6Step358Add1During := by
  have len : s6Step358Add1Work.length=hmrHybridCount s6Step358Add1Arena s6Step358Add1B.length := by
    rw [hmrHybridCount,s6Step358Add1_card]
    decide +kernel
  have nd : s6Step358Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step358Add1Arena s6Step358Add1During s6Step358Add1Work.toFinset s6Step358Add1_bounded s6Step358Add1_apart rfl

private theorem s6Step358Add1_distinct : (892::876::881::(s6Step358Add1A++s6Step358Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358Add1_owned : (892::876::881::(s6Step358Add1A++s6Step358Add1B)).toFinset⊆s6Step358Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step358Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358Add1_checked : compileHmrHybridCinLog s6Step358Add1Arena 876 892 881 s6Step358Add1A s6Step358Add1B s6Step358Add1Work=some s6Step358Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step358Add1Arena s6Step358Add1During 876 892 881 s6Step358Add1A s6Step358Add1B s6Step358Add1Work
    (by decide +kernel) (by decide +kernel) s6Step358Add1_distinct
    (fun q hq => s6Step358Add1_owned (List.mem_toFinset.mpr hq)) s6Step358Add1_borrowed

private theorem s6Step358F4_apart : Disjoint (s6Step358Add0A++s6Step358Add0B).toFinset (s6Step358Add1A++s6Step358Add1B).toFinset := by
  have nd : ((s6Step358Add0A++s6Step358Add0B)++(s6Step358Add1A++s6Step358Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step358F4_carry : s6Step358F4FlagArena.checkBorrow 1 [881]=some s6Step358Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step358F4FlagArena,s6Step358HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step358F4FlagArena,s6Step358HeadFvAfter,s6Step358Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step358F4_distinct : (858::876::892::881::((s6Step358Add0A++s6Step358Add1A)++(s6Step358Add0B++s6Step358Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358F4_flag : s6Step358HeadFvAfter.checkBorrow 1 [892]=some s6Step358F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step358HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step358F4_owned : (858::876::((s6Step358Add0A++s6Step358Add1A)++(s6Step358Add0B++s6Step358Add1B))).toFinset⊆s6Step358HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step358HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358F4_checked : compileHmrHybridF4Log s6Step358HeadFvAfter 858 876 s6Step358Add0A s6Step358Add0B s6Step358Add1A s6Step358Add1B [892] [881] s6Step358Add0Work s6Step358Add1Work=some s6Step358F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step358HeadFvAfter s6Step358F4FlagArena s6Step358Add0Arena s6Step358Add0During s6Step358Add1During 858 876
    s6Step358Add0A s6Step358Add0B s6Step358Add1A s6Step358Add1B [892] [881] s6Step358Add0Work s6Step358Add1Work
    (fun q hq => s6Step358F4_owned (List.mem_toFinset.mpr hq)) s6Step358F4_flag s6Step358F4_carry
    s6Step358F4_distinct s6Step358F4_apart s6Step358Add0_checked s6Step358Add1_checked

private theorem s6Step358Front_branch : s6Step358FrontSigmaArena.checkBorrow 1 [876]=some s6Step358HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step358FrontSigmaArena,s6Step358EntryGvAfter,s6Step358EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step358FrontSigmaArena,s6Step358EntryGvAfter,s6Step358EntryFBefore,s6Step358HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step358Front_entry : HmrFrontEntryValid s6Step358EntryFBefore s6Step358FrontBank 92 195 ⟨92,91,195,195⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step358FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step358EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step358EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step358FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step358Front_sigma : s6Step358EntryGvAfter.checkBorrow 1 [858]=some s6Step358FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step358EntryGvAfter,s6Step358EntryFBefore,arenaWires]
  · rfl

private def s6Step358HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358HeadFBefore : Arena := s6Step358HeadGAfter

private def s6Step358HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩

private def s6Step358HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩

private def s6Step358HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],777⟩

private def s6Step358HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩

private theorem s6Step358HeadBank_incomingDistinct : ([s6Step358HeadGRow,s6Step358HeadFRow,s6Step358HeadGvRow,s6Step358HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358HeadF_Incoming : rowsOwned s6Step358HeadFBefore [s6Step358HeadFRow,s6Step358HeadGvRow,s6Step358HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step358HeadGRow,s6Step358HeadFRow,s6Step358HeadGvRow,s6Step358HeadFvRow] 1 s6Step358HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step358HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step358HeadBank_outgoingOwned : rowsOwned s6Step358HeadFvAfter [s6Step358HeadGOut,s6Step358HeadFOut,s6Step358HeadGvOut,s6Step358HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step358HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step358HeadF_Outgoing : rowsOwned s6Step358HeadFvAfter [s6Step358HeadFOut,s6Step358HeadGvOut,s6Step358HeadFvOut] :=
  hmrRows_owned_drop s6Step358HeadFvAfter [s6Step358HeadGOut,s6Step358HeadFOut,s6Step358HeadGvOut,s6Step358HeadFvOut] 1 s6Step358HeadBank_outgoingOwned

private theorem s6Step358HeadF_distinct : (s6Step358HeadFRow.sign::s6Step358HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358HeadF_owned : (s6Step358HeadFRow.sign::s6Step358HeadFRow.payload).toFinset⊆s6Step358HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step358HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358HeadF_reserved : s6Step358HeadFBefore.reserve s6Step358HeadFFresh.toFinset=some s6Step358HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step358HeadFFresh,arenaWires]
  · norm_num [s6Step358HeadFBefore,s6Step358HeadGAfter,s6Step358HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step358HeadFAfter,s6Step358HeadFBefore,s6Step358HeadGAfter,s6Step358HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step358HeadF_checked : planRowResizeLog s6Step358HeadFBefore s6Step358HeadFRow 93 s6Step358HeadFFresh=
    some (s6Step358HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 875],795⟩,growRow 795 s6Step358HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step358HeadFBefore s6Step358HeadFAfter s6Step358HeadFRow 93 s6Step358HeadFFresh
    s6Step358HeadF_distinct s6Step358HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step358HeadF_reserved
  have rowEq : WindowRow.mk (s6Step358HeadFRow.payload++s6Step358HeadFFresh) s6Step358HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 875],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step358HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step358HeadFvBefore : Arena := s6Step358HeadGvAfter

private theorem s6Step358HeadFv_Incoming : rowsOwned s6Step358HeadFvBefore [s6Step358HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step358HeadGRow,s6Step358HeadFRow,s6Step358HeadGvRow,s6Step358HeadFvRow] 3 s6Step358HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step358HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step358HeadFv_Outgoing : rowsOwned s6Step358HeadFvAfter [s6Step358HeadFvOut] :=
  hmrRows_owned_drop s6Step358HeadFvAfter [s6Step358HeadGOut,s6Step358HeadFOut,s6Step358HeadGvOut,s6Step358HeadFvOut] 3 s6Step358HeadBank_outgoingOwned

private theorem s6Step358HeadFv_distinct : (s6Step358HeadFvRow.sign::s6Step358HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358HeadFv_owned : (s6Step358HeadFvRow.sign::s6Step358HeadFvRow.payload).toFinset⊆s6Step358HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step358HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358HeadFv_reserved : s6Step358HeadFvBefore.reserve s6Step358HeadFvFresh.toFinset=some s6Step358HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step358HeadFvFresh,arenaWires]
  · norm_num [s6Step358HeadFvBefore,s6Step358HeadGvAfter,s6Step358HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step358HeadFvAfter,s6Step358HeadFvBefore,s6Step358HeadGvAfter,s6Step358HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step358HeadFv_checked : planRowResizeLog s6Step358HeadFvBefore s6Step358HeadFvRow 196 s6Step358HeadFvFresh=
    some (s6Step358HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 778],776⟩,growRow 776 s6Step358HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step358HeadFvBefore s6Step358HeadFvAfter s6Step358HeadFvRow 196 s6Step358HeadFvFresh
    s6Step358HeadFv_distinct s6Step358HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step358HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step358HeadFvRow.payload++s6Step358HeadFvFresh) s6Step358HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 778],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step358HeadG_Incoming : rowsOwned s6Step358HeadGBefore [s6Step358HeadGRow,s6Step358HeadFRow,s6Step358HeadGvRow,s6Step358HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step358HeadGRow,s6Step358HeadFRow,s6Step358HeadGvRow,s6Step358HeadFvRow] 0 s6Step358HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step358HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step358HeadG_Outgoing : rowsOwned s6Step358HeadFvAfter [s6Step358HeadGOut,s6Step358HeadFOut,s6Step358HeadGvOut,s6Step358HeadFvOut] :=
  hmrRows_owned_drop s6Step358HeadFvAfter [s6Step358HeadGOut,s6Step358HeadFOut,s6Step358HeadGvOut,s6Step358HeadFvOut] 0 s6Step358HeadBank_outgoingOwned

private theorem s6Step358HeadG_distinct : (s6Step358HeadGRow.sign::s6Step358HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358HeadG_owned : (s6Step358HeadGRow.sign::s6Step358HeadGRow.payload).toFinset⊆s6Step358HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step358HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358HeadG_reserved : s6Step358HeadGBefore.reserve s6Step358HeadGFresh.toFinset=some s6Step358HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step358HeadGFresh,arenaWires]
  · norm_num [s6Step358HeadGBefore,s6Step358HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step358HeadGAfter,s6Step358HeadGBefore,s6Step358HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step358HeadG_checked : planRowResizeLog s6Step358HeadGBefore s6Step358HeadGRow 93 s6Step358HeadGFresh=
    some (s6Step358HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 848],777⟩,growRow 777 s6Step358HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step358HeadGBefore s6Step358HeadGAfter s6Step358HeadGRow 93 s6Step358HeadGFresh
    s6Step358HeadG_distinct s6Step358HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step358HeadG_reserved
  have rowEq : WindowRow.mk (s6Step358HeadGRow.payload++s6Step358HeadGFresh) s6Step358HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 848],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step358HeadGvBefore : Arena := s6Step358HeadFAfter

private theorem s6Step358HeadGv_Incoming : rowsOwned s6Step358HeadGvBefore [s6Step358HeadGvRow,s6Step358HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step358HeadGRow,s6Step358HeadFRow,s6Step358HeadGvRow,s6Step358HeadFvRow] 2 s6Step358HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step358HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step358HeadGv_Outgoing : rowsOwned s6Step358HeadFvAfter [s6Step358HeadGvOut,s6Step358HeadFvOut] :=
  hmrRows_owned_drop s6Step358HeadFvAfter [s6Step358HeadGOut,s6Step358HeadFOut,s6Step358HeadGvOut,s6Step358HeadFvOut] 2 s6Step358HeadBank_outgoingOwned

private theorem s6Step358HeadGv_distinct : (s6Step358HeadGvRow.sign::s6Step358HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step358HeadGv_owned : (s6Step358HeadGvRow.sign::s6Step358HeadGvRow.payload).toFinset⊆s6Step358HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step358HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step358HeadGv_reserved : s6Step358HeadGvBefore.reserve s6Step358HeadGvFresh.toFinset=some s6Step358HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step358HeadGvFresh,arenaWires]
  · norm_num [s6Step358HeadGvBefore,s6Step358HeadFAfter,s6Step358HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step358HeadGvAfter,s6Step358HeadGvBefore,s6Step358HeadFAfter,s6Step358HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step358HeadGv_checked : planRowResizeLog s6Step358HeadGvBefore s6Step358HeadGvRow 196 s6Step358HeadGvFresh=
    some (s6Step358HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 906],775⟩,growRow 775 s6Step358HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step358HeadGvBefore s6Step358HeadGvAfter s6Step358HeadGvRow 196 s6Step358HeadGvFresh
    s6Step358HeadGv_distinct s6Step358HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step358HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step358HeadGvRow.payload++s6Step358HeadGvFresh) s6Step358HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 906],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step358HeadBank_rows : planWindowRowsLog s6Step358HeadGBefore [(s6Step358HeadGRow,93),(s6Step358HeadFRow,93),(s6Step358HeadGvRow,196),(s6Step358HeadFvRow,196)] [s6Step358HeadGFresh,s6Step358HeadFFresh,s6Step358HeadGvFresh,s6Step358HeadFvFresh]=
    some (s6Step358HeadFvAfter,[s6Step358HeadGOut,s6Step358HeadFOut,s6Step358HeadGvOut,s6Step358HeadFvOut],(growRow 777 s6Step358HeadGFresh ++ (growRow 795 s6Step358HeadFFresh ++ (growRow 775 s6Step358HeadGvFresh ++ (growRow 776 s6Step358HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step358HeadFvAfter [] []=some (s6Step358HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step358HeadFvBefore s6Step358HeadFvAfter s6Step358HeadFvAfter
    s6Step358HeadFvRow s6Step358HeadFvOut 196 s6Step358HeadFvFresh [] [] []
    (growRow 776 s6Step358HeadFvFresh) ([]) s6Step358HeadFv_Incoming s6Step358HeadFv_checked h4 s6Step358HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step358HeadGvBefore s6Step358HeadGvAfter s6Step358HeadFvAfter
    s6Step358HeadGvRow s6Step358HeadGvOut 196 s6Step358HeadGvFresh [(s6Step358HeadFvRow,196)] [s6Step358HeadFvFresh] [s6Step358HeadFvOut]
    (growRow 775 s6Step358HeadGvFresh) ((growRow 776 s6Step358HeadFvFresh ++ [])) s6Step358HeadGv_Incoming s6Step358HeadGv_checked h3 s6Step358HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step358HeadFBefore s6Step358HeadFAfter s6Step358HeadFvAfter
    s6Step358HeadFRow s6Step358HeadFOut 93 s6Step358HeadFFresh [(s6Step358HeadGvRow,196),(s6Step358HeadFvRow,196)] [s6Step358HeadGvFresh,s6Step358HeadFvFresh] [s6Step358HeadGvOut,s6Step358HeadFvOut]
    (growRow 795 s6Step358HeadFFresh) ((growRow 775 s6Step358HeadGvFresh ++ (growRow 776 s6Step358HeadFvFresh ++ []))) s6Step358HeadF_Incoming s6Step358HeadF_checked h2 s6Step358HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step358HeadGBefore s6Step358HeadGAfter s6Step358HeadFvAfter
    s6Step358HeadGRow s6Step358HeadGOut 93 s6Step358HeadGFresh [(s6Step358HeadFRow,93),(s6Step358HeadGvRow,196),(s6Step358HeadFvRow,196)] [s6Step358HeadFFresh,s6Step358HeadGvFresh,s6Step358HeadFvFresh] [s6Step358HeadFOut,s6Step358HeadGvOut,s6Step358HeadFvOut]
    (growRow 777 s6Step358HeadGFresh) ((growRow 795 s6Step358HeadFFresh ++ (growRow 775 s6Step358HeadGvFresh ++ (growRow 776 s6Step358HeadFvFresh ++ [])))) s6Step358HeadG_Incoming s6Step358HeadG_checked h1 s6Step358HeadG_Outgoing
  exact h0

private theorem s6Step358HeadBank_checked : compileHmrBankResizeLog .headroom s6Step358HeadGBefore ⟨s6Step358HeadFRow,s6Step358HeadGRow,s6Step358HeadFvRow,s6Step358HeadGvRow⟩ ⟨93,93,196,196⟩ [s6Step358HeadGFresh,s6Step358HeadFFresh,s6Step358HeadGvFresh,s6Step358HeadFvFresh]=
    some (s6Step358HeadFvAfter,⟨s6Step358HeadFOut,s6Step358HeadGOut,s6Step358HeadFvOut,s6Step358HeadGvOut⟩,(growRow 777 s6Step358HeadGFresh ++ (growRow 795 s6Step358HeadFFresh ++ (growRow 775 s6Step358HeadGvFresh ++ (growRow 776 s6Step358HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step358HeadBank_rows]
  rfl

private theorem s6Step358Front_checked : compileHmrSourceFrontLog s6Step358EntryFBefore s6Step358FrontBank 92 195 ⟨92,91,195,195⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step358FrontLog=some s6Step358FrontPlan := by
  have pairEq : s6Step358FrontPair=⟨s6Step358HeadFRow,s6Step358HeadGRow,s6Step358HeadFvRow,s6Step358HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step358FrontHead=⟨s6Step358ExitFRow,s6Step358ExitGRow,s6Step358ExitFvRow,s6Step358ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step358Add0A=s6Step358FrontHead.f.wires := by decide +kernel
  have gEq : s6Step358Add0B=s6Step358FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step358Add1A=s6Step358FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step358Add1B=s6Step358FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step358EntryFBefore s6Step358FrontBank 92 195 ⟨92,91,195,195⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step358FrontLog s6Step358FrontPlan
  · exact s6Step358Front_entry
  · exact s6Step358EntryBank_checked
  · exact s6Step358Front_sigma
  · rfl
  · exact s6Step358Front_branch
  · rfl
  · simpa only [s6Step358FrontPlan,pairEq] using s6Step358HeadBank_checked
  · simpa only [s6Step358FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step358F4_checked
  · exact s6Step358Counter_checked
  · rfl
  · simpa only [s6Step358FrontPlan,headEq] using s6Step358ExitBank_checked

private theorem s6Step358Complete_explicit_checked : compileHmrEarlyStepLog s6Step358EntryFBefore s6Step358FrontBank 92 195 ⟨92,91,195,195⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step358CompleteLog=some s6Step358CompletePlan := by
  let Q := s6Step358EarlyControlPlan
  have hq := s6Step358EarlyControl_plan_checked
  have fv1 : s6Step358CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step358CompleteOut.fv.payload[2]?.getD s6Step358CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step358CompleteOut.fv.payload[3]?.getD s6Step358CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step358CompleteOut.fv.payload[4]?.getD s6Step358CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step358EntryFBefore s6Step358EarlyControlArena s6Step358FrontBank 92 195 ⟨92,91,195,195⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step358CompleteLog s6Step358FrontPlan Q
    s6Step358Front_checked s6Step358Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step358Complete_owned s6Step358Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step358EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 s6Step358CompleteOut.fv.second (s6Step358CompleteOut.fv.payload[2]?.getD s6Step358CompleteOut.fv.sign) (s6Step358CompleteOut.fv.payload[3]?.getD s6Step358CompleteOut.fv.sign) (s6Step358CompleteOut.fv.payload[4]?.getD s6Step358CompleteOut.fv.sign) 876 60 s6Step358EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep358Arena : Arena := s6Step358EntryFBefore
def s6PrivateStep358Bank : WindowBank := s6Step358FrontBank
def s6PrivateStep358Spec : HmrSourceWalkStepLog := ⟨92,195,⟨92,91,195,195⟩,60,.early s6Step358CompleteLog⟩
def s6PrivateStep358Plan : HmrSourceStepPlan := .early s6Step358CompletePlan
theorem s6PrivateStep358_source : s6PrivateStep358Spec=s6ObservedLogs352[6] := rfl
theorem s6PrivateStep358_checked : compileHmrSourceStepLog s6PrivateStep358Arena s6PrivateStep358Bank
    s6PrivateStep358Spec.fgWidth s6PrivateStep358Spec.vWidth s6PrivateStep358Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 358 s6PrivateStep358Spec.need none s6PrivateStep358Spec.log=some s6PrivateStep358Plan := by
  change compileHmrSourceStepLog s6Step358EntryFBefore s6Step358FrontBank 92 195 ⟨92,91,195,195⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 358 60 none (.early s6Step358CompleteLog)=some (.early s6Step358CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 358<498)]
  rw [s6Step358Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
