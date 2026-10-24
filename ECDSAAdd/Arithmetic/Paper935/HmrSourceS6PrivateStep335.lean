import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep333
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

private def s6Step335CompleteMoves : List (Wire × Wire) := [(784,359)]

private def s6Step335EarlyControlLog : HmrEarlyControlLog := ⟨[784, 838, 907, 865, 843],[860],[805],[817, 812, 915, 906, 792, 816],[]⟩

private def s6Step335FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [865], [], [780]],[[843], [907], [838], [859]],[[], [], [], []]⟩,[874],[903],[860],[805],[817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812]⟩

private def s6Step335CompleteLog : HmrEarlyStepLog := ⟨s6Step335FrontLog,s6Step335CompleteMoves,s6Step335EarlyControlLog⟩

private def s6Step335ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step335ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩

private def s6Step335ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],777⟩

private def s6Step335ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780],775⟩

private def s6Step335FrontOut : WindowBank := ⟨s6Step335ExitFOut,s6Step335ExitGOut,s6Step335ExitFvOut,s6Step335ExitGvOut⟩

private def s6Step335CompleteOut : WindowBank := s6Step335FrontOut.repacked s6Step335CompleteMoves

private def s6Step335EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step335EarlyControlPositiveArena,[860],s6Step335EarlyControlEqualityArena,[805],⟨⟨874,false⟩,[⟨⟨860,false⟩,805⟩]⟩⟩

private def s6Step335EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,784⟩,⟨⟨772,false⟩,838⟩,⟨⟨771,false⟩,907⟩,⟨⟨770,false⟩,865⟩,⟨⟨769,false⟩,843⟩]⟩

private def s6Step335EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step335EarlyControlZeroArena,s6Step335EarlyControlZeroPlan,s6Step335EarlyControlClassPlan,s6Step335EarlyControlFlagArena,s6Step335EarlyControlFittedArena,s6Step335EarlyControlHistoryArena,s6Step335EarlyControlSigmaArena,s6Step335EarlyControlOutputArena,s6Step335EarlyControlLog⟩

private def s6Step335CounterWork : List Wire := [860, 805, 817, 812]

private theorem s6Step335Counter_bounded : s6Step335CounterWork.toFinset⊆arenaWires := by norm_num [s6Step335CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step335HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335CounterDuring : Arena := ⟨s6Step335HeadFvAfter.live∪s6Step335CounterWork.toFinset,Finset.union_subset s6Step335HeadFvAfter.bounded s6Step335Counter_bounded⟩

private def s6Step335EntryFFresh : List Wire := []

private def s6Step335EntryFvFresh : List Wire := []

private def s6Step335EntryGFresh : List Wire := [865]

private def s6Step335EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335EntryGvFresh : List Wire := [780]

private def s6Step335ExitFExtra : List Wire := [359, 907]

private def s6Step335ExitGExtra : List Wire := [865, 843]

private def s6Step335ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<359) ∨ (360≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335ExitGvExtra : List Wire := [838]

private def s6Step335Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335Add0Work : List Wire := [817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step335Add0_bounded : s6Step335Add0Work.toFinset⊆arenaWires := by
  have h : s6Step335Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step335Add0During : Arena := ⟨s6Step335Add0Arena.live∪s6Step335Add0Work.toFinset,Finset.union_subset s6Step335Add0Arena.bounded s6Step335Add0_bounded⟩

private def s6Step335Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335Add1Work : List Wire := [817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step335Add1_bounded : s6Step335Add1Work.toFinset⊆arenaWires := by
  have h : s6Step335Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step335Add1During : Arena := ⟨s6Step335Add1Arena.live∪s6Step335Add1Work.toFinset,Finset.union_subset s6Step335Add1Arena.bounded s6Step335Add1_bounded⟩

private def s6Step335F4FlagArena : Arena := ⟨s6Step335HeadFvAfter.live∪{860},Finset.union_subset s6Step335HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step335F4Plan : HmrHybridF4Plan := ⟨s6Step335F4FlagArena,[860],s6Step335Add0Arena,[805],s6Step335Add0During,s6Step335Add0Work,s6Step335Add1During,s6Step335Add1Work⟩

private def s6Step335HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 907],795⟩

private def s6Step335HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩

private def s6Step335HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 865, 843],777⟩

private def s6Step335HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 838],775⟩

private def s6Step335FrontHead : WindowBank := ⟨s6Step335HeadFOut,s6Step335HeadGOut,s6Step335HeadFvOut,s6Step335HeadGvOut⟩

private def s6Step335EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩

private def s6Step335EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩

private def s6Step335EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 865],777⟩

private def s6Step335EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780],775⟩

private def s6Step335FrontPair : WindowBank := ⟨s6Step335EntryFOut,s6Step335EntryGOut,s6Step335EntryFvOut,s6Step335EntryGvOut⟩

private def s6Step335FrontSigmaArena : Arena := ⟨s6Step335EntryGvAfter.live∪{874},Finset.union_subset s6Step335EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step335HeadFFresh : List Wire := [907]

private def s6Step335HeadFvFresh : List Wire := [859]

private def s6Step335HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335HeadGFresh : List Wire := [843]

private def s6Step335HeadGvFresh : List Wire := [838]

private def s6Step335FrontPlan : HmrSourceFront := ⟨s6Step335EntryGvAfter,s6Step335FrontPair,(growRow 795 s6Step335EntryFFresh ++ (growRow 777 s6Step335EntryGFresh ++ (growRow 776 s6Step335EntryFvFresh ++ (growRow 775 s6Step335EntryGvFresh ++ [])))),s6Step335FrontSigmaArena,[874],s6Step335HeadGBefore,[903],
  s6Step335HeadFvAfter,s6Step335FrontHead,(growRow 777 s6Step335HeadGFresh ++ (growRow 795 s6Step335HeadFFresh ++ (growRow 775 s6Step335HeadGvFresh ++ (growRow 776 s6Step335HeadFvFresh ++ [])))),s6Step335F4Plan,s6Step335CounterDuring,s6Step335CounterWork,s6Step335ExitGvAfter,s6Step335FrontOut,(shrinkRow 777 s6Step335ExitGExtra ++ (shrinkRow 795 s6Step335ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step335ExitGvExtra ++ []))))⟩

private def s6Step335CompletePlan : HmrEarlyStepPlan := ⟨s6Step335FrontPlan,s6Step335EarlyControlArena,s6Step335EarlyControlPlan,s6Step335CompleteMoves⟩

