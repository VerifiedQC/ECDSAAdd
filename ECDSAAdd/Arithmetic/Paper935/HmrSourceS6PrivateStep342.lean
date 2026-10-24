import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep340
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

private def s6Step342CompleteMoves : List (Wire × Wire) := [(877,357)]

private def s6Step342EarlyControlLog : HmrEarlyControlLog := ⟨[877, 817, 805, 843, 881],[768],[915],[906, 792, 816, 819, 920, 842],[]⟩

private def s6Step342FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [843, 881], [], [860]],[[768], [805], [817], [812]],[[], [], [], []]⟩,[903],[802],[915],[906],[792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[915, 906, 792, 816]⟩

private def s6Step342CompleteLog : HmrEarlyStepLog := ⟨s6Step342FrontLog,s6Step342CompleteMoves,s6Step342EarlyControlLog⟩

private def s6Step342ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356],795⟩

private def s6Step342ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812],776⟩

private def s6Step342ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99],777⟩

private def s6Step342ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860],775⟩

private def s6Step342FrontOut : WindowBank := ⟨s6Step342ExitFOut,s6Step342ExitGOut,s6Step342ExitFvOut,s6Step342ExitGvOut⟩

private def s6Step342CompleteOut : WindowBank := s6Step342FrontOut.repacked s6Step342CompleteMoves

private def s6Step342EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step342EarlyControlPositiveArena,[768],s6Step342EarlyControlEqualityArena,[915],⟨⟨903,false⟩,[⟨⟨768,false⟩,915⟩]⟩⟩

private def s6Step342EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,877⟩,⟨⟨772,false⟩,817⟩,⟨⟨771,false⟩,805⟩,⟨⟨770,false⟩,843⟩,⟨⟨769,false⟩,881⟩]⟩

private def s6Step342EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step342EarlyControlZeroArena,s6Step342EarlyControlZeroPlan,s6Step342EarlyControlClassPlan,s6Step342EarlyControlFlagArena,s6Step342EarlyControlFittedArena,s6Step342EarlyControlHistoryArena,s6Step342EarlyControlSigmaArena,s6Step342EarlyControlOutputArena,s6Step342EarlyControlLog⟩

private def s6Step342CounterWork : List Wire := [915, 906, 792, 816]

private theorem s6Step342Counter_bounded : s6Step342CounterWork.toFinset⊆arenaWires := by norm_num [s6Step342CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step342HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342CounterDuring : Arena := ⟨s6Step342HeadFvAfter.live∪s6Step342CounterWork.toFinset,Finset.union_subset s6Step342HeadFvAfter.bounded s6Step342Counter_bounded⟩

private def s6Step342EntryFFresh : List Wire := []

private def s6Step342EntryFvFresh : List Wire := []

private def s6Step342EntryGFresh : List Wire := [843, 881]

private def s6Step342EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342EntryGvFresh : List Wire := [860]

private def s6Step342ExitFExtra : List Wire := [357, 805]

private def s6Step342ExitGExtra : List Wire := [843, 881, 768]

private def s6Step342ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<357) ∨ (358≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342ExitGvExtra : List Wire := [817]

private def s6Step342Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342Add0Work : List Wire := [792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step342Add0_bounded : s6Step342Add0Work.toFinset⊆arenaWires := by
  have h : s6Step342Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step342Add0During : Arena := ⟨s6Step342Add0Arena.live∪s6Step342Add0Work.toFinset,Finset.union_subset s6Step342Add0Arena.bounded s6Step342Add0_bounded⟩

private def s6Step342Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342Add1Work : List Wire := [792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step342Add1_bounded : s6Step342Add1Work.toFinset⊆arenaWires := by
  have h : s6Step342Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step342Add1During : Arena := ⟨s6Step342Add1Arena.live∪s6Step342Add1Work.toFinset,Finset.union_subset s6Step342Add1Arena.bounded s6Step342Add1_bounded⟩

private def s6Step342F4FlagArena : Arena := ⟨s6Step342HeadFvAfter.live∪{915},Finset.union_subset s6Step342HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step342F4Plan : HmrHybridF4Plan := ⟨s6Step342F4FlagArena,[915],s6Step342Add0Arena,[906],s6Step342Add0During,s6Step342Add0Work,s6Step342Add1During,s6Step342Add1Work⟩

private def s6Step342HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 805],795⟩

private def s6Step342HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812],776⟩

private def s6Step342HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 843, 881, 768],777⟩

private def s6Step342HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 817],775⟩

private def s6Step342FrontHead : WindowBank := ⟨s6Step342HeadFOut,s6Step342HeadGOut,s6Step342HeadFvOut,s6Step342HeadGvOut⟩

private def s6Step342EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩

private def s6Step342EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865],776⟩

private def s6Step342EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 843, 881],777⟩

private def s6Step342EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860],775⟩

private def s6Step342FrontPair : WindowBank := ⟨s6Step342EntryFOut,s6Step342EntryGOut,s6Step342EntryFvOut,s6Step342EntryGvOut⟩

private def s6Step342FrontSigmaArena : Arena := ⟨s6Step342EntryGvAfter.live∪{903},Finset.union_subset s6Step342EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step342HeadFFresh : List Wire := [805]

private def s6Step342HeadFvFresh : List Wire := [812]

private def s6Step342HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342HeadGFresh : List Wire := [768]

private def s6Step342HeadGvFresh : List Wire := [817]

private def s6Step342FrontPlan : HmrSourceFront := ⟨s6Step342EntryGvAfter,s6Step342FrontPair,(growRow 795 s6Step342EntryFFresh ++ (growRow 777 s6Step342EntryGFresh ++ (growRow 776 s6Step342EntryFvFresh ++ (growRow 775 s6Step342EntryGvFresh ++ [])))),s6Step342FrontSigmaArena,[903],s6Step342HeadGBefore,[802],
  s6Step342HeadFvAfter,s6Step342FrontHead,(growRow 777 s6Step342HeadGFresh ++ (growRow 795 s6Step342HeadFFresh ++ (growRow 775 s6Step342HeadGvFresh ++ (growRow 776 s6Step342HeadFvFresh ++ [])))),s6Step342F4Plan,s6Step342CounterDuring,s6Step342CounterWork,s6Step342ExitGvAfter,s6Step342FrontOut,(shrinkRow 777 s6Step342ExitGExtra ++ (shrinkRow 795 s6Step342ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step342ExitGvExtra ++ []))))⟩

private def s6Step342CompletePlan : HmrEarlyStepPlan := ⟨s6Step342FrontPlan,s6Step342EarlyControlArena,s6Step342EarlyControlPlan,s6Step342CompleteMoves⟩

