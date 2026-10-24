import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep338
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

private def s6Step340CompleteMoves : List (Wire × Wire) := [(881,100)]

private def s6Step340EarlyControlLog : HmrEarlyControlLog := ⟨[881, 843, 805, 903, 860],[865],[817],[812, 915, 906, 792, 816, 819],[]⟩

private def s6Step340FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [860], [], [907]],[[865], [903], [843], [805]],[[], [], [], []]⟩,[768],[802],[817],[812],[915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906]⟩

private def s6Step340CompleteLog : HmrEarlyStepLog := ⟨s6Step340FrontLog,s6Step340CompleteMoves,s6Step340EarlyControlLog⟩

private def s6Step340ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩

private def s6Step340ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩

private def s6Step340ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99],777⟩

private def s6Step340ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907],775⟩

private def s6Step340FrontOut : WindowBank := ⟨s6Step340ExitFOut,s6Step340ExitGOut,s6Step340ExitFvOut,s6Step340ExitGvOut⟩

private def s6Step340CompleteOut : WindowBank := s6Step340FrontOut.repacked s6Step340CompleteMoves

private def s6Step340EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step340EarlyControlPositiveArena,[865],s6Step340EarlyControlEqualityArena,[817],⟨⟨768,false⟩,[⟨⟨865,false⟩,817⟩]⟩⟩

private def s6Step340EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,881⟩,⟨⟨772,false⟩,843⟩,⟨⟨771,false⟩,805⟩,⟨⟨770,false⟩,903⟩,⟨⟨769,false⟩,860⟩]⟩

private def s6Step340EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step340EarlyControlZeroArena,s6Step340EarlyControlZeroPlan,s6Step340EarlyControlClassPlan,s6Step340EarlyControlFlagArena,s6Step340EarlyControlFittedArena,s6Step340EarlyControlHistoryArena,s6Step340EarlyControlSigmaArena,s6Step340EarlyControlOutputArena,s6Step340EarlyControlLog⟩

private def s6Step340CounterWork : List Wire := [817, 812, 915, 906]

private theorem s6Step340Counter_bounded : s6Step340CounterWork.toFinset⊆arenaWires := by norm_num [s6Step340CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step340HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340CounterDuring : Arena := ⟨s6Step340HeadFvAfter.live∪s6Step340CounterWork.toFinset,Finset.union_subset s6Step340HeadFvAfter.bounded s6Step340Counter_bounded⟩

private def s6Step340EntryFFresh : List Wire := []

private def s6Step340EntryFvFresh : List Wire := []

private def s6Step340EntryGFresh : List Wire := [860]

private def s6Step340EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340EntryGvFresh : List Wire := [907]

private def s6Step340ExitFExtra : List Wire := [903]

private def s6Step340ExitFvExtra : List Wire := [805]

private def s6Step340ExitGExtra : List Wire := [100, 860, 865]

private def s6Step340ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340ExitGvExtra : List Wire := [843]

private def s6Step340Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340Add0Work : List Wire := [915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step340Add0_bounded : s6Step340Add0Work.toFinset⊆arenaWires := by
  have h : s6Step340Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step340Add0During : Arena := ⟨s6Step340Add0Arena.live∪s6Step340Add0Work.toFinset,Finset.union_subset s6Step340Add0Arena.bounded s6Step340Add0_bounded⟩

private def s6Step340Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340Add1Work : List Wire := [915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step340Add1_bounded : s6Step340Add1Work.toFinset⊆arenaWires := by
  have h : s6Step340Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step340Add1During : Arena := ⟨s6Step340Add1Arena.live∪s6Step340Add1Work.toFinset,Finset.union_subset s6Step340Add1Arena.bounded s6Step340Add1_bounded⟩

private def s6Step340F4FlagArena : Arena := ⟨s6Step340HeadFvAfter.live∪{817},Finset.union_subset s6Step340HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step340F4Plan : HmrHybridF4Plan := ⟨s6Step340F4FlagArena,[817],s6Step340Add0Arena,[812],s6Step340Add0During,s6Step340Add0Work,s6Step340Add1During,s6Step340Add1Work⟩

private def s6Step340HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 903],795⟩

private def s6Step340HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 805],776⟩

private def s6Step340HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 860, 865],777⟩

private def s6Step340HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 843],775⟩

private def s6Step340FrontHead : WindowBank := ⟨s6Step340HeadFOut,s6Step340HeadGOut,s6Step340HeadFvOut,s6Step340HeadGvOut⟩

private def s6Step340EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩

private def s6Step340EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩

private def s6Step340EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 860],777⟩

private def s6Step340EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907],775⟩

private def s6Step340FrontPair : WindowBank := ⟨s6Step340EntryFOut,s6Step340EntryGOut,s6Step340EntryFvOut,s6Step340EntryGvOut⟩

private def s6Step340FrontSigmaArena : Arena := ⟨s6Step340EntryGvAfter.live∪{768},Finset.union_subset s6Step340EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step340HeadFFresh : List Wire := [903]

private def s6Step340HeadFvFresh : List Wire := [805]

private def s6Step340HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340HeadGFresh : List Wire := [865]

private def s6Step340HeadGvFresh : List Wire := [843]

private def s6Step340FrontPlan : HmrSourceFront := ⟨s6Step340EntryGvAfter,s6Step340FrontPair,(growRow 795 s6Step340EntryFFresh ++ (growRow 777 s6Step340EntryGFresh ++ (growRow 776 s6Step340EntryFvFresh ++ (growRow 775 s6Step340EntryGvFresh ++ [])))),s6Step340FrontSigmaArena,[768],s6Step340HeadGBefore,[802],
  s6Step340HeadFvAfter,s6Step340FrontHead,(growRow 777 s6Step340HeadGFresh ++ (growRow 795 s6Step340HeadFFresh ++ (growRow 775 s6Step340HeadGvFresh ++ (growRow 776 s6Step340HeadFvFresh ++ [])))),s6Step340F4Plan,s6Step340CounterDuring,s6Step340CounterWork,s6Step340ExitGvAfter,s6Step340FrontOut,(shrinkRow 777 s6Step340ExitGExtra ++ (shrinkRow 795 s6Step340ExitFExtra ++ (shrinkRow 776 s6Step340ExitFvExtra ++ (shrinkRow 775 s6Step340ExitGvExtra ++ []))))⟩

private def s6Step340CompletePlan : HmrEarlyStepPlan := ⟨s6Step340FrontPlan,s6Step340EarlyControlArena,s6Step340EarlyControlPlan,s6Step340CompleteMoves⟩

