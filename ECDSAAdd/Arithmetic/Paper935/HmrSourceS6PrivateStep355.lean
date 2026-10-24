import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep353
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

private def s6Step355CompleteMoves : List (Wire × Wire) := [(778,93),(892,349)]

private def s6Step355EarlyControlLog : HmrEarlyControlLog := ⟨[892, 778, 881, 858, 779],[875],[906],[805, 802, 843, 877, 792, 816],[]⟩

private def s6Step355FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [873]],[[779], [858], [881], [817]],[[], [], [], []]⟩,[789],[879],[875],[906],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 906, 805, 802]⟩

private def s6Step355CompleteLog : HmrEarlyStepLog := ⟨s6Step355FrontLog,s6Step355CompleteMoves,s6Step355EarlyControlLog⟩

private def s6Step355ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348],795⟩

private def s6Step355ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817],776⟩

private def s6Step355ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92],777⟩

private def s6Step355ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873],775⟩

private def s6Step355FrontOut : WindowBank := ⟨s6Step355ExitFOut,s6Step355ExitGOut,s6Step355ExitFvOut,s6Step355ExitGvOut⟩

private def s6Step355CompleteOut : WindowBank := s6Step355FrontOut.repacked s6Step355CompleteMoves

private def s6Step355EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step355EarlyControlPositiveArena,[875],s6Step355EarlyControlEqualityArena,[906],⟨⟨789,false⟩,[⟨⟨875,false⟩,906⟩]⟩⟩

private def s6Step355EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,892⟩,⟨⟨772,false⟩,778⟩,⟨⟨771,false⟩,881⟩,⟨⟨770,false⟩,858⟩,⟨⟨769,false⟩,779⟩]⟩

private def s6Step355EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step355EarlyControlZeroArena,s6Step355EarlyControlZeroPlan,s6Step355EarlyControlClassPlan,s6Step355EarlyControlFlagArena,s6Step355EarlyControlFittedArena,s6Step355EarlyControlHistoryArena,s6Step355EarlyControlSigmaArena,s6Step355EarlyControlOutputArena,s6Step355EarlyControlLog⟩

private def s6Step355CounterWork : List Wire := [875, 906, 805, 802]

private theorem s6Step355Counter_bounded : s6Step355CounterWork.toFinset⊆arenaWires := by norm_num [s6Step355CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step355HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355CounterDuring : Arena := ⟨s6Step355HeadFvAfter.live∪s6Step355CounterWork.toFinset,Finset.union_subset s6Step355HeadFvAfter.bounded s6Step355Counter_bounded⟩

private def s6Step355EntryFFresh : List Wire := []

private def s6Step355EntryFvFresh : List Wire := []

private def s6Step355EntryGFresh : List Wire := []

private def s6Step355EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355EntryGvFresh : List Wire := [873]

private def s6Step355ExitFExtra : List Wire := [349, 858]

private def s6Step355ExitGExtra : List Wire := [93, 779]

private def s6Step355ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<349) ∨ (350≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355ExitGvExtra : List Wire := [881]

private def s6Step355Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355Add0Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step355Add0_bounded : s6Step355Add0Work.toFinset⊆arenaWires := by
  have h : s6Step355Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step355Add0During : Arena := ⟨s6Step355Add0Arena.live∪s6Step355Add0Work.toFinset,Finset.union_subset s6Step355Add0Arena.bounded s6Step355Add0_bounded⟩

private def s6Step355Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355Add1Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step355Add1_bounded : s6Step355Add1Work.toFinset⊆arenaWires := by
  have h : s6Step355Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step355Add1During : Arena := ⟨s6Step355Add1Arena.live∪s6Step355Add1Work.toFinset,Finset.union_subset s6Step355Add1Arena.bounded s6Step355Add1_bounded⟩

private def s6Step355F4FlagArena : Arena := ⟨s6Step355HeadFvAfter.live∪{875},Finset.union_subset s6Step355HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step355F4Plan : HmrHybridF4Plan := ⟨s6Step355F4FlagArena,[875],s6Step355Add0Arena,[906],s6Step355Add0During,s6Step355Add0Work,s6Step355Add1During,s6Step355Add1Work⟩

private def s6Step355HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 858],795⟩

private def s6Step355HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817],776⟩

private def s6Step355HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 779],777⟩

private def s6Step355HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 881],775⟩

private def s6Step355FrontHead : WindowBank := ⟨s6Step355HeadFOut,s6Step355HeadGOut,s6Step355HeadFvOut,s6Step355HeadGvOut⟩

private def s6Step355EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349],795⟩

private def s6Step355EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩

private def s6Step355EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],777⟩

private def s6Step355EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873],775⟩

private def s6Step355FrontPair : WindowBank := ⟨s6Step355EntryFOut,s6Step355EntryGOut,s6Step355EntryFvOut,s6Step355EntryGvOut⟩

private def s6Step355FrontSigmaArena : Arena := ⟨s6Step355EntryGvAfter.live∪{789},Finset.union_subset s6Step355EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step355HeadFFresh : List Wire := [858]

private def s6Step355HeadFvFresh : List Wire := [817]

private def s6Step355HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355HeadGFresh : List Wire := [779]

private def s6Step355HeadGvFresh : List Wire := [881]

private def s6Step355FrontPlan : HmrSourceFront := ⟨s6Step355EntryGvAfter,s6Step355FrontPair,(growRow 795 s6Step355EntryFFresh ++ (growRow 777 s6Step355EntryGFresh ++ (growRow 776 s6Step355EntryFvFresh ++ (growRow 775 s6Step355EntryGvFresh ++ [])))),s6Step355FrontSigmaArena,[789],s6Step355HeadGBefore,[879],
  s6Step355HeadFvAfter,s6Step355FrontHead,(growRow 777 s6Step355HeadGFresh ++ (growRow 795 s6Step355HeadFFresh ++ (growRow 775 s6Step355HeadGvFresh ++ (growRow 776 s6Step355HeadFvFresh ++ [])))),s6Step355F4Plan,s6Step355CounterDuring,s6Step355CounterWork,s6Step355ExitGvAfter,s6Step355FrontOut,(shrinkRow 777 s6Step355ExitGExtra ++ (shrinkRow 795 s6Step355ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step355ExitGvExtra ++ []))))⟩

private def s6Step355CompletePlan : HmrEarlyStepPlan := ⟨s6Step355FrontPlan,s6Step355EarlyControlArena,s6Step355EarlyControlPlan,s6Step355CompleteMoves⟩

