import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep339
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

private def s6Step341CompleteMoves : List (Wire × Wire) := []

private def s6Step341EarlyControlLog : HmrEarlyControlLog := ⟨[860, 903, 802, 768, 805],[817],[812],[915, 906, 792, 816, 819, 920],[]⟩

private def s6Step341FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [802, 768], [], []],[[805], [903], [860], [865]],[[], [], [], []]⟩,[881],[843],[817],[812],[915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906]⟩

private def s6Step341CompleteLog : HmrEarlyStepLog := ⟨s6Step341FrontLog,s6Step341CompleteMoves,s6Step341EarlyControlLog⟩

private def s6Step341ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩

private def s6Step341ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865],776⟩

private def s6Step341ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99],777⟩

private def s6Step341ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907],775⟩

private def s6Step341FrontOut : WindowBank := ⟨s6Step341ExitFOut,s6Step341ExitGOut,s6Step341ExitFvOut,s6Step341ExitGvOut⟩

private def s6Step341CompleteOut : WindowBank := s6Step341FrontOut.repacked s6Step341CompleteMoves

private def s6Step341EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step341EarlyControlPositiveArena,[817],s6Step341EarlyControlEqualityArena,[812],⟨⟨881,false⟩,[⟨⟨817,false⟩,812⟩]⟩⟩

private def s6Step341EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,860⟩,⟨⟨772,false⟩,903⟩,⟨⟨771,false⟩,802⟩,⟨⟨770,false⟩,768⟩,⟨⟨769,false⟩,805⟩]⟩

private def s6Step341EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step341EarlyControlZeroArena,s6Step341EarlyControlZeroPlan,s6Step341EarlyControlClassPlan,s6Step341EarlyControlFlagArena,s6Step341EarlyControlFittedArena,s6Step341EarlyControlHistoryArena,s6Step341EarlyControlSigmaArena,s6Step341EarlyControlOutputArena,s6Step341EarlyControlLog⟩

private def s6Step341CounterWork : List Wire := [817, 812, 915, 906]

private theorem s6Step341Counter_bounded : s6Step341CounterWork.toFinset⊆arenaWires := by norm_num [s6Step341CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step341HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341CounterDuring : Arena := ⟨s6Step341HeadFvAfter.live∪s6Step341CounterWork.toFinset,Finset.union_subset s6Step341HeadFvAfter.bounded s6Step341Counter_bounded⟩

private def s6Step341EntryFFresh : List Wire := []

private def s6Step341EntryFvFresh : List Wire := []

private def s6Step341EntryGFresh : List Wire := [802, 768]

private def s6Step341EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341EntryGvAfter : Arena := s6Step341EntryGAfter

private def s6Step341EntryGvFresh : List Wire := []

private def s6Step341ExitFExtra : List Wire := [903]

private def s6Step341ExitGExtra : List Wire := [802, 768, 805]

private def s6Step341ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341ExitGvExtra : List Wire := [860]

private def s6Step341Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341Add0Work : List Wire := [915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step341Add0_bounded : s6Step341Add0Work.toFinset⊆arenaWires := by
  have h : s6Step341Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step341Add0During : Arena := ⟨s6Step341Add0Arena.live∪s6Step341Add0Work.toFinset,Finset.union_subset s6Step341Add0Arena.bounded s6Step341Add0_bounded⟩

private def s6Step341Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341Add1Work : List Wire := [915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step341Add1_bounded : s6Step341Add1Work.toFinset⊆arenaWires := by
  have h : s6Step341Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step341Add1During : Arena := ⟨s6Step341Add1Arena.live∪s6Step341Add1Work.toFinset,Finset.union_subset s6Step341Add1Arena.bounded s6Step341Add1_bounded⟩

private def s6Step341F4FlagArena : Arena := ⟨s6Step341HeadFvAfter.live∪{817},Finset.union_subset s6Step341HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step341F4Plan : HmrHybridF4Plan := ⟨s6Step341F4FlagArena,[817],s6Step341Add0Arena,[812],s6Step341Add0During,s6Step341Add0Work,s6Step341Add1During,s6Step341Add1Work⟩

private def s6Step341HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 903],795⟩

private def s6Step341HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865],776⟩

private def s6Step341HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802, 768, 805],777⟩

private def s6Step341HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860],775⟩

private def s6Step341FrontHead : WindowBank := ⟨s6Step341HeadFOut,s6Step341HeadGOut,s6Step341HeadFvOut,s6Step341HeadGvOut⟩

private def s6Step341EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩

private def s6Step341EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩

private def s6Step341EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802, 768],777⟩

private def s6Step341EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907],775⟩

private def s6Step341FrontPair : WindowBank := ⟨s6Step341EntryFOut,s6Step341EntryGOut,s6Step341EntryFvOut,s6Step341EntryGvOut⟩

private def s6Step341FrontSigmaArena : Arena := ⟨s6Step341EntryGvAfter.live∪{881},Finset.union_subset s6Step341EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step341HeadFFresh : List Wire := [903]

private def s6Step341HeadFvFresh : List Wire := [865]

private def s6Step341HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341HeadGFresh : List Wire := [805]

private def s6Step341HeadGvFresh : List Wire := [860]

private def s6Step341FrontPlan : HmrSourceFront := ⟨s6Step341EntryGvAfter,s6Step341FrontPair,(growRow 795 s6Step341EntryFFresh ++ (growRow 777 s6Step341EntryGFresh ++ (growRow 776 s6Step341EntryFvFresh ++ (growRow 775 s6Step341EntryGvFresh ++ [])))),s6Step341FrontSigmaArena,[881],s6Step341HeadGBefore,[843],
  s6Step341HeadFvAfter,s6Step341FrontHead,(growRow 777 s6Step341HeadGFresh ++ (growRow 795 s6Step341HeadFFresh ++ (growRow 775 s6Step341HeadGvFresh ++ (growRow 776 s6Step341HeadFvFresh ++ [])))),s6Step341F4Plan,s6Step341CounterDuring,s6Step341CounterWork,s6Step341ExitGvAfter,s6Step341FrontOut,(shrinkRow 777 s6Step341ExitGExtra ++ (shrinkRow 795 s6Step341ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step341ExitGvExtra ++ []))))⟩

private def s6Step341CompletePlan : HmrEarlyStepPlan := ⟨s6Step341FrontPlan,s6Step341EarlyControlArena,s6Step341EarlyControlPlan,s6Step341CompleteMoves⟩