private theorem s6Step340Complete_apart : List.Disjoint (s6Step340CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [768, 802, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step340CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[768, 802, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step340Complete_owned : (s6Step340CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step340EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step340EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step340CompleteMoveArena : Arena := ⟨s6Step340ExitGvAfter.live∪{100},Finset.union_subset s6Step340ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step340Complete_repack : s6Step340ExitGvAfter.checkRepack s6Step340CompleteMoves=some s6Step340EarlyControlArena := by
  have owned : 881∈s6Step340ExitGvAfter.live := by norm_num [s6Step340ExitGvAfter,arenaWires]
  have reserve : s6Step340ExitGvAfter.reserve {100}=some s6Step340CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step340ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step340CompleteMoveArena.retireSet {881}=s6Step340EarlyControlArena := by
    unfold Arena.retireSet s6Step340EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step340CompleteMoveArena,s6Step340ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step340CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step340CompleteMoveArena.retireSet {881}).checkRepack []=some s6Step340EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step340EarlyControl_branchOwned : ([802] : List Wire).toFinset⊆s6Step340EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step340EarlyControlSigmaArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340EarlyControl_branch : compileHmrBranchRetirement s6Step340EarlyControlSigmaArena 802=some s6Step340EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step340EarlyControl_branchOwned
  · ext q
    simp [s6Step340EarlyControlOutputArena,s6Step340EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step340EarlyControl_classEqualityBorrow : s6Step340EarlyControlPositiveArena.checkBorrow (([768, 865] : List Wire).length-1) s6Step340EarlyControlLog.classWork=some s6Step340EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step340EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step340EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step340EarlyControlEqualityArena,s6Step340EarlyControlPositiveArena,s6Step340EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step340EarlyControl_classEqualityOwned : ([768, 865] : List Wire).toFinset⊆s6Step340EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step340EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340EarlyControl_classEquality : compileHmrEqualityLog s6Step340EarlyControlPositiveArena [768, 865] 0 s6Step340EarlyControlLog.classWork=some (s6Step340EarlyControlEqualityArena,s6Step340EarlyControlLog.classWork,s6Step340EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step340EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step340EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step340EarlyControl_classOwned : ([769, 860, 768] : List Wire).toFinset⊆s6Step340EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step340EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340EarlyControl_positiveBorrow : s6Step340EarlyControlZeroArena.checkBorrow (1) s6Step340EarlyControlLog.positiveWork=some s6Step340EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step340EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step340EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step340EarlyControlPositiveArena,s6Step340EarlyControlZeroArena,s6Step340EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step340EarlyControl_class : compileHmrSourceClassLog s6Step340EarlyControlZeroArena false 769 s6Step340EarlyControlZeroPlan.top 0 768 s6Step340EarlyControlLog.positiveWork s6Step340EarlyControlLog.classWork=some s6Step340EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step340EarlyControlClassPlan s6Step340EarlyControlZeroArena false 769 s6Step340EarlyControlZeroPlan.top 0 768
  constructor
  · decide +kernel
  · exact s6Step340EarlyControl_classOwned
  · exact s6Step340EarlyControl_positiveBorrow
  · exact s6Step340EarlyControl_classEquality

private theorem s6Step340EarlyControl_entryRecordOwned : ([802, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step340EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step340EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340EarlyControl_entrySigmaOwned : ([768, 254] : List Wire).toFinset⊆s6Step340EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step340EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340EarlyControl_fitBorrow : s6Step340EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step340EarlyControlLog.recordFresh=some s6Step340EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step340EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step340EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step340EarlyControlFittedArena,s6Step340EarlyControlFlagArena,s6Step340EarlyControlLog,arenaWires]

private theorem s6Step340EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step340EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step340EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340EarlyControl_fit : compileHmrRecordGrowLog s6Step340EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step340EarlyControlLog.recordFresh=some s6Step340EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step340EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step340EarlyControl_fitBorrow

private theorem s6Step340EarlyControl_flagsBorrow : s6Step340EarlyControlEqualityArena.checkBorrow (6) s6Step340EarlyControlLog.flagWork=some s6Step340EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step340EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step340EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step340EarlyControlFlagArena,s6Step340EarlyControlEqualityArena,s6Step340EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step340EarlyControl_flagsOwned : ([817, 253, 252, 251] : List Wire).toFinset⊆s6Step340EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step340EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340EarlyControl_flags : compileHmrFlagsLog s6Step340EarlyControlClassPlan.equalityArena s6Step340EarlyControlClassPlan.equality.top 253 252 251 s6Step340EarlyControlLog.flagWork=some s6Step340EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step340EarlyControl_flagsOwned⟩
  · exact s6Step340EarlyControl_flagsBorrow

private theorem s6Step340EarlyControl_historyBorrow : s6Step340EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step340EarlyControlLog.recordFresh=some s6Step340EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step340EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step340EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step340EarlyControlHistoryArena,s6Step340EarlyControlArena,s6Step340EarlyControlLog,arenaWires]

private theorem s6Step340EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step340EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step340EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340EarlyControl_history : compileHmrRecordGrowLog s6Step340EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step340EarlyControlLog.recordFresh=some s6Step340EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step340EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step340EarlyControl_historyBorrow

private theorem s6Step340EarlyControl_sigmaOwned : ([254, 768] : List Wire).toFinset⊆s6Step340EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step340EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340EarlyControl_sigmaReleaseOwned : ([768] : List Wire).toFinset⊆s6Step340EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step340EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340EarlyControl_sigmaRelease : s6Step340EarlyControlHistoryArena.release {768} (fun _ => false)=some s6Step340EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step340EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step340EarlyControlSigmaArena,s6Step340EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step340EarlyControl_sigma : compileHmrSigmaDropLog s6Step340EarlyControlHistoryArena false 0 0 254 768 []=some s6Step340EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step340EarlyControl_sigmaOwned⟩
  · exact s6Step340EarlyControl_sigmaRelease

private theorem s6Step340EarlyControl_zeroBorrow : s6Step340EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step340EarlyControlLog.zeroWork=some s6Step340EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step340EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step340EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step340EarlyControlZeroArena,s6Step340EarlyControlArena,s6Step340EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step340EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step340EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step340EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340EarlyControl_zero : compileHmrEqualityLog s6Step340EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step340EarlyControlLog.zeroWork=some (s6Step340EarlyControlZeroArena,s6Step340EarlyControlLog.zeroWork,s6Step340EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step340EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step340EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step340EarlyControl_logged : s6Step340EarlyControlPlan.Logged s6Step340EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 768 254 253 252 251 802 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step340EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step340EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step340EarlyControl_zero
  · exact s6Step340EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step340EarlyControl_flags
  · exact s6Step340EarlyControl_fit
  · exact s6Step340EarlyControl_history
  · exact s6Step340EarlyControl_sigma
  · exact s6Step340EarlyControl_branch

private theorem s6Step340EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step340EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 768 254 253 252 251 802 60 s6Step340EarlyControlLog=some s6Step340EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step340EarlyControlPlan s6Step340EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 768 254 253 252 251 802 60 s6Step340EarlyControl_logged

private def s6Step340EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩

private def s6Step340EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩

private def s6Step340EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100],777⟩

private def s6Step340EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867],775⟩

private def s6Step340FrontBank : WindowBank := ⟨s6Step340EntryFRow,s6Step340EntryGRow,s6Step340EntryFvRow,s6Step340EntryGvRow⟩

private def s6Step340Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 903, 795]

private def s6Step340Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 860, 865, 777]

private def s6Step340Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 805, 776]

private def s6Step340Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 843, 775]

private theorem s6Step340Counter_apart : Disjoint s6Step340HeadFvAfter.live s6Step340CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step340HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340Counter_borrowed : s6Step340HeadFvAfter.checkBorrow 4 s6Step340CounterWork=some s6Step340CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step340HeadFvAfter s6Step340CounterDuring s6Step340CounterWork.toFinset s6Step340Counter_bounded s6Step340Counter_apart rfl