private theorem s6Step355Complete_apart : List.Disjoint (s6Step355CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [789, 879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step355CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[789, 879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step355Complete_owned : (s6Step355CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step355EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step355EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step355CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,349),(350,778),(780,782),(783,790),(791,792),(793,797),(799,800),(801,802),(803,805),(806,808),(809,816),(817,819),(821,832),(833,842),(844,858),(859,875),(876,877),(878,881),(882,896),(897,906),(907,914),(915,916),(917,918),(919,920),(921,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step355CompleteRelocationMove0Borrowed : Arena := ⟨s6Step355ExitGvAfter.live∪{93},Finset.union_subset s6Step355ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step355CompleteRelocationMove1Borrowed : Arena := ⟨s6Step355CompleteRelocationMove0After.live∪{349},Finset.union_subset s6Step355CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step355CompleteRelocation_move0_owned : 778∈s6Step355ExitGvAfter.live := by norm_num [s6Step355ExitGvAfter,arenaWires]

private theorem s6Step355CompleteRelocation_move0_reserve : s6Step355ExitGvAfter.reserve {93}=some s6Step355CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step355ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step355CompleteRelocation_move0_retire : s6Step355CompleteRelocationMove0Borrowed.retireSet {778}=s6Step355CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step355CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step355CompleteRelocationMove0Borrowed,s6Step355ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step355CompleteRelocation_move1_owned : 892∈s6Step355CompleteRelocationMove0After.live := by norm_num [s6Step355CompleteRelocationMove0After,arenaWires]

private theorem s6Step355CompleteRelocation_move1_reserve : s6Step355CompleteRelocationMove0After.reserve {349}=some s6Step355CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step355CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step355CompleteRelocation_move1_retire : s6Step355CompleteRelocationMove1Borrowed.retireSet {892}=s6Step355EarlyControlArena := by
  unfold Arena.retireSet s6Step355EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step355CompleteRelocationMove1Borrowed,s6Step355CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step355CompleteRelocation_checked : s6Step355ExitGvAfter.checkRepack [(778,93),(892,349)]=some s6Step355EarlyControlArena := by
  have tail2 : s6Step355EarlyControlArena.checkRepack []=some s6Step355EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step355CompleteRelocationMove0After s6Step355CompleteRelocationMove1Borrowed s6Step355EarlyControlArena s6Step355EarlyControlArena 892 349 []
    s6Step355CompleteRelocation_move1_owned s6Step355CompleteRelocation_move1_reserve s6Step355CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step355ExitGvAfter s6Step355CompleteRelocationMove0Borrowed s6Step355CompleteRelocationMove0After s6Step355EarlyControlArena 778 93 [(892,349)]
    s6Step355CompleteRelocation_move0_owned s6Step355CompleteRelocation_move0_reserve s6Step355CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step355Complete_repack : s6Step355ExitGvAfter.checkRepack s6Step355CompleteMoves=some s6Step355EarlyControlArena := by
  simpa only [s6Step355CompleteMoves] using s6Step355CompleteRelocation_checked

private theorem s6Step355EarlyControl_branchOwned : ([879] : List Wire).toFinset⊆s6Step355EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step355EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355EarlyControl_branch : compileHmrBranchRetirement s6Step355EarlyControlSigmaArena 879=some s6Step355EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step355EarlyControl_branchOwned
  · ext q
    simp [s6Step355EarlyControlOutputArena,s6Step355EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step355EarlyControl_classEqualityBorrow : s6Step355EarlyControlPositiveArena.checkBorrow (([789, 875] : List Wire).length-1) s6Step355EarlyControlLog.classWork=some s6Step355EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step355EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step355EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step355EarlyControlEqualityArena,s6Step355EarlyControlPositiveArena,s6Step355EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step355EarlyControl_classEqualityOwned : ([789, 875] : List Wire).toFinset⊆s6Step355EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step355EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355EarlyControl_classEquality : compileHmrEqualityLog s6Step355EarlyControlPositiveArena [789, 875] 0 s6Step355EarlyControlLog.classWork=some (s6Step355EarlyControlEqualityArena,s6Step355EarlyControlLog.classWork,s6Step355EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step355EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step355EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step355EarlyControl_classOwned : ([769, 779, 789] : List Wire).toFinset⊆s6Step355EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step355EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355EarlyControl_positiveBorrow : s6Step355EarlyControlZeroArena.checkBorrow (1) s6Step355EarlyControlLog.positiveWork=some s6Step355EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step355EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step355EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step355EarlyControlPositiveArena,s6Step355EarlyControlZeroArena,s6Step355EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step355EarlyControl_class : compileHmrSourceClassLog s6Step355EarlyControlZeroArena false 769 s6Step355EarlyControlZeroPlan.top 0 789 s6Step355EarlyControlLog.positiveWork s6Step355EarlyControlLog.classWork=some s6Step355EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step355EarlyControlClassPlan s6Step355EarlyControlZeroArena false 769 s6Step355EarlyControlZeroPlan.top 0 789
  constructor
  · decide +kernel
  · exact s6Step355EarlyControl_classOwned
  · exact s6Step355EarlyControl_positiveBorrow
  · exact s6Step355EarlyControl_classEquality

private theorem s6Step355EarlyControl_entryRecordOwned : ([879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step355EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step355EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355EarlyControl_entrySigmaOwned : ([789, 254] : List Wire).toFinset⊆s6Step355EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step355EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355EarlyControl_fitBorrow : s6Step355EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step355EarlyControlLog.recordFresh=some s6Step355EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step355EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step355EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step355EarlyControlFittedArena,s6Step355EarlyControlFlagArena,s6Step355EarlyControlLog,arenaWires]

private theorem s6Step355EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step355EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step355EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355EarlyControl_fit : compileHmrRecordGrowLog s6Step355EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step355EarlyControlLog.recordFresh=some s6Step355EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step355EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step355EarlyControl_fitBorrow

private theorem s6Step355EarlyControl_flagsBorrow : s6Step355EarlyControlEqualityArena.checkBorrow (6) s6Step355EarlyControlLog.flagWork=some s6Step355EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step355EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step355EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step355EarlyControlFlagArena,s6Step355EarlyControlEqualityArena,s6Step355EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step355EarlyControl_flagsOwned : ([906, 253, 252, 251] : List Wire).toFinset⊆s6Step355EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step355EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355EarlyControl_flags : compileHmrFlagsLog s6Step355EarlyControlClassPlan.equalityArena s6Step355EarlyControlClassPlan.equality.top 253 252 251 s6Step355EarlyControlLog.flagWork=some s6Step355EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step355EarlyControl_flagsOwned⟩
  · exact s6Step355EarlyControl_flagsBorrow

private theorem s6Step355EarlyControl_historyBorrow : s6Step355EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step355EarlyControlLog.recordFresh=some s6Step355EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step355EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step355EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step355EarlyControlHistoryArena,s6Step355EarlyControlArena,s6Step355EarlyControlLog,arenaWires]

private theorem s6Step355EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step355EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step355EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355EarlyControl_history : compileHmrRecordGrowLog s6Step355EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step355EarlyControlLog.recordFresh=some s6Step355EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step355EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step355EarlyControl_historyBorrow

private theorem s6Step355EarlyControl_sigmaOwned : ([254, 789] : List Wire).toFinset⊆s6Step355EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step355EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355EarlyControl_sigmaReleaseOwned : ([789] : List Wire).toFinset⊆s6Step355EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step355EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355EarlyControl_sigmaRelease : s6Step355EarlyControlHistoryArena.release {789} (fun _ => false)=some s6Step355EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step355EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step355EarlyControlSigmaArena,s6Step355EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step355EarlyControl_sigma : compileHmrSigmaDropLog s6Step355EarlyControlHistoryArena false 0 0 254 789 []=some s6Step355EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step355EarlyControl_sigmaOwned⟩
  · exact s6Step355EarlyControl_sigmaRelease

private theorem s6Step355EarlyControl_zeroBorrow : s6Step355EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step355EarlyControlLog.zeroWork=some s6Step355EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step355EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step355EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step355EarlyControlZeroArena,s6Step355EarlyControlArena,s6Step355EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step355EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step355EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step355EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355EarlyControl_zero : compileHmrEqualityLog s6Step355EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step355EarlyControlLog.zeroWork=some (s6Step355EarlyControlZeroArena,s6Step355EarlyControlLog.zeroWork,s6Step355EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step355EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step355EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step355EarlyControl_logged : s6Step355EarlyControlPlan.Logged s6Step355EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 254 253 252 251 879 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step355EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step355EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step355EarlyControl_zero
  · exact s6Step355EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step355EarlyControl_flags
  · exact s6Step355EarlyControl_fit
  · exact s6Step355EarlyControl_history
  · exact s6Step355EarlyControl_sigma
  · exact s6Step355EarlyControl_branch

private theorem s6Step355EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step355EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 254 253 252 251 879 60 s6Step355EarlyControlLog=some s6Step355EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step355EarlyControlPlan s6Step355EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 254 253 252 251 879 60 s6Step355EarlyControl_logged

private def s6Step355EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349],795⟩

private def s6Step355EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩

private def s6Step355EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],777⟩

private def s6Step355EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809],775⟩

private def s6Step355FrontBank : WindowBank := ⟨s6Step355EntryFRow,s6Step355EntryGRow,s6Step355EntryFvRow,s6Step355EntryGvRow⟩

private def s6Step355Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 858, 795]

private def s6Step355Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 779, 777]

private def s6Step355Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 776]

private def s6Step355Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 881, 775]

