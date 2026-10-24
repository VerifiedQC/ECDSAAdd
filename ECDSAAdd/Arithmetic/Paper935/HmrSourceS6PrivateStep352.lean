import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep350
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

private def s6Step352CompleteMoves : List (Wire × Wire) := [(875,94),(779,351)]

private def s6Step352EarlyControlLog : HmrEarlyControlLog := ⟨[779, 875, 881, 817, 873],[906],[805],[802, 843, 877, 792, 816, 819],[]⟩

private def s6Step352FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [873], [], []],[[906], [817], [881], [927]],[[], [], [], []]⟩,[789],[858],[805],[802],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877]⟩

private def s6Step352CompleteLog : HmrEarlyStepLog := ⟨s6Step352FrontLog,s6Step352CompleteMoves,s6Step352EarlyControlLog⟩

private def s6Step352ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350],795⟩

private def s6Step352ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩

private def s6Step352ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],777⟩

private def s6Step352ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809],775⟩

private def s6Step352FrontOut : WindowBank := ⟨s6Step352ExitFOut,s6Step352ExitGOut,s6Step352ExitFvOut,s6Step352ExitGvOut⟩

private def s6Step352CompleteOut : WindowBank := s6Step352FrontOut.repacked s6Step352CompleteMoves

private def s6Step352EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step352EarlyControlPositiveArena,[906],s6Step352EarlyControlEqualityArena,[805],⟨⟨789,false⟩,[⟨⟨906,false⟩,805⟩]⟩⟩

private def s6Step352EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,779⟩,⟨⟨772,false⟩,875⟩,⟨⟨771,false⟩,881⟩,⟨⟨770,false⟩,817⟩,⟨⟨769,false⟩,873⟩]⟩

private def s6Step352EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step352EarlyControlZeroArena,s6Step352EarlyControlZeroPlan,s6Step352EarlyControlClassPlan,s6Step352EarlyControlFlagArena,s6Step352EarlyControlFittedArena,s6Step352EarlyControlHistoryArena,s6Step352EarlyControlSigmaArena,s6Step352EarlyControlOutputArena,s6Step352EarlyControlLog⟩

private def s6Step352CounterWork : List Wire := [805, 802, 843, 877]

private theorem s6Step352Counter_bounded : s6Step352CounterWork.toFinset⊆arenaWires := by norm_num [s6Step352CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step352HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352CounterDuring : Arena := ⟨s6Step352HeadFvAfter.live∪s6Step352CounterWork.toFinset,Finset.union_subset s6Step352HeadFvAfter.bounded s6Step352Counter_bounded⟩

private def s6Step352EntryFFresh : List Wire := []

private def s6Step352EntryFvFresh : List Wire := []

private def s6Step352EntryGFresh : List Wire := [873]

private def s6Step352EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352EntryGvAfter : Arena := s6Step352EntryGAfter

private def s6Step352EntryGvFresh : List Wire := []

private def s6Step352ExitFExtra : List Wire := [351, 817]

private def s6Step352ExitGExtra : List Wire := [94, 873, 906]

private def s6Step352ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<351) ∨ (352≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352ExitGvExtra : List Wire := [881]

private def s6Step352Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352Add0Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step352Add0_bounded : s6Step352Add0Work.toFinset⊆arenaWires := by
  have h : s6Step352Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step352Add0During : Arena := ⟨s6Step352Add0Arena.live∪s6Step352Add0Work.toFinset,Finset.union_subset s6Step352Add0Arena.bounded s6Step352Add0_bounded⟩

private def s6Step352Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352Add1Work : List Wire := [843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step352Add1_bounded : s6Step352Add1Work.toFinset⊆arenaWires := by
  have h : s6Step352Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step352Add1During : Arena := ⟨s6Step352Add1Arena.live∪s6Step352Add1Work.toFinset,Finset.union_subset s6Step352Add1Arena.bounded s6Step352Add1_bounded⟩

private def s6Step352F4FlagArena : Arena := ⟨s6Step352HeadFvAfter.live∪{805},Finset.union_subset s6Step352HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step352F4Plan : HmrHybridF4Plan := ⟨s6Step352F4FlagArena,[805],s6Step352Add0Arena,[802],s6Step352Add0During,s6Step352Add0Work,s6Step352Add1During,s6Step352Add1Work⟩

private def s6Step352HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 817],795⟩

private def s6Step352HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩

private def s6Step352HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 873, 906],777⟩

private def s6Step352HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 881],775⟩

private def s6Step352FrontHead : WindowBank := ⟨s6Step352HeadFOut,s6Step352HeadGOut,s6Step352HeadFvOut,s6Step352HeadGvOut⟩

private def s6Step352EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩

private def s6Step352EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882],776⟩

private def s6Step352EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 873],777⟩

private def s6Step352EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809],775⟩

private def s6Step352FrontPair : WindowBank := ⟨s6Step352EntryFOut,s6Step352EntryGOut,s6Step352EntryFvOut,s6Step352EntryGvOut⟩

private def s6Step352FrontSigmaArena : Arena := ⟨s6Step352EntryGvAfter.live∪{789},Finset.union_subset s6Step352EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step352HeadFFresh : List Wire := [817]

private def s6Step352HeadFvFresh : List Wire := [927]

private def s6Step352HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352HeadGFresh : List Wire := [906]

private def s6Step352HeadGvFresh : List Wire := [881]

private def s6Step352FrontPlan : HmrSourceFront := ⟨s6Step352EntryGvAfter,s6Step352FrontPair,(growRow 795 s6Step352EntryFFresh ++ (growRow 777 s6Step352EntryGFresh ++ (growRow 776 s6Step352EntryFvFresh ++ (growRow 775 s6Step352EntryGvFresh ++ [])))),s6Step352FrontSigmaArena,[789],s6Step352HeadGBefore,[858],
  s6Step352HeadFvAfter,s6Step352FrontHead,(growRow 777 s6Step352HeadGFresh ++ (growRow 795 s6Step352HeadFFresh ++ (growRow 775 s6Step352HeadGvFresh ++ (growRow 776 s6Step352HeadFvFresh ++ [])))),s6Step352F4Plan,s6Step352CounterDuring,s6Step352CounterWork,s6Step352ExitGvAfter,s6Step352FrontOut,(shrinkRow 777 s6Step352ExitGExtra ++ (shrinkRow 795 s6Step352ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step352ExitGvExtra ++ []))))⟩

private def s6Step352CompletePlan : HmrEarlyStepPlan := ⟨s6Step352FrontPlan,s6Step352EarlyControlArena,s6Step352EarlyControlPlan,s6Step352CompleteMoves⟩

