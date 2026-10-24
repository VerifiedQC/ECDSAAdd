import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep341
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

private def s6Step343CompleteMoves : List (Wire × Wire) := [(845,99)]

private def s6Step343EarlyControlLog : HmrEarlyControlLog := ⟨[845, 903, 881, 843, 802],[805],[915],[906, 792, 816, 819, 920, 842],[]⟩

private def s6Step343FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [802], [], [903]],[[805], [843], [881], [768]],[[], [], [], []]⟩,[877],[817],[915],[906],[792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[915, 906, 792, 816]⟩

private def s6Step343CompleteLog : HmrEarlyStepLog := ⟨s6Step343FrontLog,s6Step343CompleteMoves,s6Step343EarlyControlLog⟩

private def s6Step343ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356],795⟩

private def s6Step343ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768],776⟩

private def s6Step343ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],777⟩

private def s6Step343ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860],775⟩

private def s6Step343FrontOut : WindowBank := ⟨s6Step343ExitFOut,s6Step343ExitGOut,s6Step343ExitFvOut,s6Step343ExitGvOut⟩

private def s6Step343CompleteOut : WindowBank := s6Step343FrontOut.repacked s6Step343CompleteMoves

private def s6Step343EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step343EarlyControlPositiveArena,[805],s6Step343EarlyControlEqualityArena,[915],⟨⟨877,false⟩,[⟨⟨805,false⟩,915⟩]⟩⟩

private def s6Step343EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,845⟩,⟨⟨772,false⟩,903⟩,⟨⟨771,false⟩,881⟩,⟨⟨770,false⟩,843⟩,⟨⟨769,false⟩,802⟩]⟩

private def s6Step343EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step343EarlyControlZeroArena,s6Step343EarlyControlZeroPlan,s6Step343EarlyControlClassPlan,s6Step343EarlyControlFlagArena,s6Step343EarlyControlFittedArena,s6Step343EarlyControlHistoryArena,s6Step343EarlyControlSigmaArena,s6Step343EarlyControlOutputArena,s6Step343EarlyControlLog⟩

private def s6Step343CounterWork : List Wire := [915, 906, 792, 816]

private theorem s6Step343Counter_bounded : s6Step343CounterWork.toFinset⊆arenaWires := by norm_num [s6Step343CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step343HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343CounterDuring : Arena := ⟨s6Step343HeadFvAfter.live∪s6Step343CounterWork.toFinset,Finset.union_subset s6Step343HeadFvAfter.bounded s6Step343Counter_bounded⟩

private def s6Step343EntryFFresh : List Wire := []

private def s6Step343EntryFvFresh : List Wire := []

private def s6Step343EntryGFresh : List Wire := [802]

private def s6Step343EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343EntryGvFresh : List Wire := [903]

private def s6Step343ExitFExtra : List Wire := [843]

private def s6Step343ExitGExtra : List Wire := [99, 802, 805]

private def s6Step343ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343ExitGvExtra : List Wire := [903, 881]

private def s6Step343Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343Add0Work : List Wire := [792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step343Add0_bounded : s6Step343Add0Work.toFinset⊆arenaWires := by
  have h : s6Step343Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step343Add0During : Arena := ⟨s6Step343Add0Arena.live∪s6Step343Add0Work.toFinset,Finset.union_subset s6Step343Add0Arena.bounded s6Step343Add0_bounded⟩

private def s6Step343Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343Add1Work : List Wire := [792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step343Add1_bounded : s6Step343Add1Work.toFinset⊆arenaWires := by
  have h : s6Step343Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step343Add1During : Arena := ⟨s6Step343Add1Arena.live∪s6Step343Add1Work.toFinset,Finset.union_subset s6Step343Add1Arena.bounded s6Step343Add1_bounded⟩

private def s6Step343F4FlagArena : Arena := ⟨s6Step343HeadFvAfter.live∪{915},Finset.union_subset s6Step343HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step343F4Plan : HmrHybridF4Plan := ⟨s6Step343F4FlagArena,[915],s6Step343Add0Arena,[906],s6Step343Add0During,s6Step343Add0Work,s6Step343Add1During,s6Step343Add1Work⟩

private def s6Step343HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 843],795⟩

private def s6Step343HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768],776⟩

private def s6Step343HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802, 805],777⟩

private def s6Step343HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 903, 881],775⟩

private def s6Step343FrontHead : WindowBank := ⟨s6Step343HeadFOut,s6Step343HeadGOut,s6Step343HeadFvOut,s6Step343HeadGvOut⟩

private def s6Step343EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356],795⟩

private def s6Step343EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812],776⟩

private def s6Step343EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802],777⟩

private def s6Step343EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 903],775⟩

private def s6Step343FrontPair : WindowBank := ⟨s6Step343EntryFOut,s6Step343EntryGOut,s6Step343EntryFvOut,s6Step343EntryGvOut⟩

private def s6Step343FrontSigmaArena : Arena := ⟨s6Step343EntryGvAfter.live∪{877},Finset.union_subset s6Step343EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step343HeadFFresh : List Wire := [843]

private def s6Step343HeadFvFresh : List Wire := [768]

private def s6Step343HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343HeadGFresh : List Wire := [805]

private def s6Step343HeadGvFresh : List Wire := [881]

private def s6Step343FrontPlan : HmrSourceFront := ⟨s6Step343EntryGvAfter,s6Step343FrontPair,(growRow 795 s6Step343EntryFFresh ++ (growRow 777 s6Step343EntryGFresh ++ (growRow 776 s6Step343EntryFvFresh ++ (growRow 775 s6Step343EntryGvFresh ++ [])))),s6Step343FrontSigmaArena,[877],s6Step343HeadGBefore,[817],
  s6Step343HeadFvAfter,s6Step343FrontHead,(growRow 777 s6Step343HeadGFresh ++ (growRow 795 s6Step343HeadFFresh ++ (growRow 775 s6Step343HeadGvFresh ++ (growRow 776 s6Step343HeadFvFresh ++ [])))),s6Step343F4Plan,s6Step343CounterDuring,s6Step343CounterWork,s6Step343ExitGvAfter,s6Step343FrontOut,(shrinkRow 777 s6Step343ExitGExtra ++ (shrinkRow 795 s6Step343ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step343ExitGvExtra ++ []))))⟩

private def s6Step343CompletePlan : HmrEarlyStepPlan := ⟨s6Step343FrontPlan,s6Step343EarlyControlArena,s6Step343EarlyControlPlan,s6Step343CompleteMoves⟩