private theorem s6Step342Complete_apart : List.Disjoint (s6Step342CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [903, 802, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step342CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[903, 802, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step342Complete_owned : (s6Step342CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step342EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step342EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step342CompleteMoveArena : Arena := ⟨s6Step342ExitGvAfter.live∪{357},Finset.union_subset s6Step342ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step342Complete_repack : s6Step342ExitGvAfter.checkRepack s6Step342CompleteMoves=some s6Step342EarlyControlArena := by
  have owned : 877∈s6Step342ExitGvAfter.live := by norm_num [s6Step342ExitGvAfter,arenaWires]
  have reserve : s6Step342ExitGvAfter.reserve {357}=some s6Step342CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step342ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step342CompleteMoveArena.retireSet {877}=s6Step342EarlyControlArena := by
    unfold Arena.retireSet s6Step342EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step342CompleteMoveArena,s6Step342ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step342CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step342CompleteMoveArena.retireSet {877}).checkRepack []=some s6Step342EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step342EarlyControl_branchOwned : ([802] : List Wire).toFinset⊆s6Step342EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step342EarlyControlSigmaArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342EarlyControl_branch : compileHmrBranchRetirement s6Step342EarlyControlSigmaArena 802=some s6Step342EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step342EarlyControl_branchOwned
  · ext q
    simp [s6Step342EarlyControlOutputArena,s6Step342EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step342EarlyControl_classEqualityBorrow : s6Step342EarlyControlPositiveArena.checkBorrow (([903, 768] : List Wire).length-1) s6Step342EarlyControlLog.classWork=some s6Step342EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step342EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step342EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step342EarlyControlEqualityArena,s6Step342EarlyControlPositiveArena,s6Step342EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step342EarlyControl_classEqualityOwned : ([903, 768] : List Wire).toFinset⊆s6Step342EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step342EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342EarlyControl_classEquality : compileHmrEqualityLog s6Step342EarlyControlPositiveArena [903, 768] 0 s6Step342EarlyControlLog.classWork=some (s6Step342EarlyControlEqualityArena,s6Step342EarlyControlLog.classWork,s6Step342EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step342EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step342EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step342EarlyControl_classOwned : ([769, 881, 903] : List Wire).toFinset⊆s6Step342EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step342EarlyControlZeroArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342EarlyControl_positiveBorrow : s6Step342EarlyControlZeroArena.checkBorrow (1) s6Step342EarlyControlLog.positiveWork=some s6Step342EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step342EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step342EarlyControlZeroArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step342EarlyControlPositiveArena,s6Step342EarlyControlZeroArena,s6Step342EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step342EarlyControl_class : compileHmrSourceClassLog s6Step342EarlyControlZeroArena false 769 s6Step342EarlyControlZeroPlan.top 0 903 s6Step342EarlyControlLog.positiveWork s6Step342EarlyControlLog.classWork=some s6Step342EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step342EarlyControlClassPlan s6Step342EarlyControlZeroArena false 769 s6Step342EarlyControlZeroPlan.top 0 903
  constructor
  · decide +kernel
  · exact s6Step342EarlyControl_classOwned
  · exact s6Step342EarlyControl_positiveBorrow
  · exact s6Step342EarlyControl_classEquality

private theorem s6Step342EarlyControl_entryRecordOwned : ([802, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step342EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step342EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342EarlyControl_entrySigmaOwned : ([903, 254] : List Wire).toFinset⊆s6Step342EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step342EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342EarlyControl_fitBorrow : s6Step342EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step342EarlyControlLog.recordFresh=some s6Step342EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step342EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step342EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step342EarlyControlFittedArena,s6Step342EarlyControlFlagArena,s6Step342EarlyControlLog,arenaWires]

private theorem s6Step342EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step342EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step342EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342EarlyControl_fit : compileHmrRecordGrowLog s6Step342EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step342EarlyControlLog.recordFresh=some s6Step342EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step342EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step342EarlyControl_fitBorrow

private theorem s6Step342EarlyControl_flagsBorrow : s6Step342EarlyControlEqualityArena.checkBorrow (6) s6Step342EarlyControlLog.flagWork=some s6Step342EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step342EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step342EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step342EarlyControlFlagArena,s6Step342EarlyControlEqualityArena,s6Step342EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step342EarlyControl_flagsOwned : ([915, 253, 252, 251] : List Wire).toFinset⊆s6Step342EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step342EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342EarlyControl_flags : compileHmrFlagsLog s6Step342EarlyControlClassPlan.equalityArena s6Step342EarlyControlClassPlan.equality.top 253 252 251 s6Step342EarlyControlLog.flagWork=some s6Step342EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step342EarlyControl_flagsOwned⟩
  · exact s6Step342EarlyControl_flagsBorrow

private theorem s6Step342EarlyControl_historyBorrow : s6Step342EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step342EarlyControlLog.recordFresh=some s6Step342EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step342EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step342EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step342EarlyControlHistoryArena,s6Step342EarlyControlArena,s6Step342EarlyControlLog,arenaWires]

private theorem s6Step342EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step342EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step342EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342EarlyControl_history : compileHmrRecordGrowLog s6Step342EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step342EarlyControlLog.recordFresh=some s6Step342EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step342EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step342EarlyControl_historyBorrow

private theorem s6Step342EarlyControl_sigmaOwned : ([254, 903] : List Wire).toFinset⊆s6Step342EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step342EarlyControlHistoryArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342EarlyControl_sigmaReleaseOwned : ([903] : List Wire).toFinset⊆s6Step342EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step342EarlyControlHistoryArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342EarlyControl_sigmaRelease : s6Step342EarlyControlHistoryArena.release {903} (fun _ => false)=some s6Step342EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step342EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step342EarlyControlSigmaArena,s6Step342EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step342EarlyControl_sigma : compileHmrSigmaDropLog s6Step342EarlyControlHistoryArena false 0 0 254 903 []=some s6Step342EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step342EarlyControl_sigmaOwned⟩
  · exact s6Step342EarlyControl_sigmaRelease

private theorem s6Step342EarlyControl_zeroBorrow : s6Step342EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step342EarlyControlLog.zeroWork=some s6Step342EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step342EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step342EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step342EarlyControlZeroArena,s6Step342EarlyControlArena,s6Step342EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step342EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step342EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step342EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342EarlyControl_zero : compileHmrEqualityLog s6Step342EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step342EarlyControlLog.zeroWork=some (s6Step342EarlyControlZeroArena,s6Step342EarlyControlLog.zeroWork,s6Step342EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step342EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step342EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step342EarlyControl_logged : s6Step342EarlyControlPlan.Logged s6Step342EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 903 254 253 252 251 802 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step342EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step342EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step342EarlyControl_zero
  · exact s6Step342EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step342EarlyControl_flags
  · exact s6Step342EarlyControl_fit
  · exact s6Step342EarlyControl_history
  · exact s6Step342EarlyControl_sigma
  · exact s6Step342EarlyControl_branch

private theorem s6Step342EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step342EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 903 254 253 252 251 802 60 s6Step342EarlyControlLog=some s6Step342EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step342EarlyControlPlan s6Step342EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 903 254 253 252 251 802 60 s6Step342EarlyControl_logged

private def s6Step342EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩

private def s6Step342EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865],776⟩

private def s6Step342EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99],777⟩

private def s6Step342EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907],775⟩

private def s6Step342FrontBank : WindowBank := ⟨s6Step342EntryFRow,s6Step342EntryGRow,s6Step342EntryFvRow,s6Step342EntryGvRow⟩

private def s6Step342Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 805, 795]

private def s6Step342Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 843, 881, 768, 777]

private def s6Step342Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 776]

private def s6Step342Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 817, 775]

private theorem s6Step342Counter_apart : Disjoint s6Step342HeadFvAfter.live s6Step342CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step342HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342Counter_borrowed : s6Step342HeadFvAfter.checkBorrow 4 s6Step342CounterWork=some s6Step342CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step342HeadFvAfter s6Step342CounterDuring s6Step342CounterWork.toFinset s6Step342Counter_bounded s6Step342Counter_apart rfl