private theorem s6Step355Counter_apart : Disjoint s6Step355HeadFvAfter.live s6Step355CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step355HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355Counter_borrowed : s6Step355HeadFvAfter.checkBorrow 4 s6Step355CounterWork=some s6Step355CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step355HeadFvAfter s6Step355CounterDuring s6Step355CounterWork.toFinset s6Step355Counter_bounded s6Step355Counter_apart rfl

private theorem s6Step355Counter_owned : (789::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step355HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step355HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355Counter_checked : compileHmrCounterStepLog s6Step355HeadFvAfter true 789 [774, 773, 772, 771, 770, 769] s6Step355CounterWork=some s6Step355CounterDuring := by
  have owned : ∀q∈789::[774, 773, 772, 771, 770, 769],q∈s6Step355HeadFvAfter.live := fun q hq => s6Step355Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step355Counter_borrowed

private def s6Step355EntryFAfter : Arena := s6Step355EntryFBefore

private theorem s6Step355EntryBank_incomingDistinct : ([s6Step355EntryFRow,s6Step355EntryGRow,s6Step355EntryFvRow,s6Step355EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355EntryF_Incoming : rowsOwned s6Step355EntryFBefore [s6Step355EntryFRow,s6Step355EntryGRow,s6Step355EntryFvRow,s6Step355EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step355EntryFRow,s6Step355EntryGRow,s6Step355EntryFvRow,s6Step355EntryGvRow] 0 s6Step355EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step355EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step355EntryBank_outgoingOwned : rowsOwned s6Step355EntryGvAfter [s6Step355EntryFOut,s6Step355EntryGOut,s6Step355EntryFvOut,s6Step355EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step355EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step355EntryF_Outgoing : rowsOwned s6Step355EntryGvAfter [s6Step355EntryFOut,s6Step355EntryGOut,s6Step355EntryFvOut,s6Step355EntryGvOut] :=
  hmrRows_owned_drop s6Step355EntryGvAfter [s6Step355EntryFOut,s6Step355EntryGOut,s6Step355EntryFvOut,s6Step355EntryGvOut] 0 s6Step355EntryBank_outgoingOwned

private theorem s6Step355EntryF_distinct : (s6Step355EntryFRow.sign::s6Step355EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355EntryF_owned : (s6Step355EntryFRow.sign::s6Step355EntryFRow.payload).toFinset⊆s6Step355EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step355EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355EntryF_reserved : s6Step355EntryFBefore.reserve s6Step355EntryFFresh.toFinset=some s6Step355EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step355EntryFFresh,arenaWires]
  · norm_num [s6Step355EntryFBefore,s6Step355EntryFFresh,arenaWires]
  · simp only [s6Step355EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step355EntryF_checked : planRowResizeLog s6Step355EntryFBefore s6Step355EntryFRow 94 s6Step355EntryFFresh=
    some (s6Step355EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349],795⟩,growRow 795 s6Step355EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step355EntryFBefore s6Step355EntryFAfter s6Step355EntryFRow 94 s6Step355EntryFFresh
    s6Step355EntryF_distinct s6Step355EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step355EntryF_reserved
  have rowEq : WindowRow.mk (s6Step355EntryFRow.payload++s6Step355EntryFFresh) s6Step355EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step355EntryFvAfter : Arena := s6Step355EntryFBefore

private def s6Step355EntryFvBefore : Arena := s6Step355EntryFBefore

private theorem s6Step355EntryFv_Incoming : rowsOwned s6Step355EntryFvBefore [s6Step355EntryFvRow,s6Step355EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step355EntryFRow,s6Step355EntryGRow,s6Step355EntryFvRow,s6Step355EntryGvRow] 2 s6Step355EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step355EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step355EntryFv_Outgoing : rowsOwned s6Step355EntryGvAfter [s6Step355EntryFvOut,s6Step355EntryGvOut] :=
  hmrRows_owned_drop s6Step355EntryGvAfter [s6Step355EntryFOut,s6Step355EntryGOut,s6Step355EntryFvOut,s6Step355EntryGvOut] 2 s6Step355EntryBank_outgoingOwned

private theorem s6Step355EntryFv_distinct : (s6Step355EntryFvRow.sign::s6Step355EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355EntryFv_owned : (s6Step355EntryFvRow.sign::s6Step355EntryFvRow.payload).toFinset⊆s6Step355EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step355EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355EntryFv_reserved : s6Step355EntryFvBefore.reserve s6Step355EntryFvFresh.toFinset=some s6Step355EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step355EntryFvFresh,arenaWires]
  · norm_num [s6Step355EntryFvBefore,s6Step355EntryFBefore,s6Step355EntryFvFresh,arenaWires]
  · simp only [s6Step355EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step355EntryFv_checked : planRowResizeLog s6Step355EntryFvBefore s6Step355EntryFvRow 193 s6Step355EntryFvFresh=
    some (s6Step355EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩,growRow 776 s6Step355EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step355EntryFvBefore s6Step355EntryFvAfter s6Step355EntryFvRow 193 s6Step355EntryFvFresh
    s6Step355EntryFv_distinct s6Step355EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step355EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step355EntryFvRow.payload++s6Step355EntryFvFresh) s6Step355EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step355EntryGAfter : Arena := s6Step355EntryFBefore

private def s6Step355EntryGBefore : Arena := s6Step355EntryFBefore

private theorem s6Step355EntryG_Incoming : rowsOwned s6Step355EntryGBefore [s6Step355EntryGRow,s6Step355EntryFvRow,s6Step355EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step355EntryFRow,s6Step355EntryGRow,s6Step355EntryFvRow,s6Step355EntryGvRow] 1 s6Step355EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step355EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step355EntryG_Outgoing : rowsOwned s6Step355EntryGvAfter [s6Step355EntryGOut,s6Step355EntryFvOut,s6Step355EntryGvOut] :=
  hmrRows_owned_drop s6Step355EntryGvAfter [s6Step355EntryFOut,s6Step355EntryGOut,s6Step355EntryFvOut,s6Step355EntryGvOut] 1 s6Step355EntryBank_outgoingOwned

private theorem s6Step355EntryG_distinct : (s6Step355EntryGRow.sign::s6Step355EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355EntryG_owned : (s6Step355EntryGRow.sign::s6Step355EntryGRow.payload).toFinset⊆s6Step355EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step355EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355EntryG_reserved : s6Step355EntryGBefore.reserve s6Step355EntryGFresh.toFinset=some s6Step355EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step355EntryGFresh,arenaWires]
  · norm_num [s6Step355EntryGBefore,s6Step355EntryFBefore,s6Step355EntryGFresh,arenaWires]
  · simp only [s6Step355EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step355EntryG_checked : planRowResizeLog s6Step355EntryGBefore s6Step355EntryGRow 94 s6Step355EntryGFresh=
    some (s6Step355EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],777⟩,growRow 777 s6Step355EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step355EntryGBefore s6Step355EntryGAfter s6Step355EntryGRow 94 s6Step355EntryGFresh
    s6Step355EntryG_distinct s6Step355EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step355EntryG_reserved
  have rowEq : WindowRow.mk (s6Step355EntryGRow.payload++s6Step355EntryGFresh) s6Step355EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step355EntryGvBefore : Arena := s6Step355EntryFBefore

private theorem s6Step355EntryGv_Incoming : rowsOwned s6Step355EntryGvBefore [s6Step355EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step355EntryFRow,s6Step355EntryGRow,s6Step355EntryFvRow,s6Step355EntryGvRow] 3 s6Step355EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step355EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step355EntryGv_Outgoing : rowsOwned s6Step355EntryGvAfter [s6Step355EntryGvOut] :=
  hmrRows_owned_drop s6Step355EntryGvAfter [s6Step355EntryFOut,s6Step355EntryGOut,s6Step355EntryFvOut,s6Step355EntryGvOut] 3 s6Step355EntryBank_outgoingOwned

private theorem s6Step355EntryGv_distinct : (s6Step355EntryGvRow.sign::s6Step355EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355EntryGv_owned : (s6Step355EntryGvRow.sign::s6Step355EntryGvRow.payload).toFinset⊆s6Step355EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step355EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355EntryGv_reserved : s6Step355EntryGvBefore.reserve s6Step355EntryGvFresh.toFinset=some s6Step355EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step355EntryGvFresh,arenaWires]
  · norm_num [s6Step355EntryGvBefore,s6Step355EntryFBefore,s6Step355EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step355EntryGvAfter,s6Step355EntryGvBefore,s6Step355EntryFBefore,s6Step355EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step355EntryGv_checked : planRowResizeLog s6Step355EntryGvBefore s6Step355EntryGvRow 193 s6Step355EntryGvFresh=
    some (s6Step355EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873],775⟩,growRow 775 s6Step355EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step355EntryGvBefore s6Step355EntryGvAfter s6Step355EntryGvRow 193 s6Step355EntryGvFresh
    s6Step355EntryGv_distinct s6Step355EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step355EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step355EntryGvRow.payload++s6Step355EntryGvFresh) s6Step355EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step355EntryBank_rows : planWindowRowsLog s6Step355EntryFBefore [(s6Step355EntryFRow,94),(s6Step355EntryGRow,94),(s6Step355EntryFvRow,193),(s6Step355EntryGvRow,193)] [s6Step355EntryFFresh,s6Step355EntryGFresh,s6Step355EntryFvFresh,s6Step355EntryGvFresh]=
    some (s6Step355EntryGvAfter,[s6Step355EntryFOut,s6Step355EntryGOut,s6Step355EntryFvOut,s6Step355EntryGvOut],(growRow 795 s6Step355EntryFFresh ++ (growRow 777 s6Step355EntryGFresh ++ (growRow 776 s6Step355EntryFvFresh ++ (growRow 775 s6Step355EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step355EntryGvAfter [] []=some (s6Step355EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step355EntryGvBefore s6Step355EntryGvAfter s6Step355EntryGvAfter
    s6Step355EntryGvRow s6Step355EntryGvOut 193 s6Step355EntryGvFresh [] [] []
    (growRow 775 s6Step355EntryGvFresh) ([]) s6Step355EntryGv_Incoming s6Step355EntryGv_checked h4 s6Step355EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step355EntryFvBefore s6Step355EntryFvAfter s6Step355EntryGvAfter
    s6Step355EntryFvRow s6Step355EntryFvOut 193 s6Step355EntryFvFresh [(s6Step355EntryGvRow,193)] [s6Step355EntryGvFresh] [s6Step355EntryGvOut]
    (growRow 776 s6Step355EntryFvFresh) ((growRow 775 s6Step355EntryGvFresh ++ [])) s6Step355EntryFv_Incoming s6Step355EntryFv_checked h3 s6Step355EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step355EntryGBefore s6Step355EntryGAfter s6Step355EntryGvAfter
    s6Step355EntryGRow s6Step355EntryGOut 94 s6Step355EntryGFresh [(s6Step355EntryFvRow,193),(s6Step355EntryGvRow,193)] [s6Step355EntryFvFresh,s6Step355EntryGvFresh] [s6Step355EntryFvOut,s6Step355EntryGvOut]
    (growRow 777 s6Step355EntryGFresh) ((growRow 776 s6Step355EntryFvFresh ++ (growRow 775 s6Step355EntryGvFresh ++ []))) s6Step355EntryG_Incoming s6Step355EntryG_checked h2 s6Step355EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step355EntryFBefore s6Step355EntryFAfter s6Step355EntryGvAfter
    s6Step355EntryFRow s6Step355EntryFOut 94 s6Step355EntryFFresh [(s6Step355EntryGRow,94),(s6Step355EntryFvRow,193),(s6Step355EntryGvRow,193)] [s6Step355EntryGFresh,s6Step355EntryFvFresh,s6Step355EntryGvFresh] [s6Step355EntryGOut,s6Step355EntryFvOut,s6Step355EntryGvOut]
    (growRow 795 s6Step355EntryFFresh) ((growRow 777 s6Step355EntryGFresh ++ (growRow 776 s6Step355EntryFvFresh ++ (growRow 775 s6Step355EntryGvFresh ++ [])))) s6Step355EntryF_Incoming s6Step355EntryF_checked h1 s6Step355EntryF_Outgoing
  exact h0

private theorem s6Step355EntryBank_checked : compileHmrBankResizeLog .entry s6Step355EntryFBefore ⟨s6Step355EntryFRow,s6Step355EntryGRow,s6Step355EntryFvRow,s6Step355EntryGvRow⟩ ⟨94,94,193,193⟩ [s6Step355EntryFFresh,s6Step355EntryGFresh,s6Step355EntryFvFresh,s6Step355EntryGvFresh]=
    some (s6Step355EntryGvAfter,⟨s6Step355EntryFOut,s6Step355EntryGOut,s6Step355EntryFvOut,s6Step355EntryGvOut⟩,(growRow 795 s6Step355EntryFFresh ++ (growRow 777 s6Step355EntryGFresh ++ (growRow 776 s6Step355EntryFvFresh ++ (growRow 775 s6Step355EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step355EntryBank_rows]
  rfl

private def s6Step355ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<349) ∨ (350≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355ExitFBefore : Arena := s6Step355ExitGAfter

private def s6Step355ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 858],795⟩

private def s6Step355ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817],776⟩

private def s6Step355ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 779],777⟩

private def s6Step355ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 881],775⟩

private theorem s6Step355ExitBank_incomingDistinct : ([s6Step355ExitGRow,s6Step355ExitFRow,s6Step355ExitFvRow,s6Step355ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355ExitF_Incoming : rowsOwned s6Step355ExitFBefore [s6Step355ExitFRow,s6Step355ExitFvRow,s6Step355ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step355ExitGRow,s6Step355ExitFRow,s6Step355ExitFvRow,s6Step355ExitGvRow] 1 s6Step355ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step355ExitFBefore (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step355ExitBank_outgoingOwned : rowsOwned s6Step355ExitGvAfter [s6Step355ExitGOut,s6Step355ExitFOut,s6Step355ExitFvOut,s6Step355ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step355ExitGvAfter (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<349) ∨ (350≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step355ExitF_Outgoing : rowsOwned s6Step355ExitGvAfter [s6Step355ExitFOut,s6Step355ExitFvOut,s6Step355ExitGvOut] :=
  hmrRows_owned_drop s6Step355ExitGvAfter [s6Step355ExitGOut,s6Step355ExitFOut,s6Step355ExitFvOut,s6Step355ExitGvOut] 1 s6Step355ExitBank_outgoingOwned

private theorem s6Step355ExitF_distinct : (s6Step355ExitFRow.sign::s6Step355ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355ExitF_owned : (s6Step355ExitFRow.sign::s6Step355ExitFRow.payload).toFinset⊆s6Step355ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step355ExitFBefore (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355ExitF_retired : s6Step355ExitFBefore.retireSet s6Step355ExitFExtra.toFinset=s6Step355ExitFAfter := by
  unfold Arena.retireSet s6Step355ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step355ExitFBefore,s6Step355ExitGAfter,s6Step355ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step355ExitF_checked : planRowResizeLog s6Step355ExitFBefore s6Step355ExitFRow 93 []=
    some (s6Step355ExitFAfter,s6Step355ExitFOut,shrinkRow 795 s6Step355ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step355ExitFBefore s6Step355ExitFRow 93 s6Step355ExitF_distinct s6Step355ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step355ExitFRow.payload.take 93) s6Step355ExitFRow.sign=s6Step355ExitFOut := by decide +kernel
  have hi : s6Step355ExitFRow.payload.drop 93=s6Step355ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step355ExitF_retired] at result
  exact result

private def s6Step355ExitFvAfter : Arena := s6Step355ExitFAfter

private def s6Step355ExitFvBefore : Arena := s6Step355ExitFAfter

private theorem s6Step355ExitFv_Incoming : rowsOwned s6Step355ExitFvBefore [s6Step355ExitFvRow,s6Step355ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step355ExitGRow,s6Step355ExitFRow,s6Step355ExitFvRow,s6Step355ExitGvRow] 2 s6Step355ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step355ExitFvBefore (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<349) ∨ (350≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step355ExitFv_Outgoing : rowsOwned s6Step355ExitGvAfter [s6Step355ExitFvOut,s6Step355ExitGvOut] :=
  hmrRows_owned_drop s6Step355ExitGvAfter [s6Step355ExitGOut,s6Step355ExitFOut,s6Step355ExitFvOut,s6Step355ExitGvOut] 2 s6Step355ExitBank_outgoingOwned

private theorem s6Step355ExitFv_distinct : (s6Step355ExitFvRow.sign::s6Step355ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355ExitFv_owned : (s6Step355ExitFvRow.sign::s6Step355ExitFvRow.payload).toFinset⊆s6Step355ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step355ExitFvBefore (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<349) ∨ (350≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355ExitFv_reserved : s6Step355ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step355ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step355ExitFv_checked : planRowResizeLog s6Step355ExitFvBefore s6Step355ExitFvRow 194 []=
    some (s6Step355ExitFvAfter,s6Step355ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step355ExitFvBefore s6Step355ExitFvAfter s6Step355ExitFvRow 194 []
    s6Step355ExitFv_distinct s6Step355ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step355ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step355ExitFvRow.payload++[]) s6Step355ExitFvRow.sign=s6Step355ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step355ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step355ExitG_Incoming : rowsOwned s6Step355ExitGBefore [s6Step355ExitGRow,s6Step355ExitFRow,s6Step355ExitFvRow,s6Step355ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step355ExitGRow,s6Step355ExitFRow,s6Step355ExitFvRow,s6Step355ExitGvRow] 0 s6Step355ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step355ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step355ExitG_Outgoing : rowsOwned s6Step355ExitGvAfter [s6Step355ExitGOut,s6Step355ExitFOut,s6Step355ExitFvOut,s6Step355ExitGvOut] :=
  hmrRows_owned_drop s6Step355ExitGvAfter [s6Step355ExitGOut,s6Step355ExitFOut,s6Step355ExitFvOut,s6Step355ExitGvOut] 0 s6Step355ExitBank_outgoingOwned

private theorem s6Step355ExitG_distinct : (s6Step355ExitGRow.sign::s6Step355ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355ExitG_owned : (s6Step355ExitGRow.sign::s6Step355ExitGRow.payload).toFinset⊆s6Step355ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step355ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355ExitG_retired : s6Step355ExitGBefore.retireSet s6Step355ExitGExtra.toFinset=s6Step355ExitGAfter := by
  unfold Arena.retireSet s6Step355ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step355ExitGBefore,s6Step355ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step355ExitG_checked : planRowResizeLog s6Step355ExitGBefore s6Step355ExitGRow 93 []=
    some (s6Step355ExitGAfter,s6Step355ExitGOut,shrinkRow 777 s6Step355ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step355ExitGBefore s6Step355ExitGRow 93 s6Step355ExitG_distinct s6Step355ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step355ExitGRow.payload.take 93) s6Step355ExitGRow.sign=s6Step355ExitGOut := by decide +kernel
  have hi : s6Step355ExitGRow.payload.drop 93=s6Step355ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step355ExitG_retired] at result
  exact result

private def s6Step355ExitGvBefore : Arena := s6Step355ExitFAfter

private theorem s6Step355ExitGv_Incoming : rowsOwned s6Step355ExitGvBefore [s6Step355ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step355ExitGRow,s6Step355ExitFRow,s6Step355ExitFvRow,s6Step355ExitGvRow] 3 s6Step355ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step355ExitGvBefore (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<349) ∨ (350≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step355ExitGv_Outgoing : rowsOwned s6Step355ExitGvAfter [s6Step355ExitGvOut] :=
  hmrRows_owned_drop s6Step355ExitGvAfter [s6Step355ExitGOut,s6Step355ExitFOut,s6Step355ExitFvOut,s6Step355ExitGvOut] 3 s6Step355ExitBank_outgoingOwned

private theorem s6Step355ExitGv_distinct : (s6Step355ExitGvRow.sign::s6Step355ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355ExitGv_owned : (s6Step355ExitGvRow.sign::s6Step355ExitGvRow.payload).toFinset⊆s6Step355ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step355ExitGvBefore (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<349) ∨ (350≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355ExitGv_retired : s6Step355ExitGvBefore.retireSet s6Step355ExitGvExtra.toFinset=s6Step355ExitGvAfter := by
  unfold Arena.retireSet s6Step355ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step355ExitGvBefore,s6Step355ExitFAfter,s6Step355ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step355ExitGv_checked : planRowResizeLog s6Step355ExitGvBefore s6Step355ExitGvRow 193 []=
    some (s6Step355ExitGvAfter,s6Step355ExitGvOut,shrinkRow 775 s6Step355ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step355ExitGvBefore s6Step355ExitGvRow 193 s6Step355ExitGv_distinct s6Step355ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step355ExitGvRow.payload.take 193) s6Step355ExitGvRow.sign=s6Step355ExitGvOut := by decide +kernel
  have hi : s6Step355ExitGvRow.payload.drop 193=s6Step355ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step355ExitGv_retired] at result
  exact result

private theorem s6Step355ExitBank_rows : planWindowRowsLog s6Step355ExitGBefore [(s6Step355ExitGRow,93),(s6Step355ExitFRow,93),(s6Step355ExitFvRow,194),(s6Step355ExitGvRow,193)] [[],[],[],[]]=
    some (s6Step355ExitGvAfter,[s6Step355ExitGOut,s6Step355ExitFOut,s6Step355ExitFvOut,s6Step355ExitGvOut],(shrinkRow 777 s6Step355ExitGExtra ++ (shrinkRow 795 s6Step355ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step355ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step355ExitGvAfter [] []=some (s6Step355ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step355ExitGvBefore s6Step355ExitGvAfter s6Step355ExitGvAfter
    s6Step355ExitGvRow s6Step355ExitGvOut 193 [] [] [] []
    (shrinkRow 775 s6Step355ExitGvExtra) ([]) s6Step355ExitGv_Incoming s6Step355ExitGv_checked h4 s6Step355ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step355ExitFvBefore s6Step355ExitFvAfter s6Step355ExitGvAfter
    s6Step355ExitFvRow s6Step355ExitFvOut 194 [] [(s6Step355ExitGvRow,193)] [[]] [s6Step355ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step355ExitGvExtra ++ [])) s6Step355ExitFv_Incoming s6Step355ExitFv_checked h3 s6Step355ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step355ExitFBefore s6Step355ExitFAfter s6Step355ExitGvAfter
    s6Step355ExitFRow s6Step355ExitFOut 93 [] [(s6Step355ExitFvRow,194),(s6Step355ExitGvRow,193)] [[],[]] [s6Step355ExitFvOut,s6Step355ExitGvOut]
    (shrinkRow 795 s6Step355ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step355ExitGvExtra ++ []))) s6Step355ExitF_Incoming s6Step355ExitF_checked h2 s6Step355ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step355ExitGBefore s6Step355ExitGAfter s6Step355ExitGvAfter
    s6Step355ExitGRow s6Step355ExitGOut 93 [] [(s6Step355ExitFRow,93),(s6Step355ExitFvRow,194),(s6Step355ExitGvRow,193)] [[],[],[]] [s6Step355ExitFOut,s6Step355ExitFvOut,s6Step355ExitGvOut]
    (shrinkRow 777 s6Step355ExitGExtra) ((shrinkRow 795 s6Step355ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step355ExitGvExtra ++ [])))) s6Step355ExitG_Incoming s6Step355ExitG_checked h1 s6Step355ExitG_Outgoing
  exact h0

private theorem s6Step355ExitBank_checked : compileHmrBankResizeLog .exit s6Step355ExitGBefore ⟨s6Step355ExitFRow,s6Step355ExitGRow,s6Step355ExitFvRow,s6Step355ExitGvRow⟩ ⟨93,93,194,193⟩ [[],[],[],[]]=
    some (s6Step355ExitGvAfter,⟨s6Step355ExitFOut,s6Step355ExitGOut,s6Step355ExitFvOut,s6Step355ExitGvOut⟩,(shrinkRow 777 s6Step355ExitGExtra ++ (shrinkRow 795 s6Step355ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step355ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step355ExitBank_rows]
  rfl

private theorem s6Step355Add0_apart : Disjoint s6Step355Add0Arena.live s6Step355Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step355Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355Add0_card : s6Step355Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step355Add0_borrowed : s6Step355Add0Arena.checkBorrow (hmrHybridCount s6Step355Add0Arena s6Step355Add0B.length) s6Step355Add0Work=some s6Step355Add0During := by
  have len : s6Step355Add0Work.length=hmrHybridCount s6Step355Add0Arena s6Step355Add0B.length := by
    rw [hmrHybridCount,s6Step355Add0_card]
    decide +kernel
  have nd : s6Step355Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step355Add0Arena s6Step355Add0During s6Step355Add0Work.toFinset s6Step355Add0_bounded s6Step355Add0_apart rfl

private theorem s6Step355Add0_distinct : (875::879::906::(s6Step355Add0A++s6Step355Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355Add0_owned : (875::879::906::(s6Step355Add0A++s6Step355Add0B)).toFinset⊆s6Step355Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step355Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355Add0_checked : compileHmrHybridCinLog s6Step355Add0Arena 879 875 906 s6Step355Add0A s6Step355Add0B s6Step355Add0Work=some s6Step355Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step355Add0Arena s6Step355Add0During 879 875 906 s6Step355Add0A s6Step355Add0B s6Step355Add0Work
    (by decide +kernel) (by decide +kernel) s6Step355Add0_distinct
    (fun q hq => s6Step355Add0_owned (List.mem_toFinset.mpr hq)) s6Step355Add0_borrowed

private theorem s6Step355Add1_apart : Disjoint s6Step355Add1Arena.live s6Step355Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step355Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355Add1_card : s6Step355Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step355Add1_borrowed : s6Step355Add1Arena.checkBorrow (hmrHybridCount s6Step355Add1Arena s6Step355Add1B.length) s6Step355Add1Work=some s6Step355Add1During := by
  have len : s6Step355Add1Work.length=hmrHybridCount s6Step355Add1Arena s6Step355Add1B.length := by
    rw [hmrHybridCount,s6Step355Add1_card]
    decide +kernel
  have nd : s6Step355Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step355Add1Arena s6Step355Add1During s6Step355Add1Work.toFinset s6Step355Add1_bounded s6Step355Add1_apart rfl

private theorem s6Step355Add1_distinct : (875::879::906::(s6Step355Add1A++s6Step355Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355Add1_owned : (875::879::906::(s6Step355Add1A++s6Step355Add1B)).toFinset⊆s6Step355Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step355Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355Add1_checked : compileHmrHybridCinLog s6Step355Add1Arena 879 875 906 s6Step355Add1A s6Step355Add1B s6Step355Add1Work=some s6Step355Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step355Add1Arena s6Step355Add1During 879 875 906 s6Step355Add1A s6Step355Add1B s6Step355Add1Work
    (by decide +kernel) (by decide +kernel) s6Step355Add1_distinct
    (fun q hq => s6Step355Add1_owned (List.mem_toFinset.mpr hq)) s6Step355Add1_borrowed

private theorem s6Step355F4_apart : Disjoint (s6Step355Add0A++s6Step355Add0B).toFinset (s6Step355Add1A++s6Step355Add1B).toFinset := by
  have nd : ((s6Step355Add0A++s6Step355Add0B)++(s6Step355Add1A++s6Step355Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step355F4_carry : s6Step355F4FlagArena.checkBorrow 1 [906]=some s6Step355Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step355F4FlagArena,s6Step355HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step355F4FlagArena,s6Step355HeadFvAfter,s6Step355Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step355F4_distinct : (789::879::875::906::((s6Step355Add0A++s6Step355Add1A)++(s6Step355Add0B++s6Step355Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355F4_flag : s6Step355HeadFvAfter.checkBorrow 1 [875]=some s6Step355F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step355HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step355F4_owned : (789::879::((s6Step355Add0A++s6Step355Add1A)++(s6Step355Add0B++s6Step355Add1B))).toFinset⊆s6Step355HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step355HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355F4_checked : compileHmrHybridF4Log s6Step355HeadFvAfter 789 879 s6Step355Add0A s6Step355Add0B s6Step355Add1A s6Step355Add1B [875] [906] s6Step355Add0Work s6Step355Add1Work=some s6Step355F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step355HeadFvAfter s6Step355F4FlagArena s6Step355Add0Arena s6Step355Add0During s6Step355Add1During 789 879
    s6Step355Add0A s6Step355Add0B s6Step355Add1A s6Step355Add1B [875] [906] s6Step355Add0Work s6Step355Add1Work
    (fun q hq => s6Step355F4_owned (List.mem_toFinset.mpr hq)) s6Step355F4_flag s6Step355F4_carry
    s6Step355F4_distinct s6Step355F4_apart s6Step355Add0_checked s6Step355Add1_checked

private theorem s6Step355Front_branch : s6Step355FrontSigmaArena.checkBorrow 1 [879]=some s6Step355HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step355FrontSigmaArena,s6Step355EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step355FrontSigmaArena,s6Step355EntryGvAfter,s6Step355HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step355Front_entry : HmrFrontEntryValid s6Step355EntryFBefore s6Step355FrontBank 94 193 ⟨93,93,194,193⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step355FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step355EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step355EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step355FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step355Front_sigma : s6Step355EntryGvAfter.checkBorrow 1 [789]=some s6Step355FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step355EntryGvAfter,arenaWires]
  · rfl

private def s6Step355HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355HeadFBefore : Arena := s6Step355HeadGAfter

private def s6Step355HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349],795⟩

private def s6Step355HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩

private def s6Step355HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],777⟩

private def s6Step355HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873],775⟩

private theorem s6Step355HeadBank_incomingDistinct : ([s6Step355HeadGRow,s6Step355HeadFRow,s6Step355HeadGvRow,s6Step355HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355HeadF_Incoming : rowsOwned s6Step355HeadFBefore [s6Step355HeadFRow,s6Step355HeadGvRow,s6Step355HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step355HeadGRow,s6Step355HeadFRow,s6Step355HeadGvRow,s6Step355HeadFvRow] 1 s6Step355HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step355HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step355HeadBank_outgoingOwned : rowsOwned s6Step355HeadFvAfter [s6Step355HeadGOut,s6Step355HeadFOut,s6Step355HeadGvOut,s6Step355HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step355HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step355HeadF_Outgoing : rowsOwned s6Step355HeadFvAfter [s6Step355HeadFOut,s6Step355HeadGvOut,s6Step355HeadFvOut] :=
  hmrRows_owned_drop s6Step355HeadFvAfter [s6Step355HeadGOut,s6Step355HeadFOut,s6Step355HeadGvOut,s6Step355HeadFvOut] 1 s6Step355HeadBank_outgoingOwned

private theorem s6Step355HeadF_distinct : (s6Step355HeadFRow.sign::s6Step355HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355HeadF_owned : (s6Step355HeadFRow.sign::s6Step355HeadFRow.payload).toFinset⊆s6Step355HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step355HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355HeadF_reserved : s6Step355HeadFBefore.reserve s6Step355HeadFFresh.toFinset=some s6Step355HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step355HeadFFresh,arenaWires]
  · norm_num [s6Step355HeadFBefore,s6Step355HeadGAfter,s6Step355HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step355HeadFAfter,s6Step355HeadFBefore,s6Step355HeadGAfter,s6Step355HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step355HeadF_checked : planRowResizeLog s6Step355HeadFBefore s6Step355HeadFRow 95 s6Step355HeadFFresh=
    some (s6Step355HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 858],795⟩,growRow 795 s6Step355HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step355HeadFBefore s6Step355HeadFAfter s6Step355HeadFRow 95 s6Step355HeadFFresh
    s6Step355HeadF_distinct s6Step355HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step355HeadF_reserved
  have rowEq : WindowRow.mk (s6Step355HeadFRow.payload++s6Step355HeadFFresh) s6Step355HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 858],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step355HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step355HeadFvBefore : Arena := s6Step355HeadGvAfter

private theorem s6Step355HeadFv_Incoming : rowsOwned s6Step355HeadFvBefore [s6Step355HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step355HeadGRow,s6Step355HeadFRow,s6Step355HeadGvRow,s6Step355HeadFvRow] 3 s6Step355HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step355HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step355HeadFv_Outgoing : rowsOwned s6Step355HeadFvAfter [s6Step355HeadFvOut] :=
  hmrRows_owned_drop s6Step355HeadFvAfter [s6Step355HeadGOut,s6Step355HeadFOut,s6Step355HeadGvOut,s6Step355HeadFvOut] 3 s6Step355HeadBank_outgoingOwned

private theorem s6Step355HeadFv_distinct : (s6Step355HeadFvRow.sign::s6Step355HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355HeadFv_owned : (s6Step355HeadFvRow.sign::s6Step355HeadFvRow.payload).toFinset⊆s6Step355HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step355HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355HeadFv_reserved : s6Step355HeadFvBefore.reserve s6Step355HeadFvFresh.toFinset=some s6Step355HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step355HeadFvFresh,arenaWires]
  · norm_num [s6Step355HeadFvBefore,s6Step355HeadGvAfter,s6Step355HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step355HeadFvAfter,s6Step355HeadFvBefore,s6Step355HeadGvAfter,s6Step355HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step355HeadFv_checked : planRowResizeLog s6Step355HeadFvBefore s6Step355HeadFvRow 194 s6Step355HeadFvFresh=
    some (s6Step355HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817],776⟩,growRow 776 s6Step355HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step355HeadFvBefore s6Step355HeadFvAfter s6Step355HeadFvRow 194 s6Step355HeadFvFresh
    s6Step355HeadFv_distinct s6Step355HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step355HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step355HeadFvRow.payload++s6Step355HeadFvFresh) s6Step355HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step355HeadG_Incoming : rowsOwned s6Step355HeadGBefore [s6Step355HeadGRow,s6Step355HeadFRow,s6Step355HeadGvRow,s6Step355HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step355HeadGRow,s6Step355HeadFRow,s6Step355HeadGvRow,s6Step355HeadFvRow] 0 s6Step355HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step355HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step355HeadG_Outgoing : rowsOwned s6Step355HeadFvAfter [s6Step355HeadGOut,s6Step355HeadFOut,s6Step355HeadGvOut,s6Step355HeadFvOut] :=
  hmrRows_owned_drop s6Step355HeadFvAfter [s6Step355HeadGOut,s6Step355HeadFOut,s6Step355HeadGvOut,s6Step355HeadFvOut] 0 s6Step355HeadBank_outgoingOwned

private theorem s6Step355HeadG_distinct : (s6Step355HeadGRow.sign::s6Step355HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355HeadG_owned : (s6Step355HeadGRow.sign::s6Step355HeadGRow.payload).toFinset⊆s6Step355HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step355HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355HeadG_reserved : s6Step355HeadGBefore.reserve s6Step355HeadGFresh.toFinset=some s6Step355HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step355HeadGFresh,arenaWires]
  · norm_num [s6Step355HeadGBefore,s6Step355HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step355HeadGAfter,s6Step355HeadGBefore,s6Step355HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step355HeadG_checked : planRowResizeLog s6Step355HeadGBefore s6Step355HeadGRow 95 s6Step355HeadGFresh=
    some (s6Step355HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 779],777⟩,growRow 777 s6Step355HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step355HeadGBefore s6Step355HeadGAfter s6Step355HeadGRow 95 s6Step355HeadGFresh
    s6Step355HeadG_distinct s6Step355HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step355HeadG_reserved
  have rowEq : WindowRow.mk (s6Step355HeadGRow.payload++s6Step355HeadGFresh) s6Step355HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 779],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step355HeadGvBefore : Arena := s6Step355HeadFAfter

private theorem s6Step355HeadGv_Incoming : rowsOwned s6Step355HeadGvBefore [s6Step355HeadGvRow,s6Step355HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step355HeadGRow,s6Step355HeadFRow,s6Step355HeadGvRow,s6Step355HeadFvRow] 2 s6Step355HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step355HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step355HeadGv_Outgoing : rowsOwned s6Step355HeadFvAfter [s6Step355HeadGvOut,s6Step355HeadFvOut] :=
  hmrRows_owned_drop s6Step355HeadFvAfter [s6Step355HeadGOut,s6Step355HeadFOut,s6Step355HeadGvOut,s6Step355HeadFvOut] 2 s6Step355HeadBank_outgoingOwned

private theorem s6Step355HeadGv_distinct : (s6Step355HeadGvRow.sign::s6Step355HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step355HeadGv_owned : (s6Step355HeadGvRow.sign::s6Step355HeadGvRow.payload).toFinset⊆s6Step355HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step355HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step355HeadGv_reserved : s6Step355HeadGvBefore.reserve s6Step355HeadGvFresh.toFinset=some s6Step355HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step355HeadGvFresh,arenaWires]
  · norm_num [s6Step355HeadGvBefore,s6Step355HeadFAfter,s6Step355HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step355HeadGvAfter,s6Step355HeadGvBefore,s6Step355HeadFAfter,s6Step355HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step355HeadGv_checked : planRowResizeLog s6Step355HeadGvBefore s6Step355HeadGvRow 194 s6Step355HeadGvFresh=
    some (s6Step355HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 881],775⟩,growRow 775 s6Step355HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step355HeadGvBefore s6Step355HeadGvAfter s6Step355HeadGvRow 194 s6Step355HeadGvFresh
    s6Step355HeadGv_distinct s6Step355HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step355HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step355HeadGvRow.payload++s6Step355HeadGvFresh) s6Step355HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 881],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step355HeadBank_rows : planWindowRowsLog s6Step355HeadGBefore [(s6Step355HeadGRow,95),(s6Step355HeadFRow,95),(s6Step355HeadGvRow,194),(s6Step355HeadFvRow,194)] [s6Step355HeadGFresh,s6Step355HeadFFresh,s6Step355HeadGvFresh,s6Step355HeadFvFresh]=
    some (s6Step355HeadFvAfter,[s6Step355HeadGOut,s6Step355HeadFOut,s6Step355HeadGvOut,s6Step355HeadFvOut],(growRow 777 s6Step355HeadGFresh ++ (growRow 795 s6Step355HeadFFresh ++ (growRow 775 s6Step355HeadGvFresh ++ (growRow 776 s6Step355HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step355HeadFvAfter [] []=some (s6Step355HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step355HeadFvBefore s6Step355HeadFvAfter s6Step355HeadFvAfter
    s6Step355HeadFvRow s6Step355HeadFvOut 194 s6Step355HeadFvFresh [] [] []
    (growRow 776 s6Step355HeadFvFresh) ([]) s6Step355HeadFv_Incoming s6Step355HeadFv_checked h4 s6Step355HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step355HeadGvBefore s6Step355HeadGvAfter s6Step355HeadFvAfter
    s6Step355HeadGvRow s6Step355HeadGvOut 194 s6Step355HeadGvFresh [(s6Step355HeadFvRow,194)] [s6Step355HeadFvFresh] [s6Step355HeadFvOut]
    (growRow 775 s6Step355HeadGvFresh) ((growRow 776 s6Step355HeadFvFresh ++ [])) s6Step355HeadGv_Incoming s6Step355HeadGv_checked h3 s6Step355HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step355HeadFBefore s6Step355HeadFAfter s6Step355HeadFvAfter
    s6Step355HeadFRow s6Step355HeadFOut 95 s6Step355HeadFFresh [(s6Step355HeadGvRow,194),(s6Step355HeadFvRow,194)] [s6Step355HeadGvFresh,s6Step355HeadFvFresh] [s6Step355HeadGvOut,s6Step355HeadFvOut]
    (growRow 795 s6Step355HeadFFresh) ((growRow 775 s6Step355HeadGvFresh ++ (growRow 776 s6Step355HeadFvFresh ++ []))) s6Step355HeadF_Incoming s6Step355HeadF_checked h2 s6Step355HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step355HeadGBefore s6Step355HeadGAfter s6Step355HeadFvAfter
    s6Step355HeadGRow s6Step355HeadGOut 95 s6Step355HeadGFresh [(s6Step355HeadFRow,95),(s6Step355HeadGvRow,194),(s6Step355HeadFvRow,194)] [s6Step355HeadFFresh,s6Step355HeadGvFresh,s6Step355HeadFvFresh] [s6Step355HeadFOut,s6Step355HeadGvOut,s6Step355HeadFvOut]
    (growRow 777 s6Step355HeadGFresh) ((growRow 795 s6Step355HeadFFresh ++ (growRow 775 s6Step355HeadGvFresh ++ (growRow 776 s6Step355HeadFvFresh ++ [])))) s6Step355HeadG_Incoming s6Step355HeadG_checked h1 s6Step355HeadG_Outgoing
  exact h0

private theorem s6Step355HeadBank_checked : compileHmrBankResizeLog .headroom s6Step355HeadGBefore ⟨s6Step355HeadFRow,s6Step355HeadGRow,s6Step355HeadFvRow,s6Step355HeadGvRow⟩ ⟨95,95,194,194⟩ [s6Step355HeadGFresh,s6Step355HeadFFresh,s6Step355HeadGvFresh,s6Step355HeadFvFresh]=
    some (s6Step355HeadFvAfter,⟨s6Step355HeadFOut,s6Step355HeadGOut,s6Step355HeadFvOut,s6Step355HeadGvOut⟩,(growRow 777 s6Step355HeadGFresh ++ (growRow 795 s6Step355HeadFFresh ++ (growRow 775 s6Step355HeadGvFresh ++ (growRow 776 s6Step355HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step355HeadBank_rows]
  rfl

private theorem s6Step355Front_checked : compileHmrSourceFrontLog s6Step355EntryFBefore s6Step355FrontBank 94 193 ⟨93,93,194,193⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step355FrontLog=some s6Step355FrontPlan := by
  have pairEq : s6Step355FrontPair=⟨s6Step355HeadFRow,s6Step355HeadGRow,s6Step355HeadFvRow,s6Step355HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step355FrontHead=⟨s6Step355ExitFRow,s6Step355ExitGRow,s6Step355ExitFvRow,s6Step355ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step355Add0A=s6Step355FrontHead.f.wires := by decide +kernel
  have gEq : s6Step355Add0B=s6Step355FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step355Add1A=s6Step355FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step355Add1B=s6Step355FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step355EntryFBefore s6Step355FrontBank 94 193 ⟨93,93,194,193⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step355FrontLog s6Step355FrontPlan
  · exact s6Step355Front_entry
  · exact s6Step355EntryBank_checked
  · exact s6Step355Front_sigma
  · rfl
  · exact s6Step355Front_branch
  · rfl
  · simpa only [s6Step355FrontPlan,pairEq] using s6Step355HeadBank_checked
  · simpa only [s6Step355FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step355F4_checked
  · exact s6Step355Counter_checked
  · rfl
  · simpa only [s6Step355FrontPlan,headEq] using s6Step355ExitBank_checked

private theorem s6Step355Complete_explicit_checked : compileHmrEarlyStepLog s6Step355EntryFBefore s6Step355FrontBank 94 193 ⟨93,93,194,193⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step355CompleteLog=some s6Step355CompletePlan := by
  let Q := s6Step355EarlyControlPlan
  have hq := s6Step355EarlyControl_plan_checked
  have fv1 : s6Step355CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step355CompleteOut.fv.payload[2]?.getD s6Step355CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step355CompleteOut.fv.payload[3]?.getD s6Step355CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step355CompleteOut.fv.payload[4]?.getD s6Step355CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step355EntryFBefore s6Step355EarlyControlArena s6Step355FrontBank 94 193 ⟨93,93,194,193⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step355CompleteLog s6Step355FrontPlan Q
    s6Step355Front_checked s6Step355Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step355Complete_owned s6Step355Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step355EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 s6Step355CompleteOut.fv.second (s6Step355CompleteOut.fv.payload[2]?.getD s6Step355CompleteOut.fv.sign) (s6Step355CompleteOut.fv.payload[3]?.getD s6Step355CompleteOut.fv.sign) (s6Step355CompleteOut.fv.payload[4]?.getD s6Step355CompleteOut.fv.sign) 879 60 s6Step355EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep355Arena : Arena := s6Step355EntryFBefore
def s6PrivateStep355Bank : WindowBank := s6Step355FrontBank
def s6PrivateStep355Spec : HmrSourceWalkStepLog := ⟨94,193,⟨93,93,194,193⟩,60,.early s6Step355CompleteLog⟩
def s6PrivateStep355Plan : HmrSourceStepPlan := .early s6Step355CompletePlan
theorem s6PrivateStep355_source : s6PrivateStep355Spec=s6ObservedLogs352[3] := rfl
theorem s6PrivateStep355_checked : compileHmrSourceStepLog s6PrivateStep355Arena s6PrivateStep355Bank
    s6PrivateStep355Spec.fgWidth s6PrivateStep355Spec.vWidth s6PrivateStep355Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 355 s6PrivateStep355Spec.need none s6PrivateStep355Spec.log=some s6PrivateStep355Plan := by
  change compileHmrSourceStepLog s6Step355EntryFBefore s6Step355FrontBank 94 193 ⟨93,93,194,193⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 355 60 none (.early s6Step355CompleteLog)=some (.early s6Step355CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 355<498)]
  rw [s6Step355Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
