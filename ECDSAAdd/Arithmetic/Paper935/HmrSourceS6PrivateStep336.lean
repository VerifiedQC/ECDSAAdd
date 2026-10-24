import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep334
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

private def s6Step336CompleteMoves : List (Wire × Wire) := [(802,102)]

private def s6Step336EarlyControlLog : HmrEarlyControlLog := ⟨[802, 903, 865, 843, 907],[838],[860],[805, 817, 812, 915, 906, 792],[]⟩

private def s6Step336FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [903]],[[838], [907], [865], [843]],[[], [], [], []]⟩,[874],[784],[860],[805],[817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812]⟩

private def s6Step336CompleteLog : HmrEarlyStepLog := ⟨s6Step336FrontLog,s6Step336CompleteMoves,s6Step336EarlyControlLog⟩

private def s6Step336ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step336ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩

private def s6Step336ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101],777⟩

private def s6Step336ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780],775⟩

private def s6Step336FrontOut : WindowBank := ⟨s6Step336ExitFOut,s6Step336ExitGOut,s6Step336ExitFvOut,s6Step336ExitGvOut⟩

private def s6Step336CompleteOut : WindowBank := s6Step336FrontOut.repacked s6Step336CompleteMoves

private def s6Step336EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step336EarlyControlPositiveArena,[838],s6Step336EarlyControlEqualityArena,[860],⟨⟨874,false⟩,[⟨⟨838,false⟩,860⟩]⟩⟩

private def s6Step336EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,802⟩,⟨⟨772,false⟩,903⟩,⟨⟨771,false⟩,865⟩,⟨⟨770,false⟩,843⟩,⟨⟨769,false⟩,907⟩]⟩

private def s6Step336EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step336EarlyControlZeroArena,s6Step336EarlyControlZeroPlan,s6Step336EarlyControlClassPlan,s6Step336EarlyControlFlagArena,s6Step336EarlyControlFittedArena,s6Step336EarlyControlHistoryArena,s6Step336EarlyControlSigmaArena,s6Step336EarlyControlOutputArena,s6Step336EarlyControlLog⟩

private def s6Step336CounterWork : List Wire := [860, 805, 817, 812]

private theorem s6Step336Counter_bounded : s6Step336CounterWork.toFinset⊆arenaWires := by norm_num [s6Step336CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step336HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336CounterDuring : Arena := ⟨s6Step336HeadFvAfter.live∪s6Step336CounterWork.toFinset,Finset.union_subset s6Step336HeadFvAfter.bounded s6Step336Counter_bounded⟩

private def s6Step336EntryFFresh : List Wire := []

private def s6Step336EntryFvFresh : List Wire := []

private def s6Step336EntryGFresh : List Wire := []

private def s6Step336EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336EntryGvFresh : List Wire := [903]

private def s6Step336ExitFExtra : List Wire := [907]

private def s6Step336ExitFvExtra : List Wire := [843]

private def s6Step336ExitGExtra : List Wire := [102, 838]

private def s6Step336ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336ExitGvExtra : List Wire := [903, 865]

private def s6Step336Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336Add0Work : List Wire := [817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step336Add0_bounded : s6Step336Add0Work.toFinset⊆arenaWires := by
  have h : s6Step336Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step336Add0During : Arena := ⟨s6Step336Add0Arena.live∪s6Step336Add0Work.toFinset,Finset.union_subset s6Step336Add0Arena.bounded s6Step336Add0_bounded⟩

private def s6Step336Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336Add1Work : List Wire := [817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step336Add1_bounded : s6Step336Add1Work.toFinset⊆arenaWires := by
  have h : s6Step336Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step336Add1During : Arena := ⟨s6Step336Add1Arena.live∪s6Step336Add1Work.toFinset,Finset.union_subset s6Step336Add1Arena.bounded s6Step336Add1_bounded⟩

private def s6Step336F4FlagArena : Arena := ⟨s6Step336HeadFvAfter.live∪{860},Finset.union_subset s6Step336HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step336F4Plan : HmrHybridF4Plan := ⟨s6Step336F4FlagArena,[860],s6Step336Add0Arena,[805],s6Step336Add0During,s6Step336Add0Work,s6Step336Add1During,s6Step336Add1Work⟩

private def s6Step336HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 907],795⟩

private def s6Step336HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 843],776⟩

private def s6Step336HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 838],777⟩

private def s6Step336HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 903, 865],775⟩

private def s6Step336FrontHead : WindowBank := ⟨s6Step336HeadFOut,s6Step336HeadGOut,s6Step336HeadFvOut,s6Step336HeadGvOut⟩

private def s6Step336EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step336EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩

private def s6Step336EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],777⟩

private def s6Step336EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 903],775⟩

private def s6Step336FrontPair : WindowBank := ⟨s6Step336EntryFOut,s6Step336EntryGOut,s6Step336EntryFvOut,s6Step336EntryGvOut⟩

private def s6Step336FrontSigmaArena : Arena := ⟨s6Step336EntryGvAfter.live∪{874},Finset.union_subset s6Step336EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step336HeadFFresh : List Wire := [907]

private def s6Step336HeadFvFresh : List Wire := [843]

private def s6Step336HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336HeadGFresh : List Wire := [838]

private def s6Step336HeadGvFresh : List Wire := [865]

private def s6Step336FrontPlan : HmrSourceFront := ⟨s6Step336EntryGvAfter,s6Step336FrontPair,(growRow 795 s6Step336EntryFFresh ++ (growRow 777 s6Step336EntryGFresh ++ (growRow 776 s6Step336EntryFvFresh ++ (growRow 775 s6Step336EntryGvFresh ++ [])))),s6Step336FrontSigmaArena,[874],s6Step336HeadGBefore,[784],
  s6Step336HeadFvAfter,s6Step336FrontHead,(growRow 777 s6Step336HeadGFresh ++ (growRow 795 s6Step336HeadFFresh ++ (growRow 775 s6Step336HeadGvFresh ++ (growRow 776 s6Step336HeadFvFresh ++ [])))),s6Step336F4Plan,s6Step336CounterDuring,s6Step336CounterWork,s6Step336ExitGvAfter,s6Step336FrontOut,(shrinkRow 777 s6Step336ExitGExtra ++ (shrinkRow 795 s6Step336ExitFExtra ++ (shrinkRow 776 s6Step336ExitFvExtra ++ (shrinkRow 775 s6Step336ExitGvExtra ++ []))))⟩

private def s6Step336CompletePlan : HmrEarlyStepPlan := ⟨s6Step336FrontPlan,s6Step336EarlyControlArena,s6Step336EarlyControlPlan,s6Step336CompleteMoves⟩

