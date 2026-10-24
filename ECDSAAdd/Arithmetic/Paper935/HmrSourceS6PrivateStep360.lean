import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep358
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

private def s6Step360CompleteMoves : List (Wire × Wire) := [(887,347)]

private def s6Step360EarlyControlLog : HmrEarlyControlLog := ⟨[887, 892, 906, 825, 876],[805],[802],[843, 877, 792, 816, 819, 920],[]⟩

private def s6Step360FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [825], [], []],[[876], [906], [892], [881]],[[], [], [], []]⟩,[858],[778],[805],[802],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877]⟩

private def s6Step360CompleteLog : HmrEarlyStepLog := ⟨s6Step360FrontLog,s6Step360CompleteMoves,s6Step360EarlyControlLog⟩

private def s6Step360ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346],795⟩

private def s6Step360ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩

private def s6Step360ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],777⟩

private def s6Step360ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩

private def s6Step360FrontOut : WindowBank := ⟨s6Step360ExitFOut,s6Step360ExitGOut,s6Step360ExitFvOut,s6Step360ExitGvOut⟩

private def s6Step360CompleteOut : WindowBank := s6Step360FrontOut.repacked s6Step360CompleteMoves

private def s6Step360EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step360EarlyControlPositiveArena,[805],s6Step360EarlyControlEqualityArena,[802],⟨⟨858,false⟩,[⟨⟨805,false⟩,802⟩]⟩⟩

private def s6Step360EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,892⟩,⟨⟨771,false⟩,906⟩,⟨⟨770,false⟩,825⟩,⟨⟨769,false⟩,876⟩]⟩

private def s6Step360EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step360EarlyControlZeroArena,s6Step360EarlyControlZeroPlan,s6Step360EarlyControlClassPlan,s6Step360EarlyControlFlagArena,s6Step360EarlyControlFittedArena,s6Step360EarlyControlHistoryArena,s6Step360EarlyControlSigmaArena,s6Step360EarlyControlOutputArena,s6Step360EarlyControlLog⟩

private def s6Step360CounterWork : List Wire := [805, 802, 843, 877]

private theorem s6Step360Counter_bounded : s6Step360CounterWork.toFinset⊆arenaWires := by norm_num [s6Step360CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step360HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360CounterDuring : Arena := ⟨s6Step360HeadFvAfter.live∪s6Step360CounterWork.toFinset,Finset.union_subset s6Step360HeadFvAfter.bounded s6Step360Counter_bounded⟩

private def s6Step360EntryFFresh : List Wire := []

private def s6Step360EntryFvFresh : List Wire := []

private def s6Step360EntryGFresh : List Wire := [825]

private def s6Step360EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360EntryGvAfter : Arena := s6Step360EntryGAfter

private def s6Step360EntryGvFresh : List Wire := []

private def s6Step360ExitFExtra : List Wire := [347, 906]

private def s6Step360ExitGExtra : List Wire := [825, 876]

private def s6Step360ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<347) ∨ (348≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360ExitGvExtra : List Wire := [892]

private def s6Step360Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360Add0Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step360Add0_bounded : s6Step360Add0Work.toFinset⊆arenaWires := by
  have h : s6Step360Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step360Add0During : Arena := ⟨s6Step360Add0Arena.live∪s6Step360Add0Work.toFinset,Finset.union_subset s6Step360Add0Arena.bounded s6Step360Add0_bounded⟩

private def s6Step360Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360Add1Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step360Add1_bounded : s6Step360Add1Work.toFinset⊆arenaWires := by
  have h : s6Step360Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step360Add1During : Arena := ⟨s6Step360Add1Arena.live∪s6Step360Add1Work.toFinset,Finset.union_subset s6Step360Add1Arena.bounded s6Step360Add1_bounded⟩

private def s6Step360F4FlagArena : Arena := ⟨s6Step360HeadFvAfter.live∪{805},Finset.union_subset s6Step360HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step360F4Plan : HmrHybridF4Plan := ⟨s6Step360F4FlagArena,[805],s6Step360Add0Arena,[802],s6Step360Add0During,s6Step360Add0Work,s6Step360Add1During,s6Step360Add1Work⟩

private def s6Step360HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 906],795⟩

private def s6Step360HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩

private def s6Step360HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 825, 876],777⟩

private def s6Step360HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 892],775⟩

private def s6Step360FrontHead : WindowBank := ⟨s6Step360HeadFOut,s6Step360HeadGOut,s6Step360HeadFvOut,s6Step360HeadGvOut⟩

private def s6Step360EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩

private def s6Step360EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848],776⟩

private def s6Step360EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 825],777⟩

private def s6Step360EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩

private def s6Step360FrontPair : WindowBank := ⟨s6Step360EntryFOut,s6Step360EntryGOut,s6Step360EntryFvOut,s6Step360EntryGvOut⟩

private def s6Step360FrontSigmaArena : Arena := ⟨s6Step360EntryGvAfter.live∪{858},Finset.union_subset s6Step360EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step360HeadFFresh : List Wire := [906]

private def s6Step360HeadFvFresh : List Wire := [881]

private def s6Step360HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360HeadGFresh : List Wire := [876]

private def s6Step360HeadGvFresh : List Wire := [892]

private def s6Step360FrontPlan : HmrSourceFront := ⟨s6Step360EntryGvAfter,s6Step360FrontPair,(growRow 795 s6Step360EntryFFresh ++ (growRow 777 s6Step360EntryGFresh ++ (growRow 776 s6Step360EntryFvFresh ++ (growRow 775 s6Step360EntryGvFresh ++ [])))),s6Step360FrontSigmaArena,[858],s6Step360HeadGBefore,[778],
  s6Step360HeadFvAfter,s6Step360FrontHead,(growRow 777 s6Step360HeadGFresh ++ (growRow 795 s6Step360HeadFFresh ++ (growRow 775 s6Step360HeadGvFresh ++ (growRow 776 s6Step360HeadFvFresh ++ [])))),s6Step360F4Plan,s6Step360CounterDuring,s6Step360CounterWork,s6Step360ExitGvAfter,s6Step360FrontOut,(shrinkRow 777 s6Step360ExitGExtra ++ (shrinkRow 795 s6Step360ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step360ExitGvExtra ++ []))))⟩

private def s6Step360CompletePlan : HmrEarlyStepPlan := ⟨s6Step360FrontPlan,s6Step360EarlyControlArena,s6Step360EarlyControlPlan,s6Step360CompleteMoves⟩

