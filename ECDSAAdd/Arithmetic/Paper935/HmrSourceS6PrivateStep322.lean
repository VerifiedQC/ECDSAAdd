import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep320
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

private def s6Step322CompleteMoves : List (Wire × Wire) := [(891,109),(791,365)]

private def s6Step322EarlyControlLog : HmrEarlyControlLog := ⟨[791, 891, 793, 843, 841],[865],[860],[805, 817, 812, 915, 906, 792],[815]⟩

private def s6Step322FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[843], [793], [853], [822]],[[], [], [], []]⟩,[880],[830],[841],[865],[860, 805, 817, 812, 915, 906, 792, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812, 915, 906, 792, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[841, 865, 860, 805]⟩

private def s6Step322CompleteLog : HmrEarlyStepLog := ⟨s6Step322FrontLog,s6Step322CompleteMoves,s6Step322EarlyControlLog⟩

private def s6Step322ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364],795⟩

private def s6Step322ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩

private def s6Step322ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108],777⟩

private def s6Step322ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩

private def s6Step322FrontOut : WindowBank := ⟨s6Step322ExitFOut,s6Step322ExitGOut,s6Step322ExitFvOut,s6Step322ExitGvOut⟩

private def s6Step322CompleteOut : WindowBank := s6Step322FrontOut.repacked s6Step322CompleteMoves

private def s6Step322EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step322EarlyControlPositiveArena,[865],s6Step322EarlyControlEqualityArena,[860],⟨⟨880,false⟩,[⟨⟨865,false⟩,860⟩]⟩⟩

private def s6Step322EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,791⟩,⟨⟨772,false⟩,891⟩,⟨⟨771,false⟩,793⟩,⟨⟨770,false⟩,843⟩,⟨⟨769,false⟩,841⟩]⟩

private def s6Step322EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step322EarlyControlZeroArena,s6Step322EarlyControlZeroPlan,s6Step322EarlyControlClassPlan,s6Step322EarlyControlFlagArena,s6Step322EarlyControlFittedArena,s6Step322EarlyControlHistoryArena,s6Step322EarlyControlSigmaArena,s6Step322EarlyControlOutputArena,s6Step322EarlyControlLog⟩

private def s6Step322CounterWork : List Wire := [841, 865, 860, 805]

private theorem s6Step322Counter_bounded : s6Step322CounterWork.toFinset⊆arenaWires := by norm_num [s6Step322CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step322HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322CounterDuring : Arena := ⟨s6Step322HeadFvAfter.live∪s6Step322CounterWork.toFinset,Finset.union_subset s6Step322HeadFvAfter.bounded s6Step322Counter_bounded⟩

private def s6Step322EntryFFresh : List Wire := []

private def s6Step322EntryFvFresh : List Wire := []

private def s6Step322EntryGFresh : List Wire := []

private def s6Step322EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322EntryGvAfter : Arena := s6Step322EntryFBefore

private def s6Step322EntryGvFresh : List Wire := []

private def s6Step322ExitFExtra : List Wire := [365, 793]

private def s6Step322ExitGExtra : List Wire := [109, 843]

private def s6Step322ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<365) ∨ (366≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322ExitGvAfter : Arena := s6Step322ExitFAfter

private def s6Step322Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322Add0Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step322Add0_bounded : s6Step322Add0Work.toFinset⊆arenaWires := by
  have h : s6Step322Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step322Add0During : Arena := ⟨s6Step322Add0Arena.live∪s6Step322Add0Work.toFinset,Finset.union_subset s6Step322Add0Arena.bounded s6Step322Add0_bounded⟩

private def s6Step322Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322Add1Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step322Add1_bounded : s6Step322Add1Work.toFinset⊆arenaWires := by
  have h : s6Step322Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step322Add1During : Arena := ⟨s6Step322Add1Arena.live∪s6Step322Add1Work.toFinset,Finset.union_subset s6Step322Add1Arena.bounded s6Step322Add1_bounded⟩

private def s6Step322F4FlagArena : Arena := ⟨s6Step322HeadFvAfter.live∪{841},Finset.union_subset s6Step322HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step322F4Plan : HmrHybridF4Plan := ⟨s6Step322F4FlagArena,[841],s6Step322Add0Arena,[865],s6Step322Add0During,s6Step322Add0Work,s6Step322Add1During,s6Step322Add1Work⟩

private def s6Step322HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 793],795⟩

private def s6Step322HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩

private def s6Step322HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 843],777⟩

private def s6Step322HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩

private def s6Step322FrontHead : WindowBank := ⟨s6Step322HeadFOut,s6Step322HeadGOut,s6Step322HeadFvOut,s6Step322HeadGvOut⟩

private def s6Step322EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365],795⟩

private def s6Step322EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step322EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],777⟩

private def s6Step322EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩

private def s6Step322FrontPair : WindowBank := ⟨s6Step322EntryFOut,s6Step322EntryGOut,s6Step322EntryFvOut,s6Step322EntryGvOut⟩

private def s6Step322FrontSigmaArena : Arena := ⟨s6Step322EntryGvAfter.live∪{880},Finset.union_subset s6Step322EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step322HeadFFresh : List Wire := [793]

private def s6Step322HeadFvFresh : List Wire := [822]

private def s6Step322HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322HeadGFresh : List Wire := [843]

private def s6Step322HeadGvFresh : List Wire := [853]