private theorem s6Step343Complete_apart : List.Disjoint (s6Step343CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [877, 817, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step343CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[877, 817, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step343Complete_owned : (s6Step343CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step343EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step343EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step343CompleteMoveArena : Arena := ⟨s6Step343ExitGvAfter.live∪{99},Finset.union_subset s6Step343ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step343Complete_repack : s6Step343ExitGvAfter.checkRepack s6Step343CompleteMoves=some s6Step343EarlyControlArena := by
  have owned : 845∈s6Step343ExitGvAfter.live := by norm_num [s6Step343ExitGvAfter,arenaWires]
  have reserve : s6Step343ExitGvAfter.reserve {99}=some s6Step343CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step343ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step343CompleteMoveArena.retireSet {845}=s6Step343EarlyControlArena := by
    unfold Arena.retireSet s6Step343EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step343CompleteMoveArena,s6Step343ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step343CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step343CompleteMoveArena.retireSet {845}).checkRepack []=some s6Step343EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step343EarlyControl_branchOwned : ([817] : List Wire).toFinset⊆s6Step343EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step343EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343EarlyControl_branch : compileHmrBranchRetirement s6Step343EarlyControlSigmaArena 817=some s6Step343EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step343EarlyControl_branchOwned
  · ext q
    simp [s6Step343EarlyControlOutputArena,s6Step343EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step343EarlyControl_classEqualityBorrow : s6Step343EarlyControlPositiveArena.checkBorrow (([877, 805] : List Wire).length-1) s6Step343EarlyControlLog.classWork=some s6Step343EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step343EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step343EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step343EarlyControlEqualityArena,s6Step343EarlyControlPositiveArena,s6Step343EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step343EarlyControl_classEqualityOwned : ([877, 805] : List Wire).toFinset⊆s6Step343EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step343EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343EarlyControl_classEquality : compileHmrEqualityLog s6Step343EarlyControlPositiveArena [877, 805] 0 s6Step343EarlyControlLog.classWork=some (s6Step343EarlyControlEqualityArena,s6Step343EarlyControlLog.classWork,s6Step343EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step343EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step343EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step343EarlyControl_classOwned : ([769, 802, 877] : List Wire).toFinset⊆s6Step343EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step343EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343EarlyControl_positiveBorrow : s6Step343EarlyControlZeroArena.checkBorrow (1) s6Step343EarlyControlLog.positiveWork=some s6Step343EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step343EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step343EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step343EarlyControlPositiveArena,s6Step343EarlyControlZeroArena,s6Step343EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step343EarlyControl_class : compileHmrSourceClassLog s6Step343EarlyControlZeroArena false 769 s6Step343EarlyControlZeroPlan.top 0 877 s6Step343EarlyControlLog.positiveWork s6Step343EarlyControlLog.classWork=some s6Step343EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step343EarlyControlClassPlan s6Step343EarlyControlZeroArena false 769 s6Step343EarlyControlZeroPlan.top 0 877
  constructor
  · decide +kernel
  · exact s6Step343EarlyControl_classOwned
  · exact s6Step343EarlyControl_positiveBorrow
  · exact s6Step343EarlyControl_classEquality

private theorem s6Step343EarlyControl_entryRecordOwned : ([817, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step343EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step343EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343EarlyControl_entrySigmaOwned : ([877, 254] : List Wire).toFinset⊆s6Step343EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step343EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343EarlyControl_fitBorrow : s6Step343EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step343EarlyControlLog.recordFresh=some s6Step343EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step343EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step343EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step343EarlyControlFittedArena,s6Step343EarlyControlFlagArena,s6Step343EarlyControlLog,arenaWires]

private theorem s6Step343EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step343EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step343EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343EarlyControl_fit : compileHmrRecordGrowLog s6Step343EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step343EarlyControlLog.recordFresh=some s6Step343EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step343EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step343EarlyControl_fitBorrow

private theorem s6Step343EarlyControl_flagsBorrow : s6Step343EarlyControlEqualityArena.checkBorrow (6) s6Step343EarlyControlLog.flagWork=some s6Step343EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step343EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step343EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step343EarlyControlFlagArena,s6Step343EarlyControlEqualityArena,s6Step343EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step343EarlyControl_flagsOwned : ([915, 253, 252, 251] : List Wire).toFinset⊆s6Step343EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step343EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343EarlyControl_flags : compileHmrFlagsLog s6Step343EarlyControlClassPlan.equalityArena s6Step343EarlyControlClassPlan.equality.top 253 252 251 s6Step343EarlyControlLog.flagWork=some s6Step343EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step343EarlyControl_flagsOwned⟩
  · exact s6Step343EarlyControl_flagsBorrow

private theorem s6Step343EarlyControl_historyBorrow : s6Step343EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step343EarlyControlLog.recordFresh=some s6Step343EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step343EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step343EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step343EarlyControlHistoryArena,s6Step343EarlyControlArena,s6Step343EarlyControlLog,arenaWires]

private theorem s6Step343EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step343EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step343EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343EarlyControl_history : compileHmrRecordGrowLog s6Step343EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step343EarlyControlLog.recordFresh=some s6Step343EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step343EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step343EarlyControl_historyBorrow

private theorem s6Step343EarlyControl_sigmaOwned : ([254, 877] : List Wire).toFinset⊆s6Step343EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step343EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343EarlyControl_sigmaReleaseOwned : ([877] : List Wire).toFinset⊆s6Step343EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step343EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343EarlyControl_sigmaRelease : s6Step343EarlyControlHistoryArena.release {877} (fun _ => false)=some s6Step343EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step343EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step343EarlyControlSigmaArena,s6Step343EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step343EarlyControl_sigma : compileHmrSigmaDropLog s6Step343EarlyControlHistoryArena false 0 0 254 877 []=some s6Step343EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step343EarlyControl_sigmaOwned⟩
  · exact s6Step343EarlyControl_sigmaRelease

private theorem s6Step343EarlyControl_zeroBorrow : s6Step343EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step343EarlyControlLog.zeroWork=some s6Step343EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step343EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step343EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step343EarlyControlZeroArena,s6Step343EarlyControlArena,s6Step343EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step343EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step343EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step343EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<845) ∨ (846≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343EarlyControl_zero : compileHmrEqualityLog s6Step343EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step343EarlyControlLog.zeroWork=some (s6Step343EarlyControlZeroArena,s6Step343EarlyControlLog.zeroWork,s6Step343EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step343EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step343EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step343EarlyControl_logged : s6Step343EarlyControlPlan.Logged s6Step343EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 877 254 253 252 251 817 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step343EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step343EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step343EarlyControl_zero
  · exact s6Step343EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step343EarlyControl_flags
  · exact s6Step343EarlyControl_fit
  · exact s6Step343EarlyControl_history
  · exact s6Step343EarlyControl_sigma
  · exact s6Step343EarlyControl_branch

private theorem s6Step343EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step343EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 877 254 253 252 251 817 60 s6Step343EarlyControlLog=some s6Step343EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step343EarlyControlPlan s6Step343EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 877 254 253 252 251 817 60 s6Step343EarlyControl_logged

private def s6Step343EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356],795⟩

private def s6Step343EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812],776⟩

private def s6Step343EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99],777⟩

private def s6Step343EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860],775⟩

private def s6Step343FrontBank : WindowBank := ⟨s6Step343EntryFRow,s6Step343EntryGRow,s6Step343EntryFvRow,s6Step343EntryGvRow⟩

private def s6Step343Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 843, 795]

private def s6Step343Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802, 805, 777]

private def s6Step343Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 776]

private def s6Step343Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 903, 881, 775]

private theorem s6Step343Counter_apart : Disjoint s6Step343HeadFvAfter.live s6Step343CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step343HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343Counter_borrowed : s6Step343HeadFvAfter.checkBorrow 4 s6Step343CounterWork=some s6Step343CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step343HeadFvAfter s6Step343CounterDuring s6Step343CounterWork.toFinset s6Step343Counter_bounded s6Step343Counter_apart rfl