private theorem s6Step342Counter_owned : (903::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step342HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step342HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342Counter_checked : compileHmrCounterStepLog s6Step342HeadFvAfter true 903 [774, 773, 772, 771, 770, 769] s6Step342CounterWork=some s6Step342CounterDuring := by
  have owned : ∀q∈903::[774, 773, 772, 771, 770, 769],q∈s6Step342HeadFvAfter.live := fun q hq => s6Step342Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step342Counter_borrowed

private def s6Step342EntryFAfter : Arena := s6Step342EntryFBefore

private theorem s6Step342EntryBank_incomingDistinct : ([s6Step342EntryFRow,s6Step342EntryGRow,s6Step342EntryFvRow,s6Step342EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342EntryF_Incoming : rowsOwned s6Step342EntryFBefore [s6Step342EntryFRow,s6Step342EntryGRow,s6Step342EntryFvRow,s6Step342EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step342EntryFRow,s6Step342EntryGRow,s6Step342EntryFvRow,s6Step342EntryGvRow] 0 s6Step342EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step342EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step342EntryBank_outgoingOwned : rowsOwned s6Step342EntryGvAfter [s6Step342EntryFOut,s6Step342EntryGOut,s6Step342EntryFvOut,s6Step342EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step342EntryGvAfter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step342EntryF_Outgoing : rowsOwned s6Step342EntryGvAfter [s6Step342EntryFOut,s6Step342EntryGOut,s6Step342EntryFvOut,s6Step342EntryGvOut] :=
  hmrRows_owned_drop s6Step342EntryGvAfter [s6Step342EntryFOut,s6Step342EntryGOut,s6Step342EntryFvOut,s6Step342EntryGvOut] 0 s6Step342EntryBank_outgoingOwned

private theorem s6Step342EntryF_distinct : (s6Step342EntryFRow.sign::s6Step342EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342EntryF_owned : (s6Step342EntryFRow.sign::s6Step342EntryFRow.payload).toFinset⊆s6Step342EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step342EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342EntryF_reserved : s6Step342EntryFBefore.reserve s6Step342EntryFFresh.toFinset=some s6Step342EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step342EntryFFresh,arenaWires]
  · norm_num [s6Step342EntryFBefore,s6Step342EntryFFresh,arenaWires]
  · simp only [s6Step342EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step342EntryF_checked : planRowResizeLog s6Step342EntryFBefore s6Step342EntryFRow 102 s6Step342EntryFFresh=
    some (s6Step342EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩,growRow 795 s6Step342EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step342EntryFBefore s6Step342EntryFAfter s6Step342EntryFRow 102 s6Step342EntryFFresh
    s6Step342EntryF_distinct s6Step342EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step342EntryF_reserved
  have rowEq : WindowRow.mk (s6Step342EntryFRow.payload++s6Step342EntryFFresh) s6Step342EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step342EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342EntryFvAfter : Arena := s6Step342EntryGAfter

private def s6Step342EntryFvBefore : Arena := s6Step342EntryGAfter

private theorem s6Step342EntryFv_Incoming : rowsOwned s6Step342EntryFvBefore [s6Step342EntryFvRow,s6Step342EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step342EntryFRow,s6Step342EntryGRow,s6Step342EntryFvRow,s6Step342EntryGvRow] 2 s6Step342EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step342EntryFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step342EntryFv_Outgoing : rowsOwned s6Step342EntryGvAfter [s6Step342EntryFvOut,s6Step342EntryGvOut] :=
  hmrRows_owned_drop s6Step342EntryGvAfter [s6Step342EntryFOut,s6Step342EntryGOut,s6Step342EntryFvOut,s6Step342EntryGvOut] 2 s6Step342EntryBank_outgoingOwned

private theorem s6Step342EntryFv_distinct : (s6Step342EntryFvRow.sign::s6Step342EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342EntryFv_owned : (s6Step342EntryFvRow.sign::s6Step342EntryFvRow.payload).toFinset⊆s6Step342EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step342EntryFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342EntryFv_reserved : s6Step342EntryFvBefore.reserve s6Step342EntryFvFresh.toFinset=some s6Step342EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step342EntryFvFresh,arenaWires]
  · norm_num [s6Step342EntryFvBefore,s6Step342EntryGAfter,s6Step342EntryFvFresh,arenaWires]
  · simp only [s6Step342EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step342EntryFv_checked : planRowResizeLog s6Step342EntryFvBefore s6Step342EntryFvRow 187 s6Step342EntryFvFresh=
    some (s6Step342EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865],776⟩,growRow 776 s6Step342EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step342EntryFvBefore s6Step342EntryFvAfter s6Step342EntryFvRow 187 s6Step342EntryFvFresh
    s6Step342EntryFv_distinct s6Step342EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step342EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step342EntryFvRow.payload++s6Step342EntryFvFresh) s6Step342EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step342EntryGBefore : Arena := s6Step342EntryFBefore

private theorem s6Step342EntryG_Incoming : rowsOwned s6Step342EntryGBefore [s6Step342EntryGRow,s6Step342EntryFvRow,s6Step342EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step342EntryFRow,s6Step342EntryGRow,s6Step342EntryFvRow,s6Step342EntryGvRow] 1 s6Step342EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step342EntryGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step342EntryG_Outgoing : rowsOwned s6Step342EntryGvAfter [s6Step342EntryGOut,s6Step342EntryFvOut,s6Step342EntryGvOut] :=
  hmrRows_owned_drop s6Step342EntryGvAfter [s6Step342EntryFOut,s6Step342EntryGOut,s6Step342EntryFvOut,s6Step342EntryGvOut] 1 s6Step342EntryBank_outgoingOwned

private theorem s6Step342EntryG_distinct : (s6Step342EntryGRow.sign::s6Step342EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342EntryG_owned : (s6Step342EntryGRow.sign::s6Step342EntryGRow.payload).toFinset⊆s6Step342EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step342EntryGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342EntryG_reserved : s6Step342EntryGBefore.reserve s6Step342EntryGFresh.toFinset=some s6Step342EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step342EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step342EntryGBefore,s6Step342EntryFBefore,s6Step342EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step342EntryGAfter,s6Step342EntryGBefore,s6Step342EntryFBefore,s6Step342EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step342EntryG_checked : planRowResizeLog s6Step342EntryGBefore s6Step342EntryGRow 102 s6Step342EntryGFresh=
    some (s6Step342EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 843, 881],777⟩,growRow 777 s6Step342EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step342EntryGBefore s6Step342EntryGAfter s6Step342EntryGRow 102 s6Step342EntryGFresh
    s6Step342EntryG_distinct s6Step342EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step342EntryG_reserved
  have rowEq : WindowRow.mk (s6Step342EntryGRow.payload++s6Step342EntryGFresh) s6Step342EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 843, 881],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step342EntryGvBefore : Arena := s6Step342EntryGAfter

private theorem s6Step342EntryGv_Incoming : rowsOwned s6Step342EntryGvBefore [s6Step342EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step342EntryFRow,s6Step342EntryGRow,s6Step342EntryFvRow,s6Step342EntryGvRow] 3 s6Step342EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step342EntryGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step342EntryGv_Outgoing : rowsOwned s6Step342EntryGvAfter [s6Step342EntryGvOut] :=
  hmrRows_owned_drop s6Step342EntryGvAfter [s6Step342EntryFOut,s6Step342EntryGOut,s6Step342EntryFvOut,s6Step342EntryGvOut] 3 s6Step342EntryBank_outgoingOwned

private theorem s6Step342EntryGv_distinct : (s6Step342EntryGvRow.sign::s6Step342EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342EntryGv_owned : (s6Step342EntryGvRow.sign::s6Step342EntryGvRow.payload).toFinset⊆s6Step342EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step342EntryGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342EntryGv_reserved : s6Step342EntryGvBefore.reserve s6Step342EntryGvFresh.toFinset=some s6Step342EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step342EntryGvFresh,arenaWires]
  · norm_num [s6Step342EntryGvBefore,s6Step342EntryGAfter,s6Step342EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step342EntryGvAfter,s6Step342EntryGvBefore,s6Step342EntryGAfter,s6Step342EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step342EntryGv_checked : planRowResizeLog s6Step342EntryGvBefore s6Step342EntryGvRow 187 s6Step342EntryGvFresh=
    some (s6Step342EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860],775⟩,growRow 775 s6Step342EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step342EntryGvBefore s6Step342EntryGvAfter s6Step342EntryGvRow 187 s6Step342EntryGvFresh
    s6Step342EntryGv_distinct s6Step342EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step342EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step342EntryGvRow.payload++s6Step342EntryGvFresh) s6Step342EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step342EntryBank_rows : planWindowRowsLog s6Step342EntryFBefore [(s6Step342EntryFRow,102),(s6Step342EntryGRow,102),(s6Step342EntryFvRow,187),(s6Step342EntryGvRow,187)] [s6Step342EntryFFresh,s6Step342EntryGFresh,s6Step342EntryFvFresh,s6Step342EntryGvFresh]=
    some (s6Step342EntryGvAfter,[s6Step342EntryFOut,s6Step342EntryGOut,s6Step342EntryFvOut,s6Step342EntryGvOut],(growRow 795 s6Step342EntryFFresh ++ (growRow 777 s6Step342EntryGFresh ++ (growRow 776 s6Step342EntryFvFresh ++ (growRow 775 s6Step342EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step342EntryGvAfter [] []=some (s6Step342EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step342EntryGvBefore s6Step342EntryGvAfter s6Step342EntryGvAfter
    s6Step342EntryGvRow s6Step342EntryGvOut 187 s6Step342EntryGvFresh [] [] []
    (growRow 775 s6Step342EntryGvFresh) ([]) s6Step342EntryGv_Incoming s6Step342EntryGv_checked h4 s6Step342EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step342EntryFvBefore s6Step342EntryFvAfter s6Step342EntryGvAfter
    s6Step342EntryFvRow s6Step342EntryFvOut 187 s6Step342EntryFvFresh [(s6Step342EntryGvRow,187)] [s6Step342EntryGvFresh] [s6Step342EntryGvOut]
    (growRow 776 s6Step342EntryFvFresh) ((growRow 775 s6Step342EntryGvFresh ++ [])) s6Step342EntryFv_Incoming s6Step342EntryFv_checked h3 s6Step342EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step342EntryGBefore s6Step342EntryGAfter s6Step342EntryGvAfter
    s6Step342EntryGRow s6Step342EntryGOut 102 s6Step342EntryGFresh [(s6Step342EntryFvRow,187),(s6Step342EntryGvRow,187)] [s6Step342EntryFvFresh,s6Step342EntryGvFresh] [s6Step342EntryFvOut,s6Step342EntryGvOut]
    (growRow 777 s6Step342EntryGFresh) ((growRow 776 s6Step342EntryFvFresh ++ (growRow 775 s6Step342EntryGvFresh ++ []))) s6Step342EntryG_Incoming s6Step342EntryG_checked h2 s6Step342EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step342EntryFBefore s6Step342EntryFAfter s6Step342EntryGvAfter
    s6Step342EntryFRow s6Step342EntryFOut 102 s6Step342EntryFFresh [(s6Step342EntryGRow,102),(s6Step342EntryFvRow,187),(s6Step342EntryGvRow,187)] [s6Step342EntryGFresh,s6Step342EntryFvFresh,s6Step342EntryGvFresh] [s6Step342EntryGOut,s6Step342EntryFvOut,s6Step342EntryGvOut]
    (growRow 795 s6Step342EntryFFresh) ((growRow 777 s6Step342EntryGFresh ++ (growRow 776 s6Step342EntryFvFresh ++ (growRow 775 s6Step342EntryGvFresh ++ [])))) s6Step342EntryF_Incoming s6Step342EntryF_checked h1 s6Step342EntryF_Outgoing
  exact h0

private theorem s6Step342EntryBank_checked : compileHmrBankResizeLog .entry s6Step342EntryFBefore ⟨s6Step342EntryFRow,s6Step342EntryGRow,s6Step342EntryFvRow,s6Step342EntryGvRow⟩ ⟨102,102,187,187⟩ [s6Step342EntryFFresh,s6Step342EntryGFresh,s6Step342EntryFvFresh,s6Step342EntryGvFresh]=
    some (s6Step342EntryGvAfter,⟨s6Step342EntryFOut,s6Step342EntryGOut,s6Step342EntryFvOut,s6Step342EntryGvOut⟩,(growRow 795 s6Step342EntryFFresh ++ (growRow 777 s6Step342EntryGFresh ++ (growRow 776 s6Step342EntryFvFresh ++ (growRow 775 s6Step342EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step342EntryBank_rows]
  rfl

private def s6Step342ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<357) ∨ (358≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342ExitFBefore : Arena := s6Step342ExitGAfter

private def s6Step342ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 805],795⟩

private def s6Step342ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812],776⟩

private def s6Step342ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 843, 881, 768],777⟩

private def s6Step342ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 817],775⟩

private theorem s6Step342ExitBank_incomingDistinct : ([s6Step342ExitGRow,s6Step342ExitFRow,s6Step342ExitFvRow,s6Step342ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342ExitF_Incoming : rowsOwned s6Step342ExitFBefore [s6Step342ExitFRow,s6Step342ExitFvRow,s6Step342ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step342ExitGRow,s6Step342ExitFRow,s6Step342ExitFvRow,s6Step342ExitGvRow] 1 s6Step342ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step342ExitFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step342ExitBank_outgoingOwned : rowsOwned s6Step342ExitGvAfter [s6Step342ExitGOut,s6Step342ExitFOut,s6Step342ExitFvOut,s6Step342ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step342ExitGvAfter (fun q => (0≤q ∧ q<357) ∨ (358≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step342ExitF_Outgoing : rowsOwned s6Step342ExitGvAfter [s6Step342ExitFOut,s6Step342ExitFvOut,s6Step342ExitGvOut] :=
  hmrRows_owned_drop s6Step342ExitGvAfter [s6Step342ExitGOut,s6Step342ExitFOut,s6Step342ExitFvOut,s6Step342ExitGvOut] 1 s6Step342ExitBank_outgoingOwned

private theorem s6Step342ExitF_distinct : (s6Step342ExitFRow.sign::s6Step342ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342ExitF_owned : (s6Step342ExitFRow.sign::s6Step342ExitFRow.payload).toFinset⊆s6Step342ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step342ExitFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342ExitF_retired : s6Step342ExitFBefore.retireSet s6Step342ExitFExtra.toFinset=s6Step342ExitFAfter := by
  unfold Arena.retireSet s6Step342ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step342ExitFBefore,s6Step342ExitGAfter,s6Step342ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step342ExitF_checked : planRowResizeLog s6Step342ExitFBefore s6Step342ExitFRow 101 []=
    some (s6Step342ExitFAfter,s6Step342ExitFOut,shrinkRow 795 s6Step342ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step342ExitFBefore s6Step342ExitFRow 101 s6Step342ExitF_distinct s6Step342ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step342ExitFRow.payload.take 101) s6Step342ExitFRow.sign=s6Step342ExitFOut := by decide +kernel
  have hi : s6Step342ExitFRow.payload.drop 101=s6Step342ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step342ExitF_retired] at result
  exact result

private def s6Step342ExitFvAfter : Arena := s6Step342ExitFAfter

private def s6Step342ExitFvBefore : Arena := s6Step342ExitFAfter

private theorem s6Step342ExitFv_Incoming : rowsOwned s6Step342ExitFvBefore [s6Step342ExitFvRow,s6Step342ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step342ExitGRow,s6Step342ExitFRow,s6Step342ExitFvRow,s6Step342ExitGvRow] 2 s6Step342ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step342ExitFvBefore (fun q => (0≤q ∧ q<357) ∨ (358≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step342ExitFv_Outgoing : rowsOwned s6Step342ExitGvAfter [s6Step342ExitFvOut,s6Step342ExitGvOut] :=
  hmrRows_owned_drop s6Step342ExitGvAfter [s6Step342ExitGOut,s6Step342ExitFOut,s6Step342ExitFvOut,s6Step342ExitGvOut] 2 s6Step342ExitBank_outgoingOwned

private theorem s6Step342ExitFv_distinct : (s6Step342ExitFvRow.sign::s6Step342ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342ExitFv_owned : (s6Step342ExitFvRow.sign::s6Step342ExitFvRow.payload).toFinset⊆s6Step342ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step342ExitFvBefore (fun q => (0≤q ∧ q<357) ∨ (358≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342ExitFv_reserved : s6Step342ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step342ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step342ExitFv_checked : planRowResizeLog s6Step342ExitFvBefore s6Step342ExitFvRow 188 []=
    some (s6Step342ExitFvAfter,s6Step342ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step342ExitFvBefore s6Step342ExitFvAfter s6Step342ExitFvRow 188 []
    s6Step342ExitFv_distinct s6Step342ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step342ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step342ExitFvRow.payload++[]) s6Step342ExitFvRow.sign=s6Step342ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step342ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step342ExitG_Incoming : rowsOwned s6Step342ExitGBefore [s6Step342ExitGRow,s6Step342ExitFRow,s6Step342ExitFvRow,s6Step342ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step342ExitGRow,s6Step342ExitFRow,s6Step342ExitFvRow,s6Step342ExitGvRow] 0 s6Step342ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step342ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step342ExitG_Outgoing : rowsOwned s6Step342ExitGvAfter [s6Step342ExitGOut,s6Step342ExitFOut,s6Step342ExitFvOut,s6Step342ExitGvOut] :=
  hmrRows_owned_drop s6Step342ExitGvAfter [s6Step342ExitGOut,s6Step342ExitFOut,s6Step342ExitFvOut,s6Step342ExitGvOut] 0 s6Step342ExitBank_outgoingOwned

private theorem s6Step342ExitG_distinct : (s6Step342ExitGRow.sign::s6Step342ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342ExitG_owned : (s6Step342ExitGRow.sign::s6Step342ExitGRow.payload).toFinset⊆s6Step342ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step342ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342ExitG_retired : s6Step342ExitGBefore.retireSet s6Step342ExitGExtra.toFinset=s6Step342ExitGAfter := by
  unfold Arena.retireSet s6Step342ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step342ExitGBefore,s6Step342ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step342ExitG_checked : planRowResizeLog s6Step342ExitGBefore s6Step342ExitGRow 100 []=
    some (s6Step342ExitGAfter,s6Step342ExitGOut,shrinkRow 777 s6Step342ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step342ExitGBefore s6Step342ExitGRow 100 s6Step342ExitG_distinct s6Step342ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step342ExitGRow.payload.take 100) s6Step342ExitGRow.sign=s6Step342ExitGOut := by decide +kernel
  have hi : s6Step342ExitGRow.payload.drop 100=s6Step342ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step342ExitG_retired] at result
  exact result

private def s6Step342ExitGvBefore : Arena := s6Step342ExitFAfter

private theorem s6Step342ExitGv_Incoming : rowsOwned s6Step342ExitGvBefore [s6Step342ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step342ExitGRow,s6Step342ExitFRow,s6Step342ExitFvRow,s6Step342ExitGvRow] 3 s6Step342ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step342ExitGvBefore (fun q => (0≤q ∧ q<357) ∨ (358≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step342ExitGv_Outgoing : rowsOwned s6Step342ExitGvAfter [s6Step342ExitGvOut] :=
  hmrRows_owned_drop s6Step342ExitGvAfter [s6Step342ExitGOut,s6Step342ExitFOut,s6Step342ExitFvOut,s6Step342ExitGvOut] 3 s6Step342ExitBank_outgoingOwned

private theorem s6Step342ExitGv_distinct : (s6Step342ExitGvRow.sign::s6Step342ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342ExitGv_owned : (s6Step342ExitGvRow.sign::s6Step342ExitGvRow.payload).toFinset⊆s6Step342ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step342ExitGvBefore (fun q => (0≤q ∧ q<357) ∨ (358≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342ExitGv_retired : s6Step342ExitGvBefore.retireSet s6Step342ExitGvExtra.toFinset=s6Step342ExitGvAfter := by
  unfold Arena.retireSet s6Step342ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step342ExitGvBefore,s6Step342ExitFAfter,s6Step342ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step342ExitGv_checked : planRowResizeLog s6Step342ExitGvBefore s6Step342ExitGvRow 187 []=
    some (s6Step342ExitGvAfter,s6Step342ExitGvOut,shrinkRow 775 s6Step342ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step342ExitGvBefore s6Step342ExitGvRow 187 s6Step342ExitGv_distinct s6Step342ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step342ExitGvRow.payload.take 187) s6Step342ExitGvRow.sign=s6Step342ExitGvOut := by decide +kernel
  have hi : s6Step342ExitGvRow.payload.drop 187=s6Step342ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step342ExitGv_retired] at result
  exact result

private theorem s6Step342ExitBank_rows : planWindowRowsLog s6Step342ExitGBefore [(s6Step342ExitGRow,100),(s6Step342ExitFRow,101),(s6Step342ExitFvRow,188),(s6Step342ExitGvRow,187)] [[],[],[],[]]=
    some (s6Step342ExitGvAfter,[s6Step342ExitGOut,s6Step342ExitFOut,s6Step342ExitFvOut,s6Step342ExitGvOut],(shrinkRow 777 s6Step342ExitGExtra ++ (shrinkRow 795 s6Step342ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step342ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step342ExitGvAfter [] []=some (s6Step342ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step342ExitGvBefore s6Step342ExitGvAfter s6Step342ExitGvAfter
    s6Step342ExitGvRow s6Step342ExitGvOut 187 [] [] [] []
    (shrinkRow 775 s6Step342ExitGvExtra) ([]) s6Step342ExitGv_Incoming s6Step342ExitGv_checked h4 s6Step342ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step342ExitFvBefore s6Step342ExitFvAfter s6Step342ExitGvAfter
    s6Step342ExitFvRow s6Step342ExitFvOut 188 [] [(s6Step342ExitGvRow,187)] [[]] [s6Step342ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step342ExitGvExtra ++ [])) s6Step342ExitFv_Incoming s6Step342ExitFv_checked h3 s6Step342ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step342ExitFBefore s6Step342ExitFAfter s6Step342ExitGvAfter
    s6Step342ExitFRow s6Step342ExitFOut 101 [] [(s6Step342ExitFvRow,188),(s6Step342ExitGvRow,187)] [[],[]] [s6Step342ExitFvOut,s6Step342ExitGvOut]
    (shrinkRow 795 s6Step342ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step342ExitGvExtra ++ []))) s6Step342ExitF_Incoming s6Step342ExitF_checked h2 s6Step342ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step342ExitGBefore s6Step342ExitGAfter s6Step342ExitGvAfter
    s6Step342ExitGRow s6Step342ExitGOut 100 [] [(s6Step342ExitFRow,101),(s6Step342ExitFvRow,188),(s6Step342ExitGvRow,187)] [[],[],[]] [s6Step342ExitFOut,s6Step342ExitFvOut,s6Step342ExitGvOut]
    (shrinkRow 777 s6Step342ExitGExtra) ((shrinkRow 795 s6Step342ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step342ExitGvExtra ++ [])))) s6Step342ExitG_Incoming s6Step342ExitG_checked h1 s6Step342ExitG_Outgoing
  exact h0

private theorem s6Step342ExitBank_checked : compileHmrBankResizeLog .exit s6Step342ExitGBefore ⟨s6Step342ExitFRow,s6Step342ExitGRow,s6Step342ExitFvRow,s6Step342ExitGvRow⟩ ⟨101,100,188,187⟩ [[],[],[],[]]=
    some (s6Step342ExitGvAfter,⟨s6Step342ExitFOut,s6Step342ExitGOut,s6Step342ExitFvOut,s6Step342ExitGvOut⟩,(shrinkRow 777 s6Step342ExitGExtra ++ (shrinkRow 795 s6Step342ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step342ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step342ExitBank_rows]
  rfl

private theorem s6Step342Add0_apart : Disjoint s6Step342Add0Arena.live s6Step342Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step342Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342Add0_card : s6Step342Add0Arena.live.card=912 := by
  decide +kernel

private theorem s6Step342Add0_borrowed : s6Step342Add0Arena.checkBorrow (hmrHybridCount s6Step342Add0Arena s6Step342Add0B.length) s6Step342Add0Work=some s6Step342Add0During := by
  have len : s6Step342Add0Work.length=hmrHybridCount s6Step342Add0Arena s6Step342Add0B.length := by
    rw [hmrHybridCount,s6Step342Add0_card]
    decide +kernel
  have nd : s6Step342Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step342Add0Arena s6Step342Add0During s6Step342Add0Work.toFinset s6Step342Add0_bounded s6Step342Add0_apart rfl

private theorem s6Step342Add0_distinct : (915::802::906::(s6Step342Add0A++s6Step342Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342Add0_owned : (915::802::906::(s6Step342Add0A++s6Step342Add0B)).toFinset⊆s6Step342Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step342Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342Add0_checked : compileHmrHybridCinLog s6Step342Add0Arena 802 915 906 s6Step342Add0A s6Step342Add0B s6Step342Add0Work=some s6Step342Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step342Add0Arena s6Step342Add0During 802 915 906 s6Step342Add0A s6Step342Add0B s6Step342Add0Work
    (by decide +kernel) (by decide +kernel) s6Step342Add0_distinct
    (fun q hq => s6Step342Add0_owned (List.mem_toFinset.mpr hq)) s6Step342Add0_borrowed

private theorem s6Step342Add1_apart : Disjoint s6Step342Add1Arena.live s6Step342Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step342Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342Add1_card : s6Step342Add1Arena.live.card=912 := by
  decide +kernel

private theorem s6Step342Add1_borrowed : s6Step342Add1Arena.checkBorrow (hmrHybridCount s6Step342Add1Arena s6Step342Add1B.length) s6Step342Add1Work=some s6Step342Add1During := by
  have len : s6Step342Add1Work.length=hmrHybridCount s6Step342Add1Arena s6Step342Add1B.length := by
    rw [hmrHybridCount,s6Step342Add1_card]
    decide +kernel
  have nd : s6Step342Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step342Add1Arena s6Step342Add1During s6Step342Add1Work.toFinset s6Step342Add1_bounded s6Step342Add1_apart rfl

private theorem s6Step342Add1_distinct : (915::802::906::(s6Step342Add1A++s6Step342Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342Add1_owned : (915::802::906::(s6Step342Add1A++s6Step342Add1B)).toFinset⊆s6Step342Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step342Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342Add1_checked : compileHmrHybridCinLog s6Step342Add1Arena 802 915 906 s6Step342Add1A s6Step342Add1B s6Step342Add1Work=some s6Step342Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step342Add1Arena s6Step342Add1During 802 915 906 s6Step342Add1A s6Step342Add1B s6Step342Add1Work
    (by decide +kernel) (by decide +kernel) s6Step342Add1_distinct
    (fun q hq => s6Step342Add1_owned (List.mem_toFinset.mpr hq)) s6Step342Add1_borrowed

private theorem s6Step342F4_apart : Disjoint (s6Step342Add0A++s6Step342Add0B).toFinset (s6Step342Add1A++s6Step342Add1B).toFinset := by
  have nd : ((s6Step342Add0A++s6Step342Add0B)++(s6Step342Add1A++s6Step342Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step342F4_carry : s6Step342F4FlagArena.checkBorrow 1 [906]=some s6Step342Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step342F4FlagArena,s6Step342HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step342F4FlagArena,s6Step342HeadFvAfter,s6Step342Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step342F4_distinct : (903::802::915::906::((s6Step342Add0A++s6Step342Add1A)++(s6Step342Add0B++s6Step342Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342F4_flag : s6Step342HeadFvAfter.checkBorrow 1 [915]=some s6Step342F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step342HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step342F4_owned : (903::802::((s6Step342Add0A++s6Step342Add1A)++(s6Step342Add0B++s6Step342Add1B))).toFinset⊆s6Step342HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step342HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342F4_checked : compileHmrHybridF4Log s6Step342HeadFvAfter 903 802 s6Step342Add0A s6Step342Add0B s6Step342Add1A s6Step342Add1B [915] [906] s6Step342Add0Work s6Step342Add1Work=some s6Step342F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step342HeadFvAfter s6Step342F4FlagArena s6Step342Add0Arena s6Step342Add0During s6Step342Add1During 903 802
    s6Step342Add0A s6Step342Add0B s6Step342Add1A s6Step342Add1B [915] [906] s6Step342Add0Work s6Step342Add1Work
    (fun q hq => s6Step342F4_owned (List.mem_toFinset.mpr hq)) s6Step342F4_flag s6Step342F4_carry
    s6Step342F4_distinct s6Step342F4_apart s6Step342Add0_checked s6Step342Add1_checked

private theorem s6Step342Front_branch : s6Step342FrontSigmaArena.checkBorrow 1 [802]=some s6Step342HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step342FrontSigmaArena,s6Step342EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step342FrontSigmaArena,s6Step342EntryGvAfter,s6Step342HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step342Front_entry : HmrFrontEntryValid s6Step342EntryFBefore s6Step342FrontBank 102 187 ⟨101,100,188,187⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step342FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step342EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step342EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step342FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step342Front_sigma : s6Step342EntryGvAfter.checkBorrow 1 [903]=some s6Step342FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step342EntryGvAfter,arenaWires]
  · rfl

private def s6Step342HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342HeadFBefore : Arena := s6Step342HeadGAfter

private def s6Step342HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩

private def s6Step342HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865],776⟩

private def s6Step342HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 843, 881],777⟩

private def s6Step342HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860],775⟩

private theorem s6Step342HeadBank_incomingDistinct : ([s6Step342HeadGRow,s6Step342HeadFRow,s6Step342HeadGvRow,s6Step342HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342HeadF_Incoming : rowsOwned s6Step342HeadFBefore [s6Step342HeadFRow,s6Step342HeadGvRow,s6Step342HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step342HeadGRow,s6Step342HeadFRow,s6Step342HeadGvRow,s6Step342HeadFvRow] 1 s6Step342HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step342HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step342HeadBank_outgoingOwned : rowsOwned s6Step342HeadFvAfter [s6Step342HeadGOut,s6Step342HeadFOut,s6Step342HeadGvOut,s6Step342HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step342HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step342HeadF_Outgoing : rowsOwned s6Step342HeadFvAfter [s6Step342HeadFOut,s6Step342HeadGvOut,s6Step342HeadFvOut] :=
  hmrRows_owned_drop s6Step342HeadFvAfter [s6Step342HeadGOut,s6Step342HeadFOut,s6Step342HeadGvOut,s6Step342HeadFvOut] 1 s6Step342HeadBank_outgoingOwned

private theorem s6Step342HeadF_distinct : (s6Step342HeadFRow.sign::s6Step342HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342HeadF_owned : (s6Step342HeadFRow.sign::s6Step342HeadFRow.payload).toFinset⊆s6Step342HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step342HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342HeadF_reserved : s6Step342HeadFBefore.reserve s6Step342HeadFFresh.toFinset=some s6Step342HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step342HeadFFresh,arenaWires]
  · norm_num [s6Step342HeadFBefore,s6Step342HeadGAfter,s6Step342HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step342HeadFAfter,s6Step342HeadFBefore,s6Step342HeadGAfter,s6Step342HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step342HeadF_checked : planRowResizeLog s6Step342HeadFBefore s6Step342HeadFRow 103 s6Step342HeadFFresh=
    some (s6Step342HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 805],795⟩,growRow 795 s6Step342HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step342HeadFBefore s6Step342HeadFAfter s6Step342HeadFRow 103 s6Step342HeadFFresh
    s6Step342HeadF_distinct s6Step342HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step342HeadF_reserved
  have rowEq : WindowRow.mk (s6Step342HeadFRow.payload++s6Step342HeadFFresh) s6Step342HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 805],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step342HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step342HeadFvBefore : Arena := s6Step342HeadGvAfter

private theorem s6Step342HeadFv_Incoming : rowsOwned s6Step342HeadFvBefore [s6Step342HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step342HeadGRow,s6Step342HeadFRow,s6Step342HeadGvRow,s6Step342HeadFvRow] 3 s6Step342HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step342HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step342HeadFv_Outgoing : rowsOwned s6Step342HeadFvAfter [s6Step342HeadFvOut] :=
  hmrRows_owned_drop s6Step342HeadFvAfter [s6Step342HeadGOut,s6Step342HeadFOut,s6Step342HeadGvOut,s6Step342HeadFvOut] 3 s6Step342HeadBank_outgoingOwned

private theorem s6Step342HeadFv_distinct : (s6Step342HeadFvRow.sign::s6Step342HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342HeadFv_owned : (s6Step342HeadFvRow.sign::s6Step342HeadFvRow.payload).toFinset⊆s6Step342HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step342HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342HeadFv_reserved : s6Step342HeadFvBefore.reserve s6Step342HeadFvFresh.toFinset=some s6Step342HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step342HeadFvFresh,arenaWires]
  · norm_num [s6Step342HeadFvBefore,s6Step342HeadGvAfter,s6Step342HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step342HeadFvAfter,s6Step342HeadFvBefore,s6Step342HeadGvAfter,s6Step342HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step342HeadFv_checked : planRowResizeLog s6Step342HeadFvBefore s6Step342HeadFvRow 188 s6Step342HeadFvFresh=
    some (s6Step342HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812],776⟩,growRow 776 s6Step342HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step342HeadFvBefore s6Step342HeadFvAfter s6Step342HeadFvRow 188 s6Step342HeadFvFresh
    s6Step342HeadFv_distinct s6Step342HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step342HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step342HeadFvRow.payload++s6Step342HeadFvFresh) s6Step342HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step342HeadG_Incoming : rowsOwned s6Step342HeadGBefore [s6Step342HeadGRow,s6Step342HeadFRow,s6Step342HeadGvRow,s6Step342HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step342HeadGRow,s6Step342HeadFRow,s6Step342HeadGvRow,s6Step342HeadFvRow] 0 s6Step342HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step342HeadGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step342HeadG_Outgoing : rowsOwned s6Step342HeadFvAfter [s6Step342HeadGOut,s6Step342HeadFOut,s6Step342HeadGvOut,s6Step342HeadFvOut] :=
  hmrRows_owned_drop s6Step342HeadFvAfter [s6Step342HeadGOut,s6Step342HeadFOut,s6Step342HeadGvOut,s6Step342HeadFvOut] 0 s6Step342HeadBank_outgoingOwned

private theorem s6Step342HeadG_distinct : (s6Step342HeadGRow.sign::s6Step342HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342HeadG_owned : (s6Step342HeadGRow.sign::s6Step342HeadGRow.payload).toFinset⊆s6Step342HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step342HeadGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342HeadG_reserved : s6Step342HeadGBefore.reserve s6Step342HeadGFresh.toFinset=some s6Step342HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step342HeadGFresh,arenaWires]
  · norm_num [s6Step342HeadGBefore,s6Step342HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step342HeadGAfter,s6Step342HeadGBefore,s6Step342HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step342HeadG_checked : planRowResizeLog s6Step342HeadGBefore s6Step342HeadGRow 103 s6Step342HeadGFresh=
    some (s6Step342HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 843, 881, 768],777⟩,growRow 777 s6Step342HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step342HeadGBefore s6Step342HeadGAfter s6Step342HeadGRow 103 s6Step342HeadGFresh
    s6Step342HeadG_distinct s6Step342HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step342HeadG_reserved
  have rowEq : WindowRow.mk (s6Step342HeadGRow.payload++s6Step342HeadGFresh) s6Step342HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 843, 881, 768],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step342HeadGvBefore : Arena := s6Step342HeadFAfter

private theorem s6Step342HeadGv_Incoming : rowsOwned s6Step342HeadGvBefore [s6Step342HeadGvRow,s6Step342HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step342HeadGRow,s6Step342HeadFRow,s6Step342HeadGvRow,s6Step342HeadFvRow] 2 s6Step342HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step342HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step342HeadGv_Outgoing : rowsOwned s6Step342HeadFvAfter [s6Step342HeadGvOut,s6Step342HeadFvOut] :=
  hmrRows_owned_drop s6Step342HeadFvAfter [s6Step342HeadGOut,s6Step342HeadFOut,s6Step342HeadGvOut,s6Step342HeadFvOut] 2 s6Step342HeadBank_outgoingOwned

private theorem s6Step342HeadGv_distinct : (s6Step342HeadGvRow.sign::s6Step342HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step342HeadGv_owned : (s6Step342HeadGvRow.sign::s6Step342HeadGvRow.payload).toFinset⊆s6Step342HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step342HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step342HeadGv_reserved : s6Step342HeadGvBefore.reserve s6Step342HeadGvFresh.toFinset=some s6Step342HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step342HeadGvFresh,arenaWires]
  · norm_num [s6Step342HeadGvBefore,s6Step342HeadFAfter,s6Step342HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step342HeadGvAfter,s6Step342HeadGvBefore,s6Step342HeadFAfter,s6Step342HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step342HeadGv_checked : planRowResizeLog s6Step342HeadGvBefore s6Step342HeadGvRow 188 s6Step342HeadGvFresh=
    some (s6Step342HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 817],775⟩,growRow 775 s6Step342HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step342HeadGvBefore s6Step342HeadGvAfter s6Step342HeadGvRow 188 s6Step342HeadGvFresh
    s6Step342HeadGv_distinct s6Step342HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step342HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step342HeadGvRow.payload++s6Step342HeadGvFresh) s6Step342HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 817],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step342HeadBank_rows : planWindowRowsLog s6Step342HeadGBefore [(s6Step342HeadGRow,103),(s6Step342HeadFRow,103),(s6Step342HeadGvRow,188),(s6Step342HeadFvRow,188)] [s6Step342HeadGFresh,s6Step342HeadFFresh,s6Step342HeadGvFresh,s6Step342HeadFvFresh]=
    some (s6Step342HeadFvAfter,[s6Step342HeadGOut,s6Step342HeadFOut,s6Step342HeadGvOut,s6Step342HeadFvOut],(growRow 777 s6Step342HeadGFresh ++ (growRow 795 s6Step342HeadFFresh ++ (growRow 775 s6Step342HeadGvFresh ++ (growRow 776 s6Step342HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step342HeadFvAfter [] []=some (s6Step342HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step342HeadFvBefore s6Step342HeadFvAfter s6Step342HeadFvAfter
    s6Step342HeadFvRow s6Step342HeadFvOut 188 s6Step342HeadFvFresh [] [] []
    (growRow 776 s6Step342HeadFvFresh) ([]) s6Step342HeadFv_Incoming s6Step342HeadFv_checked h4 s6Step342HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step342HeadGvBefore s6Step342HeadGvAfter s6Step342HeadFvAfter
    s6Step342HeadGvRow s6Step342HeadGvOut 188 s6Step342HeadGvFresh [(s6Step342HeadFvRow,188)] [s6Step342HeadFvFresh] [s6Step342HeadFvOut]
    (growRow 775 s6Step342HeadGvFresh) ((growRow 776 s6Step342HeadFvFresh ++ [])) s6Step342HeadGv_Incoming s6Step342HeadGv_checked h3 s6Step342HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step342HeadFBefore s6Step342HeadFAfter s6Step342HeadFvAfter
    s6Step342HeadFRow s6Step342HeadFOut 103 s6Step342HeadFFresh [(s6Step342HeadGvRow,188),(s6Step342HeadFvRow,188)] [s6Step342HeadGvFresh,s6Step342HeadFvFresh] [s6Step342HeadGvOut,s6Step342HeadFvOut]
    (growRow 795 s6Step342HeadFFresh) ((growRow 775 s6Step342HeadGvFresh ++ (growRow 776 s6Step342HeadFvFresh ++ []))) s6Step342HeadF_Incoming s6Step342HeadF_checked h2 s6Step342HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step342HeadGBefore s6Step342HeadGAfter s6Step342HeadFvAfter
    s6Step342HeadGRow s6Step342HeadGOut 103 s6Step342HeadGFresh [(s6Step342HeadFRow,103),(s6Step342HeadGvRow,188),(s6Step342HeadFvRow,188)] [s6Step342HeadFFresh,s6Step342HeadGvFresh,s6Step342HeadFvFresh] [s6Step342HeadFOut,s6Step342HeadGvOut,s6Step342HeadFvOut]
    (growRow 777 s6Step342HeadGFresh) ((growRow 795 s6Step342HeadFFresh ++ (growRow 775 s6Step342HeadGvFresh ++ (growRow 776 s6Step342HeadFvFresh ++ [])))) s6Step342HeadG_Incoming s6Step342HeadG_checked h1 s6Step342HeadG_Outgoing
  exact h0

private theorem s6Step342HeadBank_checked : compileHmrBankResizeLog .headroom s6Step342HeadGBefore ⟨s6Step342HeadFRow,s6Step342HeadGRow,s6Step342HeadFvRow,s6Step342HeadGvRow⟩ ⟨103,103,188,188⟩ [s6Step342HeadGFresh,s6Step342HeadFFresh,s6Step342HeadGvFresh,s6Step342HeadFvFresh]=
    some (s6Step342HeadFvAfter,⟨s6Step342HeadFOut,s6Step342HeadGOut,s6Step342HeadFvOut,s6Step342HeadGvOut⟩,(growRow 777 s6Step342HeadGFresh ++ (growRow 795 s6Step342HeadFFresh ++ (growRow 775 s6Step342HeadGvFresh ++ (growRow 776 s6Step342HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step342HeadBank_rows]
  rfl

private theorem s6Step342Front_checked : compileHmrSourceFrontLog s6Step342EntryFBefore s6Step342FrontBank 102 187 ⟨101,100,188,187⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step342FrontLog=some s6Step342FrontPlan := by
  have pairEq : s6Step342FrontPair=⟨s6Step342HeadFRow,s6Step342HeadGRow,s6Step342HeadFvRow,s6Step342HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step342FrontHead=⟨s6Step342ExitFRow,s6Step342ExitGRow,s6Step342ExitFvRow,s6Step342ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step342Add0A=s6Step342FrontHead.f.wires := by decide +kernel
  have gEq : s6Step342Add0B=s6Step342FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step342Add1A=s6Step342FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step342Add1B=s6Step342FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step342EntryFBefore s6Step342FrontBank 102 187 ⟨101,100,188,187⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step342FrontLog s6Step342FrontPlan
  · exact s6Step342Front_entry
  · exact s6Step342EntryBank_checked
  · exact s6Step342Front_sigma
  · rfl
  · exact s6Step342Front_branch
  · rfl
  · simpa only [s6Step342FrontPlan,pairEq] using s6Step342HeadBank_checked
  · simpa only [s6Step342FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step342F4_checked
  · exact s6Step342Counter_checked
  · rfl
  · simpa only [s6Step342FrontPlan,headEq] using s6Step342ExitBank_checked

private theorem s6Step342Complete_explicit_checked : compileHmrEarlyStepLog s6Step342EntryFBefore s6Step342FrontBank 102 187 ⟨101,100,188,187⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step342CompleteLog=some s6Step342CompletePlan := by
  let Q := s6Step342EarlyControlPlan
  have hq := s6Step342EarlyControl_plan_checked
  have fv1 : s6Step342CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step342CompleteOut.fv.payload[2]?.getD s6Step342CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step342CompleteOut.fv.payload[3]?.getD s6Step342CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step342CompleteOut.fv.payload[4]?.getD s6Step342CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step342EntryFBefore s6Step342EarlyControlArena s6Step342FrontBank 102 187 ⟨101,100,188,187⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step342CompleteLog s6Step342FrontPlan Q
    s6Step342Front_checked s6Step342Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step342Complete_owned s6Step342Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step342EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 903 s6Step342CompleteOut.fv.second (s6Step342CompleteOut.fv.payload[2]?.getD s6Step342CompleteOut.fv.sign) (s6Step342CompleteOut.fv.payload[3]?.getD s6Step342CompleteOut.fv.sign) (s6Step342CompleteOut.fv.payload[4]?.getD s6Step342CompleteOut.fv.sign) 802 60 s6Step342EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep342Arena : Arena := s6Step342EntryFBefore
def s6PrivateStep342Bank : WindowBank := s6Step342FrontBank
def s6PrivateStep342Spec : HmrSourceWalkStepLog := ⟨102,187,⟨101,100,188,187⟩,60,.early s6Step342CompleteLog⟩
def s6PrivateStep342Plan : HmrSourceStepPlan := .early s6Step342CompletePlan
theorem s6PrivateStep342_source : s6PrivateStep342Spec=s6ObservedLogs336[6] := rfl
theorem s6PrivateStep342_checked : compileHmrSourceStepLog s6PrivateStep342Arena s6PrivateStep342Bank
    s6PrivateStep342Spec.fgWidth s6PrivateStep342Spec.vWidth s6PrivateStep342Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 342 s6PrivateStep342Spec.need none s6PrivateStep342Spec.log=some s6PrivateStep342Plan := by
  change compileHmrSourceStepLog s6Step342EntryFBefore s6Step342FrontBank 102 187 ⟨101,100,188,187⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 342 60 none (.early s6Step342CompleteLog)=some (.early s6Step342CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 342<498)]
  rw [s6Step342Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
