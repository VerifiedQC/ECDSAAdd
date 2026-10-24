import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep352
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

private def s6Step354CompleteMoves : List (Wire × Wire) := [(879,350)]

private def s6Step354EarlyControlLog : HmrEarlyControlLog := ⟨[879, 779, 858, 881, 817],[875],[906],[805, 802, 843, 877, 792, 816],[]⟩

private def s6Step354FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [875], [], [779]],[[906], [817], [858], [881]],[[], [], [], []]⟩,[789],[873],[805],[802],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877]⟩

private def s6Step354CompleteLog : HmrEarlyStepLog := ⟨s6Step354FrontLog,s6Step354CompleteMoves,s6Step354EarlyControlLog⟩

private def s6Step354ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349],795⟩

private def s6Step354ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩

private def s6Step354ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],777⟩

private def s6Step354ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809],775⟩

private def s6Step354FrontOut : WindowBank := ⟨s6Step354ExitFOut,s6Step354ExitGOut,s6Step354ExitFvOut,s6Step354ExitGvOut⟩

private def s6Step354CompleteOut : WindowBank := s6Step354FrontOut.repacked s6Step354CompleteMoves

private def s6Step354EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step354EarlyControlPositiveArena,[875],s6Step354EarlyControlEqualityArena,[906],⟨⟨789,false⟩,[⟨⟨875,false⟩,906⟩]⟩⟩

private def s6Step354EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,879⟩,⟨⟨772,false⟩,779⟩,⟨⟨771,false⟩,858⟩,⟨⟨770,false⟩,881⟩,⟨⟨769,false⟩,817⟩]⟩

private def s6Step354EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step354EarlyControlZeroArena,s6Step354EarlyControlZeroPlan,s6Step354EarlyControlClassPlan,s6Step354EarlyControlFlagArena,s6Step354EarlyControlFittedArena,s6Step354EarlyControlHistoryArena,s6Step354EarlyControlSigmaArena,s6Step354EarlyControlOutputArena,s6Step354EarlyControlLog⟩

private def s6Step354CounterWork : List Wire := [805, 802, 843, 877]

private theorem s6Step354Counter_bounded : s6Step354CounterWork.toFinset⊆arenaWires := by norm_num [s6Step354CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step354HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354CounterDuring : Arena := ⟨s6Step354HeadFvAfter.live∪s6Step354CounterWork.toFinset,Finset.union_subset s6Step354HeadFvAfter.bounded s6Step354Counter_bounded⟩

private def s6Step354EntryFFresh : List Wire := []

private def s6Step354EntryFvFresh : List Wire := []

private def s6Step354EntryGFresh : List Wire := [875]

private def s6Step354EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354EntryGvFresh : List Wire := [779]

private def s6Step354ExitFExtra : List Wire := [350, 817]

private def s6Step354ExitFvExtra : List Wire := [881]

private def s6Step354ExitGExtra : List Wire := [875, 906]

private def s6Step354ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<350) ∨ (351≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354ExitGvExtra : List Wire := [779, 858]

private def s6Step354Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354Add0Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step354Add0_bounded : s6Step354Add0Work.toFinset⊆arenaWires := by
  have h : s6Step354Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step354Add0During : Arena := ⟨s6Step354Add0Arena.live∪s6Step354Add0Work.toFinset,Finset.union_subset s6Step354Add0Arena.bounded s6Step354Add0_bounded⟩

private def s6Step354Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354Add1Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step354Add1_bounded : s6Step354Add1Work.toFinset⊆arenaWires := by
  have h : s6Step354Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step354Add1During : Arena := ⟨s6Step354Add1Arena.live∪s6Step354Add1Work.toFinset,Finset.union_subset s6Step354Add1Arena.bounded s6Step354Add1_bounded⟩

private def s6Step354F4FlagArena : Arena := ⟨s6Step354HeadFvAfter.live∪{805},Finset.union_subset s6Step354HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step354F4Plan : HmrHybridF4Plan := ⟨s6Step354F4FlagArena,[805],s6Step354Add0Arena,[802],s6Step354Add0During,s6Step354Add0Work,s6Step354Add1During,s6Step354Add1Work⟩

private def s6Step354HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 817],795⟩

private def s6Step354HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 881],776⟩

private def s6Step354HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 875, 906],777⟩

private def s6Step354HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 779, 858],775⟩

private def s6Step354FrontHead : WindowBank := ⟨s6Step354HeadFOut,s6Step354HeadGOut,s6Step354HeadFvOut,s6Step354HeadGvOut⟩

private def s6Step354EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350],795⟩

private def s6Step354EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩

private def s6Step354EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 875],777⟩

private def s6Step354EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 779],775⟩

private def s6Step354FrontPair : WindowBank := ⟨s6Step354EntryFOut,s6Step354EntryGOut,s6Step354EntryFvOut,s6Step354EntryGvOut⟩

private def s6Step354FrontSigmaArena : Arena := ⟨s6Step354EntryGvAfter.live∪{789},Finset.union_subset s6Step354EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step354HeadFFresh : List Wire := [817]

private def s6Step354HeadFvFresh : List Wire := [881]

private def s6Step354HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354HeadGFresh : List Wire := [906]

private def s6Step354HeadGvFresh : List Wire := [858]

private def s6Step354FrontPlan : HmrSourceFront := ⟨s6Step354EntryGvAfter,s6Step354FrontPair,(growRow 795 s6Step354EntryFFresh ++ (growRow 777 s6Step354EntryGFresh ++ (growRow 776 s6Step354EntryFvFresh ++ (growRow 775 s6Step354EntryGvFresh ++ [])))),s6Step354FrontSigmaArena,[789],s6Step354HeadGBefore,[873],
  s6Step354HeadFvAfter,s6Step354FrontHead,(growRow 777 s6Step354HeadGFresh ++ (growRow 795 s6Step354HeadFFresh ++ (growRow 775 s6Step354HeadGvFresh ++ (growRow 776 s6Step354HeadFvFresh ++ [])))),s6Step354F4Plan,s6Step354CounterDuring,s6Step354CounterWork,s6Step354ExitGvAfter,s6Step354FrontOut,(shrinkRow 777 s6Step354ExitGExtra ++ (shrinkRow 795 s6Step354ExitFExtra ++ (shrinkRow 776 s6Step354ExitFvExtra ++ (shrinkRow 775 s6Step354ExitGvExtra ++ []))))⟩

private def s6Step354CompletePlan : HmrEarlyStepPlan := ⟨s6Step354FrontPlan,s6Step354EarlyControlArena,s6Step354EarlyControlPlan,s6Step354CompleteMoves⟩

