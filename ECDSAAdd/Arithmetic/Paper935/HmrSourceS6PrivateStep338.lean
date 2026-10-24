import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep336
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

private def s6Step338CompleteMoves : List (Wire × Wire) := []

private def s6Step338EarlyControlLog : HmrEarlyControlLog := ⟨[860, 805, 865, 802, 784],[817],[812],[915, 906, 792, 816, 819, 920],[]⟩

private def s6Step338FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [903, 802], [], [867]],[[784], [865], [860], [805]],[[], [], [], []]⟩,[907],[843],[817],[812],[915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906]⟩

private def s6Step338CompleteLog : HmrEarlyStepLog := ⟨s6Step338FrontLog,s6Step338CompleteMoves,s6Step338EarlyControlLog⟩

private def s6Step338ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step338ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩

private def s6Step338ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903],777⟩

private def s6Step338ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867],775⟩

private def s6Step338FrontOut : WindowBank := ⟨s6Step338ExitFOut,s6Step338ExitGOut,s6Step338ExitFvOut,s6Step338ExitGvOut⟩

private def s6Step338CompleteOut : WindowBank := s6Step338FrontOut.repacked s6Step338CompleteMoves

private def s6Step338EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step338EarlyControlPositiveArena,[817],s6Step338EarlyControlEqualityArena,[812],⟨⟨907,false⟩,[⟨⟨817,false⟩,812⟩]⟩⟩

private def s6Step338EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,860⟩,⟨⟨772,false⟩,805⟩,⟨⟨771,false⟩,865⟩,⟨⟨770,false⟩,802⟩,⟨⟨769,false⟩,784⟩]⟩

private def s6Step338EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step338EarlyControlZeroArena,s6Step338EarlyControlZeroPlan,s6Step338EarlyControlClassPlan,s6Step338EarlyControlFlagArena,s6Step338EarlyControlFittedArena,s6Step338EarlyControlHistoryArena,s6Step338EarlyControlSigmaArena,s6Step338EarlyControlOutputArena,s6Step338EarlyControlLog⟩

private def s6Step338CounterWork : List Wire := [817, 812, 915, 906]

private theorem s6Step338Counter_bounded : s6Step338CounterWork.toFinset⊆arenaWires := by norm_num [s6Step338CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step338HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338CounterDuring : Arena := ⟨s6Step338HeadFvAfter.live∪s6Step338CounterWork.toFinset,Finset.union_subset s6Step338HeadFvAfter.bounded s6Step338Counter_bounded⟩

private def s6Step338EntryFFresh : List Wire := []

private def s6Step338EntryFvFresh : List Wire := []

private def s6Step338EntryGFresh : List Wire := [903, 802]

private def s6Step338EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338EntryGvFresh : List Wire := [867]

private def s6Step338ExitFExtra : List Wire := [865]

private def s6Step338ExitFvExtra : List Wire := [805]

private def s6Step338ExitGExtra : List Wire := [802, 784]

private def s6Step338ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338ExitGvExtra : List Wire := [860]

private def s6Step338Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338Add0Work : List Wire := [915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step338Add0_bounded : s6Step338Add0Work.toFinset⊆arenaWires := by
  have h : s6Step338Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step338Add0During : Arena := ⟨s6Step338Add0Arena.live∪s6Step338Add0Work.toFinset,Finset.union_subset s6Step338Add0Arena.bounded s6Step338Add0_bounded⟩

private def s6Step338Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338Add1Work : List Wire := [915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step338Add1_bounded : s6Step338Add1Work.toFinset⊆arenaWires := by
  have h : s6Step338Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step338Add1During : Arena := ⟨s6Step338Add1Arena.live∪s6Step338Add1Work.toFinset,Finset.union_subset s6Step338Add1Arena.bounded s6Step338Add1_bounded⟩

private def s6Step338F4FlagArena : Arena := ⟨s6Step338HeadFvAfter.live∪{817},Finset.union_subset s6Step338HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step338F4Plan : HmrHybridF4Plan := ⟨s6Step338F4FlagArena,[817],s6Step338Add0Arena,[812],s6Step338Add0During,s6Step338Add0Work,s6Step338Add1During,s6Step338Add1Work⟩

private def s6Step338HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 865],795⟩

private def s6Step338HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 805],776⟩

private def s6Step338HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 802, 784],777⟩

private def s6Step338HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 860],775⟩

private def s6Step338FrontHead : WindowBank := ⟨s6Step338HeadFOut,s6Step338HeadGOut,s6Step338HeadFvOut,s6Step338HeadGvOut⟩

private def s6Step338EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step338EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩

private def s6Step338EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 802],777⟩

private def s6Step338EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867],775⟩

private def s6Step338FrontPair : WindowBank := ⟨s6Step338EntryFOut,s6Step338EntryGOut,s6Step338EntryFvOut,s6Step338EntryGvOut⟩

private def s6Step338FrontSigmaArena : Arena := ⟨s6Step338EntryGvAfter.live∪{907},Finset.union_subset s6Step338EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step338HeadFFresh : List Wire := [865]

private def s6Step338HeadFvFresh : List Wire := [805]

private def s6Step338HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338HeadGFresh : List Wire := [784]

private def s6Step338HeadGvFresh : List Wire := [860]

private def s6Step338FrontPlan : HmrSourceFront := ⟨s6Step338EntryGvAfter,s6Step338FrontPair,(growRow 795 s6Step338EntryFFresh ++ (growRow 777 s6Step338EntryGFresh ++ (growRow 776 s6Step338EntryFvFresh ++ (growRow 775 s6Step338EntryGvFresh ++ [])))),s6Step338FrontSigmaArena,[907],s6Step338HeadGBefore,[843],
  s6Step338HeadFvAfter,s6Step338FrontHead,(growRow 777 s6Step338HeadGFresh ++ (growRow 795 s6Step338HeadFFresh ++ (growRow 775 s6Step338HeadGvFresh ++ (growRow 776 s6Step338HeadFvFresh ++ [])))),s6Step338F4Plan,s6Step338CounterDuring,s6Step338CounterWork,s6Step338ExitGvAfter,s6Step338FrontOut,(shrinkRow 777 s6Step338ExitGExtra ++ (shrinkRow 795 s6Step338ExitFExtra ++ (shrinkRow 776 s6Step338ExitFvExtra ++ (shrinkRow 775 s6Step338ExitGvExtra ++ []))))⟩

private def s6Step338CompletePlan : HmrEarlyStepPlan := ⟨s6Step338FrontPlan,s6Step338EarlyControlArena,s6Step338EarlyControlPlan,s6Step338CompleteMoves⟩