private def s6Step322FrontPlan : HmrSourceFront := ⟨s6Step322EntryGvAfter,s6Step322FrontPair,(growRow 795 s6Step322EntryFFresh ++ (growRow 777 s6Step322EntryGFresh ++ (growRow 776 s6Step322EntryFvFresh ++ (growRow 775 s6Step322EntryGvFresh ++ [])))),s6Step322FrontSigmaArena,[880],s6Step322HeadGBefore,[830],
  s6Step322HeadFvAfter,s6Step322FrontHead,(growRow 777 s6Step322HeadGFresh ++ (growRow 795 s6Step322HeadFFresh ++ (growRow 775 s6Step322HeadGvFresh ++ (growRow 776 s6Step322HeadFvFresh ++ [])))),s6Step322F4Plan,s6Step322CounterDuring,s6Step322CounterWork,s6Step322ExitGvAfter,s6Step322FrontOut,(shrinkRow 777 s6Step322ExitGExtra ++ (shrinkRow 795 s6Step322ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step322CompletePlan : HmrEarlyStepPlan := ⟨s6Step322FrontPlan,s6Step322EarlyControlArena,s6Step322EarlyControlPlan,s6Step322CompleteMoves⟩

private theorem s6Step322Complete_apart : List.Disjoint (s6Step322CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [880, 830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801] := by
  have nd : ((s6Step322CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[880, 830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step322Complete_owned : (s6Step322CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step322EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step322EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step322CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,365),(366,782),(783,790),(791,792),(794,797),(799,800),(801,805),(806,808),(809,812),(813,815),(818,819),(821,832),(833,841),(844,860),(861,865),(866,891),(892,896),(897,906),(907,914),(917,918),(919,920),(921,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step322CompleteRelocationMove0Borrowed : Arena := ⟨s6Step322ExitGvAfter.live∪{109},Finset.union_subset s6Step322ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step322CompleteRelocationMove1Borrowed : Arena := ⟨s6Step322CompleteRelocationMove0After.live∪{365},Finset.union_subset s6Step322CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step322CompleteRelocation_move0_owned : 891∈s6Step322ExitGvAfter.live := by norm_num [s6Step322ExitGvAfter,s6Step322ExitFAfter,arenaWires]

private theorem s6Step322CompleteRelocation_move0_reserve : s6Step322ExitGvAfter.reserve {109}=some s6Step322CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step322ExitGvAfter,s6Step322ExitFAfter,arenaWires]
  · rfl

private theorem s6Step322CompleteRelocation_move0_retire : s6Step322CompleteRelocationMove0Borrowed.retireSet {891}=s6Step322CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step322CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step322CompleteRelocationMove0Borrowed,s6Step322ExitGvAfter,s6Step322ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step322CompleteRelocation_move1_owned : 791∈s6Step322CompleteRelocationMove0After.live := by norm_num [s6Step322CompleteRelocationMove0After,arenaWires]

private theorem s6Step322CompleteRelocation_move1_reserve : s6Step322CompleteRelocationMove0After.reserve {365}=some s6Step322CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step322CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step322CompleteRelocation_move1_retire : s6Step322CompleteRelocationMove1Borrowed.retireSet {791}=s6Step322EarlyControlArena := by
  unfold Arena.retireSet s6Step322EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step322CompleteRelocationMove1Borrowed,s6Step322CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step322CompleteRelocation_checked : s6Step322ExitGvAfter.checkRepack [(891,109),(791,365)]=some s6Step322EarlyControlArena := by
  have tail2 : s6Step322EarlyControlArena.checkRepack []=some s6Step322EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step322CompleteRelocationMove0After s6Step322CompleteRelocationMove1Borrowed s6Step322EarlyControlArena s6Step322EarlyControlArena 791 365 []
    s6Step322CompleteRelocation_move1_owned s6Step322CompleteRelocation_move1_reserve s6Step322CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step322ExitGvAfter s6Step322CompleteRelocationMove0Borrowed s6Step322CompleteRelocationMove0After s6Step322EarlyControlArena 891 109 [(791,365)]
    s6Step322CompleteRelocation_move0_owned s6Step322CompleteRelocation_move0_reserve s6Step322CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step322Complete_repack : s6Step322ExitGvAfter.checkRepack s6Step322CompleteMoves=some s6Step322EarlyControlArena := by
  simpa only [s6Step322CompleteMoves] using s6Step322CompleteRelocation_checked

private theorem s6Step322EarlyControl_branchOwned : ([830] : List Wire).toFinset⊆s6Step322EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step322EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322EarlyControl_branch : compileHmrBranchRetirement s6Step322EarlyControlSigmaArena 830=some s6Step322EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step322EarlyControl_branchOwned
  · ext q
    simp [s6Step322EarlyControlOutputArena,s6Step322EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step322EarlyControl_classEqualityBorrow : s6Step322EarlyControlPositiveArena.checkBorrow (([880, 865] : List Wire).length-1) s6Step322EarlyControlLog.classWork=some s6Step322EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step322EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step322EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step322EarlyControlEqualityArena,s6Step322EarlyControlPositiveArena,s6Step322EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step322EarlyControl_classEqualityOwned : ([880, 865] : List Wire).toFinset⊆s6Step322EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step322EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322EarlyControl_classEquality : compileHmrEqualityLog s6Step322EarlyControlPositiveArena [880, 865] 0 s6Step322EarlyControlLog.classWork=some (s6Step322EarlyControlEqualityArena,s6Step322EarlyControlLog.classWork,s6Step322EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step322EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step322EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step322EarlyControl_classOwned : ([769, 841, 880] : List Wire).toFinset⊆s6Step322EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step322EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322EarlyControl_positiveBorrow : s6Step322EarlyControlZeroArena.checkBorrow (1) s6Step322EarlyControlLog.positiveWork=some s6Step322EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step322EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step322EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step322EarlyControlPositiveArena,s6Step322EarlyControlZeroArena,s6Step322EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step322EarlyControl_class : compileHmrSourceClassLog s6Step322EarlyControlZeroArena false 769 s6Step322EarlyControlZeroPlan.top 0 880 s6Step322EarlyControlLog.positiveWork s6Step322EarlyControlLog.classWork=some s6Step322EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step322EarlyControlClassPlan s6Step322EarlyControlZeroArena false 769 s6Step322EarlyControlZeroPlan.top 0 880
  constructor
  · decide +kernel
  · exact s6Step322EarlyControl_classOwned
  · exact s6Step322EarlyControl_positiveBorrow
  · exact s6Step322EarlyControl_classEquality

private theorem s6Step322EarlyControl_entryRecordOwned : ([830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801] : List Wire).toFinset⊆s6Step322EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step322EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322EarlyControl_entrySigmaOwned : ([880, 254] : List Wire).toFinset⊆s6Step322EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step322EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322EarlyControl_fitBorrow : s6Step322EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801] : List Wire).length)) s6Step322EarlyControlLog.recordFresh=some s6Step322EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step322EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step322EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step322EarlyControlFittedArena,s6Step322EarlyControlFlagArena,s6Step322EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step322EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801] : List Wire).toFinset⊆s6Step322EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step322EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322EarlyControl_fit : compileHmrRecordGrowLog s6Step322EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801] 60 s6Step322EarlyControlLog.recordFresh=some s6Step322EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step322EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step322EarlyControl_fitBorrow

private theorem s6Step322EarlyControl_flagsBorrow : s6Step322EarlyControlEqualityArena.checkBorrow (6) s6Step322EarlyControlLog.flagWork=some s6Step322EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step322EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step322EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step322EarlyControlFlagArena,s6Step322EarlyControlEqualityArena,s6Step322EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step322EarlyControl_flagsOwned : ([860, 253, 252, 251] : List Wire).toFinset⊆s6Step322EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step322EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322EarlyControl_flags : compileHmrFlagsLog s6Step322EarlyControlClassPlan.equalityArena s6Step322EarlyControlClassPlan.equality.top 253 252 251 s6Step322EarlyControlLog.flagWork=some s6Step322EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step322EarlyControl_flagsOwned⟩
  · exact s6Step322EarlyControl_flagsBorrow

private theorem s6Step322EarlyControl_historyBorrow : s6Step322EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801] : List Wire).length)) s6Step322EarlyControlLog.recordFresh=some s6Step322EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step322EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step322EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step322EarlyControlHistoryArena,s6Step322EarlyControlArena,s6Step322EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step322EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801] : List Wire).toFinset⊆s6Step322EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step322EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322EarlyControl_history : compileHmrRecordGrowLog s6Step322EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801] 60 s6Step322EarlyControlLog.recordFresh=some s6Step322EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step322EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step322EarlyControl_historyBorrow

private theorem s6Step322EarlyControl_sigmaOwned : ([254, 880] : List Wire).toFinset⊆s6Step322EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step322EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322EarlyControl_sigmaReleaseOwned : ([880] : List Wire).toFinset⊆s6Step322EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step322EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322EarlyControl_sigmaRelease : s6Step322EarlyControlHistoryArena.release {880} (fun _ => false)=some s6Step322EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step322EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step322EarlyControlSigmaArena,s6Step322EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step322EarlyControl_sigma : compileHmrSigmaDropLog s6Step322EarlyControlHistoryArena false 0 0 254 880 []=some s6Step322EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step322EarlyControl_sigmaOwned⟩
  · exact s6Step322EarlyControl_sigmaRelease

private theorem s6Step322EarlyControl_zeroBorrow : s6Step322EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step322EarlyControlLog.zeroWork=some s6Step322EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step322EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step322EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step322EarlyControlZeroArena,s6Step322EarlyControlArena,s6Step322EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step322EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step322EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step322EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322EarlyControl_zero : compileHmrEqualityLog s6Step322EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step322EarlyControlLog.zeroWork=some (s6Step322EarlyControlZeroArena,s6Step322EarlyControlLog.zeroWork,s6Step322EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step322EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step322EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step322EarlyControl_logged : s6Step322EarlyControlPlan.Logged s6Step322EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801] 769 880 254 253 252 251 830 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step322EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step322EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step322EarlyControl_zero
  · exact s6Step322EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step322EarlyControl_flags
  · exact s6Step322EarlyControl_fit
  · exact s6Step322EarlyControl_history
  · exact s6Step322EarlyControl_sigma
  · exact s6Step322EarlyControl_branch

