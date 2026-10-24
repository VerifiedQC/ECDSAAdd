import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep357
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

private def s6Step359CompleteMoves : List (Wire × Wire) := []

private def s6Step359EarlyControlLog : HmrEarlyControlLog := ⟨[778, 876, 906, 892, 881],[805],[802],[843, 877, 792, 816, 819, 920],[]⟩

private def s6Step359FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [876], [], []],[[906], [778], [875], [848]],[[], [], [], []]⟩,[858],[825],[892],[881],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[892, 881, 805, 802]⟩

private def s6Step359CompleteLog : HmrEarlyStepLog := ⟨s6Step359FrontLog,s6Step359CompleteMoves,s6Step359EarlyControlLog⟩

private def s6Step359ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩

private def s6Step359ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848],776⟩

private def s6Step359ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],777⟩

private def s6Step359ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩

private def s6Step359FrontOut : WindowBank := ⟨s6Step359ExitFOut,s6Step359ExitGOut,s6Step359ExitFvOut,s6Step359ExitGvOut⟩

private def s6Step359CompleteOut : WindowBank := s6Step359FrontOut.repacked s6Step359CompleteMoves

private def s6Step359EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step359EarlyControlPositiveArena,[805],s6Step359EarlyControlEqualityArena,[802],⟨⟨858,false⟩,[⟨⟨805,false⟩,802⟩]⟩⟩

private def s6Step359EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,778⟩,⟨⟨772,false⟩,876⟩,⟨⟨771,false⟩,906⟩,⟨⟨770,false⟩,892⟩,⟨⟨769,false⟩,881⟩]⟩

private def s6Step359EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step359EarlyControlZeroArena,s6Step359EarlyControlZeroPlan,s6Step359EarlyControlClassPlan,s6Step359EarlyControlFlagArena,s6Step359EarlyControlFittedArena,s6Step359EarlyControlHistoryArena,s6Step359EarlyControlSigmaArena,s6Step359EarlyControlOutputArena,s6Step359EarlyControlLog⟩

private def s6Step359CounterWork : List Wire := [892, 881, 805, 802]

private theorem s6Step359Counter_bounded : s6Step359CounterWork.toFinset⊆arenaWires := by norm_num [s6Step359CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step359HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359CounterDuring : Arena := ⟨s6Step359HeadFvAfter.live∪s6Step359CounterWork.toFinset,Finset.union_subset s6Step359HeadFvAfter.bounded s6Step359Counter_bounded⟩

private def s6Step359EntryFFresh : List Wire := []

private def s6Step359EntryFvFresh : List Wire := []

private def s6Step359EntryGFresh : List Wire := [876]

private def s6Step359EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359EntryGvAfter : Arena := s6Step359EntryGAfter

private def s6Step359EntryGvFresh : List Wire := []

private def s6Step359ExitFExtra : List Wire := [778]

private def s6Step359ExitGExtra : List Wire := [876, 906]

private def s6Step359ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359ExitGvAfter : Arena := s6Step359ExitFAfter

private def s6Step359Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359Add0Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step359Add0_bounded : s6Step359Add0Work.toFinset⊆arenaWires := by
  have h : s6Step359Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step359Add0During : Arena := ⟨s6Step359Add0Arena.live∪s6Step359Add0Work.toFinset,Finset.union_subset s6Step359Add0Arena.bounded s6Step359Add0_bounded⟩

private def s6Step359Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359Add1Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step359Add1_bounded : s6Step359Add1Work.toFinset⊆arenaWires := by
  have h : s6Step359Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step359Add1During : Arena := ⟨s6Step359Add1Arena.live∪s6Step359Add1Work.toFinset,Finset.union_subset s6Step359Add1Arena.bounded s6Step359Add1_bounded⟩

private def s6Step359F4FlagArena : Arena := ⟨s6Step359HeadFvAfter.live∪{892},Finset.union_subset s6Step359HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step359F4Plan : HmrHybridF4Plan := ⟨s6Step359F4FlagArena,[892],s6Step359Add0Arena,[881],s6Step359Add0During,s6Step359Add0Work,s6Step359Add1During,s6Step359Add1Work⟩

private def s6Step359HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 778],795⟩

private def s6Step359HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848],776⟩

private def s6Step359HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 876, 906],777⟩

private def s6Step359HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩

private def s6Step359FrontHead : WindowBank := ⟨s6Step359HeadFOut,s6Step359HeadGOut,s6Step359HeadFvOut,s6Step359HeadGvOut⟩

private def s6Step359EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩

private def s6Step359EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩

private def s6Step359EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 876],777⟩

private def s6Step359EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩

private def s6Step359FrontPair : WindowBank := ⟨s6Step359EntryFOut,s6Step359EntryGOut,s6Step359EntryFvOut,s6Step359EntryGvOut⟩

private def s6Step359FrontSigmaArena : Arena := ⟨s6Step359EntryGvAfter.live∪{858},Finset.union_subset s6Step359EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step359HeadFFresh : List Wire := [778]

private def s6Step359HeadFvFresh : List Wire := [848]

private def s6Step359HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359HeadGFresh : List Wire := [906]

private def s6Step359HeadGvFresh : List Wire := [875]