private theorem s6Step335Complete_apart : List.Disjoint (s6Step335CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [874, 903, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step335CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[874, 903, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step335Complete_owned : (s6Step335CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step335EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step335EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step335CompleteMoveArena : Arena := ⟨s6Step335ExitGvAfter.live∪{359},Finset.union_subset s6Step335ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step335Complete_repack : s6Step335ExitGvAfter.checkRepack s6Step335CompleteMoves=some s6Step335EarlyControlArena := by
  have owned : 784∈s6Step335ExitGvAfter.live := by norm_num [s6Step335ExitGvAfter,arenaWires]
  have reserve : s6Step335ExitGvAfter.reserve {359}=some s6Step335CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step335ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step335CompleteMoveArena.retireSet {784}=s6Step335EarlyControlArena := by
    unfold Arena.retireSet s6Step335EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step335CompleteMoveArena,s6Step335ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step335CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step335CompleteMoveArena.retireSet {784}).checkRepack []=some s6Step335EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step335EarlyControl_branchOwned : ([903] : List Wire).toFinset⊆s6Step335EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step335EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335EarlyControl_branch : compileHmrBranchRetirement s6Step335EarlyControlSigmaArena 903=some s6Step335EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step335EarlyControl_branchOwned
  · ext q
    simp [s6Step335EarlyControlOutputArena,s6Step335EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step335EarlyControl_classEqualityBorrow : s6Step335EarlyControlPositiveArena.checkBorrow (([874, 860] : List Wire).length-1) s6Step335EarlyControlLog.classWork=some s6Step335EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step335EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step335EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step335EarlyControlEqualityArena,s6Step335EarlyControlPositiveArena,s6Step335EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step335EarlyControl_classEqualityOwned : ([874, 860] : List Wire).toFinset⊆s6Step335EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step335EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335EarlyControl_classEquality : compileHmrEqualityLog s6Step335EarlyControlPositiveArena [874, 860] 0 s6Step335EarlyControlLog.classWork=some (s6Step335EarlyControlEqualityArena,s6Step335EarlyControlLog.classWork,s6Step335EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step335EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step335EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step335EarlyControl_classOwned : ([769, 843, 874] : List Wire).toFinset⊆s6Step335EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step335EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335EarlyControl_positiveBorrow : s6Step335EarlyControlZeroArena.checkBorrow (1) s6Step335EarlyControlLog.positiveWork=some s6Step335EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step335EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step335EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step335EarlyControlPositiveArena,s6Step335EarlyControlZeroArena,s6Step335EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step335EarlyControl_class : compileHmrSourceClassLog s6Step335EarlyControlZeroArena false 769 s6Step335EarlyControlZeroPlan.top 0 874 s6Step335EarlyControlLog.positiveWork s6Step335EarlyControlLog.classWork=some s6Step335EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step335EarlyControlClassPlan s6Step335EarlyControlZeroArena false 769 s6Step335EarlyControlZeroPlan.top 0 874
  constructor
  · decide +kernel
  · exact s6Step335EarlyControl_classOwned
  · exact s6Step335EarlyControl_positiveBorrow
  · exact s6Step335EarlyControl_classEquality

private theorem s6Step335EarlyControl_entryRecordOwned : ([903, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step335EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step335EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335EarlyControl_entrySigmaOwned : ([874, 254] : List Wire).toFinset⊆s6Step335EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step335EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335EarlyControl_fitBorrow : s6Step335EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step335EarlyControlLog.recordFresh=some s6Step335EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step335EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step335EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step335EarlyControlFittedArena,s6Step335EarlyControlFlagArena,s6Step335EarlyControlLog,arenaWires]

private theorem s6Step335EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step335EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step335EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335EarlyControl_fit : compileHmrRecordGrowLog s6Step335EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step335EarlyControlLog.recordFresh=some s6Step335EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step335EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step335EarlyControl_fitBorrow

private theorem s6Step335EarlyControl_flagsBorrow : s6Step335EarlyControlEqualityArena.checkBorrow (6) s6Step335EarlyControlLog.flagWork=some s6Step335EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step335EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step335EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step335EarlyControlFlagArena,s6Step335EarlyControlEqualityArena,s6Step335EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step335EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step335EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step335EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335EarlyControl_flags : compileHmrFlagsLog s6Step335EarlyControlClassPlan.equalityArena s6Step335EarlyControlClassPlan.equality.top 253 252 251 s6Step335EarlyControlLog.flagWork=some s6Step335EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step335EarlyControl_flagsOwned⟩
  · exact s6Step335EarlyControl_flagsBorrow

private theorem s6Step335EarlyControl_historyBorrow : s6Step335EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step335EarlyControlLog.recordFresh=some s6Step335EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step335EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step335EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step335EarlyControlHistoryArena,s6Step335EarlyControlArena,s6Step335EarlyControlLog,arenaWires]

private theorem s6Step335EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step335EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step335EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335EarlyControl_history : compileHmrRecordGrowLog s6Step335EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step335EarlyControlLog.recordFresh=some s6Step335EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step335EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step335EarlyControl_historyBorrow

private theorem s6Step335EarlyControl_sigmaOwned : ([254, 874] : List Wire).toFinset⊆s6Step335EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step335EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335EarlyControl_sigmaReleaseOwned : ([874] : List Wire).toFinset⊆s6Step335EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step335EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335EarlyControl_sigmaRelease : s6Step335EarlyControlHistoryArena.release {874} (fun _ => false)=some s6Step335EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step335EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step335EarlyControlSigmaArena,s6Step335EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step335EarlyControl_sigma : compileHmrSigmaDropLog s6Step335EarlyControlHistoryArena false 0 0 254 874 []=some s6Step335EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step335EarlyControl_sigmaOwned⟩
  · exact s6Step335EarlyControl_sigmaRelease

private theorem s6Step335EarlyControl_zeroBorrow : s6Step335EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step335EarlyControlLog.zeroWork=some s6Step335EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step335EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step335EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step335EarlyControlZeroArena,s6Step335EarlyControlArena,s6Step335EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step335EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step335EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step335EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335EarlyControl_zero : compileHmrEqualityLog s6Step335EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step335EarlyControlLog.zeroWork=some (s6Step335EarlyControlZeroArena,s6Step335EarlyControlLog.zeroWork,s6Step335EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step335EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step335EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step335EarlyControl_logged : s6Step335EarlyControlPlan.Logged s6Step335EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 254 253 252 251 903 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step335EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step335EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step335EarlyControl_zero
  · exact s6Step335EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step335EarlyControl_flags
  · exact s6Step335EarlyControl_fit
  · exact s6Step335EarlyControl_history
  · exact s6Step335EarlyControl_sigma
  · exact s6Step335EarlyControl_branch

private theorem s6Step335EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step335EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 254 253 252 251 903 60 s6Step335EarlyControlLog=some s6Step335EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step335EarlyControlPlan s6Step335EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 254 253 252 251 903 60 s6Step335EarlyControl_logged

private def s6Step335EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩

private def s6Step335EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩

private def s6Step335EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],777⟩

private def s6Step335EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841],775⟩

private def s6Step335FrontBank : WindowBank := ⟨s6Step335EntryFRow,s6Step335EntryGRow,s6Step335EntryFvRow,s6Step335EntryGvRow⟩

private def s6Step335Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 907, 795]

private def s6Step335Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 865, 843, 777]

private def s6Step335Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 776]

private def s6Step335Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 838, 775]

private theorem s6Step335Counter_apart : Disjoint s6Step335HeadFvAfter.live s6Step335CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step335HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335Counter_borrowed : s6Step335HeadFvAfter.checkBorrow 4 s6Step335CounterWork=some s6Step335CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step335HeadFvAfter s6Step335CounterDuring s6Step335CounterWork.toFinset s6Step335Counter_bounded s6Step335Counter_apart rfl