private theorem s6Step322EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step322EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801] 769 880 254 253 252 251 830 60 s6Step322EarlyControlLog=some s6Step322EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step322EarlyControlPlan s6Step322EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801] 769 880 254 253 252 251 830 60 s6Step322EarlyControl_logged

private def s6Step322EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365],795⟩

private def s6Step322EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step322EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],777⟩

private def s6Step322EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩

private def s6Step322FrontBank : WindowBank := ⟨s6Step322EntryFRow,s6Step322EntryGRow,s6Step322EntryFvRow,s6Step322EntryGvRow⟩

private def s6Step322Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 793, 795]

private def s6Step322Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 843, 777]

private def s6Step322Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 776]

private def s6Step322Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 775]

private theorem s6Step322Counter_apart : Disjoint s6Step322HeadFvAfter.live s6Step322CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step322HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322Counter_borrowed : s6Step322HeadFvAfter.checkBorrow 4 s6Step322CounterWork=some s6Step322CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step322HeadFvAfter s6Step322CounterDuring s6Step322CounterWork.toFinset s6Step322Counter_bounded s6Step322Counter_apart rfl

private theorem s6Step322Counter_owned : (880::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step322HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step322HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322Counter_checked : compileHmrCounterStepLog s6Step322HeadFvAfter true 880 [774, 773, 772, 771, 770, 769] s6Step322CounterWork=some s6Step322CounterDuring := by
  have owned : ∀q∈880::[774, 773, 772, 771, 770, 769],q∈s6Step322HeadFvAfter.live := fun q hq => s6Step322Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step322Counter_borrowed

private def s6Step322EntryFAfter : Arena := s6Step322EntryFBefore

private theorem s6Step322EntryBank_incomingDistinct : ([s6Step322EntryFRow,s6Step322EntryGRow,s6Step322EntryFvRow,s6Step322EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322EntryF_Incoming : rowsOwned s6Step322EntryFBefore [s6Step322EntryFRow,s6Step322EntryGRow,s6Step322EntryFvRow,s6Step322EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step322EntryFRow,s6Step322EntryGRow,s6Step322EntryFvRow,s6Step322EntryGvRow] 0 s6Step322EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step322EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step322EntryBank_outgoingOwned : rowsOwned s6Step322EntryGvAfter [s6Step322EntryFOut,s6Step322EntryGOut,s6Step322EntryFvOut,s6Step322EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step322EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step322EntryF_Outgoing : rowsOwned s6Step322EntryGvAfter [s6Step322EntryFOut,s6Step322EntryGOut,s6Step322EntryFvOut,s6Step322EntryGvOut] :=
  hmrRows_owned_drop s6Step322EntryGvAfter [s6Step322EntryFOut,s6Step322EntryGOut,s6Step322EntryFvOut,s6Step322EntryGvOut] 0 s6Step322EntryBank_outgoingOwned

private theorem s6Step322EntryF_distinct : (s6Step322EntryFRow.sign::s6Step322EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322EntryF_owned : (s6Step322EntryFRow.sign::s6Step322EntryFRow.payload).toFinset⊆s6Step322EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step322EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322EntryF_reserved : s6Step322EntryFBefore.reserve s6Step322EntryFFresh.toFinset=some s6Step322EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step322EntryFFresh,arenaWires]
  · norm_num [s6Step322EntryFBefore,s6Step322EntryFFresh,arenaWires]
  · simp only [s6Step322EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step322EntryF_checked : planRowResizeLog s6Step322EntryFBefore s6Step322EntryFRow 110 s6Step322EntryFFresh=
    some (s6Step322EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365],795⟩,growRow 795 s6Step322EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step322EntryFBefore s6Step322EntryFAfter s6Step322EntryFRow 110 s6Step322EntryFFresh
    s6Step322EntryF_distinct s6Step322EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step322EntryF_reserved
  have rowEq : WindowRow.mk (s6Step322EntryFRow.payload++s6Step322EntryFFresh) s6Step322EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step322EntryFvAfter : Arena := s6Step322EntryFBefore

private def s6Step322EntryFvBefore : Arena := s6Step322EntryFBefore

private theorem s6Step322EntryFv_Incoming : rowsOwned s6Step322EntryFvBefore [s6Step322EntryFvRow,s6Step322EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step322EntryFRow,s6Step322EntryGRow,s6Step322EntryFvRow,s6Step322EntryGvRow] 2 s6Step322EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step322EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step322EntryFv_Outgoing : rowsOwned s6Step322EntryGvAfter [s6Step322EntryFvOut,s6Step322EntryGvOut] :=
  hmrRows_owned_drop s6Step322EntryGvAfter [s6Step322EntryFOut,s6Step322EntryGOut,s6Step322EntryFvOut,s6Step322EntryGvOut] 2 s6Step322EntryBank_outgoingOwned

private theorem s6Step322EntryFv_distinct : (s6Step322EntryFvRow.sign::s6Step322EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322EntryFv_owned : (s6Step322EntryFvRow.sign::s6Step322EntryFvRow.payload).toFinset⊆s6Step322EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step322EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322EntryFv_reserved : s6Step322EntryFvBefore.reserve s6Step322EntryFvFresh.toFinset=some s6Step322EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step322EntryFvFresh,arenaWires]
  · norm_num [s6Step322EntryFvBefore,s6Step322EntryFBefore,s6Step322EntryFvFresh,arenaWires]
  · simp only [s6Step322EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step322EntryFv_checked : planRowResizeLog s6Step322EntryFvBefore s6Step322EntryFvRow 176 s6Step322EntryFvFresh=
    some (s6Step322EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩,growRow 776 s6Step322EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step322EntryFvBefore s6Step322EntryFvAfter s6Step322EntryFvRow 176 s6Step322EntryFvFresh
    s6Step322EntryFv_distinct s6Step322EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step322EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step322EntryFvRow.payload++s6Step322EntryFvFresh) s6Step322EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step322EntryGAfter : Arena := s6Step322EntryFBefore

private def s6Step322EntryGBefore : Arena := s6Step322EntryFBefore

private theorem s6Step322EntryG_Incoming : rowsOwned s6Step322EntryGBefore [s6Step322EntryGRow,s6Step322EntryFvRow,s6Step322EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step322EntryFRow,s6Step322EntryGRow,s6Step322EntryFvRow,s6Step322EntryGvRow] 1 s6Step322EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step322EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step322EntryG_Outgoing : rowsOwned s6Step322EntryGvAfter [s6Step322EntryGOut,s6Step322EntryFvOut,s6Step322EntryGvOut] :=
  hmrRows_owned_drop s6Step322EntryGvAfter [s6Step322EntryFOut,s6Step322EntryGOut,s6Step322EntryFvOut,s6Step322EntryGvOut] 1 s6Step322EntryBank_outgoingOwned

private theorem s6Step322EntryG_distinct : (s6Step322EntryGRow.sign::s6Step322EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322EntryG_owned : (s6Step322EntryGRow.sign::s6Step322EntryGRow.payload).toFinset⊆s6Step322EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step322EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322EntryG_reserved : s6Step322EntryGBefore.reserve s6Step322EntryGFresh.toFinset=some s6Step322EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step322EntryGFresh,arenaWires]
  · norm_num [s6Step322EntryGBefore,s6Step322EntryFBefore,s6Step322EntryGFresh,arenaWires]
  · simp only [s6Step322EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step322EntryG_checked : planRowResizeLog s6Step322EntryGBefore s6Step322EntryGRow 110 s6Step322EntryGFresh=
    some (s6Step322EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],777⟩,growRow 777 s6Step322EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step322EntryGBefore s6Step322EntryGAfter s6Step322EntryGRow 110 s6Step322EntryGFresh
    s6Step322EntryG_distinct s6Step322EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step322EntryG_reserved
  have rowEq : WindowRow.mk (s6Step322EntryGRow.payload++s6Step322EntryGFresh) s6Step322EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step322EntryGvBefore : Arena := s6Step322EntryFBefore

private theorem s6Step322EntryGv_Incoming : rowsOwned s6Step322EntryGvBefore [s6Step322EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step322EntryFRow,s6Step322EntryGRow,s6Step322EntryFvRow,s6Step322EntryGvRow] 3 s6Step322EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step322EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step322EntryGv_Outgoing : rowsOwned s6Step322EntryGvAfter [s6Step322EntryGvOut] :=
  hmrRows_owned_drop s6Step322EntryGvAfter [s6Step322EntryFOut,s6Step322EntryGOut,s6Step322EntryFvOut,s6Step322EntryGvOut] 3 s6Step322EntryBank_outgoingOwned

private theorem s6Step322EntryGv_distinct : (s6Step322EntryGvRow.sign::s6Step322EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322EntryGv_owned : (s6Step322EntryGvRow.sign::s6Step322EntryGvRow.payload).toFinset⊆s6Step322EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step322EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322EntryGv_reserved : s6Step322EntryGvBefore.reserve s6Step322EntryGvFresh.toFinset=some s6Step322EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step322EntryGvFresh,arenaWires]
  · norm_num [s6Step322EntryGvBefore,s6Step322EntryFBefore,s6Step322EntryGvFresh,arenaWires]
  · simp only [s6Step322EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step322EntryGv_checked : planRowResizeLog s6Step322EntryGvBefore s6Step322EntryGvRow 176 s6Step322EntryGvFresh=
    some (s6Step322EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩,growRow 775 s6Step322EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step322EntryGvBefore s6Step322EntryGvAfter s6Step322EntryGvRow 176 s6Step322EntryGvFresh
    s6Step322EntryGv_distinct s6Step322EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step322EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step322EntryGvRow.payload++s6Step322EntryGvFresh) s6Step322EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step322EntryBank_rows : planWindowRowsLog s6Step322EntryFBefore [(s6Step322EntryFRow,110),(s6Step322EntryGRow,110),(s6Step322EntryFvRow,176),(s6Step322EntryGvRow,176)] [s6Step322EntryFFresh,s6Step322EntryGFresh,s6Step322EntryFvFresh,s6Step322EntryGvFresh]=
    some (s6Step322EntryGvAfter,[s6Step322EntryFOut,s6Step322EntryGOut,s6Step322EntryFvOut,s6Step322EntryGvOut],(growRow 795 s6Step322EntryFFresh ++ (growRow 777 s6Step322EntryGFresh ++ (growRow 776 s6Step322EntryFvFresh ++ (growRow 775 s6Step322EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step322EntryGvAfter [] []=some (s6Step322EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step322EntryGvBefore s6Step322EntryGvAfter s6Step322EntryGvAfter
    s6Step322EntryGvRow s6Step322EntryGvOut 176 s6Step322EntryGvFresh [] [] []
    (growRow 775 s6Step322EntryGvFresh) ([]) s6Step322EntryGv_Incoming s6Step322EntryGv_checked h4 s6Step322EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step322EntryFvBefore s6Step322EntryFvAfter s6Step322EntryGvAfter
    s6Step322EntryFvRow s6Step322EntryFvOut 176 s6Step322EntryFvFresh [(s6Step322EntryGvRow,176)] [s6Step322EntryGvFresh] [s6Step322EntryGvOut]
    (growRow 776 s6Step322EntryFvFresh) ((growRow 775 s6Step322EntryGvFresh ++ [])) s6Step322EntryFv_Incoming s6Step322EntryFv_checked h3 s6Step322EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step322EntryGBefore s6Step322EntryGAfter s6Step322EntryGvAfter
    s6Step322EntryGRow s6Step322EntryGOut 110 s6Step322EntryGFresh [(s6Step322EntryFvRow,176),(s6Step322EntryGvRow,176)] [s6Step322EntryFvFresh,s6Step322EntryGvFresh] [s6Step322EntryFvOut,s6Step322EntryGvOut]
    (growRow 777 s6Step322EntryGFresh) ((growRow 776 s6Step322EntryFvFresh ++ (growRow 775 s6Step322EntryGvFresh ++ []))) s6Step322EntryG_Incoming s6Step322EntryG_checked h2 s6Step322EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step322EntryFBefore s6Step322EntryFAfter s6Step322EntryGvAfter
    s6Step322EntryFRow s6Step322EntryFOut 110 s6Step322EntryFFresh [(s6Step322EntryGRow,110),(s6Step322EntryFvRow,176),(s6Step322EntryGvRow,176)] [s6Step322EntryGFresh,s6Step322EntryFvFresh,s6Step322EntryGvFresh] [s6Step322EntryGOut,s6Step322EntryFvOut,s6Step322EntryGvOut]
    (growRow 795 s6Step322EntryFFresh) ((growRow 777 s6Step322EntryGFresh ++ (growRow 776 s6Step322EntryFvFresh ++ (growRow 775 s6Step322EntryGvFresh ++ [])))) s6Step322EntryF_Incoming s6Step322EntryF_checked h1 s6Step322EntryF_Outgoing
  exact h0

private theorem s6Step322EntryBank_checked : compileHmrBankResizeLog .entry s6Step322EntryFBefore ⟨s6Step322EntryFRow,s6Step322EntryGRow,s6Step322EntryFvRow,s6Step322EntryGvRow⟩ ⟨110,110,176,176⟩ [s6Step322EntryFFresh,s6Step322EntryGFresh,s6Step322EntryFvFresh,s6Step322EntryGvFresh]=
    some (s6Step322EntryGvAfter,⟨s6Step322EntryFOut,s6Step322EntryGOut,s6Step322EntryFvOut,s6Step322EntryGvOut⟩,(growRow 795 s6Step322EntryFFresh ++ (growRow 777 s6Step322EntryGFresh ++ (growRow 776 s6Step322EntryFvFresh ++ (growRow 775 s6Step322EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step322EntryBank_rows]
  rfl

private def s6Step322ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322ExitFBefore : Arena := s6Step322ExitGAfter

private def s6Step322ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 793],795⟩

private def s6Step322ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩

private def s6Step322ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 843],777⟩

private def s6Step322ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩

private theorem s6Step322ExitBank_incomingDistinct : ([s6Step322ExitGRow,s6Step322ExitFRow,s6Step322ExitFvRow,s6Step322ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322ExitF_Incoming : rowsOwned s6Step322ExitFBefore [s6Step322ExitFRow,s6Step322ExitFvRow,s6Step322ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step322ExitGRow,s6Step322ExitFRow,s6Step322ExitFvRow,s6Step322ExitGvRow] 1 s6Step322ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step322ExitFBefore (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step322ExitBank_outgoingOwned : rowsOwned s6Step322ExitGvAfter [s6Step322ExitGOut,s6Step322ExitFOut,s6Step322ExitFvOut,s6Step322ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step322ExitGvAfter (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<365) ∨ (366≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step322ExitF_Outgoing : rowsOwned s6Step322ExitGvAfter [s6Step322ExitFOut,s6Step322ExitFvOut,s6Step322ExitGvOut] :=
  hmrRows_owned_drop s6Step322ExitGvAfter [s6Step322ExitGOut,s6Step322ExitFOut,s6Step322ExitFvOut,s6Step322ExitGvOut] 1 s6Step322ExitBank_outgoingOwned

private theorem s6Step322ExitF_distinct : (s6Step322ExitFRow.sign::s6Step322ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322ExitF_owned : (s6Step322ExitFRow.sign::s6Step322ExitFRow.payload).toFinset⊆s6Step322ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step322ExitFBefore (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322ExitF_retired : s6Step322ExitFBefore.retireSet s6Step322ExitFExtra.toFinset=s6Step322ExitFAfter := by
  unfold Arena.retireSet s6Step322ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step322ExitFBefore,s6Step322ExitGAfter,s6Step322ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step322ExitF_checked : planRowResizeLog s6Step322ExitFBefore s6Step322ExitFRow 109 []=
    some (s6Step322ExitFAfter,s6Step322ExitFOut,shrinkRow 795 s6Step322ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step322ExitFBefore s6Step322ExitFRow 109 s6Step322ExitF_distinct s6Step322ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step322ExitFRow.payload.take 109) s6Step322ExitFRow.sign=s6Step322ExitFOut := by decide +kernel
  have hi : s6Step322ExitFRow.payload.drop 109=s6Step322ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step322ExitF_retired] at result
  exact result

private def s6Step322ExitFvAfter : Arena := s6Step322ExitFAfter

private def s6Step322ExitFvBefore : Arena := s6Step322ExitFAfter

private theorem s6Step322ExitFv_Incoming : rowsOwned s6Step322ExitFvBefore [s6Step322ExitFvRow,s6Step322ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step322ExitGRow,s6Step322ExitFRow,s6Step322ExitFvRow,s6Step322ExitGvRow] 2 s6Step322ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step322ExitFvBefore (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<365) ∨ (366≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step322ExitFv_Outgoing : rowsOwned s6Step322ExitGvAfter [s6Step322ExitFvOut,s6Step322ExitGvOut] :=
  hmrRows_owned_drop s6Step322ExitGvAfter [s6Step322ExitGOut,s6Step322ExitFOut,s6Step322ExitFvOut,s6Step322ExitGvOut] 2 s6Step322ExitBank_outgoingOwned

private theorem s6Step322ExitFv_distinct : (s6Step322ExitFvRow.sign::s6Step322ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322ExitFv_owned : (s6Step322ExitFvRow.sign::s6Step322ExitFvRow.payload).toFinset⊆s6Step322ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step322ExitFvBefore (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<365) ∨ (366≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322ExitFv_reserved : s6Step322ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step322ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step322ExitFv_checked : planRowResizeLog s6Step322ExitFvBefore s6Step322ExitFvRow 177 []=
    some (s6Step322ExitFvAfter,s6Step322ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step322ExitFvBefore s6Step322ExitFvAfter s6Step322ExitFvRow 177 []
    s6Step322ExitFv_distinct s6Step322ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step322ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step322ExitFvRow.payload++[]) s6Step322ExitFvRow.sign=s6Step322ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step322ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step322ExitG_Incoming : rowsOwned s6Step322ExitGBefore [s6Step322ExitGRow,s6Step322ExitFRow,s6Step322ExitFvRow,s6Step322ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step322ExitGRow,s6Step322ExitFRow,s6Step322ExitFvRow,s6Step322ExitGvRow] 0 s6Step322ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step322ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step322ExitG_Outgoing : rowsOwned s6Step322ExitGvAfter [s6Step322ExitGOut,s6Step322ExitFOut,s6Step322ExitFvOut,s6Step322ExitGvOut] :=
  hmrRows_owned_drop s6Step322ExitGvAfter [s6Step322ExitGOut,s6Step322ExitFOut,s6Step322ExitFvOut,s6Step322ExitGvOut] 0 s6Step322ExitBank_outgoingOwned

private theorem s6Step322ExitG_distinct : (s6Step322ExitGRow.sign::s6Step322ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322ExitG_owned : (s6Step322ExitGRow.sign::s6Step322ExitGRow.payload).toFinset⊆s6Step322ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step322ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322ExitG_retired : s6Step322ExitGBefore.retireSet s6Step322ExitGExtra.toFinset=s6Step322ExitGAfter := by
  unfold Arena.retireSet s6Step322ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step322ExitGBefore,s6Step322ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step322ExitG_checked : planRowResizeLog s6Step322ExitGBefore s6Step322ExitGRow 109 []=
    some (s6Step322ExitGAfter,s6Step322ExitGOut,shrinkRow 777 s6Step322ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step322ExitGBefore s6Step322ExitGRow 109 s6Step322ExitG_distinct s6Step322ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step322ExitGRow.payload.take 109) s6Step322ExitGRow.sign=s6Step322ExitGOut := by decide +kernel
  have hi : s6Step322ExitGRow.payload.drop 109=s6Step322ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step322ExitG_retired] at result
  exact result

private def s6Step322ExitGvBefore : Arena := s6Step322ExitFAfter

private theorem s6Step322ExitGv_Incoming : rowsOwned s6Step322ExitGvBefore [s6Step322ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step322ExitGRow,s6Step322ExitFRow,s6Step322ExitFvRow,s6Step322ExitGvRow] 3 s6Step322ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step322ExitGvBefore (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<365) ∨ (366≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step322ExitGv_Outgoing : rowsOwned s6Step322ExitGvAfter [s6Step322ExitGvOut] :=
  hmrRows_owned_drop s6Step322ExitGvAfter [s6Step322ExitGOut,s6Step322ExitFOut,s6Step322ExitFvOut,s6Step322ExitGvOut] 3 s6Step322ExitBank_outgoingOwned

private theorem s6Step322ExitGv_distinct : (s6Step322ExitGvRow.sign::s6Step322ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322ExitGv_owned : (s6Step322ExitGvRow.sign::s6Step322ExitGvRow.payload).toFinset⊆s6Step322ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step322ExitGvBefore (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<365) ∨ (366≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322ExitGv_reserved : s6Step322ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step322ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step322ExitGv_checked : planRowResizeLog s6Step322ExitGvBefore s6Step322ExitGvRow 177 []=
    some (s6Step322ExitGvAfter,s6Step322ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step322ExitGvBefore s6Step322ExitGvAfter s6Step322ExitGvRow 177 []
    s6Step322ExitGv_distinct s6Step322ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step322ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step322ExitGvRow.payload++[]) s6Step322ExitGvRow.sign=s6Step322ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step322ExitBank_rows : planWindowRowsLog s6Step322ExitGBefore [(s6Step322ExitGRow,109),(s6Step322ExitFRow,109),(s6Step322ExitFvRow,177),(s6Step322ExitGvRow,177)] [[],[],[],[]]=
    some (s6Step322ExitGvAfter,[s6Step322ExitGOut,s6Step322ExitFOut,s6Step322ExitFvOut,s6Step322ExitGvOut],(shrinkRow 777 s6Step322ExitGExtra ++ (shrinkRow 795 s6Step322ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step322ExitGvAfter [] []=some (s6Step322ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step322ExitGvBefore s6Step322ExitGvAfter s6Step322ExitGvAfter
    s6Step322ExitGvRow s6Step322ExitGvOut 177 [] [] [] []
    (growRow 775 []) ([]) s6Step322ExitGv_Incoming s6Step322ExitGv_checked h4 s6Step322ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step322ExitFvBefore s6Step322ExitFvAfter s6Step322ExitGvAfter
    s6Step322ExitFvRow s6Step322ExitFvOut 177 [] [(s6Step322ExitGvRow,177)] [[]] [s6Step322ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step322ExitFv_Incoming s6Step322ExitFv_checked h3 s6Step322ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step322ExitFBefore s6Step322ExitFAfter s6Step322ExitGvAfter
    s6Step322ExitFRow s6Step322ExitFOut 109 [] [(s6Step322ExitFvRow,177),(s6Step322ExitGvRow,177)] [[],[]] [s6Step322ExitFvOut,s6Step322ExitGvOut]
    (shrinkRow 795 s6Step322ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step322ExitF_Incoming s6Step322ExitF_checked h2 s6Step322ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step322ExitGBefore s6Step322ExitGAfter s6Step322ExitGvAfter
    s6Step322ExitGRow s6Step322ExitGOut 109 [] [(s6Step322ExitFRow,109),(s6Step322ExitFvRow,177),(s6Step322ExitGvRow,177)] [[],[],[]] [s6Step322ExitFOut,s6Step322ExitFvOut,s6Step322ExitGvOut]
    (shrinkRow 777 s6Step322ExitGExtra) ((shrinkRow 795 s6Step322ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step322ExitG_Incoming s6Step322ExitG_checked h1 s6Step322ExitG_Outgoing
  exact h0

private theorem s6Step322ExitBank_checked : compileHmrBankResizeLog .exit s6Step322ExitGBefore ⟨s6Step322ExitFRow,s6Step322ExitGRow,s6Step322ExitFvRow,s6Step322ExitGvRow⟩ ⟨109,109,177,177⟩ [[],[],[],[]]=
    some (s6Step322ExitGvAfter,⟨s6Step322ExitFOut,s6Step322ExitGOut,s6Step322ExitFvOut,s6Step322ExitGvOut⟩,(shrinkRow 777 s6Step322ExitGExtra ++ (shrinkRow 795 s6Step322ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step322ExitBank_rows]
  rfl

private theorem s6Step322Add0_apart : Disjoint s6Step322Add0Arena.live s6Step322Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step322Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322Add0_card : s6Step322Add0Arena.live.card=905 := by
  decide +kernel

private theorem s6Step322Add0_borrowed : s6Step322Add0Arena.checkBorrow (hmrHybridCount s6Step322Add0Arena s6Step322Add0B.length) s6Step322Add0Work=some s6Step322Add0During := by
  have len : s6Step322Add0Work.length=hmrHybridCount s6Step322Add0Arena s6Step322Add0B.length := by
    rw [hmrHybridCount,s6Step322Add0_card]
    decide +kernel
  have nd : s6Step322Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step322Add0Arena s6Step322Add0During s6Step322Add0Work.toFinset s6Step322Add0_bounded s6Step322Add0_apart rfl

private theorem s6Step322Add0_distinct : (841::830::865::(s6Step322Add0A++s6Step322Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322Add0_owned : (841::830::865::(s6Step322Add0A++s6Step322Add0B)).toFinset⊆s6Step322Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step322Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322Add0_checked : compileHmrHybridCinLog s6Step322Add0Arena 830 841 865 s6Step322Add0A s6Step322Add0B s6Step322Add0Work=some s6Step322Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step322Add0Arena s6Step322Add0During 830 841 865 s6Step322Add0A s6Step322Add0B s6Step322Add0Work
    (by decide +kernel) (by decide +kernel) s6Step322Add0_distinct
    (fun q hq => s6Step322Add0_owned (List.mem_toFinset.mpr hq)) s6Step322Add0_borrowed

private theorem s6Step322Add1_apart : Disjoint s6Step322Add1Arena.live s6Step322Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step322Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322Add1_card : s6Step322Add1Arena.live.card=905 := by
  decide +kernel

private theorem s6Step322Add1_borrowed : s6Step322Add1Arena.checkBorrow (hmrHybridCount s6Step322Add1Arena s6Step322Add1B.length) s6Step322Add1Work=some s6Step322Add1During := by
  have len : s6Step322Add1Work.length=hmrHybridCount s6Step322Add1Arena s6Step322Add1B.length := by
    rw [hmrHybridCount,s6Step322Add1_card]
    decide +kernel
  have nd : s6Step322Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step322Add1Arena s6Step322Add1During s6Step322Add1Work.toFinset s6Step322Add1_bounded s6Step322Add1_apart rfl

private theorem s6Step322Add1_distinct : (841::830::865::(s6Step322Add1A++s6Step322Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322Add1_owned : (841::830::865::(s6Step322Add1A++s6Step322Add1B)).toFinset⊆s6Step322Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step322Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322Add1_checked : compileHmrHybridCinLog s6Step322Add1Arena 830 841 865 s6Step322Add1A s6Step322Add1B s6Step322Add1Work=some s6Step322Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step322Add1Arena s6Step322Add1During 830 841 865 s6Step322Add1A s6Step322Add1B s6Step322Add1Work
    (by decide +kernel) (by decide +kernel) s6Step322Add1_distinct
    (fun q hq => s6Step322Add1_owned (List.mem_toFinset.mpr hq)) s6Step322Add1_borrowed

private theorem s6Step322F4_apart : Disjoint (s6Step322Add0A++s6Step322Add0B).toFinset (s6Step322Add1A++s6Step322Add1B).toFinset := by
  have nd : ((s6Step322Add0A++s6Step322Add0B)++(s6Step322Add1A++s6Step322Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step322F4_carry : s6Step322F4FlagArena.checkBorrow 1 [865]=some s6Step322Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step322F4FlagArena,s6Step322HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step322F4FlagArena,s6Step322HeadFvAfter,s6Step322Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step322F4_distinct : (880::830::841::865::((s6Step322Add0A++s6Step322Add1A)++(s6Step322Add0B++s6Step322Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322F4_flag : s6Step322HeadFvAfter.checkBorrow 1 [841]=some s6Step322F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step322HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step322F4_owned : (880::830::((s6Step322Add0A++s6Step322Add1A)++(s6Step322Add0B++s6Step322Add1B))).toFinset⊆s6Step322HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step322HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322F4_checked : compileHmrHybridF4Log s6Step322HeadFvAfter 880 830 s6Step322Add0A s6Step322Add0B s6Step322Add1A s6Step322Add1B [841] [865] s6Step322Add0Work s6Step322Add1Work=some s6Step322F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step322HeadFvAfter s6Step322F4FlagArena s6Step322Add0Arena s6Step322Add0During s6Step322Add1During 880 830
    s6Step322Add0A s6Step322Add0B s6Step322Add1A s6Step322Add1B [841] [865] s6Step322Add0Work s6Step322Add1Work
    (fun q hq => s6Step322F4_owned (List.mem_toFinset.mpr hq)) s6Step322F4_flag s6Step322F4_carry
    s6Step322F4_distinct s6Step322F4_apart s6Step322Add0_checked s6Step322Add1_checked

private theorem s6Step322Front_branch : s6Step322FrontSigmaArena.checkBorrow 1 [830]=some s6Step322HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step322FrontSigmaArena,s6Step322EntryGvAfter,s6Step322EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step322FrontSigmaArena,s6Step322EntryGvAfter,s6Step322EntryFBefore,s6Step322HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step322Front_entry : HmrFrontEntryValid s6Step322EntryFBefore s6Step322FrontBank 110 176 ⟨109,109,177,177⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step322FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step322EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step322EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step322FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step322Front_sigma : s6Step322EntryGvAfter.checkBorrow 1 [880]=some s6Step322FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step322EntryGvAfter,s6Step322EntryFBefore,arenaWires]
  · rfl

private def s6Step322HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322HeadFBefore : Arena := s6Step322HeadGAfter

private def s6Step322HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365],795⟩

private def s6Step322HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step322HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],777⟩

private def s6Step322HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩

private theorem s6Step322HeadBank_incomingDistinct : ([s6Step322HeadGRow,s6Step322HeadFRow,s6Step322HeadGvRow,s6Step322HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322HeadF_Incoming : rowsOwned s6Step322HeadFBefore [s6Step322HeadFRow,s6Step322HeadGvRow,s6Step322HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step322HeadGRow,s6Step322HeadFRow,s6Step322HeadGvRow,s6Step322HeadFvRow] 1 s6Step322HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step322HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step322HeadBank_outgoingOwned : rowsOwned s6Step322HeadFvAfter [s6Step322HeadGOut,s6Step322HeadFOut,s6Step322HeadGvOut,s6Step322HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step322HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step322HeadF_Outgoing : rowsOwned s6Step322HeadFvAfter [s6Step322HeadFOut,s6Step322HeadGvOut,s6Step322HeadFvOut] :=
  hmrRows_owned_drop s6Step322HeadFvAfter [s6Step322HeadGOut,s6Step322HeadFOut,s6Step322HeadGvOut,s6Step322HeadFvOut] 1 s6Step322HeadBank_outgoingOwned

private theorem s6Step322HeadF_distinct : (s6Step322HeadFRow.sign::s6Step322HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322HeadF_owned : (s6Step322HeadFRow.sign::s6Step322HeadFRow.payload).toFinset⊆s6Step322HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step322HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322HeadF_reserved : s6Step322HeadFBefore.reserve s6Step322HeadFFresh.toFinset=some s6Step322HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step322HeadFFresh,arenaWires]
  · norm_num [s6Step322HeadFBefore,s6Step322HeadGAfter,s6Step322HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step322HeadFAfter,s6Step322HeadFBefore,s6Step322HeadGAfter,s6Step322HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step322HeadF_checked : planRowResizeLog s6Step322HeadFBefore s6Step322HeadFRow 111 s6Step322HeadFFresh=
    some (s6Step322HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 793],795⟩,growRow 795 s6Step322HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step322HeadFBefore s6Step322HeadFAfter s6Step322HeadFRow 111 s6Step322HeadFFresh
    s6Step322HeadF_distinct s6Step322HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step322HeadF_reserved
  have rowEq : WindowRow.mk (s6Step322HeadFRow.payload++s6Step322HeadFFresh) s6Step322HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 793],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step322HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step322HeadFvBefore : Arena := s6Step322HeadGvAfter

private theorem s6Step322HeadFv_Incoming : rowsOwned s6Step322HeadFvBefore [s6Step322HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step322HeadGRow,s6Step322HeadFRow,s6Step322HeadGvRow,s6Step322HeadFvRow] 3 s6Step322HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step322HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step322HeadFv_Outgoing : rowsOwned s6Step322HeadFvAfter [s6Step322HeadFvOut] :=
  hmrRows_owned_drop s6Step322HeadFvAfter [s6Step322HeadGOut,s6Step322HeadFOut,s6Step322HeadGvOut,s6Step322HeadFvOut] 3 s6Step322HeadBank_outgoingOwned

private theorem s6Step322HeadFv_distinct : (s6Step322HeadFvRow.sign::s6Step322HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322HeadFv_owned : (s6Step322HeadFvRow.sign::s6Step322HeadFvRow.payload).toFinset⊆s6Step322HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step322HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322HeadFv_reserved : s6Step322HeadFvBefore.reserve s6Step322HeadFvFresh.toFinset=some s6Step322HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step322HeadFvFresh,arenaWires]
  · norm_num [s6Step322HeadFvBefore,s6Step322HeadGvAfter,s6Step322HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step322HeadFvAfter,s6Step322HeadFvBefore,s6Step322HeadGvAfter,s6Step322HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step322HeadFv_checked : planRowResizeLog s6Step322HeadFvBefore s6Step322HeadFvRow 177 s6Step322HeadFvFresh=
    some (s6Step322HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩,growRow 776 s6Step322HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step322HeadFvBefore s6Step322HeadFvAfter s6Step322HeadFvRow 177 s6Step322HeadFvFresh
    s6Step322HeadFv_distinct s6Step322HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step322HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step322HeadFvRow.payload++s6Step322HeadFvFresh) s6Step322HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step322HeadG_Incoming : rowsOwned s6Step322HeadGBefore [s6Step322HeadGRow,s6Step322HeadFRow,s6Step322HeadGvRow,s6Step322HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step322HeadGRow,s6Step322HeadFRow,s6Step322HeadGvRow,s6Step322HeadFvRow] 0 s6Step322HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step322HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step322HeadG_Outgoing : rowsOwned s6Step322HeadFvAfter [s6Step322HeadGOut,s6Step322HeadFOut,s6Step322HeadGvOut,s6Step322HeadFvOut] :=
  hmrRows_owned_drop s6Step322HeadFvAfter [s6Step322HeadGOut,s6Step322HeadFOut,s6Step322HeadGvOut,s6Step322HeadFvOut] 0 s6Step322HeadBank_outgoingOwned

private theorem s6Step322HeadG_distinct : (s6Step322HeadGRow.sign::s6Step322HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322HeadG_owned : (s6Step322HeadGRow.sign::s6Step322HeadGRow.payload).toFinset⊆s6Step322HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step322HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322HeadG_reserved : s6Step322HeadGBefore.reserve s6Step322HeadGFresh.toFinset=some s6Step322HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step322HeadGFresh,arenaWires]
  · norm_num [s6Step322HeadGBefore,s6Step322HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step322HeadGAfter,s6Step322HeadGBefore,s6Step322HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step322HeadG_checked : planRowResizeLog s6Step322HeadGBefore s6Step322HeadGRow 111 s6Step322HeadGFresh=
    some (s6Step322HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 843],777⟩,growRow 777 s6Step322HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step322HeadGBefore s6Step322HeadGAfter s6Step322HeadGRow 111 s6Step322HeadGFresh
    s6Step322HeadG_distinct s6Step322HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step322HeadG_reserved
  have rowEq : WindowRow.mk (s6Step322HeadGRow.payload++s6Step322HeadGFresh) s6Step322HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 843],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step322HeadGvBefore : Arena := s6Step322HeadFAfter

private theorem s6Step322HeadGv_Incoming : rowsOwned s6Step322HeadGvBefore [s6Step322HeadGvRow,s6Step322HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step322HeadGRow,s6Step322HeadFRow,s6Step322HeadGvRow,s6Step322HeadFvRow] 2 s6Step322HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step322HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step322HeadGv_Outgoing : rowsOwned s6Step322HeadFvAfter [s6Step322HeadGvOut,s6Step322HeadFvOut] :=
  hmrRows_owned_drop s6Step322HeadFvAfter [s6Step322HeadGOut,s6Step322HeadFOut,s6Step322HeadGvOut,s6Step322HeadFvOut] 2 s6Step322HeadBank_outgoingOwned

private theorem s6Step322HeadGv_distinct : (s6Step322HeadGvRow.sign::s6Step322HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step322HeadGv_owned : (s6Step322HeadGvRow.sign::s6Step322HeadGvRow.payload).toFinset⊆s6Step322HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step322HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step322HeadGv_reserved : s6Step322HeadGvBefore.reserve s6Step322HeadGvFresh.toFinset=some s6Step322HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step322HeadGvFresh,arenaWires]
  · norm_num [s6Step322HeadGvBefore,s6Step322HeadFAfter,s6Step322HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step322HeadGvAfter,s6Step322HeadGvBefore,s6Step322HeadFAfter,s6Step322HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step322HeadGv_checked : planRowResizeLog s6Step322HeadGvBefore s6Step322HeadGvRow 177 s6Step322HeadGvFresh=
    some (s6Step322HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩,growRow 775 s6Step322HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step322HeadGvBefore s6Step322HeadGvAfter s6Step322HeadGvRow 177 s6Step322HeadGvFresh
    s6Step322HeadGv_distinct s6Step322HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step322HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step322HeadGvRow.payload++s6Step322HeadGvFresh) s6Step322HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step322HeadBank_rows : planWindowRowsLog s6Step322HeadGBefore [(s6Step322HeadGRow,111),(s6Step322HeadFRow,111),(s6Step322HeadGvRow,177),(s6Step322HeadFvRow,177)] [s6Step322HeadGFresh,s6Step322HeadFFresh,s6Step322HeadGvFresh,s6Step322HeadFvFresh]=
    some (s6Step322HeadFvAfter,[s6Step322HeadGOut,s6Step322HeadFOut,s6Step322HeadGvOut,s6Step322HeadFvOut],(growRow 777 s6Step322HeadGFresh ++ (growRow 795 s6Step322HeadFFresh ++ (growRow 775 s6Step322HeadGvFresh ++ (growRow 776 s6Step322HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step322HeadFvAfter [] []=some (s6Step322HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step322HeadFvBefore s6Step322HeadFvAfter s6Step322HeadFvAfter
    s6Step322HeadFvRow s6Step322HeadFvOut 177 s6Step322HeadFvFresh [] [] []
    (growRow 776 s6Step322HeadFvFresh) ([]) s6Step322HeadFv_Incoming s6Step322HeadFv_checked h4 s6Step322HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step322HeadGvBefore s6Step322HeadGvAfter s6Step322HeadFvAfter
    s6Step322HeadGvRow s6Step322HeadGvOut 177 s6Step322HeadGvFresh [(s6Step322HeadFvRow,177)] [s6Step322HeadFvFresh] [s6Step322HeadFvOut]
    (growRow 775 s6Step322HeadGvFresh) ((growRow 776 s6Step322HeadFvFresh ++ [])) s6Step322HeadGv_Incoming s6Step322HeadGv_checked h3 s6Step322HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step322HeadFBefore s6Step322HeadFAfter s6Step322HeadFvAfter
    s6Step322HeadFRow s6Step322HeadFOut 111 s6Step322HeadFFresh [(s6Step322HeadGvRow,177),(s6Step322HeadFvRow,177)] [s6Step322HeadGvFresh,s6Step322HeadFvFresh] [s6Step322HeadGvOut,s6Step322HeadFvOut]
    (growRow 795 s6Step322HeadFFresh) ((growRow 775 s6Step322HeadGvFresh ++ (growRow 776 s6Step322HeadFvFresh ++ []))) s6Step322HeadF_Incoming s6Step322HeadF_checked h2 s6Step322HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step322HeadGBefore s6Step322HeadGAfter s6Step322HeadFvAfter
    s6Step322HeadGRow s6Step322HeadGOut 111 s6Step322HeadGFresh [(s6Step322HeadFRow,111),(s6Step322HeadGvRow,177),(s6Step322HeadFvRow,177)] [s6Step322HeadFFresh,s6Step322HeadGvFresh,s6Step322HeadFvFresh] [s6Step322HeadFOut,s6Step322HeadGvOut,s6Step322HeadFvOut]
    (growRow 777 s6Step322HeadGFresh) ((growRow 795 s6Step322HeadFFresh ++ (growRow 775 s6Step322HeadGvFresh ++ (growRow 776 s6Step322HeadFvFresh ++ [])))) s6Step322HeadG_Incoming s6Step322HeadG_checked h1 s6Step322HeadG_Outgoing
  exact h0

private theorem s6Step322HeadBank_checked : compileHmrBankResizeLog .headroom s6Step322HeadGBefore ⟨s6Step322HeadFRow,s6Step322HeadGRow,s6Step322HeadFvRow,s6Step322HeadGvRow⟩ ⟨111,111,177,177⟩ [s6Step322HeadGFresh,s6Step322HeadFFresh,s6Step322HeadGvFresh,s6Step322HeadFvFresh]=
    some (s6Step322HeadFvAfter,⟨s6Step322HeadFOut,s6Step322HeadGOut,s6Step322HeadFvOut,s6Step322HeadGvOut⟩,(growRow 777 s6Step322HeadGFresh ++ (growRow 795 s6Step322HeadFFresh ++ (growRow 775 s6Step322HeadGvFresh ++ (growRow 776 s6Step322HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step322HeadBank_rows]
  rfl

private theorem s6Step322Front_checked : compileHmrSourceFrontLog s6Step322EntryFBefore s6Step322FrontBank 110 176 ⟨109,109,177,177⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step322FrontLog=some s6Step322FrontPlan := by
  have pairEq : s6Step322FrontPair=⟨s6Step322HeadFRow,s6Step322HeadGRow,s6Step322HeadFvRow,s6Step322HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step322FrontHead=⟨s6Step322ExitFRow,s6Step322ExitGRow,s6Step322ExitFvRow,s6Step322ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step322Add0A=s6Step322FrontHead.f.wires := by decide +kernel
  have gEq : s6Step322Add0B=s6Step322FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step322Add1A=s6Step322FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step322Add1B=s6Step322FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step322EntryFBefore s6Step322FrontBank 110 176 ⟨109,109,177,177⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step322FrontLog s6Step322FrontPlan
  · exact s6Step322Front_entry
  · exact s6Step322EntryBank_checked
  · exact s6Step322Front_sigma
  · rfl
  · exact s6Step322Front_branch
  · rfl
  · simpa only [s6Step322FrontPlan,pairEq] using s6Step322HeadBank_checked
  · simpa only [s6Step322FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step322F4_checked
  · exact s6Step322Counter_checked
  · rfl
  · simpa only [s6Step322FrontPlan,headEq] using s6Step322ExitBank_checked

private theorem s6Step322Complete_explicit_checked : compileHmrEarlyStepLog s6Step322EntryFBefore s6Step322FrontBank 110 176 ⟨109,109,177,177⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801] 60 s6Step322CompleteLog=some s6Step322CompletePlan := by
  let Q := s6Step322EarlyControlPlan
  have hq := s6Step322EarlyControl_plan_checked
  have fv1 : s6Step322CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step322CompleteOut.fv.payload[2]?.getD s6Step322CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step322CompleteOut.fv.payload[3]?.getD s6Step322CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step322CompleteOut.fv.payload[4]?.getD s6Step322CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step322EntryFBefore s6Step322EarlyControlArena s6Step322FrontBank 110 176 ⟨109,109,177,177⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801] 60 s6Step322CompleteLog s6Step322FrontPlan Q
    s6Step322Front_checked s6Step322Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step322Complete_owned s6Step322Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step322EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801] 769 880 s6Step322CompleteOut.fv.second (s6Step322CompleteOut.fv.payload[2]?.getD s6Step322CompleteOut.fv.sign) (s6Step322CompleteOut.fv.payload[3]?.getD s6Step322CompleteOut.fv.sign) (s6Step322CompleteOut.fv.payload[4]?.getD s6Step322CompleteOut.fv.sign) 830 60 s6Step322EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep322Arena : Arena := s6Step322EntryFBefore
def s6PrivateStep322Bank : WindowBank := s6Step322FrontBank
def s6PrivateStep322Spec : HmrSourceWalkStepLog := ⟨110,176,⟨109,109,177,177⟩,60,.early s6Step322CompleteLog⟩
def s6PrivateStep322Plan : HmrSourceStepPlan := .early s6Step322CompletePlan
theorem s6PrivateStep322_source : s6PrivateStep322Spec=s6ObservedLogs320[2] := rfl
theorem s6PrivateStep322_checked : compileHmrSourceStepLog s6PrivateStep322Arena s6PrivateStep322Bank
    s6PrivateStep322Spec.fgWidth s6PrivateStep322Spec.vWidth s6PrivateStep322Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801]
    6 498 322 s6PrivateStep322Spec.need none s6PrivateStep322Spec.log=some s6PrivateStep322Plan := by
  change compileHmrSourceStepLog s6Step322EntryFBefore s6Step322FrontBank 110 176 ⟨109,109,177,177⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801] 6 498 322 60 none (.early s6Step322CompleteLog)=some (.early s6Step322CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 322<498)]
  rw [s6Step322Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