private theorem s6Step336Complete_apart : List.Disjoint (s6Step336CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [874, 784, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step336CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[874, 784, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step336Complete_owned : (s6Step336CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step336EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step336EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step336CompleteMoveArena : Arena := ⟨s6Step336ExitGvAfter.live∪{102},Finset.union_subset s6Step336ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step336Complete_repack : s6Step336ExitGvAfter.checkRepack s6Step336CompleteMoves=some s6Step336EarlyControlArena := by
  have owned : 802∈s6Step336ExitGvAfter.live := by norm_num [s6Step336ExitGvAfter,arenaWires]
  have reserve : s6Step336ExitGvAfter.reserve {102}=some s6Step336CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step336ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step336CompleteMoveArena.retireSet {802}=s6Step336EarlyControlArena := by
    unfold Arena.retireSet s6Step336EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step336CompleteMoveArena,s6Step336ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step336CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step336CompleteMoveArena.retireSet {802}).checkRepack []=some s6Step336EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step336EarlyControl_branchOwned : ([784] : List Wire).toFinset⊆s6Step336EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step336EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336EarlyControl_branch : compileHmrBranchRetirement s6Step336EarlyControlSigmaArena 784=some s6Step336EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step336EarlyControl_branchOwned
  · ext q
    simp [s6Step336EarlyControlOutputArena,s6Step336EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step336EarlyControl_classEqualityBorrow : s6Step336EarlyControlPositiveArena.checkBorrow (([874, 838] : List Wire).length-1) s6Step336EarlyControlLog.classWork=some s6Step336EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step336EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step336EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step336EarlyControlEqualityArena,s6Step336EarlyControlPositiveArena,s6Step336EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step336EarlyControl_classEqualityOwned : ([874, 838] : List Wire).toFinset⊆s6Step336EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step336EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336EarlyControl_classEquality : compileHmrEqualityLog s6Step336EarlyControlPositiveArena [874, 838] 0 s6Step336EarlyControlLog.classWork=some (s6Step336EarlyControlEqualityArena,s6Step336EarlyControlLog.classWork,s6Step336EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step336EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step336EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step336EarlyControl_classOwned : ([769, 907, 874] : List Wire).toFinset⊆s6Step336EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step336EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336EarlyControl_positiveBorrow : s6Step336EarlyControlZeroArena.checkBorrow (1) s6Step336EarlyControlLog.positiveWork=some s6Step336EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step336EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step336EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step336EarlyControlPositiveArena,s6Step336EarlyControlZeroArena,s6Step336EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step336EarlyControl_class : compileHmrSourceClassLog s6Step336EarlyControlZeroArena false 769 s6Step336EarlyControlZeroPlan.top 0 874 s6Step336EarlyControlLog.positiveWork s6Step336EarlyControlLog.classWork=some s6Step336EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step336EarlyControlClassPlan s6Step336EarlyControlZeroArena false 769 s6Step336EarlyControlZeroPlan.top 0 874
  constructor
  · decide +kernel
  · exact s6Step336EarlyControl_classOwned
  · exact s6Step336EarlyControl_positiveBorrow
  · exact s6Step336EarlyControl_classEquality

private theorem s6Step336EarlyControl_entryRecordOwned : ([784, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step336EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step336EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336EarlyControl_entrySigmaOwned : ([874, 254] : List Wire).toFinset⊆s6Step336EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step336EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336EarlyControl_fitBorrow : s6Step336EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step336EarlyControlLog.recordFresh=some s6Step336EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step336EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step336EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step336EarlyControlFittedArena,s6Step336EarlyControlFlagArena,s6Step336EarlyControlLog,arenaWires]

private theorem s6Step336EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step336EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step336EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336EarlyControl_fit : compileHmrRecordGrowLog s6Step336EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step336EarlyControlLog.recordFresh=some s6Step336EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step336EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step336EarlyControl_fitBorrow

private theorem s6Step336EarlyControl_flagsBorrow : s6Step336EarlyControlEqualityArena.checkBorrow (6) s6Step336EarlyControlLog.flagWork=some s6Step336EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step336EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step336EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step336EarlyControlFlagArena,s6Step336EarlyControlEqualityArena,s6Step336EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step336EarlyControl_flagsOwned : ([860, 253, 252, 251] : List Wire).toFinset⊆s6Step336EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step336EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336EarlyControl_flags : compileHmrFlagsLog s6Step336EarlyControlClassPlan.equalityArena s6Step336EarlyControlClassPlan.equality.top 253 252 251 s6Step336EarlyControlLog.flagWork=some s6Step336EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step336EarlyControl_flagsOwned⟩
  · exact s6Step336EarlyControl_flagsBorrow

private theorem s6Step336EarlyControl_historyBorrow : s6Step336EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step336EarlyControlLog.recordFresh=some s6Step336EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step336EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step336EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step336EarlyControlHistoryArena,s6Step336EarlyControlArena,s6Step336EarlyControlLog,arenaWires]

private theorem s6Step336EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step336EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step336EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336EarlyControl_history : compileHmrRecordGrowLog s6Step336EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step336EarlyControlLog.recordFresh=some s6Step336EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step336EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step336EarlyControl_historyBorrow

private theorem s6Step336EarlyControl_sigmaOwned : ([254, 874] : List Wire).toFinset⊆s6Step336EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step336EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336EarlyControl_sigmaReleaseOwned : ([874] : List Wire).toFinset⊆s6Step336EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step336EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336EarlyControl_sigmaRelease : s6Step336EarlyControlHistoryArena.release {874} (fun _ => false)=some s6Step336EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step336EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step336EarlyControlSigmaArena,s6Step336EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step336EarlyControl_sigma : compileHmrSigmaDropLog s6Step336EarlyControlHistoryArena false 0 0 254 874 []=some s6Step336EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step336EarlyControl_sigmaOwned⟩
  · exact s6Step336EarlyControl_sigmaRelease

private theorem s6Step336EarlyControl_zeroBorrow : s6Step336EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step336EarlyControlLog.zeroWork=some s6Step336EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step336EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step336EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step336EarlyControlZeroArena,s6Step336EarlyControlArena,s6Step336EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step336EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step336EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step336EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336EarlyControl_zero : compileHmrEqualityLog s6Step336EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step336EarlyControlLog.zeroWork=some (s6Step336EarlyControlZeroArena,s6Step336EarlyControlLog.zeroWork,s6Step336EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step336EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step336EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step336EarlyControl_logged : s6Step336EarlyControlPlan.Logged s6Step336EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 254 253 252 251 784 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step336EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step336EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step336EarlyControl_zero
  · exact s6Step336EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step336EarlyControl_flags
  · exact s6Step336EarlyControl_fit
  · exact s6Step336EarlyControl_history
  · exact s6Step336EarlyControl_sigma
  · exact s6Step336EarlyControl_branch

private theorem s6Step336EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step336EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 254 253 252 251 784 60 s6Step336EarlyControlLog=some s6Step336EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step336EarlyControlPlan s6Step336EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 254 253 252 251 784 60 s6Step336EarlyControl_logged

private def s6Step336EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step336EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩

private def s6Step336EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],777⟩

private def s6Step336EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780],775⟩

private def s6Step336FrontBank : WindowBank := ⟨s6Step336EntryFRow,s6Step336EntryGRow,s6Step336EntryFvRow,s6Step336EntryGvRow⟩

private def s6Step336Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 907, 795]

private def s6Step336Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 838, 777]

private def s6Step336Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 843, 776]

private def s6Step336Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 903, 865, 775]

private theorem s6Step336Counter_apart : Disjoint s6Step336HeadFvAfter.live s6Step336CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step336HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336Counter_borrowed : s6Step336HeadFvAfter.checkBorrow 4 s6Step336CounterWork=some s6Step336CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step336HeadFvAfter s6Step336CounterDuring s6Step336CounterWork.toFinset s6Step336Counter_bounded s6Step336Counter_apart rfl