private theorem s6Step360Complete_apart : List.Disjoint (s6Step360CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [858, 778, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step360CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[858, 778, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step360Complete_owned : (s6Step360CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step360EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step360EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step360CompleteMoveArena : Arena := ⟨s6Step360ExitGvAfter.live∪{347},Finset.union_subset s6Step360ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step360Complete_repack : s6Step360ExitGvAfter.checkRepack s6Step360CompleteMoves=some s6Step360EarlyControlArena := by
  have owned : 887∈s6Step360ExitGvAfter.live := by norm_num [s6Step360ExitGvAfter,arenaWires]
  have reserve : s6Step360ExitGvAfter.reserve {347}=some s6Step360CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step360ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step360CompleteMoveArena.retireSet {887}=s6Step360EarlyControlArena := by
    unfold Arena.retireSet s6Step360EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step360CompleteMoveArena,s6Step360ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step360CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step360CompleteMoveArena.retireSet {887}).checkRepack []=some s6Step360EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step360EarlyControl_branchOwned : ([778] : List Wire).toFinset⊆s6Step360EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step360EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360EarlyControl_branch : compileHmrBranchRetirement s6Step360EarlyControlSigmaArena 778=some s6Step360EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step360EarlyControl_branchOwned
  · ext q
    simp [s6Step360EarlyControlOutputArena,s6Step360EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step360EarlyControl_classEqualityBorrow : s6Step360EarlyControlPositiveArena.checkBorrow (([858, 805] : List Wire).length-1) s6Step360EarlyControlLog.classWork=some s6Step360EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step360EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step360EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step360EarlyControlEqualityArena,s6Step360EarlyControlPositiveArena,s6Step360EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step360EarlyControl_classEqualityOwned : ([858, 805] : List Wire).toFinset⊆s6Step360EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step360EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360EarlyControl_classEquality : compileHmrEqualityLog s6Step360EarlyControlPositiveArena [858, 805] 0 s6Step360EarlyControlLog.classWork=some (s6Step360EarlyControlEqualityArena,s6Step360EarlyControlLog.classWork,s6Step360EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step360EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step360EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step360EarlyControl_classOwned : ([769, 876, 858] : List Wire).toFinset⊆s6Step360EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step360EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360EarlyControl_positiveBorrow : s6Step360EarlyControlZeroArena.checkBorrow (1) s6Step360EarlyControlLog.positiveWork=some s6Step360EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step360EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step360EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step360EarlyControlPositiveArena,s6Step360EarlyControlZeroArena,s6Step360EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step360EarlyControl_class : compileHmrSourceClassLog s6Step360EarlyControlZeroArena false 769 s6Step360EarlyControlZeroPlan.top 0 858 s6Step360EarlyControlLog.positiveWork s6Step360EarlyControlLog.classWork=some s6Step360EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step360EarlyControlClassPlan s6Step360EarlyControlZeroArena false 769 s6Step360EarlyControlZeroPlan.top 0 858
  constructor
  · decide +kernel
  · exact s6Step360EarlyControl_classOwned
  · exact s6Step360EarlyControl_positiveBorrow
  · exact s6Step360EarlyControl_classEquality

private theorem s6Step360EarlyControl_entryRecordOwned : ([778, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step360EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step360EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360EarlyControl_entrySigmaOwned : ([858, 254] : List Wire).toFinset⊆s6Step360EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step360EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360EarlyControl_fitBorrow : s6Step360EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step360EarlyControlLog.recordFresh=some s6Step360EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step360EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step360EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step360EarlyControlFittedArena,s6Step360EarlyControlFlagArena,s6Step360EarlyControlLog,arenaWires]

private theorem s6Step360EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step360EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step360EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360EarlyControl_fit : compileHmrRecordGrowLog s6Step360EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step360EarlyControlLog.recordFresh=some s6Step360EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step360EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step360EarlyControl_fitBorrow

private theorem s6Step360EarlyControl_flagsBorrow : s6Step360EarlyControlEqualityArena.checkBorrow (6) s6Step360EarlyControlLog.flagWork=some s6Step360EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step360EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step360EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step360EarlyControlFlagArena,s6Step360EarlyControlEqualityArena,s6Step360EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step360EarlyControl_flagsOwned : ([802, 253, 252, 251] : List Wire).toFinset⊆s6Step360EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step360EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360EarlyControl_flags : compileHmrFlagsLog s6Step360EarlyControlClassPlan.equalityArena s6Step360EarlyControlClassPlan.equality.top 253 252 251 s6Step360EarlyControlLog.flagWork=some s6Step360EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step360EarlyControl_flagsOwned⟩
  · exact s6Step360EarlyControl_flagsBorrow

private theorem s6Step360EarlyControl_historyBorrow : s6Step360EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step360EarlyControlLog.recordFresh=some s6Step360EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step360EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step360EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step360EarlyControlHistoryArena,s6Step360EarlyControlArena,s6Step360EarlyControlLog,arenaWires]

private theorem s6Step360EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step360EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step360EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360EarlyControl_history : compileHmrRecordGrowLog s6Step360EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step360EarlyControlLog.recordFresh=some s6Step360EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step360EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step360EarlyControl_historyBorrow

private theorem s6Step360EarlyControl_sigmaOwned : ([254, 858] : List Wire).toFinset⊆s6Step360EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step360EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360EarlyControl_sigmaReleaseOwned : ([858] : List Wire).toFinset⊆s6Step360EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step360EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360EarlyControl_sigmaRelease : s6Step360EarlyControlHistoryArena.release {858} (fun _ => false)=some s6Step360EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step360EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step360EarlyControlSigmaArena,s6Step360EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step360EarlyControl_sigma : compileHmrSigmaDropLog s6Step360EarlyControlHistoryArena false 0 0 254 858 []=some s6Step360EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step360EarlyControl_sigmaOwned⟩
  · exact s6Step360EarlyControl_sigmaRelease

private theorem s6Step360EarlyControl_zeroBorrow : s6Step360EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step360EarlyControlLog.zeroWork=some s6Step360EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step360EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step360EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step360EarlyControlZeroArena,s6Step360EarlyControlArena,s6Step360EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step360EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step360EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step360EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360EarlyControl_zero : compileHmrEqualityLog s6Step360EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step360EarlyControlLog.zeroWork=some (s6Step360EarlyControlZeroArena,s6Step360EarlyControlLog.zeroWork,s6Step360EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step360EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step360EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step360EarlyControl_logged : s6Step360EarlyControlPlan.Logged s6Step360EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 778 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step360EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step360EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step360EarlyControl_zero
  · exact s6Step360EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step360EarlyControl_flags
  · exact s6Step360EarlyControl_fit
  · exact s6Step360EarlyControl_history
  · exact s6Step360EarlyControl_sigma
  · exact s6Step360EarlyControl_branch

private theorem s6Step360EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step360EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 778 60 s6Step360EarlyControlLog=some s6Step360EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step360EarlyControlPlan s6Step360EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 778 60 s6Step360EarlyControl_logged

private def s6Step360EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩

private def s6Step360EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848],776⟩

private def s6Step360EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],777⟩

private def s6Step360EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩

private def s6Step360FrontBank : WindowBank := ⟨s6Step360EntryFRow,s6Step360EntryGRow,s6Step360EntryFvRow,s6Step360EntryGvRow⟩

private def s6Step360Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 906, 795]

private def s6Step360Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 825, 876, 777]

private def s6Step360Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 776]

private def s6Step360Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 892, 775]

private theorem s6Step360Counter_apart : Disjoint s6Step360HeadFvAfter.live s6Step360CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step360HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360Counter_borrowed : s6Step360HeadFvAfter.checkBorrow 4 s6Step360CounterWork=some s6Step360CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step360HeadFvAfter s6Step360CounterDuring s6Step360CounterWork.toFinset s6Step360Counter_bounded s6Step360Counter_apart rfl