private theorem s6Step335Counter_owned : (874::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step335HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step335HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335Counter_checked : compileHmrCounterStepLog s6Step335HeadFvAfter true 874 [774, 773, 772, 771, 770, 769] s6Step335CounterWork=some s6Step335CounterDuring := by
  have owned : ∀q∈874::[774, 773, 772, 771, 770, 769],q∈s6Step335HeadFvAfter.live := fun q hq => s6Step335Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step335Counter_borrowed

private def s6Step335EntryFAfter : Arena := s6Step335EntryFBefore

private theorem s6Step335EntryBank_incomingDistinct : ([s6Step335EntryFRow,s6Step335EntryGRow,s6Step335EntryFvRow,s6Step335EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335EntryF_Incoming : rowsOwned s6Step335EntryFBefore [s6Step335EntryFRow,s6Step335EntryGRow,s6Step335EntryFvRow,s6Step335EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step335EntryFRow,s6Step335EntryGRow,s6Step335EntryFvRow,s6Step335EntryGvRow] 0 s6Step335EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step335EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step335EntryBank_outgoingOwned : rowsOwned s6Step335EntryGvAfter [s6Step335EntryFOut,s6Step335EntryGOut,s6Step335EntryFvOut,s6Step335EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step335EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step335EntryF_Outgoing : rowsOwned s6Step335EntryGvAfter [s6Step335EntryFOut,s6Step335EntryGOut,s6Step335EntryFvOut,s6Step335EntryGvOut] :=
  hmrRows_owned_drop s6Step335EntryGvAfter [s6Step335EntryFOut,s6Step335EntryGOut,s6Step335EntryFvOut,s6Step335EntryGvOut] 0 s6Step335EntryBank_outgoingOwned

private theorem s6Step335EntryF_distinct : (s6Step335EntryFRow.sign::s6Step335EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335EntryF_owned : (s6Step335EntryFRow.sign::s6Step335EntryFRow.payload).toFinset⊆s6Step335EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step335EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335EntryF_reserved : s6Step335EntryFBefore.reserve s6Step335EntryFFresh.toFinset=some s6Step335EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step335EntryFFresh,arenaWires]
  · norm_num [s6Step335EntryFBefore,s6Step335EntryFFresh,arenaWires]
  · simp only [s6Step335EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step335EntryF_checked : planRowResizeLog s6Step335EntryFBefore s6Step335EntryFRow 104 s6Step335EntryFFresh=
    some (s6Step335EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩,growRow 795 s6Step335EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step335EntryFBefore s6Step335EntryFAfter s6Step335EntryFRow 104 s6Step335EntryFFresh
    s6Step335EntryF_distinct s6Step335EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step335EntryF_reserved
  have rowEq : WindowRow.mk (s6Step335EntryFRow.payload++s6Step335EntryFFresh) s6Step335EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step335EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335EntryFvAfter : Arena := s6Step335EntryGAfter

private def s6Step335EntryFvBefore : Arena := s6Step335EntryGAfter

private theorem s6Step335EntryFv_Incoming : rowsOwned s6Step335EntryFvBefore [s6Step335EntryFvRow,s6Step335EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step335EntryFRow,s6Step335EntryGRow,s6Step335EntryFvRow,s6Step335EntryGvRow] 2 s6Step335EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step335EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step335EntryFv_Outgoing : rowsOwned s6Step335EntryGvAfter [s6Step335EntryFvOut,s6Step335EntryGvOut] :=
  hmrRows_owned_drop s6Step335EntryGvAfter [s6Step335EntryFOut,s6Step335EntryGOut,s6Step335EntryFvOut,s6Step335EntryGvOut] 2 s6Step335EntryBank_outgoingOwned

private theorem s6Step335EntryFv_distinct : (s6Step335EntryFvRow.sign::s6Step335EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335EntryFv_owned : (s6Step335EntryFvRow.sign::s6Step335EntryFvRow.payload).toFinset⊆s6Step335EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step335EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335EntryFv_reserved : s6Step335EntryFvBefore.reserve s6Step335EntryFvFresh.toFinset=some s6Step335EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step335EntryFvFresh,arenaWires]
  · norm_num [s6Step335EntryFvBefore,s6Step335EntryGAfter,s6Step335EntryFvFresh,arenaWires]
  · simp only [s6Step335EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step335EntryFv_checked : planRowResizeLog s6Step335EntryFvBefore s6Step335EntryFvRow 183 s6Step335EntryFvFresh=
    some (s6Step335EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩,growRow 776 s6Step335EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step335EntryFvBefore s6Step335EntryFvAfter s6Step335EntryFvRow 183 s6Step335EntryFvFresh
    s6Step335EntryFv_distinct s6Step335EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step335EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step335EntryFvRow.payload++s6Step335EntryFvFresh) s6Step335EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step335EntryGBefore : Arena := s6Step335EntryFBefore

private theorem s6Step335EntryG_Incoming : rowsOwned s6Step335EntryGBefore [s6Step335EntryGRow,s6Step335EntryFvRow,s6Step335EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step335EntryFRow,s6Step335EntryGRow,s6Step335EntryFvRow,s6Step335EntryGvRow] 1 s6Step335EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step335EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step335EntryG_Outgoing : rowsOwned s6Step335EntryGvAfter [s6Step335EntryGOut,s6Step335EntryFvOut,s6Step335EntryGvOut] :=
  hmrRows_owned_drop s6Step335EntryGvAfter [s6Step335EntryFOut,s6Step335EntryGOut,s6Step335EntryFvOut,s6Step335EntryGvOut] 1 s6Step335EntryBank_outgoingOwned

private theorem s6Step335EntryG_distinct : (s6Step335EntryGRow.sign::s6Step335EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335EntryG_owned : (s6Step335EntryGRow.sign::s6Step335EntryGRow.payload).toFinset⊆s6Step335EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step335EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335EntryG_reserved : s6Step335EntryGBefore.reserve s6Step335EntryGFresh.toFinset=some s6Step335EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step335EntryGFresh,arenaWires]
  · norm_num [s6Step335EntryGBefore,s6Step335EntryFBefore,s6Step335EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step335EntryGAfter,s6Step335EntryGBefore,s6Step335EntryFBefore,s6Step335EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step335EntryG_checked : planRowResizeLog s6Step335EntryGBefore s6Step335EntryGRow 104 s6Step335EntryGFresh=
    some (s6Step335EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 865],777⟩,growRow 777 s6Step335EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step335EntryGBefore s6Step335EntryGAfter s6Step335EntryGRow 104 s6Step335EntryGFresh
    s6Step335EntryG_distinct s6Step335EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step335EntryG_reserved
  have rowEq : WindowRow.mk (s6Step335EntryGRow.payload++s6Step335EntryGFresh) s6Step335EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 865],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step335EntryGvBefore : Arena := s6Step335EntryGAfter

private theorem s6Step335EntryGv_Incoming : rowsOwned s6Step335EntryGvBefore [s6Step335EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step335EntryFRow,s6Step335EntryGRow,s6Step335EntryFvRow,s6Step335EntryGvRow] 3 s6Step335EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step335EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step335EntryGv_Outgoing : rowsOwned s6Step335EntryGvAfter [s6Step335EntryGvOut] :=
  hmrRows_owned_drop s6Step335EntryGvAfter [s6Step335EntryFOut,s6Step335EntryGOut,s6Step335EntryFvOut,s6Step335EntryGvOut] 3 s6Step335EntryBank_outgoingOwned

private theorem s6Step335EntryGv_distinct : (s6Step335EntryGvRow.sign::s6Step335EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335EntryGv_owned : (s6Step335EntryGvRow.sign::s6Step335EntryGvRow.payload).toFinset⊆s6Step335EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step335EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335EntryGv_reserved : s6Step335EntryGvBefore.reserve s6Step335EntryGvFresh.toFinset=some s6Step335EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step335EntryGvFresh,arenaWires]
  · norm_num [s6Step335EntryGvBefore,s6Step335EntryGAfter,s6Step335EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step335EntryGvAfter,s6Step335EntryGvBefore,s6Step335EntryGAfter,s6Step335EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step335EntryGv_checked : planRowResizeLog s6Step335EntryGvBefore s6Step335EntryGvRow 183 s6Step335EntryGvFresh=
    some (s6Step335EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780],775⟩,growRow 775 s6Step335EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step335EntryGvBefore s6Step335EntryGvAfter s6Step335EntryGvRow 183 s6Step335EntryGvFresh
    s6Step335EntryGv_distinct s6Step335EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step335EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step335EntryGvRow.payload++s6Step335EntryGvFresh) s6Step335EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step335EntryBank_rows : planWindowRowsLog s6Step335EntryFBefore [(s6Step335EntryFRow,104),(s6Step335EntryGRow,104),(s6Step335EntryFvRow,183),(s6Step335EntryGvRow,183)] [s6Step335EntryFFresh,s6Step335EntryGFresh,s6Step335EntryFvFresh,s6Step335EntryGvFresh]=
    some (s6Step335EntryGvAfter,[s6Step335EntryFOut,s6Step335EntryGOut,s6Step335EntryFvOut,s6Step335EntryGvOut],(growRow 795 s6Step335EntryFFresh ++ (growRow 777 s6Step335EntryGFresh ++ (growRow 776 s6Step335EntryFvFresh ++ (growRow 775 s6Step335EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step335EntryGvAfter [] []=some (s6Step335EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step335EntryGvBefore s6Step335EntryGvAfter s6Step335EntryGvAfter
    s6Step335EntryGvRow s6Step335EntryGvOut 183 s6Step335EntryGvFresh [] [] []
    (growRow 775 s6Step335EntryGvFresh) ([]) s6Step335EntryGv_Incoming s6Step335EntryGv_checked h4 s6Step335EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step335EntryFvBefore s6Step335EntryFvAfter s6Step335EntryGvAfter
    s6Step335EntryFvRow s6Step335EntryFvOut 183 s6Step335EntryFvFresh [(s6Step335EntryGvRow,183)] [s6Step335EntryGvFresh] [s6Step335EntryGvOut]
    (growRow 776 s6Step335EntryFvFresh) ((growRow 775 s6Step335EntryGvFresh ++ [])) s6Step335EntryFv_Incoming s6Step335EntryFv_checked h3 s6Step335EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step335EntryGBefore s6Step335EntryGAfter s6Step335EntryGvAfter
    s6Step335EntryGRow s6Step335EntryGOut 104 s6Step335EntryGFresh [(s6Step335EntryFvRow,183),(s6Step335EntryGvRow,183)] [s6Step335EntryFvFresh,s6Step335EntryGvFresh] [s6Step335EntryFvOut,s6Step335EntryGvOut]
    (growRow 777 s6Step335EntryGFresh) ((growRow 776 s6Step335EntryFvFresh ++ (growRow 775 s6Step335EntryGvFresh ++ []))) s6Step335EntryG_Incoming s6Step335EntryG_checked h2 s6Step335EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step335EntryFBefore s6Step335EntryFAfter s6Step335EntryGvAfter
    s6Step335EntryFRow s6Step335EntryFOut 104 s6Step335EntryFFresh [(s6Step335EntryGRow,104),(s6Step335EntryFvRow,183),(s6Step335EntryGvRow,183)] [s6Step335EntryGFresh,s6Step335EntryFvFresh,s6Step335EntryGvFresh] [s6Step335EntryGOut,s6Step335EntryFvOut,s6Step335EntryGvOut]
    (growRow 795 s6Step335EntryFFresh) ((growRow 777 s6Step335EntryGFresh ++ (growRow 776 s6Step335EntryFvFresh ++ (growRow 775 s6Step335EntryGvFresh ++ [])))) s6Step335EntryF_Incoming s6Step335EntryF_checked h1 s6Step335EntryF_Outgoing
  exact h0

private theorem s6Step335EntryBank_checked : compileHmrBankResizeLog .entry s6Step335EntryFBefore ⟨s6Step335EntryFRow,s6Step335EntryGRow,s6Step335EntryFvRow,s6Step335EntryGvRow⟩ ⟨104,104,183,183⟩ [s6Step335EntryFFresh,s6Step335EntryGFresh,s6Step335EntryFvFresh,s6Step335EntryGvFresh]=
    some (s6Step335EntryGvAfter,⟨s6Step335EntryFOut,s6Step335EntryGOut,s6Step335EntryFvOut,s6Step335EntryGvOut⟩,(growRow 795 s6Step335EntryFFresh ++ (growRow 777 s6Step335EntryGFresh ++ (growRow 776 s6Step335EntryFvFresh ++ (growRow 775 s6Step335EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step335EntryBank_rows]
  rfl

private def s6Step335ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<359) ∨ (360≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335ExitFBefore : Arena := s6Step335ExitGAfter

private def s6Step335ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 907],795⟩

private def s6Step335ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩

private def s6Step335ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 865, 843],777⟩

private def s6Step335ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 838],775⟩

private theorem s6Step335ExitBank_incomingDistinct : ([s6Step335ExitGRow,s6Step335ExitFRow,s6Step335ExitFvRow,s6Step335ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335ExitF_Incoming : rowsOwned s6Step335ExitFBefore [s6Step335ExitFRow,s6Step335ExitFvRow,s6Step335ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step335ExitGRow,s6Step335ExitFRow,s6Step335ExitFvRow,s6Step335ExitGvRow] 1 s6Step335ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step335ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step335ExitBank_outgoingOwned : rowsOwned s6Step335ExitGvAfter [s6Step335ExitGOut,s6Step335ExitFOut,s6Step335ExitFvOut,s6Step335ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step335ExitGvAfter (fun q => (0≤q ∧ q<359) ∨ (360≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step335ExitF_Outgoing : rowsOwned s6Step335ExitGvAfter [s6Step335ExitFOut,s6Step335ExitFvOut,s6Step335ExitGvOut] :=
  hmrRows_owned_drop s6Step335ExitGvAfter [s6Step335ExitGOut,s6Step335ExitFOut,s6Step335ExitFvOut,s6Step335ExitGvOut] 1 s6Step335ExitBank_outgoingOwned

private theorem s6Step335ExitF_distinct : (s6Step335ExitFRow.sign::s6Step335ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335ExitF_owned : (s6Step335ExitFRow.sign::s6Step335ExitFRow.payload).toFinset⊆s6Step335ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step335ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335ExitF_retired : s6Step335ExitFBefore.retireSet s6Step335ExitFExtra.toFinset=s6Step335ExitFAfter := by
  unfold Arena.retireSet s6Step335ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step335ExitFBefore,s6Step335ExitGAfter,s6Step335ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step335ExitF_checked : planRowResizeLog s6Step335ExitFBefore s6Step335ExitFRow 103 []=
    some (s6Step335ExitFAfter,s6Step335ExitFOut,shrinkRow 795 s6Step335ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step335ExitFBefore s6Step335ExitFRow 103 s6Step335ExitF_distinct s6Step335ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step335ExitFRow.payload.take 103) s6Step335ExitFRow.sign=s6Step335ExitFOut := by decide +kernel
  have hi : s6Step335ExitFRow.payload.drop 103=s6Step335ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step335ExitF_retired] at result
  exact result

private def s6Step335ExitFvAfter : Arena := s6Step335ExitFAfter

private def s6Step335ExitFvBefore : Arena := s6Step335ExitFAfter

private theorem s6Step335ExitFv_Incoming : rowsOwned s6Step335ExitFvBefore [s6Step335ExitFvRow,s6Step335ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step335ExitGRow,s6Step335ExitFRow,s6Step335ExitFvRow,s6Step335ExitGvRow] 2 s6Step335ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step335ExitFvBefore (fun q => (0≤q ∧ q<359) ∨ (360≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step335ExitFv_Outgoing : rowsOwned s6Step335ExitGvAfter [s6Step335ExitFvOut,s6Step335ExitGvOut] :=
  hmrRows_owned_drop s6Step335ExitGvAfter [s6Step335ExitGOut,s6Step335ExitFOut,s6Step335ExitFvOut,s6Step335ExitGvOut] 2 s6Step335ExitBank_outgoingOwned

private theorem s6Step335ExitFv_distinct : (s6Step335ExitFvRow.sign::s6Step335ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335ExitFv_owned : (s6Step335ExitFvRow.sign::s6Step335ExitFvRow.payload).toFinset⊆s6Step335ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step335ExitFvBefore (fun q => (0≤q ∧ q<359) ∨ (360≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335ExitFv_reserved : s6Step335ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step335ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step335ExitFv_checked : planRowResizeLog s6Step335ExitFvBefore s6Step335ExitFvRow 184 []=
    some (s6Step335ExitFvAfter,s6Step335ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step335ExitFvBefore s6Step335ExitFvAfter s6Step335ExitFvRow 184 []
    s6Step335ExitFv_distinct s6Step335ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step335ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step335ExitFvRow.payload++[]) s6Step335ExitFvRow.sign=s6Step335ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step335ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step335ExitG_Incoming : rowsOwned s6Step335ExitGBefore [s6Step335ExitGRow,s6Step335ExitFRow,s6Step335ExitFvRow,s6Step335ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step335ExitGRow,s6Step335ExitFRow,s6Step335ExitFvRow,s6Step335ExitGvRow] 0 s6Step335ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step335ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step335ExitG_Outgoing : rowsOwned s6Step335ExitGvAfter [s6Step335ExitGOut,s6Step335ExitFOut,s6Step335ExitFvOut,s6Step335ExitGvOut] :=
  hmrRows_owned_drop s6Step335ExitGvAfter [s6Step335ExitGOut,s6Step335ExitFOut,s6Step335ExitFvOut,s6Step335ExitGvOut] 0 s6Step335ExitBank_outgoingOwned

private theorem s6Step335ExitG_distinct : (s6Step335ExitGRow.sign::s6Step335ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335ExitG_owned : (s6Step335ExitGRow.sign::s6Step335ExitGRow.payload).toFinset⊆s6Step335ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step335ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335ExitG_retired : s6Step335ExitGBefore.retireSet s6Step335ExitGExtra.toFinset=s6Step335ExitGAfter := by
  unfold Arena.retireSet s6Step335ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step335ExitGBefore,s6Step335ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step335ExitG_checked : planRowResizeLog s6Step335ExitGBefore s6Step335ExitGRow 103 []=
    some (s6Step335ExitGAfter,s6Step335ExitGOut,shrinkRow 777 s6Step335ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step335ExitGBefore s6Step335ExitGRow 103 s6Step335ExitG_distinct s6Step335ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step335ExitGRow.payload.take 103) s6Step335ExitGRow.sign=s6Step335ExitGOut := by decide +kernel
  have hi : s6Step335ExitGRow.payload.drop 103=s6Step335ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step335ExitG_retired] at result
  exact result

private def s6Step335ExitGvBefore : Arena := s6Step335ExitFAfter

private theorem s6Step335ExitGv_Incoming : rowsOwned s6Step335ExitGvBefore [s6Step335ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step335ExitGRow,s6Step335ExitFRow,s6Step335ExitFvRow,s6Step335ExitGvRow] 3 s6Step335ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step335ExitGvBefore (fun q => (0≤q ∧ q<359) ∨ (360≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step335ExitGv_Outgoing : rowsOwned s6Step335ExitGvAfter [s6Step335ExitGvOut] :=
  hmrRows_owned_drop s6Step335ExitGvAfter [s6Step335ExitGOut,s6Step335ExitFOut,s6Step335ExitFvOut,s6Step335ExitGvOut] 3 s6Step335ExitBank_outgoingOwned

private theorem s6Step335ExitGv_distinct : (s6Step335ExitGvRow.sign::s6Step335ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335ExitGv_owned : (s6Step335ExitGvRow.sign::s6Step335ExitGvRow.payload).toFinset⊆s6Step335ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step335ExitGvBefore (fun q => (0≤q ∧ q<359) ∨ (360≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335ExitGv_retired : s6Step335ExitGvBefore.retireSet s6Step335ExitGvExtra.toFinset=s6Step335ExitGvAfter := by
  unfold Arena.retireSet s6Step335ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step335ExitGvBefore,s6Step335ExitFAfter,s6Step335ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step335ExitGv_checked : planRowResizeLog s6Step335ExitGvBefore s6Step335ExitGvRow 183 []=
    some (s6Step335ExitGvAfter,s6Step335ExitGvOut,shrinkRow 775 s6Step335ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step335ExitGvBefore s6Step335ExitGvRow 183 s6Step335ExitGv_distinct s6Step335ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step335ExitGvRow.payload.take 183) s6Step335ExitGvRow.sign=s6Step335ExitGvOut := by decide +kernel
  have hi : s6Step335ExitGvRow.payload.drop 183=s6Step335ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step335ExitGv_retired] at result
  exact result

private theorem s6Step335ExitBank_rows : planWindowRowsLog s6Step335ExitGBefore [(s6Step335ExitGRow,103),(s6Step335ExitFRow,103),(s6Step335ExitFvRow,184),(s6Step335ExitGvRow,183)] [[],[],[],[]]=
    some (s6Step335ExitGvAfter,[s6Step335ExitGOut,s6Step335ExitFOut,s6Step335ExitFvOut,s6Step335ExitGvOut],(shrinkRow 777 s6Step335ExitGExtra ++ (shrinkRow 795 s6Step335ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step335ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step335ExitGvAfter [] []=some (s6Step335ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step335ExitGvBefore s6Step335ExitGvAfter s6Step335ExitGvAfter
    s6Step335ExitGvRow s6Step335ExitGvOut 183 [] [] [] []
    (shrinkRow 775 s6Step335ExitGvExtra) ([]) s6Step335ExitGv_Incoming s6Step335ExitGv_checked h4 s6Step335ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step335ExitFvBefore s6Step335ExitFvAfter s6Step335ExitGvAfter
    s6Step335ExitFvRow s6Step335ExitFvOut 184 [] [(s6Step335ExitGvRow,183)] [[]] [s6Step335ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step335ExitGvExtra ++ [])) s6Step335ExitFv_Incoming s6Step335ExitFv_checked h3 s6Step335ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step335ExitFBefore s6Step335ExitFAfter s6Step335ExitGvAfter
    s6Step335ExitFRow s6Step335ExitFOut 103 [] [(s6Step335ExitFvRow,184),(s6Step335ExitGvRow,183)] [[],[]] [s6Step335ExitFvOut,s6Step335ExitGvOut]
    (shrinkRow 795 s6Step335ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step335ExitGvExtra ++ []))) s6Step335ExitF_Incoming s6Step335ExitF_checked h2 s6Step335ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step335ExitGBefore s6Step335ExitGAfter s6Step335ExitGvAfter
    s6Step335ExitGRow s6Step335ExitGOut 103 [] [(s6Step335ExitFRow,103),(s6Step335ExitFvRow,184),(s6Step335ExitGvRow,183)] [[],[],[]] [s6Step335ExitFOut,s6Step335ExitFvOut,s6Step335ExitGvOut]
    (shrinkRow 777 s6Step335ExitGExtra) ((shrinkRow 795 s6Step335ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step335ExitGvExtra ++ [])))) s6Step335ExitG_Incoming s6Step335ExitG_checked h1 s6Step335ExitG_Outgoing
  exact h0

private theorem s6Step335ExitBank_checked : compileHmrBankResizeLog .exit s6Step335ExitGBefore ⟨s6Step335ExitFRow,s6Step335ExitGRow,s6Step335ExitFvRow,s6Step335ExitGvRow⟩ ⟨103,103,184,183⟩ [[],[],[],[]]=
    some (s6Step335ExitGvAfter,⟨s6Step335ExitFOut,s6Step335ExitGOut,s6Step335ExitFvOut,s6Step335ExitGvOut⟩,(shrinkRow 777 s6Step335ExitGExtra ++ (shrinkRow 795 s6Step335ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step335ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step335ExitBank_rows]
  rfl

private theorem s6Step335Add0_apart : Disjoint s6Step335Add0Arena.live s6Step335Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step335Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335Add0_card : s6Step335Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step335Add0_borrowed : s6Step335Add0Arena.checkBorrow (hmrHybridCount s6Step335Add0Arena s6Step335Add0B.length) s6Step335Add0Work=some s6Step335Add0During := by
  have len : s6Step335Add0Work.length=hmrHybridCount s6Step335Add0Arena s6Step335Add0B.length := by
    rw [hmrHybridCount,s6Step335Add0_card]
    decide +kernel
  have nd : s6Step335Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step335Add0Arena s6Step335Add0During s6Step335Add0Work.toFinset s6Step335Add0_bounded s6Step335Add0_apart rfl

private theorem s6Step335Add0_distinct : (860::903::805::(s6Step335Add0A++s6Step335Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335Add0_owned : (860::903::805::(s6Step335Add0A++s6Step335Add0B)).toFinset⊆s6Step335Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step335Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335Add0_checked : compileHmrHybridCinLog s6Step335Add0Arena 903 860 805 s6Step335Add0A s6Step335Add0B s6Step335Add0Work=some s6Step335Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step335Add0Arena s6Step335Add0During 903 860 805 s6Step335Add0A s6Step335Add0B s6Step335Add0Work
    (by decide +kernel) (by decide +kernel) s6Step335Add0_distinct
    (fun q hq => s6Step335Add0_owned (List.mem_toFinset.mpr hq)) s6Step335Add0_borrowed

private theorem s6Step335Add1_apart : Disjoint s6Step335Add1Arena.live s6Step335Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step335Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335Add1_card : s6Step335Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step335Add1_borrowed : s6Step335Add1Arena.checkBorrow (hmrHybridCount s6Step335Add1Arena s6Step335Add1B.length) s6Step335Add1Work=some s6Step335Add1During := by
  have len : s6Step335Add1Work.length=hmrHybridCount s6Step335Add1Arena s6Step335Add1B.length := by
    rw [hmrHybridCount,s6Step335Add1_card]
    decide +kernel
  have nd : s6Step335Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step335Add1Arena s6Step335Add1During s6Step335Add1Work.toFinset s6Step335Add1_bounded s6Step335Add1_apart rfl

private theorem s6Step335Add1_distinct : (860::903::805::(s6Step335Add1A++s6Step335Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335Add1_owned : (860::903::805::(s6Step335Add1A++s6Step335Add1B)).toFinset⊆s6Step335Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step335Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335Add1_checked : compileHmrHybridCinLog s6Step335Add1Arena 903 860 805 s6Step335Add1A s6Step335Add1B s6Step335Add1Work=some s6Step335Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step335Add1Arena s6Step335Add1During 903 860 805 s6Step335Add1A s6Step335Add1B s6Step335Add1Work
    (by decide +kernel) (by decide +kernel) s6Step335Add1_distinct
    (fun q hq => s6Step335Add1_owned (List.mem_toFinset.mpr hq)) s6Step335Add1_borrowed

private theorem s6Step335F4_apart : Disjoint (s6Step335Add0A++s6Step335Add0B).toFinset (s6Step335Add1A++s6Step335Add1B).toFinset := by
  have nd : ((s6Step335Add0A++s6Step335Add0B)++(s6Step335Add1A++s6Step335Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step335F4_carry : s6Step335F4FlagArena.checkBorrow 1 [805]=some s6Step335Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step335F4FlagArena,s6Step335HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step335F4FlagArena,s6Step335HeadFvAfter,s6Step335Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step335F4_distinct : (874::903::860::805::((s6Step335Add0A++s6Step335Add1A)++(s6Step335Add0B++s6Step335Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335F4_flag : s6Step335HeadFvAfter.checkBorrow 1 [860]=some s6Step335F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step335HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step335F4_owned : (874::903::((s6Step335Add0A++s6Step335Add1A)++(s6Step335Add0B++s6Step335Add1B))).toFinset⊆s6Step335HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step335HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335F4_checked : compileHmrHybridF4Log s6Step335HeadFvAfter 874 903 s6Step335Add0A s6Step335Add0B s6Step335Add1A s6Step335Add1B [860] [805] s6Step335Add0Work s6Step335Add1Work=some s6Step335F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step335HeadFvAfter s6Step335F4FlagArena s6Step335Add0Arena s6Step335Add0During s6Step335Add1During 874 903
    s6Step335Add0A s6Step335Add0B s6Step335Add1A s6Step335Add1B [860] [805] s6Step335Add0Work s6Step335Add1Work
    (fun q hq => s6Step335F4_owned (List.mem_toFinset.mpr hq)) s6Step335F4_flag s6Step335F4_carry
    s6Step335F4_distinct s6Step335F4_apart s6Step335Add0_checked s6Step335Add1_checked

private theorem s6Step335Front_branch : s6Step335FrontSigmaArena.checkBorrow 1 [903]=some s6Step335HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step335FrontSigmaArena,s6Step335EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step335FrontSigmaArena,s6Step335EntryGvAfter,s6Step335HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step335Front_entry : HmrFrontEntryValid s6Step335EntryFBefore s6Step335FrontBank 104 183 ⟨103,103,184,183⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step335FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step335EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step335EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step335FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step335Front_sigma : s6Step335EntryGvAfter.checkBorrow 1 [874]=some s6Step335FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step335EntryGvAfter,arenaWires]
  · rfl

private def s6Step335HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335HeadFBefore : Arena := s6Step335HeadGAfter

private def s6Step335HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩

private def s6Step335HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩

private def s6Step335HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 865],777⟩

private def s6Step335HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780],775⟩

private theorem s6Step335HeadBank_incomingDistinct : ([s6Step335HeadGRow,s6Step335HeadFRow,s6Step335HeadGvRow,s6Step335HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335HeadF_Incoming : rowsOwned s6Step335HeadFBefore [s6Step335HeadFRow,s6Step335HeadGvRow,s6Step335HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step335HeadGRow,s6Step335HeadFRow,s6Step335HeadGvRow,s6Step335HeadFvRow] 1 s6Step335HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step335HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step335HeadBank_outgoingOwned : rowsOwned s6Step335HeadFvAfter [s6Step335HeadGOut,s6Step335HeadFOut,s6Step335HeadGvOut,s6Step335HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step335HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step335HeadF_Outgoing : rowsOwned s6Step335HeadFvAfter [s6Step335HeadFOut,s6Step335HeadGvOut,s6Step335HeadFvOut] :=
  hmrRows_owned_drop s6Step335HeadFvAfter [s6Step335HeadGOut,s6Step335HeadFOut,s6Step335HeadGvOut,s6Step335HeadFvOut] 1 s6Step335HeadBank_outgoingOwned

private theorem s6Step335HeadF_distinct : (s6Step335HeadFRow.sign::s6Step335HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335HeadF_owned : (s6Step335HeadFRow.sign::s6Step335HeadFRow.payload).toFinset⊆s6Step335HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step335HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335HeadF_reserved : s6Step335HeadFBefore.reserve s6Step335HeadFFresh.toFinset=some s6Step335HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step335HeadFFresh,arenaWires]
  · norm_num [s6Step335HeadFBefore,s6Step335HeadGAfter,s6Step335HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step335HeadFAfter,s6Step335HeadFBefore,s6Step335HeadGAfter,s6Step335HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step335HeadF_checked : planRowResizeLog s6Step335HeadFBefore s6Step335HeadFRow 105 s6Step335HeadFFresh=
    some (s6Step335HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 907],795⟩,growRow 795 s6Step335HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step335HeadFBefore s6Step335HeadFAfter s6Step335HeadFRow 105 s6Step335HeadFFresh
    s6Step335HeadF_distinct s6Step335HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step335HeadF_reserved
  have rowEq : WindowRow.mk (s6Step335HeadFRow.payload++s6Step335HeadFFresh) s6Step335HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 907],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step335HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step335HeadFvBefore : Arena := s6Step335HeadGvAfter

private theorem s6Step335HeadFv_Incoming : rowsOwned s6Step335HeadFvBefore [s6Step335HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step335HeadGRow,s6Step335HeadFRow,s6Step335HeadGvRow,s6Step335HeadFvRow] 3 s6Step335HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step335HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step335HeadFv_Outgoing : rowsOwned s6Step335HeadFvAfter [s6Step335HeadFvOut] :=
  hmrRows_owned_drop s6Step335HeadFvAfter [s6Step335HeadGOut,s6Step335HeadFOut,s6Step335HeadGvOut,s6Step335HeadFvOut] 3 s6Step335HeadBank_outgoingOwned

private theorem s6Step335HeadFv_distinct : (s6Step335HeadFvRow.sign::s6Step335HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335HeadFv_owned : (s6Step335HeadFvRow.sign::s6Step335HeadFvRow.payload).toFinset⊆s6Step335HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step335HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335HeadFv_reserved : s6Step335HeadFvBefore.reserve s6Step335HeadFvFresh.toFinset=some s6Step335HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step335HeadFvFresh,arenaWires]
  · norm_num [s6Step335HeadFvBefore,s6Step335HeadGvAfter,s6Step335HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step335HeadFvAfter,s6Step335HeadFvBefore,s6Step335HeadGvAfter,s6Step335HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step335HeadFv_checked : planRowResizeLog s6Step335HeadFvBefore s6Step335HeadFvRow 184 s6Step335HeadFvFresh=
    some (s6Step335HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩,growRow 776 s6Step335HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step335HeadFvBefore s6Step335HeadFvAfter s6Step335HeadFvRow 184 s6Step335HeadFvFresh
    s6Step335HeadFv_distinct s6Step335HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step335HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step335HeadFvRow.payload++s6Step335HeadFvFresh) s6Step335HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step335HeadG_Incoming : rowsOwned s6Step335HeadGBefore [s6Step335HeadGRow,s6Step335HeadFRow,s6Step335HeadGvRow,s6Step335HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step335HeadGRow,s6Step335HeadFRow,s6Step335HeadGvRow,s6Step335HeadFvRow] 0 s6Step335HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step335HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step335HeadG_Outgoing : rowsOwned s6Step335HeadFvAfter [s6Step335HeadGOut,s6Step335HeadFOut,s6Step335HeadGvOut,s6Step335HeadFvOut] :=
  hmrRows_owned_drop s6Step335HeadFvAfter [s6Step335HeadGOut,s6Step335HeadFOut,s6Step335HeadGvOut,s6Step335HeadFvOut] 0 s6Step335HeadBank_outgoingOwned

private theorem s6Step335HeadG_distinct : (s6Step335HeadGRow.sign::s6Step335HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335HeadG_owned : (s6Step335HeadGRow.sign::s6Step335HeadGRow.payload).toFinset⊆s6Step335HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step335HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335HeadG_reserved : s6Step335HeadGBefore.reserve s6Step335HeadGFresh.toFinset=some s6Step335HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step335HeadGFresh,arenaWires]
  · norm_num [s6Step335HeadGBefore,s6Step335HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step335HeadGAfter,s6Step335HeadGBefore,s6Step335HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step335HeadG_checked : planRowResizeLog s6Step335HeadGBefore s6Step335HeadGRow 105 s6Step335HeadGFresh=
    some (s6Step335HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 865, 843],777⟩,growRow 777 s6Step335HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step335HeadGBefore s6Step335HeadGAfter s6Step335HeadGRow 105 s6Step335HeadGFresh
    s6Step335HeadG_distinct s6Step335HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step335HeadG_reserved
  have rowEq : WindowRow.mk (s6Step335HeadGRow.payload++s6Step335HeadGFresh) s6Step335HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 865, 843],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step335HeadGvBefore : Arena := s6Step335HeadFAfter

private theorem s6Step335HeadGv_Incoming : rowsOwned s6Step335HeadGvBefore [s6Step335HeadGvRow,s6Step335HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step335HeadGRow,s6Step335HeadFRow,s6Step335HeadGvRow,s6Step335HeadFvRow] 2 s6Step335HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step335HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step335HeadGv_Outgoing : rowsOwned s6Step335HeadFvAfter [s6Step335HeadGvOut,s6Step335HeadFvOut] :=
  hmrRows_owned_drop s6Step335HeadFvAfter [s6Step335HeadGOut,s6Step335HeadFOut,s6Step335HeadGvOut,s6Step335HeadFvOut] 2 s6Step335HeadBank_outgoingOwned

private theorem s6Step335HeadGv_distinct : (s6Step335HeadGvRow.sign::s6Step335HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step335HeadGv_owned : (s6Step335HeadGvRow.sign::s6Step335HeadGvRow.payload).toFinset⊆s6Step335HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step335HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step335HeadGv_reserved : s6Step335HeadGvBefore.reserve s6Step335HeadGvFresh.toFinset=some s6Step335HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step335HeadGvFresh,arenaWires]
  · norm_num [s6Step335HeadGvBefore,s6Step335HeadFAfter,s6Step335HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step335HeadGvAfter,s6Step335HeadGvBefore,s6Step335HeadFAfter,s6Step335HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step335HeadGv_checked : planRowResizeLog s6Step335HeadGvBefore s6Step335HeadGvRow 184 s6Step335HeadGvFresh=
    some (s6Step335HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 838],775⟩,growRow 775 s6Step335HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step335HeadGvBefore s6Step335HeadGvAfter s6Step335HeadGvRow 184 s6Step335HeadGvFresh
    s6Step335HeadGv_distinct s6Step335HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step335HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step335HeadGvRow.payload++s6Step335HeadGvFresh) s6Step335HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 838],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step335HeadBank_rows : planWindowRowsLog s6Step335HeadGBefore [(s6Step335HeadGRow,105),(s6Step335HeadFRow,105),(s6Step335HeadGvRow,184),(s6Step335HeadFvRow,184)] [s6Step335HeadGFresh,s6Step335HeadFFresh,s6Step335HeadGvFresh,s6Step335HeadFvFresh]=
    some (s6Step335HeadFvAfter,[s6Step335HeadGOut,s6Step335HeadFOut,s6Step335HeadGvOut,s6Step335HeadFvOut],(growRow 777 s6Step335HeadGFresh ++ (growRow 795 s6Step335HeadFFresh ++ (growRow 775 s6Step335HeadGvFresh ++ (growRow 776 s6Step335HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step335HeadFvAfter [] []=some (s6Step335HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step335HeadFvBefore s6Step335HeadFvAfter s6Step335HeadFvAfter
    s6Step335HeadFvRow s6Step335HeadFvOut 184 s6Step335HeadFvFresh [] [] []
    (growRow 776 s6Step335HeadFvFresh) ([]) s6Step335HeadFv_Incoming s6Step335HeadFv_checked h4 s6Step335HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step335HeadGvBefore s6Step335HeadGvAfter s6Step335HeadFvAfter
    s6Step335HeadGvRow s6Step335HeadGvOut 184 s6Step335HeadGvFresh [(s6Step335HeadFvRow,184)] [s6Step335HeadFvFresh] [s6Step335HeadFvOut]
    (growRow 775 s6Step335HeadGvFresh) ((growRow 776 s6Step335HeadFvFresh ++ [])) s6Step335HeadGv_Incoming s6Step335HeadGv_checked h3 s6Step335HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step335HeadFBefore s6Step335HeadFAfter s6Step335HeadFvAfter
    s6Step335HeadFRow s6Step335HeadFOut 105 s6Step335HeadFFresh [(s6Step335HeadGvRow,184),(s6Step335HeadFvRow,184)] [s6Step335HeadGvFresh,s6Step335HeadFvFresh] [s6Step335HeadGvOut,s6Step335HeadFvOut]
    (growRow 795 s6Step335HeadFFresh) ((growRow 775 s6Step335HeadGvFresh ++ (growRow 776 s6Step335HeadFvFresh ++ []))) s6Step335HeadF_Incoming s6Step335HeadF_checked h2 s6Step335HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step335HeadGBefore s6Step335HeadGAfter s6Step335HeadFvAfter
    s6Step335HeadGRow s6Step335HeadGOut 105 s6Step335HeadGFresh [(s6Step335HeadFRow,105),(s6Step335HeadGvRow,184),(s6Step335HeadFvRow,184)] [s6Step335HeadFFresh,s6Step335HeadGvFresh,s6Step335HeadFvFresh] [s6Step335HeadFOut,s6Step335HeadGvOut,s6Step335HeadFvOut]
    (growRow 777 s6Step335HeadGFresh) ((growRow 795 s6Step335HeadFFresh ++ (growRow 775 s6Step335HeadGvFresh ++ (growRow 776 s6Step335HeadFvFresh ++ [])))) s6Step335HeadG_Incoming s6Step335HeadG_checked h1 s6Step335HeadG_Outgoing
  exact h0

private theorem s6Step335HeadBank_checked : compileHmrBankResizeLog .headroom s6Step335HeadGBefore ⟨s6Step335HeadFRow,s6Step335HeadGRow,s6Step335HeadFvRow,s6Step335HeadGvRow⟩ ⟨105,105,184,184⟩ [s6Step335HeadGFresh,s6Step335HeadFFresh,s6Step335HeadGvFresh,s6Step335HeadFvFresh]=
    some (s6Step335HeadFvAfter,⟨s6Step335HeadFOut,s6Step335HeadGOut,s6Step335HeadFvOut,s6Step335HeadGvOut⟩,(growRow 777 s6Step335HeadGFresh ++ (growRow 795 s6Step335HeadFFresh ++ (growRow 775 s6Step335HeadGvFresh ++ (growRow 776 s6Step335HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step335HeadBank_rows]
  rfl

private theorem s6Step335Front_checked : compileHmrSourceFrontLog s6Step335EntryFBefore s6Step335FrontBank 104 183 ⟨103,103,184,183⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step335FrontLog=some s6Step335FrontPlan := by
  have pairEq : s6Step335FrontPair=⟨s6Step335HeadFRow,s6Step335HeadGRow,s6Step335HeadFvRow,s6Step335HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step335FrontHead=⟨s6Step335ExitFRow,s6Step335ExitGRow,s6Step335ExitFvRow,s6Step335ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step335Add0A=s6Step335FrontHead.f.wires := by decide +kernel
  have gEq : s6Step335Add0B=s6Step335FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step335Add1A=s6Step335FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step335Add1B=s6Step335FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step335EntryFBefore s6Step335FrontBank 104 183 ⟨103,103,184,183⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step335FrontLog s6Step335FrontPlan
  · exact s6Step335Front_entry
  · exact s6Step335EntryBank_checked
  · exact s6Step335Front_sigma
  · rfl
  · exact s6Step335Front_branch
  · rfl
  · simpa only [s6Step335FrontPlan,pairEq] using s6Step335HeadBank_checked
  · simpa only [s6Step335FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step335F4_checked
  · exact s6Step335Counter_checked
  · rfl
  · simpa only [s6Step335FrontPlan,headEq] using s6Step335ExitBank_checked

private theorem s6Step335Complete_explicit_checked : compileHmrEarlyStepLog s6Step335EntryFBefore s6Step335FrontBank 104 183 ⟨103,103,184,183⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step335CompleteLog=some s6Step335CompletePlan := by
  let Q := s6Step335EarlyControlPlan
  have hq := s6Step335EarlyControl_plan_checked
  have fv1 : s6Step335CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step335CompleteOut.fv.payload[2]?.getD s6Step335CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step335CompleteOut.fv.payload[3]?.getD s6Step335CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step335CompleteOut.fv.payload[4]?.getD s6Step335CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step335EntryFBefore s6Step335EarlyControlArena s6Step335FrontBank 104 183 ⟨103,103,184,183⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step335CompleteLog s6Step335FrontPlan Q
    s6Step335Front_checked s6Step335Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step335Complete_owned s6Step335Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step335EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 s6Step335CompleteOut.fv.second (s6Step335CompleteOut.fv.payload[2]?.getD s6Step335CompleteOut.fv.sign) (s6Step335CompleteOut.fv.payload[3]?.getD s6Step335CompleteOut.fv.sign) (s6Step335CompleteOut.fv.payload[4]?.getD s6Step335CompleteOut.fv.sign) 903 60 s6Step335EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep335Arena : Arena := s6Step335EntryFBefore
def s6PrivateStep335Bank : WindowBank := s6Step335FrontBank
def s6PrivateStep335Spec : HmrSourceWalkStepLog := ⟨104,183,⟨103,103,184,183⟩,60,.early s6Step335CompleteLog⟩
def s6PrivateStep335Plan : HmrSourceStepPlan := .early s6Step335CompletePlan
theorem s6PrivateStep335_source : s6PrivateStep335Spec=s6ObservedLogs320[15] := rfl
theorem s6PrivateStep335_checked : compileHmrSourceStepLog s6PrivateStep335Arena s6PrivateStep335Bank
    s6PrivateStep335Spec.fgWidth s6PrivateStep335Spec.vWidth s6PrivateStep335Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 335 s6PrivateStep335Spec.need none s6PrivateStep335Spec.log=some s6PrivateStep335Plan := by
  change compileHmrSourceStepLog s6Step335EntryFBefore s6Step335FrontBank 104 183 ⟨103,103,184,183⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 335 60 none (.early s6Step335CompleteLog)=some (.early s6Step335CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 335<498)]
  rw [s6Step335Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