private theorem s6Step354Complete_apart : List.Disjoint (s6Step354CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [789, 873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step354CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[789, 873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step354Complete_owned : (s6Step354CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step354EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step354EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step354CompleteMoveArena : Arena := ⟨s6Step354ExitGvAfter.live∪{350},Finset.union_subset s6Step354ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step354Complete_repack : s6Step354ExitGvAfter.checkRepack s6Step354CompleteMoves=some s6Step354EarlyControlArena := by
  have owned : 879∈s6Step354ExitGvAfter.live := by norm_num [s6Step354ExitGvAfter,arenaWires]
  have reserve : s6Step354ExitGvAfter.reserve {350}=some s6Step354CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step354ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step354CompleteMoveArena.retireSet {879}=s6Step354EarlyControlArena := by
    unfold Arena.retireSet s6Step354EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step354CompleteMoveArena,s6Step354ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step354CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step354CompleteMoveArena.retireSet {879}).checkRepack []=some s6Step354EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step354EarlyControl_branchOwned : ([873] : List Wire).toFinset⊆s6Step354EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step354EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354EarlyControl_branch : compileHmrBranchRetirement s6Step354EarlyControlSigmaArena 873=some s6Step354EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step354EarlyControl_branchOwned
  · ext q
    simp [s6Step354EarlyControlOutputArena,s6Step354EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step354EarlyControl_classEqualityBorrow : s6Step354EarlyControlPositiveArena.checkBorrow (([789, 875] : List Wire).length-1) s6Step354EarlyControlLog.classWork=some s6Step354EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step354EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step354EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step354EarlyControlEqualityArena,s6Step354EarlyControlPositiveArena,s6Step354EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step354EarlyControl_classEqualityOwned : ([789, 875] : List Wire).toFinset⊆s6Step354EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step354EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354EarlyControl_classEquality : compileHmrEqualityLog s6Step354EarlyControlPositiveArena [789, 875] 0 s6Step354EarlyControlLog.classWork=some (s6Step354EarlyControlEqualityArena,s6Step354EarlyControlLog.classWork,s6Step354EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step354EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step354EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step354EarlyControl_classOwned : ([769, 817, 789] : List Wire).toFinset⊆s6Step354EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step354EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354EarlyControl_positiveBorrow : s6Step354EarlyControlZeroArena.checkBorrow (1) s6Step354EarlyControlLog.positiveWork=some s6Step354EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step354EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step354EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step354EarlyControlPositiveArena,s6Step354EarlyControlZeroArena,s6Step354EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step354EarlyControl_class : compileHmrSourceClassLog s6Step354EarlyControlZeroArena false 769 s6Step354EarlyControlZeroPlan.top 0 789 s6Step354EarlyControlLog.positiveWork s6Step354EarlyControlLog.classWork=some s6Step354EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step354EarlyControlClassPlan s6Step354EarlyControlZeroArena false 769 s6Step354EarlyControlZeroPlan.top 0 789
  constructor
  · decide +kernel
  · exact s6Step354EarlyControl_classOwned
  · exact s6Step354EarlyControl_positiveBorrow
  · exact s6Step354EarlyControl_classEquality

private theorem s6Step354EarlyControl_entryRecordOwned : ([873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step354EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step354EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354EarlyControl_entrySigmaOwned : ([789, 254] : List Wire).toFinset⊆s6Step354EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step354EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354EarlyControl_fitBorrow : s6Step354EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step354EarlyControlLog.recordFresh=some s6Step354EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step354EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step354EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step354EarlyControlFittedArena,s6Step354EarlyControlFlagArena,s6Step354EarlyControlLog,arenaWires]

private theorem s6Step354EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step354EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step354EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354EarlyControl_fit : compileHmrRecordGrowLog s6Step354EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step354EarlyControlLog.recordFresh=some s6Step354EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step354EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step354EarlyControl_fitBorrow

private theorem s6Step354EarlyControl_flagsBorrow : s6Step354EarlyControlEqualityArena.checkBorrow (6) s6Step354EarlyControlLog.flagWork=some s6Step354EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step354EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step354EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step354EarlyControlFlagArena,s6Step354EarlyControlEqualityArena,s6Step354EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step354EarlyControl_flagsOwned : ([906, 253, 252, 251] : List Wire).toFinset⊆s6Step354EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step354EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354EarlyControl_flags : compileHmrFlagsLog s6Step354EarlyControlClassPlan.equalityArena s6Step354EarlyControlClassPlan.equality.top 253 252 251 s6Step354EarlyControlLog.flagWork=some s6Step354EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step354EarlyControl_flagsOwned⟩
  · exact s6Step354EarlyControl_flagsBorrow

private theorem s6Step354EarlyControl_historyBorrow : s6Step354EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step354EarlyControlLog.recordFresh=some s6Step354EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step354EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step354EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step354EarlyControlHistoryArena,s6Step354EarlyControlArena,s6Step354EarlyControlLog,arenaWires]

private theorem s6Step354EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step354EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step354EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354EarlyControl_history : compileHmrRecordGrowLog s6Step354EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step354EarlyControlLog.recordFresh=some s6Step354EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step354EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step354EarlyControl_historyBorrow

private theorem s6Step354EarlyControl_sigmaOwned : ([254, 789] : List Wire).toFinset⊆s6Step354EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step354EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354EarlyControl_sigmaReleaseOwned : ([789] : List Wire).toFinset⊆s6Step354EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step354EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354EarlyControl_sigmaRelease : s6Step354EarlyControlHistoryArena.release {789} (fun _ => false)=some s6Step354EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step354EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step354EarlyControlSigmaArena,s6Step354EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step354EarlyControl_sigma : compileHmrSigmaDropLog s6Step354EarlyControlHistoryArena false 0 0 254 789 []=some s6Step354EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step354EarlyControl_sigmaOwned⟩
  · exact s6Step354EarlyControl_sigmaRelease

private theorem s6Step354EarlyControl_zeroBorrow : s6Step354EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step354EarlyControlLog.zeroWork=some s6Step354EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step354EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step354EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step354EarlyControlZeroArena,s6Step354EarlyControlArena,s6Step354EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step354EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step354EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step354EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354EarlyControl_zero : compileHmrEqualityLog s6Step354EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step354EarlyControlLog.zeroWork=some (s6Step354EarlyControlZeroArena,s6Step354EarlyControlLog.zeroWork,s6Step354EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step354EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step354EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step354EarlyControl_logged : s6Step354EarlyControlPlan.Logged s6Step354EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 254 253 252 251 873 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step354EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step354EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step354EarlyControl_zero
  · exact s6Step354EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step354EarlyControl_flags
  · exact s6Step354EarlyControl_fit
  · exact s6Step354EarlyControl_history
  · exact s6Step354EarlyControl_sigma
  · exact s6Step354EarlyControl_branch

private theorem s6Step354EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step354EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 254 253 252 251 873 60 s6Step354EarlyControlLog=some s6Step354EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step354EarlyControlPlan s6Step354EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 254 253 252 251 873 60 s6Step354EarlyControl_logged

private def s6Step354EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350],795⟩

private def s6Step354EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩

private def s6Step354EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],777⟩

private def s6Step354EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809],775⟩

private def s6Step354FrontBank : WindowBank := ⟨s6Step354EntryFRow,s6Step354EntryGRow,s6Step354EntryFvRow,s6Step354EntryGvRow⟩

private def s6Step354Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 817, 795]

private def s6Step354Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 875, 906, 777]

private def s6Step354Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 881, 776]

private def s6Step354Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 779, 858, 775]

private theorem s6Step354Counter_apart : Disjoint s6Step354HeadFvAfter.live s6Step354CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step354HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354Counter_borrowed : s6Step354HeadFvAfter.checkBorrow 4 s6Step354CounterWork=some s6Step354CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step354HeadFvAfter s6Step354CounterDuring s6Step354CounterWork.toFinset s6Step354Counter_bounded s6Step354Counter_apart rfl