private theorem s6Step336Counter_owned : (874::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step336HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step336HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336Counter_checked : compileHmrCounterStepLog s6Step336HeadFvAfter true 874 [774, 773, 772, 771, 770, 769] s6Step336CounterWork=some s6Step336CounterDuring := by
  have owned : ∀q∈874::[774, 773, 772, 771, 770, 769],q∈s6Step336HeadFvAfter.live := fun q hq => s6Step336Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step336Counter_borrowed

private def s6Step336EntryFAfter : Arena := s6Step336EntryFBefore

private theorem s6Step336EntryBank_incomingDistinct : ([s6Step336EntryFRow,s6Step336EntryGRow,s6Step336EntryFvRow,s6Step336EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336EntryF_Incoming : rowsOwned s6Step336EntryFBefore [s6Step336EntryFRow,s6Step336EntryGRow,s6Step336EntryFvRow,s6Step336EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step336EntryFRow,s6Step336EntryGRow,s6Step336EntryFvRow,s6Step336EntryGvRow] 0 s6Step336EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step336EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step336EntryBank_outgoingOwned : rowsOwned s6Step336EntryGvAfter [s6Step336EntryFOut,s6Step336EntryGOut,s6Step336EntryFvOut,s6Step336EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step336EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step336EntryF_Outgoing : rowsOwned s6Step336EntryGvAfter [s6Step336EntryFOut,s6Step336EntryGOut,s6Step336EntryFvOut,s6Step336EntryGvOut] :=
  hmrRows_owned_drop s6Step336EntryGvAfter [s6Step336EntryFOut,s6Step336EntryGOut,s6Step336EntryFvOut,s6Step336EntryGvOut] 0 s6Step336EntryBank_outgoingOwned

private theorem s6Step336EntryF_distinct : (s6Step336EntryFRow.sign::s6Step336EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336EntryF_owned : (s6Step336EntryFRow.sign::s6Step336EntryFRow.payload).toFinset⊆s6Step336EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step336EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336EntryF_reserved : s6Step336EntryFBefore.reserve s6Step336EntryFFresh.toFinset=some s6Step336EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step336EntryFFresh,arenaWires]
  · norm_num [s6Step336EntryFBefore,s6Step336EntryFFresh,arenaWires]
  · simp only [s6Step336EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step336EntryF_checked : planRowResizeLog s6Step336EntryFBefore s6Step336EntryFRow 103 s6Step336EntryFFresh=
    some (s6Step336EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩,growRow 795 s6Step336EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step336EntryFBefore s6Step336EntryFAfter s6Step336EntryFRow 103 s6Step336EntryFFresh
    s6Step336EntryF_distinct s6Step336EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step336EntryF_reserved
  have rowEq : WindowRow.mk (s6Step336EntryFRow.payload++s6Step336EntryFFresh) s6Step336EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step336EntryFvAfter : Arena := s6Step336EntryFBefore

private def s6Step336EntryFvBefore : Arena := s6Step336EntryFBefore

private theorem s6Step336EntryFv_Incoming : rowsOwned s6Step336EntryFvBefore [s6Step336EntryFvRow,s6Step336EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step336EntryFRow,s6Step336EntryGRow,s6Step336EntryFvRow,s6Step336EntryGvRow] 2 s6Step336EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step336EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step336EntryFv_Outgoing : rowsOwned s6Step336EntryGvAfter [s6Step336EntryFvOut,s6Step336EntryGvOut] :=
  hmrRows_owned_drop s6Step336EntryGvAfter [s6Step336EntryFOut,s6Step336EntryGOut,s6Step336EntryFvOut,s6Step336EntryGvOut] 2 s6Step336EntryBank_outgoingOwned

private theorem s6Step336EntryFv_distinct : (s6Step336EntryFvRow.sign::s6Step336EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336EntryFv_owned : (s6Step336EntryFvRow.sign::s6Step336EntryFvRow.payload).toFinset⊆s6Step336EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step336EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336EntryFv_reserved : s6Step336EntryFvBefore.reserve s6Step336EntryFvFresh.toFinset=some s6Step336EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step336EntryFvFresh,arenaWires]
  · norm_num [s6Step336EntryFvBefore,s6Step336EntryFBefore,s6Step336EntryFvFresh,arenaWires]
  · simp only [s6Step336EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step336EntryFv_checked : planRowResizeLog s6Step336EntryFvBefore s6Step336EntryFvRow 184 s6Step336EntryFvFresh=
    some (s6Step336EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩,growRow 776 s6Step336EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step336EntryFvBefore s6Step336EntryFvAfter s6Step336EntryFvRow 184 s6Step336EntryFvFresh
    s6Step336EntryFv_distinct s6Step336EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step336EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step336EntryFvRow.payload++s6Step336EntryFvFresh) s6Step336EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step336EntryGAfter : Arena := s6Step336EntryFBefore

private def s6Step336EntryGBefore : Arena := s6Step336EntryFBefore

private theorem s6Step336EntryG_Incoming : rowsOwned s6Step336EntryGBefore [s6Step336EntryGRow,s6Step336EntryFvRow,s6Step336EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step336EntryFRow,s6Step336EntryGRow,s6Step336EntryFvRow,s6Step336EntryGvRow] 1 s6Step336EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step336EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step336EntryG_Outgoing : rowsOwned s6Step336EntryGvAfter [s6Step336EntryGOut,s6Step336EntryFvOut,s6Step336EntryGvOut] :=
  hmrRows_owned_drop s6Step336EntryGvAfter [s6Step336EntryFOut,s6Step336EntryGOut,s6Step336EntryFvOut,s6Step336EntryGvOut] 1 s6Step336EntryBank_outgoingOwned

private theorem s6Step336EntryG_distinct : (s6Step336EntryGRow.sign::s6Step336EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336EntryG_owned : (s6Step336EntryGRow.sign::s6Step336EntryGRow.payload).toFinset⊆s6Step336EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step336EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336EntryG_reserved : s6Step336EntryGBefore.reserve s6Step336EntryGFresh.toFinset=some s6Step336EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step336EntryGFresh,arenaWires]
  · norm_num [s6Step336EntryGBefore,s6Step336EntryFBefore,s6Step336EntryGFresh,arenaWires]
  · simp only [s6Step336EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step336EntryG_checked : planRowResizeLog s6Step336EntryGBefore s6Step336EntryGRow 103 s6Step336EntryGFresh=
    some (s6Step336EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],777⟩,growRow 777 s6Step336EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step336EntryGBefore s6Step336EntryGAfter s6Step336EntryGRow 103 s6Step336EntryGFresh
    s6Step336EntryG_distinct s6Step336EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step336EntryG_reserved
  have rowEq : WindowRow.mk (s6Step336EntryGRow.payload++s6Step336EntryGFresh) s6Step336EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step336EntryGvBefore : Arena := s6Step336EntryFBefore

private theorem s6Step336EntryGv_Incoming : rowsOwned s6Step336EntryGvBefore [s6Step336EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step336EntryFRow,s6Step336EntryGRow,s6Step336EntryFvRow,s6Step336EntryGvRow] 3 s6Step336EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step336EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step336EntryGv_Outgoing : rowsOwned s6Step336EntryGvAfter [s6Step336EntryGvOut] :=
  hmrRows_owned_drop s6Step336EntryGvAfter [s6Step336EntryFOut,s6Step336EntryGOut,s6Step336EntryFvOut,s6Step336EntryGvOut] 3 s6Step336EntryBank_outgoingOwned

private theorem s6Step336EntryGv_distinct : (s6Step336EntryGvRow.sign::s6Step336EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336EntryGv_owned : (s6Step336EntryGvRow.sign::s6Step336EntryGvRow.payload).toFinset⊆s6Step336EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step336EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336EntryGv_reserved : s6Step336EntryGvBefore.reserve s6Step336EntryGvFresh.toFinset=some s6Step336EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step336EntryGvFresh,arenaWires]
  · norm_num [s6Step336EntryGvBefore,s6Step336EntryFBefore,s6Step336EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step336EntryGvAfter,s6Step336EntryGvBefore,s6Step336EntryFBefore,s6Step336EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step336EntryGv_checked : planRowResizeLog s6Step336EntryGvBefore s6Step336EntryGvRow 184 s6Step336EntryGvFresh=
    some (s6Step336EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 903],775⟩,growRow 775 s6Step336EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step336EntryGvBefore s6Step336EntryGvAfter s6Step336EntryGvRow 184 s6Step336EntryGvFresh
    s6Step336EntryGv_distinct s6Step336EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step336EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step336EntryGvRow.payload++s6Step336EntryGvFresh) s6Step336EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 903],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step336EntryBank_rows : planWindowRowsLog s6Step336EntryFBefore [(s6Step336EntryFRow,103),(s6Step336EntryGRow,103),(s6Step336EntryFvRow,184),(s6Step336EntryGvRow,184)] [s6Step336EntryFFresh,s6Step336EntryGFresh,s6Step336EntryFvFresh,s6Step336EntryGvFresh]=
    some (s6Step336EntryGvAfter,[s6Step336EntryFOut,s6Step336EntryGOut,s6Step336EntryFvOut,s6Step336EntryGvOut],(growRow 795 s6Step336EntryFFresh ++ (growRow 777 s6Step336EntryGFresh ++ (growRow 776 s6Step336EntryFvFresh ++ (growRow 775 s6Step336EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step336EntryGvAfter [] []=some (s6Step336EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step336EntryGvBefore s6Step336EntryGvAfter s6Step336EntryGvAfter
    s6Step336EntryGvRow s6Step336EntryGvOut 184 s6Step336EntryGvFresh [] [] []
    (growRow 775 s6Step336EntryGvFresh) ([]) s6Step336EntryGv_Incoming s6Step336EntryGv_checked h4 s6Step336EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step336EntryFvBefore s6Step336EntryFvAfter s6Step336EntryGvAfter
    s6Step336EntryFvRow s6Step336EntryFvOut 184 s6Step336EntryFvFresh [(s6Step336EntryGvRow,184)] [s6Step336EntryGvFresh] [s6Step336EntryGvOut]
    (growRow 776 s6Step336EntryFvFresh) ((growRow 775 s6Step336EntryGvFresh ++ [])) s6Step336EntryFv_Incoming s6Step336EntryFv_checked h3 s6Step336EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step336EntryGBefore s6Step336EntryGAfter s6Step336EntryGvAfter
    s6Step336EntryGRow s6Step336EntryGOut 103 s6Step336EntryGFresh [(s6Step336EntryFvRow,184),(s6Step336EntryGvRow,184)] [s6Step336EntryFvFresh,s6Step336EntryGvFresh] [s6Step336EntryFvOut,s6Step336EntryGvOut]
    (growRow 777 s6Step336EntryGFresh) ((growRow 776 s6Step336EntryFvFresh ++ (growRow 775 s6Step336EntryGvFresh ++ []))) s6Step336EntryG_Incoming s6Step336EntryG_checked h2 s6Step336EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step336EntryFBefore s6Step336EntryFAfter s6Step336EntryGvAfter
    s6Step336EntryFRow s6Step336EntryFOut 103 s6Step336EntryFFresh [(s6Step336EntryGRow,103),(s6Step336EntryFvRow,184),(s6Step336EntryGvRow,184)] [s6Step336EntryGFresh,s6Step336EntryFvFresh,s6Step336EntryGvFresh] [s6Step336EntryGOut,s6Step336EntryFvOut,s6Step336EntryGvOut]
    (growRow 795 s6Step336EntryFFresh) ((growRow 777 s6Step336EntryGFresh ++ (growRow 776 s6Step336EntryFvFresh ++ (growRow 775 s6Step336EntryGvFresh ++ [])))) s6Step336EntryF_Incoming s6Step336EntryF_checked h1 s6Step336EntryF_Outgoing
  exact h0

private theorem s6Step336EntryBank_checked : compileHmrBankResizeLog .entry s6Step336EntryFBefore ⟨s6Step336EntryFRow,s6Step336EntryGRow,s6Step336EntryFvRow,s6Step336EntryGvRow⟩ ⟨103,103,184,184⟩ [s6Step336EntryFFresh,s6Step336EntryGFresh,s6Step336EntryFvFresh,s6Step336EntryGvFresh]=
    some (s6Step336EntryGvAfter,⟨s6Step336EntryFOut,s6Step336EntryGOut,s6Step336EntryFvOut,s6Step336EntryGvOut⟩,(growRow 795 s6Step336EntryFFresh ++ (growRow 777 s6Step336EntryGFresh ++ (growRow 776 s6Step336EntryFvFresh ++ (growRow 775 s6Step336EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step336EntryBank_rows]
  rfl

private def s6Step336ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336ExitFBefore : Arena := s6Step336ExitGAfter

private def s6Step336ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 907],795⟩

private def s6Step336ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 843],776⟩

private def s6Step336ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 838],777⟩

private def s6Step336ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 903, 865],775⟩

private theorem s6Step336ExitBank_incomingDistinct : ([s6Step336ExitGRow,s6Step336ExitFRow,s6Step336ExitFvRow,s6Step336ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336ExitF_Incoming : rowsOwned s6Step336ExitFBefore [s6Step336ExitFRow,s6Step336ExitFvRow,s6Step336ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step336ExitGRow,s6Step336ExitFRow,s6Step336ExitFvRow,s6Step336ExitGvRow] 1 s6Step336ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step336ExitFBefore (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step336ExitBank_outgoingOwned : rowsOwned s6Step336ExitGvAfter [s6Step336ExitGOut,s6Step336ExitFOut,s6Step336ExitFvOut,s6Step336ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step336ExitGvAfter (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step336ExitF_Outgoing : rowsOwned s6Step336ExitGvAfter [s6Step336ExitFOut,s6Step336ExitFvOut,s6Step336ExitGvOut] :=
  hmrRows_owned_drop s6Step336ExitGvAfter [s6Step336ExitGOut,s6Step336ExitFOut,s6Step336ExitFvOut,s6Step336ExitGvOut] 1 s6Step336ExitBank_outgoingOwned

private theorem s6Step336ExitF_distinct : (s6Step336ExitFRow.sign::s6Step336ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336ExitF_owned : (s6Step336ExitFRow.sign::s6Step336ExitFRow.payload).toFinset⊆s6Step336ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step336ExitFBefore (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336ExitF_retired : s6Step336ExitFBefore.retireSet s6Step336ExitFExtra.toFinset=s6Step336ExitFAfter := by
  unfold Arena.retireSet s6Step336ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step336ExitFBefore,s6Step336ExitGAfter,s6Step336ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step336ExitF_checked : planRowResizeLog s6Step336ExitFBefore s6Step336ExitFRow 103 []=
    some (s6Step336ExitFAfter,s6Step336ExitFOut,shrinkRow 795 s6Step336ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step336ExitFBefore s6Step336ExitFRow 103 s6Step336ExitF_distinct s6Step336ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step336ExitFRow.payload.take 103) s6Step336ExitFRow.sign=s6Step336ExitFOut := by decide +kernel
  have hi : s6Step336ExitFRow.payload.drop 103=s6Step336ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step336ExitF_retired] at result
  exact result

private def s6Step336ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336ExitFvBefore : Arena := s6Step336ExitFAfter

private theorem s6Step336ExitFv_Incoming : rowsOwned s6Step336ExitFvBefore [s6Step336ExitFvRow,s6Step336ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step336ExitGRow,s6Step336ExitFRow,s6Step336ExitFvRow,s6Step336ExitGvRow] 2 s6Step336ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step336ExitFvBefore (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step336ExitFv_Outgoing : rowsOwned s6Step336ExitGvAfter [s6Step336ExitFvOut,s6Step336ExitGvOut] :=
  hmrRows_owned_drop s6Step336ExitGvAfter [s6Step336ExitGOut,s6Step336ExitFOut,s6Step336ExitFvOut,s6Step336ExitGvOut] 2 s6Step336ExitBank_outgoingOwned

private theorem s6Step336ExitFv_distinct : (s6Step336ExitFvRow.sign::s6Step336ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336ExitFv_owned : (s6Step336ExitFvRow.sign::s6Step336ExitFvRow.payload).toFinset⊆s6Step336ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step336ExitFvBefore (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336ExitFv_retired : s6Step336ExitFvBefore.retireSet s6Step336ExitFvExtra.toFinset=s6Step336ExitFvAfter := by
  unfold Arena.retireSet s6Step336ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step336ExitFvBefore,s6Step336ExitFAfter,s6Step336ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step336ExitFv_checked : planRowResizeLog s6Step336ExitFvBefore s6Step336ExitFvRow 184 []=
    some (s6Step336ExitFvAfter,s6Step336ExitFvOut,shrinkRow 776 s6Step336ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step336ExitFvBefore s6Step336ExitFvRow 184 s6Step336ExitFv_distinct s6Step336ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step336ExitFvRow.payload.take 184) s6Step336ExitFvRow.sign=s6Step336ExitFvOut := by decide +kernel
  have hi : s6Step336ExitFvRow.payload.drop 184=s6Step336ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step336ExitFv_retired] at result
  exact result

private def s6Step336ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step336ExitG_Incoming : rowsOwned s6Step336ExitGBefore [s6Step336ExitGRow,s6Step336ExitFRow,s6Step336ExitFvRow,s6Step336ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step336ExitGRow,s6Step336ExitFRow,s6Step336ExitFvRow,s6Step336ExitGvRow] 0 s6Step336ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step336ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step336ExitG_Outgoing : rowsOwned s6Step336ExitGvAfter [s6Step336ExitGOut,s6Step336ExitFOut,s6Step336ExitFvOut,s6Step336ExitGvOut] :=
  hmrRows_owned_drop s6Step336ExitGvAfter [s6Step336ExitGOut,s6Step336ExitFOut,s6Step336ExitFvOut,s6Step336ExitGvOut] 0 s6Step336ExitBank_outgoingOwned

private theorem s6Step336ExitG_distinct : (s6Step336ExitGRow.sign::s6Step336ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336ExitG_owned : (s6Step336ExitGRow.sign::s6Step336ExitGRow.payload).toFinset⊆s6Step336ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step336ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336ExitG_retired : s6Step336ExitGBefore.retireSet s6Step336ExitGExtra.toFinset=s6Step336ExitGAfter := by
  unfold Arena.retireSet s6Step336ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step336ExitGBefore,s6Step336ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step336ExitG_checked : planRowResizeLog s6Step336ExitGBefore s6Step336ExitGRow 102 []=
    some (s6Step336ExitGAfter,s6Step336ExitGOut,shrinkRow 777 s6Step336ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step336ExitGBefore s6Step336ExitGRow 102 s6Step336ExitG_distinct s6Step336ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step336ExitGRow.payload.take 102) s6Step336ExitGRow.sign=s6Step336ExitGOut := by decide +kernel
  have hi : s6Step336ExitGRow.payload.drop 102=s6Step336ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step336ExitG_retired] at result
  exact result

private def s6Step336ExitGvBefore : Arena := s6Step336ExitFvAfter

private theorem s6Step336ExitGv_Incoming : rowsOwned s6Step336ExitGvBefore [s6Step336ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step336ExitGRow,s6Step336ExitFRow,s6Step336ExitFvRow,s6Step336ExitGvRow] 3 s6Step336ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step336ExitGvBefore (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step336ExitGv_Outgoing : rowsOwned s6Step336ExitGvAfter [s6Step336ExitGvOut] :=
  hmrRows_owned_drop s6Step336ExitGvAfter [s6Step336ExitGOut,s6Step336ExitFOut,s6Step336ExitFvOut,s6Step336ExitGvOut] 3 s6Step336ExitBank_outgoingOwned

private theorem s6Step336ExitGv_distinct : (s6Step336ExitGvRow.sign::s6Step336ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336ExitGv_owned : (s6Step336ExitGvRow.sign::s6Step336ExitGvRow.payload).toFinset⊆s6Step336ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step336ExitGvBefore (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336ExitGv_retired : s6Step336ExitGvBefore.retireSet s6Step336ExitGvExtra.toFinset=s6Step336ExitGvAfter := by
  unfold Arena.retireSet s6Step336ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step336ExitGvBefore,s6Step336ExitFvAfter,s6Step336ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step336ExitGv_checked : planRowResizeLog s6Step336ExitGvBefore s6Step336ExitGvRow 183 []=
    some (s6Step336ExitGvAfter,s6Step336ExitGvOut,shrinkRow 775 s6Step336ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step336ExitGvBefore s6Step336ExitGvRow 183 s6Step336ExitGv_distinct s6Step336ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step336ExitGvRow.payload.take 183) s6Step336ExitGvRow.sign=s6Step336ExitGvOut := by decide +kernel
  have hi : s6Step336ExitGvRow.payload.drop 183=s6Step336ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step336ExitGv_retired] at result
  exact result

private theorem s6Step336ExitBank_rows : planWindowRowsLog s6Step336ExitGBefore [(s6Step336ExitGRow,102),(s6Step336ExitFRow,103),(s6Step336ExitFvRow,184),(s6Step336ExitGvRow,183)] [[],[],[],[]]=
    some (s6Step336ExitGvAfter,[s6Step336ExitGOut,s6Step336ExitFOut,s6Step336ExitFvOut,s6Step336ExitGvOut],(shrinkRow 777 s6Step336ExitGExtra ++ (shrinkRow 795 s6Step336ExitFExtra ++ (shrinkRow 776 s6Step336ExitFvExtra ++ (shrinkRow 775 s6Step336ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step336ExitGvAfter [] []=some (s6Step336ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step336ExitGvBefore s6Step336ExitGvAfter s6Step336ExitGvAfter
    s6Step336ExitGvRow s6Step336ExitGvOut 183 [] [] [] []
    (shrinkRow 775 s6Step336ExitGvExtra) ([]) s6Step336ExitGv_Incoming s6Step336ExitGv_checked h4 s6Step336ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step336ExitFvBefore s6Step336ExitFvAfter s6Step336ExitGvAfter
    s6Step336ExitFvRow s6Step336ExitFvOut 184 [] [(s6Step336ExitGvRow,183)] [[]] [s6Step336ExitGvOut]
    (shrinkRow 776 s6Step336ExitFvExtra) ((shrinkRow 775 s6Step336ExitGvExtra ++ [])) s6Step336ExitFv_Incoming s6Step336ExitFv_checked h3 s6Step336ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step336ExitFBefore s6Step336ExitFAfter s6Step336ExitGvAfter
    s6Step336ExitFRow s6Step336ExitFOut 103 [] [(s6Step336ExitFvRow,184),(s6Step336ExitGvRow,183)] [[],[]] [s6Step336ExitFvOut,s6Step336ExitGvOut]
    (shrinkRow 795 s6Step336ExitFExtra) ((shrinkRow 776 s6Step336ExitFvExtra ++ (shrinkRow 775 s6Step336ExitGvExtra ++ []))) s6Step336ExitF_Incoming s6Step336ExitF_checked h2 s6Step336ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step336ExitGBefore s6Step336ExitGAfter s6Step336ExitGvAfter
    s6Step336ExitGRow s6Step336ExitGOut 102 [] [(s6Step336ExitFRow,103),(s6Step336ExitFvRow,184),(s6Step336ExitGvRow,183)] [[],[],[]] [s6Step336ExitFOut,s6Step336ExitFvOut,s6Step336ExitGvOut]
    (shrinkRow 777 s6Step336ExitGExtra) ((shrinkRow 795 s6Step336ExitFExtra ++ (shrinkRow 776 s6Step336ExitFvExtra ++ (shrinkRow 775 s6Step336ExitGvExtra ++ [])))) s6Step336ExitG_Incoming s6Step336ExitG_checked h1 s6Step336ExitG_Outgoing
  exact h0

private theorem s6Step336ExitBank_checked : compileHmrBankResizeLog .exit s6Step336ExitGBefore ⟨s6Step336ExitFRow,s6Step336ExitGRow,s6Step336ExitFvRow,s6Step336ExitGvRow⟩ ⟨103,102,184,183⟩ [[],[],[],[]]=
    some (s6Step336ExitGvAfter,⟨s6Step336ExitFOut,s6Step336ExitGOut,s6Step336ExitFvOut,s6Step336ExitGvOut⟩,(shrinkRow 777 s6Step336ExitGExtra ++ (shrinkRow 795 s6Step336ExitFExtra ++ (shrinkRow 776 s6Step336ExitFvExtra ++ (shrinkRow 775 s6Step336ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step336ExitBank_rows]
  rfl

private theorem s6Step336Add0_apart : Disjoint s6Step336Add0Arena.live s6Step336Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step336Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336Add0_card : s6Step336Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step336Add0_borrowed : s6Step336Add0Arena.checkBorrow (hmrHybridCount s6Step336Add0Arena s6Step336Add0B.length) s6Step336Add0Work=some s6Step336Add0During := by
  have len : s6Step336Add0Work.length=hmrHybridCount s6Step336Add0Arena s6Step336Add0B.length := by
    rw [hmrHybridCount,s6Step336Add0_card]
    decide +kernel
  have nd : s6Step336Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step336Add0Arena s6Step336Add0During s6Step336Add0Work.toFinset s6Step336Add0_bounded s6Step336Add0_apart rfl

private theorem s6Step336Add0_distinct : (860::784::805::(s6Step336Add0A++s6Step336Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336Add0_owned : (860::784::805::(s6Step336Add0A++s6Step336Add0B)).toFinset⊆s6Step336Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step336Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336Add0_checked : compileHmrHybridCinLog s6Step336Add0Arena 784 860 805 s6Step336Add0A s6Step336Add0B s6Step336Add0Work=some s6Step336Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step336Add0Arena s6Step336Add0During 784 860 805 s6Step336Add0A s6Step336Add0B s6Step336Add0Work
    (by decide +kernel) (by decide +kernel) s6Step336Add0_distinct
    (fun q hq => s6Step336Add0_owned (List.mem_toFinset.mpr hq)) s6Step336Add0_borrowed

private theorem s6Step336Add1_apart : Disjoint s6Step336Add1Arena.live s6Step336Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step336Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336Add1_card : s6Step336Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step336Add1_borrowed : s6Step336Add1Arena.checkBorrow (hmrHybridCount s6Step336Add1Arena s6Step336Add1B.length) s6Step336Add1Work=some s6Step336Add1During := by
  have len : s6Step336Add1Work.length=hmrHybridCount s6Step336Add1Arena s6Step336Add1B.length := by
    rw [hmrHybridCount,s6Step336Add1_card]
    decide +kernel
  have nd : s6Step336Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step336Add1Arena s6Step336Add1During s6Step336Add1Work.toFinset s6Step336Add1_bounded s6Step336Add1_apart rfl

private theorem s6Step336Add1_distinct : (860::784::805::(s6Step336Add1A++s6Step336Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336Add1_owned : (860::784::805::(s6Step336Add1A++s6Step336Add1B)).toFinset⊆s6Step336Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step336Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336Add1_checked : compileHmrHybridCinLog s6Step336Add1Arena 784 860 805 s6Step336Add1A s6Step336Add1B s6Step336Add1Work=some s6Step336Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step336Add1Arena s6Step336Add1During 784 860 805 s6Step336Add1A s6Step336Add1B s6Step336Add1Work
    (by decide +kernel) (by decide +kernel) s6Step336Add1_distinct
    (fun q hq => s6Step336Add1_owned (List.mem_toFinset.mpr hq)) s6Step336Add1_borrowed

private theorem s6Step336F4_apart : Disjoint (s6Step336Add0A++s6Step336Add0B).toFinset (s6Step336Add1A++s6Step336Add1B).toFinset := by
  have nd : ((s6Step336Add0A++s6Step336Add0B)++(s6Step336Add1A++s6Step336Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step336F4_carry : s6Step336F4FlagArena.checkBorrow 1 [805]=some s6Step336Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step336F4FlagArena,s6Step336HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step336F4FlagArena,s6Step336HeadFvAfter,s6Step336Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step336F4_distinct : (874::784::860::805::((s6Step336Add0A++s6Step336Add1A)++(s6Step336Add0B++s6Step336Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336F4_flag : s6Step336HeadFvAfter.checkBorrow 1 [860]=some s6Step336F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step336HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step336F4_owned : (874::784::((s6Step336Add0A++s6Step336Add1A)++(s6Step336Add0B++s6Step336Add1B))).toFinset⊆s6Step336HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step336HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336F4_checked : compileHmrHybridF4Log s6Step336HeadFvAfter 874 784 s6Step336Add0A s6Step336Add0B s6Step336Add1A s6Step336Add1B [860] [805] s6Step336Add0Work s6Step336Add1Work=some s6Step336F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step336HeadFvAfter s6Step336F4FlagArena s6Step336Add0Arena s6Step336Add0During s6Step336Add1During 874 784
    s6Step336Add0A s6Step336Add0B s6Step336Add1A s6Step336Add1B [860] [805] s6Step336Add0Work s6Step336Add1Work
    (fun q hq => s6Step336F4_owned (List.mem_toFinset.mpr hq)) s6Step336F4_flag s6Step336F4_carry
    s6Step336F4_distinct s6Step336F4_apart s6Step336Add0_checked s6Step336Add1_checked

private theorem s6Step336Front_branch : s6Step336FrontSigmaArena.checkBorrow 1 [784]=some s6Step336HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step336FrontSigmaArena,s6Step336EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step336FrontSigmaArena,s6Step336EntryGvAfter,s6Step336HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step336Front_entry : HmrFrontEntryValid s6Step336EntryFBefore s6Step336FrontBank 103 184 ⟨103,102,184,183⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step336FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step336EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step336EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step336FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step336Front_sigma : s6Step336EntryGvAfter.checkBorrow 1 [874]=some s6Step336FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step336EntryGvAfter,arenaWires]
  · rfl

private def s6Step336HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336HeadFBefore : Arena := s6Step336HeadGAfter

private def s6Step336HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step336HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩

private def s6Step336HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],777⟩

private def s6Step336HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 903],775⟩

private theorem s6Step336HeadBank_incomingDistinct : ([s6Step336HeadGRow,s6Step336HeadFRow,s6Step336HeadGvRow,s6Step336HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336HeadF_Incoming : rowsOwned s6Step336HeadFBefore [s6Step336HeadFRow,s6Step336HeadGvRow,s6Step336HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step336HeadGRow,s6Step336HeadFRow,s6Step336HeadGvRow,s6Step336HeadFvRow] 1 s6Step336HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step336HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step336HeadBank_outgoingOwned : rowsOwned s6Step336HeadFvAfter [s6Step336HeadGOut,s6Step336HeadFOut,s6Step336HeadGvOut,s6Step336HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step336HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step336HeadF_Outgoing : rowsOwned s6Step336HeadFvAfter [s6Step336HeadFOut,s6Step336HeadGvOut,s6Step336HeadFvOut] :=
  hmrRows_owned_drop s6Step336HeadFvAfter [s6Step336HeadGOut,s6Step336HeadFOut,s6Step336HeadGvOut,s6Step336HeadFvOut] 1 s6Step336HeadBank_outgoingOwned

private theorem s6Step336HeadF_distinct : (s6Step336HeadFRow.sign::s6Step336HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336HeadF_owned : (s6Step336HeadFRow.sign::s6Step336HeadFRow.payload).toFinset⊆s6Step336HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step336HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336HeadF_reserved : s6Step336HeadFBefore.reserve s6Step336HeadFFresh.toFinset=some s6Step336HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step336HeadFFresh,arenaWires]
  · norm_num [s6Step336HeadFBefore,s6Step336HeadGAfter,s6Step336HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step336HeadFAfter,s6Step336HeadFBefore,s6Step336HeadGAfter,s6Step336HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step336HeadF_checked : planRowResizeLog s6Step336HeadFBefore s6Step336HeadFRow 104 s6Step336HeadFFresh=
    some (s6Step336HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 907],795⟩,growRow 795 s6Step336HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step336HeadFBefore s6Step336HeadFAfter s6Step336HeadFRow 104 s6Step336HeadFFresh
    s6Step336HeadF_distinct s6Step336HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step336HeadF_reserved
  have rowEq : WindowRow.mk (s6Step336HeadFRow.payload++s6Step336HeadFFresh) s6Step336HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 907],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step336HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step336HeadFvBefore : Arena := s6Step336HeadGvAfter

private theorem s6Step336HeadFv_Incoming : rowsOwned s6Step336HeadFvBefore [s6Step336HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step336HeadGRow,s6Step336HeadFRow,s6Step336HeadGvRow,s6Step336HeadFvRow] 3 s6Step336HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step336HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step336HeadFv_Outgoing : rowsOwned s6Step336HeadFvAfter [s6Step336HeadFvOut] :=
  hmrRows_owned_drop s6Step336HeadFvAfter [s6Step336HeadGOut,s6Step336HeadFOut,s6Step336HeadGvOut,s6Step336HeadFvOut] 3 s6Step336HeadBank_outgoingOwned

private theorem s6Step336HeadFv_distinct : (s6Step336HeadFvRow.sign::s6Step336HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336HeadFv_owned : (s6Step336HeadFvRow.sign::s6Step336HeadFvRow.payload).toFinset⊆s6Step336HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step336HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336HeadFv_reserved : s6Step336HeadFvBefore.reserve s6Step336HeadFvFresh.toFinset=some s6Step336HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step336HeadFvFresh,arenaWires]
  · norm_num [s6Step336HeadFvBefore,s6Step336HeadGvAfter,s6Step336HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step336HeadFvAfter,s6Step336HeadFvBefore,s6Step336HeadGvAfter,s6Step336HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step336HeadFv_checked : planRowResizeLog s6Step336HeadFvBefore s6Step336HeadFvRow 185 s6Step336HeadFvFresh=
    some (s6Step336HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 843],776⟩,growRow 776 s6Step336HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step336HeadFvBefore s6Step336HeadFvAfter s6Step336HeadFvRow 185 s6Step336HeadFvFresh
    s6Step336HeadFv_distinct s6Step336HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step336HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step336HeadFvRow.payload++s6Step336HeadFvFresh) s6Step336HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 843],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step336HeadG_Incoming : rowsOwned s6Step336HeadGBefore [s6Step336HeadGRow,s6Step336HeadFRow,s6Step336HeadGvRow,s6Step336HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step336HeadGRow,s6Step336HeadFRow,s6Step336HeadGvRow,s6Step336HeadFvRow] 0 s6Step336HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step336HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step336HeadG_Outgoing : rowsOwned s6Step336HeadFvAfter [s6Step336HeadGOut,s6Step336HeadFOut,s6Step336HeadGvOut,s6Step336HeadFvOut] :=
  hmrRows_owned_drop s6Step336HeadFvAfter [s6Step336HeadGOut,s6Step336HeadFOut,s6Step336HeadGvOut,s6Step336HeadFvOut] 0 s6Step336HeadBank_outgoingOwned

private theorem s6Step336HeadG_distinct : (s6Step336HeadGRow.sign::s6Step336HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336HeadG_owned : (s6Step336HeadGRow.sign::s6Step336HeadGRow.payload).toFinset⊆s6Step336HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step336HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336HeadG_reserved : s6Step336HeadGBefore.reserve s6Step336HeadGFresh.toFinset=some s6Step336HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step336HeadGFresh,arenaWires]
  · norm_num [s6Step336HeadGBefore,s6Step336HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step336HeadGAfter,s6Step336HeadGBefore,s6Step336HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step336HeadG_checked : planRowResizeLog s6Step336HeadGBefore s6Step336HeadGRow 104 s6Step336HeadGFresh=
    some (s6Step336HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 838],777⟩,growRow 777 s6Step336HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step336HeadGBefore s6Step336HeadGAfter s6Step336HeadGRow 104 s6Step336HeadGFresh
    s6Step336HeadG_distinct s6Step336HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step336HeadG_reserved
  have rowEq : WindowRow.mk (s6Step336HeadGRow.payload++s6Step336HeadGFresh) s6Step336HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 838],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step336HeadGvBefore : Arena := s6Step336HeadFAfter

private theorem s6Step336HeadGv_Incoming : rowsOwned s6Step336HeadGvBefore [s6Step336HeadGvRow,s6Step336HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step336HeadGRow,s6Step336HeadFRow,s6Step336HeadGvRow,s6Step336HeadFvRow] 2 s6Step336HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step336HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step336HeadGv_Outgoing : rowsOwned s6Step336HeadFvAfter [s6Step336HeadGvOut,s6Step336HeadFvOut] :=
  hmrRows_owned_drop s6Step336HeadFvAfter [s6Step336HeadGOut,s6Step336HeadFOut,s6Step336HeadGvOut,s6Step336HeadFvOut] 2 s6Step336HeadBank_outgoingOwned

private theorem s6Step336HeadGv_distinct : (s6Step336HeadGvRow.sign::s6Step336HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step336HeadGv_owned : (s6Step336HeadGvRow.sign::s6Step336HeadGvRow.payload).toFinset⊆s6Step336HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step336HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step336HeadGv_reserved : s6Step336HeadGvBefore.reserve s6Step336HeadGvFresh.toFinset=some s6Step336HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step336HeadGvFresh,arenaWires]
  · norm_num [s6Step336HeadGvBefore,s6Step336HeadFAfter,s6Step336HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step336HeadGvAfter,s6Step336HeadGvBefore,s6Step336HeadFAfter,s6Step336HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step336HeadGv_checked : planRowResizeLog s6Step336HeadGvBefore s6Step336HeadGvRow 185 s6Step336HeadGvFresh=
    some (s6Step336HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 903, 865],775⟩,growRow 775 s6Step336HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step336HeadGvBefore s6Step336HeadGvAfter s6Step336HeadGvRow 185 s6Step336HeadGvFresh
    s6Step336HeadGv_distinct s6Step336HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step336HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step336HeadGvRow.payload++s6Step336HeadGvFresh) s6Step336HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 903, 865],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step336HeadBank_rows : planWindowRowsLog s6Step336HeadGBefore [(s6Step336HeadGRow,104),(s6Step336HeadFRow,104),(s6Step336HeadGvRow,185),(s6Step336HeadFvRow,185)] [s6Step336HeadGFresh,s6Step336HeadFFresh,s6Step336HeadGvFresh,s6Step336HeadFvFresh]=
    some (s6Step336HeadFvAfter,[s6Step336HeadGOut,s6Step336HeadFOut,s6Step336HeadGvOut,s6Step336HeadFvOut],(growRow 777 s6Step336HeadGFresh ++ (growRow 795 s6Step336HeadFFresh ++ (growRow 775 s6Step336HeadGvFresh ++ (growRow 776 s6Step336HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step336HeadFvAfter [] []=some (s6Step336HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step336HeadFvBefore s6Step336HeadFvAfter s6Step336HeadFvAfter
    s6Step336HeadFvRow s6Step336HeadFvOut 185 s6Step336HeadFvFresh [] [] []
    (growRow 776 s6Step336HeadFvFresh) ([]) s6Step336HeadFv_Incoming s6Step336HeadFv_checked h4 s6Step336HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step336HeadGvBefore s6Step336HeadGvAfter s6Step336HeadFvAfter
    s6Step336HeadGvRow s6Step336HeadGvOut 185 s6Step336HeadGvFresh [(s6Step336HeadFvRow,185)] [s6Step336HeadFvFresh] [s6Step336HeadFvOut]
    (growRow 775 s6Step336HeadGvFresh) ((growRow 776 s6Step336HeadFvFresh ++ [])) s6Step336HeadGv_Incoming s6Step336HeadGv_checked h3 s6Step336HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step336HeadFBefore s6Step336HeadFAfter s6Step336HeadFvAfter
    s6Step336HeadFRow s6Step336HeadFOut 104 s6Step336HeadFFresh [(s6Step336HeadGvRow,185),(s6Step336HeadFvRow,185)] [s6Step336HeadGvFresh,s6Step336HeadFvFresh] [s6Step336HeadGvOut,s6Step336HeadFvOut]
    (growRow 795 s6Step336HeadFFresh) ((growRow 775 s6Step336HeadGvFresh ++ (growRow 776 s6Step336HeadFvFresh ++ []))) s6Step336HeadF_Incoming s6Step336HeadF_checked h2 s6Step336HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step336HeadGBefore s6Step336HeadGAfter s6Step336HeadFvAfter
    s6Step336HeadGRow s6Step336HeadGOut 104 s6Step336HeadGFresh [(s6Step336HeadFRow,104),(s6Step336HeadGvRow,185),(s6Step336HeadFvRow,185)] [s6Step336HeadFFresh,s6Step336HeadGvFresh,s6Step336HeadFvFresh] [s6Step336HeadFOut,s6Step336HeadGvOut,s6Step336HeadFvOut]
    (growRow 777 s6Step336HeadGFresh) ((growRow 795 s6Step336HeadFFresh ++ (growRow 775 s6Step336HeadGvFresh ++ (growRow 776 s6Step336HeadFvFresh ++ [])))) s6Step336HeadG_Incoming s6Step336HeadG_checked h1 s6Step336HeadG_Outgoing
  exact h0

private theorem s6Step336HeadBank_checked : compileHmrBankResizeLog .headroom s6Step336HeadGBefore ⟨s6Step336HeadFRow,s6Step336HeadGRow,s6Step336HeadFvRow,s6Step336HeadGvRow⟩ ⟨104,104,185,185⟩ [s6Step336HeadGFresh,s6Step336HeadFFresh,s6Step336HeadGvFresh,s6Step336HeadFvFresh]=
    some (s6Step336HeadFvAfter,⟨s6Step336HeadFOut,s6Step336HeadGOut,s6Step336HeadFvOut,s6Step336HeadGvOut⟩,(growRow 777 s6Step336HeadGFresh ++ (growRow 795 s6Step336HeadFFresh ++ (growRow 775 s6Step336HeadGvFresh ++ (growRow 776 s6Step336HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step336HeadBank_rows]
  rfl

private theorem s6Step336Front_checked : compileHmrSourceFrontLog s6Step336EntryFBefore s6Step336FrontBank 103 184 ⟨103,102,184,183⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step336FrontLog=some s6Step336FrontPlan := by
  have pairEq : s6Step336FrontPair=⟨s6Step336HeadFRow,s6Step336HeadGRow,s6Step336HeadFvRow,s6Step336HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step336FrontHead=⟨s6Step336ExitFRow,s6Step336ExitGRow,s6Step336ExitFvRow,s6Step336ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step336Add0A=s6Step336FrontHead.f.wires := by decide +kernel
  have gEq : s6Step336Add0B=s6Step336FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step336Add1A=s6Step336FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step336Add1B=s6Step336FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step336EntryFBefore s6Step336FrontBank 103 184 ⟨103,102,184,183⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step336FrontLog s6Step336FrontPlan
  · exact s6Step336Front_entry
  · exact s6Step336EntryBank_checked
  · exact s6Step336Front_sigma
  · rfl
  · exact s6Step336Front_branch
  · rfl
  · simpa only [s6Step336FrontPlan,pairEq] using s6Step336HeadBank_checked
  · simpa only [s6Step336FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step336F4_checked
  · exact s6Step336Counter_checked
  · rfl
  · simpa only [s6Step336FrontPlan,headEq] using s6Step336ExitBank_checked

private theorem s6Step336Complete_explicit_checked : compileHmrEarlyStepLog s6Step336EntryFBefore s6Step336FrontBank 103 184 ⟨103,102,184,183⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step336CompleteLog=some s6Step336CompletePlan := by
  let Q := s6Step336EarlyControlPlan
  have hq := s6Step336EarlyControl_plan_checked
  have fv1 : s6Step336CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step336CompleteOut.fv.payload[2]?.getD s6Step336CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step336CompleteOut.fv.payload[3]?.getD s6Step336CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step336CompleteOut.fv.payload[4]?.getD s6Step336CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step336EntryFBefore s6Step336EarlyControlArena s6Step336FrontBank 103 184 ⟨103,102,184,183⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step336CompleteLog s6Step336FrontPlan Q
    s6Step336Front_checked s6Step336Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step336Complete_owned s6Step336Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step336EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 s6Step336CompleteOut.fv.second (s6Step336CompleteOut.fv.payload[2]?.getD s6Step336CompleteOut.fv.sign) (s6Step336CompleteOut.fv.payload[3]?.getD s6Step336CompleteOut.fv.sign) (s6Step336CompleteOut.fv.payload[4]?.getD s6Step336CompleteOut.fv.sign) 784 60 s6Step336EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep336Arena : Arena := s6Step336EntryFBefore
def s6PrivateStep336Bank : WindowBank := s6Step336FrontBank
def s6PrivateStep336Spec : HmrSourceWalkStepLog := ⟨103,184,⟨103,102,184,183⟩,60,.early s6Step336CompleteLog⟩
def s6PrivateStep336Plan : HmrSourceStepPlan := .early s6Step336CompletePlan
theorem s6PrivateStep336_source : s6PrivateStep336Spec=s6ObservedLogs336[0] := rfl
theorem s6PrivateStep336_checked : compileHmrSourceStepLog s6PrivateStep336Arena s6PrivateStep336Bank
    s6PrivateStep336Spec.fgWidth s6PrivateStep336Spec.vWidth s6PrivateStep336Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 336 s6PrivateStep336Spec.need none s6PrivateStep336Spec.log=some s6PrivateStep336Plan := by
  change compileHmrSourceStepLog s6Step336EntryFBefore s6Step336FrontBank 103 184 ⟨103,102,184,183⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 336 60 none (.early s6Step336CompleteLog)=some (.early s6Step336CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 336<498)]
  rw [s6Step336Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