private theorem s6Step360Counter_owned : (858::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step360HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step360HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360Counter_checked : compileHmrCounterStepLog s6Step360HeadFvAfter true 858 [774, 773, 772, 771, 770, 769] s6Step360CounterWork=some s6Step360CounterDuring := by
  have owned : ∀q∈858::[774, 773, 772, 771, 770, 769],q∈s6Step360HeadFvAfter.live := fun q hq => s6Step360Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step360Counter_borrowed

private def s6Step360EntryFAfter : Arena := s6Step360EntryFBefore

private theorem s6Step360EntryBank_incomingDistinct : ([s6Step360EntryFRow,s6Step360EntryGRow,s6Step360EntryFvRow,s6Step360EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360EntryF_Incoming : rowsOwned s6Step360EntryFBefore [s6Step360EntryFRow,s6Step360EntryGRow,s6Step360EntryFvRow,s6Step360EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step360EntryFRow,s6Step360EntryGRow,s6Step360EntryFvRow,s6Step360EntryGvRow] 0 s6Step360EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step360EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step360EntryBank_outgoingOwned : rowsOwned s6Step360EntryGvAfter [s6Step360EntryFOut,s6Step360EntryGOut,s6Step360EntryFvOut,s6Step360EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step360EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step360EntryF_Outgoing : rowsOwned s6Step360EntryGvAfter [s6Step360EntryFOut,s6Step360EntryGOut,s6Step360EntryFvOut,s6Step360EntryGvOut] :=
  hmrRows_owned_drop s6Step360EntryGvAfter [s6Step360EntryFOut,s6Step360EntryGOut,s6Step360EntryFvOut,s6Step360EntryGvOut] 0 s6Step360EntryBank_outgoingOwned

private theorem s6Step360EntryF_distinct : (s6Step360EntryFRow.sign::s6Step360EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360EntryF_owned : (s6Step360EntryFRow.sign::s6Step360EntryFRow.payload).toFinset⊆s6Step360EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step360EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360EntryF_reserved : s6Step360EntryFBefore.reserve s6Step360EntryFFresh.toFinset=some s6Step360EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step360EntryFFresh,arenaWires]
  · norm_num [s6Step360EntryFBefore,s6Step360EntryFFresh,arenaWires]
  · simp only [s6Step360EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step360EntryF_checked : planRowResizeLog s6Step360EntryFBefore s6Step360EntryFRow 92 s6Step360EntryFFresh=
    some (s6Step360EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩,growRow 795 s6Step360EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step360EntryFBefore s6Step360EntryFAfter s6Step360EntryFRow 92 s6Step360EntryFFresh
    s6Step360EntryF_distinct s6Step360EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step360EntryF_reserved
  have rowEq : WindowRow.mk (s6Step360EntryFRow.payload++s6Step360EntryFFresh) s6Step360EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step360EntryFvAfter : Arena := s6Step360EntryGAfter

private def s6Step360EntryFvBefore : Arena := s6Step360EntryGAfter

private theorem s6Step360EntryFv_Incoming : rowsOwned s6Step360EntryFvBefore [s6Step360EntryFvRow,s6Step360EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step360EntryFRow,s6Step360EntryGRow,s6Step360EntryFvRow,s6Step360EntryGvRow] 2 s6Step360EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step360EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step360EntryFv_Outgoing : rowsOwned s6Step360EntryGvAfter [s6Step360EntryFvOut,s6Step360EntryGvOut] :=
  hmrRows_owned_drop s6Step360EntryGvAfter [s6Step360EntryFOut,s6Step360EntryGOut,s6Step360EntryFvOut,s6Step360EntryGvOut] 2 s6Step360EntryBank_outgoingOwned

private theorem s6Step360EntryFv_distinct : (s6Step360EntryFvRow.sign::s6Step360EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360EntryFv_owned : (s6Step360EntryFvRow.sign::s6Step360EntryFvRow.payload).toFinset⊆s6Step360EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step360EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360EntryFv_reserved : s6Step360EntryFvBefore.reserve s6Step360EntryFvFresh.toFinset=some s6Step360EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step360EntryFvFresh,arenaWires]
  · norm_num [s6Step360EntryFvBefore,s6Step360EntryGAfter,s6Step360EntryFvFresh,arenaWires]
  · simp only [s6Step360EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step360EntryFv_checked : planRowResizeLog s6Step360EntryFvBefore s6Step360EntryFvRow 196 s6Step360EntryFvFresh=
    some (s6Step360EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848],776⟩,growRow 776 s6Step360EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step360EntryFvBefore s6Step360EntryFvAfter s6Step360EntryFvRow 196 s6Step360EntryFvFresh
    s6Step360EntryFv_distinct s6Step360EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step360EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step360EntryFvRow.payload++s6Step360EntryFvFresh) s6Step360EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step360EntryGBefore : Arena := s6Step360EntryFBefore

private theorem s6Step360EntryG_Incoming : rowsOwned s6Step360EntryGBefore [s6Step360EntryGRow,s6Step360EntryFvRow,s6Step360EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step360EntryFRow,s6Step360EntryGRow,s6Step360EntryFvRow,s6Step360EntryGvRow] 1 s6Step360EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step360EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step360EntryG_Outgoing : rowsOwned s6Step360EntryGvAfter [s6Step360EntryGOut,s6Step360EntryFvOut,s6Step360EntryGvOut] :=
  hmrRows_owned_drop s6Step360EntryGvAfter [s6Step360EntryFOut,s6Step360EntryGOut,s6Step360EntryFvOut,s6Step360EntryGvOut] 1 s6Step360EntryBank_outgoingOwned

private theorem s6Step360EntryG_distinct : (s6Step360EntryGRow.sign::s6Step360EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360EntryG_owned : (s6Step360EntryGRow.sign::s6Step360EntryGRow.payload).toFinset⊆s6Step360EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step360EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360EntryG_reserved : s6Step360EntryGBefore.reserve s6Step360EntryGFresh.toFinset=some s6Step360EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step360EntryGFresh,arenaWires]
  · norm_num [s6Step360EntryGBefore,s6Step360EntryFBefore,s6Step360EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step360EntryGAfter,s6Step360EntryGBefore,s6Step360EntryFBefore,s6Step360EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step360EntryG_checked : planRowResizeLog s6Step360EntryGBefore s6Step360EntryGRow 92 s6Step360EntryGFresh=
    some (s6Step360EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 825],777⟩,growRow 777 s6Step360EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step360EntryGBefore s6Step360EntryGAfter s6Step360EntryGRow 92 s6Step360EntryGFresh
    s6Step360EntryG_distinct s6Step360EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step360EntryG_reserved
  have rowEq : WindowRow.mk (s6Step360EntryGRow.payload++s6Step360EntryGFresh) s6Step360EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 825],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step360EntryGvBefore : Arena := s6Step360EntryGAfter

private theorem s6Step360EntryGv_Incoming : rowsOwned s6Step360EntryGvBefore [s6Step360EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step360EntryFRow,s6Step360EntryGRow,s6Step360EntryFvRow,s6Step360EntryGvRow] 3 s6Step360EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step360EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step360EntryGv_Outgoing : rowsOwned s6Step360EntryGvAfter [s6Step360EntryGvOut] :=
  hmrRows_owned_drop s6Step360EntryGvAfter [s6Step360EntryFOut,s6Step360EntryGOut,s6Step360EntryFvOut,s6Step360EntryGvOut] 3 s6Step360EntryBank_outgoingOwned

private theorem s6Step360EntryGv_distinct : (s6Step360EntryGvRow.sign::s6Step360EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360EntryGv_owned : (s6Step360EntryGvRow.sign::s6Step360EntryGvRow.payload).toFinset⊆s6Step360EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step360EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360EntryGv_reserved : s6Step360EntryGvBefore.reserve s6Step360EntryGvFresh.toFinset=some s6Step360EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step360EntryGvFresh,arenaWires]
  · norm_num [s6Step360EntryGvBefore,s6Step360EntryGAfter,s6Step360EntryGvFresh,arenaWires]
  · simp only [s6Step360EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step360EntryGv_checked : planRowResizeLog s6Step360EntryGvBefore s6Step360EntryGvRow 196 s6Step360EntryGvFresh=
    some (s6Step360EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩,growRow 775 s6Step360EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step360EntryGvBefore s6Step360EntryGvAfter s6Step360EntryGvRow 196 s6Step360EntryGvFresh
    s6Step360EntryGv_distinct s6Step360EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step360EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step360EntryGvRow.payload++s6Step360EntryGvFresh) s6Step360EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step360EntryBank_rows : planWindowRowsLog s6Step360EntryFBefore [(s6Step360EntryFRow,92),(s6Step360EntryGRow,92),(s6Step360EntryFvRow,196),(s6Step360EntryGvRow,196)] [s6Step360EntryFFresh,s6Step360EntryGFresh,s6Step360EntryFvFresh,s6Step360EntryGvFresh]=
    some (s6Step360EntryGvAfter,[s6Step360EntryFOut,s6Step360EntryGOut,s6Step360EntryFvOut,s6Step360EntryGvOut],(growRow 795 s6Step360EntryFFresh ++ (growRow 777 s6Step360EntryGFresh ++ (growRow 776 s6Step360EntryFvFresh ++ (growRow 775 s6Step360EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step360EntryGvAfter [] []=some (s6Step360EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step360EntryGvBefore s6Step360EntryGvAfter s6Step360EntryGvAfter
    s6Step360EntryGvRow s6Step360EntryGvOut 196 s6Step360EntryGvFresh [] [] []
    (growRow 775 s6Step360EntryGvFresh) ([]) s6Step360EntryGv_Incoming s6Step360EntryGv_checked h4 s6Step360EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step360EntryFvBefore s6Step360EntryFvAfter s6Step360EntryGvAfter
    s6Step360EntryFvRow s6Step360EntryFvOut 196 s6Step360EntryFvFresh [(s6Step360EntryGvRow,196)] [s6Step360EntryGvFresh] [s6Step360EntryGvOut]
    (growRow 776 s6Step360EntryFvFresh) ((growRow 775 s6Step360EntryGvFresh ++ [])) s6Step360EntryFv_Incoming s6Step360EntryFv_checked h3 s6Step360EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step360EntryGBefore s6Step360EntryGAfter s6Step360EntryGvAfter
    s6Step360EntryGRow s6Step360EntryGOut 92 s6Step360EntryGFresh [(s6Step360EntryFvRow,196),(s6Step360EntryGvRow,196)] [s6Step360EntryFvFresh,s6Step360EntryGvFresh] [s6Step360EntryFvOut,s6Step360EntryGvOut]
    (growRow 777 s6Step360EntryGFresh) ((growRow 776 s6Step360EntryFvFresh ++ (growRow 775 s6Step360EntryGvFresh ++ []))) s6Step360EntryG_Incoming s6Step360EntryG_checked h2 s6Step360EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step360EntryFBefore s6Step360EntryFAfter s6Step360EntryGvAfter
    s6Step360EntryFRow s6Step360EntryFOut 92 s6Step360EntryFFresh [(s6Step360EntryGRow,92),(s6Step360EntryFvRow,196),(s6Step360EntryGvRow,196)] [s6Step360EntryGFresh,s6Step360EntryFvFresh,s6Step360EntryGvFresh] [s6Step360EntryGOut,s6Step360EntryFvOut,s6Step360EntryGvOut]
    (growRow 795 s6Step360EntryFFresh) ((growRow 777 s6Step360EntryGFresh ++ (growRow 776 s6Step360EntryFvFresh ++ (growRow 775 s6Step360EntryGvFresh ++ [])))) s6Step360EntryF_Incoming s6Step360EntryF_checked h1 s6Step360EntryF_Outgoing
  exact h0

private theorem s6Step360EntryBank_checked : compileHmrBankResizeLog .entry s6Step360EntryFBefore ⟨s6Step360EntryFRow,s6Step360EntryGRow,s6Step360EntryFvRow,s6Step360EntryGvRow⟩ ⟨92,92,196,196⟩ [s6Step360EntryFFresh,s6Step360EntryGFresh,s6Step360EntryFvFresh,s6Step360EntryGvFresh]=
    some (s6Step360EntryGvAfter,⟨s6Step360EntryFOut,s6Step360EntryGOut,s6Step360EntryFvOut,s6Step360EntryGvOut⟩,(growRow 795 s6Step360EntryFFresh ++ (growRow 777 s6Step360EntryGFresh ++ (growRow 776 s6Step360EntryFvFresh ++ (growRow 775 s6Step360EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step360EntryBank_rows]
  rfl

private def s6Step360ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<347) ∨ (348≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360ExitFBefore : Arena := s6Step360ExitGAfter

private def s6Step360ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 906],795⟩

private def s6Step360ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩

private def s6Step360ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 825, 876],777⟩

private def s6Step360ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 892],775⟩

private theorem s6Step360ExitBank_incomingDistinct : ([s6Step360ExitGRow,s6Step360ExitFRow,s6Step360ExitFvRow,s6Step360ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360ExitF_Incoming : rowsOwned s6Step360ExitFBefore [s6Step360ExitFRow,s6Step360ExitFvRow,s6Step360ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step360ExitGRow,s6Step360ExitFRow,s6Step360ExitFvRow,s6Step360ExitGvRow] 1 s6Step360ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step360ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step360ExitBank_outgoingOwned : rowsOwned s6Step360ExitGvAfter [s6Step360ExitGOut,s6Step360ExitFOut,s6Step360ExitFvOut,s6Step360ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step360ExitGvAfter (fun q => (0≤q ∧ q<347) ∨ (348≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step360ExitF_Outgoing : rowsOwned s6Step360ExitGvAfter [s6Step360ExitFOut,s6Step360ExitFvOut,s6Step360ExitGvOut] :=
  hmrRows_owned_drop s6Step360ExitGvAfter [s6Step360ExitGOut,s6Step360ExitFOut,s6Step360ExitFvOut,s6Step360ExitGvOut] 1 s6Step360ExitBank_outgoingOwned

private theorem s6Step360ExitF_distinct : (s6Step360ExitFRow.sign::s6Step360ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360ExitF_owned : (s6Step360ExitFRow.sign::s6Step360ExitFRow.payload).toFinset⊆s6Step360ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step360ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360ExitF_retired : s6Step360ExitFBefore.retireSet s6Step360ExitFExtra.toFinset=s6Step360ExitFAfter := by
  unfold Arena.retireSet s6Step360ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step360ExitFBefore,s6Step360ExitGAfter,s6Step360ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step360ExitF_checked : planRowResizeLog s6Step360ExitFBefore s6Step360ExitFRow 91 []=
    some (s6Step360ExitFAfter,s6Step360ExitFOut,shrinkRow 795 s6Step360ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step360ExitFBefore s6Step360ExitFRow 91 s6Step360ExitF_distinct s6Step360ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step360ExitFRow.payload.take 91) s6Step360ExitFRow.sign=s6Step360ExitFOut := by decide +kernel
  have hi : s6Step360ExitFRow.payload.drop 91=s6Step360ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step360ExitF_retired] at result
  exact result

private def s6Step360ExitFvAfter : Arena := s6Step360ExitFAfter

private def s6Step360ExitFvBefore : Arena := s6Step360ExitFAfter

private theorem s6Step360ExitFv_Incoming : rowsOwned s6Step360ExitFvBefore [s6Step360ExitFvRow,s6Step360ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step360ExitGRow,s6Step360ExitFRow,s6Step360ExitFvRow,s6Step360ExitGvRow] 2 s6Step360ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step360ExitFvBefore (fun q => (0≤q ∧ q<347) ∨ (348≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step360ExitFv_Outgoing : rowsOwned s6Step360ExitGvAfter [s6Step360ExitFvOut,s6Step360ExitGvOut] :=
  hmrRows_owned_drop s6Step360ExitGvAfter [s6Step360ExitGOut,s6Step360ExitFOut,s6Step360ExitFvOut,s6Step360ExitGvOut] 2 s6Step360ExitBank_outgoingOwned

private theorem s6Step360ExitFv_distinct : (s6Step360ExitFvRow.sign::s6Step360ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360ExitFv_owned : (s6Step360ExitFvRow.sign::s6Step360ExitFvRow.payload).toFinset⊆s6Step360ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step360ExitFvBefore (fun q => (0≤q ∧ q<347) ∨ (348≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360ExitFv_reserved : s6Step360ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step360ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step360ExitFv_checked : planRowResizeLog s6Step360ExitFvBefore s6Step360ExitFvRow 197 []=
    some (s6Step360ExitFvAfter,s6Step360ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step360ExitFvBefore s6Step360ExitFvAfter s6Step360ExitFvRow 197 []
    s6Step360ExitFv_distinct s6Step360ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step360ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step360ExitFvRow.payload++[]) s6Step360ExitFvRow.sign=s6Step360ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step360ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step360ExitG_Incoming : rowsOwned s6Step360ExitGBefore [s6Step360ExitGRow,s6Step360ExitFRow,s6Step360ExitFvRow,s6Step360ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step360ExitGRow,s6Step360ExitFRow,s6Step360ExitFvRow,s6Step360ExitGvRow] 0 s6Step360ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step360ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step360ExitG_Outgoing : rowsOwned s6Step360ExitGvAfter [s6Step360ExitGOut,s6Step360ExitFOut,s6Step360ExitFvOut,s6Step360ExitGvOut] :=
  hmrRows_owned_drop s6Step360ExitGvAfter [s6Step360ExitGOut,s6Step360ExitFOut,s6Step360ExitFvOut,s6Step360ExitGvOut] 0 s6Step360ExitBank_outgoingOwned

private theorem s6Step360ExitG_distinct : (s6Step360ExitGRow.sign::s6Step360ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360ExitG_owned : (s6Step360ExitGRow.sign::s6Step360ExitGRow.payload).toFinset⊆s6Step360ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step360ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360ExitG_retired : s6Step360ExitGBefore.retireSet s6Step360ExitGExtra.toFinset=s6Step360ExitGAfter := by
  unfold Arena.retireSet s6Step360ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step360ExitGBefore,s6Step360ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step360ExitG_checked : planRowResizeLog s6Step360ExitGBefore s6Step360ExitGRow 91 []=
    some (s6Step360ExitGAfter,s6Step360ExitGOut,shrinkRow 777 s6Step360ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step360ExitGBefore s6Step360ExitGRow 91 s6Step360ExitG_distinct s6Step360ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step360ExitGRow.payload.take 91) s6Step360ExitGRow.sign=s6Step360ExitGOut := by decide +kernel
  have hi : s6Step360ExitGRow.payload.drop 91=s6Step360ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step360ExitG_retired] at result
  exact result

private def s6Step360ExitGvBefore : Arena := s6Step360ExitFAfter

private theorem s6Step360ExitGv_Incoming : rowsOwned s6Step360ExitGvBefore [s6Step360ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step360ExitGRow,s6Step360ExitFRow,s6Step360ExitFvRow,s6Step360ExitGvRow] 3 s6Step360ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step360ExitGvBefore (fun q => (0≤q ∧ q<347) ∨ (348≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step360ExitGv_Outgoing : rowsOwned s6Step360ExitGvAfter [s6Step360ExitGvOut] :=
  hmrRows_owned_drop s6Step360ExitGvAfter [s6Step360ExitGOut,s6Step360ExitFOut,s6Step360ExitFvOut,s6Step360ExitGvOut] 3 s6Step360ExitBank_outgoingOwned

private theorem s6Step360ExitGv_distinct : (s6Step360ExitGvRow.sign::s6Step360ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360ExitGv_owned : (s6Step360ExitGvRow.sign::s6Step360ExitGvRow.payload).toFinset⊆s6Step360ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step360ExitGvBefore (fun q => (0≤q ∧ q<347) ∨ (348≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360ExitGv_retired : s6Step360ExitGvBefore.retireSet s6Step360ExitGvExtra.toFinset=s6Step360ExitGvAfter := by
  unfold Arena.retireSet s6Step360ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step360ExitGvBefore,s6Step360ExitFAfter,s6Step360ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step360ExitGv_checked : planRowResizeLog s6Step360ExitGvBefore s6Step360ExitGvRow 196 []=
    some (s6Step360ExitGvAfter,s6Step360ExitGvOut,shrinkRow 775 s6Step360ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step360ExitGvBefore s6Step360ExitGvRow 196 s6Step360ExitGv_distinct s6Step360ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step360ExitGvRow.payload.take 196) s6Step360ExitGvRow.sign=s6Step360ExitGvOut := by decide +kernel
  have hi : s6Step360ExitGvRow.payload.drop 196=s6Step360ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step360ExitGv_retired] at result
  exact result

private theorem s6Step360ExitBank_rows : planWindowRowsLog s6Step360ExitGBefore [(s6Step360ExitGRow,91),(s6Step360ExitFRow,91),(s6Step360ExitFvRow,197),(s6Step360ExitGvRow,196)] [[],[],[],[]]=
    some (s6Step360ExitGvAfter,[s6Step360ExitGOut,s6Step360ExitFOut,s6Step360ExitFvOut,s6Step360ExitGvOut],(shrinkRow 777 s6Step360ExitGExtra ++ (shrinkRow 795 s6Step360ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step360ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step360ExitGvAfter [] []=some (s6Step360ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step360ExitGvBefore s6Step360ExitGvAfter s6Step360ExitGvAfter
    s6Step360ExitGvRow s6Step360ExitGvOut 196 [] [] [] []
    (shrinkRow 775 s6Step360ExitGvExtra) ([]) s6Step360ExitGv_Incoming s6Step360ExitGv_checked h4 s6Step360ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step360ExitFvBefore s6Step360ExitFvAfter s6Step360ExitGvAfter
    s6Step360ExitFvRow s6Step360ExitFvOut 197 [] [(s6Step360ExitGvRow,196)] [[]] [s6Step360ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step360ExitGvExtra ++ [])) s6Step360ExitFv_Incoming s6Step360ExitFv_checked h3 s6Step360ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step360ExitFBefore s6Step360ExitFAfter s6Step360ExitGvAfter
    s6Step360ExitFRow s6Step360ExitFOut 91 [] [(s6Step360ExitFvRow,197),(s6Step360ExitGvRow,196)] [[],[]] [s6Step360ExitFvOut,s6Step360ExitGvOut]
    (shrinkRow 795 s6Step360ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step360ExitGvExtra ++ []))) s6Step360ExitF_Incoming s6Step360ExitF_checked h2 s6Step360ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step360ExitGBefore s6Step360ExitGAfter s6Step360ExitGvAfter
    s6Step360ExitGRow s6Step360ExitGOut 91 [] [(s6Step360ExitFRow,91),(s6Step360ExitFvRow,197),(s6Step360ExitGvRow,196)] [[],[],[]] [s6Step360ExitFOut,s6Step360ExitFvOut,s6Step360ExitGvOut]
    (shrinkRow 777 s6Step360ExitGExtra) ((shrinkRow 795 s6Step360ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step360ExitGvExtra ++ [])))) s6Step360ExitG_Incoming s6Step360ExitG_checked h1 s6Step360ExitG_Outgoing
  exact h0

private theorem s6Step360ExitBank_checked : compileHmrBankResizeLog .exit s6Step360ExitGBefore ⟨s6Step360ExitFRow,s6Step360ExitGRow,s6Step360ExitFvRow,s6Step360ExitGvRow⟩ ⟨91,91,197,196⟩ [[],[],[],[]]=
    some (s6Step360ExitGvAfter,⟨s6Step360ExitFOut,s6Step360ExitGOut,s6Step360ExitFvOut,s6Step360ExitGvOut⟩,(shrinkRow 777 s6Step360ExitGExtra ++ (shrinkRow 795 s6Step360ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step360ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step360ExitBank_rows]
  rfl

private theorem s6Step360Add0_apart : Disjoint s6Step360Add0Arena.live s6Step360Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step360Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360Add0_card : s6Step360Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step360Add0_borrowed : s6Step360Add0Arena.checkBorrow (hmrHybridCount s6Step360Add0Arena s6Step360Add0B.length) s6Step360Add0Work=some s6Step360Add0During := by
  have len : s6Step360Add0Work.length=hmrHybridCount s6Step360Add0Arena s6Step360Add0B.length := by
    rw [hmrHybridCount,s6Step360Add0_card]
    decide +kernel
  have nd : s6Step360Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step360Add0Arena s6Step360Add0During s6Step360Add0Work.toFinset s6Step360Add0_bounded s6Step360Add0_apart rfl

private theorem s6Step360Add0_distinct : (805::778::802::(s6Step360Add0A++s6Step360Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360Add0_owned : (805::778::802::(s6Step360Add0A++s6Step360Add0B)).toFinset⊆s6Step360Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step360Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360Add0_checked : compileHmrHybridCinLog s6Step360Add0Arena 778 805 802 s6Step360Add0A s6Step360Add0B s6Step360Add0Work=some s6Step360Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step360Add0Arena s6Step360Add0During 778 805 802 s6Step360Add0A s6Step360Add0B s6Step360Add0Work
    (by decide +kernel) (by decide +kernel) s6Step360Add0_distinct
    (fun q hq => s6Step360Add0_owned (List.mem_toFinset.mpr hq)) s6Step360Add0_borrowed

private theorem s6Step360Add1_apart : Disjoint s6Step360Add1Arena.live s6Step360Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step360Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360Add1_card : s6Step360Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step360Add1_borrowed : s6Step360Add1Arena.checkBorrow (hmrHybridCount s6Step360Add1Arena s6Step360Add1B.length) s6Step360Add1Work=some s6Step360Add1During := by
  have len : s6Step360Add1Work.length=hmrHybridCount s6Step360Add1Arena s6Step360Add1B.length := by
    rw [hmrHybridCount,s6Step360Add1_card]
    decide +kernel
  have nd : s6Step360Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step360Add1Arena s6Step360Add1During s6Step360Add1Work.toFinset s6Step360Add1_bounded s6Step360Add1_apart rfl

private theorem s6Step360Add1_distinct : (805::778::802::(s6Step360Add1A++s6Step360Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360Add1_owned : (805::778::802::(s6Step360Add1A++s6Step360Add1B)).toFinset⊆s6Step360Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step360Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360Add1_checked : compileHmrHybridCinLog s6Step360Add1Arena 778 805 802 s6Step360Add1A s6Step360Add1B s6Step360Add1Work=some s6Step360Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step360Add1Arena s6Step360Add1During 778 805 802 s6Step360Add1A s6Step360Add1B s6Step360Add1Work
    (by decide +kernel) (by decide +kernel) s6Step360Add1_distinct
    (fun q hq => s6Step360Add1_owned (List.mem_toFinset.mpr hq)) s6Step360Add1_borrowed

private theorem s6Step360F4_apart : Disjoint (s6Step360Add0A++s6Step360Add0B).toFinset (s6Step360Add1A++s6Step360Add1B).toFinset := by
  have nd : ((s6Step360Add0A++s6Step360Add0B)++(s6Step360Add1A++s6Step360Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step360F4_carry : s6Step360F4FlagArena.checkBorrow 1 [802]=some s6Step360Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step360F4FlagArena,s6Step360HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step360F4FlagArena,s6Step360HeadFvAfter,s6Step360Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step360F4_distinct : (858::778::805::802::((s6Step360Add0A++s6Step360Add1A)++(s6Step360Add0B++s6Step360Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360F4_flag : s6Step360HeadFvAfter.checkBorrow 1 [805]=some s6Step360F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step360HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step360F4_owned : (858::778::((s6Step360Add0A++s6Step360Add1A)++(s6Step360Add0B++s6Step360Add1B))).toFinset⊆s6Step360HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step360HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360F4_checked : compileHmrHybridF4Log s6Step360HeadFvAfter 858 778 s6Step360Add0A s6Step360Add0B s6Step360Add1A s6Step360Add1B [805] [802] s6Step360Add0Work s6Step360Add1Work=some s6Step360F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step360HeadFvAfter s6Step360F4FlagArena s6Step360Add0Arena s6Step360Add0During s6Step360Add1During 858 778
    s6Step360Add0A s6Step360Add0B s6Step360Add1A s6Step360Add1B [805] [802] s6Step360Add0Work s6Step360Add1Work
    (fun q hq => s6Step360F4_owned (List.mem_toFinset.mpr hq)) s6Step360F4_flag s6Step360F4_carry
    s6Step360F4_distinct s6Step360F4_apart s6Step360Add0_checked s6Step360Add1_checked

private theorem s6Step360Front_branch : s6Step360FrontSigmaArena.checkBorrow 1 [778]=some s6Step360HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step360FrontSigmaArena,s6Step360EntryGvAfter,s6Step360EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step360FrontSigmaArena,s6Step360EntryGvAfter,s6Step360EntryGAfter,s6Step360HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step360Front_entry : HmrFrontEntryValid s6Step360EntryFBefore s6Step360FrontBank 92 196 ⟨91,91,197,196⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step360FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step360EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step360EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step360FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step360Front_sigma : s6Step360EntryGvAfter.checkBorrow 1 [858]=some s6Step360FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step360EntryGvAfter,s6Step360EntryGAfter,arenaWires]
  · rfl

private def s6Step360HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360HeadFBefore : Arena := s6Step360HeadGAfter

private def s6Step360HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩

private def s6Step360HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848],776⟩

private def s6Step360HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 825],777⟩

private def s6Step360HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩

private theorem s6Step360HeadBank_incomingDistinct : ([s6Step360HeadGRow,s6Step360HeadFRow,s6Step360HeadGvRow,s6Step360HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360HeadF_Incoming : rowsOwned s6Step360HeadFBefore [s6Step360HeadFRow,s6Step360HeadGvRow,s6Step360HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step360HeadGRow,s6Step360HeadFRow,s6Step360HeadGvRow,s6Step360HeadFvRow] 1 s6Step360HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step360HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step360HeadBank_outgoingOwned : rowsOwned s6Step360HeadFvAfter [s6Step360HeadGOut,s6Step360HeadFOut,s6Step360HeadGvOut,s6Step360HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step360HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step360HeadF_Outgoing : rowsOwned s6Step360HeadFvAfter [s6Step360HeadFOut,s6Step360HeadGvOut,s6Step360HeadFvOut] :=
  hmrRows_owned_drop s6Step360HeadFvAfter [s6Step360HeadGOut,s6Step360HeadFOut,s6Step360HeadGvOut,s6Step360HeadFvOut] 1 s6Step360HeadBank_outgoingOwned

private theorem s6Step360HeadF_distinct : (s6Step360HeadFRow.sign::s6Step360HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360HeadF_owned : (s6Step360HeadFRow.sign::s6Step360HeadFRow.payload).toFinset⊆s6Step360HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step360HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360HeadF_reserved : s6Step360HeadFBefore.reserve s6Step360HeadFFresh.toFinset=some s6Step360HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step360HeadFFresh,arenaWires]
  · norm_num [s6Step360HeadFBefore,s6Step360HeadGAfter,s6Step360HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step360HeadFAfter,s6Step360HeadFBefore,s6Step360HeadGAfter,s6Step360HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step360HeadF_checked : planRowResizeLog s6Step360HeadFBefore s6Step360HeadFRow 93 s6Step360HeadFFresh=
    some (s6Step360HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 906],795⟩,growRow 795 s6Step360HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step360HeadFBefore s6Step360HeadFAfter s6Step360HeadFRow 93 s6Step360HeadFFresh
    s6Step360HeadF_distinct s6Step360HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step360HeadF_reserved
  have rowEq : WindowRow.mk (s6Step360HeadFRow.payload++s6Step360HeadFFresh) s6Step360HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 906],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step360HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step360HeadFvBefore : Arena := s6Step360HeadGvAfter

private theorem s6Step360HeadFv_Incoming : rowsOwned s6Step360HeadFvBefore [s6Step360HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step360HeadGRow,s6Step360HeadFRow,s6Step360HeadGvRow,s6Step360HeadFvRow] 3 s6Step360HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step360HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step360HeadFv_Outgoing : rowsOwned s6Step360HeadFvAfter [s6Step360HeadFvOut] :=
  hmrRows_owned_drop s6Step360HeadFvAfter [s6Step360HeadGOut,s6Step360HeadFOut,s6Step360HeadGvOut,s6Step360HeadFvOut] 3 s6Step360HeadBank_outgoingOwned

private theorem s6Step360HeadFv_distinct : (s6Step360HeadFvRow.sign::s6Step360HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360HeadFv_owned : (s6Step360HeadFvRow.sign::s6Step360HeadFvRow.payload).toFinset⊆s6Step360HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step360HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360HeadFv_reserved : s6Step360HeadFvBefore.reserve s6Step360HeadFvFresh.toFinset=some s6Step360HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step360HeadFvFresh,arenaWires]
  · norm_num [s6Step360HeadFvBefore,s6Step360HeadGvAfter,s6Step360HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step360HeadFvAfter,s6Step360HeadFvBefore,s6Step360HeadGvAfter,s6Step360HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step360HeadFv_checked : planRowResizeLog s6Step360HeadFvBefore s6Step360HeadFvRow 197 s6Step360HeadFvFresh=
    some (s6Step360HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩,growRow 776 s6Step360HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step360HeadFvBefore s6Step360HeadFvAfter s6Step360HeadFvRow 197 s6Step360HeadFvFresh
    s6Step360HeadFv_distinct s6Step360HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step360HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step360HeadFvRow.payload++s6Step360HeadFvFresh) s6Step360HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step360HeadG_Incoming : rowsOwned s6Step360HeadGBefore [s6Step360HeadGRow,s6Step360HeadFRow,s6Step360HeadGvRow,s6Step360HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step360HeadGRow,s6Step360HeadFRow,s6Step360HeadGvRow,s6Step360HeadFvRow] 0 s6Step360HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step360HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step360HeadG_Outgoing : rowsOwned s6Step360HeadFvAfter [s6Step360HeadGOut,s6Step360HeadFOut,s6Step360HeadGvOut,s6Step360HeadFvOut] :=
  hmrRows_owned_drop s6Step360HeadFvAfter [s6Step360HeadGOut,s6Step360HeadFOut,s6Step360HeadGvOut,s6Step360HeadFvOut] 0 s6Step360HeadBank_outgoingOwned

private theorem s6Step360HeadG_distinct : (s6Step360HeadGRow.sign::s6Step360HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360HeadG_owned : (s6Step360HeadGRow.sign::s6Step360HeadGRow.payload).toFinset⊆s6Step360HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step360HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360HeadG_reserved : s6Step360HeadGBefore.reserve s6Step360HeadGFresh.toFinset=some s6Step360HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step360HeadGFresh,arenaWires]
  · norm_num [s6Step360HeadGBefore,s6Step360HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step360HeadGAfter,s6Step360HeadGBefore,s6Step360HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step360HeadG_checked : planRowResizeLog s6Step360HeadGBefore s6Step360HeadGRow 93 s6Step360HeadGFresh=
    some (s6Step360HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 825, 876],777⟩,growRow 777 s6Step360HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step360HeadGBefore s6Step360HeadGAfter s6Step360HeadGRow 93 s6Step360HeadGFresh
    s6Step360HeadG_distinct s6Step360HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step360HeadG_reserved
  have rowEq : WindowRow.mk (s6Step360HeadGRow.payload++s6Step360HeadGFresh) s6Step360HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 825, 876],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step360HeadGvBefore : Arena := s6Step360HeadFAfter

private theorem s6Step360HeadGv_Incoming : rowsOwned s6Step360HeadGvBefore [s6Step360HeadGvRow,s6Step360HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step360HeadGRow,s6Step360HeadFRow,s6Step360HeadGvRow,s6Step360HeadFvRow] 2 s6Step360HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step360HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step360HeadGv_Outgoing : rowsOwned s6Step360HeadFvAfter [s6Step360HeadGvOut,s6Step360HeadFvOut] :=
  hmrRows_owned_drop s6Step360HeadFvAfter [s6Step360HeadGOut,s6Step360HeadFOut,s6Step360HeadGvOut,s6Step360HeadFvOut] 2 s6Step360HeadBank_outgoingOwned

private theorem s6Step360HeadGv_distinct : (s6Step360HeadGvRow.sign::s6Step360HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step360HeadGv_owned : (s6Step360HeadGvRow.sign::s6Step360HeadGvRow.payload).toFinset⊆s6Step360HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step360HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step360HeadGv_reserved : s6Step360HeadGvBefore.reserve s6Step360HeadGvFresh.toFinset=some s6Step360HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step360HeadGvFresh,arenaWires]
  · norm_num [s6Step360HeadGvBefore,s6Step360HeadFAfter,s6Step360HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step360HeadGvAfter,s6Step360HeadGvBefore,s6Step360HeadFAfter,s6Step360HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step360HeadGv_checked : planRowResizeLog s6Step360HeadGvBefore s6Step360HeadGvRow 197 s6Step360HeadGvFresh=
    some (s6Step360HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 892],775⟩,growRow 775 s6Step360HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step360HeadGvBefore s6Step360HeadGvAfter s6Step360HeadGvRow 197 s6Step360HeadGvFresh
    s6Step360HeadGv_distinct s6Step360HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step360HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step360HeadGvRow.payload++s6Step360HeadGvFresh) s6Step360HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 892],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step360HeadBank_rows : planWindowRowsLog s6Step360HeadGBefore [(s6Step360HeadGRow,93),(s6Step360HeadFRow,93),(s6Step360HeadGvRow,197),(s6Step360HeadFvRow,197)] [s6Step360HeadGFresh,s6Step360HeadFFresh,s6Step360HeadGvFresh,s6Step360HeadFvFresh]=
    some (s6Step360HeadFvAfter,[s6Step360HeadGOut,s6Step360HeadFOut,s6Step360HeadGvOut,s6Step360HeadFvOut],(growRow 777 s6Step360HeadGFresh ++ (growRow 795 s6Step360HeadFFresh ++ (growRow 775 s6Step360HeadGvFresh ++ (growRow 776 s6Step360HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step360HeadFvAfter [] []=some (s6Step360HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step360HeadFvBefore s6Step360HeadFvAfter s6Step360HeadFvAfter
    s6Step360HeadFvRow s6Step360HeadFvOut 197 s6Step360HeadFvFresh [] [] []
    (growRow 776 s6Step360HeadFvFresh) ([]) s6Step360HeadFv_Incoming s6Step360HeadFv_checked h4 s6Step360HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step360HeadGvBefore s6Step360HeadGvAfter s6Step360HeadFvAfter
    s6Step360HeadGvRow s6Step360HeadGvOut 197 s6Step360HeadGvFresh [(s6Step360HeadFvRow,197)] [s6Step360HeadFvFresh] [s6Step360HeadFvOut]
    (growRow 775 s6Step360HeadGvFresh) ((growRow 776 s6Step360HeadFvFresh ++ [])) s6Step360HeadGv_Incoming s6Step360HeadGv_checked h3 s6Step360HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step360HeadFBefore s6Step360HeadFAfter s6Step360HeadFvAfter
    s6Step360HeadFRow s6Step360HeadFOut 93 s6Step360HeadFFresh [(s6Step360HeadGvRow,197),(s6Step360HeadFvRow,197)] [s6Step360HeadGvFresh,s6Step360HeadFvFresh] [s6Step360HeadGvOut,s6Step360HeadFvOut]
    (growRow 795 s6Step360HeadFFresh) ((growRow 775 s6Step360HeadGvFresh ++ (growRow 776 s6Step360HeadFvFresh ++ []))) s6Step360HeadF_Incoming s6Step360HeadF_checked h2 s6Step360HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step360HeadGBefore s6Step360HeadGAfter s6Step360HeadFvAfter
    s6Step360HeadGRow s6Step360HeadGOut 93 s6Step360HeadGFresh [(s6Step360HeadFRow,93),(s6Step360HeadGvRow,197),(s6Step360HeadFvRow,197)] [s6Step360HeadFFresh,s6Step360HeadGvFresh,s6Step360HeadFvFresh] [s6Step360HeadFOut,s6Step360HeadGvOut,s6Step360HeadFvOut]
    (growRow 777 s6Step360HeadGFresh) ((growRow 795 s6Step360HeadFFresh ++ (growRow 775 s6Step360HeadGvFresh ++ (growRow 776 s6Step360HeadFvFresh ++ [])))) s6Step360HeadG_Incoming s6Step360HeadG_checked h1 s6Step360HeadG_Outgoing
  exact h0

private theorem s6Step360HeadBank_checked : compileHmrBankResizeLog .headroom s6Step360HeadGBefore ⟨s6Step360HeadFRow,s6Step360HeadGRow,s6Step360HeadFvRow,s6Step360HeadGvRow⟩ ⟨93,93,197,197⟩ [s6Step360HeadGFresh,s6Step360HeadFFresh,s6Step360HeadGvFresh,s6Step360HeadFvFresh]=
    some (s6Step360HeadFvAfter,⟨s6Step360HeadFOut,s6Step360HeadGOut,s6Step360HeadFvOut,s6Step360HeadGvOut⟩,(growRow 777 s6Step360HeadGFresh ++ (growRow 795 s6Step360HeadFFresh ++ (growRow 775 s6Step360HeadGvFresh ++ (growRow 776 s6Step360HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step360HeadBank_rows]
  rfl

private theorem s6Step360Front_checked : compileHmrSourceFrontLog s6Step360EntryFBefore s6Step360FrontBank 92 196 ⟨91,91,197,196⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step360FrontLog=some s6Step360FrontPlan := by
  have pairEq : s6Step360FrontPair=⟨s6Step360HeadFRow,s6Step360HeadGRow,s6Step360HeadFvRow,s6Step360HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step360FrontHead=⟨s6Step360ExitFRow,s6Step360ExitGRow,s6Step360ExitFvRow,s6Step360ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step360Add0A=s6Step360FrontHead.f.wires := by decide +kernel
  have gEq : s6Step360Add0B=s6Step360FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step360Add1A=s6Step360FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step360Add1B=s6Step360FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step360EntryFBefore s6Step360FrontBank 92 196 ⟨91,91,197,196⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step360FrontLog s6Step360FrontPlan
  · exact s6Step360Front_entry
  · exact s6Step360EntryBank_checked
  · exact s6Step360Front_sigma
  · rfl
  · exact s6Step360Front_branch
  · rfl
  · simpa only [s6Step360FrontPlan,pairEq] using s6Step360HeadBank_checked
  · simpa only [s6Step360FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step360F4_checked
  · exact s6Step360Counter_checked
  · rfl
  · simpa only [s6Step360FrontPlan,headEq] using s6Step360ExitBank_checked

private theorem s6Step360Complete_explicit_checked : compileHmrEarlyStepLog s6Step360EntryFBefore s6Step360FrontBank 92 196 ⟨91,91,197,196⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step360CompleteLog=some s6Step360CompletePlan := by
  let Q := s6Step360EarlyControlPlan
  have hq := s6Step360EarlyControl_plan_checked
  have fv1 : s6Step360CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step360CompleteOut.fv.payload[2]?.getD s6Step360CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step360CompleteOut.fv.payload[3]?.getD s6Step360CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step360CompleteOut.fv.payload[4]?.getD s6Step360CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step360EntryFBefore s6Step360EarlyControlArena s6Step360FrontBank 92 196 ⟨91,91,197,196⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step360CompleteLog s6Step360FrontPlan Q
    s6Step360Front_checked s6Step360Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step360Complete_owned s6Step360Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step360EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 s6Step360CompleteOut.fv.second (s6Step360CompleteOut.fv.payload[2]?.getD s6Step360CompleteOut.fv.sign) (s6Step360CompleteOut.fv.payload[3]?.getD s6Step360CompleteOut.fv.sign) (s6Step360CompleteOut.fv.payload[4]?.getD s6Step360CompleteOut.fv.sign) 778 60 s6Step360EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep360Arena : Arena := s6Step360EntryFBefore
def s6PrivateStep360Bank : WindowBank := s6Step360FrontBank
def s6PrivateStep360Spec : HmrSourceWalkStepLog := ⟨92,196,⟨91,91,197,196⟩,60,.early s6Step360CompleteLog⟩
def s6PrivateStep360Plan : HmrSourceStepPlan := .early s6Step360CompletePlan
theorem s6PrivateStep360_source : s6PrivateStep360Spec=s6ObservedLogs352[8] := rfl
theorem s6PrivateStep360_checked : compileHmrSourceStepLog s6PrivateStep360Arena s6PrivateStep360Bank
    s6PrivateStep360Spec.fgWidth s6PrivateStep360Spec.vWidth s6PrivateStep360Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 360 s6PrivateStep360Spec.need none s6PrivateStep360Spec.log=some s6PrivateStep360Plan := by
  change compileHmrSourceStepLog s6Step360EntryFBefore s6Step360FrontBank 92 196 ⟨91,91,197,196⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 360 60 none (.early s6Step360CompleteLog)=some (.early s6Step360CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 360<498)]
  rw [s6Step360Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