private theorem s6Step341Complete_apart : List.Disjoint (s6Step341CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [881, 843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step341CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[881, 843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step341Complete_owned : (s6Step341CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step341EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step341EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341Complete_repack : s6Step341ExitGvAfter.checkRepack s6Step341CompleteMoves=some s6Step341EarlyControlArena := by rfl

private theorem s6Step341EarlyControl_branchOwned : ([843] : List Wire).toFinset⊆s6Step341EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step341EarlyControlSigmaArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341EarlyControl_branch : compileHmrBranchRetirement s6Step341EarlyControlSigmaArena 843=some s6Step341EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step341EarlyControl_branchOwned
  · ext q
    simp [s6Step341EarlyControlOutputArena,s6Step341EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step341EarlyControl_classEqualityBorrow : s6Step341EarlyControlPositiveArena.checkBorrow (([881, 817] : List Wire).length-1) s6Step341EarlyControlLog.classWork=some s6Step341EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step341EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step341EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step341EarlyControlEqualityArena,s6Step341EarlyControlPositiveArena,s6Step341EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step341EarlyControl_classEqualityOwned : ([881, 817] : List Wire).toFinset⊆s6Step341EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step341EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341EarlyControl_classEquality : compileHmrEqualityLog s6Step341EarlyControlPositiveArena [881, 817] 0 s6Step341EarlyControlLog.classWork=some (s6Step341EarlyControlEqualityArena,s6Step341EarlyControlLog.classWork,s6Step341EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step341EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step341EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step341EarlyControl_classOwned : ([769, 805, 881] : List Wire).toFinset⊆s6Step341EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step341EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341EarlyControl_positiveBorrow : s6Step341EarlyControlZeroArena.checkBorrow (1) s6Step341EarlyControlLog.positiveWork=some s6Step341EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step341EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step341EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step341EarlyControlPositiveArena,s6Step341EarlyControlZeroArena,s6Step341EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step341EarlyControl_class : compileHmrSourceClassLog s6Step341EarlyControlZeroArena false 769 s6Step341EarlyControlZeroPlan.top 0 881 s6Step341EarlyControlLog.positiveWork s6Step341EarlyControlLog.classWork=some s6Step341EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step341EarlyControlClassPlan s6Step341EarlyControlZeroArena false 769 s6Step341EarlyControlZeroPlan.top 0 881
  constructor
  · decide +kernel
  · exact s6Step341EarlyControl_classOwned
  · exact s6Step341EarlyControl_positiveBorrow
  · exact s6Step341EarlyControl_classEquality

private theorem s6Step341EarlyControl_entryRecordOwned : ([843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step341EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step341EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341EarlyControl_entrySigmaOwned : ([881, 254] : List Wire).toFinset⊆s6Step341EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step341EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341EarlyControl_fitBorrow : s6Step341EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step341EarlyControlLog.recordFresh=some s6Step341EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step341EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step341EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step341EarlyControlFittedArena,s6Step341EarlyControlFlagArena,s6Step341EarlyControlLog,arenaWires]

private theorem s6Step341EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step341EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step341EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341EarlyControl_fit : compileHmrRecordGrowLog s6Step341EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step341EarlyControlLog.recordFresh=some s6Step341EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step341EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step341EarlyControl_fitBorrow

private theorem s6Step341EarlyControl_flagsBorrow : s6Step341EarlyControlEqualityArena.checkBorrow (6) s6Step341EarlyControlLog.flagWork=some s6Step341EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step341EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step341EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step341EarlyControlFlagArena,s6Step341EarlyControlEqualityArena,s6Step341EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step341EarlyControl_flagsOwned : ([812, 253, 252, 251] : List Wire).toFinset⊆s6Step341EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step341EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341EarlyControl_flags : compileHmrFlagsLog s6Step341EarlyControlClassPlan.equalityArena s6Step341EarlyControlClassPlan.equality.top 253 252 251 s6Step341EarlyControlLog.flagWork=some s6Step341EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step341EarlyControl_flagsOwned⟩
  · exact s6Step341EarlyControl_flagsBorrow

private theorem s6Step341EarlyControl_historyBorrow : s6Step341EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step341EarlyControlLog.recordFresh=some s6Step341EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step341EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step341EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step341EarlyControlHistoryArena,s6Step341EarlyControlArena,s6Step341EarlyControlLog,arenaWires]

private theorem s6Step341EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step341EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step341EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341EarlyControl_history : compileHmrRecordGrowLog s6Step341EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step341EarlyControlLog.recordFresh=some s6Step341EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step341EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step341EarlyControl_historyBorrow

private theorem s6Step341EarlyControl_sigmaOwned : ([254, 881] : List Wire).toFinset⊆s6Step341EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step341EarlyControlHistoryArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341EarlyControl_sigmaReleaseOwned : ([881] : List Wire).toFinset⊆s6Step341EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step341EarlyControlHistoryArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341EarlyControl_sigmaRelease : s6Step341EarlyControlHistoryArena.release {881} (fun _ => false)=some s6Step341EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step341EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step341EarlyControlSigmaArena,s6Step341EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step341EarlyControl_sigma : compileHmrSigmaDropLog s6Step341EarlyControlHistoryArena false 0 0 254 881 []=some s6Step341EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step341EarlyControl_sigmaOwned⟩
  · exact s6Step341EarlyControl_sigmaRelease

private theorem s6Step341EarlyControl_zeroBorrow : s6Step341EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step341EarlyControlLog.zeroWork=some s6Step341EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step341EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step341EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step341EarlyControlZeroArena,s6Step341EarlyControlArena,s6Step341EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step341EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step341EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step341EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341EarlyControl_zero : compileHmrEqualityLog s6Step341EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step341EarlyControlLog.zeroWork=some (s6Step341EarlyControlZeroArena,s6Step341EarlyControlLog.zeroWork,s6Step341EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step341EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step341EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step341EarlyControl_logged : s6Step341EarlyControlPlan.Logged s6Step341EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 881 254 253 252 251 843 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step341EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step341EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step341EarlyControl_zero
  · exact s6Step341EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step341EarlyControl_flags
  · exact s6Step341EarlyControl_fit
  · exact s6Step341EarlyControl_history
  · exact s6Step341EarlyControl_sigma
  · exact s6Step341EarlyControl_branch

private theorem s6Step341EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step341EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 881 254 253 252 251 843 60 s6Step341EarlyControlLog=some s6Step341EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step341EarlyControlPlan s6Step341EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 881 254 253 252 251 843 60 s6Step341EarlyControl_logged

private def s6Step341EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩

private def s6Step341EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩

private def s6Step341EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99],777⟩

private def s6Step341EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907],775⟩

private def s6Step341FrontBank : WindowBank := ⟨s6Step341EntryFRow,s6Step341EntryGRow,s6Step341EntryFvRow,s6Step341EntryGvRow⟩

private def s6Step341Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 903, 795]

private def s6Step341Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802, 768, 805, 777]

private def s6Step341Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 776]

private def s6Step341Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 775]

private theorem s6Step341Counter_apart : Disjoint s6Step341HeadFvAfter.live s6Step341CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step341HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341Counter_borrowed : s6Step341HeadFvAfter.checkBorrow 4 s6Step341CounterWork=some s6Step341CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step341HeadFvAfter s6Step341CounterDuring s6Step341CounterWork.toFinset s6Step341Counter_bounded s6Step341Counter_apart rfl

private theorem s6Step341Counter_owned : (881::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step341HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step341HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341Counter_checked : compileHmrCounterStepLog s6Step341HeadFvAfter true 881 [774, 773, 772, 771, 770, 769] s6Step341CounterWork=some s6Step341CounterDuring := by
  have owned : ∀q∈881::[774, 773, 772, 771, 770, 769],q∈s6Step341HeadFvAfter.live := fun q hq => s6Step341Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step341Counter_borrowed

private def s6Step341EntryFAfter : Arena := s6Step341EntryFBefore

private theorem s6Step341EntryBank_incomingDistinct : ([s6Step341EntryFRow,s6Step341EntryGRow,s6Step341EntryFvRow,s6Step341EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341EntryF_Incoming : rowsOwned s6Step341EntryFBefore [s6Step341EntryFRow,s6Step341EntryGRow,s6Step341EntryFvRow,s6Step341EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step341EntryFRow,s6Step341EntryGRow,s6Step341EntryFvRow,s6Step341EntryGvRow] 0 s6Step341EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step341EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step341EntryBank_outgoingOwned : rowsOwned s6Step341EntryGvAfter [s6Step341EntryFOut,s6Step341EntryGOut,s6Step341EntryFvOut,s6Step341EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step341EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step341EntryF_Outgoing : rowsOwned s6Step341EntryGvAfter [s6Step341EntryFOut,s6Step341EntryGOut,s6Step341EntryFvOut,s6Step341EntryGvOut] :=
  hmrRows_owned_drop s6Step341EntryGvAfter [s6Step341EntryFOut,s6Step341EntryGOut,s6Step341EntryFvOut,s6Step341EntryGvOut] 0 s6Step341EntryBank_outgoingOwned

private theorem s6Step341EntryF_distinct : (s6Step341EntryFRow.sign::s6Step341EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341EntryF_owned : (s6Step341EntryFRow.sign::s6Step341EntryFRow.payload).toFinset⊆s6Step341EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step341EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341EntryF_reserved : s6Step341EntryFBefore.reserve s6Step341EntryFFresh.toFinset=some s6Step341EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step341EntryFFresh,arenaWires]
  · norm_num [s6Step341EntryFBefore,s6Step341EntryFFresh,arenaWires]
  · simp only [s6Step341EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step341EntryF_checked : planRowResizeLog s6Step341EntryFBefore s6Step341EntryFRow 102 s6Step341EntryFFresh=
    some (s6Step341EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩,growRow 795 s6Step341EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step341EntryFBefore s6Step341EntryFAfter s6Step341EntryFRow 102 s6Step341EntryFFresh
    s6Step341EntryF_distinct s6Step341EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step341EntryF_reserved
  have rowEq : WindowRow.mk (s6Step341EntryFRow.payload++s6Step341EntryFFresh) s6Step341EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step341EntryFvAfter : Arena := s6Step341EntryGAfter

private def s6Step341EntryFvBefore : Arena := s6Step341EntryGAfter

private theorem s6Step341EntryFv_Incoming : rowsOwned s6Step341EntryFvBefore [s6Step341EntryFvRow,s6Step341EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step341EntryFRow,s6Step341EntryGRow,s6Step341EntryFvRow,s6Step341EntryGvRow] 2 s6Step341EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step341EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step341EntryFv_Outgoing : rowsOwned s6Step341EntryGvAfter [s6Step341EntryFvOut,s6Step341EntryGvOut] :=
  hmrRows_owned_drop s6Step341EntryGvAfter [s6Step341EntryFOut,s6Step341EntryGOut,s6Step341EntryFvOut,s6Step341EntryGvOut] 2 s6Step341EntryBank_outgoingOwned

private theorem s6Step341EntryFv_distinct : (s6Step341EntryFvRow.sign::s6Step341EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341EntryFv_owned : (s6Step341EntryFvRow.sign::s6Step341EntryFvRow.payload).toFinset⊆s6Step341EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step341EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341EntryFv_reserved : s6Step341EntryFvBefore.reserve s6Step341EntryFvFresh.toFinset=some s6Step341EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step341EntryFvFresh,arenaWires]
  · norm_num [s6Step341EntryFvBefore,s6Step341EntryGAfter,s6Step341EntryFvFresh,arenaWires]
  · simp only [s6Step341EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step341EntryFv_checked : planRowResizeLog s6Step341EntryFvBefore s6Step341EntryFvRow 186 s6Step341EntryFvFresh=
    some (s6Step341EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩,growRow 776 s6Step341EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step341EntryFvBefore s6Step341EntryFvAfter s6Step341EntryFvRow 186 s6Step341EntryFvFresh
    s6Step341EntryFv_distinct s6Step341EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step341EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step341EntryFvRow.payload++s6Step341EntryFvFresh) s6Step341EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step341EntryGBefore : Arena := s6Step341EntryFBefore

private theorem s6Step341EntryG_Incoming : rowsOwned s6Step341EntryGBefore [s6Step341EntryGRow,s6Step341EntryFvRow,s6Step341EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step341EntryFRow,s6Step341EntryGRow,s6Step341EntryFvRow,s6Step341EntryGvRow] 1 s6Step341EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step341EntryGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step341EntryG_Outgoing : rowsOwned s6Step341EntryGvAfter [s6Step341EntryGOut,s6Step341EntryFvOut,s6Step341EntryGvOut] :=
  hmrRows_owned_drop s6Step341EntryGvAfter [s6Step341EntryFOut,s6Step341EntryGOut,s6Step341EntryFvOut,s6Step341EntryGvOut] 1 s6Step341EntryBank_outgoingOwned

private theorem s6Step341EntryG_distinct : (s6Step341EntryGRow.sign::s6Step341EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341EntryG_owned : (s6Step341EntryGRow.sign::s6Step341EntryGRow.payload).toFinset⊆s6Step341EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step341EntryGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341EntryG_reserved : s6Step341EntryGBefore.reserve s6Step341EntryGFresh.toFinset=some s6Step341EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step341EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step341EntryGBefore,s6Step341EntryFBefore,s6Step341EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step341EntryGAfter,s6Step341EntryGBefore,s6Step341EntryFBefore,s6Step341EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step341EntryG_checked : planRowResizeLog s6Step341EntryGBefore s6Step341EntryGRow 102 s6Step341EntryGFresh=
    some (s6Step341EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802, 768],777⟩,growRow 777 s6Step341EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step341EntryGBefore s6Step341EntryGAfter s6Step341EntryGRow 102 s6Step341EntryGFresh
    s6Step341EntryG_distinct s6Step341EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step341EntryG_reserved
  have rowEq : WindowRow.mk (s6Step341EntryGRow.payload++s6Step341EntryGFresh) s6Step341EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802, 768],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step341EntryGvBefore : Arena := s6Step341EntryGAfter

private theorem s6Step341EntryGv_Incoming : rowsOwned s6Step341EntryGvBefore [s6Step341EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step341EntryFRow,s6Step341EntryGRow,s6Step341EntryFvRow,s6Step341EntryGvRow] 3 s6Step341EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step341EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step341EntryGv_Outgoing : rowsOwned s6Step341EntryGvAfter [s6Step341EntryGvOut] :=
  hmrRows_owned_drop s6Step341EntryGvAfter [s6Step341EntryFOut,s6Step341EntryGOut,s6Step341EntryFvOut,s6Step341EntryGvOut] 3 s6Step341EntryBank_outgoingOwned

private theorem s6Step341EntryGv_distinct : (s6Step341EntryGvRow.sign::s6Step341EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341EntryGv_owned : (s6Step341EntryGvRow.sign::s6Step341EntryGvRow.payload).toFinset⊆s6Step341EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step341EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341EntryGv_reserved : s6Step341EntryGvBefore.reserve s6Step341EntryGvFresh.toFinset=some s6Step341EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step341EntryGvFresh,arenaWires]
  · norm_num [s6Step341EntryGvBefore,s6Step341EntryGAfter,s6Step341EntryGvFresh,arenaWires]
  · simp only [s6Step341EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step341EntryGv_checked : planRowResizeLog s6Step341EntryGvBefore s6Step341EntryGvRow 186 s6Step341EntryGvFresh=
    some (s6Step341EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907],775⟩,growRow 775 s6Step341EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step341EntryGvBefore s6Step341EntryGvAfter s6Step341EntryGvRow 186 s6Step341EntryGvFresh
    s6Step341EntryGv_distinct s6Step341EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step341EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step341EntryGvRow.payload++s6Step341EntryGvFresh) s6Step341EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step341EntryBank_rows : planWindowRowsLog s6Step341EntryFBefore [(s6Step341EntryFRow,102),(s6Step341EntryGRow,102),(s6Step341EntryFvRow,186),(s6Step341EntryGvRow,186)] [s6Step341EntryFFresh,s6Step341EntryGFresh,s6Step341EntryFvFresh,s6Step341EntryGvFresh]=
    some (s6Step341EntryGvAfter,[s6Step341EntryFOut,s6Step341EntryGOut,s6Step341EntryFvOut,s6Step341EntryGvOut],(growRow 795 s6Step341EntryFFresh ++ (growRow 777 s6Step341EntryGFresh ++ (growRow 776 s6Step341EntryFvFresh ++ (growRow 775 s6Step341EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step341EntryGvAfter [] []=some (s6Step341EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step341EntryGvBefore s6Step341EntryGvAfter s6Step341EntryGvAfter
    s6Step341EntryGvRow s6Step341EntryGvOut 186 s6Step341EntryGvFresh [] [] []
    (growRow 775 s6Step341EntryGvFresh) ([]) s6Step341EntryGv_Incoming s6Step341EntryGv_checked h4 s6Step341EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step341EntryFvBefore s6Step341EntryFvAfter s6Step341EntryGvAfter
    s6Step341EntryFvRow s6Step341EntryFvOut 186 s6Step341EntryFvFresh [(s6Step341EntryGvRow,186)] [s6Step341EntryGvFresh] [s6Step341EntryGvOut]
    (growRow 776 s6Step341EntryFvFresh) ((growRow 775 s6Step341EntryGvFresh ++ [])) s6Step341EntryFv_Incoming s6Step341EntryFv_checked h3 s6Step341EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step341EntryGBefore s6Step341EntryGAfter s6Step341EntryGvAfter
    s6Step341EntryGRow s6Step341EntryGOut 102 s6Step341EntryGFresh [(s6Step341EntryFvRow,186),(s6Step341EntryGvRow,186)] [s6Step341EntryFvFresh,s6Step341EntryGvFresh] [s6Step341EntryFvOut,s6Step341EntryGvOut]
    (growRow 777 s6Step341EntryGFresh) ((growRow 776 s6Step341EntryFvFresh ++ (growRow 775 s6Step341EntryGvFresh ++ []))) s6Step341EntryG_Incoming s6Step341EntryG_checked h2 s6Step341EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step341EntryFBefore s6Step341EntryFAfter s6Step341EntryGvAfter
    s6Step341EntryFRow s6Step341EntryFOut 102 s6Step341EntryFFresh [(s6Step341EntryGRow,102),(s6Step341EntryFvRow,186),(s6Step341EntryGvRow,186)] [s6Step341EntryGFresh,s6Step341EntryFvFresh,s6Step341EntryGvFresh] [s6Step341EntryGOut,s6Step341EntryFvOut,s6Step341EntryGvOut]
    (growRow 795 s6Step341EntryFFresh) ((growRow 777 s6Step341EntryGFresh ++ (growRow 776 s6Step341EntryFvFresh ++ (growRow 775 s6Step341EntryGvFresh ++ [])))) s6Step341EntryF_Incoming s6Step341EntryF_checked h1 s6Step341EntryF_Outgoing
  exact h0

private theorem s6Step341EntryBank_checked : compileHmrBankResizeLog .entry s6Step341EntryFBefore ⟨s6Step341EntryFRow,s6Step341EntryGRow,s6Step341EntryFvRow,s6Step341EntryGvRow⟩ ⟨102,102,186,186⟩ [s6Step341EntryFFresh,s6Step341EntryGFresh,s6Step341EntryFvFresh,s6Step341EntryGvFresh]=
    some (s6Step341EntryGvAfter,⟨s6Step341EntryFOut,s6Step341EntryGOut,s6Step341EntryFvOut,s6Step341EntryGvOut⟩,(growRow 795 s6Step341EntryFFresh ++ (growRow 777 s6Step341EntryGFresh ++ (growRow 776 s6Step341EntryFvFresh ++ (growRow 775 s6Step341EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step341EntryBank_rows]
  rfl

private def s6Step341ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341ExitFBefore : Arena := s6Step341ExitGAfter

private def s6Step341ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 903],795⟩

private def s6Step341ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865],776⟩

private def s6Step341ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802, 768, 805],777⟩

private def s6Step341ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860],775⟩

private theorem s6Step341ExitBank_incomingDistinct : ([s6Step341ExitGRow,s6Step341ExitFRow,s6Step341ExitFvRow,s6Step341ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341ExitF_Incoming : rowsOwned s6Step341ExitFBefore [s6Step341ExitFRow,s6Step341ExitFvRow,s6Step341ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step341ExitGRow,s6Step341ExitFRow,s6Step341ExitFvRow,s6Step341ExitGvRow] 1 s6Step341ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step341ExitFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step341ExitBank_outgoingOwned : rowsOwned s6Step341ExitGvAfter [s6Step341ExitGOut,s6Step341ExitFOut,s6Step341ExitFvOut,s6Step341ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step341ExitGvAfter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step341ExitF_Outgoing : rowsOwned s6Step341ExitGvAfter [s6Step341ExitFOut,s6Step341ExitFvOut,s6Step341ExitGvOut] :=
  hmrRows_owned_drop s6Step341ExitGvAfter [s6Step341ExitGOut,s6Step341ExitFOut,s6Step341ExitFvOut,s6Step341ExitGvOut] 1 s6Step341ExitBank_outgoingOwned

private theorem s6Step341ExitF_distinct : (s6Step341ExitFRow.sign::s6Step341ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341ExitF_owned : (s6Step341ExitFRow.sign::s6Step341ExitFRow.payload).toFinset⊆s6Step341ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step341ExitFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341ExitF_retired : s6Step341ExitFBefore.retireSet s6Step341ExitFExtra.toFinset=s6Step341ExitFAfter := by
  unfold Arena.retireSet s6Step341ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step341ExitFBefore,s6Step341ExitGAfter,s6Step341ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step341ExitF_checked : planRowResizeLog s6Step341ExitFBefore s6Step341ExitFRow 102 []=
    some (s6Step341ExitFAfter,s6Step341ExitFOut,shrinkRow 795 s6Step341ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step341ExitFBefore s6Step341ExitFRow 102 s6Step341ExitF_distinct s6Step341ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step341ExitFRow.payload.take 102) s6Step341ExitFRow.sign=s6Step341ExitFOut := by decide +kernel
  have hi : s6Step341ExitFRow.payload.drop 102=s6Step341ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step341ExitF_retired] at result
  exact result

private def s6Step341ExitFvAfter : Arena := s6Step341ExitFAfter

private def s6Step341ExitFvBefore : Arena := s6Step341ExitFAfter

private theorem s6Step341ExitFv_Incoming : rowsOwned s6Step341ExitFvBefore [s6Step341ExitFvRow,s6Step341ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step341ExitGRow,s6Step341ExitFRow,s6Step341ExitFvRow,s6Step341ExitGvRow] 2 s6Step341ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step341ExitFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step341ExitFv_Outgoing : rowsOwned s6Step341ExitGvAfter [s6Step341ExitFvOut,s6Step341ExitGvOut] :=
  hmrRows_owned_drop s6Step341ExitGvAfter [s6Step341ExitGOut,s6Step341ExitFOut,s6Step341ExitFvOut,s6Step341ExitGvOut] 2 s6Step341ExitBank_outgoingOwned

private theorem s6Step341ExitFv_distinct : (s6Step341ExitFvRow.sign::s6Step341ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341ExitFv_owned : (s6Step341ExitFvRow.sign::s6Step341ExitFvRow.payload).toFinset⊆s6Step341ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step341ExitFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341ExitFv_reserved : s6Step341ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step341ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step341ExitFv_checked : planRowResizeLog s6Step341ExitFvBefore s6Step341ExitFvRow 187 []=
    some (s6Step341ExitFvAfter,s6Step341ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step341ExitFvBefore s6Step341ExitFvAfter s6Step341ExitFvRow 187 []
    s6Step341ExitFv_distinct s6Step341ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step341ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step341ExitFvRow.payload++[]) s6Step341ExitFvRow.sign=s6Step341ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step341ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step341ExitG_Incoming : rowsOwned s6Step341ExitGBefore [s6Step341ExitGRow,s6Step341ExitFRow,s6Step341ExitFvRow,s6Step341ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step341ExitGRow,s6Step341ExitFRow,s6Step341ExitFvRow,s6Step341ExitGvRow] 0 s6Step341ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step341ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step341ExitG_Outgoing : rowsOwned s6Step341ExitGvAfter [s6Step341ExitGOut,s6Step341ExitFOut,s6Step341ExitFvOut,s6Step341ExitGvOut] :=
  hmrRows_owned_drop s6Step341ExitGvAfter [s6Step341ExitGOut,s6Step341ExitFOut,s6Step341ExitFvOut,s6Step341ExitGvOut] 0 s6Step341ExitBank_outgoingOwned

private theorem s6Step341ExitG_distinct : (s6Step341ExitGRow.sign::s6Step341ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341ExitG_owned : (s6Step341ExitGRow.sign::s6Step341ExitGRow.payload).toFinset⊆s6Step341ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step341ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341ExitG_retired : s6Step341ExitGBefore.retireSet s6Step341ExitGExtra.toFinset=s6Step341ExitGAfter := by
  unfold Arena.retireSet s6Step341ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step341ExitGBefore,s6Step341ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step341ExitG_checked : planRowResizeLog s6Step341ExitGBefore s6Step341ExitGRow 100 []=
    some (s6Step341ExitGAfter,s6Step341ExitGOut,shrinkRow 777 s6Step341ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step341ExitGBefore s6Step341ExitGRow 100 s6Step341ExitG_distinct s6Step341ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step341ExitGRow.payload.take 100) s6Step341ExitGRow.sign=s6Step341ExitGOut := by decide +kernel
  have hi : s6Step341ExitGRow.payload.drop 100=s6Step341ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step341ExitG_retired] at result
  exact result

private def s6Step341ExitGvBefore : Arena := s6Step341ExitFAfter

private theorem s6Step341ExitGv_Incoming : rowsOwned s6Step341ExitGvBefore [s6Step341ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step341ExitGRow,s6Step341ExitFRow,s6Step341ExitFvRow,s6Step341ExitGvRow] 3 s6Step341ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step341ExitGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step341ExitGv_Outgoing : rowsOwned s6Step341ExitGvAfter [s6Step341ExitGvOut] :=
  hmrRows_owned_drop s6Step341ExitGvAfter [s6Step341ExitGOut,s6Step341ExitFOut,s6Step341ExitFvOut,s6Step341ExitGvOut] 3 s6Step341ExitBank_outgoingOwned

private theorem s6Step341ExitGv_distinct : (s6Step341ExitGvRow.sign::s6Step341ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341ExitGv_owned : (s6Step341ExitGvRow.sign::s6Step341ExitGvRow.payload).toFinset⊆s6Step341ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step341ExitGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341ExitGv_retired : s6Step341ExitGvBefore.retireSet s6Step341ExitGvExtra.toFinset=s6Step341ExitGvAfter := by
  unfold Arena.retireSet s6Step341ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step341ExitGvBefore,s6Step341ExitFAfter,s6Step341ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step341ExitGv_checked : planRowResizeLog s6Step341ExitGvBefore s6Step341ExitGvRow 186 []=
    some (s6Step341ExitGvAfter,s6Step341ExitGvOut,shrinkRow 775 s6Step341ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step341ExitGvBefore s6Step341ExitGvRow 186 s6Step341ExitGv_distinct s6Step341ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step341ExitGvRow.payload.take 186) s6Step341ExitGvRow.sign=s6Step341ExitGvOut := by decide +kernel
  have hi : s6Step341ExitGvRow.payload.drop 186=s6Step341ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step341ExitGv_retired] at result
  exact result

private theorem s6Step341ExitBank_rows : planWindowRowsLog s6Step341ExitGBefore [(s6Step341ExitGRow,100),(s6Step341ExitFRow,102),(s6Step341ExitFvRow,187),(s6Step341ExitGvRow,186)] [[],[],[],[]]=
    some (s6Step341ExitGvAfter,[s6Step341ExitGOut,s6Step341ExitFOut,s6Step341ExitFvOut,s6Step341ExitGvOut],(shrinkRow 777 s6Step341ExitGExtra ++ (shrinkRow 795 s6Step341ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step341ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step341ExitGvAfter [] []=some (s6Step341ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step341ExitGvBefore s6Step341ExitGvAfter s6Step341ExitGvAfter
    s6Step341ExitGvRow s6Step341ExitGvOut 186 [] [] [] []
    (shrinkRow 775 s6Step341ExitGvExtra) ([]) s6Step341ExitGv_Incoming s6Step341ExitGv_checked h4 s6Step341ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step341ExitFvBefore s6Step341ExitFvAfter s6Step341ExitGvAfter
    s6Step341ExitFvRow s6Step341ExitFvOut 187 [] [(s6Step341ExitGvRow,186)] [[]] [s6Step341ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step341ExitGvExtra ++ [])) s6Step341ExitFv_Incoming s6Step341ExitFv_checked h3 s6Step341ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step341ExitFBefore s6Step341ExitFAfter s6Step341ExitGvAfter
    s6Step341ExitFRow s6Step341ExitFOut 102 [] [(s6Step341ExitFvRow,187),(s6Step341ExitGvRow,186)] [[],[]] [s6Step341ExitFvOut,s6Step341ExitGvOut]
    (shrinkRow 795 s6Step341ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step341ExitGvExtra ++ []))) s6Step341ExitF_Incoming s6Step341ExitF_checked h2 s6Step341ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step341ExitGBefore s6Step341ExitGAfter s6Step341ExitGvAfter
    s6Step341ExitGRow s6Step341ExitGOut 100 [] [(s6Step341ExitFRow,102),(s6Step341ExitFvRow,187),(s6Step341ExitGvRow,186)] [[],[],[]] [s6Step341ExitFOut,s6Step341ExitFvOut,s6Step341ExitGvOut]
    (shrinkRow 777 s6Step341ExitGExtra) ((shrinkRow 795 s6Step341ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step341ExitGvExtra ++ [])))) s6Step341ExitG_Incoming s6Step341ExitG_checked h1 s6Step341ExitG_Outgoing
  exact h0

private theorem s6Step341ExitBank_checked : compileHmrBankResizeLog .exit s6Step341ExitGBefore ⟨s6Step341ExitFRow,s6Step341ExitGRow,s6Step341ExitFvRow,s6Step341ExitGvRow⟩ ⟨102,100,187,186⟩ [[],[],[],[]]=
    some (s6Step341ExitGvAfter,⟨s6Step341ExitFOut,s6Step341ExitGOut,s6Step341ExitFvOut,s6Step341ExitGvOut⟩,(shrinkRow 777 s6Step341ExitGExtra ++ (shrinkRow 795 s6Step341ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step341ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step341ExitBank_rows]
  rfl

private theorem s6Step341Add0_apart : Disjoint s6Step341Add0Arena.live s6Step341Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step341Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341Add0_card : s6Step341Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step341Add0_borrowed : s6Step341Add0Arena.checkBorrow (hmrHybridCount s6Step341Add0Arena s6Step341Add0B.length) s6Step341Add0Work=some s6Step341Add0During := by
  have len : s6Step341Add0Work.length=hmrHybridCount s6Step341Add0Arena s6Step341Add0B.length := by
    rw [hmrHybridCount,s6Step341Add0_card]
    decide +kernel
  have nd : s6Step341Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step341Add0Arena s6Step341Add0During s6Step341Add0Work.toFinset s6Step341Add0_bounded s6Step341Add0_apart rfl

private theorem s6Step341Add0_distinct : (817::843::812::(s6Step341Add0A++s6Step341Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341Add0_owned : (817::843::812::(s6Step341Add0A++s6Step341Add0B)).toFinset⊆s6Step341Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step341Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341Add0_checked : compileHmrHybridCinLog s6Step341Add0Arena 843 817 812 s6Step341Add0A s6Step341Add0B s6Step341Add0Work=some s6Step341Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step341Add0Arena s6Step341Add0During 843 817 812 s6Step341Add0A s6Step341Add0B s6Step341Add0Work
    (by decide +kernel) (by decide +kernel) s6Step341Add0_distinct
    (fun q hq => s6Step341Add0_owned (List.mem_toFinset.mpr hq)) s6Step341Add0_borrowed

private theorem s6Step341Add1_apart : Disjoint s6Step341Add1Arena.live s6Step341Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step341Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341Add1_card : s6Step341Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step341Add1_borrowed : s6Step341Add1Arena.checkBorrow (hmrHybridCount s6Step341Add1Arena s6Step341Add1B.length) s6Step341Add1Work=some s6Step341Add1During := by
  have len : s6Step341Add1Work.length=hmrHybridCount s6Step341Add1Arena s6Step341Add1B.length := by
    rw [hmrHybridCount,s6Step341Add1_card]
    decide +kernel
  have nd : s6Step341Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step341Add1Arena s6Step341Add1During s6Step341Add1Work.toFinset s6Step341Add1_bounded s6Step341Add1_apart rfl

private theorem s6Step341Add1_distinct : (817::843::812::(s6Step341Add1A++s6Step341Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341Add1_owned : (817::843::812::(s6Step341Add1A++s6Step341Add1B)).toFinset⊆s6Step341Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step341Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341Add1_checked : compileHmrHybridCinLog s6Step341Add1Arena 843 817 812 s6Step341Add1A s6Step341Add1B s6Step341Add1Work=some s6Step341Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step341Add1Arena s6Step341Add1During 843 817 812 s6Step341Add1A s6Step341Add1B s6Step341Add1Work
    (by decide +kernel) (by decide +kernel) s6Step341Add1_distinct
    (fun q hq => s6Step341Add1_owned (List.mem_toFinset.mpr hq)) s6Step341Add1_borrowed

private theorem s6Step341F4_apart : Disjoint (s6Step341Add0A++s6Step341Add0B).toFinset (s6Step341Add1A++s6Step341Add1B).toFinset := by
  have nd : ((s6Step341Add0A++s6Step341Add0B)++(s6Step341Add1A++s6Step341Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step341F4_carry : s6Step341F4FlagArena.checkBorrow 1 [812]=some s6Step341Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step341F4FlagArena,s6Step341HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step341F4FlagArena,s6Step341HeadFvAfter,s6Step341Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step341F4_distinct : (881::843::817::812::((s6Step341Add0A++s6Step341Add1A)++(s6Step341Add0B++s6Step341Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341F4_flag : s6Step341HeadFvAfter.checkBorrow 1 [817]=some s6Step341F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step341HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step341F4_owned : (881::843::((s6Step341Add0A++s6Step341Add1A)++(s6Step341Add0B++s6Step341Add1B))).toFinset⊆s6Step341HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step341HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341F4_checked : compileHmrHybridF4Log s6Step341HeadFvAfter 881 843 s6Step341Add0A s6Step341Add0B s6Step341Add1A s6Step341Add1B [817] [812] s6Step341Add0Work s6Step341Add1Work=some s6Step341F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step341HeadFvAfter s6Step341F4FlagArena s6Step341Add0Arena s6Step341Add0During s6Step341Add1During 881 843
    s6Step341Add0A s6Step341Add0B s6Step341Add1A s6Step341Add1B [817] [812] s6Step341Add0Work s6Step341Add1Work
    (fun q hq => s6Step341F4_owned (List.mem_toFinset.mpr hq)) s6Step341F4_flag s6Step341F4_carry
    s6Step341F4_distinct s6Step341F4_apart s6Step341Add0_checked s6Step341Add1_checked

private theorem s6Step341Front_branch : s6Step341FrontSigmaArena.checkBorrow 1 [843]=some s6Step341HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step341FrontSigmaArena,s6Step341EntryGvAfter,s6Step341EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step341FrontSigmaArena,s6Step341EntryGvAfter,s6Step341EntryGAfter,s6Step341HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step341Front_entry : HmrFrontEntryValid s6Step341EntryFBefore s6Step341FrontBank 102 186 ⟨102,100,187,186⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step341FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step341EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step341EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step341FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step341Front_sigma : s6Step341EntryGvAfter.checkBorrow 1 [881]=some s6Step341FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step341EntryGvAfter,s6Step341EntryGAfter,arenaWires]
  · rfl

private def s6Step341HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341HeadFBefore : Arena := s6Step341HeadGAfter

private def s6Step341HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩

private def s6Step341HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩

private def s6Step341HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802, 768],777⟩

private def s6Step341HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907],775⟩

private theorem s6Step341HeadBank_incomingDistinct : ([s6Step341HeadGRow,s6Step341HeadFRow,s6Step341HeadGvRow,s6Step341HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341HeadF_Incoming : rowsOwned s6Step341HeadFBefore [s6Step341HeadFRow,s6Step341HeadGvRow,s6Step341HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step341HeadGRow,s6Step341HeadFRow,s6Step341HeadGvRow,s6Step341HeadFvRow] 1 s6Step341HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step341HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step341HeadBank_outgoingOwned : rowsOwned s6Step341HeadFvAfter [s6Step341HeadGOut,s6Step341HeadFOut,s6Step341HeadGvOut,s6Step341HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step341HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step341HeadF_Outgoing : rowsOwned s6Step341HeadFvAfter [s6Step341HeadFOut,s6Step341HeadGvOut,s6Step341HeadFvOut] :=
  hmrRows_owned_drop s6Step341HeadFvAfter [s6Step341HeadGOut,s6Step341HeadFOut,s6Step341HeadGvOut,s6Step341HeadFvOut] 1 s6Step341HeadBank_outgoingOwned

private theorem s6Step341HeadF_distinct : (s6Step341HeadFRow.sign::s6Step341HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341HeadF_owned : (s6Step341HeadFRow.sign::s6Step341HeadFRow.payload).toFinset⊆s6Step341HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step341HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341HeadF_reserved : s6Step341HeadFBefore.reserve s6Step341HeadFFresh.toFinset=some s6Step341HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step341HeadFFresh,arenaWires]
  · norm_num [s6Step341HeadFBefore,s6Step341HeadGAfter,s6Step341HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step341HeadFAfter,s6Step341HeadFBefore,s6Step341HeadGAfter,s6Step341HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step341HeadF_checked : planRowResizeLog s6Step341HeadFBefore s6Step341HeadFRow 103 s6Step341HeadFFresh=
    some (s6Step341HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 903],795⟩,growRow 795 s6Step341HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step341HeadFBefore s6Step341HeadFAfter s6Step341HeadFRow 103 s6Step341HeadFFresh
    s6Step341HeadF_distinct s6Step341HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step341HeadF_reserved
  have rowEq : WindowRow.mk (s6Step341HeadFRow.payload++s6Step341HeadFFresh) s6Step341HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 903],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step341HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step341HeadFvBefore : Arena := s6Step341HeadGvAfter

private theorem s6Step341HeadFv_Incoming : rowsOwned s6Step341HeadFvBefore [s6Step341HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step341HeadGRow,s6Step341HeadFRow,s6Step341HeadGvRow,s6Step341HeadFvRow] 3 s6Step341HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step341HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step341HeadFv_Outgoing : rowsOwned s6Step341HeadFvAfter [s6Step341HeadFvOut] :=
  hmrRows_owned_drop s6Step341HeadFvAfter [s6Step341HeadGOut,s6Step341HeadFOut,s6Step341HeadGvOut,s6Step341HeadFvOut] 3 s6Step341HeadBank_outgoingOwned

private theorem s6Step341HeadFv_distinct : (s6Step341HeadFvRow.sign::s6Step341HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341HeadFv_owned : (s6Step341HeadFvRow.sign::s6Step341HeadFvRow.payload).toFinset⊆s6Step341HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step341HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341HeadFv_reserved : s6Step341HeadFvBefore.reserve s6Step341HeadFvFresh.toFinset=some s6Step341HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step341HeadFvFresh,arenaWires]
  · norm_num [s6Step341HeadFvBefore,s6Step341HeadGvAfter,s6Step341HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step341HeadFvAfter,s6Step341HeadFvBefore,s6Step341HeadGvAfter,s6Step341HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step341HeadFv_checked : planRowResizeLog s6Step341HeadFvBefore s6Step341HeadFvRow 187 s6Step341HeadFvFresh=
    some (s6Step341HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865],776⟩,growRow 776 s6Step341HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step341HeadFvBefore s6Step341HeadFvAfter s6Step341HeadFvRow 187 s6Step341HeadFvFresh
    s6Step341HeadFv_distinct s6Step341HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step341HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step341HeadFvRow.payload++s6Step341HeadFvFresh) s6Step341HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step341HeadG_Incoming : rowsOwned s6Step341HeadGBefore [s6Step341HeadGRow,s6Step341HeadFRow,s6Step341HeadGvRow,s6Step341HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step341HeadGRow,s6Step341HeadFRow,s6Step341HeadGvRow,s6Step341HeadFvRow] 0 s6Step341HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step341HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step341HeadG_Outgoing : rowsOwned s6Step341HeadFvAfter [s6Step341HeadGOut,s6Step341HeadFOut,s6Step341HeadGvOut,s6Step341HeadFvOut] :=
  hmrRows_owned_drop s6Step341HeadFvAfter [s6Step341HeadGOut,s6Step341HeadFOut,s6Step341HeadGvOut,s6Step341HeadFvOut] 0 s6Step341HeadBank_outgoingOwned

private theorem s6Step341HeadG_distinct : (s6Step341HeadGRow.sign::s6Step341HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341HeadG_owned : (s6Step341HeadGRow.sign::s6Step341HeadGRow.payload).toFinset⊆s6Step341HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step341HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341HeadG_reserved : s6Step341HeadGBefore.reserve s6Step341HeadGFresh.toFinset=some s6Step341HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step341HeadGFresh,arenaWires]
  · norm_num [s6Step341HeadGBefore,s6Step341HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step341HeadGAfter,s6Step341HeadGBefore,s6Step341HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step341HeadG_checked : planRowResizeLog s6Step341HeadGBefore s6Step341HeadGRow 103 s6Step341HeadGFresh=
    some (s6Step341HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802, 768, 805],777⟩,growRow 777 s6Step341HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step341HeadGBefore s6Step341HeadGAfter s6Step341HeadGRow 103 s6Step341HeadGFresh
    s6Step341HeadG_distinct s6Step341HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step341HeadG_reserved
  have rowEq : WindowRow.mk (s6Step341HeadGRow.payload++s6Step341HeadGFresh) s6Step341HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 802, 768, 805],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step341HeadGvBefore : Arena := s6Step341HeadFAfter

private theorem s6Step341HeadGv_Incoming : rowsOwned s6Step341HeadGvBefore [s6Step341HeadGvRow,s6Step341HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step341HeadGRow,s6Step341HeadFRow,s6Step341HeadGvRow,s6Step341HeadFvRow] 2 s6Step341HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step341HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step341HeadGv_Outgoing : rowsOwned s6Step341HeadFvAfter [s6Step341HeadGvOut,s6Step341HeadFvOut] :=
  hmrRows_owned_drop s6Step341HeadFvAfter [s6Step341HeadGOut,s6Step341HeadFOut,s6Step341HeadGvOut,s6Step341HeadFvOut] 2 s6Step341HeadBank_outgoingOwned

private theorem s6Step341HeadGv_distinct : (s6Step341HeadGvRow.sign::s6Step341HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step341HeadGv_owned : (s6Step341HeadGvRow.sign::s6Step341HeadGvRow.payload).toFinset⊆s6Step341HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step341HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step341HeadGv_reserved : s6Step341HeadGvBefore.reserve s6Step341HeadGvFresh.toFinset=some s6Step341HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step341HeadGvFresh,arenaWires]
  · norm_num [s6Step341HeadGvBefore,s6Step341HeadFAfter,s6Step341HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step341HeadGvAfter,s6Step341HeadGvBefore,s6Step341HeadFAfter,s6Step341HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step341HeadGv_checked : planRowResizeLog s6Step341HeadGvBefore s6Step341HeadGvRow 187 s6Step341HeadGvFresh=
    some (s6Step341HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860],775⟩,growRow 775 s6Step341HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step341HeadGvBefore s6Step341HeadGvAfter s6Step341HeadGvRow 187 s6Step341HeadGvFresh
    s6Step341HeadGv_distinct s6Step341HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step341HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step341HeadGvRow.payload++s6Step341HeadGvFresh) s6Step341HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step341HeadBank_rows : planWindowRowsLog s6Step341HeadGBefore [(s6Step341HeadGRow,103),(s6Step341HeadFRow,103),(s6Step341HeadGvRow,187),(s6Step341HeadFvRow,187)] [s6Step341HeadGFresh,s6Step341HeadFFresh,s6Step341HeadGvFresh,s6Step341HeadFvFresh]=
    some (s6Step341HeadFvAfter,[s6Step341HeadGOut,s6Step341HeadFOut,s6Step341HeadGvOut,s6Step341HeadFvOut],(growRow 777 s6Step341HeadGFresh ++ (growRow 795 s6Step341HeadFFresh ++ (growRow 775 s6Step341HeadGvFresh ++ (growRow 776 s6Step341HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step341HeadFvAfter [] []=some (s6Step341HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step341HeadFvBefore s6Step341HeadFvAfter s6Step341HeadFvAfter
    s6Step341HeadFvRow s6Step341HeadFvOut 187 s6Step341HeadFvFresh [] [] []
    (growRow 776 s6Step341HeadFvFresh) ([]) s6Step341HeadFv_Incoming s6Step341HeadFv_checked h4 s6Step341HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step341HeadGvBefore s6Step341HeadGvAfter s6Step341HeadFvAfter
    s6Step341HeadGvRow s6Step341HeadGvOut 187 s6Step341HeadGvFresh [(s6Step341HeadFvRow,187)] [s6Step341HeadFvFresh] [s6Step341HeadFvOut]
    (growRow 775 s6Step341HeadGvFresh) ((growRow 776 s6Step341HeadFvFresh ++ [])) s6Step341HeadGv_Incoming s6Step341HeadGv_checked h3 s6Step341HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step341HeadFBefore s6Step341HeadFAfter s6Step341HeadFvAfter
    s6Step341HeadFRow s6Step341HeadFOut 103 s6Step341HeadFFresh [(s6Step341HeadGvRow,187),(s6Step341HeadFvRow,187)] [s6Step341HeadGvFresh,s6Step341HeadFvFresh] [s6Step341HeadGvOut,s6Step341HeadFvOut]
    (growRow 795 s6Step341HeadFFresh) ((growRow 775 s6Step341HeadGvFresh ++ (growRow 776 s6Step341HeadFvFresh ++ []))) s6Step341HeadF_Incoming s6Step341HeadF_checked h2 s6Step341HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step341HeadGBefore s6Step341HeadGAfter s6Step341HeadFvAfter
    s6Step341HeadGRow s6Step341HeadGOut 103 s6Step341HeadGFresh [(s6Step341HeadFRow,103),(s6Step341HeadGvRow,187),(s6Step341HeadFvRow,187)] [s6Step341HeadFFresh,s6Step341HeadGvFresh,s6Step341HeadFvFresh] [s6Step341HeadFOut,s6Step341HeadGvOut,s6Step341HeadFvOut]
    (growRow 777 s6Step341HeadGFresh) ((growRow 795 s6Step341HeadFFresh ++ (growRow 775 s6Step341HeadGvFresh ++ (growRow 776 s6Step341HeadFvFresh ++ [])))) s6Step341HeadG_Incoming s6Step341HeadG_checked h1 s6Step341HeadG_Outgoing
  exact h0

private theorem s6Step341HeadBank_checked : compileHmrBankResizeLog .headroom s6Step341HeadGBefore ⟨s6Step341HeadFRow,s6Step341HeadGRow,s6Step341HeadFvRow,s6Step341HeadGvRow⟩ ⟨103,103,187,187⟩ [s6Step341HeadGFresh,s6Step341HeadFFresh,s6Step341HeadGvFresh,s6Step341HeadFvFresh]=
    some (s6Step341HeadFvAfter,⟨s6Step341HeadFOut,s6Step341HeadGOut,s6Step341HeadFvOut,s6Step341HeadGvOut⟩,(growRow 777 s6Step341HeadGFresh ++ (growRow 795 s6Step341HeadFFresh ++ (growRow 775 s6Step341HeadGvFresh ++ (growRow 776 s6Step341HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step341HeadBank_rows]
  rfl

private theorem s6Step341Front_checked : compileHmrSourceFrontLog s6Step341EntryFBefore s6Step341FrontBank 102 186 ⟨102,100,187,186⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step341FrontLog=some s6Step341FrontPlan := by
  have pairEq : s6Step341FrontPair=⟨s6Step341HeadFRow,s6Step341HeadGRow,s6Step341HeadFvRow,s6Step341HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step341FrontHead=⟨s6Step341ExitFRow,s6Step341ExitGRow,s6Step341ExitFvRow,s6Step341ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step341Add0A=s6Step341FrontHead.f.wires := by decide +kernel
  have gEq : s6Step341Add0B=s6Step341FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step341Add1A=s6Step341FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step341Add1B=s6Step341FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step341EntryFBefore s6Step341FrontBank 102 186 ⟨102,100,187,186⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step341FrontLog s6Step341FrontPlan
  · exact s6Step341Front_entry
  · exact s6Step341EntryBank_checked
  · exact s6Step341Front_sigma
  · rfl
  · exact s6Step341Front_branch
  · rfl
  · simpa only [s6Step341FrontPlan,pairEq] using s6Step341HeadBank_checked
  · simpa only [s6Step341FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step341F4_checked
  · exact s6Step341Counter_checked
  · rfl
  · simpa only [s6Step341FrontPlan,headEq] using s6Step341ExitBank_checked

private theorem s6Step341Complete_explicit_checked : compileHmrEarlyStepLog s6Step341EntryFBefore s6Step341FrontBank 102 186 ⟨102,100,187,186⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step341CompleteLog=some s6Step341CompletePlan := by
  let Q := s6Step341EarlyControlPlan
  have hq := s6Step341EarlyControl_plan_checked
  have fv1 : s6Step341CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step341CompleteOut.fv.payload[2]?.getD s6Step341CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step341CompleteOut.fv.payload[3]?.getD s6Step341CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step341CompleteOut.fv.payload[4]?.getD s6Step341CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step341EntryFBefore s6Step341EarlyControlArena s6Step341FrontBank 102 186 ⟨102,100,187,186⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step341CompleteLog s6Step341FrontPlan Q
    s6Step341Front_checked s6Step341Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step341Complete_owned s6Step341Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step341EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 881 s6Step341CompleteOut.fv.second (s6Step341CompleteOut.fv.payload[2]?.getD s6Step341CompleteOut.fv.sign) (s6Step341CompleteOut.fv.payload[3]?.getD s6Step341CompleteOut.fv.sign) (s6Step341CompleteOut.fv.payload[4]?.getD s6Step341CompleteOut.fv.sign) 843 60 s6Step341EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep341Arena : Arena := s6Step341EntryFBefore
def s6PrivateStep341Bank : WindowBank := s6Step341FrontBank
def s6PrivateStep341Spec : HmrSourceWalkStepLog := ⟨102,186,⟨102,100,187,186⟩,60,.early s6Step341CompleteLog⟩
def s6PrivateStep341Plan : HmrSourceStepPlan := .early s6Step341CompletePlan
theorem s6PrivateStep341_source : s6PrivateStep341Spec=s6ObservedLogs336[5] := rfl
theorem s6PrivateStep341_checked : compileHmrSourceStepLog s6PrivateStep341Arena s6PrivateStep341Bank
    s6PrivateStep341Spec.fgWidth s6PrivateStep341Spec.vWidth s6PrivateStep341Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 341 s6PrivateStep341Spec.need none s6PrivateStep341Spec.log=some s6PrivateStep341Plan := by
  change compileHmrSourceStepLog s6Step341EntryFBefore s6Step341FrontBank 102 186 ⟨102,100,187,186⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 341 60 none (.early s6Step341CompleteLog)=some (.early s6Step341CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 341<498)]
  rw [s6Step341Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