private theorem s6Step352Complete_apart : List.Disjoint (s6Step352CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [789, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step352CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[789, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step352Complete_owned : (s6Step352CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step352EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step352EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step352CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,351),(352,782),(783,790),(791,792),(793,797),(799,800),(801,802),(803,805),(806,808),(809,816),(818,819),(821,832),(833,842),(844,873),(874,875),(876,877),(878,881),(882,896),(897,906),(907,914),(915,916),(917,918),(919,920),(921,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step352CompleteRelocationMove0Borrowed : Arena := ⟨s6Step352ExitGvAfter.live∪{94},Finset.union_subset s6Step352ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step352CompleteRelocationMove1Borrowed : Arena := ⟨s6Step352CompleteRelocationMove0After.live∪{351},Finset.union_subset s6Step352CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step352CompleteRelocation_move0_owned : 875∈s6Step352ExitGvAfter.live := by norm_num [s6Step352ExitGvAfter,arenaWires]

private theorem s6Step352CompleteRelocation_move0_reserve : s6Step352ExitGvAfter.reserve {94}=some s6Step352CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step352ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step352CompleteRelocation_move0_retire : s6Step352CompleteRelocationMove0Borrowed.retireSet {875}=s6Step352CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step352CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step352CompleteRelocationMove0Borrowed,s6Step352ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step352CompleteRelocation_move1_owned : 779∈s6Step352CompleteRelocationMove0After.live := by norm_num [s6Step352CompleteRelocationMove0After,arenaWires]

private theorem s6Step352CompleteRelocation_move1_reserve : s6Step352CompleteRelocationMove0After.reserve {351}=some s6Step352CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step352CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step352CompleteRelocation_move1_retire : s6Step352CompleteRelocationMove1Borrowed.retireSet {779}=s6Step352EarlyControlArena := by
  unfold Arena.retireSet s6Step352EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step352CompleteRelocationMove1Borrowed,s6Step352CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step352CompleteRelocation_checked : s6Step352ExitGvAfter.checkRepack [(875,94),(779,351)]=some s6Step352EarlyControlArena := by
  have tail2 : s6Step352EarlyControlArena.checkRepack []=some s6Step352EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step352CompleteRelocationMove0After s6Step352CompleteRelocationMove1Borrowed s6Step352EarlyControlArena s6Step352EarlyControlArena 779 351 []
    s6Step352CompleteRelocation_move1_owned s6Step352CompleteRelocation_move1_reserve s6Step352CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step352ExitGvAfter s6Step352CompleteRelocationMove0Borrowed s6Step352CompleteRelocationMove0After s6Step352EarlyControlArena 875 94 [(779,351)]
    s6Step352CompleteRelocation_move0_owned s6Step352CompleteRelocation_move0_reserve s6Step352CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step352Complete_repack : s6Step352ExitGvAfter.checkRepack s6Step352CompleteMoves=some s6Step352EarlyControlArena := by
  simpa only [s6Step352CompleteMoves] using s6Step352CompleteRelocation_checked

private theorem s6Step352EarlyControl_branchOwned : ([858] : List Wire).toFinset⊆s6Step352EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step352EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352EarlyControl_branch : compileHmrBranchRetirement s6Step352EarlyControlSigmaArena 858=some s6Step352EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step352EarlyControl_branchOwned
  · ext q
    simp [s6Step352EarlyControlOutputArena,s6Step352EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step352EarlyControl_classEqualityBorrow : s6Step352EarlyControlPositiveArena.checkBorrow (([789, 906] : List Wire).length-1) s6Step352EarlyControlLog.classWork=some s6Step352EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step352EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step352EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step352EarlyControlEqualityArena,s6Step352EarlyControlPositiveArena,s6Step352EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step352EarlyControl_classEqualityOwned : ([789, 906] : List Wire).toFinset⊆s6Step352EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step352EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352EarlyControl_classEquality : compileHmrEqualityLog s6Step352EarlyControlPositiveArena [789, 906] 0 s6Step352EarlyControlLog.classWork=some (s6Step352EarlyControlEqualityArena,s6Step352EarlyControlLog.classWork,s6Step352EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step352EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step352EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step352EarlyControl_classOwned : ([769, 873, 789] : List Wire).toFinset⊆s6Step352EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step352EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352EarlyControl_positiveBorrow : s6Step352EarlyControlZeroArena.checkBorrow (1) s6Step352EarlyControlLog.positiveWork=some s6Step352EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step352EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step352EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step352EarlyControlPositiveArena,s6Step352EarlyControlZeroArena,s6Step352EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step352EarlyControl_class : compileHmrSourceClassLog s6Step352EarlyControlZeroArena false 769 s6Step352EarlyControlZeroPlan.top 0 789 s6Step352EarlyControlLog.positiveWork s6Step352EarlyControlLog.classWork=some s6Step352EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step352EarlyControlClassPlan s6Step352EarlyControlZeroArena false 769 s6Step352EarlyControlZeroPlan.top 0 789
  constructor
  · decide +kernel
  · exact s6Step352EarlyControl_classOwned
  · exact s6Step352EarlyControl_positiveBorrow
  · exact s6Step352EarlyControl_classEquality

private theorem s6Step352EarlyControl_entryRecordOwned : ([858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step352EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step352EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352EarlyControl_entrySigmaOwned : ([789, 254] : List Wire).toFinset⊆s6Step352EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step352EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352EarlyControl_fitBorrow : s6Step352EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step352EarlyControlLog.recordFresh=some s6Step352EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step352EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step352EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step352EarlyControlFittedArena,s6Step352EarlyControlFlagArena,s6Step352EarlyControlLog,arenaWires]

private theorem s6Step352EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step352EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step352EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352EarlyControl_fit : compileHmrRecordGrowLog s6Step352EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step352EarlyControlLog.recordFresh=some s6Step352EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step352EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step352EarlyControl_fitBorrow

private theorem s6Step352EarlyControl_flagsBorrow : s6Step352EarlyControlEqualityArena.checkBorrow (6) s6Step352EarlyControlLog.flagWork=some s6Step352EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step352EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step352EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step352EarlyControlFlagArena,s6Step352EarlyControlEqualityArena,s6Step352EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step352EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step352EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step352EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352EarlyControl_flags : compileHmrFlagsLog s6Step352EarlyControlClassPlan.equalityArena s6Step352EarlyControlClassPlan.equality.top 253 252 251 s6Step352EarlyControlLog.flagWork=some s6Step352EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step352EarlyControl_flagsOwned⟩
  · exact s6Step352EarlyControl_flagsBorrow

private theorem s6Step352EarlyControl_historyBorrow : s6Step352EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step352EarlyControlLog.recordFresh=some s6Step352EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step352EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step352EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step352EarlyControlHistoryArena,s6Step352EarlyControlArena,s6Step352EarlyControlLog,arenaWires]

private theorem s6Step352EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step352EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step352EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352EarlyControl_history : compileHmrRecordGrowLog s6Step352EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step352EarlyControlLog.recordFresh=some s6Step352EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step352EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step352EarlyControl_historyBorrow

private theorem s6Step352EarlyControl_sigmaOwned : ([254, 789] : List Wire).toFinset⊆s6Step352EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step352EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352EarlyControl_sigmaReleaseOwned : ([789] : List Wire).toFinset⊆s6Step352EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step352EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352EarlyControl_sigmaRelease : s6Step352EarlyControlHistoryArena.release {789} (fun _ => false)=some s6Step352EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step352EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step352EarlyControlSigmaArena,s6Step352EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step352EarlyControl_sigma : compileHmrSigmaDropLog s6Step352EarlyControlHistoryArena false 0 0 254 789 []=some s6Step352EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step352EarlyControl_sigmaOwned⟩
  · exact s6Step352EarlyControl_sigmaRelease

private theorem s6Step352EarlyControl_zeroBorrow : s6Step352EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step352EarlyControlLog.zeroWork=some s6Step352EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step352EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step352EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step352EarlyControlZeroArena,s6Step352EarlyControlArena,s6Step352EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step352EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step352EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step352EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352EarlyControl_zero : compileHmrEqualityLog s6Step352EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step352EarlyControlLog.zeroWork=some (s6Step352EarlyControlZeroArena,s6Step352EarlyControlLog.zeroWork,s6Step352EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step352EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step352EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step352EarlyControl_logged : s6Step352EarlyControlPlan.Logged s6Step352EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 254 253 252 251 858 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step352EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step352EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step352EarlyControl_zero
  · exact s6Step352EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step352EarlyControl_flags
  · exact s6Step352EarlyControl_fit
  · exact s6Step352EarlyControl_history
  · exact s6Step352EarlyControl_sigma
  · exact s6Step352EarlyControl_branch

private theorem s6Step352EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step352EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 254 253 252 251 858 60 s6Step352EarlyControlLog=some s6Step352EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step352EarlyControlPlan s6Step352EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 254 253 252 251 858 60 s6Step352EarlyControl_logged

private def s6Step352EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩

private def s6Step352EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882],776⟩

private def s6Step352EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94],777⟩

private def s6Step352EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809],775⟩

private def s6Step352FrontBank : WindowBank := ⟨s6Step352EntryFRow,s6Step352EntryGRow,s6Step352EntryFvRow,s6Step352EntryGvRow⟩

private def s6Step352Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 817, 795]

private def s6Step352Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 873, 906, 777]

private def s6Step352Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 776]

private def s6Step352Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 881, 775]