private theorem s6Step338Complete_apart : List.Disjoint (s6Step338CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [907, 843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step338CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[907, 843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step338Complete_owned : (s6Step338CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step338EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step338EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338Complete_repack : s6Step338ExitGvAfter.checkRepack s6Step338CompleteMoves=some s6Step338EarlyControlArena := by rfl

private theorem s6Step338EarlyControl_branchOwned : ([843] : List Wire).toFinset⊆s6Step338EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step338EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338EarlyControl_branch : compileHmrBranchRetirement s6Step338EarlyControlSigmaArena 843=some s6Step338EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step338EarlyControl_branchOwned
  · ext q
    simp [s6Step338EarlyControlOutputArena,s6Step338EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step338EarlyControl_classEqualityBorrow : s6Step338EarlyControlPositiveArena.checkBorrow (([907, 817] : List Wire).length-1) s6Step338EarlyControlLog.classWork=some s6Step338EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step338EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step338EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step338EarlyControlEqualityArena,s6Step338EarlyControlPositiveArena,s6Step338EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step338EarlyControl_classEqualityOwned : ([907, 817] : List Wire).toFinset⊆s6Step338EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step338EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338EarlyControl_classEquality : compileHmrEqualityLog s6Step338EarlyControlPositiveArena [907, 817] 0 s6Step338EarlyControlLog.classWork=some (s6Step338EarlyControlEqualityArena,s6Step338EarlyControlLog.classWork,s6Step338EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step338EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step338EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step338EarlyControl_classOwned : ([769, 784, 907] : List Wire).toFinset⊆s6Step338EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step338EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338EarlyControl_positiveBorrow : s6Step338EarlyControlZeroArena.checkBorrow (1) s6Step338EarlyControlLog.positiveWork=some s6Step338EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step338EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step338EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step338EarlyControlPositiveArena,s6Step338EarlyControlZeroArena,s6Step338EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step338EarlyControl_class : compileHmrSourceClassLog s6Step338EarlyControlZeroArena false 769 s6Step338EarlyControlZeroPlan.top 0 907 s6Step338EarlyControlLog.positiveWork s6Step338EarlyControlLog.classWork=some s6Step338EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step338EarlyControlClassPlan s6Step338EarlyControlZeroArena false 769 s6Step338EarlyControlZeroPlan.top 0 907
  constructor
  · decide +kernel
  · exact s6Step338EarlyControl_classOwned
  · exact s6Step338EarlyControl_positiveBorrow
  · exact s6Step338EarlyControl_classEquality

private theorem s6Step338EarlyControl_entryRecordOwned : ([843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step338EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step338EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338EarlyControl_entrySigmaOwned : ([907, 254] : List Wire).toFinset⊆s6Step338EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step338EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338EarlyControl_fitBorrow : s6Step338EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step338EarlyControlLog.recordFresh=some s6Step338EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step338EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step338EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step338EarlyControlFittedArena,s6Step338EarlyControlFlagArena,s6Step338EarlyControlLog,arenaWires]

private theorem s6Step338EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step338EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step338EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338EarlyControl_fit : compileHmrRecordGrowLog s6Step338EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step338EarlyControlLog.recordFresh=some s6Step338EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step338EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step338EarlyControl_fitBorrow

private theorem s6Step338EarlyControl_flagsBorrow : s6Step338EarlyControlEqualityArena.checkBorrow (6) s6Step338EarlyControlLog.flagWork=some s6Step338EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step338EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step338EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step338EarlyControlFlagArena,s6Step338EarlyControlEqualityArena,s6Step338EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step338EarlyControl_flagsOwned : ([812, 253, 252, 251] : List Wire).toFinset⊆s6Step338EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step338EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338EarlyControl_flags : compileHmrFlagsLog s6Step338EarlyControlClassPlan.equalityArena s6Step338EarlyControlClassPlan.equality.top 253 252 251 s6Step338EarlyControlLog.flagWork=some s6Step338EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step338EarlyControl_flagsOwned⟩
  · exact s6Step338EarlyControl_flagsBorrow

private theorem s6Step338EarlyControl_historyBorrow : s6Step338EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step338EarlyControlLog.recordFresh=some s6Step338EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step338EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step338EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step338EarlyControlHistoryArena,s6Step338EarlyControlArena,s6Step338EarlyControlLog,arenaWires]

private theorem s6Step338EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step338EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step338EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338EarlyControl_history : compileHmrRecordGrowLog s6Step338EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step338EarlyControlLog.recordFresh=some s6Step338EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step338EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step338EarlyControl_historyBorrow

private theorem s6Step338EarlyControl_sigmaOwned : ([254, 907] : List Wire).toFinset⊆s6Step338EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step338EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338EarlyControl_sigmaReleaseOwned : ([907] : List Wire).toFinset⊆s6Step338EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step338EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338EarlyControl_sigmaRelease : s6Step338EarlyControlHistoryArena.release {907} (fun _ => false)=some s6Step338EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step338EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step338EarlyControlSigmaArena,s6Step338EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step338EarlyControl_sigma : compileHmrSigmaDropLog s6Step338EarlyControlHistoryArena false 0 0 254 907 []=some s6Step338EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step338EarlyControl_sigmaOwned⟩
  · exact s6Step338EarlyControl_sigmaRelease

private theorem s6Step338EarlyControl_zeroBorrow : s6Step338EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step338EarlyControlLog.zeroWork=some s6Step338EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step338EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step338EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step338EarlyControlZeroArena,s6Step338EarlyControlArena,s6Step338EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step338EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step338EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step338EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338EarlyControl_zero : compileHmrEqualityLog s6Step338EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step338EarlyControlLog.zeroWork=some (s6Step338EarlyControlZeroArena,s6Step338EarlyControlLog.zeroWork,s6Step338EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step338EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step338EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step338EarlyControl_logged : s6Step338EarlyControlPlan.Logged s6Step338EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 254 253 252 251 843 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step338EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step338EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step338EarlyControl_zero
  · exact s6Step338EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step338EarlyControl_flags
  · exact s6Step338EarlyControl_fit
  · exact s6Step338EarlyControl_history
  · exact s6Step338EarlyControl_sigma
  · exact s6Step338EarlyControl_branch

private theorem s6Step338EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step338EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 254 253 252 251 843 60 s6Step338EarlyControlLog=some s6Step338EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step338EarlyControlPlan s6Step338EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 254 253 252 251 843 60 s6Step338EarlyControl_logged

private def s6Step338EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step338EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩

private def s6Step338EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100],777⟩

private def s6Step338EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874],775⟩

private def s6Step338FrontBank : WindowBank := ⟨s6Step338EntryFRow,s6Step338EntryGRow,s6Step338EntryFvRow,s6Step338EntryGvRow⟩

private def s6Step338Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 865, 795]

private def s6Step338Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 802, 784, 777]

private def s6Step338Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 805, 776]

private def s6Step338Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 860, 775]

private theorem s6Step338Counter_apart : Disjoint s6Step338HeadFvAfter.live s6Step338CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step338HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338Counter_borrowed : s6Step338HeadFvAfter.checkBorrow 4 s6Step338CounterWork=some s6Step338CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step338HeadFvAfter s6Step338CounterDuring s6Step338CounterWork.toFinset s6Step338Counter_bounded s6Step338Counter_apart rfl

private theorem s6Step338Counter_owned : (907::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step338HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step338HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338Counter_checked : compileHmrCounterStepLog s6Step338HeadFvAfter true 907 [774, 773, 772, 771, 770, 769] s6Step338CounterWork=some s6Step338CounterDuring := by
  have owned : ∀q∈907::[774, 773, 772, 771, 770, 769],q∈s6Step338HeadFvAfter.live := fun q hq => s6Step338Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step338Counter_borrowed

private def s6Step338EntryFAfter : Arena := s6Step338EntryFBefore

private theorem s6Step338EntryBank_incomingDistinct : ([s6Step338EntryFRow,s6Step338EntryGRow,s6Step338EntryFvRow,s6Step338EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338EntryF_Incoming : rowsOwned s6Step338EntryFBefore [s6Step338EntryFRow,s6Step338EntryGRow,s6Step338EntryFvRow,s6Step338EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step338EntryFRow,s6Step338EntryGRow,s6Step338EntryFvRow,s6Step338EntryGvRow] 0 s6Step338EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step338EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step338EntryBank_outgoingOwned : rowsOwned s6Step338EntryGvAfter [s6Step338EntryFOut,s6Step338EntryGOut,s6Step338EntryFvOut,s6Step338EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step338EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step338EntryF_Outgoing : rowsOwned s6Step338EntryGvAfter [s6Step338EntryFOut,s6Step338EntryGOut,s6Step338EntryFvOut,s6Step338EntryGvOut] :=
  hmrRows_owned_drop s6Step338EntryGvAfter [s6Step338EntryFOut,s6Step338EntryGOut,s6Step338EntryFvOut,s6Step338EntryGvOut] 0 s6Step338EntryBank_outgoingOwned

private theorem s6Step338EntryF_distinct : (s6Step338EntryFRow.sign::s6Step338EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338EntryF_owned : (s6Step338EntryFRow.sign::s6Step338EntryFRow.payload).toFinset⊆s6Step338EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step338EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338EntryF_reserved : s6Step338EntryFBefore.reserve s6Step338EntryFFresh.toFinset=some s6Step338EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step338EntryFFresh,arenaWires]
  · norm_num [s6Step338EntryFBefore,s6Step338EntryFFresh,arenaWires]
  · simp only [s6Step338EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step338EntryF_checked : planRowResizeLog s6Step338EntryFBefore s6Step338EntryFRow 103 s6Step338EntryFFresh=
    some (s6Step338EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩,growRow 795 s6Step338EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step338EntryFBefore s6Step338EntryFAfter s6Step338EntryFRow 103 s6Step338EntryFFresh
    s6Step338EntryF_distinct s6Step338EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step338EntryF_reserved
  have rowEq : WindowRow.mk (s6Step338EntryFRow.payload++s6Step338EntryFFresh) s6Step338EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step338EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338EntryFvAfter : Arena := s6Step338EntryGAfter

private def s6Step338EntryFvBefore : Arena := s6Step338EntryGAfter

private theorem s6Step338EntryFv_Incoming : rowsOwned s6Step338EntryFvBefore [s6Step338EntryFvRow,s6Step338EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step338EntryFRow,s6Step338EntryGRow,s6Step338EntryFvRow,s6Step338EntryGvRow] 2 s6Step338EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step338EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step338EntryFv_Outgoing : rowsOwned s6Step338EntryGvAfter [s6Step338EntryFvOut,s6Step338EntryGvOut] :=
  hmrRows_owned_drop s6Step338EntryGvAfter [s6Step338EntryFOut,s6Step338EntryGOut,s6Step338EntryFvOut,s6Step338EntryGvOut] 2 s6Step338EntryBank_outgoingOwned

private theorem s6Step338EntryFv_distinct : (s6Step338EntryFvRow.sign::s6Step338EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338EntryFv_owned : (s6Step338EntryFvRow.sign::s6Step338EntryFvRow.payload).toFinset⊆s6Step338EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step338EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338EntryFv_reserved : s6Step338EntryFvBefore.reserve s6Step338EntryFvFresh.toFinset=some s6Step338EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step338EntryFvFresh,arenaWires]
  · norm_num [s6Step338EntryFvBefore,s6Step338EntryGAfter,s6Step338EntryFvFresh,arenaWires]
  · simp only [s6Step338EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step338EntryFv_checked : planRowResizeLog s6Step338EntryFvBefore s6Step338EntryFvRow 185 s6Step338EntryFvFresh=
    some (s6Step338EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩,growRow 776 s6Step338EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step338EntryFvBefore s6Step338EntryFvAfter s6Step338EntryFvRow 185 s6Step338EntryFvFresh
    s6Step338EntryFv_distinct s6Step338EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step338EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step338EntryFvRow.payload++s6Step338EntryFvFresh) s6Step338EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step338EntryGBefore : Arena := s6Step338EntryFBefore

private theorem s6Step338EntryG_Incoming : rowsOwned s6Step338EntryGBefore [s6Step338EntryGRow,s6Step338EntryFvRow,s6Step338EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step338EntryFRow,s6Step338EntryGRow,s6Step338EntryFvRow,s6Step338EntryGvRow] 1 s6Step338EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step338EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step338EntryG_Outgoing : rowsOwned s6Step338EntryGvAfter [s6Step338EntryGOut,s6Step338EntryFvOut,s6Step338EntryGvOut] :=
  hmrRows_owned_drop s6Step338EntryGvAfter [s6Step338EntryFOut,s6Step338EntryGOut,s6Step338EntryFvOut,s6Step338EntryGvOut] 1 s6Step338EntryBank_outgoingOwned

private theorem s6Step338EntryG_distinct : (s6Step338EntryGRow.sign::s6Step338EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338EntryG_owned : (s6Step338EntryGRow.sign::s6Step338EntryGRow.payload).toFinset⊆s6Step338EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step338EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338EntryG_reserved : s6Step338EntryGBefore.reserve s6Step338EntryGFresh.toFinset=some s6Step338EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step338EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step338EntryGBefore,s6Step338EntryFBefore,s6Step338EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step338EntryGAfter,s6Step338EntryGBefore,s6Step338EntryFBefore,s6Step338EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step338EntryG_checked : planRowResizeLog s6Step338EntryGBefore s6Step338EntryGRow 103 s6Step338EntryGFresh=
    some (s6Step338EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 802],777⟩,growRow 777 s6Step338EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step338EntryGBefore s6Step338EntryGAfter s6Step338EntryGRow 103 s6Step338EntryGFresh
    s6Step338EntryG_distinct s6Step338EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step338EntryG_reserved
  have rowEq : WindowRow.mk (s6Step338EntryGRow.payload++s6Step338EntryGFresh) s6Step338EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 802],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step338EntryGvBefore : Arena := s6Step338EntryGAfter

private theorem s6Step338EntryGv_Incoming : rowsOwned s6Step338EntryGvBefore [s6Step338EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step338EntryFRow,s6Step338EntryGRow,s6Step338EntryFvRow,s6Step338EntryGvRow] 3 s6Step338EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step338EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step338EntryGv_Outgoing : rowsOwned s6Step338EntryGvAfter [s6Step338EntryGvOut] :=
  hmrRows_owned_drop s6Step338EntryGvAfter [s6Step338EntryFOut,s6Step338EntryGOut,s6Step338EntryFvOut,s6Step338EntryGvOut] 3 s6Step338EntryBank_outgoingOwned

private theorem s6Step338EntryGv_distinct : (s6Step338EntryGvRow.sign::s6Step338EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338EntryGv_owned : (s6Step338EntryGvRow.sign::s6Step338EntryGvRow.payload).toFinset⊆s6Step338EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step338EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338EntryGv_reserved : s6Step338EntryGvBefore.reserve s6Step338EntryGvFresh.toFinset=some s6Step338EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step338EntryGvFresh,arenaWires]
  · norm_num [s6Step338EntryGvBefore,s6Step338EntryGAfter,s6Step338EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step338EntryGvAfter,s6Step338EntryGvBefore,s6Step338EntryGAfter,s6Step338EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step338EntryGv_checked : planRowResizeLog s6Step338EntryGvBefore s6Step338EntryGvRow 185 s6Step338EntryGvFresh=
    some (s6Step338EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867],775⟩,growRow 775 s6Step338EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step338EntryGvBefore s6Step338EntryGvAfter s6Step338EntryGvRow 185 s6Step338EntryGvFresh
    s6Step338EntryGv_distinct s6Step338EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step338EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step338EntryGvRow.payload++s6Step338EntryGvFresh) s6Step338EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step338EntryBank_rows : planWindowRowsLog s6Step338EntryFBefore [(s6Step338EntryFRow,103),(s6Step338EntryGRow,103),(s6Step338EntryFvRow,185),(s6Step338EntryGvRow,185)] [s6Step338EntryFFresh,s6Step338EntryGFresh,s6Step338EntryFvFresh,s6Step338EntryGvFresh]=
    some (s6Step338EntryGvAfter,[s6Step338EntryFOut,s6Step338EntryGOut,s6Step338EntryFvOut,s6Step338EntryGvOut],(growRow 795 s6Step338EntryFFresh ++ (growRow 777 s6Step338EntryGFresh ++ (growRow 776 s6Step338EntryFvFresh ++ (growRow 775 s6Step338EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step338EntryGvAfter [] []=some (s6Step338EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step338EntryGvBefore s6Step338EntryGvAfter s6Step338EntryGvAfter
    s6Step338EntryGvRow s6Step338EntryGvOut 185 s6Step338EntryGvFresh [] [] []
    (growRow 775 s6Step338EntryGvFresh) ([]) s6Step338EntryGv_Incoming s6Step338EntryGv_checked h4 s6Step338EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step338EntryFvBefore s6Step338EntryFvAfter s6Step338EntryGvAfter
    s6Step338EntryFvRow s6Step338EntryFvOut 185 s6Step338EntryFvFresh [(s6Step338EntryGvRow,185)] [s6Step338EntryGvFresh] [s6Step338EntryGvOut]
    (growRow 776 s6Step338EntryFvFresh) ((growRow 775 s6Step338EntryGvFresh ++ [])) s6Step338EntryFv_Incoming s6Step338EntryFv_checked h3 s6Step338EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step338EntryGBefore s6Step338EntryGAfter s6Step338EntryGvAfter
    s6Step338EntryGRow s6Step338EntryGOut 103 s6Step338EntryGFresh [(s6Step338EntryFvRow,185),(s6Step338EntryGvRow,185)] [s6Step338EntryFvFresh,s6Step338EntryGvFresh] [s6Step338EntryFvOut,s6Step338EntryGvOut]
    (growRow 777 s6Step338EntryGFresh) ((growRow 776 s6Step338EntryFvFresh ++ (growRow 775 s6Step338EntryGvFresh ++ []))) s6Step338EntryG_Incoming s6Step338EntryG_checked h2 s6Step338EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step338EntryFBefore s6Step338EntryFAfter s6Step338EntryGvAfter
    s6Step338EntryFRow s6Step338EntryFOut 103 s6Step338EntryFFresh [(s6Step338EntryGRow,103),(s6Step338EntryFvRow,185),(s6Step338EntryGvRow,185)] [s6Step338EntryGFresh,s6Step338EntryFvFresh,s6Step338EntryGvFresh] [s6Step338EntryGOut,s6Step338EntryFvOut,s6Step338EntryGvOut]
    (growRow 795 s6Step338EntryFFresh) ((growRow 777 s6Step338EntryGFresh ++ (growRow 776 s6Step338EntryFvFresh ++ (growRow 775 s6Step338EntryGvFresh ++ [])))) s6Step338EntryF_Incoming s6Step338EntryF_checked h1 s6Step338EntryF_Outgoing
  exact h0

private theorem s6Step338EntryBank_checked : compileHmrBankResizeLog .entry s6Step338EntryFBefore ⟨s6Step338EntryFRow,s6Step338EntryGRow,s6Step338EntryFvRow,s6Step338EntryGvRow⟩ ⟨103,103,185,185⟩ [s6Step338EntryFFresh,s6Step338EntryGFresh,s6Step338EntryFvFresh,s6Step338EntryGvFresh]=
    some (s6Step338EntryGvAfter,⟨s6Step338EntryFOut,s6Step338EntryGOut,s6Step338EntryFvOut,s6Step338EntryGvOut⟩,(growRow 795 s6Step338EntryFFresh ++ (growRow 777 s6Step338EntryGFresh ++ (growRow 776 s6Step338EntryFvFresh ++ (growRow 775 s6Step338EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step338EntryBank_rows]
  rfl

private def s6Step338ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338ExitFBefore : Arena := s6Step338ExitGAfter

private def s6Step338ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 865],795⟩

private def s6Step338ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 805],776⟩

private def s6Step338ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 802, 784],777⟩

private def s6Step338ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 860],775⟩

private theorem s6Step338ExitBank_incomingDistinct : ([s6Step338ExitGRow,s6Step338ExitFRow,s6Step338ExitFvRow,s6Step338ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338ExitF_Incoming : rowsOwned s6Step338ExitFBefore [s6Step338ExitFRow,s6Step338ExitFvRow,s6Step338ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step338ExitGRow,s6Step338ExitFRow,s6Step338ExitFvRow,s6Step338ExitGvRow] 1 s6Step338ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step338ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step338ExitBank_outgoingOwned : rowsOwned s6Step338ExitGvAfter [s6Step338ExitGOut,s6Step338ExitFOut,s6Step338ExitFvOut,s6Step338ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step338ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step338ExitF_Outgoing : rowsOwned s6Step338ExitGvAfter [s6Step338ExitFOut,s6Step338ExitFvOut,s6Step338ExitGvOut] :=
  hmrRows_owned_drop s6Step338ExitGvAfter [s6Step338ExitGOut,s6Step338ExitFOut,s6Step338ExitFvOut,s6Step338ExitGvOut] 1 s6Step338ExitBank_outgoingOwned

private theorem s6Step338ExitF_distinct : (s6Step338ExitFRow.sign::s6Step338ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338ExitF_owned : (s6Step338ExitFRow.sign::s6Step338ExitFRow.payload).toFinset⊆s6Step338ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step338ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338ExitF_retired : s6Step338ExitFBefore.retireSet s6Step338ExitFExtra.toFinset=s6Step338ExitFAfter := by
  unfold Arena.retireSet s6Step338ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step338ExitFBefore,s6Step338ExitGAfter,s6Step338ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step338ExitF_checked : planRowResizeLog s6Step338ExitFBefore s6Step338ExitFRow 103 []=
    some (s6Step338ExitFAfter,s6Step338ExitFOut,shrinkRow 795 s6Step338ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step338ExitFBefore s6Step338ExitFRow 103 s6Step338ExitF_distinct s6Step338ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step338ExitFRow.payload.take 103) s6Step338ExitFRow.sign=s6Step338ExitFOut := by decide +kernel
  have hi : s6Step338ExitFRow.payload.drop 103=s6Step338ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step338ExitF_retired] at result
  exact result

private def s6Step338ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338ExitFvBefore : Arena := s6Step338ExitFAfter

private theorem s6Step338ExitFv_Incoming : rowsOwned s6Step338ExitFvBefore [s6Step338ExitFvRow,s6Step338ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step338ExitGRow,s6Step338ExitFRow,s6Step338ExitFvRow,s6Step338ExitGvRow] 2 s6Step338ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step338ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step338ExitFv_Outgoing : rowsOwned s6Step338ExitGvAfter [s6Step338ExitFvOut,s6Step338ExitGvOut] :=
  hmrRows_owned_drop s6Step338ExitGvAfter [s6Step338ExitGOut,s6Step338ExitFOut,s6Step338ExitFvOut,s6Step338ExitGvOut] 2 s6Step338ExitBank_outgoingOwned

private theorem s6Step338ExitFv_distinct : (s6Step338ExitFvRow.sign::s6Step338ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338ExitFv_owned : (s6Step338ExitFvRow.sign::s6Step338ExitFvRow.payload).toFinset⊆s6Step338ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step338ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338ExitFv_retired : s6Step338ExitFvBefore.retireSet s6Step338ExitFvExtra.toFinset=s6Step338ExitFvAfter := by
  unfold Arena.retireSet s6Step338ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step338ExitFvBefore,s6Step338ExitFAfter,s6Step338ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step338ExitFv_checked : planRowResizeLog s6Step338ExitFvBefore s6Step338ExitFvRow 185 []=
    some (s6Step338ExitFvAfter,s6Step338ExitFvOut,shrinkRow 776 s6Step338ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step338ExitFvBefore s6Step338ExitFvRow 185 s6Step338ExitFv_distinct s6Step338ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step338ExitFvRow.payload.take 185) s6Step338ExitFvRow.sign=s6Step338ExitFvOut := by decide +kernel
  have hi : s6Step338ExitFvRow.payload.drop 185=s6Step338ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step338ExitFv_retired] at result
  exact result

private def s6Step338ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step338ExitG_Incoming : rowsOwned s6Step338ExitGBefore [s6Step338ExitGRow,s6Step338ExitFRow,s6Step338ExitFvRow,s6Step338ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step338ExitGRow,s6Step338ExitFRow,s6Step338ExitFvRow,s6Step338ExitGvRow] 0 s6Step338ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step338ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step338ExitG_Outgoing : rowsOwned s6Step338ExitGvAfter [s6Step338ExitGOut,s6Step338ExitFOut,s6Step338ExitFvOut,s6Step338ExitGvOut] :=
  hmrRows_owned_drop s6Step338ExitGvAfter [s6Step338ExitGOut,s6Step338ExitFOut,s6Step338ExitFvOut,s6Step338ExitGvOut] 0 s6Step338ExitBank_outgoingOwned

private theorem s6Step338ExitG_distinct : (s6Step338ExitGRow.sign::s6Step338ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338ExitG_owned : (s6Step338ExitGRow.sign::s6Step338ExitGRow.payload).toFinset⊆s6Step338ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step338ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338ExitG_retired : s6Step338ExitGBefore.retireSet s6Step338ExitGExtra.toFinset=s6Step338ExitGAfter := by
  unfold Arena.retireSet s6Step338ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step338ExitGBefore,s6Step338ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step338ExitG_checked : planRowResizeLog s6Step338ExitGBefore s6Step338ExitGRow 102 []=
    some (s6Step338ExitGAfter,s6Step338ExitGOut,shrinkRow 777 s6Step338ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step338ExitGBefore s6Step338ExitGRow 102 s6Step338ExitG_distinct s6Step338ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step338ExitGRow.payload.take 102) s6Step338ExitGRow.sign=s6Step338ExitGOut := by decide +kernel
  have hi : s6Step338ExitGRow.payload.drop 102=s6Step338ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step338ExitG_retired] at result
  exact result

private def s6Step338ExitGvBefore : Arena := s6Step338ExitFvAfter

private theorem s6Step338ExitGv_Incoming : rowsOwned s6Step338ExitGvBefore [s6Step338ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step338ExitGRow,s6Step338ExitFRow,s6Step338ExitFvRow,s6Step338ExitGvRow] 3 s6Step338ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step338ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step338ExitGv_Outgoing : rowsOwned s6Step338ExitGvAfter [s6Step338ExitGvOut] :=
  hmrRows_owned_drop s6Step338ExitGvAfter [s6Step338ExitGOut,s6Step338ExitFOut,s6Step338ExitFvOut,s6Step338ExitGvOut] 3 s6Step338ExitBank_outgoingOwned

private theorem s6Step338ExitGv_distinct : (s6Step338ExitGvRow.sign::s6Step338ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338ExitGv_owned : (s6Step338ExitGvRow.sign::s6Step338ExitGvRow.payload).toFinset⊆s6Step338ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step338ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338ExitGv_retired : s6Step338ExitGvBefore.retireSet s6Step338ExitGvExtra.toFinset=s6Step338ExitGvAfter := by
  unfold Arena.retireSet s6Step338ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step338ExitGvBefore,s6Step338ExitFvAfter,s6Step338ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step338ExitGv_checked : planRowResizeLog s6Step338ExitGvBefore s6Step338ExitGvRow 185 []=
    some (s6Step338ExitGvAfter,s6Step338ExitGvOut,shrinkRow 775 s6Step338ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step338ExitGvBefore s6Step338ExitGvRow 185 s6Step338ExitGv_distinct s6Step338ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step338ExitGvRow.payload.take 185) s6Step338ExitGvRow.sign=s6Step338ExitGvOut := by decide +kernel
  have hi : s6Step338ExitGvRow.payload.drop 185=s6Step338ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step338ExitGv_retired] at result
  exact result

private theorem s6Step338ExitBank_rows : planWindowRowsLog s6Step338ExitGBefore [(s6Step338ExitGRow,102),(s6Step338ExitFRow,103),(s6Step338ExitFvRow,185),(s6Step338ExitGvRow,185)] [[],[],[],[]]=
    some (s6Step338ExitGvAfter,[s6Step338ExitGOut,s6Step338ExitFOut,s6Step338ExitFvOut,s6Step338ExitGvOut],(shrinkRow 777 s6Step338ExitGExtra ++ (shrinkRow 795 s6Step338ExitFExtra ++ (shrinkRow 776 s6Step338ExitFvExtra ++ (shrinkRow 775 s6Step338ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step338ExitGvAfter [] []=some (s6Step338ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step338ExitGvBefore s6Step338ExitGvAfter s6Step338ExitGvAfter
    s6Step338ExitGvRow s6Step338ExitGvOut 185 [] [] [] []
    (shrinkRow 775 s6Step338ExitGvExtra) ([]) s6Step338ExitGv_Incoming s6Step338ExitGv_checked h4 s6Step338ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step338ExitFvBefore s6Step338ExitFvAfter s6Step338ExitGvAfter
    s6Step338ExitFvRow s6Step338ExitFvOut 185 [] [(s6Step338ExitGvRow,185)] [[]] [s6Step338ExitGvOut]
    (shrinkRow 776 s6Step338ExitFvExtra) ((shrinkRow 775 s6Step338ExitGvExtra ++ [])) s6Step338ExitFv_Incoming s6Step338ExitFv_checked h3 s6Step338ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step338ExitFBefore s6Step338ExitFAfter s6Step338ExitGvAfter
    s6Step338ExitFRow s6Step338ExitFOut 103 [] [(s6Step338ExitFvRow,185),(s6Step338ExitGvRow,185)] [[],[]] [s6Step338ExitFvOut,s6Step338ExitGvOut]
    (shrinkRow 795 s6Step338ExitFExtra) ((shrinkRow 776 s6Step338ExitFvExtra ++ (shrinkRow 775 s6Step338ExitGvExtra ++ []))) s6Step338ExitF_Incoming s6Step338ExitF_checked h2 s6Step338ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step338ExitGBefore s6Step338ExitGAfter s6Step338ExitGvAfter
    s6Step338ExitGRow s6Step338ExitGOut 102 [] [(s6Step338ExitFRow,103),(s6Step338ExitFvRow,185),(s6Step338ExitGvRow,185)] [[],[],[]] [s6Step338ExitFOut,s6Step338ExitFvOut,s6Step338ExitGvOut]
    (shrinkRow 777 s6Step338ExitGExtra) ((shrinkRow 795 s6Step338ExitFExtra ++ (shrinkRow 776 s6Step338ExitFvExtra ++ (shrinkRow 775 s6Step338ExitGvExtra ++ [])))) s6Step338ExitG_Incoming s6Step338ExitG_checked h1 s6Step338ExitG_Outgoing
  exact h0

private theorem s6Step338ExitBank_checked : compileHmrBankResizeLog .exit s6Step338ExitGBefore ⟨s6Step338ExitFRow,s6Step338ExitGRow,s6Step338ExitFvRow,s6Step338ExitGvRow⟩ ⟨103,102,185,185⟩ [[],[],[],[]]=
    some (s6Step338ExitGvAfter,⟨s6Step338ExitFOut,s6Step338ExitGOut,s6Step338ExitFvOut,s6Step338ExitGvOut⟩,(shrinkRow 777 s6Step338ExitGExtra ++ (shrinkRow 795 s6Step338ExitFExtra ++ (shrinkRow 776 s6Step338ExitFvExtra ++ (shrinkRow 775 s6Step338ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step338ExitBank_rows]
  rfl

private theorem s6Step338Add0_apart : Disjoint s6Step338Add0Arena.live s6Step338Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step338Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338Add0_card : s6Step338Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step338Add0_borrowed : s6Step338Add0Arena.checkBorrow (hmrHybridCount s6Step338Add0Arena s6Step338Add0B.length) s6Step338Add0Work=some s6Step338Add0During := by
  have len : s6Step338Add0Work.length=hmrHybridCount s6Step338Add0Arena s6Step338Add0B.length := by
    rw [hmrHybridCount,s6Step338Add0_card]
    decide +kernel
  have nd : s6Step338Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step338Add0Arena s6Step338Add0During s6Step338Add0Work.toFinset s6Step338Add0_bounded s6Step338Add0_apart rfl

private theorem s6Step338Add0_distinct : (817::843::812::(s6Step338Add0A++s6Step338Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338Add0_owned : (817::843::812::(s6Step338Add0A++s6Step338Add0B)).toFinset⊆s6Step338Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step338Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338Add0_checked : compileHmrHybridCinLog s6Step338Add0Arena 843 817 812 s6Step338Add0A s6Step338Add0B s6Step338Add0Work=some s6Step338Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step338Add0Arena s6Step338Add0During 843 817 812 s6Step338Add0A s6Step338Add0B s6Step338Add0Work
    (by decide +kernel) (by decide +kernel) s6Step338Add0_distinct
    (fun q hq => s6Step338Add0_owned (List.mem_toFinset.mpr hq)) s6Step338Add0_borrowed

private theorem s6Step338Add1_apart : Disjoint s6Step338Add1Arena.live s6Step338Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step338Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338Add1_card : s6Step338Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step338Add1_borrowed : s6Step338Add1Arena.checkBorrow (hmrHybridCount s6Step338Add1Arena s6Step338Add1B.length) s6Step338Add1Work=some s6Step338Add1During := by
  have len : s6Step338Add1Work.length=hmrHybridCount s6Step338Add1Arena s6Step338Add1B.length := by
    rw [hmrHybridCount,s6Step338Add1_card]
    decide +kernel
  have nd : s6Step338Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step338Add1Arena s6Step338Add1During s6Step338Add1Work.toFinset s6Step338Add1_bounded s6Step338Add1_apart rfl

private theorem s6Step338Add1_distinct : (817::843::812::(s6Step338Add1A++s6Step338Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338Add1_owned : (817::843::812::(s6Step338Add1A++s6Step338Add1B)).toFinset⊆s6Step338Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step338Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338Add1_checked : compileHmrHybridCinLog s6Step338Add1Arena 843 817 812 s6Step338Add1A s6Step338Add1B s6Step338Add1Work=some s6Step338Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step338Add1Arena s6Step338Add1During 843 817 812 s6Step338Add1A s6Step338Add1B s6Step338Add1Work
    (by decide +kernel) (by decide +kernel) s6Step338Add1_distinct
    (fun q hq => s6Step338Add1_owned (List.mem_toFinset.mpr hq)) s6Step338Add1_borrowed

private theorem s6Step338F4_apart : Disjoint (s6Step338Add0A++s6Step338Add0B).toFinset (s6Step338Add1A++s6Step338Add1B).toFinset := by
  have nd : ((s6Step338Add0A++s6Step338Add0B)++(s6Step338Add1A++s6Step338Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step338F4_carry : s6Step338F4FlagArena.checkBorrow 1 [812]=some s6Step338Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step338F4FlagArena,s6Step338HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step338F4FlagArena,s6Step338HeadFvAfter,s6Step338Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step338F4_distinct : (907::843::817::812::((s6Step338Add0A++s6Step338Add1A)++(s6Step338Add0B++s6Step338Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338F4_flag : s6Step338HeadFvAfter.checkBorrow 1 [817]=some s6Step338F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step338HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step338F4_owned : (907::843::((s6Step338Add0A++s6Step338Add1A)++(s6Step338Add0B++s6Step338Add1B))).toFinset⊆s6Step338HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step338HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338F4_checked : compileHmrHybridF4Log s6Step338HeadFvAfter 907 843 s6Step338Add0A s6Step338Add0B s6Step338Add1A s6Step338Add1B [817] [812] s6Step338Add0Work s6Step338Add1Work=some s6Step338F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step338HeadFvAfter s6Step338F4FlagArena s6Step338Add0Arena s6Step338Add0During s6Step338Add1During 907 843
    s6Step338Add0A s6Step338Add0B s6Step338Add1A s6Step338Add1B [817] [812] s6Step338Add0Work s6Step338Add1Work
    (fun q hq => s6Step338F4_owned (List.mem_toFinset.mpr hq)) s6Step338F4_flag s6Step338F4_carry
    s6Step338F4_distinct s6Step338F4_apart s6Step338Add0_checked s6Step338Add1_checked

private theorem s6Step338Front_branch : s6Step338FrontSigmaArena.checkBorrow 1 [843]=some s6Step338HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step338FrontSigmaArena,s6Step338EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step338FrontSigmaArena,s6Step338EntryGvAfter,s6Step338HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step338Front_entry : HmrFrontEntryValid s6Step338EntryFBefore s6Step338FrontBank 103 185 ⟨103,102,185,185⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step338FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step338EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step338EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step338FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step338Front_sigma : s6Step338EntryGvAfter.checkBorrow 1 [907]=some s6Step338FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step338EntryGvAfter,arenaWires]
  · rfl

private def s6Step338HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338HeadFBefore : Arena := s6Step338HeadGAfter

private def s6Step338HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step338HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩

private def s6Step338HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 802],777⟩

private def s6Step338HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867],775⟩

private theorem s6Step338HeadBank_incomingDistinct : ([s6Step338HeadGRow,s6Step338HeadFRow,s6Step338HeadGvRow,s6Step338HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338HeadF_Incoming : rowsOwned s6Step338HeadFBefore [s6Step338HeadFRow,s6Step338HeadGvRow,s6Step338HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step338HeadGRow,s6Step338HeadFRow,s6Step338HeadGvRow,s6Step338HeadFvRow] 1 s6Step338HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step338HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step338HeadBank_outgoingOwned : rowsOwned s6Step338HeadFvAfter [s6Step338HeadGOut,s6Step338HeadFOut,s6Step338HeadGvOut,s6Step338HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step338HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step338HeadF_Outgoing : rowsOwned s6Step338HeadFvAfter [s6Step338HeadFOut,s6Step338HeadGvOut,s6Step338HeadFvOut] :=
  hmrRows_owned_drop s6Step338HeadFvAfter [s6Step338HeadGOut,s6Step338HeadFOut,s6Step338HeadGvOut,s6Step338HeadFvOut] 1 s6Step338HeadBank_outgoingOwned

private theorem s6Step338HeadF_distinct : (s6Step338HeadFRow.sign::s6Step338HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338HeadF_owned : (s6Step338HeadFRow.sign::s6Step338HeadFRow.payload).toFinset⊆s6Step338HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step338HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338HeadF_reserved : s6Step338HeadFBefore.reserve s6Step338HeadFFresh.toFinset=some s6Step338HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step338HeadFFresh,arenaWires]
  · norm_num [s6Step338HeadFBefore,s6Step338HeadGAfter,s6Step338HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step338HeadFAfter,s6Step338HeadFBefore,s6Step338HeadGAfter,s6Step338HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step338HeadF_checked : planRowResizeLog s6Step338HeadFBefore s6Step338HeadFRow 104 s6Step338HeadFFresh=
    some (s6Step338HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 865],795⟩,growRow 795 s6Step338HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step338HeadFBefore s6Step338HeadFAfter s6Step338HeadFRow 104 s6Step338HeadFFresh
    s6Step338HeadF_distinct s6Step338HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step338HeadF_reserved
  have rowEq : WindowRow.mk (s6Step338HeadFRow.payload++s6Step338HeadFFresh) s6Step338HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 865],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step338HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step338HeadFvBefore : Arena := s6Step338HeadGvAfter

private theorem s6Step338HeadFv_Incoming : rowsOwned s6Step338HeadFvBefore [s6Step338HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step338HeadGRow,s6Step338HeadFRow,s6Step338HeadGvRow,s6Step338HeadFvRow] 3 s6Step338HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step338HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step338HeadFv_Outgoing : rowsOwned s6Step338HeadFvAfter [s6Step338HeadFvOut] :=
  hmrRows_owned_drop s6Step338HeadFvAfter [s6Step338HeadGOut,s6Step338HeadFOut,s6Step338HeadGvOut,s6Step338HeadFvOut] 3 s6Step338HeadBank_outgoingOwned

private theorem s6Step338HeadFv_distinct : (s6Step338HeadFvRow.sign::s6Step338HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338HeadFv_owned : (s6Step338HeadFvRow.sign::s6Step338HeadFvRow.payload).toFinset⊆s6Step338HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step338HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338HeadFv_reserved : s6Step338HeadFvBefore.reserve s6Step338HeadFvFresh.toFinset=some s6Step338HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step338HeadFvFresh,arenaWires]
  · norm_num [s6Step338HeadFvBefore,s6Step338HeadGvAfter,s6Step338HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step338HeadFvAfter,s6Step338HeadFvBefore,s6Step338HeadGvAfter,s6Step338HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step338HeadFv_checked : planRowResizeLog s6Step338HeadFvBefore s6Step338HeadFvRow 186 s6Step338HeadFvFresh=
    some (s6Step338HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 805],776⟩,growRow 776 s6Step338HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step338HeadFvBefore s6Step338HeadFvAfter s6Step338HeadFvRow 186 s6Step338HeadFvFresh
    s6Step338HeadFv_distinct s6Step338HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step338HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step338HeadFvRow.payload++s6Step338HeadFvFresh) s6Step338HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 805],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step338HeadG_Incoming : rowsOwned s6Step338HeadGBefore [s6Step338HeadGRow,s6Step338HeadFRow,s6Step338HeadGvRow,s6Step338HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step338HeadGRow,s6Step338HeadFRow,s6Step338HeadGvRow,s6Step338HeadFvRow] 0 s6Step338HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step338HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step338HeadG_Outgoing : rowsOwned s6Step338HeadFvAfter [s6Step338HeadGOut,s6Step338HeadFOut,s6Step338HeadGvOut,s6Step338HeadFvOut] :=
  hmrRows_owned_drop s6Step338HeadFvAfter [s6Step338HeadGOut,s6Step338HeadFOut,s6Step338HeadGvOut,s6Step338HeadFvOut] 0 s6Step338HeadBank_outgoingOwned

private theorem s6Step338HeadG_distinct : (s6Step338HeadGRow.sign::s6Step338HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338HeadG_owned : (s6Step338HeadGRow.sign::s6Step338HeadGRow.payload).toFinset⊆s6Step338HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step338HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338HeadG_reserved : s6Step338HeadGBefore.reserve s6Step338HeadGFresh.toFinset=some s6Step338HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step338HeadGFresh,arenaWires]
  · norm_num [s6Step338HeadGBefore,s6Step338HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step338HeadGAfter,s6Step338HeadGBefore,s6Step338HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step338HeadG_checked : planRowResizeLog s6Step338HeadGBefore s6Step338HeadGRow 104 s6Step338HeadGFresh=
    some (s6Step338HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 802, 784],777⟩,growRow 777 s6Step338HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step338HeadGBefore s6Step338HeadGAfter s6Step338HeadGRow 104 s6Step338HeadGFresh
    s6Step338HeadG_distinct s6Step338HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step338HeadG_reserved
  have rowEq : WindowRow.mk (s6Step338HeadGRow.payload++s6Step338HeadGFresh) s6Step338HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 802, 784],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step338HeadGvBefore : Arena := s6Step338HeadFAfter

private theorem s6Step338HeadGv_Incoming : rowsOwned s6Step338HeadGvBefore [s6Step338HeadGvRow,s6Step338HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step338HeadGRow,s6Step338HeadFRow,s6Step338HeadGvRow,s6Step338HeadFvRow] 2 s6Step338HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step338HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step338HeadGv_Outgoing : rowsOwned s6Step338HeadFvAfter [s6Step338HeadGvOut,s6Step338HeadFvOut] :=
  hmrRows_owned_drop s6Step338HeadFvAfter [s6Step338HeadGOut,s6Step338HeadFOut,s6Step338HeadGvOut,s6Step338HeadFvOut] 2 s6Step338HeadBank_outgoingOwned

private theorem s6Step338HeadGv_distinct : (s6Step338HeadGvRow.sign::s6Step338HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step338HeadGv_owned : (s6Step338HeadGvRow.sign::s6Step338HeadGvRow.payload).toFinset⊆s6Step338HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step338HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step338HeadGv_reserved : s6Step338HeadGvBefore.reserve s6Step338HeadGvFresh.toFinset=some s6Step338HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step338HeadGvFresh,arenaWires]
  · norm_num [s6Step338HeadGvBefore,s6Step338HeadFAfter,s6Step338HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step338HeadGvAfter,s6Step338HeadGvBefore,s6Step338HeadFAfter,s6Step338HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step338HeadGv_checked : planRowResizeLog s6Step338HeadGvBefore s6Step338HeadGvRow 186 s6Step338HeadGvFresh=
    some (s6Step338HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 860],775⟩,growRow 775 s6Step338HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step338HeadGvBefore s6Step338HeadGvAfter s6Step338HeadGvRow 186 s6Step338HeadGvFresh
    s6Step338HeadGv_distinct s6Step338HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step338HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step338HeadGvRow.payload++s6Step338HeadGvFresh) s6Step338HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 860],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step338HeadBank_rows : planWindowRowsLog s6Step338HeadGBefore [(s6Step338HeadGRow,104),(s6Step338HeadFRow,104),(s6Step338HeadGvRow,186),(s6Step338HeadFvRow,186)] [s6Step338HeadGFresh,s6Step338HeadFFresh,s6Step338HeadGvFresh,s6Step338HeadFvFresh]=
    some (s6Step338HeadFvAfter,[s6Step338HeadGOut,s6Step338HeadFOut,s6Step338HeadGvOut,s6Step338HeadFvOut],(growRow 777 s6Step338HeadGFresh ++ (growRow 795 s6Step338HeadFFresh ++ (growRow 775 s6Step338HeadGvFresh ++ (growRow 776 s6Step338HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step338HeadFvAfter [] []=some (s6Step338HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step338HeadFvBefore s6Step338HeadFvAfter s6Step338HeadFvAfter
    s6Step338HeadFvRow s6Step338HeadFvOut 186 s6Step338HeadFvFresh [] [] []
    (growRow 776 s6Step338HeadFvFresh) ([]) s6Step338HeadFv_Incoming s6Step338HeadFv_checked h4 s6Step338HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step338HeadGvBefore s6Step338HeadGvAfter s6Step338HeadFvAfter
    s6Step338HeadGvRow s6Step338HeadGvOut 186 s6Step338HeadGvFresh [(s6Step338HeadFvRow,186)] [s6Step338HeadFvFresh] [s6Step338HeadFvOut]
    (growRow 775 s6Step338HeadGvFresh) ((growRow 776 s6Step338HeadFvFresh ++ [])) s6Step338HeadGv_Incoming s6Step338HeadGv_checked h3 s6Step338HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step338HeadFBefore s6Step338HeadFAfter s6Step338HeadFvAfter
    s6Step338HeadFRow s6Step338HeadFOut 104 s6Step338HeadFFresh [(s6Step338HeadGvRow,186),(s6Step338HeadFvRow,186)] [s6Step338HeadGvFresh,s6Step338HeadFvFresh] [s6Step338HeadGvOut,s6Step338HeadFvOut]
    (growRow 795 s6Step338HeadFFresh) ((growRow 775 s6Step338HeadGvFresh ++ (growRow 776 s6Step338HeadFvFresh ++ []))) s6Step338HeadF_Incoming s6Step338HeadF_checked h2 s6Step338HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step338HeadGBefore s6Step338HeadGAfter s6Step338HeadFvAfter
    s6Step338HeadGRow s6Step338HeadGOut 104 s6Step338HeadGFresh [(s6Step338HeadFRow,104),(s6Step338HeadGvRow,186),(s6Step338HeadFvRow,186)] [s6Step338HeadFFresh,s6Step338HeadGvFresh,s6Step338HeadFvFresh] [s6Step338HeadFOut,s6Step338HeadGvOut,s6Step338HeadFvOut]
    (growRow 777 s6Step338HeadGFresh) ((growRow 795 s6Step338HeadFFresh ++ (growRow 775 s6Step338HeadGvFresh ++ (growRow 776 s6Step338HeadFvFresh ++ [])))) s6Step338HeadG_Incoming s6Step338HeadG_checked h1 s6Step338HeadG_Outgoing
  exact h0

private theorem s6Step338HeadBank_checked : compileHmrBankResizeLog .headroom s6Step338HeadGBefore ⟨s6Step338HeadFRow,s6Step338HeadGRow,s6Step338HeadFvRow,s6Step338HeadGvRow⟩ ⟨104,104,186,186⟩ [s6Step338HeadGFresh,s6Step338HeadFFresh,s6Step338HeadGvFresh,s6Step338HeadFvFresh]=
    some (s6Step338HeadFvAfter,⟨s6Step338HeadFOut,s6Step338HeadGOut,s6Step338HeadFvOut,s6Step338HeadGvOut⟩,(growRow 777 s6Step338HeadGFresh ++ (growRow 795 s6Step338HeadFFresh ++ (growRow 775 s6Step338HeadGvFresh ++ (growRow 776 s6Step338HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step338HeadBank_rows]
  rfl

private theorem s6Step338Front_checked : compileHmrSourceFrontLog s6Step338EntryFBefore s6Step338FrontBank 103 185 ⟨103,102,185,185⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step338FrontLog=some s6Step338FrontPlan := by
  have pairEq : s6Step338FrontPair=⟨s6Step338HeadFRow,s6Step338HeadGRow,s6Step338HeadFvRow,s6Step338HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step338FrontHead=⟨s6Step338ExitFRow,s6Step338ExitGRow,s6Step338ExitFvRow,s6Step338ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step338Add0A=s6Step338FrontHead.f.wires := by decide +kernel
  have gEq : s6Step338Add0B=s6Step338FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step338Add1A=s6Step338FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step338Add1B=s6Step338FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step338EntryFBefore s6Step338FrontBank 103 185 ⟨103,102,185,185⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step338FrontLog s6Step338FrontPlan
  · exact s6Step338Front_entry
  · exact s6Step338EntryBank_checked
  · exact s6Step338Front_sigma
  · rfl
  · exact s6Step338Front_branch
  · rfl
  · simpa only [s6Step338FrontPlan,pairEq] using s6Step338HeadBank_checked
  · simpa only [s6Step338FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step338F4_checked
  · exact s6Step338Counter_checked
  · rfl
  · simpa only [s6Step338FrontPlan,headEq] using s6Step338ExitBank_checked

private theorem s6Step338Complete_explicit_checked : compileHmrEarlyStepLog s6Step338EntryFBefore s6Step338FrontBank 103 185 ⟨103,102,185,185⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step338CompleteLog=some s6Step338CompletePlan := by
  let Q := s6Step338EarlyControlPlan
  have hq := s6Step338EarlyControl_plan_checked
  have fv1 : s6Step338CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step338CompleteOut.fv.payload[2]?.getD s6Step338CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step338CompleteOut.fv.payload[3]?.getD s6Step338CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step338CompleteOut.fv.payload[4]?.getD s6Step338CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step338EntryFBefore s6Step338EarlyControlArena s6Step338FrontBank 103 185 ⟨103,102,185,185⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step338CompleteLog s6Step338FrontPlan Q
    s6Step338Front_checked s6Step338Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step338Complete_owned s6Step338Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step338EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 s6Step338CompleteOut.fv.second (s6Step338CompleteOut.fv.payload[2]?.getD s6Step338CompleteOut.fv.sign) (s6Step338CompleteOut.fv.payload[3]?.getD s6Step338CompleteOut.fv.sign) (s6Step338CompleteOut.fv.payload[4]?.getD s6Step338CompleteOut.fv.sign) 843 60 s6Step338EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep338Arena : Arena := s6Step338EntryFBefore
def s6PrivateStep338Bank : WindowBank := s6Step338FrontBank
def s6PrivateStep338Spec : HmrSourceWalkStepLog := ⟨103,185,⟨103,102,185,185⟩,60,.early s6Step338CompleteLog⟩
def s6PrivateStep338Plan : HmrSourceStepPlan := .early s6Step338CompletePlan
theorem s6PrivateStep338_source : s6PrivateStep338Spec=s6ObservedLogs336[2] := rfl
theorem s6PrivateStep338_checked : compileHmrSourceStepLog s6PrivateStep338Arena s6PrivateStep338Bank
    s6PrivateStep338Spec.fgWidth s6PrivateStep338Spec.vWidth s6PrivateStep338Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 338 s6PrivateStep338Spec.need none s6PrivateStep338Spec.log=some s6PrivateStep338Plan := by
  change compileHmrSourceStepLog s6Step338EntryFBefore s6Step338FrontBank 103 185 ⟨103,102,185,185⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 338 60 none (.early s6Step338CompleteLog)=some (.early s6Step338CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 338<498)]
  rw [s6Step338Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