private theorem s6Step354Counter_owned : (789::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step354HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step354HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354Counter_checked : compileHmrCounterStepLog s6Step354HeadFvAfter true 789 [774, 773, 772, 771, 770, 769] s6Step354CounterWork=some s6Step354CounterDuring := by
  have owned : ∀q∈789::[774, 773, 772, 771, 770, 769],q∈s6Step354HeadFvAfter.live := fun q hq => s6Step354Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step354Counter_borrowed

private def s6Step354EntryFAfter : Arena := s6Step354EntryFBefore

private theorem s6Step354EntryBank_incomingDistinct : ([s6Step354EntryFRow,s6Step354EntryGRow,s6Step354EntryFvRow,s6Step354EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354EntryF_Incoming : rowsOwned s6Step354EntryFBefore [s6Step354EntryFRow,s6Step354EntryGRow,s6Step354EntryFvRow,s6Step354EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step354EntryFRow,s6Step354EntryGRow,s6Step354EntryFvRow,s6Step354EntryGvRow] 0 s6Step354EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step354EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step354EntryBank_outgoingOwned : rowsOwned s6Step354EntryGvAfter [s6Step354EntryFOut,s6Step354EntryGOut,s6Step354EntryFvOut,s6Step354EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step354EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step354EntryF_Outgoing : rowsOwned s6Step354EntryGvAfter [s6Step354EntryFOut,s6Step354EntryGOut,s6Step354EntryFvOut,s6Step354EntryGvOut] :=
  hmrRows_owned_drop s6Step354EntryGvAfter [s6Step354EntryFOut,s6Step354EntryGOut,s6Step354EntryFvOut,s6Step354EntryGvOut] 0 s6Step354EntryBank_outgoingOwned

private theorem s6Step354EntryF_distinct : (s6Step354EntryFRow.sign::s6Step354EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354EntryF_owned : (s6Step354EntryFRow.sign::s6Step354EntryFRow.payload).toFinset⊆s6Step354EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step354EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354EntryF_reserved : s6Step354EntryFBefore.reserve s6Step354EntryFFresh.toFinset=some s6Step354EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step354EntryFFresh,arenaWires]
  · norm_num [s6Step354EntryFBefore,s6Step354EntryFFresh,arenaWires]
  · simp only [s6Step354EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step354EntryF_checked : planRowResizeLog s6Step354EntryFBefore s6Step354EntryFRow 95 s6Step354EntryFFresh=
    some (s6Step354EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350],795⟩,growRow 795 s6Step354EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step354EntryFBefore s6Step354EntryFAfter s6Step354EntryFRow 95 s6Step354EntryFFresh
    s6Step354EntryF_distinct s6Step354EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step354EntryF_reserved
  have rowEq : WindowRow.mk (s6Step354EntryFRow.payload++s6Step354EntryFFresh) s6Step354EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step354EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354EntryFvAfter : Arena := s6Step354EntryGAfter

private def s6Step354EntryFvBefore : Arena := s6Step354EntryGAfter

private theorem s6Step354EntryFv_Incoming : rowsOwned s6Step354EntryFvBefore [s6Step354EntryFvRow,s6Step354EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step354EntryFRow,s6Step354EntryGRow,s6Step354EntryFvRow,s6Step354EntryGvRow] 2 s6Step354EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step354EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step354EntryFv_Outgoing : rowsOwned s6Step354EntryGvAfter [s6Step354EntryFvOut,s6Step354EntryGvOut] :=
  hmrRows_owned_drop s6Step354EntryGvAfter [s6Step354EntryFOut,s6Step354EntryGOut,s6Step354EntryFvOut,s6Step354EntryGvOut] 2 s6Step354EntryBank_outgoingOwned

private theorem s6Step354EntryFv_distinct : (s6Step354EntryFvRow.sign::s6Step354EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354EntryFv_owned : (s6Step354EntryFvRow.sign::s6Step354EntryFvRow.payload).toFinset⊆s6Step354EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step354EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354EntryFv_reserved : s6Step354EntryFvBefore.reserve s6Step354EntryFvFresh.toFinset=some s6Step354EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step354EntryFvFresh,arenaWires]
  · norm_num [s6Step354EntryFvBefore,s6Step354EntryGAfter,s6Step354EntryFvFresh,arenaWires]
  · simp only [s6Step354EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step354EntryFv_checked : planRowResizeLog s6Step354EntryFvBefore s6Step354EntryFvRow 193 s6Step354EntryFvFresh=
    some (s6Step354EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩,growRow 776 s6Step354EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step354EntryFvBefore s6Step354EntryFvAfter s6Step354EntryFvRow 193 s6Step354EntryFvFresh
    s6Step354EntryFv_distinct s6Step354EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step354EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step354EntryFvRow.payload++s6Step354EntryFvFresh) s6Step354EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step354EntryGBefore : Arena := s6Step354EntryFBefore

private theorem s6Step354EntryG_Incoming : rowsOwned s6Step354EntryGBefore [s6Step354EntryGRow,s6Step354EntryFvRow,s6Step354EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step354EntryFRow,s6Step354EntryGRow,s6Step354EntryFvRow,s6Step354EntryGvRow] 1 s6Step354EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step354EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step354EntryG_Outgoing : rowsOwned s6Step354EntryGvAfter [s6Step354EntryGOut,s6Step354EntryFvOut,s6Step354EntryGvOut] :=
  hmrRows_owned_drop s6Step354EntryGvAfter [s6Step354EntryFOut,s6Step354EntryGOut,s6Step354EntryFvOut,s6Step354EntryGvOut] 1 s6Step354EntryBank_outgoingOwned

private theorem s6Step354EntryG_distinct : (s6Step354EntryGRow.sign::s6Step354EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354EntryG_owned : (s6Step354EntryGRow.sign::s6Step354EntryGRow.payload).toFinset⊆s6Step354EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step354EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354EntryG_reserved : s6Step354EntryGBefore.reserve s6Step354EntryGFresh.toFinset=some s6Step354EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step354EntryGFresh,arenaWires]
  · norm_num [s6Step354EntryGBefore,s6Step354EntryFBefore,s6Step354EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step354EntryGAfter,s6Step354EntryGBefore,s6Step354EntryFBefore,s6Step354EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step354EntryG_checked : planRowResizeLog s6Step354EntryGBefore s6Step354EntryGRow 95 s6Step354EntryGFresh=
    some (s6Step354EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 875],777⟩,growRow 777 s6Step354EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step354EntryGBefore s6Step354EntryGAfter s6Step354EntryGRow 95 s6Step354EntryGFresh
    s6Step354EntryG_distinct s6Step354EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step354EntryG_reserved
  have rowEq : WindowRow.mk (s6Step354EntryGRow.payload++s6Step354EntryGFresh) s6Step354EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 875],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step354EntryGvBefore : Arena := s6Step354EntryGAfter

private theorem s6Step354EntryGv_Incoming : rowsOwned s6Step354EntryGvBefore [s6Step354EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step354EntryFRow,s6Step354EntryGRow,s6Step354EntryFvRow,s6Step354EntryGvRow] 3 s6Step354EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step354EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step354EntryGv_Outgoing : rowsOwned s6Step354EntryGvAfter [s6Step354EntryGvOut] :=
  hmrRows_owned_drop s6Step354EntryGvAfter [s6Step354EntryFOut,s6Step354EntryGOut,s6Step354EntryFvOut,s6Step354EntryGvOut] 3 s6Step354EntryBank_outgoingOwned

private theorem s6Step354EntryGv_distinct : (s6Step354EntryGvRow.sign::s6Step354EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354EntryGv_owned : (s6Step354EntryGvRow.sign::s6Step354EntryGvRow.payload).toFinset⊆s6Step354EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step354EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354EntryGv_reserved : s6Step354EntryGvBefore.reserve s6Step354EntryGvFresh.toFinset=some s6Step354EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step354EntryGvFresh,arenaWires]
  · norm_num [s6Step354EntryGvBefore,s6Step354EntryGAfter,s6Step354EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step354EntryGvAfter,s6Step354EntryGvBefore,s6Step354EntryGAfter,s6Step354EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step354EntryGv_checked : planRowResizeLog s6Step354EntryGvBefore s6Step354EntryGvRow 193 s6Step354EntryGvFresh=
    some (s6Step354EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 779],775⟩,growRow 775 s6Step354EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step354EntryGvBefore s6Step354EntryGvAfter s6Step354EntryGvRow 193 s6Step354EntryGvFresh
    s6Step354EntryGv_distinct s6Step354EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step354EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step354EntryGvRow.payload++s6Step354EntryGvFresh) s6Step354EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 779],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step354EntryBank_rows : planWindowRowsLog s6Step354EntryFBefore [(s6Step354EntryFRow,95),(s6Step354EntryGRow,95),(s6Step354EntryFvRow,193),(s6Step354EntryGvRow,193)] [s6Step354EntryFFresh,s6Step354EntryGFresh,s6Step354EntryFvFresh,s6Step354EntryGvFresh]=
    some (s6Step354EntryGvAfter,[s6Step354EntryFOut,s6Step354EntryGOut,s6Step354EntryFvOut,s6Step354EntryGvOut],(growRow 795 s6Step354EntryFFresh ++ (growRow 777 s6Step354EntryGFresh ++ (growRow 776 s6Step354EntryFvFresh ++ (growRow 775 s6Step354EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step354EntryGvAfter [] []=some (s6Step354EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step354EntryGvBefore s6Step354EntryGvAfter s6Step354EntryGvAfter
    s6Step354EntryGvRow s6Step354EntryGvOut 193 s6Step354EntryGvFresh [] [] []
    (growRow 775 s6Step354EntryGvFresh) ([]) s6Step354EntryGv_Incoming s6Step354EntryGv_checked h4 s6Step354EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step354EntryFvBefore s6Step354EntryFvAfter s6Step354EntryGvAfter
    s6Step354EntryFvRow s6Step354EntryFvOut 193 s6Step354EntryFvFresh [(s6Step354EntryGvRow,193)] [s6Step354EntryGvFresh] [s6Step354EntryGvOut]
    (growRow 776 s6Step354EntryFvFresh) ((growRow 775 s6Step354EntryGvFresh ++ [])) s6Step354EntryFv_Incoming s6Step354EntryFv_checked h3 s6Step354EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step354EntryGBefore s6Step354EntryGAfter s6Step354EntryGvAfter
    s6Step354EntryGRow s6Step354EntryGOut 95 s6Step354EntryGFresh [(s6Step354EntryFvRow,193),(s6Step354EntryGvRow,193)] [s6Step354EntryFvFresh,s6Step354EntryGvFresh] [s6Step354EntryFvOut,s6Step354EntryGvOut]
    (growRow 777 s6Step354EntryGFresh) ((growRow 776 s6Step354EntryFvFresh ++ (growRow 775 s6Step354EntryGvFresh ++ []))) s6Step354EntryG_Incoming s6Step354EntryG_checked h2 s6Step354EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step354EntryFBefore s6Step354EntryFAfter s6Step354EntryGvAfter
    s6Step354EntryFRow s6Step354EntryFOut 95 s6Step354EntryFFresh [(s6Step354EntryGRow,95),(s6Step354EntryFvRow,193),(s6Step354EntryGvRow,193)] [s6Step354EntryGFresh,s6Step354EntryFvFresh,s6Step354EntryGvFresh] [s6Step354EntryGOut,s6Step354EntryFvOut,s6Step354EntryGvOut]
    (growRow 795 s6Step354EntryFFresh) ((growRow 777 s6Step354EntryGFresh ++ (growRow 776 s6Step354EntryFvFresh ++ (growRow 775 s6Step354EntryGvFresh ++ [])))) s6Step354EntryF_Incoming s6Step354EntryF_checked h1 s6Step354EntryF_Outgoing
  exact h0

private theorem s6Step354EntryBank_checked : compileHmrBankResizeLog .entry s6Step354EntryFBefore ⟨s6Step354EntryFRow,s6Step354EntryGRow,s6Step354EntryFvRow,s6Step354EntryGvRow⟩ ⟨95,95,193,193⟩ [s6Step354EntryFFresh,s6Step354EntryGFresh,s6Step354EntryFvFresh,s6Step354EntryGvFresh]=
    some (s6Step354EntryGvAfter,⟨s6Step354EntryFOut,s6Step354EntryGOut,s6Step354EntryFvOut,s6Step354EntryGvOut⟩,(growRow 795 s6Step354EntryFFresh ++ (growRow 777 s6Step354EntryGFresh ++ (growRow 776 s6Step354EntryFvFresh ++ (growRow 775 s6Step354EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step354EntryBank_rows]
  rfl

private def s6Step354ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<350) ∨ (351≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354ExitFBefore : Arena := s6Step354ExitGAfter

private def s6Step354ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 817],795⟩

private def s6Step354ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 881],776⟩

private def s6Step354ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 875, 906],777⟩

private def s6Step354ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 779, 858],775⟩

private theorem s6Step354ExitBank_incomingDistinct : ([s6Step354ExitGRow,s6Step354ExitFRow,s6Step354ExitFvRow,s6Step354ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354ExitF_Incoming : rowsOwned s6Step354ExitFBefore [s6Step354ExitFRow,s6Step354ExitFvRow,s6Step354ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step354ExitGRow,s6Step354ExitFRow,s6Step354ExitFvRow,s6Step354ExitGvRow] 1 s6Step354ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step354ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step354ExitBank_outgoingOwned : rowsOwned s6Step354ExitGvAfter [s6Step354ExitGOut,s6Step354ExitFOut,s6Step354ExitFvOut,s6Step354ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step354ExitGvAfter (fun q => (0≤q ∧ q<350) ∨ (351≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step354ExitF_Outgoing : rowsOwned s6Step354ExitGvAfter [s6Step354ExitFOut,s6Step354ExitFvOut,s6Step354ExitGvOut] :=
  hmrRows_owned_drop s6Step354ExitGvAfter [s6Step354ExitGOut,s6Step354ExitFOut,s6Step354ExitFvOut,s6Step354ExitGvOut] 1 s6Step354ExitBank_outgoingOwned

private theorem s6Step354ExitF_distinct : (s6Step354ExitFRow.sign::s6Step354ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354ExitF_owned : (s6Step354ExitFRow.sign::s6Step354ExitFRow.payload).toFinset⊆s6Step354ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step354ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354ExitF_retired : s6Step354ExitFBefore.retireSet s6Step354ExitFExtra.toFinset=s6Step354ExitFAfter := by
  unfold Arena.retireSet s6Step354ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step354ExitFBefore,s6Step354ExitGAfter,s6Step354ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step354ExitF_checked : planRowResizeLog s6Step354ExitFBefore s6Step354ExitFRow 94 []=
    some (s6Step354ExitFAfter,s6Step354ExitFOut,shrinkRow 795 s6Step354ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step354ExitFBefore s6Step354ExitFRow 94 s6Step354ExitF_distinct s6Step354ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step354ExitFRow.payload.take 94) s6Step354ExitFRow.sign=s6Step354ExitFOut := by decide +kernel
  have hi : s6Step354ExitFRow.payload.drop 94=s6Step354ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step354ExitF_retired] at result
  exact result

private def s6Step354ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<350) ∨ (351≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354ExitFvBefore : Arena := s6Step354ExitFAfter

private theorem s6Step354ExitFv_Incoming : rowsOwned s6Step354ExitFvBefore [s6Step354ExitFvRow,s6Step354ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step354ExitGRow,s6Step354ExitFRow,s6Step354ExitFvRow,s6Step354ExitGvRow] 2 s6Step354ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step354ExitFvBefore (fun q => (0≤q ∧ q<350) ∨ (351≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step354ExitFv_Outgoing : rowsOwned s6Step354ExitGvAfter [s6Step354ExitFvOut,s6Step354ExitGvOut] :=
  hmrRows_owned_drop s6Step354ExitGvAfter [s6Step354ExitGOut,s6Step354ExitFOut,s6Step354ExitFvOut,s6Step354ExitGvOut] 2 s6Step354ExitBank_outgoingOwned

private theorem s6Step354ExitFv_distinct : (s6Step354ExitFvRow.sign::s6Step354ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354ExitFv_owned : (s6Step354ExitFvRow.sign::s6Step354ExitFvRow.payload).toFinset⊆s6Step354ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step354ExitFvBefore (fun q => (0≤q ∧ q<350) ∨ (351≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354ExitFv_retired : s6Step354ExitFvBefore.retireSet s6Step354ExitFvExtra.toFinset=s6Step354ExitFvAfter := by
  unfold Arena.retireSet s6Step354ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step354ExitFvBefore,s6Step354ExitFAfter,s6Step354ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step354ExitFv_checked : planRowResizeLog s6Step354ExitFvBefore s6Step354ExitFvRow 193 []=
    some (s6Step354ExitFvAfter,s6Step354ExitFvOut,shrinkRow 776 s6Step354ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step354ExitFvBefore s6Step354ExitFvRow 193 s6Step354ExitFv_distinct s6Step354ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step354ExitFvRow.payload.take 193) s6Step354ExitFvRow.sign=s6Step354ExitFvOut := by decide +kernel
  have hi : s6Step354ExitFvRow.payload.drop 193=s6Step354ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step354ExitFv_retired] at result
  exact result

private def s6Step354ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step354ExitG_Incoming : rowsOwned s6Step354ExitGBefore [s6Step354ExitGRow,s6Step354ExitFRow,s6Step354ExitFvRow,s6Step354ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step354ExitGRow,s6Step354ExitFRow,s6Step354ExitFvRow,s6Step354ExitGvRow] 0 s6Step354ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step354ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step354ExitG_Outgoing : rowsOwned s6Step354ExitGvAfter [s6Step354ExitGOut,s6Step354ExitFOut,s6Step354ExitFvOut,s6Step354ExitGvOut] :=
  hmrRows_owned_drop s6Step354ExitGvAfter [s6Step354ExitGOut,s6Step354ExitFOut,s6Step354ExitFvOut,s6Step354ExitGvOut] 0 s6Step354ExitBank_outgoingOwned

private theorem s6Step354ExitG_distinct : (s6Step354ExitGRow.sign::s6Step354ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354ExitG_owned : (s6Step354ExitGRow.sign::s6Step354ExitGRow.payload).toFinset⊆s6Step354ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step354ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354ExitG_retired : s6Step354ExitGBefore.retireSet s6Step354ExitGExtra.toFinset=s6Step354ExitGAfter := by
  unfold Arena.retireSet s6Step354ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step354ExitGBefore,s6Step354ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step354ExitG_checked : planRowResizeLog s6Step354ExitGBefore s6Step354ExitGRow 94 []=
    some (s6Step354ExitGAfter,s6Step354ExitGOut,shrinkRow 777 s6Step354ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step354ExitGBefore s6Step354ExitGRow 94 s6Step354ExitG_distinct s6Step354ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step354ExitGRow.payload.take 94) s6Step354ExitGRow.sign=s6Step354ExitGOut := by decide +kernel
  have hi : s6Step354ExitGRow.payload.drop 94=s6Step354ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step354ExitG_retired] at result
  exact result

private def s6Step354ExitGvBefore : Arena := s6Step354ExitFvAfter

private theorem s6Step354ExitGv_Incoming : rowsOwned s6Step354ExitGvBefore [s6Step354ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step354ExitGRow,s6Step354ExitFRow,s6Step354ExitFvRow,s6Step354ExitGvRow] 3 s6Step354ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step354ExitGvBefore (fun q => (0≤q ∧ q<350) ∨ (351≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step354ExitGv_Outgoing : rowsOwned s6Step354ExitGvAfter [s6Step354ExitGvOut] :=
  hmrRows_owned_drop s6Step354ExitGvAfter [s6Step354ExitGOut,s6Step354ExitFOut,s6Step354ExitFvOut,s6Step354ExitGvOut] 3 s6Step354ExitBank_outgoingOwned

private theorem s6Step354ExitGv_distinct : (s6Step354ExitGvRow.sign::s6Step354ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354ExitGv_owned : (s6Step354ExitGvRow.sign::s6Step354ExitGvRow.payload).toFinset⊆s6Step354ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step354ExitGvBefore (fun q => (0≤q ∧ q<350) ∨ (351≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354ExitGv_retired : s6Step354ExitGvBefore.retireSet s6Step354ExitGvExtra.toFinset=s6Step354ExitGvAfter := by
  unfold Arena.retireSet s6Step354ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step354ExitGvBefore,s6Step354ExitFvAfter,s6Step354ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step354ExitGv_checked : planRowResizeLog s6Step354ExitGvBefore s6Step354ExitGvRow 192 []=
    some (s6Step354ExitGvAfter,s6Step354ExitGvOut,shrinkRow 775 s6Step354ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step354ExitGvBefore s6Step354ExitGvRow 192 s6Step354ExitGv_distinct s6Step354ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step354ExitGvRow.payload.take 192) s6Step354ExitGvRow.sign=s6Step354ExitGvOut := by decide +kernel
  have hi : s6Step354ExitGvRow.payload.drop 192=s6Step354ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step354ExitGv_retired] at result
  exact result

private theorem s6Step354ExitBank_rows : planWindowRowsLog s6Step354ExitGBefore [(s6Step354ExitGRow,94),(s6Step354ExitFRow,94),(s6Step354ExitFvRow,193),(s6Step354ExitGvRow,192)] [[],[],[],[]]=
    some (s6Step354ExitGvAfter,[s6Step354ExitGOut,s6Step354ExitFOut,s6Step354ExitFvOut,s6Step354ExitGvOut],(shrinkRow 777 s6Step354ExitGExtra ++ (shrinkRow 795 s6Step354ExitFExtra ++ (shrinkRow 776 s6Step354ExitFvExtra ++ (shrinkRow 775 s6Step354ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step354ExitGvAfter [] []=some (s6Step354ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step354ExitGvBefore s6Step354ExitGvAfter s6Step354ExitGvAfter
    s6Step354ExitGvRow s6Step354ExitGvOut 192 [] [] [] []
    (shrinkRow 775 s6Step354ExitGvExtra) ([]) s6Step354ExitGv_Incoming s6Step354ExitGv_checked h4 s6Step354ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step354ExitFvBefore s6Step354ExitFvAfter s6Step354ExitGvAfter
    s6Step354ExitFvRow s6Step354ExitFvOut 193 [] [(s6Step354ExitGvRow,192)] [[]] [s6Step354ExitGvOut]
    (shrinkRow 776 s6Step354ExitFvExtra) ((shrinkRow 775 s6Step354ExitGvExtra ++ [])) s6Step354ExitFv_Incoming s6Step354ExitFv_checked h3 s6Step354ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step354ExitFBefore s6Step354ExitFAfter s6Step354ExitGvAfter
    s6Step354ExitFRow s6Step354ExitFOut 94 [] [(s6Step354ExitFvRow,193),(s6Step354ExitGvRow,192)] [[],[]] [s6Step354ExitFvOut,s6Step354ExitGvOut]
    (shrinkRow 795 s6Step354ExitFExtra) ((shrinkRow 776 s6Step354ExitFvExtra ++ (shrinkRow 775 s6Step354ExitGvExtra ++ []))) s6Step354ExitF_Incoming s6Step354ExitF_checked h2 s6Step354ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step354ExitGBefore s6Step354ExitGAfter s6Step354ExitGvAfter
    s6Step354ExitGRow s6Step354ExitGOut 94 [] [(s6Step354ExitFRow,94),(s6Step354ExitFvRow,193),(s6Step354ExitGvRow,192)] [[],[],[]] [s6Step354ExitFOut,s6Step354ExitFvOut,s6Step354ExitGvOut]
    (shrinkRow 777 s6Step354ExitGExtra) ((shrinkRow 795 s6Step354ExitFExtra ++ (shrinkRow 776 s6Step354ExitFvExtra ++ (shrinkRow 775 s6Step354ExitGvExtra ++ [])))) s6Step354ExitG_Incoming s6Step354ExitG_checked h1 s6Step354ExitG_Outgoing
  exact h0

private theorem s6Step354ExitBank_checked : compileHmrBankResizeLog .exit s6Step354ExitGBefore ⟨s6Step354ExitFRow,s6Step354ExitGRow,s6Step354ExitFvRow,s6Step354ExitGvRow⟩ ⟨94,94,193,192⟩ [[],[],[],[]]=
    some (s6Step354ExitGvAfter,⟨s6Step354ExitFOut,s6Step354ExitGOut,s6Step354ExitFvOut,s6Step354ExitGvOut⟩,(shrinkRow 777 s6Step354ExitGExtra ++ (shrinkRow 795 s6Step354ExitFExtra ++ (shrinkRow 776 s6Step354ExitFvExtra ++ (shrinkRow 775 s6Step354ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step354ExitBank_rows]
  rfl

private theorem s6Step354Add0_apart : Disjoint s6Step354Add0Arena.live s6Step354Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step354Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354Add0_card : s6Step354Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step354Add0_borrowed : s6Step354Add0Arena.checkBorrow (hmrHybridCount s6Step354Add0Arena s6Step354Add0B.length) s6Step354Add0Work=some s6Step354Add0During := by
  have len : s6Step354Add0Work.length=hmrHybridCount s6Step354Add0Arena s6Step354Add0B.length := by
    rw [hmrHybridCount,s6Step354Add0_card]
    decide +kernel
  have nd : s6Step354Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step354Add0Arena s6Step354Add0During s6Step354Add0Work.toFinset s6Step354Add0_bounded s6Step354Add0_apart rfl

private theorem s6Step354Add0_distinct : (805::873::802::(s6Step354Add0A++s6Step354Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354Add0_owned : (805::873::802::(s6Step354Add0A++s6Step354Add0B)).toFinset⊆s6Step354Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step354Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354Add0_checked : compileHmrHybridCinLog s6Step354Add0Arena 873 805 802 s6Step354Add0A s6Step354Add0B s6Step354Add0Work=some s6Step354Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step354Add0Arena s6Step354Add0During 873 805 802 s6Step354Add0A s6Step354Add0B s6Step354Add0Work
    (by decide +kernel) (by decide +kernel) s6Step354Add0_distinct
    (fun q hq => s6Step354Add0_owned (List.mem_toFinset.mpr hq)) s6Step354Add0_borrowed

private theorem s6Step354Add1_apart : Disjoint s6Step354Add1Arena.live s6Step354Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step354Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354Add1_card : s6Step354Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step354Add1_borrowed : s6Step354Add1Arena.checkBorrow (hmrHybridCount s6Step354Add1Arena s6Step354Add1B.length) s6Step354Add1Work=some s6Step354Add1During := by
  have len : s6Step354Add1Work.length=hmrHybridCount s6Step354Add1Arena s6Step354Add1B.length := by
    rw [hmrHybridCount,s6Step354Add1_card]
    decide +kernel
  have nd : s6Step354Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step354Add1Arena s6Step354Add1During s6Step354Add1Work.toFinset s6Step354Add1_bounded s6Step354Add1_apart rfl

private theorem s6Step354Add1_distinct : (805::873::802::(s6Step354Add1A++s6Step354Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354Add1_owned : (805::873::802::(s6Step354Add1A++s6Step354Add1B)).toFinset⊆s6Step354Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step354Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354Add1_checked : compileHmrHybridCinLog s6Step354Add1Arena 873 805 802 s6Step354Add1A s6Step354Add1B s6Step354Add1Work=some s6Step354Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step354Add1Arena s6Step354Add1During 873 805 802 s6Step354Add1A s6Step354Add1B s6Step354Add1Work
    (by decide +kernel) (by decide +kernel) s6Step354Add1_distinct
    (fun q hq => s6Step354Add1_owned (List.mem_toFinset.mpr hq)) s6Step354Add1_borrowed

private theorem s6Step354F4_apart : Disjoint (s6Step354Add0A++s6Step354Add0B).toFinset (s6Step354Add1A++s6Step354Add1B).toFinset := by
  have nd : ((s6Step354Add0A++s6Step354Add0B)++(s6Step354Add1A++s6Step354Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step354F4_carry : s6Step354F4FlagArena.checkBorrow 1 [802]=some s6Step354Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step354F4FlagArena,s6Step354HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step354F4FlagArena,s6Step354HeadFvAfter,s6Step354Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step354F4_distinct : (789::873::805::802::((s6Step354Add0A++s6Step354Add1A)++(s6Step354Add0B++s6Step354Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354F4_flag : s6Step354HeadFvAfter.checkBorrow 1 [805]=some s6Step354F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step354HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step354F4_owned : (789::873::((s6Step354Add0A++s6Step354Add1A)++(s6Step354Add0B++s6Step354Add1B))).toFinset⊆s6Step354HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step354HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354F4_checked : compileHmrHybridF4Log s6Step354HeadFvAfter 789 873 s6Step354Add0A s6Step354Add0B s6Step354Add1A s6Step354Add1B [805] [802] s6Step354Add0Work s6Step354Add1Work=some s6Step354F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step354HeadFvAfter s6Step354F4FlagArena s6Step354Add0Arena s6Step354Add0During s6Step354Add1During 789 873
    s6Step354Add0A s6Step354Add0B s6Step354Add1A s6Step354Add1B [805] [802] s6Step354Add0Work s6Step354Add1Work
    (fun q hq => s6Step354F4_owned (List.mem_toFinset.mpr hq)) s6Step354F4_flag s6Step354F4_carry
    s6Step354F4_distinct s6Step354F4_apart s6Step354Add0_checked s6Step354Add1_checked

private theorem s6Step354Front_branch : s6Step354FrontSigmaArena.checkBorrow 1 [873]=some s6Step354HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step354FrontSigmaArena,s6Step354EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step354FrontSigmaArena,s6Step354EntryGvAfter,s6Step354HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step354Front_entry : HmrFrontEntryValid s6Step354EntryFBefore s6Step354FrontBank 95 193 ⟨94,94,193,192⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step354FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step354EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step354EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step354FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step354Front_sigma : s6Step354EntryGvAfter.checkBorrow 1 [789]=some s6Step354FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step354EntryGvAfter,arenaWires]
  · rfl

private def s6Step354HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354HeadFBefore : Arena := s6Step354HeadGAfter

private def s6Step354HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350],795⟩

private def s6Step354HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩

private def s6Step354HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 875],777⟩

private def s6Step354HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 779],775⟩

private theorem s6Step354HeadBank_incomingDistinct : ([s6Step354HeadGRow,s6Step354HeadFRow,s6Step354HeadGvRow,s6Step354HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354HeadF_Incoming : rowsOwned s6Step354HeadFBefore [s6Step354HeadFRow,s6Step354HeadGvRow,s6Step354HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step354HeadGRow,s6Step354HeadFRow,s6Step354HeadGvRow,s6Step354HeadFvRow] 1 s6Step354HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step354HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step354HeadBank_outgoingOwned : rowsOwned s6Step354HeadFvAfter [s6Step354HeadGOut,s6Step354HeadFOut,s6Step354HeadGvOut,s6Step354HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step354HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step354HeadF_Outgoing : rowsOwned s6Step354HeadFvAfter [s6Step354HeadFOut,s6Step354HeadGvOut,s6Step354HeadFvOut] :=
  hmrRows_owned_drop s6Step354HeadFvAfter [s6Step354HeadGOut,s6Step354HeadFOut,s6Step354HeadGvOut,s6Step354HeadFvOut] 1 s6Step354HeadBank_outgoingOwned

private theorem s6Step354HeadF_distinct : (s6Step354HeadFRow.sign::s6Step354HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354HeadF_owned : (s6Step354HeadFRow.sign::s6Step354HeadFRow.payload).toFinset⊆s6Step354HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step354HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354HeadF_reserved : s6Step354HeadFBefore.reserve s6Step354HeadFFresh.toFinset=some s6Step354HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step354HeadFFresh,arenaWires]
  · norm_num [s6Step354HeadFBefore,s6Step354HeadGAfter,s6Step354HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step354HeadFAfter,s6Step354HeadFBefore,s6Step354HeadGAfter,s6Step354HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step354HeadF_checked : planRowResizeLog s6Step354HeadFBefore s6Step354HeadFRow 96 s6Step354HeadFFresh=
    some (s6Step354HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 817],795⟩,growRow 795 s6Step354HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step354HeadFBefore s6Step354HeadFAfter s6Step354HeadFRow 96 s6Step354HeadFFresh
    s6Step354HeadF_distinct s6Step354HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step354HeadF_reserved
  have rowEq : WindowRow.mk (s6Step354HeadFRow.payload++s6Step354HeadFFresh) s6Step354HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 817],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step354HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step354HeadFvBefore : Arena := s6Step354HeadGvAfter

private theorem s6Step354HeadFv_Incoming : rowsOwned s6Step354HeadFvBefore [s6Step354HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step354HeadGRow,s6Step354HeadFRow,s6Step354HeadGvRow,s6Step354HeadFvRow] 3 s6Step354HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step354HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step354HeadFv_Outgoing : rowsOwned s6Step354HeadFvAfter [s6Step354HeadFvOut] :=
  hmrRows_owned_drop s6Step354HeadFvAfter [s6Step354HeadGOut,s6Step354HeadFOut,s6Step354HeadGvOut,s6Step354HeadFvOut] 3 s6Step354HeadBank_outgoingOwned

private theorem s6Step354HeadFv_distinct : (s6Step354HeadFvRow.sign::s6Step354HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354HeadFv_owned : (s6Step354HeadFvRow.sign::s6Step354HeadFvRow.payload).toFinset⊆s6Step354HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step354HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354HeadFv_reserved : s6Step354HeadFvBefore.reserve s6Step354HeadFvFresh.toFinset=some s6Step354HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step354HeadFvFresh,arenaWires]
  · norm_num [s6Step354HeadFvBefore,s6Step354HeadGvAfter,s6Step354HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step354HeadFvAfter,s6Step354HeadFvBefore,s6Step354HeadGvAfter,s6Step354HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step354HeadFv_checked : planRowResizeLog s6Step354HeadFvBefore s6Step354HeadFvRow 194 s6Step354HeadFvFresh=
    some (s6Step354HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 881],776⟩,growRow 776 s6Step354HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step354HeadFvBefore s6Step354HeadFvAfter s6Step354HeadFvRow 194 s6Step354HeadFvFresh
    s6Step354HeadFv_distinct s6Step354HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step354HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step354HeadFvRow.payload++s6Step354HeadFvFresh) s6Step354HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 881],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step354HeadG_Incoming : rowsOwned s6Step354HeadGBefore [s6Step354HeadGRow,s6Step354HeadFRow,s6Step354HeadGvRow,s6Step354HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step354HeadGRow,s6Step354HeadFRow,s6Step354HeadGvRow,s6Step354HeadFvRow] 0 s6Step354HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step354HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step354HeadG_Outgoing : rowsOwned s6Step354HeadFvAfter [s6Step354HeadGOut,s6Step354HeadFOut,s6Step354HeadGvOut,s6Step354HeadFvOut] :=
  hmrRows_owned_drop s6Step354HeadFvAfter [s6Step354HeadGOut,s6Step354HeadFOut,s6Step354HeadGvOut,s6Step354HeadFvOut] 0 s6Step354HeadBank_outgoingOwned

private theorem s6Step354HeadG_distinct : (s6Step354HeadGRow.sign::s6Step354HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354HeadG_owned : (s6Step354HeadGRow.sign::s6Step354HeadGRow.payload).toFinset⊆s6Step354HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step354HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354HeadG_reserved : s6Step354HeadGBefore.reserve s6Step354HeadGFresh.toFinset=some s6Step354HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step354HeadGFresh,arenaWires]
  · norm_num [s6Step354HeadGBefore,s6Step354HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step354HeadGAfter,s6Step354HeadGBefore,s6Step354HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step354HeadG_checked : planRowResizeLog s6Step354HeadGBefore s6Step354HeadGRow 96 s6Step354HeadGFresh=
    some (s6Step354HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 875, 906],777⟩,growRow 777 s6Step354HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step354HeadGBefore s6Step354HeadGAfter s6Step354HeadGRow 96 s6Step354HeadGFresh
    s6Step354HeadG_distinct s6Step354HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step354HeadG_reserved
  have rowEq : WindowRow.mk (s6Step354HeadGRow.payload++s6Step354HeadGFresh) s6Step354HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 875, 906],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step354HeadGvBefore : Arena := s6Step354HeadFAfter

private theorem s6Step354HeadGv_Incoming : rowsOwned s6Step354HeadGvBefore [s6Step354HeadGvRow,s6Step354HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step354HeadGRow,s6Step354HeadFRow,s6Step354HeadGvRow,s6Step354HeadFvRow] 2 s6Step354HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step354HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step354HeadGv_Outgoing : rowsOwned s6Step354HeadFvAfter [s6Step354HeadGvOut,s6Step354HeadFvOut] :=
  hmrRows_owned_drop s6Step354HeadFvAfter [s6Step354HeadGOut,s6Step354HeadFOut,s6Step354HeadGvOut,s6Step354HeadFvOut] 2 s6Step354HeadBank_outgoingOwned

private theorem s6Step354HeadGv_distinct : (s6Step354HeadGvRow.sign::s6Step354HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step354HeadGv_owned : (s6Step354HeadGvRow.sign::s6Step354HeadGvRow.payload).toFinset⊆s6Step354HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step354HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step354HeadGv_reserved : s6Step354HeadGvBefore.reserve s6Step354HeadGvFresh.toFinset=some s6Step354HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step354HeadGvFresh,arenaWires]
  · norm_num [s6Step354HeadGvBefore,s6Step354HeadFAfter,s6Step354HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step354HeadGvAfter,s6Step354HeadGvBefore,s6Step354HeadFAfter,s6Step354HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step354HeadGv_checked : planRowResizeLog s6Step354HeadGvBefore s6Step354HeadGvRow 194 s6Step354HeadGvFresh=
    some (s6Step354HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 779, 858],775⟩,growRow 775 s6Step354HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step354HeadGvBefore s6Step354HeadGvAfter s6Step354HeadGvRow 194 s6Step354HeadGvFresh
    s6Step354HeadGv_distinct s6Step354HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step354HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step354HeadGvRow.payload++s6Step354HeadGvFresh) s6Step354HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 779, 858],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step354HeadBank_rows : planWindowRowsLog s6Step354HeadGBefore [(s6Step354HeadGRow,96),(s6Step354HeadFRow,96),(s6Step354HeadGvRow,194),(s6Step354HeadFvRow,194)] [s6Step354HeadGFresh,s6Step354HeadFFresh,s6Step354HeadGvFresh,s6Step354HeadFvFresh]=
    some (s6Step354HeadFvAfter,[s6Step354HeadGOut,s6Step354HeadFOut,s6Step354HeadGvOut,s6Step354HeadFvOut],(growRow 777 s6Step354HeadGFresh ++ (growRow 795 s6Step354HeadFFresh ++ (growRow 775 s6Step354HeadGvFresh ++ (growRow 776 s6Step354HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step354HeadFvAfter [] []=some (s6Step354HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step354HeadFvBefore s6Step354HeadFvAfter s6Step354HeadFvAfter
    s6Step354HeadFvRow s6Step354HeadFvOut 194 s6Step354HeadFvFresh [] [] []
    (growRow 776 s6Step354HeadFvFresh) ([]) s6Step354HeadFv_Incoming s6Step354HeadFv_checked h4 s6Step354HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step354HeadGvBefore s6Step354HeadGvAfter s6Step354HeadFvAfter
    s6Step354HeadGvRow s6Step354HeadGvOut 194 s6Step354HeadGvFresh [(s6Step354HeadFvRow,194)] [s6Step354HeadFvFresh] [s6Step354HeadFvOut]
    (growRow 775 s6Step354HeadGvFresh) ((growRow 776 s6Step354HeadFvFresh ++ [])) s6Step354HeadGv_Incoming s6Step354HeadGv_checked h3 s6Step354HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step354HeadFBefore s6Step354HeadFAfter s6Step354HeadFvAfter
    s6Step354HeadFRow s6Step354HeadFOut 96 s6Step354HeadFFresh [(s6Step354HeadGvRow,194),(s6Step354HeadFvRow,194)] [s6Step354HeadGvFresh,s6Step354HeadFvFresh] [s6Step354HeadGvOut,s6Step354HeadFvOut]
    (growRow 795 s6Step354HeadFFresh) ((growRow 775 s6Step354HeadGvFresh ++ (growRow 776 s6Step354HeadFvFresh ++ []))) s6Step354HeadF_Incoming s6Step354HeadF_checked h2 s6Step354HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step354HeadGBefore s6Step354HeadGAfter s6Step354HeadFvAfter
    s6Step354HeadGRow s6Step354HeadGOut 96 s6Step354HeadGFresh [(s6Step354HeadFRow,96),(s6Step354HeadGvRow,194),(s6Step354HeadFvRow,194)] [s6Step354HeadFFresh,s6Step354HeadGvFresh,s6Step354HeadFvFresh] [s6Step354HeadFOut,s6Step354HeadGvOut,s6Step354HeadFvOut]
    (growRow 777 s6Step354HeadGFresh) ((growRow 795 s6Step354HeadFFresh ++ (growRow 775 s6Step354HeadGvFresh ++ (growRow 776 s6Step354HeadFvFresh ++ [])))) s6Step354HeadG_Incoming s6Step354HeadG_checked h1 s6Step354HeadG_Outgoing
  exact h0

private theorem s6Step354HeadBank_checked : compileHmrBankResizeLog .headroom s6Step354HeadGBefore ⟨s6Step354HeadFRow,s6Step354HeadGRow,s6Step354HeadFvRow,s6Step354HeadGvRow⟩ ⟨96,96,194,194⟩ [s6Step354HeadGFresh,s6Step354HeadFFresh,s6Step354HeadGvFresh,s6Step354HeadFvFresh]=
    some (s6Step354HeadFvAfter,⟨s6Step354HeadFOut,s6Step354HeadGOut,s6Step354HeadFvOut,s6Step354HeadGvOut⟩,(growRow 777 s6Step354HeadGFresh ++ (growRow 795 s6Step354HeadFFresh ++ (growRow 775 s6Step354HeadGvFresh ++ (growRow 776 s6Step354HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step354HeadBank_rows]
  rfl

private theorem s6Step354Front_checked : compileHmrSourceFrontLog s6Step354EntryFBefore s6Step354FrontBank 95 193 ⟨94,94,193,192⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step354FrontLog=some s6Step354FrontPlan := by
  have pairEq : s6Step354FrontPair=⟨s6Step354HeadFRow,s6Step354HeadGRow,s6Step354HeadFvRow,s6Step354HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step354FrontHead=⟨s6Step354ExitFRow,s6Step354ExitGRow,s6Step354ExitFvRow,s6Step354ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step354Add0A=s6Step354FrontHead.f.wires := by decide +kernel
  have gEq : s6Step354Add0B=s6Step354FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step354Add1A=s6Step354FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step354Add1B=s6Step354FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step354EntryFBefore s6Step354FrontBank 95 193 ⟨94,94,193,192⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step354FrontLog s6Step354FrontPlan
  · exact s6Step354Front_entry
  · exact s6Step354EntryBank_checked
  · exact s6Step354Front_sigma
  · rfl
  · exact s6Step354Front_branch
  · rfl
  · simpa only [s6Step354FrontPlan,pairEq] using s6Step354HeadBank_checked
  · simpa only [s6Step354FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step354F4_checked
  · exact s6Step354Counter_checked
  · rfl
  · simpa only [s6Step354FrontPlan,headEq] using s6Step354ExitBank_checked

private theorem s6Step354Complete_explicit_checked : compileHmrEarlyStepLog s6Step354EntryFBefore s6Step354FrontBank 95 193 ⟨94,94,193,192⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step354CompleteLog=some s6Step354CompletePlan := by
  let Q := s6Step354EarlyControlPlan
  have hq := s6Step354EarlyControl_plan_checked
  have fv1 : s6Step354CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step354CompleteOut.fv.payload[2]?.getD s6Step354CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step354CompleteOut.fv.payload[3]?.getD s6Step354CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step354CompleteOut.fv.payload[4]?.getD s6Step354CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step354EntryFBefore s6Step354EarlyControlArena s6Step354FrontBank 95 193 ⟨94,94,193,192⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step354CompleteLog s6Step354FrontPlan Q
    s6Step354Front_checked s6Step354Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step354Complete_owned s6Step354Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step354EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 s6Step354CompleteOut.fv.second (s6Step354CompleteOut.fv.payload[2]?.getD s6Step354CompleteOut.fv.sign) (s6Step354CompleteOut.fv.payload[3]?.getD s6Step354CompleteOut.fv.sign) (s6Step354CompleteOut.fv.payload[4]?.getD s6Step354CompleteOut.fv.sign) 873 60 s6Step354EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep354Arena : Arena := s6Step354EntryFBefore
def s6PrivateStep354Bank : WindowBank := s6Step354FrontBank
def s6PrivateStep354Spec : HmrSourceWalkStepLog := ⟨95,193,⟨94,94,193,192⟩,60,.early s6Step354CompleteLog⟩
def s6PrivateStep354Plan : HmrSourceStepPlan := .early s6Step354CompletePlan
theorem s6PrivateStep354_source : s6PrivateStep354Spec=s6ObservedLogs352[2] := rfl
theorem s6PrivateStep354_checked : compileHmrSourceStepLog s6PrivateStep354Arena s6PrivateStep354Bank
    s6PrivateStep354Spec.fgWidth s6PrivateStep354Spec.vWidth s6PrivateStep354Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 354 s6PrivateStep354Spec.need none s6PrivateStep354Spec.log=some s6PrivateStep354Plan := by
  change compileHmrSourceStepLog s6Step354EntryFBefore s6Step354FrontBank 95 193 ⟨94,94,193,192⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 354 60 none (.early s6Step354CompleteLog)=some (.early s6Step354CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 354<498)]
  rw [s6Step354Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