private theorem s6Step352Counter_apart : Disjoint s6Step352HeadFvAfter.live s6Step352CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step352HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352Counter_borrowed : s6Step352HeadFvAfter.checkBorrow 4 s6Step352CounterWork=some s6Step352CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step352HeadFvAfter s6Step352CounterDuring s6Step352CounterWork.toFinset s6Step352Counter_bounded s6Step352Counter_apart rfl

private theorem s6Step352Counter_owned : (789::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step352HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step352HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352Counter_checked : compileHmrCounterStepLog s6Step352HeadFvAfter true 789 [774, 773, 772, 771, 770, 769] s6Step352CounterWork=some s6Step352CounterDuring := by
  have owned : ∀q∈789::[774, 773, 772, 771, 770, 769],q∈s6Step352HeadFvAfter.live := fun q hq => s6Step352Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step352Counter_borrowed

private def s6Step352EntryFAfter : Arena := s6Step352EntryFBefore

private theorem s6Step352EntryBank_incomingDistinct : ([s6Step352EntryFRow,s6Step352EntryGRow,s6Step352EntryFvRow,s6Step352EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352EntryF_Incoming : rowsOwned s6Step352EntryFBefore [s6Step352EntryFRow,s6Step352EntryGRow,s6Step352EntryFvRow,s6Step352EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step352EntryFRow,s6Step352EntryGRow,s6Step352EntryFvRow,s6Step352EntryGvRow] 0 s6Step352EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step352EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step352EntryBank_outgoingOwned : rowsOwned s6Step352EntryGvAfter [s6Step352EntryFOut,s6Step352EntryGOut,s6Step352EntryFvOut,s6Step352EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step352EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step352EntryF_Outgoing : rowsOwned s6Step352EntryGvAfter [s6Step352EntryFOut,s6Step352EntryGOut,s6Step352EntryFvOut,s6Step352EntryGvOut] :=
  hmrRows_owned_drop s6Step352EntryGvAfter [s6Step352EntryFOut,s6Step352EntryGOut,s6Step352EntryFvOut,s6Step352EntryGvOut] 0 s6Step352EntryBank_outgoingOwned

private theorem s6Step352EntryF_distinct : (s6Step352EntryFRow.sign::s6Step352EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352EntryF_owned : (s6Step352EntryFRow.sign::s6Step352EntryFRow.payload).toFinset⊆s6Step352EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step352EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352EntryF_reserved : s6Step352EntryFBefore.reserve s6Step352EntryFFresh.toFinset=some s6Step352EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step352EntryFFresh,arenaWires]
  · norm_num [s6Step352EntryFBefore,s6Step352EntryFFresh,arenaWires]
  · simp only [s6Step352EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step352EntryF_checked : planRowResizeLog s6Step352EntryFBefore s6Step352EntryFRow 96 s6Step352EntryFFresh=
    some (s6Step352EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩,growRow 795 s6Step352EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step352EntryFBefore s6Step352EntryFAfter s6Step352EntryFRow 96 s6Step352EntryFFresh
    s6Step352EntryF_distinct s6Step352EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step352EntryF_reserved
  have rowEq : WindowRow.mk (s6Step352EntryFRow.payload++s6Step352EntryFFresh) s6Step352EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step352EntryFvAfter : Arena := s6Step352EntryGAfter

private def s6Step352EntryFvBefore : Arena := s6Step352EntryGAfter

private theorem s6Step352EntryFv_Incoming : rowsOwned s6Step352EntryFvBefore [s6Step352EntryFvRow,s6Step352EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step352EntryFRow,s6Step352EntryGRow,s6Step352EntryFvRow,s6Step352EntryGvRow] 2 s6Step352EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step352EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step352EntryFv_Outgoing : rowsOwned s6Step352EntryGvAfter [s6Step352EntryFvOut,s6Step352EntryGvOut] :=
  hmrRows_owned_drop s6Step352EntryGvAfter [s6Step352EntryFOut,s6Step352EntryGOut,s6Step352EntryFvOut,s6Step352EntryGvOut] 2 s6Step352EntryBank_outgoingOwned

private theorem s6Step352EntryFv_distinct : (s6Step352EntryFvRow.sign::s6Step352EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352EntryFv_owned : (s6Step352EntryFvRow.sign::s6Step352EntryFvRow.payload).toFinset⊆s6Step352EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step352EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352EntryFv_reserved : s6Step352EntryFvBefore.reserve s6Step352EntryFvFresh.toFinset=some s6Step352EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step352EntryFvFresh,arenaWires]
  · norm_num [s6Step352EntryFvBefore,s6Step352EntryGAfter,s6Step352EntryFvFresh,arenaWires]
  · simp only [s6Step352EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step352EntryFv_checked : planRowResizeLog s6Step352EntryFvBefore s6Step352EntryFvRow 192 s6Step352EntryFvFresh=
    some (s6Step352EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882],776⟩,growRow 776 s6Step352EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step352EntryFvBefore s6Step352EntryFvAfter s6Step352EntryFvRow 192 s6Step352EntryFvFresh
    s6Step352EntryFv_distinct s6Step352EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step352EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step352EntryFvRow.payload++s6Step352EntryFvFresh) s6Step352EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step352EntryGBefore : Arena := s6Step352EntryFBefore

private theorem s6Step352EntryG_Incoming : rowsOwned s6Step352EntryGBefore [s6Step352EntryGRow,s6Step352EntryFvRow,s6Step352EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step352EntryFRow,s6Step352EntryGRow,s6Step352EntryFvRow,s6Step352EntryGvRow] 1 s6Step352EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step352EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step352EntryG_Outgoing : rowsOwned s6Step352EntryGvAfter [s6Step352EntryGOut,s6Step352EntryFvOut,s6Step352EntryGvOut] :=
  hmrRows_owned_drop s6Step352EntryGvAfter [s6Step352EntryFOut,s6Step352EntryGOut,s6Step352EntryFvOut,s6Step352EntryGvOut] 1 s6Step352EntryBank_outgoingOwned

private theorem s6Step352EntryG_distinct : (s6Step352EntryGRow.sign::s6Step352EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352EntryG_owned : (s6Step352EntryGRow.sign::s6Step352EntryGRow.payload).toFinset⊆s6Step352EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step352EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352EntryG_reserved : s6Step352EntryGBefore.reserve s6Step352EntryGFresh.toFinset=some s6Step352EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step352EntryGFresh,arenaWires]
  · norm_num [s6Step352EntryGBefore,s6Step352EntryFBefore,s6Step352EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step352EntryGAfter,s6Step352EntryGBefore,s6Step352EntryFBefore,s6Step352EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step352EntryG_checked : planRowResizeLog s6Step352EntryGBefore s6Step352EntryGRow 96 s6Step352EntryGFresh=
    some (s6Step352EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 873],777⟩,growRow 777 s6Step352EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step352EntryGBefore s6Step352EntryGAfter s6Step352EntryGRow 96 s6Step352EntryGFresh
    s6Step352EntryG_distinct s6Step352EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step352EntryG_reserved
  have rowEq : WindowRow.mk (s6Step352EntryGRow.payload++s6Step352EntryGFresh) s6Step352EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 873],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step352EntryGvBefore : Arena := s6Step352EntryGAfter

private theorem s6Step352EntryGv_Incoming : rowsOwned s6Step352EntryGvBefore [s6Step352EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step352EntryFRow,s6Step352EntryGRow,s6Step352EntryFvRow,s6Step352EntryGvRow] 3 s6Step352EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step352EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step352EntryGv_Outgoing : rowsOwned s6Step352EntryGvAfter [s6Step352EntryGvOut] :=
  hmrRows_owned_drop s6Step352EntryGvAfter [s6Step352EntryFOut,s6Step352EntryGOut,s6Step352EntryFvOut,s6Step352EntryGvOut] 3 s6Step352EntryBank_outgoingOwned

private theorem s6Step352EntryGv_distinct : (s6Step352EntryGvRow.sign::s6Step352EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352EntryGv_owned : (s6Step352EntryGvRow.sign::s6Step352EntryGvRow.payload).toFinset⊆s6Step352EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step352EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352EntryGv_reserved : s6Step352EntryGvBefore.reserve s6Step352EntryGvFresh.toFinset=some s6Step352EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step352EntryGvFresh,arenaWires]
  · norm_num [s6Step352EntryGvBefore,s6Step352EntryGAfter,s6Step352EntryGvFresh,arenaWires]
  · simp only [s6Step352EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step352EntryGv_checked : planRowResizeLog s6Step352EntryGvBefore s6Step352EntryGvRow 192 s6Step352EntryGvFresh=
    some (s6Step352EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809],775⟩,growRow 775 s6Step352EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step352EntryGvBefore s6Step352EntryGvAfter s6Step352EntryGvRow 192 s6Step352EntryGvFresh
    s6Step352EntryGv_distinct s6Step352EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step352EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step352EntryGvRow.payload++s6Step352EntryGvFresh) s6Step352EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step352EntryBank_rows : planWindowRowsLog s6Step352EntryFBefore [(s6Step352EntryFRow,96),(s6Step352EntryGRow,96),(s6Step352EntryFvRow,192),(s6Step352EntryGvRow,192)] [s6Step352EntryFFresh,s6Step352EntryGFresh,s6Step352EntryFvFresh,s6Step352EntryGvFresh]=
    some (s6Step352EntryGvAfter,[s6Step352EntryFOut,s6Step352EntryGOut,s6Step352EntryFvOut,s6Step352EntryGvOut],(growRow 795 s6Step352EntryFFresh ++ (growRow 777 s6Step352EntryGFresh ++ (growRow 776 s6Step352EntryFvFresh ++ (growRow 775 s6Step352EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step352EntryGvAfter [] []=some (s6Step352EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step352EntryGvBefore s6Step352EntryGvAfter s6Step352EntryGvAfter
    s6Step352EntryGvRow s6Step352EntryGvOut 192 s6Step352EntryGvFresh [] [] []
    (growRow 775 s6Step352EntryGvFresh) ([]) s6Step352EntryGv_Incoming s6Step352EntryGv_checked h4 s6Step352EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step352EntryFvBefore s6Step352EntryFvAfter s6Step352EntryGvAfter
    s6Step352EntryFvRow s6Step352EntryFvOut 192 s6Step352EntryFvFresh [(s6Step352EntryGvRow,192)] [s6Step352EntryGvFresh] [s6Step352EntryGvOut]
    (growRow 776 s6Step352EntryFvFresh) ((growRow 775 s6Step352EntryGvFresh ++ [])) s6Step352EntryFv_Incoming s6Step352EntryFv_checked h3 s6Step352EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step352EntryGBefore s6Step352EntryGAfter s6Step352EntryGvAfter
    s6Step352EntryGRow s6Step352EntryGOut 96 s6Step352EntryGFresh [(s6Step352EntryFvRow,192),(s6Step352EntryGvRow,192)] [s6Step352EntryFvFresh,s6Step352EntryGvFresh] [s6Step352EntryFvOut,s6Step352EntryGvOut]
    (growRow 777 s6Step352EntryGFresh) ((growRow 776 s6Step352EntryFvFresh ++ (growRow 775 s6Step352EntryGvFresh ++ []))) s6Step352EntryG_Incoming s6Step352EntryG_checked h2 s6Step352EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step352EntryFBefore s6Step352EntryFAfter s6Step352EntryGvAfter
    s6Step352EntryFRow s6Step352EntryFOut 96 s6Step352EntryFFresh [(s6Step352EntryGRow,96),(s6Step352EntryFvRow,192),(s6Step352EntryGvRow,192)] [s6Step352EntryGFresh,s6Step352EntryFvFresh,s6Step352EntryGvFresh] [s6Step352EntryGOut,s6Step352EntryFvOut,s6Step352EntryGvOut]
    (growRow 795 s6Step352EntryFFresh) ((growRow 777 s6Step352EntryGFresh ++ (growRow 776 s6Step352EntryFvFresh ++ (growRow 775 s6Step352EntryGvFresh ++ [])))) s6Step352EntryF_Incoming s6Step352EntryF_checked h1 s6Step352EntryF_Outgoing
  exact h0

private theorem s6Step352EntryBank_checked : compileHmrBankResizeLog .entry s6Step352EntryFBefore ⟨s6Step352EntryFRow,s6Step352EntryGRow,s6Step352EntryFvRow,s6Step352EntryGvRow⟩ ⟨96,96,192,192⟩ [s6Step352EntryFFresh,s6Step352EntryGFresh,s6Step352EntryFvFresh,s6Step352EntryGvFresh]=
    some (s6Step352EntryGvAfter,⟨s6Step352EntryFOut,s6Step352EntryGOut,s6Step352EntryFvOut,s6Step352EntryGvOut⟩,(growRow 795 s6Step352EntryFFresh ++ (growRow 777 s6Step352EntryGFresh ++ (growRow 776 s6Step352EntryFvFresh ++ (growRow 775 s6Step352EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step352EntryBank_rows]
  rfl

private def s6Step352ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<351) ∨ (352≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352ExitFBefore : Arena := s6Step352ExitGAfter

private def s6Step352ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 817],795⟩

private def s6Step352ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩

private def s6Step352ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 873, 906],777⟩

private def s6Step352ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 881],775⟩

private theorem s6Step352ExitBank_incomingDistinct : ([s6Step352ExitGRow,s6Step352ExitFRow,s6Step352ExitFvRow,s6Step352ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352ExitF_Incoming : rowsOwned s6Step352ExitFBefore [s6Step352ExitFRow,s6Step352ExitFvRow,s6Step352ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step352ExitGRow,s6Step352ExitFRow,s6Step352ExitFvRow,s6Step352ExitGvRow] 1 s6Step352ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step352ExitFBefore (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step352ExitBank_outgoingOwned : rowsOwned s6Step352ExitGvAfter [s6Step352ExitGOut,s6Step352ExitFOut,s6Step352ExitFvOut,s6Step352ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step352ExitGvAfter (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<351) ∨ (352≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step352ExitF_Outgoing : rowsOwned s6Step352ExitGvAfter [s6Step352ExitFOut,s6Step352ExitFvOut,s6Step352ExitGvOut] :=
  hmrRows_owned_drop s6Step352ExitGvAfter [s6Step352ExitGOut,s6Step352ExitFOut,s6Step352ExitFvOut,s6Step352ExitGvOut] 1 s6Step352ExitBank_outgoingOwned

private theorem s6Step352ExitF_distinct : (s6Step352ExitFRow.sign::s6Step352ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352ExitF_owned : (s6Step352ExitFRow.sign::s6Step352ExitFRow.payload).toFinset⊆s6Step352ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step352ExitFBefore (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352ExitF_retired : s6Step352ExitFBefore.retireSet s6Step352ExitFExtra.toFinset=s6Step352ExitFAfter := by
  unfold Arena.retireSet s6Step352ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step352ExitFBefore,s6Step352ExitGAfter,s6Step352ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step352ExitF_checked : planRowResizeLog s6Step352ExitFBefore s6Step352ExitFRow 95 []=
    some (s6Step352ExitFAfter,s6Step352ExitFOut,shrinkRow 795 s6Step352ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step352ExitFBefore s6Step352ExitFRow 95 s6Step352ExitF_distinct s6Step352ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step352ExitFRow.payload.take 95) s6Step352ExitFRow.sign=s6Step352ExitFOut := by decide +kernel
  have hi : s6Step352ExitFRow.payload.drop 95=s6Step352ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step352ExitF_retired] at result
  exact result

private def s6Step352ExitFvAfter : Arena := s6Step352ExitFAfter

private def s6Step352ExitFvBefore : Arena := s6Step352ExitFAfter

private theorem s6Step352ExitFv_Incoming : rowsOwned s6Step352ExitFvBefore [s6Step352ExitFvRow,s6Step352ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step352ExitGRow,s6Step352ExitFRow,s6Step352ExitFvRow,s6Step352ExitGvRow] 2 s6Step352ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step352ExitFvBefore (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<351) ∨ (352≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step352ExitFv_Outgoing : rowsOwned s6Step352ExitGvAfter [s6Step352ExitFvOut,s6Step352ExitGvOut] :=
  hmrRows_owned_drop s6Step352ExitGvAfter [s6Step352ExitGOut,s6Step352ExitFOut,s6Step352ExitFvOut,s6Step352ExitGvOut] 2 s6Step352ExitBank_outgoingOwned

private theorem s6Step352ExitFv_distinct : (s6Step352ExitFvRow.sign::s6Step352ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352ExitFv_owned : (s6Step352ExitFvRow.sign::s6Step352ExitFvRow.payload).toFinset⊆s6Step352ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step352ExitFvBefore (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<351) ∨ (352≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352ExitFv_reserved : s6Step352ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step352ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step352ExitFv_checked : planRowResizeLog s6Step352ExitFvBefore s6Step352ExitFvRow 193 []=
    some (s6Step352ExitFvAfter,s6Step352ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step352ExitFvBefore s6Step352ExitFvAfter s6Step352ExitFvRow 193 []
    s6Step352ExitFv_distinct s6Step352ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step352ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step352ExitFvRow.payload++[]) s6Step352ExitFvRow.sign=s6Step352ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step352ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step352ExitG_Incoming : rowsOwned s6Step352ExitGBefore [s6Step352ExitGRow,s6Step352ExitFRow,s6Step352ExitFvRow,s6Step352ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step352ExitGRow,s6Step352ExitFRow,s6Step352ExitFvRow,s6Step352ExitGvRow] 0 s6Step352ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step352ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step352ExitG_Outgoing : rowsOwned s6Step352ExitGvAfter [s6Step352ExitGOut,s6Step352ExitFOut,s6Step352ExitFvOut,s6Step352ExitGvOut] :=
  hmrRows_owned_drop s6Step352ExitGvAfter [s6Step352ExitGOut,s6Step352ExitFOut,s6Step352ExitFvOut,s6Step352ExitGvOut] 0 s6Step352ExitBank_outgoingOwned

private theorem s6Step352ExitG_distinct : (s6Step352ExitGRow.sign::s6Step352ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352ExitG_owned : (s6Step352ExitGRow.sign::s6Step352ExitGRow.payload).toFinset⊆s6Step352ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step352ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352ExitG_retired : s6Step352ExitGBefore.retireSet s6Step352ExitGExtra.toFinset=s6Step352ExitGAfter := by
  unfold Arena.retireSet s6Step352ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step352ExitGBefore,s6Step352ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step352ExitG_checked : planRowResizeLog s6Step352ExitGBefore s6Step352ExitGRow 94 []=
    some (s6Step352ExitGAfter,s6Step352ExitGOut,shrinkRow 777 s6Step352ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step352ExitGBefore s6Step352ExitGRow 94 s6Step352ExitG_distinct s6Step352ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step352ExitGRow.payload.take 94) s6Step352ExitGRow.sign=s6Step352ExitGOut := by decide +kernel
  have hi : s6Step352ExitGRow.payload.drop 94=s6Step352ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step352ExitG_retired] at result
  exact result

private def s6Step352ExitGvBefore : Arena := s6Step352ExitFAfter

private theorem s6Step352ExitGv_Incoming : rowsOwned s6Step352ExitGvBefore [s6Step352ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step352ExitGRow,s6Step352ExitFRow,s6Step352ExitFvRow,s6Step352ExitGvRow] 3 s6Step352ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step352ExitGvBefore (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<351) ∨ (352≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step352ExitGv_Outgoing : rowsOwned s6Step352ExitGvAfter [s6Step352ExitGvOut] :=
  hmrRows_owned_drop s6Step352ExitGvAfter [s6Step352ExitGOut,s6Step352ExitFOut,s6Step352ExitFvOut,s6Step352ExitGvOut] 3 s6Step352ExitBank_outgoingOwned

private theorem s6Step352ExitGv_distinct : (s6Step352ExitGvRow.sign::s6Step352ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352ExitGv_owned : (s6Step352ExitGvRow.sign::s6Step352ExitGvRow.payload).toFinset⊆s6Step352ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step352ExitGvBefore (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<351) ∨ (352≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352ExitGv_retired : s6Step352ExitGvBefore.retireSet s6Step352ExitGvExtra.toFinset=s6Step352ExitGvAfter := by
  unfold Arena.retireSet s6Step352ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step352ExitGvBefore,s6Step352ExitFAfter,s6Step352ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step352ExitGv_checked : planRowResizeLog s6Step352ExitGvBefore s6Step352ExitGvRow 192 []=
    some (s6Step352ExitGvAfter,s6Step352ExitGvOut,shrinkRow 775 s6Step352ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step352ExitGvBefore s6Step352ExitGvRow 192 s6Step352ExitGv_distinct s6Step352ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step352ExitGvRow.payload.take 192) s6Step352ExitGvRow.sign=s6Step352ExitGvOut := by decide +kernel
  have hi : s6Step352ExitGvRow.payload.drop 192=s6Step352ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step352ExitGv_retired] at result
  exact result

private theorem s6Step352ExitBank_rows : planWindowRowsLog s6Step352ExitGBefore [(s6Step352ExitGRow,94),(s6Step352ExitFRow,95),(s6Step352ExitFvRow,193),(s6Step352ExitGvRow,192)] [[],[],[],[]]=
    some (s6Step352ExitGvAfter,[s6Step352ExitGOut,s6Step352ExitFOut,s6Step352ExitFvOut,s6Step352ExitGvOut],(shrinkRow 777 s6Step352ExitGExtra ++ (shrinkRow 795 s6Step352ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step352ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step352ExitGvAfter [] []=some (s6Step352ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step352ExitGvBefore s6Step352ExitGvAfter s6Step352ExitGvAfter
    s6Step352ExitGvRow s6Step352ExitGvOut 192 [] [] [] []
    (shrinkRow 775 s6Step352ExitGvExtra) ([]) s6Step352ExitGv_Incoming s6Step352ExitGv_checked h4 s6Step352ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step352ExitFvBefore s6Step352ExitFvAfter s6Step352ExitGvAfter
    s6Step352ExitFvRow s6Step352ExitFvOut 193 [] [(s6Step352ExitGvRow,192)] [[]] [s6Step352ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step352ExitGvExtra ++ [])) s6Step352ExitFv_Incoming s6Step352ExitFv_checked h3 s6Step352ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step352ExitFBefore s6Step352ExitFAfter s6Step352ExitGvAfter
    s6Step352ExitFRow s6Step352ExitFOut 95 [] [(s6Step352ExitFvRow,193),(s6Step352ExitGvRow,192)] [[],[]] [s6Step352ExitFvOut,s6Step352ExitGvOut]
    (shrinkRow 795 s6Step352ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step352ExitGvExtra ++ []))) s6Step352ExitF_Incoming s6Step352ExitF_checked h2 s6Step352ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step352ExitGBefore s6Step352ExitGAfter s6Step352ExitGvAfter
    s6Step352ExitGRow s6Step352ExitGOut 94 [] [(s6Step352ExitFRow,95),(s6Step352ExitFvRow,193),(s6Step352ExitGvRow,192)] [[],[],[]] [s6Step352ExitFOut,s6Step352ExitFvOut,s6Step352ExitGvOut]
    (shrinkRow 777 s6Step352ExitGExtra) ((shrinkRow 795 s6Step352ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step352ExitGvExtra ++ [])))) s6Step352ExitG_Incoming s6Step352ExitG_checked h1 s6Step352ExitG_Outgoing
  exact h0

private theorem s6Step352ExitBank_checked : compileHmrBankResizeLog .exit s6Step352ExitGBefore ⟨s6Step352ExitFRow,s6Step352ExitGRow,s6Step352ExitFvRow,s6Step352ExitGvRow⟩ ⟨95,94,193,192⟩ [[],[],[],[]]=
    some (s6Step352ExitGvAfter,⟨s6Step352ExitFOut,s6Step352ExitGOut,s6Step352ExitFvOut,s6Step352ExitGvOut⟩,(shrinkRow 777 s6Step352ExitGExtra ++ (shrinkRow 795 s6Step352ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step352ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step352ExitBank_rows]
  rfl

private theorem s6Step352Add0_apart : Disjoint s6Step352Add0Arena.live s6Step352Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step352Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352Add0_card : s6Step352Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step352Add0_borrowed : s6Step352Add0Arena.checkBorrow (hmrHybridCount s6Step352Add0Arena s6Step352Add0B.length) s6Step352Add0Work=some s6Step352Add0During := by
  have len : s6Step352Add0Work.length=hmrHybridCount s6Step352Add0Arena s6Step352Add0B.length := by
    rw [hmrHybridCount,s6Step352Add0_card]
    decide +kernel
  have nd : s6Step352Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step352Add0Arena s6Step352Add0During s6Step352Add0Work.toFinset s6Step352Add0_bounded s6Step352Add0_apart rfl

private theorem s6Step352Add0_distinct : (805::858::802::(s6Step352Add0A++s6Step352Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352Add0_owned : (805::858::802::(s6Step352Add0A++s6Step352Add0B)).toFinset⊆s6Step352Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step352Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352Add0_checked : compileHmrHybridCinLog s6Step352Add0Arena 858 805 802 s6Step352Add0A s6Step352Add0B s6Step352Add0Work=some s6Step352Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step352Add0Arena s6Step352Add0During 858 805 802 s6Step352Add0A s6Step352Add0B s6Step352Add0Work
    (by decide +kernel) (by decide +kernel) s6Step352Add0_distinct
    (fun q hq => s6Step352Add0_owned (List.mem_toFinset.mpr hq)) s6Step352Add0_borrowed

private theorem s6Step352Add1_apart : Disjoint s6Step352Add1Arena.live s6Step352Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step352Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352Add1_card : s6Step352Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step352Add1_borrowed : s6Step352Add1Arena.checkBorrow (hmrHybridCount s6Step352Add1Arena s6Step352Add1B.length) s6Step352Add1Work=some s6Step352Add1During := by
  have len : s6Step352Add1Work.length=hmrHybridCount s6Step352Add1Arena s6Step352Add1B.length := by
    rw [hmrHybridCount,s6Step352Add1_card]
    decide +kernel
  have nd : s6Step352Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step352Add1Arena s6Step352Add1During s6Step352Add1Work.toFinset s6Step352Add1_bounded s6Step352Add1_apart rfl

private theorem s6Step352Add1_distinct : (805::858::802::(s6Step352Add1A++s6Step352Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352Add1_owned : (805::858::802::(s6Step352Add1A++s6Step352Add1B)).toFinset⊆s6Step352Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step352Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352Add1_checked : compileHmrHybridCinLog s6Step352Add1Arena 858 805 802 s6Step352Add1A s6Step352Add1B s6Step352Add1Work=some s6Step352Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step352Add1Arena s6Step352Add1During 858 805 802 s6Step352Add1A s6Step352Add1B s6Step352Add1Work
    (by decide +kernel) (by decide +kernel) s6Step352Add1_distinct
    (fun q hq => s6Step352Add1_owned (List.mem_toFinset.mpr hq)) s6Step352Add1_borrowed

private theorem s6Step352F4_apart : Disjoint (s6Step352Add0A++s6Step352Add0B).toFinset (s6Step352Add1A++s6Step352Add1B).toFinset := by
  have nd : ((s6Step352Add0A++s6Step352Add0B)++(s6Step352Add1A++s6Step352Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step352F4_carry : s6Step352F4FlagArena.checkBorrow 1 [802]=some s6Step352Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step352F4FlagArena,s6Step352HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step352F4FlagArena,s6Step352HeadFvAfter,s6Step352Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step352F4_distinct : (789::858::805::802::((s6Step352Add0A++s6Step352Add1A)++(s6Step352Add0B++s6Step352Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352F4_flag : s6Step352HeadFvAfter.checkBorrow 1 [805]=some s6Step352F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step352HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step352F4_owned : (789::858::((s6Step352Add0A++s6Step352Add1A)++(s6Step352Add0B++s6Step352Add1B))).toFinset⊆s6Step352HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step352HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352F4_checked : compileHmrHybridF4Log s6Step352HeadFvAfter 789 858 s6Step352Add0A s6Step352Add0B s6Step352Add1A s6Step352Add1B [805] [802] s6Step352Add0Work s6Step352Add1Work=some s6Step352F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step352HeadFvAfter s6Step352F4FlagArena s6Step352Add0Arena s6Step352Add0During s6Step352Add1During 789 858
    s6Step352Add0A s6Step352Add0B s6Step352Add1A s6Step352Add1B [805] [802] s6Step352Add0Work s6Step352Add1Work
    (fun q hq => s6Step352F4_owned (List.mem_toFinset.mpr hq)) s6Step352F4_flag s6Step352F4_carry
    s6Step352F4_distinct s6Step352F4_apart s6Step352Add0_checked s6Step352Add1_checked

private theorem s6Step352Front_branch : s6Step352FrontSigmaArena.checkBorrow 1 [858]=some s6Step352HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step352FrontSigmaArena,s6Step352EntryGvAfter,s6Step352EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step352FrontSigmaArena,s6Step352EntryGvAfter,s6Step352EntryGAfter,s6Step352HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step352Front_entry : HmrFrontEntryValid s6Step352EntryFBefore s6Step352FrontBank 96 192 ⟨95,94,193,192⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step352FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step352EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step352EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step352FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step352Front_sigma : s6Step352EntryGvAfter.checkBorrow 1 [789]=some s6Step352FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step352EntryGvAfter,s6Step352EntryGAfter,arenaWires]
  · rfl

private def s6Step352HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352HeadFBefore : Arena := s6Step352HeadGAfter

private def s6Step352HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351],795⟩

private def s6Step352HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882],776⟩

private def s6Step352HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 873],777⟩

private def s6Step352HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809],775⟩

private theorem s6Step352HeadBank_incomingDistinct : ([s6Step352HeadGRow,s6Step352HeadFRow,s6Step352HeadGvRow,s6Step352HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352HeadF_Incoming : rowsOwned s6Step352HeadFBefore [s6Step352HeadFRow,s6Step352HeadGvRow,s6Step352HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step352HeadGRow,s6Step352HeadFRow,s6Step352HeadGvRow,s6Step352HeadFvRow] 1 s6Step352HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step352HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step352HeadBank_outgoingOwned : rowsOwned s6Step352HeadFvAfter [s6Step352HeadGOut,s6Step352HeadFOut,s6Step352HeadGvOut,s6Step352HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step352HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step352HeadF_Outgoing : rowsOwned s6Step352HeadFvAfter [s6Step352HeadFOut,s6Step352HeadGvOut,s6Step352HeadFvOut] :=
  hmrRows_owned_drop s6Step352HeadFvAfter [s6Step352HeadGOut,s6Step352HeadFOut,s6Step352HeadGvOut,s6Step352HeadFvOut] 1 s6Step352HeadBank_outgoingOwned

private theorem s6Step352HeadF_distinct : (s6Step352HeadFRow.sign::s6Step352HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352HeadF_owned : (s6Step352HeadFRow.sign::s6Step352HeadFRow.payload).toFinset⊆s6Step352HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step352HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352HeadF_reserved : s6Step352HeadFBefore.reserve s6Step352HeadFFresh.toFinset=some s6Step352HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step352HeadFFresh,arenaWires]
  · norm_num [s6Step352HeadFBefore,s6Step352HeadGAfter,s6Step352HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step352HeadFAfter,s6Step352HeadFBefore,s6Step352HeadGAfter,s6Step352HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step352HeadF_checked : planRowResizeLog s6Step352HeadFBefore s6Step352HeadFRow 97 s6Step352HeadFFresh=
    some (s6Step352HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 817],795⟩,growRow 795 s6Step352HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step352HeadFBefore s6Step352HeadFAfter s6Step352HeadFRow 97 s6Step352HeadFFresh
    s6Step352HeadF_distinct s6Step352HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step352HeadF_reserved
  have rowEq : WindowRow.mk (s6Step352HeadFRow.payload++s6Step352HeadFFresh) s6Step352HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 817],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step352HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step352HeadFvBefore : Arena := s6Step352HeadGvAfter

private theorem s6Step352HeadFv_Incoming : rowsOwned s6Step352HeadFvBefore [s6Step352HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step352HeadGRow,s6Step352HeadFRow,s6Step352HeadGvRow,s6Step352HeadFvRow] 3 s6Step352HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step352HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step352HeadFv_Outgoing : rowsOwned s6Step352HeadFvAfter [s6Step352HeadFvOut] :=
  hmrRows_owned_drop s6Step352HeadFvAfter [s6Step352HeadGOut,s6Step352HeadFOut,s6Step352HeadGvOut,s6Step352HeadFvOut] 3 s6Step352HeadBank_outgoingOwned

private theorem s6Step352HeadFv_distinct : (s6Step352HeadFvRow.sign::s6Step352HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352HeadFv_owned : (s6Step352HeadFvRow.sign::s6Step352HeadFvRow.payload).toFinset⊆s6Step352HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step352HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352HeadFv_reserved : s6Step352HeadFvBefore.reserve s6Step352HeadFvFresh.toFinset=some s6Step352HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step352HeadFvFresh,arenaWires]
  · norm_num [s6Step352HeadFvBefore,s6Step352HeadGvAfter,s6Step352HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step352HeadFvAfter,s6Step352HeadFvBefore,s6Step352HeadGvAfter,s6Step352HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step352HeadFv_checked : planRowResizeLog s6Step352HeadFvBefore s6Step352HeadFvRow 193 s6Step352HeadFvFresh=
    some (s6Step352HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩,growRow 776 s6Step352HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step352HeadFvBefore s6Step352HeadFvAfter s6Step352HeadFvRow 193 s6Step352HeadFvFresh
    s6Step352HeadFv_distinct s6Step352HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step352HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step352HeadFvRow.payload++s6Step352HeadFvFresh) s6Step352HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step352HeadG_Incoming : rowsOwned s6Step352HeadGBefore [s6Step352HeadGRow,s6Step352HeadFRow,s6Step352HeadGvRow,s6Step352HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step352HeadGRow,s6Step352HeadFRow,s6Step352HeadGvRow,s6Step352HeadFvRow] 0 s6Step352HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step352HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step352HeadG_Outgoing : rowsOwned s6Step352HeadFvAfter [s6Step352HeadGOut,s6Step352HeadFOut,s6Step352HeadGvOut,s6Step352HeadFvOut] :=
  hmrRows_owned_drop s6Step352HeadFvAfter [s6Step352HeadGOut,s6Step352HeadFOut,s6Step352HeadGvOut,s6Step352HeadFvOut] 0 s6Step352HeadBank_outgoingOwned

private theorem s6Step352HeadG_distinct : (s6Step352HeadGRow.sign::s6Step352HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352HeadG_owned : (s6Step352HeadGRow.sign::s6Step352HeadGRow.payload).toFinset⊆s6Step352HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step352HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352HeadG_reserved : s6Step352HeadGBefore.reserve s6Step352HeadGFresh.toFinset=some s6Step352HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step352HeadGFresh,arenaWires]
  · norm_num [s6Step352HeadGBefore,s6Step352HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step352HeadGAfter,s6Step352HeadGBefore,s6Step352HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step352HeadG_checked : planRowResizeLog s6Step352HeadGBefore s6Step352HeadGRow 97 s6Step352HeadGFresh=
    some (s6Step352HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 873, 906],777⟩,growRow 777 s6Step352HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step352HeadGBefore s6Step352HeadGAfter s6Step352HeadGRow 97 s6Step352HeadGFresh
    s6Step352HeadG_distinct s6Step352HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step352HeadG_reserved
  have rowEq : WindowRow.mk (s6Step352HeadGRow.payload++s6Step352HeadGFresh) s6Step352HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 873, 906],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step352HeadGvBefore : Arena := s6Step352HeadFAfter

private theorem s6Step352HeadGv_Incoming : rowsOwned s6Step352HeadGvBefore [s6Step352HeadGvRow,s6Step352HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step352HeadGRow,s6Step352HeadFRow,s6Step352HeadGvRow,s6Step352HeadFvRow] 2 s6Step352HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step352HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step352HeadGv_Outgoing : rowsOwned s6Step352HeadFvAfter [s6Step352HeadGvOut,s6Step352HeadFvOut] :=
  hmrRows_owned_drop s6Step352HeadFvAfter [s6Step352HeadGOut,s6Step352HeadFOut,s6Step352HeadGvOut,s6Step352HeadFvOut] 2 s6Step352HeadBank_outgoingOwned

private theorem s6Step352HeadGv_distinct : (s6Step352HeadGvRow.sign::s6Step352HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step352HeadGv_owned : (s6Step352HeadGvRow.sign::s6Step352HeadGvRow.payload).toFinset⊆s6Step352HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step352HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step352HeadGv_reserved : s6Step352HeadGvBefore.reserve s6Step352HeadGvFresh.toFinset=some s6Step352HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step352HeadGvFresh,arenaWires]
  · norm_num [s6Step352HeadGvBefore,s6Step352HeadFAfter,s6Step352HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step352HeadGvAfter,s6Step352HeadGvBefore,s6Step352HeadFAfter,s6Step352HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step352HeadGv_checked : planRowResizeLog s6Step352HeadGvBefore s6Step352HeadGvRow 193 s6Step352HeadGvFresh=
    some (s6Step352HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 881],775⟩,growRow 775 s6Step352HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step352HeadGvBefore s6Step352HeadGvAfter s6Step352HeadGvRow 193 s6Step352HeadGvFresh
    s6Step352HeadGv_distinct s6Step352HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step352HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step352HeadGvRow.payload++s6Step352HeadGvFresh) s6Step352HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 881],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step352HeadBank_rows : planWindowRowsLog s6Step352HeadGBefore [(s6Step352HeadGRow,97),(s6Step352HeadFRow,97),(s6Step352HeadGvRow,193),(s6Step352HeadFvRow,193)] [s6Step352HeadGFresh,s6Step352HeadFFresh,s6Step352HeadGvFresh,s6Step352HeadFvFresh]=
    some (s6Step352HeadFvAfter,[s6Step352HeadGOut,s6Step352HeadFOut,s6Step352HeadGvOut,s6Step352HeadFvOut],(growRow 777 s6Step352HeadGFresh ++ (growRow 795 s6Step352HeadFFresh ++ (growRow 775 s6Step352HeadGvFresh ++ (growRow 776 s6Step352HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step352HeadFvAfter [] []=some (s6Step352HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step352HeadFvBefore s6Step352HeadFvAfter s6Step352HeadFvAfter
    s6Step352HeadFvRow s6Step352HeadFvOut 193 s6Step352HeadFvFresh [] [] []
    (growRow 776 s6Step352HeadFvFresh) ([]) s6Step352HeadFv_Incoming s6Step352HeadFv_checked h4 s6Step352HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step352HeadGvBefore s6Step352HeadGvAfter s6Step352HeadFvAfter
    s6Step352HeadGvRow s6Step352HeadGvOut 193 s6Step352HeadGvFresh [(s6Step352HeadFvRow,193)] [s6Step352HeadFvFresh] [s6Step352HeadFvOut]
    (growRow 775 s6Step352HeadGvFresh) ((growRow 776 s6Step352HeadFvFresh ++ [])) s6Step352HeadGv_Incoming s6Step352HeadGv_checked h3 s6Step352HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step352HeadFBefore s6Step352HeadFAfter s6Step352HeadFvAfter
    s6Step352HeadFRow s6Step352HeadFOut 97 s6Step352HeadFFresh [(s6Step352HeadGvRow,193),(s6Step352HeadFvRow,193)] [s6Step352HeadGvFresh,s6Step352HeadFvFresh] [s6Step352HeadGvOut,s6Step352HeadFvOut]
    (growRow 795 s6Step352HeadFFresh) ((growRow 775 s6Step352HeadGvFresh ++ (growRow 776 s6Step352HeadFvFresh ++ []))) s6Step352HeadF_Incoming s6Step352HeadF_checked h2 s6Step352HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step352HeadGBefore s6Step352HeadGAfter s6Step352HeadFvAfter
    s6Step352HeadGRow s6Step352HeadGOut 97 s6Step352HeadGFresh [(s6Step352HeadFRow,97),(s6Step352HeadGvRow,193),(s6Step352HeadFvRow,193)] [s6Step352HeadFFresh,s6Step352HeadGvFresh,s6Step352HeadFvFresh] [s6Step352HeadFOut,s6Step352HeadGvOut,s6Step352HeadFvOut]
    (growRow 777 s6Step352HeadGFresh) ((growRow 795 s6Step352HeadFFresh ++ (growRow 775 s6Step352HeadGvFresh ++ (growRow 776 s6Step352HeadFvFresh ++ [])))) s6Step352HeadG_Incoming s6Step352HeadG_checked h1 s6Step352HeadG_Outgoing
  exact h0

private theorem s6Step352HeadBank_checked : compileHmrBankResizeLog .headroom s6Step352HeadGBefore ⟨s6Step352HeadFRow,s6Step352HeadGRow,s6Step352HeadFvRow,s6Step352HeadGvRow⟩ ⟨97,97,193,193⟩ [s6Step352HeadGFresh,s6Step352HeadFFresh,s6Step352HeadGvFresh,s6Step352HeadFvFresh]=
    some (s6Step352HeadFvAfter,⟨s6Step352HeadFOut,s6Step352HeadGOut,s6Step352HeadFvOut,s6Step352HeadGvOut⟩,(growRow 777 s6Step352HeadGFresh ++ (growRow 795 s6Step352HeadFFresh ++ (growRow 775 s6Step352HeadGvFresh ++ (growRow 776 s6Step352HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step352HeadBank_rows]
  rfl

private theorem s6Step352Front_checked : compileHmrSourceFrontLog s6Step352EntryFBefore s6Step352FrontBank 96 192 ⟨95,94,193,192⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step352FrontLog=some s6Step352FrontPlan := by
  have pairEq : s6Step352FrontPair=⟨s6Step352HeadFRow,s6Step352HeadGRow,s6Step352HeadFvRow,s6Step352HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step352FrontHead=⟨s6Step352ExitFRow,s6Step352ExitGRow,s6Step352ExitFvRow,s6Step352ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step352Add0A=s6Step352FrontHead.f.wires := by decide +kernel
  have gEq : s6Step352Add0B=s6Step352FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step352Add1A=s6Step352FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step352Add1B=s6Step352FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step352EntryFBefore s6Step352FrontBank 96 192 ⟨95,94,193,192⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step352FrontLog s6Step352FrontPlan
  · exact s6Step352Front_entry
  · exact s6Step352EntryBank_checked
  · exact s6Step352Front_sigma
  · rfl
  · exact s6Step352Front_branch
  · rfl
  · simpa only [s6Step352FrontPlan,pairEq] using s6Step352HeadBank_checked
  · simpa only [s6Step352FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step352F4_checked
  · exact s6Step352Counter_checked
  · rfl
  · simpa only [s6Step352FrontPlan,headEq] using s6Step352ExitBank_checked

private theorem s6Step352Complete_explicit_checked : compileHmrEarlyStepLog s6Step352EntryFBefore s6Step352FrontBank 96 192 ⟨95,94,193,192⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step352CompleteLog=some s6Step352CompletePlan := by
  let Q := s6Step352EarlyControlPlan
  have hq := s6Step352EarlyControl_plan_checked
  have fv1 : s6Step352CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step352CompleteOut.fv.payload[2]?.getD s6Step352CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step352CompleteOut.fv.payload[3]?.getD s6Step352CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step352CompleteOut.fv.payload[4]?.getD s6Step352CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step352EntryFBefore s6Step352EarlyControlArena s6Step352FrontBank 96 192 ⟨95,94,193,192⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step352CompleteLog s6Step352FrontPlan Q
    s6Step352Front_checked s6Step352Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step352Complete_owned s6Step352Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step352EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 789 s6Step352CompleteOut.fv.second (s6Step352CompleteOut.fv.payload[2]?.getD s6Step352CompleteOut.fv.sign) (s6Step352CompleteOut.fv.payload[3]?.getD s6Step352CompleteOut.fv.sign) (s6Step352CompleteOut.fv.payload[4]?.getD s6Step352CompleteOut.fv.sign) 858 60 s6Step352EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep352Arena : Arena := s6Step352EntryFBefore
def s6PrivateStep352Bank : WindowBank := s6Step352FrontBank
def s6PrivateStep352Spec : HmrSourceWalkStepLog := ⟨96,192,⟨95,94,193,192⟩,60,.early s6Step352CompleteLog⟩
def s6PrivateStep352Plan : HmrSourceStepPlan := .early s6Step352CompletePlan
theorem s6PrivateStep352_source : s6PrivateStep352Spec=s6ObservedLogs352[0] := rfl
theorem s6PrivateStep352_checked : compileHmrSourceStepLog s6PrivateStep352Arena s6PrivateStep352Bank
    s6PrivateStep352Spec.fgWidth s6PrivateStep352Spec.vWidth s6PrivateStep352Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 352 s6PrivateStep352Spec.need none s6PrivateStep352Spec.log=some s6PrivateStep352Plan := by
  change compileHmrSourceStepLog s6Step352EntryFBefore s6Step352FrontBank 96 192 ⟨95,94,193,192⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 352 60 none (.early s6Step352CompleteLog)=some (.early s6Step352CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 352<498)]
  rw [s6Step352Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