private def s6Step359FrontPlan : HmrSourceFront := ⟨s6Step359EntryGvAfter,s6Step359FrontPair,(growRow 795 s6Step359EntryFFresh ++ (growRow 777 s6Step359EntryGFresh ++ (growRow 776 s6Step359EntryFvFresh ++ (growRow 775 s6Step359EntryGvFresh ++ [])))),s6Step359FrontSigmaArena,[858],s6Step359HeadGBefore,[825],
  s6Step359HeadFvAfter,s6Step359FrontHead,(growRow 777 s6Step359HeadGFresh ++ (growRow 795 s6Step359HeadFFresh ++ (growRow 775 s6Step359HeadGvFresh ++ (growRow 776 s6Step359HeadFvFresh ++ [])))),s6Step359F4Plan,s6Step359CounterDuring,s6Step359CounterWork,s6Step359ExitGvAfter,s6Step359FrontOut,(shrinkRow 777 s6Step359ExitGExtra ++ (shrinkRow 795 s6Step359ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step359CompletePlan : HmrEarlyStepPlan := ⟨s6Step359FrontPlan,s6Step359EarlyControlArena,s6Step359EarlyControlPlan,s6Step359CompleteMoves⟩

private theorem s6Step359Complete_apart : List.Disjoint (s6Step359CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [858, 825, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step359CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[858, 825, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step359Complete_owned : (s6Step359CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step359EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step359EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359Complete_repack : s6Step359ExitGvAfter.checkRepack s6Step359CompleteMoves=some s6Step359EarlyControlArena := by rfl

private theorem s6Step359EarlyControl_branchOwned : ([825] : List Wire).toFinset⊆s6Step359EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step359EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359EarlyControl_branch : compileHmrBranchRetirement s6Step359EarlyControlSigmaArena 825=some s6Step359EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step359EarlyControl_branchOwned
  · ext q
    simp [s6Step359EarlyControlOutputArena,s6Step359EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step359EarlyControl_classEqualityBorrow : s6Step359EarlyControlPositiveArena.checkBorrow (([858, 805] : List Wire).length-1) s6Step359EarlyControlLog.classWork=some s6Step359EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step359EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step359EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step359EarlyControlEqualityArena,s6Step359EarlyControlPositiveArena,s6Step359EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step359EarlyControl_classEqualityOwned : ([858, 805] : List Wire).toFinset⊆s6Step359EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step359EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359EarlyControl_classEquality : compileHmrEqualityLog s6Step359EarlyControlPositiveArena [858, 805] 0 s6Step359EarlyControlLog.classWork=some (s6Step359EarlyControlEqualityArena,s6Step359EarlyControlLog.classWork,s6Step359EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step359EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step359EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step359EarlyControl_classOwned : ([769, 881, 858] : List Wire).toFinset⊆s6Step359EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step359EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359EarlyControl_positiveBorrow : s6Step359EarlyControlZeroArena.checkBorrow (1) s6Step359EarlyControlLog.positiveWork=some s6Step359EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step359EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step359EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step359EarlyControlPositiveArena,s6Step359EarlyControlZeroArena,s6Step359EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step359EarlyControl_class : compileHmrSourceClassLog s6Step359EarlyControlZeroArena false 769 s6Step359EarlyControlZeroPlan.top 0 858 s6Step359EarlyControlLog.positiveWork s6Step359EarlyControlLog.classWork=some s6Step359EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step359EarlyControlClassPlan s6Step359EarlyControlZeroArena false 769 s6Step359EarlyControlZeroPlan.top 0 858
  constructor
  · decide +kernel
  · exact s6Step359EarlyControl_classOwned
  · exact s6Step359EarlyControl_positiveBorrow
  · exact s6Step359EarlyControl_classEquality

private theorem s6Step359EarlyControl_entryRecordOwned : ([825, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step359EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step359EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359EarlyControl_entrySigmaOwned : ([858, 254] : List Wire).toFinset⊆s6Step359EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step359EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359EarlyControl_fitBorrow : s6Step359EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step359EarlyControlLog.recordFresh=some s6Step359EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step359EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step359EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step359EarlyControlFittedArena,s6Step359EarlyControlFlagArena,s6Step359EarlyControlLog,arenaWires]

private theorem s6Step359EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step359EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step359EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359EarlyControl_fit : compileHmrRecordGrowLog s6Step359EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step359EarlyControlLog.recordFresh=some s6Step359EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step359EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step359EarlyControl_fitBorrow

private theorem s6Step359EarlyControl_flagsBorrow : s6Step359EarlyControlEqualityArena.checkBorrow (6) s6Step359EarlyControlLog.flagWork=some s6Step359EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step359EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step359EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step359EarlyControlFlagArena,s6Step359EarlyControlEqualityArena,s6Step359EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step359EarlyControl_flagsOwned : ([802, 253, 252, 251] : List Wire).toFinset⊆s6Step359EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step359EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359EarlyControl_flags : compileHmrFlagsLog s6Step359EarlyControlClassPlan.equalityArena s6Step359EarlyControlClassPlan.equality.top 253 252 251 s6Step359EarlyControlLog.flagWork=some s6Step359EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step359EarlyControl_flagsOwned⟩
  · exact s6Step359EarlyControl_flagsBorrow

private theorem s6Step359EarlyControl_historyBorrow : s6Step359EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step359EarlyControlLog.recordFresh=some s6Step359EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step359EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step359EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step359EarlyControlHistoryArena,s6Step359EarlyControlArena,s6Step359EarlyControlLog,arenaWires]

private theorem s6Step359EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step359EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step359EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359EarlyControl_history : compileHmrRecordGrowLog s6Step359EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step359EarlyControlLog.recordFresh=some s6Step359EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step359EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step359EarlyControl_historyBorrow

private theorem s6Step359EarlyControl_sigmaOwned : ([254, 858] : List Wire).toFinset⊆s6Step359EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step359EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359EarlyControl_sigmaReleaseOwned : ([858] : List Wire).toFinset⊆s6Step359EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step359EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359EarlyControl_sigmaRelease : s6Step359EarlyControlHistoryArena.release {858} (fun _ => false)=some s6Step359EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step359EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step359EarlyControlSigmaArena,s6Step359EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step359EarlyControl_sigma : compileHmrSigmaDropLog s6Step359EarlyControlHistoryArena false 0 0 254 858 []=some s6Step359EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step359EarlyControl_sigmaOwned⟩
  · exact s6Step359EarlyControl_sigmaRelease

private theorem s6Step359EarlyControl_zeroBorrow : s6Step359EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step359EarlyControlLog.zeroWork=some s6Step359EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step359EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step359EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step359EarlyControlZeroArena,s6Step359EarlyControlArena,s6Step359EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step359EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step359EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step359EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359EarlyControl_zero : compileHmrEqualityLog s6Step359EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step359EarlyControlLog.zeroWork=some (s6Step359EarlyControlZeroArena,s6Step359EarlyControlLog.zeroWork,s6Step359EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step359EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step359EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step359EarlyControl_logged : s6Step359EarlyControlPlan.Logged s6Step359EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 825 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step359EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step359EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step359EarlyControl_zero
  · exact s6Step359EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step359EarlyControl_flags
  · exact s6Step359EarlyControl_fit
  · exact s6Step359EarlyControl_history
  · exact s6Step359EarlyControl_sigma
  · exact s6Step359EarlyControl_branch

private theorem s6Step359EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step359EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 825 60 s6Step359EarlyControlLog=some s6Step359EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step359EarlyControlPlan s6Step359EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 254 253 252 251 825 60 s6Step359EarlyControl_logged

private def s6Step359EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩

private def s6Step359EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩

private def s6Step359EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],777⟩

private def s6Step359EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩

private def s6Step359FrontBank : WindowBank := ⟨s6Step359EntryFRow,s6Step359EntryGRow,s6Step359EntryFvRow,s6Step359EntryGvRow⟩

private def s6Step359Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 778, 795]

private def s6Step359Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 876, 906, 777]

private def s6Step359Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 776]

private def s6Step359Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 775]

private theorem s6Step359Counter_apart : Disjoint s6Step359HeadFvAfter.live s6Step359CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step359HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359Counter_borrowed : s6Step359HeadFvAfter.checkBorrow 4 s6Step359CounterWork=some s6Step359CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step359HeadFvAfter s6Step359CounterDuring s6Step359CounterWork.toFinset s6Step359Counter_bounded s6Step359Counter_apart rfl

private theorem s6Step359Counter_owned : (858::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step359HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step359HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359Counter_checked : compileHmrCounterStepLog s6Step359HeadFvAfter true 858 [774, 773, 772, 771, 770, 769] s6Step359CounterWork=some s6Step359CounterDuring := by
  have owned : ∀q∈858::[774, 773, 772, 771, 770, 769],q∈s6Step359HeadFvAfter.live := fun q hq => s6Step359Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step359Counter_borrowed

private def s6Step359EntryFAfter : Arena := s6Step359EntryFBefore

private theorem s6Step359EntryBank_incomingDistinct : ([s6Step359EntryFRow,s6Step359EntryGRow,s6Step359EntryFvRow,s6Step359EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359EntryF_Incoming : rowsOwned s6Step359EntryFBefore [s6Step359EntryFRow,s6Step359EntryGRow,s6Step359EntryFvRow,s6Step359EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step359EntryFRow,s6Step359EntryGRow,s6Step359EntryFvRow,s6Step359EntryGvRow] 0 s6Step359EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step359EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step359EntryBank_outgoingOwned : rowsOwned s6Step359EntryGvAfter [s6Step359EntryFOut,s6Step359EntryGOut,s6Step359EntryFvOut,s6Step359EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step359EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step359EntryF_Outgoing : rowsOwned s6Step359EntryGvAfter [s6Step359EntryFOut,s6Step359EntryGOut,s6Step359EntryFvOut,s6Step359EntryGvOut] :=
  hmrRows_owned_drop s6Step359EntryGvAfter [s6Step359EntryFOut,s6Step359EntryGOut,s6Step359EntryFvOut,s6Step359EntryGvOut] 0 s6Step359EntryBank_outgoingOwned

private theorem s6Step359EntryF_distinct : (s6Step359EntryFRow.sign::s6Step359EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359EntryF_owned : (s6Step359EntryFRow.sign::s6Step359EntryFRow.payload).toFinset⊆s6Step359EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step359EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359EntryF_reserved : s6Step359EntryFBefore.reserve s6Step359EntryFFresh.toFinset=some s6Step359EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step359EntryFFresh,arenaWires]
  · norm_num [s6Step359EntryFBefore,s6Step359EntryFFresh,arenaWires]
  · simp only [s6Step359EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step359EntryF_checked : planRowResizeLog s6Step359EntryFBefore s6Step359EntryFRow 92 s6Step359EntryFFresh=
    some (s6Step359EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩,growRow 795 s6Step359EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step359EntryFBefore s6Step359EntryFAfter s6Step359EntryFRow 92 s6Step359EntryFFresh
    s6Step359EntryF_distinct s6Step359EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step359EntryF_reserved
  have rowEq : WindowRow.mk (s6Step359EntryFRow.payload++s6Step359EntryFFresh) s6Step359EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step359EntryFvAfter : Arena := s6Step359EntryGAfter

private def s6Step359EntryFvBefore : Arena := s6Step359EntryGAfter

private theorem s6Step359EntryFv_Incoming : rowsOwned s6Step359EntryFvBefore [s6Step359EntryFvRow,s6Step359EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step359EntryFRow,s6Step359EntryGRow,s6Step359EntryFvRow,s6Step359EntryGvRow] 2 s6Step359EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step359EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step359EntryFv_Outgoing : rowsOwned s6Step359EntryGvAfter [s6Step359EntryFvOut,s6Step359EntryGvOut] :=
  hmrRows_owned_drop s6Step359EntryGvAfter [s6Step359EntryFOut,s6Step359EntryGOut,s6Step359EntryFvOut,s6Step359EntryGvOut] 2 s6Step359EntryBank_outgoingOwned

private theorem s6Step359EntryFv_distinct : (s6Step359EntryFvRow.sign::s6Step359EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359EntryFv_owned : (s6Step359EntryFvRow.sign::s6Step359EntryFvRow.payload).toFinset⊆s6Step359EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step359EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359EntryFv_reserved : s6Step359EntryFvBefore.reserve s6Step359EntryFvFresh.toFinset=some s6Step359EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step359EntryFvFresh,arenaWires]
  · norm_num [s6Step359EntryFvBefore,s6Step359EntryGAfter,s6Step359EntryFvFresh,arenaWires]
  · simp only [s6Step359EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step359EntryFv_checked : planRowResizeLog s6Step359EntryFvBefore s6Step359EntryFvRow 195 s6Step359EntryFvFresh=
    some (s6Step359EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩,growRow 776 s6Step359EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step359EntryFvBefore s6Step359EntryFvAfter s6Step359EntryFvRow 195 s6Step359EntryFvFresh
    s6Step359EntryFv_distinct s6Step359EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step359EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step359EntryFvRow.payload++s6Step359EntryFvFresh) s6Step359EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step359EntryGBefore : Arena := s6Step359EntryFBefore

private theorem s6Step359EntryG_Incoming : rowsOwned s6Step359EntryGBefore [s6Step359EntryGRow,s6Step359EntryFvRow,s6Step359EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step359EntryFRow,s6Step359EntryGRow,s6Step359EntryFvRow,s6Step359EntryGvRow] 1 s6Step359EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step359EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step359EntryG_Outgoing : rowsOwned s6Step359EntryGvAfter [s6Step359EntryGOut,s6Step359EntryFvOut,s6Step359EntryGvOut] :=
  hmrRows_owned_drop s6Step359EntryGvAfter [s6Step359EntryFOut,s6Step359EntryGOut,s6Step359EntryFvOut,s6Step359EntryGvOut] 1 s6Step359EntryBank_outgoingOwned

private theorem s6Step359EntryG_distinct : (s6Step359EntryGRow.sign::s6Step359EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359EntryG_owned : (s6Step359EntryGRow.sign::s6Step359EntryGRow.payload).toFinset⊆s6Step359EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step359EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359EntryG_reserved : s6Step359EntryGBefore.reserve s6Step359EntryGFresh.toFinset=some s6Step359EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step359EntryGFresh,arenaWires]
  · norm_num [s6Step359EntryGBefore,s6Step359EntryFBefore,s6Step359EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step359EntryGAfter,s6Step359EntryGBefore,s6Step359EntryFBefore,s6Step359EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step359EntryG_checked : planRowResizeLog s6Step359EntryGBefore s6Step359EntryGRow 92 s6Step359EntryGFresh=
    some (s6Step359EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 876],777⟩,growRow 777 s6Step359EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step359EntryGBefore s6Step359EntryGAfter s6Step359EntryGRow 92 s6Step359EntryGFresh
    s6Step359EntryG_distinct s6Step359EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step359EntryG_reserved
  have rowEq : WindowRow.mk (s6Step359EntryGRow.payload++s6Step359EntryGFresh) s6Step359EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 876],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step359EntryGvBefore : Arena := s6Step359EntryGAfter

private theorem s6Step359EntryGv_Incoming : rowsOwned s6Step359EntryGvBefore [s6Step359EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step359EntryFRow,s6Step359EntryGRow,s6Step359EntryFvRow,s6Step359EntryGvRow] 3 s6Step359EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step359EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step359EntryGv_Outgoing : rowsOwned s6Step359EntryGvAfter [s6Step359EntryGvOut] :=
  hmrRows_owned_drop s6Step359EntryGvAfter [s6Step359EntryFOut,s6Step359EntryGOut,s6Step359EntryFvOut,s6Step359EntryGvOut] 3 s6Step359EntryBank_outgoingOwned

private theorem s6Step359EntryGv_distinct : (s6Step359EntryGvRow.sign::s6Step359EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359EntryGv_owned : (s6Step359EntryGvRow.sign::s6Step359EntryGvRow.payload).toFinset⊆s6Step359EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step359EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359EntryGv_reserved : s6Step359EntryGvBefore.reserve s6Step359EntryGvFresh.toFinset=some s6Step359EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step359EntryGvFresh,arenaWires]
  · norm_num [s6Step359EntryGvBefore,s6Step359EntryGAfter,s6Step359EntryGvFresh,arenaWires]
  · simp only [s6Step359EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step359EntryGv_checked : planRowResizeLog s6Step359EntryGvBefore s6Step359EntryGvRow 195 s6Step359EntryGvFresh=
    some (s6Step359EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩,growRow 775 s6Step359EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step359EntryGvBefore s6Step359EntryGvAfter s6Step359EntryGvRow 195 s6Step359EntryGvFresh
    s6Step359EntryGv_distinct s6Step359EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step359EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step359EntryGvRow.payload++s6Step359EntryGvFresh) s6Step359EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step359EntryBank_rows : planWindowRowsLog s6Step359EntryFBefore [(s6Step359EntryFRow,92),(s6Step359EntryGRow,92),(s6Step359EntryFvRow,195),(s6Step359EntryGvRow,195)] [s6Step359EntryFFresh,s6Step359EntryGFresh,s6Step359EntryFvFresh,s6Step359EntryGvFresh]=
    some (s6Step359EntryGvAfter,[s6Step359EntryFOut,s6Step359EntryGOut,s6Step359EntryFvOut,s6Step359EntryGvOut],(growRow 795 s6Step359EntryFFresh ++ (growRow 777 s6Step359EntryGFresh ++ (growRow 776 s6Step359EntryFvFresh ++ (growRow 775 s6Step359EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step359EntryGvAfter [] []=some (s6Step359EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step359EntryGvBefore s6Step359EntryGvAfter s6Step359EntryGvAfter
    s6Step359EntryGvRow s6Step359EntryGvOut 195 s6Step359EntryGvFresh [] [] []
    (growRow 775 s6Step359EntryGvFresh) ([]) s6Step359EntryGv_Incoming s6Step359EntryGv_checked h4 s6Step359EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step359EntryFvBefore s6Step359EntryFvAfter s6Step359EntryGvAfter
    s6Step359EntryFvRow s6Step359EntryFvOut 195 s6Step359EntryFvFresh [(s6Step359EntryGvRow,195)] [s6Step359EntryGvFresh] [s6Step359EntryGvOut]
    (growRow 776 s6Step359EntryFvFresh) ((growRow 775 s6Step359EntryGvFresh ++ [])) s6Step359EntryFv_Incoming s6Step359EntryFv_checked h3 s6Step359EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step359EntryGBefore s6Step359EntryGAfter s6Step359EntryGvAfter
    s6Step359EntryGRow s6Step359EntryGOut 92 s6Step359EntryGFresh [(s6Step359EntryFvRow,195),(s6Step359EntryGvRow,195)] [s6Step359EntryFvFresh,s6Step359EntryGvFresh] [s6Step359EntryFvOut,s6Step359EntryGvOut]
    (growRow 777 s6Step359EntryGFresh) ((growRow 776 s6Step359EntryFvFresh ++ (growRow 775 s6Step359EntryGvFresh ++ []))) s6Step359EntryG_Incoming s6Step359EntryG_checked h2 s6Step359EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step359EntryFBefore s6Step359EntryFAfter s6Step359EntryGvAfter
    s6Step359EntryFRow s6Step359EntryFOut 92 s6Step359EntryFFresh [(s6Step359EntryGRow,92),(s6Step359EntryFvRow,195),(s6Step359EntryGvRow,195)] [s6Step359EntryGFresh,s6Step359EntryFvFresh,s6Step359EntryGvFresh] [s6Step359EntryGOut,s6Step359EntryFvOut,s6Step359EntryGvOut]
    (growRow 795 s6Step359EntryFFresh) ((growRow 777 s6Step359EntryGFresh ++ (growRow 776 s6Step359EntryFvFresh ++ (growRow 775 s6Step359EntryGvFresh ++ [])))) s6Step359EntryF_Incoming s6Step359EntryF_checked h1 s6Step359EntryF_Outgoing
  exact h0

private theorem s6Step359EntryBank_checked : compileHmrBankResizeLog .entry s6Step359EntryFBefore ⟨s6Step359EntryFRow,s6Step359EntryGRow,s6Step359EntryFvRow,s6Step359EntryGvRow⟩ ⟨92,92,195,195⟩ [s6Step359EntryFFresh,s6Step359EntryGFresh,s6Step359EntryFvFresh,s6Step359EntryGvFresh]=
    some (s6Step359EntryGvAfter,⟨s6Step359EntryFOut,s6Step359EntryGOut,s6Step359EntryFvOut,s6Step359EntryGvOut⟩,(growRow 795 s6Step359EntryFFresh ++ (growRow 777 s6Step359EntryGFresh ++ (growRow 776 s6Step359EntryFvFresh ++ (growRow 775 s6Step359EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step359EntryBank_rows]
  rfl

private def s6Step359ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359ExitFBefore : Arena := s6Step359ExitGAfter

private def s6Step359ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 778],795⟩

private def s6Step359ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848],776⟩

private def s6Step359ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 876, 906],777⟩

private def s6Step359ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩

private theorem s6Step359ExitBank_incomingDistinct : ([s6Step359ExitGRow,s6Step359ExitFRow,s6Step359ExitFvRow,s6Step359ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359ExitF_Incoming : rowsOwned s6Step359ExitFBefore [s6Step359ExitFRow,s6Step359ExitFvRow,s6Step359ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step359ExitGRow,s6Step359ExitFRow,s6Step359ExitFvRow,s6Step359ExitGvRow] 1 s6Step359ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step359ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step359ExitBank_outgoingOwned : rowsOwned s6Step359ExitGvAfter [s6Step359ExitGOut,s6Step359ExitFOut,s6Step359ExitFvOut,s6Step359ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step359ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step359ExitF_Outgoing : rowsOwned s6Step359ExitGvAfter [s6Step359ExitFOut,s6Step359ExitFvOut,s6Step359ExitGvOut] :=
  hmrRows_owned_drop s6Step359ExitGvAfter [s6Step359ExitGOut,s6Step359ExitFOut,s6Step359ExitFvOut,s6Step359ExitGvOut] 1 s6Step359ExitBank_outgoingOwned

private theorem s6Step359ExitF_distinct : (s6Step359ExitFRow.sign::s6Step359ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359ExitF_owned : (s6Step359ExitFRow.sign::s6Step359ExitFRow.payload).toFinset⊆s6Step359ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step359ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359ExitF_retired : s6Step359ExitFBefore.retireSet s6Step359ExitFExtra.toFinset=s6Step359ExitFAfter := by
  unfold Arena.retireSet s6Step359ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step359ExitFBefore,s6Step359ExitGAfter,s6Step359ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step359ExitF_checked : planRowResizeLog s6Step359ExitFBefore s6Step359ExitFRow 92 []=
    some (s6Step359ExitFAfter,s6Step359ExitFOut,shrinkRow 795 s6Step359ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step359ExitFBefore s6Step359ExitFRow 92 s6Step359ExitF_distinct s6Step359ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step359ExitFRow.payload.take 92) s6Step359ExitFRow.sign=s6Step359ExitFOut := by decide +kernel
  have hi : s6Step359ExitFRow.payload.drop 92=s6Step359ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step359ExitF_retired] at result
  exact result

private def s6Step359ExitFvAfter : Arena := s6Step359ExitFAfter

private def s6Step359ExitFvBefore : Arena := s6Step359ExitFAfter

private theorem s6Step359ExitFv_Incoming : rowsOwned s6Step359ExitFvBefore [s6Step359ExitFvRow,s6Step359ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step359ExitGRow,s6Step359ExitFRow,s6Step359ExitFvRow,s6Step359ExitGvRow] 2 s6Step359ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step359ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step359ExitFv_Outgoing : rowsOwned s6Step359ExitGvAfter [s6Step359ExitFvOut,s6Step359ExitGvOut] :=
  hmrRows_owned_drop s6Step359ExitGvAfter [s6Step359ExitGOut,s6Step359ExitFOut,s6Step359ExitFvOut,s6Step359ExitGvOut] 2 s6Step359ExitBank_outgoingOwned

private theorem s6Step359ExitFv_distinct : (s6Step359ExitFvRow.sign::s6Step359ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359ExitFv_owned : (s6Step359ExitFvRow.sign::s6Step359ExitFvRow.payload).toFinset⊆s6Step359ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step359ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359ExitFv_reserved : s6Step359ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step359ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step359ExitFv_checked : planRowResizeLog s6Step359ExitFvBefore s6Step359ExitFvRow 196 []=
    some (s6Step359ExitFvAfter,s6Step359ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step359ExitFvBefore s6Step359ExitFvAfter s6Step359ExitFvRow 196 []
    s6Step359ExitFv_distinct s6Step359ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step359ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step359ExitFvRow.payload++[]) s6Step359ExitFvRow.sign=s6Step359ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step359ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step359ExitG_Incoming : rowsOwned s6Step359ExitGBefore [s6Step359ExitGRow,s6Step359ExitFRow,s6Step359ExitFvRow,s6Step359ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step359ExitGRow,s6Step359ExitFRow,s6Step359ExitFvRow,s6Step359ExitGvRow] 0 s6Step359ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step359ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step359ExitG_Outgoing : rowsOwned s6Step359ExitGvAfter [s6Step359ExitGOut,s6Step359ExitFOut,s6Step359ExitFvOut,s6Step359ExitGvOut] :=
  hmrRows_owned_drop s6Step359ExitGvAfter [s6Step359ExitGOut,s6Step359ExitFOut,s6Step359ExitFvOut,s6Step359ExitGvOut] 0 s6Step359ExitBank_outgoingOwned

private theorem s6Step359ExitG_distinct : (s6Step359ExitGRow.sign::s6Step359ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359ExitG_owned : (s6Step359ExitGRow.sign::s6Step359ExitGRow.payload).toFinset⊆s6Step359ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step359ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359ExitG_retired : s6Step359ExitGBefore.retireSet s6Step359ExitGExtra.toFinset=s6Step359ExitGAfter := by
  unfold Arena.retireSet s6Step359ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step359ExitGBefore,s6Step359ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step359ExitG_checked : planRowResizeLog s6Step359ExitGBefore s6Step359ExitGRow 91 []=
    some (s6Step359ExitGAfter,s6Step359ExitGOut,shrinkRow 777 s6Step359ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step359ExitGBefore s6Step359ExitGRow 91 s6Step359ExitG_distinct s6Step359ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step359ExitGRow.payload.take 91) s6Step359ExitGRow.sign=s6Step359ExitGOut := by decide +kernel
  have hi : s6Step359ExitGRow.payload.drop 91=s6Step359ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step359ExitG_retired] at result
  exact result

private def s6Step359ExitGvBefore : Arena := s6Step359ExitFAfter

private theorem s6Step359ExitGv_Incoming : rowsOwned s6Step359ExitGvBefore [s6Step359ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step359ExitGRow,s6Step359ExitFRow,s6Step359ExitFvRow,s6Step359ExitGvRow] 3 s6Step359ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step359ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step359ExitGv_Outgoing : rowsOwned s6Step359ExitGvAfter [s6Step359ExitGvOut] :=
  hmrRows_owned_drop s6Step359ExitGvAfter [s6Step359ExitGOut,s6Step359ExitFOut,s6Step359ExitFvOut,s6Step359ExitGvOut] 3 s6Step359ExitBank_outgoingOwned

private theorem s6Step359ExitGv_distinct : (s6Step359ExitGvRow.sign::s6Step359ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359ExitGv_owned : (s6Step359ExitGvRow.sign::s6Step359ExitGvRow.payload).toFinset⊆s6Step359ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step359ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<876) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359ExitGv_reserved : s6Step359ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step359ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step359ExitGv_checked : planRowResizeLog s6Step359ExitGvBefore s6Step359ExitGvRow 196 []=
    some (s6Step359ExitGvAfter,s6Step359ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step359ExitGvBefore s6Step359ExitGvAfter s6Step359ExitGvRow 196 []
    s6Step359ExitGv_distinct s6Step359ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step359ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step359ExitGvRow.payload++[]) s6Step359ExitGvRow.sign=s6Step359ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step359ExitBank_rows : planWindowRowsLog s6Step359ExitGBefore [(s6Step359ExitGRow,91),(s6Step359ExitFRow,92),(s6Step359ExitFvRow,196),(s6Step359ExitGvRow,196)] [[],[],[],[]]=
    some (s6Step359ExitGvAfter,[s6Step359ExitGOut,s6Step359ExitFOut,s6Step359ExitFvOut,s6Step359ExitGvOut],(shrinkRow 777 s6Step359ExitGExtra ++ (shrinkRow 795 s6Step359ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step359ExitGvAfter [] []=some (s6Step359ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step359ExitGvBefore s6Step359ExitGvAfter s6Step359ExitGvAfter
    s6Step359ExitGvRow s6Step359ExitGvOut 196 [] [] [] []
    (growRow 775 []) ([]) s6Step359ExitGv_Incoming s6Step359ExitGv_checked h4 s6Step359ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step359ExitFvBefore s6Step359ExitFvAfter s6Step359ExitGvAfter
    s6Step359ExitFvRow s6Step359ExitFvOut 196 [] [(s6Step359ExitGvRow,196)] [[]] [s6Step359ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step359ExitFv_Incoming s6Step359ExitFv_checked h3 s6Step359ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step359ExitFBefore s6Step359ExitFAfter s6Step359ExitGvAfter
    s6Step359ExitFRow s6Step359ExitFOut 92 [] [(s6Step359ExitFvRow,196),(s6Step359ExitGvRow,196)] [[],[]] [s6Step359ExitFvOut,s6Step359ExitGvOut]
    (shrinkRow 795 s6Step359ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step359ExitF_Incoming s6Step359ExitF_checked h2 s6Step359ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step359ExitGBefore s6Step359ExitGAfter s6Step359ExitGvAfter
    s6Step359ExitGRow s6Step359ExitGOut 91 [] [(s6Step359ExitFRow,92),(s6Step359ExitFvRow,196),(s6Step359ExitGvRow,196)] [[],[],[]] [s6Step359ExitFOut,s6Step359ExitFvOut,s6Step359ExitGvOut]
    (shrinkRow 777 s6Step359ExitGExtra) ((shrinkRow 795 s6Step359ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step359ExitG_Incoming s6Step359ExitG_checked h1 s6Step359ExitG_Outgoing
  exact h0

private theorem s6Step359ExitBank_checked : compileHmrBankResizeLog .exit s6Step359ExitGBefore ⟨s6Step359ExitFRow,s6Step359ExitGRow,s6Step359ExitFvRow,s6Step359ExitGvRow⟩ ⟨92,91,196,196⟩ [[],[],[],[]]=
    some (s6Step359ExitGvAfter,⟨s6Step359ExitFOut,s6Step359ExitGOut,s6Step359ExitFvOut,s6Step359ExitGvOut⟩,(shrinkRow 777 s6Step359ExitGExtra ++ (shrinkRow 795 s6Step359ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step359ExitBank_rows]
  rfl

private theorem s6Step359Add0_apart : Disjoint s6Step359Add0Arena.live s6Step359Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step359Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359Add0_card : s6Step359Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step359Add0_borrowed : s6Step359Add0Arena.checkBorrow (hmrHybridCount s6Step359Add0Arena s6Step359Add0B.length) s6Step359Add0Work=some s6Step359Add0During := by
  have len : s6Step359Add0Work.length=hmrHybridCount s6Step359Add0Arena s6Step359Add0B.length := by
    rw [hmrHybridCount,s6Step359Add0_card]
    decide +kernel
  have nd : s6Step359Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step359Add0Arena s6Step359Add0During s6Step359Add0Work.toFinset s6Step359Add0_bounded s6Step359Add0_apart rfl

private theorem s6Step359Add0_distinct : (892::825::881::(s6Step359Add0A++s6Step359Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359Add0_owned : (892::825::881::(s6Step359Add0A++s6Step359Add0B)).toFinset⊆s6Step359Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step359Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359Add0_checked : compileHmrHybridCinLog s6Step359Add0Arena 825 892 881 s6Step359Add0A s6Step359Add0B s6Step359Add0Work=some s6Step359Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step359Add0Arena s6Step359Add0During 825 892 881 s6Step359Add0A s6Step359Add0B s6Step359Add0Work
    (by decide +kernel) (by decide +kernel) s6Step359Add0_distinct
    (fun q hq => s6Step359Add0_owned (List.mem_toFinset.mpr hq)) s6Step359Add0_borrowed

private theorem s6Step359Add1_apart : Disjoint s6Step359Add1Arena.live s6Step359Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step359Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359Add1_card : s6Step359Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step359Add1_borrowed : s6Step359Add1Arena.checkBorrow (hmrHybridCount s6Step359Add1Arena s6Step359Add1B.length) s6Step359Add1Work=some s6Step359Add1During := by
  have len : s6Step359Add1Work.length=hmrHybridCount s6Step359Add1Arena s6Step359Add1B.length := by
    rw [hmrHybridCount,s6Step359Add1_card]
    decide +kernel
  have nd : s6Step359Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step359Add1Arena s6Step359Add1During s6Step359Add1Work.toFinset s6Step359Add1_bounded s6Step359Add1_apart rfl

private theorem s6Step359Add1_distinct : (892::825::881::(s6Step359Add1A++s6Step359Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359Add1_owned : (892::825::881::(s6Step359Add1A++s6Step359Add1B)).toFinset⊆s6Step359Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step359Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359Add1_checked : compileHmrHybridCinLog s6Step359Add1Arena 825 892 881 s6Step359Add1A s6Step359Add1B s6Step359Add1Work=some s6Step359Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step359Add1Arena s6Step359Add1During 825 892 881 s6Step359Add1A s6Step359Add1B s6Step359Add1Work
    (by decide +kernel) (by decide +kernel) s6Step359Add1_distinct
    (fun q hq => s6Step359Add1_owned (List.mem_toFinset.mpr hq)) s6Step359Add1_borrowed

private theorem s6Step359F4_apart : Disjoint (s6Step359Add0A++s6Step359Add0B).toFinset (s6Step359Add1A++s6Step359Add1B).toFinset := by
  have nd : ((s6Step359Add0A++s6Step359Add0B)++(s6Step359Add1A++s6Step359Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step359F4_carry : s6Step359F4FlagArena.checkBorrow 1 [881]=some s6Step359Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step359F4FlagArena,s6Step359HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step359F4FlagArena,s6Step359HeadFvAfter,s6Step359Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step359F4_distinct : (858::825::892::881::((s6Step359Add0A++s6Step359Add1A)++(s6Step359Add0B++s6Step359Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359F4_flag : s6Step359HeadFvAfter.checkBorrow 1 [892]=some s6Step359F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step359HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step359F4_owned : (858::825::((s6Step359Add0A++s6Step359Add1A)++(s6Step359Add0B++s6Step359Add1B))).toFinset⊆s6Step359HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step359HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359F4_checked : compileHmrHybridF4Log s6Step359HeadFvAfter 858 825 s6Step359Add0A s6Step359Add0B s6Step359Add1A s6Step359Add1B [892] [881] s6Step359Add0Work s6Step359Add1Work=some s6Step359F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step359HeadFvAfter s6Step359F4FlagArena s6Step359Add0Arena s6Step359Add0During s6Step359Add1During 858 825
    s6Step359Add0A s6Step359Add0B s6Step359Add1A s6Step359Add1B [892] [881] s6Step359Add0Work s6Step359Add1Work
    (fun q hq => s6Step359F4_owned (List.mem_toFinset.mpr hq)) s6Step359F4_flag s6Step359F4_carry
    s6Step359F4_distinct s6Step359F4_apart s6Step359Add0_checked s6Step359Add1_checked

private theorem s6Step359Front_branch : s6Step359FrontSigmaArena.checkBorrow 1 [825]=some s6Step359HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step359FrontSigmaArena,s6Step359EntryGvAfter,s6Step359EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step359FrontSigmaArena,s6Step359EntryGvAfter,s6Step359EntryGAfter,s6Step359HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step359Front_entry : HmrFrontEntryValid s6Step359EntryFBefore s6Step359FrontBank 92 195 ⟨92,91,196,196⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step359FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step359EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step359EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step359FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step359Front_sigma : s6Step359EntryGvAfter.checkBorrow 1 [858]=some s6Step359FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step359EntryGvAfter,s6Step359EntryGAfter,arenaWires]
  · rfl

private def s6Step359HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359HeadFBefore : Arena := s6Step359HeadGAfter

private def s6Step359HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347],795⟩

private def s6Step359HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779],776⟩

private def s6Step359HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 876],777⟩

private def s6Step359HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789],775⟩

private theorem s6Step359HeadBank_incomingDistinct : ([s6Step359HeadGRow,s6Step359HeadFRow,s6Step359HeadGvRow,s6Step359HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359HeadF_Incoming : rowsOwned s6Step359HeadFBefore [s6Step359HeadFRow,s6Step359HeadGvRow,s6Step359HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step359HeadGRow,s6Step359HeadFRow,s6Step359HeadGvRow,s6Step359HeadFvRow] 1 s6Step359HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step359HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step359HeadBank_outgoingOwned : rowsOwned s6Step359HeadFvAfter [s6Step359HeadGOut,s6Step359HeadFOut,s6Step359HeadGvOut,s6Step359HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step359HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step359HeadF_Outgoing : rowsOwned s6Step359HeadFvAfter [s6Step359HeadFOut,s6Step359HeadGvOut,s6Step359HeadFvOut] :=
  hmrRows_owned_drop s6Step359HeadFvAfter [s6Step359HeadGOut,s6Step359HeadFOut,s6Step359HeadGvOut,s6Step359HeadFvOut] 1 s6Step359HeadBank_outgoingOwned

private theorem s6Step359HeadF_distinct : (s6Step359HeadFRow.sign::s6Step359HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359HeadF_owned : (s6Step359HeadFRow.sign::s6Step359HeadFRow.payload).toFinset⊆s6Step359HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step359HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359HeadF_reserved : s6Step359HeadFBefore.reserve s6Step359HeadFFresh.toFinset=some s6Step359HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step359HeadFFresh,arenaWires]
  · norm_num [s6Step359HeadFBefore,s6Step359HeadGAfter,s6Step359HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step359HeadFAfter,s6Step359HeadFBefore,s6Step359HeadGAfter,s6Step359HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step359HeadF_checked : planRowResizeLog s6Step359HeadFBefore s6Step359HeadFRow 93 s6Step359HeadFFresh=
    some (s6Step359HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 778],795⟩,growRow 795 s6Step359HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step359HeadFBefore s6Step359HeadFAfter s6Step359HeadFRow 93 s6Step359HeadFFresh
    s6Step359HeadF_distinct s6Step359HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step359HeadF_reserved
  have rowEq : WindowRow.mk (s6Step359HeadFRow.payload++s6Step359HeadFFresh) s6Step359HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 778],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step359HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step359HeadFvBefore : Arena := s6Step359HeadGvAfter

private theorem s6Step359HeadFv_Incoming : rowsOwned s6Step359HeadFvBefore [s6Step359HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step359HeadGRow,s6Step359HeadFRow,s6Step359HeadGvRow,s6Step359HeadFvRow] 3 s6Step359HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step359HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step359HeadFv_Outgoing : rowsOwned s6Step359HeadFvAfter [s6Step359HeadFvOut] :=
  hmrRows_owned_drop s6Step359HeadFvAfter [s6Step359HeadGOut,s6Step359HeadFOut,s6Step359HeadGvOut,s6Step359HeadFvOut] 3 s6Step359HeadBank_outgoingOwned

private theorem s6Step359HeadFv_distinct : (s6Step359HeadFvRow.sign::s6Step359HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359HeadFv_owned : (s6Step359HeadFvRow.sign::s6Step359HeadFvRow.payload).toFinset⊆s6Step359HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step359HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359HeadFv_reserved : s6Step359HeadFvBefore.reserve s6Step359HeadFvFresh.toFinset=some s6Step359HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step359HeadFvFresh,arenaWires]
  · norm_num [s6Step359HeadFvBefore,s6Step359HeadGvAfter,s6Step359HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step359HeadFvAfter,s6Step359HeadFvBefore,s6Step359HeadGvAfter,s6Step359HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step359HeadFv_checked : planRowResizeLog s6Step359HeadFvBefore s6Step359HeadFvRow 196 s6Step359HeadFvFresh=
    some (s6Step359HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848],776⟩,growRow 776 s6Step359HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step359HeadFvBefore s6Step359HeadFvAfter s6Step359HeadFvRow 196 s6Step359HeadFvFresh
    s6Step359HeadFv_distinct s6Step359HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step359HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step359HeadFvRow.payload++s6Step359HeadFvFresh) s6Step359HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step359HeadG_Incoming : rowsOwned s6Step359HeadGBefore [s6Step359HeadGRow,s6Step359HeadFRow,s6Step359HeadGvRow,s6Step359HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step359HeadGRow,s6Step359HeadFRow,s6Step359HeadGvRow,s6Step359HeadFvRow] 0 s6Step359HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step359HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step359HeadG_Outgoing : rowsOwned s6Step359HeadFvAfter [s6Step359HeadGOut,s6Step359HeadFOut,s6Step359HeadGvOut,s6Step359HeadFvOut] :=
  hmrRows_owned_drop s6Step359HeadFvAfter [s6Step359HeadGOut,s6Step359HeadFOut,s6Step359HeadGvOut,s6Step359HeadFvOut] 0 s6Step359HeadBank_outgoingOwned

private theorem s6Step359HeadG_distinct : (s6Step359HeadGRow.sign::s6Step359HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359HeadG_owned : (s6Step359HeadGRow.sign::s6Step359HeadGRow.payload).toFinset⊆s6Step359HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step359HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359HeadG_reserved : s6Step359HeadGBefore.reserve s6Step359HeadGFresh.toFinset=some s6Step359HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step359HeadGFresh,arenaWires]
  · norm_num [s6Step359HeadGBefore,s6Step359HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step359HeadGAfter,s6Step359HeadGBefore,s6Step359HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step359HeadG_checked : planRowResizeLog s6Step359HeadGBefore s6Step359HeadGRow 93 s6Step359HeadGFresh=
    some (s6Step359HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 876, 906],777⟩,growRow 777 s6Step359HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step359HeadGBefore s6Step359HeadGAfter s6Step359HeadGRow 93 s6Step359HeadGFresh
    s6Step359HeadG_distinct s6Step359HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step359HeadG_reserved
  have rowEq : WindowRow.mk (s6Step359HeadGRow.payload++s6Step359HeadGFresh) s6Step359HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 876, 906],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step359HeadGvBefore : Arena := s6Step359HeadFAfter

private theorem s6Step359HeadGv_Incoming : rowsOwned s6Step359HeadGvBefore [s6Step359HeadGvRow,s6Step359HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step359HeadGRow,s6Step359HeadFRow,s6Step359HeadGvRow,s6Step359HeadFvRow] 2 s6Step359HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step359HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step359HeadGv_Outgoing : rowsOwned s6Step359HeadFvAfter [s6Step359HeadGvOut,s6Step359HeadFvOut] :=
  hmrRows_owned_drop s6Step359HeadFvAfter [s6Step359HeadGOut,s6Step359HeadFOut,s6Step359HeadGvOut,s6Step359HeadFvOut] 2 s6Step359HeadBank_outgoingOwned

private theorem s6Step359HeadGv_distinct : (s6Step359HeadGvRow.sign::s6Step359HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step359HeadGv_owned : (s6Step359HeadGvRow.sign::s6Step359HeadGvRow.payload).toFinset⊆s6Step359HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step359HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<848) ∨ (849≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step359HeadGv_reserved : s6Step359HeadGvBefore.reserve s6Step359HeadGvFresh.toFinset=some s6Step359HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step359HeadGvFresh,arenaWires]
  · norm_num [s6Step359HeadGvBefore,s6Step359HeadFAfter,s6Step359HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step359HeadGvAfter,s6Step359HeadGvBefore,s6Step359HeadFAfter,s6Step359HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step359HeadGv_checked : planRowResizeLog s6Step359HeadGvBefore s6Step359HeadGvRow 196 s6Step359HeadGvFresh=
    some (s6Step359HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩,growRow 775 s6Step359HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step359HeadGvBefore s6Step359HeadGvAfter s6Step359HeadGvRow 196 s6Step359HeadGvFresh
    s6Step359HeadGv_distinct s6Step359HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step359HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step359HeadGvRow.payload++s6Step359HeadGvFresh) s6Step359HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step359HeadBank_rows : planWindowRowsLog s6Step359HeadGBefore [(s6Step359HeadGRow,93),(s6Step359HeadFRow,93),(s6Step359HeadGvRow,196),(s6Step359HeadFvRow,196)] [s6Step359HeadGFresh,s6Step359HeadFFresh,s6Step359HeadGvFresh,s6Step359HeadFvFresh]=
    some (s6Step359HeadFvAfter,[s6Step359HeadGOut,s6Step359HeadFOut,s6Step359HeadGvOut,s6Step359HeadFvOut],(growRow 777 s6Step359HeadGFresh ++ (growRow 795 s6Step359HeadFFresh ++ (growRow 775 s6Step359HeadGvFresh ++ (growRow 776 s6Step359HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step359HeadFvAfter [] []=some (s6Step359HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step359HeadFvBefore s6Step359HeadFvAfter s6Step359HeadFvAfter
    s6Step359HeadFvRow s6Step359HeadFvOut 196 s6Step359HeadFvFresh [] [] []
    (growRow 776 s6Step359HeadFvFresh) ([]) s6Step359HeadFv_Incoming s6Step359HeadFv_checked h4 s6Step359HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step359HeadGvBefore s6Step359HeadGvAfter s6Step359HeadFvAfter
    s6Step359HeadGvRow s6Step359HeadGvOut 196 s6Step359HeadGvFresh [(s6Step359HeadFvRow,196)] [s6Step359HeadFvFresh] [s6Step359HeadFvOut]
    (growRow 775 s6Step359HeadGvFresh) ((growRow 776 s6Step359HeadFvFresh ++ [])) s6Step359HeadGv_Incoming s6Step359HeadGv_checked h3 s6Step359HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step359HeadFBefore s6Step359HeadFAfter s6Step359HeadFvAfter
    s6Step359HeadFRow s6Step359HeadFOut 93 s6Step359HeadFFresh [(s6Step359HeadGvRow,196),(s6Step359HeadFvRow,196)] [s6Step359HeadGvFresh,s6Step359HeadFvFresh] [s6Step359HeadGvOut,s6Step359HeadFvOut]
    (growRow 795 s6Step359HeadFFresh) ((growRow 775 s6Step359HeadGvFresh ++ (growRow 776 s6Step359HeadFvFresh ++ []))) s6Step359HeadF_Incoming s6Step359HeadF_checked h2 s6Step359HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step359HeadGBefore s6Step359HeadGAfter s6Step359HeadFvAfter
    s6Step359HeadGRow s6Step359HeadGOut 93 s6Step359HeadGFresh [(s6Step359HeadFRow,93),(s6Step359HeadGvRow,196),(s6Step359HeadFvRow,196)] [s6Step359HeadFFresh,s6Step359HeadGvFresh,s6Step359HeadFvFresh] [s6Step359HeadFOut,s6Step359HeadGvOut,s6Step359HeadFvOut]
    (growRow 777 s6Step359HeadGFresh) ((growRow 795 s6Step359HeadFFresh ++ (growRow 775 s6Step359HeadGvFresh ++ (growRow 776 s6Step359HeadFvFresh ++ [])))) s6Step359HeadG_Incoming s6Step359HeadG_checked h1 s6Step359HeadG_Outgoing
  exact h0

private theorem s6Step359HeadBank_checked : compileHmrBankResizeLog .headroom s6Step359HeadGBefore ⟨s6Step359HeadFRow,s6Step359HeadGRow,s6Step359HeadFvRow,s6Step359HeadGvRow⟩ ⟨93,93,196,196⟩ [s6Step359HeadGFresh,s6Step359HeadFFresh,s6Step359HeadGvFresh,s6Step359HeadFvFresh]=
    some (s6Step359HeadFvAfter,⟨s6Step359HeadFOut,s6Step359HeadGOut,s6Step359HeadFvOut,s6Step359HeadGvOut⟩,(growRow 777 s6Step359HeadGFresh ++ (growRow 795 s6Step359HeadFFresh ++ (growRow 775 s6Step359HeadGvFresh ++ (growRow 776 s6Step359HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step359HeadBank_rows]
  rfl

private theorem s6Step359Front_checked : compileHmrSourceFrontLog s6Step359EntryFBefore s6Step359FrontBank 92 195 ⟨92,91,196,196⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step359FrontLog=some s6Step359FrontPlan := by
  have pairEq : s6Step359FrontPair=⟨s6Step359HeadFRow,s6Step359HeadGRow,s6Step359HeadFvRow,s6Step359HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step359FrontHead=⟨s6Step359ExitFRow,s6Step359ExitGRow,s6Step359ExitFvRow,s6Step359ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step359Add0A=s6Step359FrontHead.f.wires := by decide +kernel
  have gEq : s6Step359Add0B=s6Step359FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step359Add1A=s6Step359FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step359Add1B=s6Step359FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step359EntryFBefore s6Step359FrontBank 92 195 ⟨92,91,196,196⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step359FrontLog s6Step359FrontPlan
  · exact s6Step359Front_entry
  · exact s6Step359EntryBank_checked
  · exact s6Step359Front_sigma
  · rfl
  · exact s6Step359Front_branch
  · rfl
  · simpa only [s6Step359FrontPlan,pairEq] using s6Step359HeadBank_checked
  · simpa only [s6Step359FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step359F4_checked
  · exact s6Step359Counter_checked
  · rfl
  · simpa only [s6Step359FrontPlan,headEq] using s6Step359ExitBank_checked

private theorem s6Step359Complete_explicit_checked : compileHmrEarlyStepLog s6Step359EntryFBefore s6Step359FrontBank 92 195 ⟨92,91,196,196⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step359CompleteLog=some s6Step359CompletePlan := by
  let Q := s6Step359EarlyControlPlan
  have hq := s6Step359EarlyControl_plan_checked
  have fv1 : s6Step359CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step359CompleteOut.fv.payload[2]?.getD s6Step359CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step359CompleteOut.fv.payload[3]?.getD s6Step359CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step359CompleteOut.fv.payload[4]?.getD s6Step359CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step359EntryFBefore s6Step359EarlyControlArena s6Step359FrontBank 92 195 ⟨92,91,196,196⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step359CompleteLog s6Step359FrontPlan Q
    s6Step359Front_checked s6Step359Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step359Complete_owned s6Step359Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step359EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 858 s6Step359CompleteOut.fv.second (s6Step359CompleteOut.fv.payload[2]?.getD s6Step359CompleteOut.fv.sign) (s6Step359CompleteOut.fv.payload[3]?.getD s6Step359CompleteOut.fv.sign) (s6Step359CompleteOut.fv.payload[4]?.getD s6Step359CompleteOut.fv.sign) 825 60 s6Step359EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep359Arena : Arena := s6Step359EntryFBefore
def s6PrivateStep359Bank : WindowBank := s6Step359FrontBank
def s6PrivateStep359Spec : HmrSourceWalkStepLog := ⟨92,195,⟨92,91,196,196⟩,60,.early s6Step359CompleteLog⟩
def s6PrivateStep359Plan : HmrSourceStepPlan := .early s6Step359CompletePlan
theorem s6PrivateStep359_source : s6PrivateStep359Spec=s6ObservedLogs352[7] := rfl
theorem s6PrivateStep359_checked : compileHmrSourceStepLog s6PrivateStep359Arena s6PrivateStep359Bank
    s6PrivateStep359Spec.fgWidth s6PrivateStep359Spec.vWidth s6PrivateStep359Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 359 s6PrivateStep359Spec.need none s6PrivateStep359Spec.log=some s6PrivateStep359Plan := by
  change compileHmrSourceStepLog s6Step359EntryFBefore s6Step359FrontBank 92 195 ⟨92,91,196,196⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 359 60 none (.early s6Step359CompleteLog)=some (.early s6Step359CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 359<498)]
  rw [s6Step359Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