private theorem s6Step340Counter_owned : (768::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step340HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step340HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340Counter_checked : compileHmrCounterStepLog s6Step340HeadFvAfter true 768 [774, 773, 772, 771, 770, 769] s6Step340CounterWork=some s6Step340CounterDuring := by
  have owned : ∀q∈768::[774, 773, 772, 771, 770, 769],q∈s6Step340HeadFvAfter.live := fun q hq => s6Step340Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step340Counter_borrowed

private def s6Step340EntryFAfter : Arena := s6Step340EntryFBefore

private theorem s6Step340EntryBank_incomingDistinct : ([s6Step340EntryFRow,s6Step340EntryGRow,s6Step340EntryFvRow,s6Step340EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340EntryF_Incoming : rowsOwned s6Step340EntryFBefore [s6Step340EntryFRow,s6Step340EntryGRow,s6Step340EntryFvRow,s6Step340EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step340EntryFRow,s6Step340EntryGRow,s6Step340EntryFvRow,s6Step340EntryGvRow] 0 s6Step340EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step340EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step340EntryBank_outgoingOwned : rowsOwned s6Step340EntryGvAfter [s6Step340EntryFOut,s6Step340EntryGOut,s6Step340EntryFvOut,s6Step340EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step340EntryGvAfter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step340EntryF_Outgoing : rowsOwned s6Step340EntryGvAfter [s6Step340EntryFOut,s6Step340EntryGOut,s6Step340EntryFvOut,s6Step340EntryGvOut] :=
  hmrRows_owned_drop s6Step340EntryGvAfter [s6Step340EntryFOut,s6Step340EntryGOut,s6Step340EntryFvOut,s6Step340EntryGvOut] 0 s6Step340EntryBank_outgoingOwned

private theorem s6Step340EntryF_distinct : (s6Step340EntryFRow.sign::s6Step340EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340EntryF_owned : (s6Step340EntryFRow.sign::s6Step340EntryFRow.payload).toFinset⊆s6Step340EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step340EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340EntryF_reserved : s6Step340EntryFBefore.reserve s6Step340EntryFFresh.toFinset=some s6Step340EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step340EntryFFresh,arenaWires]
  · norm_num [s6Step340EntryFBefore,s6Step340EntryFFresh,arenaWires]
  · simp only [s6Step340EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step340EntryF_checked : planRowResizeLog s6Step340EntryFBefore s6Step340EntryFRow 102 s6Step340EntryFFresh=
    some (s6Step340EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩,growRow 795 s6Step340EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step340EntryFBefore s6Step340EntryFAfter s6Step340EntryFRow 102 s6Step340EntryFFresh
    s6Step340EntryF_distinct s6Step340EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step340EntryF_reserved
  have rowEq : WindowRow.mk (s6Step340EntryFRow.payload++s6Step340EntryFFresh) s6Step340EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step340EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340EntryFvAfter : Arena := s6Step340EntryGAfter

private def s6Step340EntryFvBefore : Arena := s6Step340EntryGAfter

private theorem s6Step340EntryFv_Incoming : rowsOwned s6Step340EntryFvBefore [s6Step340EntryFvRow,s6Step340EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step340EntryFRow,s6Step340EntryGRow,s6Step340EntryFvRow,s6Step340EntryGvRow] 2 s6Step340EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step340EntryFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step340EntryFv_Outgoing : rowsOwned s6Step340EntryGvAfter [s6Step340EntryFvOut,s6Step340EntryGvOut] :=
  hmrRows_owned_drop s6Step340EntryGvAfter [s6Step340EntryFOut,s6Step340EntryGOut,s6Step340EntryFvOut,s6Step340EntryGvOut] 2 s6Step340EntryBank_outgoingOwned

private theorem s6Step340EntryFv_distinct : (s6Step340EntryFvRow.sign::s6Step340EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340EntryFv_owned : (s6Step340EntryFvRow.sign::s6Step340EntryFvRow.payload).toFinset⊆s6Step340EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step340EntryFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340EntryFv_reserved : s6Step340EntryFvBefore.reserve s6Step340EntryFvFresh.toFinset=some s6Step340EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step340EntryFvFresh,arenaWires]
  · norm_num [s6Step340EntryFvBefore,s6Step340EntryGAfter,s6Step340EntryFvFresh,arenaWires]
  · simp only [s6Step340EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step340EntryFv_checked : planRowResizeLog s6Step340EntryFvBefore s6Step340EntryFvRow 186 s6Step340EntryFvFresh=
    some (s6Step340EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩,growRow 776 s6Step340EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step340EntryFvBefore s6Step340EntryFvAfter s6Step340EntryFvRow 186 s6Step340EntryFvFresh
    s6Step340EntryFv_distinct s6Step340EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step340EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step340EntryFvRow.payload++s6Step340EntryFvFresh) s6Step340EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step340EntryGBefore : Arena := s6Step340EntryFBefore

private theorem s6Step340EntryG_Incoming : rowsOwned s6Step340EntryGBefore [s6Step340EntryGRow,s6Step340EntryFvRow,s6Step340EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step340EntryFRow,s6Step340EntryGRow,s6Step340EntryFvRow,s6Step340EntryGvRow] 1 s6Step340EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step340EntryGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step340EntryG_Outgoing : rowsOwned s6Step340EntryGvAfter [s6Step340EntryGOut,s6Step340EntryFvOut,s6Step340EntryGvOut] :=
  hmrRows_owned_drop s6Step340EntryGvAfter [s6Step340EntryFOut,s6Step340EntryGOut,s6Step340EntryFvOut,s6Step340EntryGvOut] 1 s6Step340EntryBank_outgoingOwned

private theorem s6Step340EntryG_distinct : (s6Step340EntryGRow.sign::s6Step340EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340EntryG_owned : (s6Step340EntryGRow.sign::s6Step340EntryGRow.payload).toFinset⊆s6Step340EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step340EntryGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340EntryG_reserved : s6Step340EntryGBefore.reserve s6Step340EntryGFresh.toFinset=some s6Step340EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step340EntryGFresh,arenaWires]
  · norm_num [s6Step340EntryGBefore,s6Step340EntryFBefore,s6Step340EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step340EntryGAfter,s6Step340EntryGBefore,s6Step340EntryFBefore,s6Step340EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step340EntryG_checked : planRowResizeLog s6Step340EntryGBefore s6Step340EntryGRow 102 s6Step340EntryGFresh=
    some (s6Step340EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 860],777⟩,growRow 777 s6Step340EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step340EntryGBefore s6Step340EntryGAfter s6Step340EntryGRow 102 s6Step340EntryGFresh
    s6Step340EntryG_distinct s6Step340EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step340EntryG_reserved
  have rowEq : WindowRow.mk (s6Step340EntryGRow.payload++s6Step340EntryGFresh) s6Step340EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 860],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step340EntryGvBefore : Arena := s6Step340EntryGAfter

private theorem s6Step340EntryGv_Incoming : rowsOwned s6Step340EntryGvBefore [s6Step340EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step340EntryFRow,s6Step340EntryGRow,s6Step340EntryFvRow,s6Step340EntryGvRow] 3 s6Step340EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step340EntryGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step340EntryGv_Outgoing : rowsOwned s6Step340EntryGvAfter [s6Step340EntryGvOut] :=
  hmrRows_owned_drop s6Step340EntryGvAfter [s6Step340EntryFOut,s6Step340EntryGOut,s6Step340EntryFvOut,s6Step340EntryGvOut] 3 s6Step340EntryBank_outgoingOwned

private theorem s6Step340EntryGv_distinct : (s6Step340EntryGvRow.sign::s6Step340EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340EntryGv_owned : (s6Step340EntryGvRow.sign::s6Step340EntryGvRow.payload).toFinset⊆s6Step340EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step340EntryGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340EntryGv_reserved : s6Step340EntryGvBefore.reserve s6Step340EntryGvFresh.toFinset=some s6Step340EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step340EntryGvFresh,arenaWires]
  · norm_num [s6Step340EntryGvBefore,s6Step340EntryGAfter,s6Step340EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step340EntryGvAfter,s6Step340EntryGvBefore,s6Step340EntryGAfter,s6Step340EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step340EntryGv_checked : planRowResizeLog s6Step340EntryGvBefore s6Step340EntryGvRow 186 s6Step340EntryGvFresh=
    some (s6Step340EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907],775⟩,growRow 775 s6Step340EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step340EntryGvBefore s6Step340EntryGvAfter s6Step340EntryGvRow 186 s6Step340EntryGvFresh
    s6Step340EntryGv_distinct s6Step340EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step340EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step340EntryGvRow.payload++s6Step340EntryGvFresh) s6Step340EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step340EntryBank_rows : planWindowRowsLog s6Step340EntryFBefore [(s6Step340EntryFRow,102),(s6Step340EntryGRow,102),(s6Step340EntryFvRow,186),(s6Step340EntryGvRow,186)] [s6Step340EntryFFresh,s6Step340EntryGFresh,s6Step340EntryFvFresh,s6Step340EntryGvFresh]=
    some (s6Step340EntryGvAfter,[s6Step340EntryFOut,s6Step340EntryGOut,s6Step340EntryFvOut,s6Step340EntryGvOut],(growRow 795 s6Step340EntryFFresh ++ (growRow 777 s6Step340EntryGFresh ++ (growRow 776 s6Step340EntryFvFresh ++ (growRow 775 s6Step340EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step340EntryGvAfter [] []=some (s6Step340EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step340EntryGvBefore s6Step340EntryGvAfter s6Step340EntryGvAfter
    s6Step340EntryGvRow s6Step340EntryGvOut 186 s6Step340EntryGvFresh [] [] []
    (growRow 775 s6Step340EntryGvFresh) ([]) s6Step340EntryGv_Incoming s6Step340EntryGv_checked h4 s6Step340EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step340EntryFvBefore s6Step340EntryFvAfter s6Step340EntryGvAfter
    s6Step340EntryFvRow s6Step340EntryFvOut 186 s6Step340EntryFvFresh [(s6Step340EntryGvRow,186)] [s6Step340EntryGvFresh] [s6Step340EntryGvOut]
    (growRow 776 s6Step340EntryFvFresh) ((growRow 775 s6Step340EntryGvFresh ++ [])) s6Step340EntryFv_Incoming s6Step340EntryFv_checked h3 s6Step340EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step340EntryGBefore s6Step340EntryGAfter s6Step340EntryGvAfter
    s6Step340EntryGRow s6Step340EntryGOut 102 s6Step340EntryGFresh [(s6Step340EntryFvRow,186),(s6Step340EntryGvRow,186)] [s6Step340EntryFvFresh,s6Step340EntryGvFresh] [s6Step340EntryFvOut,s6Step340EntryGvOut]
    (growRow 777 s6Step340EntryGFresh) ((growRow 776 s6Step340EntryFvFresh ++ (growRow 775 s6Step340EntryGvFresh ++ []))) s6Step340EntryG_Incoming s6Step340EntryG_checked h2 s6Step340EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step340EntryFBefore s6Step340EntryFAfter s6Step340EntryGvAfter
    s6Step340EntryFRow s6Step340EntryFOut 102 s6Step340EntryFFresh [(s6Step340EntryGRow,102),(s6Step340EntryFvRow,186),(s6Step340EntryGvRow,186)] [s6Step340EntryGFresh,s6Step340EntryFvFresh,s6Step340EntryGvFresh] [s6Step340EntryGOut,s6Step340EntryFvOut,s6Step340EntryGvOut]
    (growRow 795 s6Step340EntryFFresh) ((growRow 777 s6Step340EntryGFresh ++ (growRow 776 s6Step340EntryFvFresh ++ (growRow 775 s6Step340EntryGvFresh ++ [])))) s6Step340EntryF_Incoming s6Step340EntryF_checked h1 s6Step340EntryF_Outgoing
  exact h0

private theorem s6Step340EntryBank_checked : compileHmrBankResizeLog .entry s6Step340EntryFBefore ⟨s6Step340EntryFRow,s6Step340EntryGRow,s6Step340EntryFvRow,s6Step340EntryGvRow⟩ ⟨102,102,186,186⟩ [s6Step340EntryFFresh,s6Step340EntryGFresh,s6Step340EntryFvFresh,s6Step340EntryGvFresh]=
    some (s6Step340EntryGvAfter,⟨s6Step340EntryFOut,s6Step340EntryGOut,s6Step340EntryFvOut,s6Step340EntryGvOut⟩,(growRow 795 s6Step340EntryFFresh ++ (growRow 777 s6Step340EntryGFresh ++ (growRow 776 s6Step340EntryFvFresh ++ (growRow 775 s6Step340EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step340EntryBank_rows]
  rfl

private def s6Step340ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340ExitFBefore : Arena := s6Step340ExitGAfter

private def s6Step340ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 903],795⟩

private def s6Step340ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 805],776⟩

private def s6Step340ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 860, 865],777⟩

private def s6Step340ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 843],775⟩

private theorem s6Step340ExitBank_incomingDistinct : ([s6Step340ExitGRow,s6Step340ExitFRow,s6Step340ExitFvRow,s6Step340ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340ExitF_Incoming : rowsOwned s6Step340ExitFBefore [s6Step340ExitFRow,s6Step340ExitFvRow,s6Step340ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step340ExitGRow,s6Step340ExitFRow,s6Step340ExitFvRow,s6Step340ExitGvRow] 1 s6Step340ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step340ExitFBefore (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step340ExitBank_outgoingOwned : rowsOwned s6Step340ExitGvAfter [s6Step340ExitGOut,s6Step340ExitFOut,s6Step340ExitFvOut,s6Step340ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step340ExitGvAfter (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step340ExitF_Outgoing : rowsOwned s6Step340ExitGvAfter [s6Step340ExitFOut,s6Step340ExitFvOut,s6Step340ExitGvOut] :=
  hmrRows_owned_drop s6Step340ExitGvAfter [s6Step340ExitGOut,s6Step340ExitFOut,s6Step340ExitFvOut,s6Step340ExitGvOut] 1 s6Step340ExitBank_outgoingOwned

private theorem s6Step340ExitF_distinct : (s6Step340ExitFRow.sign::s6Step340ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340ExitF_owned : (s6Step340ExitFRow.sign::s6Step340ExitFRow.payload).toFinset⊆s6Step340ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step340ExitFBefore (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340ExitF_retired : s6Step340ExitFBefore.retireSet s6Step340ExitFExtra.toFinset=s6Step340ExitFAfter := by
  unfold Arena.retireSet s6Step340ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step340ExitFBefore,s6Step340ExitGAfter,s6Step340ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step340ExitF_checked : planRowResizeLog s6Step340ExitFBefore s6Step340ExitFRow 102 []=
    some (s6Step340ExitFAfter,s6Step340ExitFOut,shrinkRow 795 s6Step340ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step340ExitFBefore s6Step340ExitFRow 102 s6Step340ExitF_distinct s6Step340ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step340ExitFRow.payload.take 102) s6Step340ExitFRow.sign=s6Step340ExitFOut := by decide +kernel
  have hi : s6Step340ExitFRow.payload.drop 102=s6Step340ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step340ExitF_retired] at result
  exact result

private def s6Step340ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340ExitFvBefore : Arena := s6Step340ExitFAfter

private theorem s6Step340ExitFv_Incoming : rowsOwned s6Step340ExitFvBefore [s6Step340ExitFvRow,s6Step340ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step340ExitGRow,s6Step340ExitFRow,s6Step340ExitFvRow,s6Step340ExitGvRow] 2 s6Step340ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step340ExitFvBefore (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step340ExitFv_Outgoing : rowsOwned s6Step340ExitGvAfter [s6Step340ExitFvOut,s6Step340ExitGvOut] :=
  hmrRows_owned_drop s6Step340ExitGvAfter [s6Step340ExitGOut,s6Step340ExitFOut,s6Step340ExitFvOut,s6Step340ExitGvOut] 2 s6Step340ExitBank_outgoingOwned

private theorem s6Step340ExitFv_distinct : (s6Step340ExitFvRow.sign::s6Step340ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340ExitFv_owned : (s6Step340ExitFvRow.sign::s6Step340ExitFvRow.payload).toFinset⊆s6Step340ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step340ExitFvBefore (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340ExitFv_retired : s6Step340ExitFvBefore.retireSet s6Step340ExitFvExtra.toFinset=s6Step340ExitFvAfter := by
  unfold Arena.retireSet s6Step340ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step340ExitFvBefore,s6Step340ExitFAfter,s6Step340ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step340ExitFv_checked : planRowResizeLog s6Step340ExitFvBefore s6Step340ExitFvRow 186 []=
    some (s6Step340ExitFvAfter,s6Step340ExitFvOut,shrinkRow 776 s6Step340ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step340ExitFvBefore s6Step340ExitFvRow 186 s6Step340ExitFv_distinct s6Step340ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step340ExitFvRow.payload.take 186) s6Step340ExitFvRow.sign=s6Step340ExitFvOut := by decide +kernel
  have hi : s6Step340ExitFvRow.payload.drop 186=s6Step340ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step340ExitFv_retired] at result
  exact result

private def s6Step340ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step340ExitG_Incoming : rowsOwned s6Step340ExitGBefore [s6Step340ExitGRow,s6Step340ExitFRow,s6Step340ExitFvRow,s6Step340ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step340ExitGRow,s6Step340ExitFRow,s6Step340ExitFvRow,s6Step340ExitGvRow] 0 s6Step340ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step340ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step340ExitG_Outgoing : rowsOwned s6Step340ExitGvAfter [s6Step340ExitGOut,s6Step340ExitFOut,s6Step340ExitFvOut,s6Step340ExitGvOut] :=
  hmrRows_owned_drop s6Step340ExitGvAfter [s6Step340ExitGOut,s6Step340ExitFOut,s6Step340ExitFvOut,s6Step340ExitGvOut] 0 s6Step340ExitBank_outgoingOwned

private theorem s6Step340ExitG_distinct : (s6Step340ExitGRow.sign::s6Step340ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340ExitG_owned : (s6Step340ExitGRow.sign::s6Step340ExitGRow.payload).toFinset⊆s6Step340ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step340ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340ExitG_retired : s6Step340ExitGBefore.retireSet s6Step340ExitGExtra.toFinset=s6Step340ExitGAfter := by
  unfold Arena.retireSet s6Step340ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step340ExitGBefore,s6Step340ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step340ExitG_checked : planRowResizeLog s6Step340ExitGBefore s6Step340ExitGRow 100 []=
    some (s6Step340ExitGAfter,s6Step340ExitGOut,shrinkRow 777 s6Step340ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step340ExitGBefore s6Step340ExitGRow 100 s6Step340ExitG_distinct s6Step340ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step340ExitGRow.payload.take 100) s6Step340ExitGRow.sign=s6Step340ExitGOut := by decide +kernel
  have hi : s6Step340ExitGRow.payload.drop 100=s6Step340ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step340ExitG_retired] at result
  exact result

private def s6Step340ExitGvBefore : Arena := s6Step340ExitFvAfter

private theorem s6Step340ExitGv_Incoming : rowsOwned s6Step340ExitGvBefore [s6Step340ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step340ExitGRow,s6Step340ExitFRow,s6Step340ExitFvRow,s6Step340ExitGvRow] 3 s6Step340ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step340ExitGvBefore (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step340ExitGv_Outgoing : rowsOwned s6Step340ExitGvAfter [s6Step340ExitGvOut] :=
  hmrRows_owned_drop s6Step340ExitGvAfter [s6Step340ExitGOut,s6Step340ExitFOut,s6Step340ExitFvOut,s6Step340ExitGvOut] 3 s6Step340ExitBank_outgoingOwned

private theorem s6Step340ExitGv_distinct : (s6Step340ExitGvRow.sign::s6Step340ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340ExitGv_owned : (s6Step340ExitGvRow.sign::s6Step340ExitGvRow.payload).toFinset⊆s6Step340ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step340ExitGvBefore (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340ExitGv_retired : s6Step340ExitGvBefore.retireSet s6Step340ExitGvExtra.toFinset=s6Step340ExitGvAfter := by
  unfold Arena.retireSet s6Step340ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step340ExitGvBefore,s6Step340ExitFvAfter,s6Step340ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step340ExitGv_checked : planRowResizeLog s6Step340ExitGvBefore s6Step340ExitGvRow 186 []=
    some (s6Step340ExitGvAfter,s6Step340ExitGvOut,shrinkRow 775 s6Step340ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step340ExitGvBefore s6Step340ExitGvRow 186 s6Step340ExitGv_distinct s6Step340ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step340ExitGvRow.payload.take 186) s6Step340ExitGvRow.sign=s6Step340ExitGvOut := by decide +kernel
  have hi : s6Step340ExitGvRow.payload.drop 186=s6Step340ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step340ExitGv_retired] at result
  exact result

private theorem s6Step340ExitBank_rows : planWindowRowsLog s6Step340ExitGBefore [(s6Step340ExitGRow,100),(s6Step340ExitFRow,102),(s6Step340ExitFvRow,186),(s6Step340ExitGvRow,186)] [[],[],[],[]]=
    some (s6Step340ExitGvAfter,[s6Step340ExitGOut,s6Step340ExitFOut,s6Step340ExitFvOut,s6Step340ExitGvOut],(shrinkRow 777 s6Step340ExitGExtra ++ (shrinkRow 795 s6Step340ExitFExtra ++ (shrinkRow 776 s6Step340ExitFvExtra ++ (shrinkRow 775 s6Step340ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step340ExitGvAfter [] []=some (s6Step340ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step340ExitGvBefore s6Step340ExitGvAfter s6Step340ExitGvAfter
    s6Step340ExitGvRow s6Step340ExitGvOut 186 [] [] [] []
    (shrinkRow 775 s6Step340ExitGvExtra) ([]) s6Step340ExitGv_Incoming s6Step340ExitGv_checked h4 s6Step340ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step340ExitFvBefore s6Step340ExitFvAfter s6Step340ExitGvAfter
    s6Step340ExitFvRow s6Step340ExitFvOut 186 [] [(s6Step340ExitGvRow,186)] [[]] [s6Step340ExitGvOut]
    (shrinkRow 776 s6Step340ExitFvExtra) ((shrinkRow 775 s6Step340ExitGvExtra ++ [])) s6Step340ExitFv_Incoming s6Step340ExitFv_checked h3 s6Step340ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step340ExitFBefore s6Step340ExitFAfter s6Step340ExitGvAfter
    s6Step340ExitFRow s6Step340ExitFOut 102 [] [(s6Step340ExitFvRow,186),(s6Step340ExitGvRow,186)] [[],[]] [s6Step340ExitFvOut,s6Step340ExitGvOut]
    (shrinkRow 795 s6Step340ExitFExtra) ((shrinkRow 776 s6Step340ExitFvExtra ++ (shrinkRow 775 s6Step340ExitGvExtra ++ []))) s6Step340ExitF_Incoming s6Step340ExitF_checked h2 s6Step340ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step340ExitGBefore s6Step340ExitGAfter s6Step340ExitGvAfter
    s6Step340ExitGRow s6Step340ExitGOut 100 [] [(s6Step340ExitFRow,102),(s6Step340ExitFvRow,186),(s6Step340ExitGvRow,186)] [[],[],[]] [s6Step340ExitFOut,s6Step340ExitFvOut,s6Step340ExitGvOut]
    (shrinkRow 777 s6Step340ExitGExtra) ((shrinkRow 795 s6Step340ExitFExtra ++ (shrinkRow 776 s6Step340ExitFvExtra ++ (shrinkRow 775 s6Step340ExitGvExtra ++ [])))) s6Step340ExitG_Incoming s6Step340ExitG_checked h1 s6Step340ExitG_Outgoing
  exact h0

private theorem s6Step340ExitBank_checked : compileHmrBankResizeLog .exit s6Step340ExitGBefore ⟨s6Step340ExitFRow,s6Step340ExitGRow,s6Step340ExitFvRow,s6Step340ExitGvRow⟩ ⟨102,100,186,186⟩ [[],[],[],[]]=
    some (s6Step340ExitGvAfter,⟨s6Step340ExitFOut,s6Step340ExitGOut,s6Step340ExitFvOut,s6Step340ExitGvOut⟩,(shrinkRow 777 s6Step340ExitGExtra ++ (shrinkRow 795 s6Step340ExitFExtra ++ (shrinkRow 776 s6Step340ExitFvExtra ++ (shrinkRow 775 s6Step340ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step340ExitBank_rows]
  rfl

private theorem s6Step340Add0_apart : Disjoint s6Step340Add0Arena.live s6Step340Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step340Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340Add0_card : s6Step340Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step340Add0_borrowed : s6Step340Add0Arena.checkBorrow (hmrHybridCount s6Step340Add0Arena s6Step340Add0B.length) s6Step340Add0Work=some s6Step340Add0During := by
  have len : s6Step340Add0Work.length=hmrHybridCount s6Step340Add0Arena s6Step340Add0B.length := by
    rw [hmrHybridCount,s6Step340Add0_card]
    decide +kernel
  have nd : s6Step340Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step340Add0Arena s6Step340Add0During s6Step340Add0Work.toFinset s6Step340Add0_bounded s6Step340Add0_apart rfl

private theorem s6Step340Add0_distinct : (817::802::812::(s6Step340Add0A++s6Step340Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340Add0_owned : (817::802::812::(s6Step340Add0A++s6Step340Add0B)).toFinset⊆s6Step340Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step340Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340Add0_checked : compileHmrHybridCinLog s6Step340Add0Arena 802 817 812 s6Step340Add0A s6Step340Add0B s6Step340Add0Work=some s6Step340Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step340Add0Arena s6Step340Add0During 802 817 812 s6Step340Add0A s6Step340Add0B s6Step340Add0Work
    (by decide +kernel) (by decide +kernel) s6Step340Add0_distinct
    (fun q hq => s6Step340Add0_owned (List.mem_toFinset.mpr hq)) s6Step340Add0_borrowed

private theorem s6Step340Add1_apart : Disjoint s6Step340Add1Arena.live s6Step340Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step340Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340Add1_card : s6Step340Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step340Add1_borrowed : s6Step340Add1Arena.checkBorrow (hmrHybridCount s6Step340Add1Arena s6Step340Add1B.length) s6Step340Add1Work=some s6Step340Add1During := by
  have len : s6Step340Add1Work.length=hmrHybridCount s6Step340Add1Arena s6Step340Add1B.length := by
    rw [hmrHybridCount,s6Step340Add1_card]
    decide +kernel
  have nd : s6Step340Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step340Add1Arena s6Step340Add1During s6Step340Add1Work.toFinset s6Step340Add1_bounded s6Step340Add1_apart rfl

private theorem s6Step340Add1_distinct : (817::802::812::(s6Step340Add1A++s6Step340Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340Add1_owned : (817::802::812::(s6Step340Add1A++s6Step340Add1B)).toFinset⊆s6Step340Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step340Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340Add1_checked : compileHmrHybridCinLog s6Step340Add1Arena 802 817 812 s6Step340Add1A s6Step340Add1B s6Step340Add1Work=some s6Step340Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step340Add1Arena s6Step340Add1During 802 817 812 s6Step340Add1A s6Step340Add1B s6Step340Add1Work
    (by decide +kernel) (by decide +kernel) s6Step340Add1_distinct
    (fun q hq => s6Step340Add1_owned (List.mem_toFinset.mpr hq)) s6Step340Add1_borrowed

private theorem s6Step340F4_apart : Disjoint (s6Step340Add0A++s6Step340Add0B).toFinset (s6Step340Add1A++s6Step340Add1B).toFinset := by
  have nd : ((s6Step340Add0A++s6Step340Add0B)++(s6Step340Add1A++s6Step340Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step340F4_carry : s6Step340F4FlagArena.checkBorrow 1 [812]=some s6Step340Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step340F4FlagArena,s6Step340HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step340F4FlagArena,s6Step340HeadFvAfter,s6Step340Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step340F4_distinct : (768::802::817::812::((s6Step340Add0A++s6Step340Add1A)++(s6Step340Add0B++s6Step340Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340F4_flag : s6Step340HeadFvAfter.checkBorrow 1 [817]=some s6Step340F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step340HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step340F4_owned : (768::802::((s6Step340Add0A++s6Step340Add1A)++(s6Step340Add0B++s6Step340Add1B))).toFinset⊆s6Step340HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step340HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340F4_checked : compileHmrHybridF4Log s6Step340HeadFvAfter 768 802 s6Step340Add0A s6Step340Add0B s6Step340Add1A s6Step340Add1B [817] [812] s6Step340Add0Work s6Step340Add1Work=some s6Step340F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step340HeadFvAfter s6Step340F4FlagArena s6Step340Add0Arena s6Step340Add0During s6Step340Add1During 768 802
    s6Step340Add0A s6Step340Add0B s6Step340Add1A s6Step340Add1B [817] [812] s6Step340Add0Work s6Step340Add1Work
    (fun q hq => s6Step340F4_owned (List.mem_toFinset.mpr hq)) s6Step340F4_flag s6Step340F4_carry
    s6Step340F4_distinct s6Step340F4_apart s6Step340Add0_checked s6Step340Add1_checked

private theorem s6Step340Front_branch : s6Step340FrontSigmaArena.checkBorrow 1 [802]=some s6Step340HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step340FrontSigmaArena,s6Step340EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step340FrontSigmaArena,s6Step340EntryGvAfter,s6Step340HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step340Front_entry : HmrFrontEntryValid s6Step340EntryFBefore s6Step340FrontBank 102 186 ⟨102,100,186,186⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step340FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step340EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step340EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step340FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step340Front_sigma : s6Step340EntryGvAfter.checkBorrow 1 [768]=some s6Step340FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step340EntryGvAfter,arenaWires]
  · rfl

private def s6Step340HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340HeadFBefore : Arena := s6Step340HeadGAfter

private def s6Step340HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩

private def s6Step340HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩

private def s6Step340HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 860],777⟩

private def s6Step340HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907],775⟩

private theorem s6Step340HeadBank_incomingDistinct : ([s6Step340HeadGRow,s6Step340HeadFRow,s6Step340HeadGvRow,s6Step340HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340HeadF_Incoming : rowsOwned s6Step340HeadFBefore [s6Step340HeadFRow,s6Step340HeadGvRow,s6Step340HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step340HeadGRow,s6Step340HeadFRow,s6Step340HeadGvRow,s6Step340HeadFvRow] 1 s6Step340HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step340HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step340HeadBank_outgoingOwned : rowsOwned s6Step340HeadFvAfter [s6Step340HeadGOut,s6Step340HeadFOut,s6Step340HeadGvOut,s6Step340HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step340HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step340HeadF_Outgoing : rowsOwned s6Step340HeadFvAfter [s6Step340HeadFOut,s6Step340HeadGvOut,s6Step340HeadFvOut] :=
  hmrRows_owned_drop s6Step340HeadFvAfter [s6Step340HeadGOut,s6Step340HeadFOut,s6Step340HeadGvOut,s6Step340HeadFvOut] 1 s6Step340HeadBank_outgoingOwned

private theorem s6Step340HeadF_distinct : (s6Step340HeadFRow.sign::s6Step340HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340HeadF_owned : (s6Step340HeadFRow.sign::s6Step340HeadFRow.payload).toFinset⊆s6Step340HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step340HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340HeadF_reserved : s6Step340HeadFBefore.reserve s6Step340HeadFFresh.toFinset=some s6Step340HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step340HeadFFresh,arenaWires]
  · norm_num [s6Step340HeadFBefore,s6Step340HeadGAfter,s6Step340HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step340HeadFAfter,s6Step340HeadFBefore,s6Step340HeadGAfter,s6Step340HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step340HeadF_checked : planRowResizeLog s6Step340HeadFBefore s6Step340HeadFRow 103 s6Step340HeadFFresh=
    some (s6Step340HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 903],795⟩,growRow 795 s6Step340HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step340HeadFBefore s6Step340HeadFAfter s6Step340HeadFRow 103 s6Step340HeadFFresh
    s6Step340HeadF_distinct s6Step340HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step340HeadF_reserved
  have rowEq : WindowRow.mk (s6Step340HeadFRow.payload++s6Step340HeadFFresh) s6Step340HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 903],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step340HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step340HeadFvBefore : Arena := s6Step340HeadGvAfter

private theorem s6Step340HeadFv_Incoming : rowsOwned s6Step340HeadFvBefore [s6Step340HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step340HeadGRow,s6Step340HeadFRow,s6Step340HeadGvRow,s6Step340HeadFvRow] 3 s6Step340HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step340HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step340HeadFv_Outgoing : rowsOwned s6Step340HeadFvAfter [s6Step340HeadFvOut] :=
  hmrRows_owned_drop s6Step340HeadFvAfter [s6Step340HeadGOut,s6Step340HeadFOut,s6Step340HeadGvOut,s6Step340HeadFvOut] 3 s6Step340HeadBank_outgoingOwned

private theorem s6Step340HeadFv_distinct : (s6Step340HeadFvRow.sign::s6Step340HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340HeadFv_owned : (s6Step340HeadFvRow.sign::s6Step340HeadFvRow.payload).toFinset⊆s6Step340HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step340HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340HeadFv_reserved : s6Step340HeadFvBefore.reserve s6Step340HeadFvFresh.toFinset=some s6Step340HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step340HeadFvFresh,arenaWires]
  · norm_num [s6Step340HeadFvBefore,s6Step340HeadGvAfter,s6Step340HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step340HeadFvAfter,s6Step340HeadFvBefore,s6Step340HeadGvAfter,s6Step340HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step340HeadFv_checked : planRowResizeLog s6Step340HeadFvBefore s6Step340HeadFvRow 187 s6Step340HeadFvFresh=
    some (s6Step340HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 805],776⟩,growRow 776 s6Step340HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step340HeadFvBefore s6Step340HeadFvAfter s6Step340HeadFvRow 187 s6Step340HeadFvFresh
    s6Step340HeadFv_distinct s6Step340HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step340HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step340HeadFvRow.payload++s6Step340HeadFvFresh) s6Step340HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 805],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step340HeadG_Incoming : rowsOwned s6Step340HeadGBefore [s6Step340HeadGRow,s6Step340HeadFRow,s6Step340HeadGvRow,s6Step340HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step340HeadGRow,s6Step340HeadFRow,s6Step340HeadGvRow,s6Step340HeadFvRow] 0 s6Step340HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step340HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step340HeadG_Outgoing : rowsOwned s6Step340HeadFvAfter [s6Step340HeadGOut,s6Step340HeadFOut,s6Step340HeadGvOut,s6Step340HeadFvOut] :=
  hmrRows_owned_drop s6Step340HeadFvAfter [s6Step340HeadGOut,s6Step340HeadFOut,s6Step340HeadGvOut,s6Step340HeadFvOut] 0 s6Step340HeadBank_outgoingOwned

private theorem s6Step340HeadG_distinct : (s6Step340HeadGRow.sign::s6Step340HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340HeadG_owned : (s6Step340HeadGRow.sign::s6Step340HeadGRow.payload).toFinset⊆s6Step340HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step340HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340HeadG_reserved : s6Step340HeadGBefore.reserve s6Step340HeadGFresh.toFinset=some s6Step340HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step340HeadGFresh,arenaWires]
  · norm_num [s6Step340HeadGBefore,s6Step340HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step340HeadGAfter,s6Step340HeadGBefore,s6Step340HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step340HeadG_checked : planRowResizeLog s6Step340HeadGBefore s6Step340HeadGRow 103 s6Step340HeadGFresh=
    some (s6Step340HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 860, 865],777⟩,growRow 777 s6Step340HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step340HeadGBefore s6Step340HeadGAfter s6Step340HeadGRow 103 s6Step340HeadGFresh
    s6Step340HeadG_distinct s6Step340HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step340HeadG_reserved
  have rowEq : WindowRow.mk (s6Step340HeadGRow.payload++s6Step340HeadGFresh) s6Step340HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 860, 865],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step340HeadGvBefore : Arena := s6Step340HeadFAfter

private theorem s6Step340HeadGv_Incoming : rowsOwned s6Step340HeadGvBefore [s6Step340HeadGvRow,s6Step340HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step340HeadGRow,s6Step340HeadFRow,s6Step340HeadGvRow,s6Step340HeadFvRow] 2 s6Step340HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step340HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step340HeadGv_Outgoing : rowsOwned s6Step340HeadFvAfter [s6Step340HeadGvOut,s6Step340HeadFvOut] :=
  hmrRows_owned_drop s6Step340HeadFvAfter [s6Step340HeadGOut,s6Step340HeadFOut,s6Step340HeadGvOut,s6Step340HeadFvOut] 2 s6Step340HeadBank_outgoingOwned

private theorem s6Step340HeadGv_distinct : (s6Step340HeadGvRow.sign::s6Step340HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step340HeadGv_owned : (s6Step340HeadGvRow.sign::s6Step340HeadGvRow.payload).toFinset⊆s6Step340HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step340HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step340HeadGv_reserved : s6Step340HeadGvBefore.reserve s6Step340HeadGvFresh.toFinset=some s6Step340HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step340HeadGvFresh,arenaWires]
  · norm_num [s6Step340HeadGvBefore,s6Step340HeadFAfter,s6Step340HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step340HeadGvAfter,s6Step340HeadGvBefore,s6Step340HeadFAfter,s6Step340HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step340HeadGv_checked : planRowResizeLog s6Step340HeadGvBefore s6Step340HeadGvRow 187 s6Step340HeadGvFresh=
    some (s6Step340HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 843],775⟩,growRow 775 s6Step340HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step340HeadGvBefore s6Step340HeadGvAfter s6Step340HeadGvRow 187 s6Step340HeadGvFresh
    s6Step340HeadGv_distinct s6Step340HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step340HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step340HeadGvRow.payload++s6Step340HeadGvFresh) s6Step340HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 843],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step340HeadBank_rows : planWindowRowsLog s6Step340HeadGBefore [(s6Step340HeadGRow,103),(s6Step340HeadFRow,103),(s6Step340HeadGvRow,187),(s6Step340HeadFvRow,187)] [s6Step340HeadGFresh,s6Step340HeadFFresh,s6Step340HeadGvFresh,s6Step340HeadFvFresh]=
    some (s6Step340HeadFvAfter,[s6Step340HeadGOut,s6Step340HeadFOut,s6Step340HeadGvOut,s6Step340HeadFvOut],(growRow 777 s6Step340HeadGFresh ++ (growRow 795 s6Step340HeadFFresh ++ (growRow 775 s6Step340HeadGvFresh ++ (growRow 776 s6Step340HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step340HeadFvAfter [] []=some (s6Step340HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step340HeadFvBefore s6Step340HeadFvAfter s6Step340HeadFvAfter
    s6Step340HeadFvRow s6Step340HeadFvOut 187 s6Step340HeadFvFresh [] [] []
    (growRow 776 s6Step340HeadFvFresh) ([]) s6Step340HeadFv_Incoming s6Step340HeadFv_checked h4 s6Step340HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step340HeadGvBefore s6Step340HeadGvAfter s6Step340HeadFvAfter
    s6Step340HeadGvRow s6Step340HeadGvOut 187 s6Step340HeadGvFresh [(s6Step340HeadFvRow,187)] [s6Step340HeadFvFresh] [s6Step340HeadFvOut]
    (growRow 775 s6Step340HeadGvFresh) ((growRow 776 s6Step340HeadFvFresh ++ [])) s6Step340HeadGv_Incoming s6Step340HeadGv_checked h3 s6Step340HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step340HeadFBefore s6Step340HeadFAfter s6Step340HeadFvAfter
    s6Step340HeadFRow s6Step340HeadFOut 103 s6Step340HeadFFresh [(s6Step340HeadGvRow,187),(s6Step340HeadFvRow,187)] [s6Step340HeadGvFresh,s6Step340HeadFvFresh] [s6Step340HeadGvOut,s6Step340HeadFvOut]
    (growRow 795 s6Step340HeadFFresh) ((growRow 775 s6Step340HeadGvFresh ++ (growRow 776 s6Step340HeadFvFresh ++ []))) s6Step340HeadF_Incoming s6Step340HeadF_checked h2 s6Step340HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step340HeadGBefore s6Step340HeadGAfter s6Step340HeadFvAfter
    s6Step340HeadGRow s6Step340HeadGOut 103 s6Step340HeadGFresh [(s6Step340HeadFRow,103),(s6Step340HeadGvRow,187),(s6Step340HeadFvRow,187)] [s6Step340HeadFFresh,s6Step340HeadGvFresh,s6Step340HeadFvFresh] [s6Step340HeadFOut,s6Step340HeadGvOut,s6Step340HeadFvOut]
    (growRow 777 s6Step340HeadGFresh) ((growRow 795 s6Step340HeadFFresh ++ (growRow 775 s6Step340HeadGvFresh ++ (growRow 776 s6Step340HeadFvFresh ++ [])))) s6Step340HeadG_Incoming s6Step340HeadG_checked h1 s6Step340HeadG_Outgoing
  exact h0

private theorem s6Step340HeadBank_checked : compileHmrBankResizeLog .headroom s6Step340HeadGBefore ⟨s6Step340HeadFRow,s6Step340HeadGRow,s6Step340HeadFvRow,s6Step340HeadGvRow⟩ ⟨103,103,187,187⟩ [s6Step340HeadGFresh,s6Step340HeadFFresh,s6Step340HeadGvFresh,s6Step340HeadFvFresh]=
    some (s6Step340HeadFvAfter,⟨s6Step340HeadFOut,s6Step340HeadGOut,s6Step340HeadFvOut,s6Step340HeadGvOut⟩,(growRow 777 s6Step340HeadGFresh ++ (growRow 795 s6Step340HeadFFresh ++ (growRow 775 s6Step340HeadGvFresh ++ (growRow 776 s6Step340HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step340HeadBank_rows]
  rfl

private theorem s6Step340Front_checked : compileHmrSourceFrontLog s6Step340EntryFBefore s6Step340FrontBank 102 186 ⟨102,100,186,186⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step340FrontLog=some s6Step340FrontPlan := by
  have pairEq : s6Step340FrontPair=⟨s6Step340HeadFRow,s6Step340HeadGRow,s6Step340HeadFvRow,s6Step340HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step340FrontHead=⟨s6Step340ExitFRow,s6Step340ExitGRow,s6Step340ExitFvRow,s6Step340ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step340Add0A=s6Step340FrontHead.f.wires := by decide +kernel
  have gEq : s6Step340Add0B=s6Step340FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step340Add1A=s6Step340FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step340Add1B=s6Step340FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step340EntryFBefore s6Step340FrontBank 102 186 ⟨102,100,186,186⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step340FrontLog s6Step340FrontPlan
  · exact s6Step340Front_entry
  · exact s6Step340EntryBank_checked
  · exact s6Step340Front_sigma
  · rfl
  · exact s6Step340Front_branch
  · rfl
  · simpa only [s6Step340FrontPlan,pairEq] using s6Step340HeadBank_checked
  · simpa only [s6Step340FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step340F4_checked
  · exact s6Step340Counter_checked
  · rfl
  · simpa only [s6Step340FrontPlan,headEq] using s6Step340ExitBank_checked

private theorem s6Step340Complete_explicit_checked : compileHmrEarlyStepLog s6Step340EntryFBefore s6Step340FrontBank 102 186 ⟨102,100,186,186⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step340CompleteLog=some s6Step340CompletePlan := by
  let Q := s6Step340EarlyControlPlan
  have hq := s6Step340EarlyControl_plan_checked
  have fv1 : s6Step340CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step340CompleteOut.fv.payload[2]?.getD s6Step340CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step340CompleteOut.fv.payload[3]?.getD s6Step340CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step340CompleteOut.fv.payload[4]?.getD s6Step340CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step340EntryFBefore s6Step340EarlyControlArena s6Step340FrontBank 102 186 ⟨102,100,186,186⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step340CompleteLog s6Step340FrontPlan Q
    s6Step340Front_checked s6Step340Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step340Complete_owned s6Step340Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step340EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 768 s6Step340CompleteOut.fv.second (s6Step340CompleteOut.fv.payload[2]?.getD s6Step340CompleteOut.fv.sign) (s6Step340CompleteOut.fv.payload[3]?.getD s6Step340CompleteOut.fv.sign) (s6Step340CompleteOut.fv.payload[4]?.getD s6Step340CompleteOut.fv.sign) 802 60 s6Step340EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep340Arena : Arena := s6Step340EntryFBefore
def s6PrivateStep340Bank : WindowBank := s6Step340FrontBank
def s6PrivateStep340Spec : HmrSourceWalkStepLog := ⟨102,186,⟨102,100,186,186⟩,60,.early s6Step340CompleteLog⟩
def s6PrivateStep340Plan : HmrSourceStepPlan := .early s6Step340CompletePlan
theorem s6PrivateStep340_source : s6PrivateStep340Spec=s6ObservedLogs336[4] := rfl
theorem s6PrivateStep340_checked : compileHmrSourceStepLog s6PrivateStep340Arena s6PrivateStep340Bank
    s6PrivateStep340Spec.fgWidth s6PrivateStep340Spec.vWidth s6PrivateStep340Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 340 s6PrivateStep340Spec.need none s6PrivateStep340Spec.log=some s6PrivateStep340Plan := by
  change compileHmrSourceStepLog s6Step340EntryFBefore s6Step340FrontBank 102 186 ⟨102,100,186,186⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 340 60 none (.early s6Step340CompleteLog)=some (.early s6Step340CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 340<498)]
  rw [s6Step340Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