private theorem s6Step343Counter_owned : (877::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step343HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step343HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343Counter_checked : compileHmrCounterStepLog s6Step343HeadFvAfter true 877 [774, 773, 772, 771, 770, 769] s6Step343CounterWork=some s6Step343CounterDuring := by
  have owned : ∀q∈877::[774, 773, 772, 771, 770, 769],q∈s6Step343HeadFvAfter.live := fun q hq => s6Step343Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step343Counter_borrowed

private def s6Step343EntryFAfter : Arena := s6Step343EntryFBefore

private theorem s6Step343EntryBank_incomingDistinct : ([s6Step343EntryFRow,s6Step343EntryGRow,s6Step343EntryFvRow,s6Step343EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343EntryF_Incoming : rowsOwned s6Step343EntryFBefore [s6Step343EntryFRow,s6Step343EntryGRow,s6Step343EntryFvRow,s6Step343EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step343EntryFRow,s6Step343EntryGRow,s6Step343EntryFvRow,s6Step343EntryGvRow] 0 s6Step343EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step343EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step343EntryBank_outgoingOwned : rowsOwned s6Step343EntryGvAfter [s6Step343EntryFOut,s6Step343EntryGOut,s6Step343EntryFvOut,s6Step343EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step343EntryGvAfter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step343EntryF_Outgoing : rowsOwned s6Step343EntryGvAfter [s6Step343EntryFOut,s6Step343EntryGOut,s6Step343EntryFvOut,s6Step343EntryGvOut] :=
  hmrRows_owned_drop s6Step343EntryGvAfter [s6Step343EntryFOut,s6Step343EntryGOut,s6Step343EntryFvOut,s6Step343EntryGvOut] 0 s6Step343EntryBank_outgoingOwned

private theorem s6Step343EntryF_distinct : (s6Step343EntryFRow.sign::s6Step343EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343EntryF_owned : (s6Step343EntryFRow.sign::s6Step343EntryFRow.payload).toFinset⊆s6Step343EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step343EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343EntryF_reserved : s6Step343EntryFBefore.reserve s6Step343EntryFFresh.toFinset=some s6Step343EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step343EntryFFresh,arenaWires]
  · norm_num [s6Step343EntryFBefore,s6Step343EntryFFresh,arenaWires]
  · simp only [s6Step343EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step343EntryF_checked : planRowResizeLog s6Step343EntryFBefore s6Step343EntryFRow 101 s6Step343EntryFFresh=
    some (s6Step343EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356],795⟩,growRow 795 s6Step343EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step343EntryFBefore s6Step343EntryFAfter s6Step343EntryFRow 101 s6Step343EntryFFresh
    s6Step343EntryF_distinct s6Step343EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step343EntryF_reserved
  have rowEq : WindowRow.mk (s6Step343EntryFRow.payload++s6Step343EntryFFresh) s6Step343EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step343EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343EntryFvAfter : Arena := s6Step343EntryGAfter

private def s6Step343EntryFvBefore : Arena := s6Step343EntryGAfter

private theorem s6Step343EntryFv_Incoming : rowsOwned s6Step343EntryFvBefore [s6Step343EntryFvRow,s6Step343EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step343EntryFRow,s6Step343EntryGRow,s6Step343EntryFvRow,s6Step343EntryGvRow] 2 s6Step343EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step343EntryFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step343EntryFv_Outgoing : rowsOwned s6Step343EntryGvAfter [s6Step343EntryFvOut,s6Step343EntryGvOut] :=
  hmrRows_owned_drop s6Step343EntryGvAfter [s6Step343EntryFOut,s6Step343EntryGOut,s6Step343EntryFvOut,s6Step343EntryGvOut] 2 s6Step343EntryBank_outgoingOwned

private theorem s6Step343EntryFv_distinct : (s6Step343EntryFvRow.sign::s6Step343EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343EntryFv_owned : (s6Step343EntryFvRow.sign::s6Step343EntryFvRow.payload).toFinset⊆s6Step343EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step343EntryFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343EntryFv_reserved : s6Step343EntryFvBefore.reserve s6Step343EntryFvFresh.toFinset=some s6Step343EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step343EntryFvFresh,arenaWires]
  · norm_num [s6Step343EntryFvBefore,s6Step343EntryGAfter,s6Step343EntryFvFresh,arenaWires]
  · simp only [s6Step343EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step343EntryFv_checked : planRowResizeLog s6Step343EntryFvBefore s6Step343EntryFvRow 188 s6Step343EntryFvFresh=
    some (s6Step343EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812],776⟩,growRow 776 s6Step343EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step343EntryFvBefore s6Step343EntryFvAfter s6Step343EntryFvRow 188 s6Step343EntryFvFresh
    s6Step343EntryFv_distinct s6Step343EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step343EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step343EntryFvRow.payload++s6Step343EntryFvFresh) s6Step343EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step343EntryGBefore : Arena := s6Step343EntryFBefore

private theorem s6Step343EntryG_Incoming : rowsOwned s6Step343EntryGBefore [s6Step343EntryGRow,s6Step343EntryFvRow,s6Step343EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step343EntryFRow,s6Step343EntryGRow,s6Step343EntryFvRow,s6Step343EntryGvRow] 1 s6Step343EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step343EntryGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step343EntryG_Outgoing : rowsOwned s6Step343EntryGvAfter [s6Step343EntryGOut,s6Step343EntryFvOut,s6Step343EntryGvOut] :=
  hmrRows_owned_drop s6Step343EntryGvAfter [s6Step343EntryFOut,s6Step343EntryGOut,s6Step343EntryFvOut,s6Step343EntryGvOut] 1 s6Step343EntryBank_outgoingOwned

private theorem s6Step343EntryG_distinct : (s6Step343EntryGRow.sign::s6Step343EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343EntryG_owned : (s6Step343EntryGRow.sign::s6Step343EntryGRow.payload).toFinset⊆s6Step343EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step343EntryGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343EntryG_reserved : s6Step343EntryGBefore.reserve s6Step343EntryGFresh.toFinset=some s6Step343EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step343EntryGFresh,arenaWires]
  · norm_num [s6Step343EntryGBefore,s6Step343EntryFBefore,s6Step343EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step343EntryGAfter,s6Step343EntryGBefore,s6Step343EntryFBefore,s6Step343EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step343EntryG_checked : planRowResizeLog s6Step343EntryGBefore s6Step343EntryGRow 101 s6Step343EntryGFresh=
    some (s6Step343EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802],777⟩,growRow 777 s6Step343EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step343EntryGBefore s6Step343EntryGAfter s6Step343EntryGRow 101 s6Step343EntryGFresh
    s6Step343EntryG_distinct s6Step343EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step343EntryG_reserved
  have rowEq : WindowRow.mk (s6Step343EntryGRow.payload++s6Step343EntryGFresh) s6Step343EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step343EntryGvBefore : Arena := s6Step343EntryGAfter

private theorem s6Step343EntryGv_Incoming : rowsOwned s6Step343EntryGvBefore [s6Step343EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step343EntryFRow,s6Step343EntryGRow,s6Step343EntryFvRow,s6Step343EntryGvRow] 3 s6Step343EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step343EntryGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step343EntryGv_Outgoing : rowsOwned s6Step343EntryGvAfter [s6Step343EntryGvOut] :=
  hmrRows_owned_drop s6Step343EntryGvAfter [s6Step343EntryFOut,s6Step343EntryGOut,s6Step343EntryFvOut,s6Step343EntryGvOut] 3 s6Step343EntryBank_outgoingOwned

private theorem s6Step343EntryGv_distinct : (s6Step343EntryGvRow.sign::s6Step343EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343EntryGv_owned : (s6Step343EntryGvRow.sign::s6Step343EntryGvRow.payload).toFinset⊆s6Step343EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step343EntryGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343EntryGv_reserved : s6Step343EntryGvBefore.reserve s6Step343EntryGvFresh.toFinset=some s6Step343EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step343EntryGvFresh,arenaWires]
  · norm_num [s6Step343EntryGvBefore,s6Step343EntryGAfter,s6Step343EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step343EntryGvAfter,s6Step343EntryGvBefore,s6Step343EntryGAfter,s6Step343EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step343EntryGv_checked : planRowResizeLog s6Step343EntryGvBefore s6Step343EntryGvRow 188 s6Step343EntryGvFresh=
    some (s6Step343EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 903],775⟩,growRow 775 s6Step343EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step343EntryGvBefore s6Step343EntryGvAfter s6Step343EntryGvRow 188 s6Step343EntryGvFresh
    s6Step343EntryGv_distinct s6Step343EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step343EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step343EntryGvRow.payload++s6Step343EntryGvFresh) s6Step343EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 903],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step343EntryBank_rows : planWindowRowsLog s6Step343EntryFBefore [(s6Step343EntryFRow,101),(s6Step343EntryGRow,101),(s6Step343EntryFvRow,188),(s6Step343EntryGvRow,188)] [s6Step343EntryFFresh,s6Step343EntryGFresh,s6Step343EntryFvFresh,s6Step343EntryGvFresh]=
    some (s6Step343EntryGvAfter,[s6Step343EntryFOut,s6Step343EntryGOut,s6Step343EntryFvOut,s6Step343EntryGvOut],(growRow 795 s6Step343EntryFFresh ++ (growRow 777 s6Step343EntryGFresh ++ (growRow 776 s6Step343EntryFvFresh ++ (growRow 775 s6Step343EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step343EntryGvAfter [] []=some (s6Step343EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step343EntryGvBefore s6Step343EntryGvAfter s6Step343EntryGvAfter
    s6Step343EntryGvRow s6Step343EntryGvOut 188 s6Step343EntryGvFresh [] [] []
    (growRow 775 s6Step343EntryGvFresh) ([]) s6Step343EntryGv_Incoming s6Step343EntryGv_checked h4 s6Step343EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step343EntryFvBefore s6Step343EntryFvAfter s6Step343EntryGvAfter
    s6Step343EntryFvRow s6Step343EntryFvOut 188 s6Step343EntryFvFresh [(s6Step343EntryGvRow,188)] [s6Step343EntryGvFresh] [s6Step343EntryGvOut]
    (growRow 776 s6Step343EntryFvFresh) ((growRow 775 s6Step343EntryGvFresh ++ [])) s6Step343EntryFv_Incoming s6Step343EntryFv_checked h3 s6Step343EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step343EntryGBefore s6Step343EntryGAfter s6Step343EntryGvAfter
    s6Step343EntryGRow s6Step343EntryGOut 101 s6Step343EntryGFresh [(s6Step343EntryFvRow,188),(s6Step343EntryGvRow,188)] [s6Step343EntryFvFresh,s6Step343EntryGvFresh] [s6Step343EntryFvOut,s6Step343EntryGvOut]
    (growRow 777 s6Step343EntryGFresh) ((growRow 776 s6Step343EntryFvFresh ++ (growRow 775 s6Step343EntryGvFresh ++ []))) s6Step343EntryG_Incoming s6Step343EntryG_checked h2 s6Step343EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step343EntryFBefore s6Step343EntryFAfter s6Step343EntryGvAfter
    s6Step343EntryFRow s6Step343EntryFOut 101 s6Step343EntryFFresh [(s6Step343EntryGRow,101),(s6Step343EntryFvRow,188),(s6Step343EntryGvRow,188)] [s6Step343EntryGFresh,s6Step343EntryFvFresh,s6Step343EntryGvFresh] [s6Step343EntryGOut,s6Step343EntryFvOut,s6Step343EntryGvOut]
    (growRow 795 s6Step343EntryFFresh) ((growRow 777 s6Step343EntryGFresh ++ (growRow 776 s6Step343EntryFvFresh ++ (growRow 775 s6Step343EntryGvFresh ++ [])))) s6Step343EntryF_Incoming s6Step343EntryF_checked h1 s6Step343EntryF_Outgoing
  exact h0

private theorem s6Step343EntryBank_checked : compileHmrBankResizeLog .entry s6Step343EntryFBefore ⟨s6Step343EntryFRow,s6Step343EntryGRow,s6Step343EntryFvRow,s6Step343EntryGvRow⟩ ⟨101,101,188,188⟩ [s6Step343EntryFFresh,s6Step343EntryGFresh,s6Step343EntryFvFresh,s6Step343EntryGvFresh]=
    some (s6Step343EntryGvAfter,⟨s6Step343EntryFOut,s6Step343EntryGOut,s6Step343EntryFvOut,s6Step343EntryGvOut⟩,(growRow 795 s6Step343EntryFFresh ++ (growRow 777 s6Step343EntryGFresh ++ (growRow 776 s6Step343EntryFvFresh ++ (growRow 775 s6Step343EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step343EntryBank_rows]
  rfl

private def s6Step343ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343ExitFBefore : Arena := s6Step343ExitGAfter

private def s6Step343ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 843],795⟩

private def s6Step343ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768],776⟩

private def s6Step343ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802, 805],777⟩

private def s6Step343ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 903, 881],775⟩

private theorem s6Step343ExitBank_incomingDistinct : ([s6Step343ExitGRow,s6Step343ExitFRow,s6Step343ExitFvRow,s6Step343ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343ExitF_Incoming : rowsOwned s6Step343ExitFBefore [s6Step343ExitFRow,s6Step343ExitFvRow,s6Step343ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step343ExitGRow,s6Step343ExitFRow,s6Step343ExitFvRow,s6Step343ExitGvRow] 1 s6Step343ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step343ExitFBefore (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step343ExitBank_outgoingOwned : rowsOwned s6Step343ExitGvAfter [s6Step343ExitGOut,s6Step343ExitFOut,s6Step343ExitFvOut,s6Step343ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step343ExitGvAfter (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step343ExitF_Outgoing : rowsOwned s6Step343ExitGvAfter [s6Step343ExitFOut,s6Step343ExitFvOut,s6Step343ExitGvOut] :=
  hmrRows_owned_drop s6Step343ExitGvAfter [s6Step343ExitGOut,s6Step343ExitFOut,s6Step343ExitFvOut,s6Step343ExitGvOut] 1 s6Step343ExitBank_outgoingOwned

private theorem s6Step343ExitF_distinct : (s6Step343ExitFRow.sign::s6Step343ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343ExitF_owned : (s6Step343ExitFRow.sign::s6Step343ExitFRow.payload).toFinset⊆s6Step343ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step343ExitFBefore (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343ExitF_retired : s6Step343ExitFBefore.retireSet s6Step343ExitFExtra.toFinset=s6Step343ExitFAfter := by
  unfold Arena.retireSet s6Step343ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step343ExitFBefore,s6Step343ExitGAfter,s6Step343ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step343ExitF_checked : planRowResizeLog s6Step343ExitFBefore s6Step343ExitFRow 101 []=
    some (s6Step343ExitFAfter,s6Step343ExitFOut,shrinkRow 795 s6Step343ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step343ExitFBefore s6Step343ExitFRow 101 s6Step343ExitF_distinct s6Step343ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step343ExitFRow.payload.take 101) s6Step343ExitFRow.sign=s6Step343ExitFOut := by decide +kernel
  have hi : s6Step343ExitFRow.payload.drop 101=s6Step343ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step343ExitF_retired] at result
  exact result

private def s6Step343ExitFvAfter : Arena := s6Step343ExitFAfter

private def s6Step343ExitFvBefore : Arena := s6Step343ExitFAfter

private theorem s6Step343ExitFv_Incoming : rowsOwned s6Step343ExitFvBefore [s6Step343ExitFvRow,s6Step343ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step343ExitGRow,s6Step343ExitFRow,s6Step343ExitFvRow,s6Step343ExitGvRow] 2 s6Step343ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step343ExitFvBefore (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step343ExitFv_Outgoing : rowsOwned s6Step343ExitGvAfter [s6Step343ExitFvOut,s6Step343ExitGvOut] :=
  hmrRows_owned_drop s6Step343ExitGvAfter [s6Step343ExitGOut,s6Step343ExitFOut,s6Step343ExitFvOut,s6Step343ExitGvOut] 2 s6Step343ExitBank_outgoingOwned

private theorem s6Step343ExitFv_distinct : (s6Step343ExitFvRow.sign::s6Step343ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343ExitFv_owned : (s6Step343ExitFvRow.sign::s6Step343ExitFvRow.payload).toFinset⊆s6Step343ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step343ExitFvBefore (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343ExitFv_reserved : s6Step343ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step343ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step343ExitFv_checked : planRowResizeLog s6Step343ExitFvBefore s6Step343ExitFvRow 189 []=
    some (s6Step343ExitFvAfter,s6Step343ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step343ExitFvBefore s6Step343ExitFvAfter s6Step343ExitFvRow 189 []
    s6Step343ExitFv_distinct s6Step343ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step343ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step343ExitFvRow.payload++[]) s6Step343ExitFvRow.sign=s6Step343ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step343ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step343ExitG_Incoming : rowsOwned s6Step343ExitGBefore [s6Step343ExitGRow,s6Step343ExitFRow,s6Step343ExitFvRow,s6Step343ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step343ExitGRow,s6Step343ExitFRow,s6Step343ExitFvRow,s6Step343ExitGvRow] 0 s6Step343ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step343ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step343ExitG_Outgoing : rowsOwned s6Step343ExitGvAfter [s6Step343ExitGOut,s6Step343ExitFOut,s6Step343ExitFvOut,s6Step343ExitGvOut] :=
  hmrRows_owned_drop s6Step343ExitGvAfter [s6Step343ExitGOut,s6Step343ExitFOut,s6Step343ExitFvOut,s6Step343ExitGvOut] 0 s6Step343ExitBank_outgoingOwned

private theorem s6Step343ExitG_distinct : (s6Step343ExitGRow.sign::s6Step343ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343ExitG_owned : (s6Step343ExitGRow.sign::s6Step343ExitGRow.payload).toFinset⊆s6Step343ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step343ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343ExitG_retired : s6Step343ExitGBefore.retireSet s6Step343ExitGExtra.toFinset=s6Step343ExitGAfter := by
  unfold Arena.retireSet s6Step343ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step343ExitGBefore,s6Step343ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step343ExitG_checked : planRowResizeLog s6Step343ExitGBefore s6Step343ExitGRow 99 []=
    some (s6Step343ExitGAfter,s6Step343ExitGOut,shrinkRow 777 s6Step343ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step343ExitGBefore s6Step343ExitGRow 99 s6Step343ExitG_distinct s6Step343ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step343ExitGRow.payload.take 99) s6Step343ExitGRow.sign=s6Step343ExitGOut := by decide +kernel
  have hi : s6Step343ExitGRow.payload.drop 99=s6Step343ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step343ExitG_retired] at result
  exact result

private def s6Step343ExitGvBefore : Arena := s6Step343ExitFAfter

private theorem s6Step343ExitGv_Incoming : rowsOwned s6Step343ExitGvBefore [s6Step343ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step343ExitGRow,s6Step343ExitFRow,s6Step343ExitFvRow,s6Step343ExitGvRow] 3 s6Step343ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step343ExitGvBefore (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step343ExitGv_Outgoing : rowsOwned s6Step343ExitGvAfter [s6Step343ExitGvOut] :=
  hmrRows_owned_drop s6Step343ExitGvAfter [s6Step343ExitGOut,s6Step343ExitFOut,s6Step343ExitFvOut,s6Step343ExitGvOut] 3 s6Step343ExitBank_outgoingOwned

private theorem s6Step343ExitGv_distinct : (s6Step343ExitGvRow.sign::s6Step343ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343ExitGv_owned : (s6Step343ExitGvRow.sign::s6Step343ExitGvRow.payload).toFinset⊆s6Step343ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step343ExitGvBefore (fun q => (0≤q ∧ q<99) ∨ (100≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343ExitGv_retired : s6Step343ExitGvBefore.retireSet s6Step343ExitGvExtra.toFinset=s6Step343ExitGvAfter := by
  unfold Arena.retireSet s6Step343ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step343ExitGvBefore,s6Step343ExitFAfter,s6Step343ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step343ExitGv_checked : planRowResizeLog s6Step343ExitGvBefore s6Step343ExitGvRow 187 []=
    some (s6Step343ExitGvAfter,s6Step343ExitGvOut,shrinkRow 775 s6Step343ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step343ExitGvBefore s6Step343ExitGvRow 187 s6Step343ExitGv_distinct s6Step343ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step343ExitGvRow.payload.take 187) s6Step343ExitGvRow.sign=s6Step343ExitGvOut := by decide +kernel
  have hi : s6Step343ExitGvRow.payload.drop 187=s6Step343ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step343ExitGv_retired] at result
  exact result

private theorem s6Step343ExitBank_rows : planWindowRowsLog s6Step343ExitGBefore [(s6Step343ExitGRow,99),(s6Step343ExitFRow,101),(s6Step343ExitFvRow,189),(s6Step343ExitGvRow,187)] [[],[],[],[]]=
    some (s6Step343ExitGvAfter,[s6Step343ExitGOut,s6Step343ExitFOut,s6Step343ExitFvOut,s6Step343ExitGvOut],(shrinkRow 777 s6Step343ExitGExtra ++ (shrinkRow 795 s6Step343ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step343ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step343ExitGvAfter [] []=some (s6Step343ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step343ExitGvBefore s6Step343ExitGvAfter s6Step343ExitGvAfter
    s6Step343ExitGvRow s6Step343ExitGvOut 187 [] [] [] []
    (shrinkRow 775 s6Step343ExitGvExtra) ([]) s6Step343ExitGv_Incoming s6Step343ExitGv_checked h4 s6Step343ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step343ExitFvBefore s6Step343ExitFvAfter s6Step343ExitGvAfter
    s6Step343ExitFvRow s6Step343ExitFvOut 189 [] [(s6Step343ExitGvRow,187)] [[]] [s6Step343ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step343ExitGvExtra ++ [])) s6Step343ExitFv_Incoming s6Step343ExitFv_checked h3 s6Step343ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step343ExitFBefore s6Step343ExitFAfter s6Step343ExitGvAfter
    s6Step343ExitFRow s6Step343ExitFOut 101 [] [(s6Step343ExitFvRow,189),(s6Step343ExitGvRow,187)] [[],[]] [s6Step343ExitFvOut,s6Step343ExitGvOut]
    (shrinkRow 795 s6Step343ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step343ExitGvExtra ++ []))) s6Step343ExitF_Incoming s6Step343ExitF_checked h2 s6Step343ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step343ExitGBefore s6Step343ExitGAfter s6Step343ExitGvAfter
    s6Step343ExitGRow s6Step343ExitGOut 99 [] [(s6Step343ExitFRow,101),(s6Step343ExitFvRow,189),(s6Step343ExitGvRow,187)] [[],[],[]] [s6Step343ExitFOut,s6Step343ExitFvOut,s6Step343ExitGvOut]
    (shrinkRow 777 s6Step343ExitGExtra) ((shrinkRow 795 s6Step343ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step343ExitGvExtra ++ [])))) s6Step343ExitG_Incoming s6Step343ExitG_checked h1 s6Step343ExitG_Outgoing
  exact h0

private theorem s6Step343ExitBank_checked : compileHmrBankResizeLog .exit s6Step343ExitGBefore ⟨s6Step343ExitFRow,s6Step343ExitGRow,s6Step343ExitFvRow,s6Step343ExitGvRow⟩ ⟨101,99,189,187⟩ [[],[],[],[]]=
    some (s6Step343ExitGvAfter,⟨s6Step343ExitFOut,s6Step343ExitGOut,s6Step343ExitFvOut,s6Step343ExitGvOut⟩,(shrinkRow 777 s6Step343ExitGExtra ++ (shrinkRow 795 s6Step343ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step343ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step343ExitBank_rows]
  rfl

private theorem s6Step343Add0_apart : Disjoint s6Step343Add0Arena.live s6Step343Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step343Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343Add0_card : s6Step343Add0Arena.live.card=912 := by
  decide +kernel

private theorem s6Step343Add0_borrowed : s6Step343Add0Arena.checkBorrow (hmrHybridCount s6Step343Add0Arena s6Step343Add0B.length) s6Step343Add0Work=some s6Step343Add0During := by
  have len : s6Step343Add0Work.length=hmrHybridCount s6Step343Add0Arena s6Step343Add0B.length := by
    rw [hmrHybridCount,s6Step343Add0_card]
    decide +kernel
  have nd : s6Step343Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step343Add0Arena s6Step343Add0During s6Step343Add0Work.toFinset s6Step343Add0_bounded s6Step343Add0_apart rfl

private theorem s6Step343Add0_distinct : (915::817::906::(s6Step343Add0A++s6Step343Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343Add0_owned : (915::817::906::(s6Step343Add0A++s6Step343Add0B)).toFinset⊆s6Step343Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step343Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343Add0_checked : compileHmrHybridCinLog s6Step343Add0Arena 817 915 906 s6Step343Add0A s6Step343Add0B s6Step343Add0Work=some s6Step343Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step343Add0Arena s6Step343Add0During 817 915 906 s6Step343Add0A s6Step343Add0B s6Step343Add0Work
    (by decide +kernel) (by decide +kernel) s6Step343Add0_distinct
    (fun q hq => s6Step343Add0_owned (List.mem_toFinset.mpr hq)) s6Step343Add0_borrowed

private theorem s6Step343Add1_apart : Disjoint s6Step343Add1Arena.live s6Step343Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step343Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343Add1_card : s6Step343Add1Arena.live.card=912 := by
  decide +kernel

private theorem s6Step343Add1_borrowed : s6Step343Add1Arena.checkBorrow (hmrHybridCount s6Step343Add1Arena s6Step343Add1B.length) s6Step343Add1Work=some s6Step343Add1During := by
  have len : s6Step343Add1Work.length=hmrHybridCount s6Step343Add1Arena s6Step343Add1B.length := by
    rw [hmrHybridCount,s6Step343Add1_card]
    decide +kernel
  have nd : s6Step343Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step343Add1Arena s6Step343Add1During s6Step343Add1Work.toFinset s6Step343Add1_bounded s6Step343Add1_apart rfl

private theorem s6Step343Add1_distinct : (915::817::906::(s6Step343Add1A++s6Step343Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343Add1_owned : (915::817::906::(s6Step343Add1A++s6Step343Add1B)).toFinset⊆s6Step343Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step343Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343Add1_checked : compileHmrHybridCinLog s6Step343Add1Arena 817 915 906 s6Step343Add1A s6Step343Add1B s6Step343Add1Work=some s6Step343Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step343Add1Arena s6Step343Add1During 817 915 906 s6Step343Add1A s6Step343Add1B s6Step343Add1Work
    (by decide +kernel) (by decide +kernel) s6Step343Add1_distinct
    (fun q hq => s6Step343Add1_owned (List.mem_toFinset.mpr hq)) s6Step343Add1_borrowed

private theorem s6Step343F4_apart : Disjoint (s6Step343Add0A++s6Step343Add0B).toFinset (s6Step343Add1A++s6Step343Add1B).toFinset := by
  have nd : ((s6Step343Add0A++s6Step343Add0B)++(s6Step343Add1A++s6Step343Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step343F4_carry : s6Step343F4FlagArena.checkBorrow 1 [906]=some s6Step343Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step343F4FlagArena,s6Step343HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step343F4FlagArena,s6Step343HeadFvAfter,s6Step343Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step343F4_distinct : (877::817::915::906::((s6Step343Add0A++s6Step343Add1A)++(s6Step343Add0B++s6Step343Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343F4_flag : s6Step343HeadFvAfter.checkBorrow 1 [915]=some s6Step343F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step343HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step343F4_owned : (877::817::((s6Step343Add0A++s6Step343Add1A)++(s6Step343Add0B++s6Step343Add1B))).toFinset⊆s6Step343HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step343HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343F4_checked : compileHmrHybridF4Log s6Step343HeadFvAfter 877 817 s6Step343Add0A s6Step343Add0B s6Step343Add1A s6Step343Add1B [915] [906] s6Step343Add0Work s6Step343Add1Work=some s6Step343F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step343HeadFvAfter s6Step343F4FlagArena s6Step343Add0Arena s6Step343Add0During s6Step343Add1During 877 817
    s6Step343Add0A s6Step343Add0B s6Step343Add1A s6Step343Add1B [915] [906] s6Step343Add0Work s6Step343Add1Work
    (fun q hq => s6Step343F4_owned (List.mem_toFinset.mpr hq)) s6Step343F4_flag s6Step343F4_carry
    s6Step343F4_distinct s6Step343F4_apart s6Step343Add0_checked s6Step343Add1_checked

private theorem s6Step343Front_branch : s6Step343FrontSigmaArena.checkBorrow 1 [817]=some s6Step343HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step343FrontSigmaArena,s6Step343EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step343FrontSigmaArena,s6Step343EntryGvAfter,s6Step343HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step343Front_entry : HmrFrontEntryValid s6Step343EntryFBefore s6Step343FrontBank 101 188 ⟨101,99,189,187⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step343FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step343EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step343EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step343FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step343Front_sigma : s6Step343EntryGvAfter.checkBorrow 1 [877]=some s6Step343FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step343EntryGvAfter,arenaWires]
  · rfl

private def s6Step343HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343HeadFBefore : Arena := s6Step343HeadGAfter

private def s6Step343HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356],795⟩

private def s6Step343HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812],776⟩

private def s6Step343HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802],777⟩

private def s6Step343HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 903],775⟩

private theorem s6Step343HeadBank_incomingDistinct : ([s6Step343HeadGRow,s6Step343HeadFRow,s6Step343HeadGvRow,s6Step343HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343HeadF_Incoming : rowsOwned s6Step343HeadFBefore [s6Step343HeadFRow,s6Step343HeadGvRow,s6Step343HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step343HeadGRow,s6Step343HeadFRow,s6Step343HeadGvRow,s6Step343HeadFvRow] 1 s6Step343HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step343HeadFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step343HeadBank_outgoingOwned : rowsOwned s6Step343HeadFvAfter [s6Step343HeadGOut,s6Step343HeadFOut,s6Step343HeadGvOut,s6Step343HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step343HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step343HeadF_Outgoing : rowsOwned s6Step343HeadFvAfter [s6Step343HeadFOut,s6Step343HeadGvOut,s6Step343HeadFvOut] :=
  hmrRows_owned_drop s6Step343HeadFvAfter [s6Step343HeadGOut,s6Step343HeadFOut,s6Step343HeadGvOut,s6Step343HeadFvOut] 1 s6Step343HeadBank_outgoingOwned

private theorem s6Step343HeadF_distinct : (s6Step343HeadFRow.sign::s6Step343HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343HeadF_owned : (s6Step343HeadFRow.sign::s6Step343HeadFRow.payload).toFinset⊆s6Step343HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step343HeadFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343HeadF_reserved : s6Step343HeadFBefore.reserve s6Step343HeadFFresh.toFinset=some s6Step343HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step343HeadFFresh,arenaWires]
  · norm_num [s6Step343HeadFBefore,s6Step343HeadGAfter,s6Step343HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step343HeadFAfter,s6Step343HeadFBefore,s6Step343HeadGAfter,s6Step343HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step343HeadF_checked : planRowResizeLog s6Step343HeadFBefore s6Step343HeadFRow 102 s6Step343HeadFFresh=
    some (s6Step343HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 843],795⟩,growRow 795 s6Step343HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step343HeadFBefore s6Step343HeadFAfter s6Step343HeadFRow 102 s6Step343HeadFFresh
    s6Step343HeadF_distinct s6Step343HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step343HeadF_reserved
  have rowEq : WindowRow.mk (s6Step343HeadFRow.payload++s6Step343HeadFFresh) s6Step343HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 843],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step343HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step343HeadFvBefore : Arena := s6Step343HeadGvAfter

private theorem s6Step343HeadFv_Incoming : rowsOwned s6Step343HeadFvBefore [s6Step343HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step343HeadGRow,s6Step343HeadFRow,s6Step343HeadGvRow,s6Step343HeadFvRow] 3 s6Step343HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step343HeadFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step343HeadFv_Outgoing : rowsOwned s6Step343HeadFvAfter [s6Step343HeadFvOut] :=
  hmrRows_owned_drop s6Step343HeadFvAfter [s6Step343HeadGOut,s6Step343HeadFOut,s6Step343HeadGvOut,s6Step343HeadFvOut] 3 s6Step343HeadBank_outgoingOwned

private theorem s6Step343HeadFv_distinct : (s6Step343HeadFvRow.sign::s6Step343HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343HeadFv_owned : (s6Step343HeadFvRow.sign::s6Step343HeadFvRow.payload).toFinset⊆s6Step343HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step343HeadFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343HeadFv_reserved : s6Step343HeadFvBefore.reserve s6Step343HeadFvFresh.toFinset=some s6Step343HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step343HeadFvFresh,arenaWires]
  · norm_num [s6Step343HeadFvBefore,s6Step343HeadGvAfter,s6Step343HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step343HeadFvAfter,s6Step343HeadFvBefore,s6Step343HeadGvAfter,s6Step343HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step343HeadFv_checked : planRowResizeLog s6Step343HeadFvBefore s6Step343HeadFvRow 189 s6Step343HeadFvFresh=
    some (s6Step343HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768],776⟩,growRow 776 s6Step343HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step343HeadFvBefore s6Step343HeadFvAfter s6Step343HeadFvRow 189 s6Step343HeadFvFresh
    s6Step343HeadFv_distinct s6Step343HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step343HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step343HeadFvRow.payload++s6Step343HeadFvFresh) s6Step343HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step343HeadG_Incoming : rowsOwned s6Step343HeadGBefore [s6Step343HeadGRow,s6Step343HeadFRow,s6Step343HeadGvRow,s6Step343HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step343HeadGRow,s6Step343HeadFRow,s6Step343HeadGvRow,s6Step343HeadFvRow] 0 s6Step343HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step343HeadGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step343HeadG_Outgoing : rowsOwned s6Step343HeadFvAfter [s6Step343HeadGOut,s6Step343HeadFOut,s6Step343HeadGvOut,s6Step343HeadFvOut] :=
  hmrRows_owned_drop s6Step343HeadFvAfter [s6Step343HeadGOut,s6Step343HeadFOut,s6Step343HeadGvOut,s6Step343HeadFvOut] 0 s6Step343HeadBank_outgoingOwned

private theorem s6Step343HeadG_distinct : (s6Step343HeadGRow.sign::s6Step343HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343HeadG_owned : (s6Step343HeadGRow.sign::s6Step343HeadGRow.payload).toFinset⊆s6Step343HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step343HeadGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343HeadG_reserved : s6Step343HeadGBefore.reserve s6Step343HeadGFresh.toFinset=some s6Step343HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step343HeadGFresh,arenaWires]
  · norm_num [s6Step343HeadGBefore,s6Step343HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step343HeadGAfter,s6Step343HeadGBefore,s6Step343HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step343HeadG_checked : planRowResizeLog s6Step343HeadGBefore s6Step343HeadGRow 102 s6Step343HeadGFresh=
    some (s6Step343HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802, 805],777⟩,growRow 777 s6Step343HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step343HeadGBefore s6Step343HeadGAfter s6Step343HeadGRow 102 s6Step343HeadGFresh
    s6Step343HeadG_distinct s6Step343HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step343HeadG_reserved
  have rowEq : WindowRow.mk (s6Step343HeadGRow.payload++s6Step343HeadGFresh) s6Step343HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802, 805],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step343HeadGvBefore : Arena := s6Step343HeadFAfter

private theorem s6Step343HeadGv_Incoming : rowsOwned s6Step343HeadGvBefore [s6Step343HeadGvRow,s6Step343HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step343HeadGRow,s6Step343HeadFRow,s6Step343HeadGvRow,s6Step343HeadFvRow] 2 s6Step343HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step343HeadGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step343HeadGv_Outgoing : rowsOwned s6Step343HeadFvAfter [s6Step343HeadGvOut,s6Step343HeadFvOut] :=
  hmrRows_owned_drop s6Step343HeadFvAfter [s6Step343HeadGOut,s6Step343HeadFOut,s6Step343HeadGvOut,s6Step343HeadFvOut] 2 s6Step343HeadBank_outgoingOwned

private theorem s6Step343HeadGv_distinct : (s6Step343HeadGvRow.sign::s6Step343HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step343HeadGv_owned : (s6Step343HeadGvRow.sign::s6Step343HeadGvRow.payload).toFinset⊆s6Step343HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step343HeadGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step343HeadGv_reserved : s6Step343HeadGvBefore.reserve s6Step343HeadGvFresh.toFinset=some s6Step343HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step343HeadGvFresh,arenaWires]
  · norm_num [s6Step343HeadGvBefore,s6Step343HeadFAfter,s6Step343HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step343HeadGvAfter,s6Step343HeadGvBefore,s6Step343HeadFAfter,s6Step343HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step343HeadGv_checked : planRowResizeLog s6Step343HeadGvBefore s6Step343HeadGvRow 189 s6Step343HeadGvFresh=
    some (s6Step343HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 903, 881],775⟩,growRow 775 s6Step343HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step343HeadGvBefore s6Step343HeadGvAfter s6Step343HeadGvRow 189 s6Step343HeadGvFresh
    s6Step343HeadGv_distinct s6Step343HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step343HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step343HeadGvRow.payload++s6Step343HeadGvFresh) s6Step343HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 903, 881],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step343HeadBank_rows : planWindowRowsLog s6Step343HeadGBefore [(s6Step343HeadGRow,102),(s6Step343HeadFRow,102),(s6Step343HeadGvRow,189),(s6Step343HeadFvRow,189)] [s6Step343HeadGFresh,s6Step343HeadFFresh,s6Step343HeadGvFresh,s6Step343HeadFvFresh]=
    some (s6Step343HeadFvAfter,[s6Step343HeadGOut,s6Step343HeadFOut,s6Step343HeadGvOut,s6Step343HeadFvOut],(growRow 777 s6Step343HeadGFresh ++ (growRow 795 s6Step343HeadFFresh ++ (growRow 775 s6Step343HeadGvFresh ++ (growRow 776 s6Step343HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step343HeadFvAfter [] []=some (s6Step343HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step343HeadFvBefore s6Step343HeadFvAfter s6Step343HeadFvAfter
    s6Step343HeadFvRow s6Step343HeadFvOut 189 s6Step343HeadFvFresh [] [] []
    (growRow 776 s6Step343HeadFvFresh) ([]) s6Step343HeadFv_Incoming s6Step343HeadFv_checked h4 s6Step343HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step343HeadGvBefore s6Step343HeadGvAfter s6Step343HeadFvAfter
    s6Step343HeadGvRow s6Step343HeadGvOut 189 s6Step343HeadGvFresh [(s6Step343HeadFvRow,189)] [s6Step343HeadFvFresh] [s6Step343HeadFvOut]
    (growRow 775 s6Step343HeadGvFresh) ((growRow 776 s6Step343HeadFvFresh ++ [])) s6Step343HeadGv_Incoming s6Step343HeadGv_checked h3 s6Step343HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step343HeadFBefore s6Step343HeadFAfter s6Step343HeadFvAfter
    s6Step343HeadFRow s6Step343HeadFOut 102 s6Step343HeadFFresh [(s6Step343HeadGvRow,189),(s6Step343HeadFvRow,189)] [s6Step343HeadGvFresh,s6Step343HeadFvFresh] [s6Step343HeadGvOut,s6Step343HeadFvOut]
    (growRow 795 s6Step343HeadFFresh) ((growRow 775 s6Step343HeadGvFresh ++ (growRow 776 s6Step343HeadFvFresh ++ []))) s6Step343HeadF_Incoming s6Step343HeadF_checked h2 s6Step343HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step343HeadGBefore s6Step343HeadGAfter s6Step343HeadFvAfter
    s6Step343HeadGRow s6Step343HeadGOut 102 s6Step343HeadGFresh [(s6Step343HeadFRow,102),(s6Step343HeadGvRow,189),(s6Step343HeadFvRow,189)] [s6Step343HeadFFresh,s6Step343HeadGvFresh,s6Step343HeadFvFresh] [s6Step343HeadFOut,s6Step343HeadGvOut,s6Step343HeadFvOut]
    (growRow 777 s6Step343HeadGFresh) ((growRow 795 s6Step343HeadFFresh ++ (growRow 775 s6Step343HeadGvFresh ++ (growRow 776 s6Step343HeadFvFresh ++ [])))) s6Step343HeadG_Incoming s6Step343HeadG_checked h1 s6Step343HeadG_Outgoing
  exact h0

private theorem s6Step343HeadBank_checked : compileHmrBankResizeLog .headroom s6Step343HeadGBefore ⟨s6Step343HeadFRow,s6Step343HeadGRow,s6Step343HeadFvRow,s6Step343HeadGvRow⟩ ⟨102,102,189,189⟩ [s6Step343HeadGFresh,s6Step343HeadFFresh,s6Step343HeadGvFresh,s6Step343HeadFvFresh]=
    some (s6Step343HeadFvAfter,⟨s6Step343HeadFOut,s6Step343HeadGOut,s6Step343HeadFvOut,s6Step343HeadGvOut⟩,(growRow 777 s6Step343HeadGFresh ++ (growRow 795 s6Step343HeadFFresh ++ (growRow 775 s6Step343HeadGvFresh ++ (growRow 776 s6Step343HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step343HeadBank_rows]
  rfl

private theorem s6Step343Front_checked : compileHmrSourceFrontLog s6Step343EntryFBefore s6Step343FrontBank 101 188 ⟨101,99,189,187⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step343FrontLog=some s6Step343FrontPlan := by
  have pairEq : s6Step343FrontPair=⟨s6Step343HeadFRow,s6Step343HeadGRow,s6Step343HeadFvRow,s6Step343HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step343FrontHead=⟨s6Step343ExitFRow,s6Step343ExitGRow,s6Step343ExitFvRow,s6Step343ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step343Add0A=s6Step343FrontHead.f.wires := by decide +kernel
  have gEq : s6Step343Add0B=s6Step343FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step343Add1A=s6Step343FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step343Add1B=s6Step343FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step343EntryFBefore s6Step343FrontBank 101 188 ⟨101,99,189,187⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step343FrontLog s6Step343FrontPlan
  · exact s6Step343Front_entry
  · exact s6Step343EntryBank_checked
  · exact s6Step343Front_sigma
  · rfl
  · exact s6Step343Front_branch
  · rfl
  · simpa only [s6Step343FrontPlan,pairEq] using s6Step343HeadBank_checked
  · simpa only [s6Step343FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step343F4_checked
  · exact s6Step343Counter_checked
  · rfl
  · simpa only [s6Step343FrontPlan,headEq] using s6Step343ExitBank_checked

private theorem s6Step343Complete_explicit_checked : compileHmrEarlyStepLog s6Step343EntryFBefore s6Step343FrontBank 101 188 ⟨101,99,189,187⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step343CompleteLog=some s6Step343CompletePlan := by
  let Q := s6Step343EarlyControlPlan
  have hq := s6Step343EarlyControl_plan_checked
  have fv1 : s6Step343CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step343CompleteOut.fv.payload[2]?.getD s6Step343CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step343CompleteOut.fv.payload[3]?.getD s6Step343CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step343CompleteOut.fv.payload[4]?.getD s6Step343CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step343EntryFBefore s6Step343EarlyControlArena s6Step343FrontBank 101 188 ⟨101,99,189,187⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step343CompleteLog s6Step343FrontPlan Q
    s6Step343Front_checked s6Step343Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step343Complete_owned s6Step343Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step343EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 877 s6Step343CompleteOut.fv.second (s6Step343CompleteOut.fv.payload[2]?.getD s6Step343CompleteOut.fv.sign) (s6Step343CompleteOut.fv.payload[3]?.getD s6Step343CompleteOut.fv.sign) (s6Step343CompleteOut.fv.payload[4]?.getD s6Step343CompleteOut.fv.sign) 817 60 s6Step343EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep343Arena : Arena := s6Step343EntryFBefore
def s6PrivateStep343Bank : WindowBank := s6Step343FrontBank
def s6PrivateStep343Spec : HmrSourceWalkStepLog := ⟨101,188,⟨101,99,189,187⟩,60,.early s6Step343CompleteLog⟩
def s6PrivateStep343Plan : HmrSourceStepPlan := .early s6Step343CompletePlan
theorem s6PrivateStep343_source : s6PrivateStep343Spec=s6ObservedLogs336[7] := rfl
theorem s6PrivateStep343_checked : compileHmrSourceStepLog s6PrivateStep343Arena s6PrivateStep343Bank
    s6PrivateStep343Spec.fgWidth s6PrivateStep343Spec.vWidth s6PrivateStep343Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 343 s6PrivateStep343Spec.need none s6PrivateStep343Spec.log=some s6PrivateStep343Plan := by
  change compileHmrSourceStepLog s6Step343EntryFBefore s6Step343FrontBank 101 188 ⟨101,99,189,187⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 343 60 none (.early s6Step343CompleteLog)=some (.early s6Step343CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 343<498)]
  rw [s6Step343Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
