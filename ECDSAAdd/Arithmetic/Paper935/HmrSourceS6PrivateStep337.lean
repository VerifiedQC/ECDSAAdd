import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep335
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

private def s6Step337CompleteMoves : List (Wire × Wire) := [(867,101)]

private def s6Step337EarlyControlLog : HmrEarlyControlLog := ⟨[867, 907, 843, 784, 865],[860],[805],[817, 812, 915, 906, 792, 816],[]⟩

private def s6Step337FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [784], [], [874]],[[865], [843], [907], [838]],[[], [], [], []]⟩,[802],[903],[860],[805],[817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812]⟩

private def s6Step337CompleteLog : HmrEarlyStepLog := ⟨s6Step337FrontLog,s6Step337CompleteMoves,s6Step337EarlyControlLog⟩

private def s6Step337ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step337ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩

private def s6Step337ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100],777⟩

private def s6Step337ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874],775⟩

private def s6Step337FrontOut : WindowBank := ⟨s6Step337ExitFOut,s6Step337ExitGOut,s6Step337ExitFvOut,s6Step337ExitGvOut⟩

private def s6Step337CompleteOut : WindowBank := s6Step337FrontOut.repacked s6Step337CompleteMoves

private def s6Step337EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step337EarlyControlPositiveArena,[860],s6Step337EarlyControlEqualityArena,[805],⟨⟨802,false⟩,[⟨⟨860,false⟩,805⟩]⟩⟩

private def s6Step337EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,867⟩,⟨⟨772,false⟩,907⟩,⟨⟨771,false⟩,843⟩,⟨⟨770,false⟩,784⟩,⟨⟨769,false⟩,865⟩]⟩

private def s6Step337EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step337EarlyControlZeroArena,s6Step337EarlyControlZeroPlan,s6Step337EarlyControlClassPlan,s6Step337EarlyControlFlagArena,s6Step337EarlyControlFittedArena,s6Step337EarlyControlHistoryArena,s6Step337EarlyControlSigmaArena,s6Step337EarlyControlOutputArena,s6Step337EarlyControlLog⟩

private def s6Step337CounterWork : List Wire := [860, 805, 817, 812]

private theorem s6Step337Counter_bounded : s6Step337CounterWork.toFinset⊆arenaWires := by norm_num [s6Step337CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step337HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337CounterDuring : Arena := ⟨s6Step337HeadFvAfter.live∪s6Step337CounterWork.toFinset,Finset.union_subset s6Step337HeadFvAfter.bounded s6Step337Counter_bounded⟩

private def s6Step337EntryFFresh : List Wire := []

private def s6Step337EntryFvFresh : List Wire := []

private def s6Step337EntryGFresh : List Wire := [784]

private def s6Step337EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337EntryGvFresh : List Wire := [874]

private def s6Step337ExitFExtra : List Wire := [843]

private def s6Step337ExitGExtra : List Wire := [101, 784, 865]

private def s6Step337ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<101) ∨ (102≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337ExitGvExtra : List Wire := [907]

private def s6Step337Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337Add0Work : List Wire := [817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step337Add0_bounded : s6Step337Add0Work.toFinset⊆arenaWires := by
  have h : s6Step337Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step337Add0During : Arena := ⟨s6Step337Add0Arena.live∪s6Step337Add0Work.toFinset,Finset.union_subset s6Step337Add0Arena.bounded s6Step337Add0_bounded⟩

private def s6Step337Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337Add1Work : List Wire := [817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step337Add1_bounded : s6Step337Add1Work.toFinset⊆arenaWires := by
  have h : s6Step337Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step337Add1During : Arena := ⟨s6Step337Add1Arena.live∪s6Step337Add1Work.toFinset,Finset.union_subset s6Step337Add1Arena.bounded s6Step337Add1_bounded⟩

private def s6Step337F4FlagArena : Arena := ⟨s6Step337HeadFvAfter.live∪{860},Finset.union_subset s6Step337HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step337F4Plan : HmrHybridF4Plan := ⟨s6Step337F4FlagArena,[860],s6Step337Add0Arena,[805],s6Step337Add0During,s6Step337Add0Work,s6Step337Add1During,s6Step337Add1Work⟩

private def s6Step337HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 843],795⟩

private def s6Step337HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩

private def s6Step337HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 784, 865],777⟩

private def s6Step337HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 907],775⟩

private def s6Step337FrontHead : WindowBank := ⟨s6Step337HeadFOut,s6Step337HeadGOut,s6Step337HeadFvOut,s6Step337HeadGvOut⟩

private def s6Step337EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step337EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩

private def s6Step337EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 784],777⟩

private def s6Step337EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874],775⟩

private def s6Step337FrontPair : WindowBank := ⟨s6Step337EntryFOut,s6Step337EntryGOut,s6Step337EntryFvOut,s6Step337EntryGvOut⟩

private def s6Step337FrontSigmaArena : Arena := ⟨s6Step337EntryGvAfter.live∪{802},Finset.union_subset s6Step337EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step337HeadFFresh : List Wire := [843]

private def s6Step337HeadFvFresh : List Wire := [838]

private def s6Step337HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337HeadGFresh : List Wire := [865]

private def s6Step337HeadGvFresh : List Wire := [907]

private def s6Step337FrontPlan : HmrSourceFront := ⟨s6Step337EntryGvAfter,s6Step337FrontPair,(growRow 795 s6Step337EntryFFresh ++ (growRow 777 s6Step337EntryGFresh ++ (growRow 776 s6Step337EntryFvFresh ++ (growRow 775 s6Step337EntryGvFresh ++ [])))),s6Step337FrontSigmaArena,[802],s6Step337HeadGBefore,[903],
  s6Step337HeadFvAfter,s6Step337FrontHead,(growRow 777 s6Step337HeadGFresh ++ (growRow 795 s6Step337HeadFFresh ++ (growRow 775 s6Step337HeadGvFresh ++ (growRow 776 s6Step337HeadFvFresh ++ [])))),s6Step337F4Plan,s6Step337CounterDuring,s6Step337CounterWork,s6Step337ExitGvAfter,s6Step337FrontOut,(shrinkRow 777 s6Step337ExitGExtra ++ (shrinkRow 795 s6Step337ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step337ExitGvExtra ++ []))))⟩

private def s6Step337CompletePlan : HmrEarlyStepPlan := ⟨s6Step337FrontPlan,s6Step337EarlyControlArena,s6Step337EarlyControlPlan,s6Step337CompleteMoves⟩

private theorem s6Step337Complete_apart : List.Disjoint (s6Step337CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [802, 903, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step337CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[802, 903, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step337Complete_owned : (s6Step337CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step337EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step337EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step337CompleteMoveArena : Arena := ⟨s6Step337ExitGvAfter.live∪{101},Finset.union_subset s6Step337ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step337Complete_repack : s6Step337ExitGvAfter.checkRepack s6Step337CompleteMoves=some s6Step337EarlyControlArena := by
  have owned : 867∈s6Step337ExitGvAfter.live := by norm_num [s6Step337ExitGvAfter,arenaWires]
  have reserve : s6Step337ExitGvAfter.reserve {101}=some s6Step337CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step337ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step337CompleteMoveArena.retireSet {867}=s6Step337EarlyControlArena := by
    unfold Arena.retireSet s6Step337EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step337CompleteMoveArena,s6Step337ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step337CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step337CompleteMoveArena.retireSet {867}).checkRepack []=some s6Step337EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step337EarlyControl_branchOwned : ([903] : List Wire).toFinset⊆s6Step337EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step337EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337EarlyControl_branch : compileHmrBranchRetirement s6Step337EarlyControlSigmaArena 903=some s6Step337EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step337EarlyControl_branchOwned
  · ext q
    simp [s6Step337EarlyControlOutputArena,s6Step337EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step337EarlyControl_classEqualityBorrow : s6Step337EarlyControlPositiveArena.checkBorrow (([802, 860] : List Wire).length-1) s6Step337EarlyControlLog.classWork=some s6Step337EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step337EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step337EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step337EarlyControlEqualityArena,s6Step337EarlyControlPositiveArena,s6Step337EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step337EarlyControl_classEqualityOwned : ([802, 860] : List Wire).toFinset⊆s6Step337EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step337EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337EarlyControl_classEquality : compileHmrEqualityLog s6Step337EarlyControlPositiveArena [802, 860] 0 s6Step337EarlyControlLog.classWork=some (s6Step337EarlyControlEqualityArena,s6Step337EarlyControlLog.classWork,s6Step337EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step337EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step337EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step337EarlyControl_classOwned : ([769, 865, 802] : List Wire).toFinset⊆s6Step337EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step337EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337EarlyControl_positiveBorrow : s6Step337EarlyControlZeroArena.checkBorrow (1) s6Step337EarlyControlLog.positiveWork=some s6Step337EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step337EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step337EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step337EarlyControlPositiveArena,s6Step337EarlyControlZeroArena,s6Step337EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step337EarlyControl_class : compileHmrSourceClassLog s6Step337EarlyControlZeroArena false 769 s6Step337EarlyControlZeroPlan.top 0 802 s6Step337EarlyControlLog.positiveWork s6Step337EarlyControlLog.classWork=some s6Step337EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step337EarlyControlClassPlan s6Step337EarlyControlZeroArena false 769 s6Step337EarlyControlZeroPlan.top 0 802
  constructor
  · decide +kernel
  · exact s6Step337EarlyControl_classOwned
  · exact s6Step337EarlyControl_positiveBorrow
  · exact s6Step337EarlyControl_classEquality

private theorem s6Step337EarlyControl_entryRecordOwned : ([903, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step337EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step337EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337EarlyControl_entrySigmaOwned : ([802, 254] : List Wire).toFinset⊆s6Step337EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step337EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337EarlyControl_fitBorrow : s6Step337EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step337EarlyControlLog.recordFresh=some s6Step337EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step337EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step337EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step337EarlyControlFittedArena,s6Step337EarlyControlFlagArena,s6Step337EarlyControlLog,arenaWires]

private theorem s6Step337EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step337EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step337EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337EarlyControl_fit : compileHmrRecordGrowLog s6Step337EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step337EarlyControlLog.recordFresh=some s6Step337EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step337EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step337EarlyControl_fitBorrow

private theorem s6Step337EarlyControl_flagsBorrow : s6Step337EarlyControlEqualityArena.checkBorrow (6) s6Step337EarlyControlLog.flagWork=some s6Step337EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step337EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step337EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step337EarlyControlFlagArena,s6Step337EarlyControlEqualityArena,s6Step337EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step337EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step337EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step337EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337EarlyControl_flags : compileHmrFlagsLog s6Step337EarlyControlClassPlan.equalityArena s6Step337EarlyControlClassPlan.equality.top 253 252 251 s6Step337EarlyControlLog.flagWork=some s6Step337EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step337EarlyControl_flagsOwned⟩
  · exact s6Step337EarlyControl_flagsBorrow

private theorem s6Step337EarlyControl_historyBorrow : s6Step337EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step337EarlyControlLog.recordFresh=some s6Step337EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step337EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step337EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step337EarlyControlHistoryArena,s6Step337EarlyControlArena,s6Step337EarlyControlLog,arenaWires]

private theorem s6Step337EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step337EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step337EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337EarlyControl_history : compileHmrRecordGrowLog s6Step337EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step337EarlyControlLog.recordFresh=some s6Step337EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step337EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step337EarlyControl_historyBorrow

private theorem s6Step337EarlyControl_sigmaOwned : ([254, 802] : List Wire).toFinset⊆s6Step337EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step337EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337EarlyControl_sigmaReleaseOwned : ([802] : List Wire).toFinset⊆s6Step337EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step337EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337EarlyControl_sigmaRelease : s6Step337EarlyControlHistoryArena.release {802} (fun _ => false)=some s6Step337EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step337EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step337EarlyControlSigmaArena,s6Step337EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step337EarlyControl_sigma : compileHmrSigmaDropLog s6Step337EarlyControlHistoryArena false 0 0 254 802 []=some s6Step337EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step337EarlyControl_sigmaOwned⟩
  · exact s6Step337EarlyControl_sigmaRelease

private theorem s6Step337EarlyControl_zeroBorrow : s6Step337EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step337EarlyControlLog.zeroWork=some s6Step337EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step337EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step337EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step337EarlyControlZeroArena,s6Step337EarlyControlArena,s6Step337EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step337EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step337EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step337EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337EarlyControl_zero : compileHmrEqualityLog s6Step337EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step337EarlyControlLog.zeroWork=some (s6Step337EarlyControlZeroArena,s6Step337EarlyControlLog.zeroWork,s6Step337EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step337EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step337EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step337EarlyControl_logged : s6Step337EarlyControlPlan.Logged s6Step337EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 802 254 253 252 251 903 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step337EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step337EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step337EarlyControl_zero
  · exact s6Step337EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step337EarlyControl_flags
  · exact s6Step337EarlyControl_fit
  · exact s6Step337EarlyControl_history
  · exact s6Step337EarlyControl_sigma
  · exact s6Step337EarlyControl_branch

private theorem s6Step337EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step337EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 802 254 253 252 251 903 60 s6Step337EarlyControlLog=some s6Step337EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step337EarlyControlPlan s6Step337EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 802 254 253 252 251 903 60 s6Step337EarlyControl_logged

private def s6Step337EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step337EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩

private def s6Step337EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101],777⟩

private def s6Step337EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780],775⟩

private def s6Step337FrontBank : WindowBank := ⟨s6Step337EntryFRow,s6Step337EntryGRow,s6Step337EntryFvRow,s6Step337EntryGvRow⟩

private def s6Step337Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 843, 795]

private def s6Step337Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 784, 865, 777]

private def s6Step337Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 776]

private def s6Step337Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 907, 775]

private theorem s6Step337Counter_apart : Disjoint s6Step337HeadFvAfter.live s6Step337CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step337HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337Counter_borrowed : s6Step337HeadFvAfter.checkBorrow 4 s6Step337CounterWork=some s6Step337CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step337HeadFvAfter s6Step337CounterDuring s6Step337CounterWork.toFinset s6Step337Counter_bounded s6Step337Counter_apart rfl

private theorem s6Step337Counter_owned : (802::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step337HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step337HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337Counter_checked : compileHmrCounterStepLog s6Step337HeadFvAfter true 802 [774, 773, 772, 771, 770, 769] s6Step337CounterWork=some s6Step337CounterDuring := by
  have owned : ∀q∈802::[774, 773, 772, 771, 770, 769],q∈s6Step337HeadFvAfter.live := fun q hq => s6Step337Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step337Counter_borrowed

private def s6Step337EntryFAfter : Arena := s6Step337EntryFBefore

private theorem s6Step337EntryBank_incomingDistinct : ([s6Step337EntryFRow,s6Step337EntryGRow,s6Step337EntryFvRow,s6Step337EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337EntryF_Incoming : rowsOwned s6Step337EntryFBefore [s6Step337EntryFRow,s6Step337EntryGRow,s6Step337EntryFvRow,s6Step337EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step337EntryFRow,s6Step337EntryGRow,s6Step337EntryFvRow,s6Step337EntryGvRow] 0 s6Step337EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step337EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step337EntryBank_outgoingOwned : rowsOwned s6Step337EntryGvAfter [s6Step337EntryFOut,s6Step337EntryGOut,s6Step337EntryFvOut,s6Step337EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step337EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step337EntryF_Outgoing : rowsOwned s6Step337EntryGvAfter [s6Step337EntryFOut,s6Step337EntryGOut,s6Step337EntryFvOut,s6Step337EntryGvOut] :=
  hmrRows_owned_drop s6Step337EntryGvAfter [s6Step337EntryFOut,s6Step337EntryGOut,s6Step337EntryFvOut,s6Step337EntryGvOut] 0 s6Step337EntryBank_outgoingOwned

private theorem s6Step337EntryF_distinct : (s6Step337EntryFRow.sign::s6Step337EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337EntryF_owned : (s6Step337EntryFRow.sign::s6Step337EntryFRow.payload).toFinset⊆s6Step337EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step337EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337EntryF_reserved : s6Step337EntryFBefore.reserve s6Step337EntryFFresh.toFinset=some s6Step337EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step337EntryFFresh,arenaWires]
  · norm_num [s6Step337EntryFBefore,s6Step337EntryFFresh,arenaWires]
  · simp only [s6Step337EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step337EntryF_checked : planRowResizeLog s6Step337EntryFBefore s6Step337EntryFRow 103 s6Step337EntryFFresh=
    some (s6Step337EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩,growRow 795 s6Step337EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step337EntryFBefore s6Step337EntryFAfter s6Step337EntryFRow 103 s6Step337EntryFFresh
    s6Step337EntryF_distinct s6Step337EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step337EntryF_reserved
  have rowEq : WindowRow.mk (s6Step337EntryFRow.payload++s6Step337EntryFFresh) s6Step337EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step337EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337EntryFvAfter : Arena := s6Step337EntryGAfter

private def s6Step337EntryFvBefore : Arena := s6Step337EntryGAfter

private theorem s6Step337EntryFv_Incoming : rowsOwned s6Step337EntryFvBefore [s6Step337EntryFvRow,s6Step337EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step337EntryFRow,s6Step337EntryGRow,s6Step337EntryFvRow,s6Step337EntryGvRow] 2 s6Step337EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step337EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step337EntryFv_Outgoing : rowsOwned s6Step337EntryGvAfter [s6Step337EntryFvOut,s6Step337EntryGvOut] :=
  hmrRows_owned_drop s6Step337EntryGvAfter [s6Step337EntryFOut,s6Step337EntryGOut,s6Step337EntryFvOut,s6Step337EntryGvOut] 2 s6Step337EntryBank_outgoingOwned

private theorem s6Step337EntryFv_distinct : (s6Step337EntryFvRow.sign::s6Step337EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337EntryFv_owned : (s6Step337EntryFvRow.sign::s6Step337EntryFvRow.payload).toFinset⊆s6Step337EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step337EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337EntryFv_reserved : s6Step337EntryFvBefore.reserve s6Step337EntryFvFresh.toFinset=some s6Step337EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step337EntryFvFresh,arenaWires]
  · norm_num [s6Step337EntryFvBefore,s6Step337EntryGAfter,s6Step337EntryFvFresh,arenaWires]
  · simp only [s6Step337EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step337EntryFv_checked : planRowResizeLog s6Step337EntryFvBefore s6Step337EntryFvRow 184 s6Step337EntryFvFresh=
    some (s6Step337EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩,growRow 776 s6Step337EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step337EntryFvBefore s6Step337EntryFvAfter s6Step337EntryFvRow 184 s6Step337EntryFvFresh
    s6Step337EntryFv_distinct s6Step337EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step337EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step337EntryFvRow.payload++s6Step337EntryFvFresh) s6Step337EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step337EntryGBefore : Arena := s6Step337EntryFBefore

private theorem s6Step337EntryG_Incoming : rowsOwned s6Step337EntryGBefore [s6Step337EntryGRow,s6Step337EntryFvRow,s6Step337EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step337EntryFRow,s6Step337EntryGRow,s6Step337EntryFvRow,s6Step337EntryGvRow] 1 s6Step337EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step337EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step337EntryG_Outgoing : rowsOwned s6Step337EntryGvAfter [s6Step337EntryGOut,s6Step337EntryFvOut,s6Step337EntryGvOut] :=
  hmrRows_owned_drop s6Step337EntryGvAfter [s6Step337EntryFOut,s6Step337EntryGOut,s6Step337EntryFvOut,s6Step337EntryGvOut] 1 s6Step337EntryBank_outgoingOwned

private theorem s6Step337EntryG_distinct : (s6Step337EntryGRow.sign::s6Step337EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337EntryG_owned : (s6Step337EntryGRow.sign::s6Step337EntryGRow.payload).toFinset⊆s6Step337EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step337EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337EntryG_reserved : s6Step337EntryGBefore.reserve s6Step337EntryGFresh.toFinset=some s6Step337EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step337EntryGFresh,arenaWires]
  · norm_num [s6Step337EntryGBefore,s6Step337EntryFBefore,s6Step337EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step337EntryGAfter,s6Step337EntryGBefore,s6Step337EntryFBefore,s6Step337EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step337EntryG_checked : planRowResizeLog s6Step337EntryGBefore s6Step337EntryGRow 103 s6Step337EntryGFresh=
    some (s6Step337EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 784],777⟩,growRow 777 s6Step337EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step337EntryGBefore s6Step337EntryGAfter s6Step337EntryGRow 103 s6Step337EntryGFresh
    s6Step337EntryG_distinct s6Step337EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step337EntryG_reserved
  have rowEq : WindowRow.mk (s6Step337EntryGRow.payload++s6Step337EntryGFresh) s6Step337EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 784],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step337EntryGvBefore : Arena := s6Step337EntryGAfter

private theorem s6Step337EntryGv_Incoming : rowsOwned s6Step337EntryGvBefore [s6Step337EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step337EntryFRow,s6Step337EntryGRow,s6Step337EntryFvRow,s6Step337EntryGvRow] 3 s6Step337EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step337EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step337EntryGv_Outgoing : rowsOwned s6Step337EntryGvAfter [s6Step337EntryGvOut] :=
  hmrRows_owned_drop s6Step337EntryGvAfter [s6Step337EntryFOut,s6Step337EntryGOut,s6Step337EntryFvOut,s6Step337EntryGvOut] 3 s6Step337EntryBank_outgoingOwned

private theorem s6Step337EntryGv_distinct : (s6Step337EntryGvRow.sign::s6Step337EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337EntryGv_owned : (s6Step337EntryGvRow.sign::s6Step337EntryGvRow.payload).toFinset⊆s6Step337EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step337EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337EntryGv_reserved : s6Step337EntryGvBefore.reserve s6Step337EntryGvFresh.toFinset=some s6Step337EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step337EntryGvFresh,arenaWires]
  · norm_num [s6Step337EntryGvBefore,s6Step337EntryGAfter,s6Step337EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step337EntryGvAfter,s6Step337EntryGvBefore,s6Step337EntryGAfter,s6Step337EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step337EntryGv_checked : planRowResizeLog s6Step337EntryGvBefore s6Step337EntryGvRow 184 s6Step337EntryGvFresh=
    some (s6Step337EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874],775⟩,growRow 775 s6Step337EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step337EntryGvBefore s6Step337EntryGvAfter s6Step337EntryGvRow 184 s6Step337EntryGvFresh
    s6Step337EntryGv_distinct s6Step337EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step337EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step337EntryGvRow.payload++s6Step337EntryGvFresh) s6Step337EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step337EntryBank_rows : planWindowRowsLog s6Step337EntryFBefore [(s6Step337EntryFRow,103),(s6Step337EntryGRow,103),(s6Step337EntryFvRow,184),(s6Step337EntryGvRow,184)] [s6Step337EntryFFresh,s6Step337EntryGFresh,s6Step337EntryFvFresh,s6Step337EntryGvFresh]=
    some (s6Step337EntryGvAfter,[s6Step337EntryFOut,s6Step337EntryGOut,s6Step337EntryFvOut,s6Step337EntryGvOut],(growRow 795 s6Step337EntryFFresh ++ (growRow 777 s6Step337EntryGFresh ++ (growRow 776 s6Step337EntryFvFresh ++ (growRow 775 s6Step337EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step337EntryGvAfter [] []=some (s6Step337EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step337EntryGvBefore s6Step337EntryGvAfter s6Step337EntryGvAfter
    s6Step337EntryGvRow s6Step337EntryGvOut 184 s6Step337EntryGvFresh [] [] []
    (growRow 775 s6Step337EntryGvFresh) ([]) s6Step337EntryGv_Incoming s6Step337EntryGv_checked h4 s6Step337EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step337EntryFvBefore s6Step337EntryFvAfter s6Step337EntryGvAfter
    s6Step337EntryFvRow s6Step337EntryFvOut 184 s6Step337EntryFvFresh [(s6Step337EntryGvRow,184)] [s6Step337EntryGvFresh] [s6Step337EntryGvOut]
    (growRow 776 s6Step337EntryFvFresh) ((growRow 775 s6Step337EntryGvFresh ++ [])) s6Step337EntryFv_Incoming s6Step337EntryFv_checked h3 s6Step337EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step337EntryGBefore s6Step337EntryGAfter s6Step337EntryGvAfter
    s6Step337EntryGRow s6Step337EntryGOut 103 s6Step337EntryGFresh [(s6Step337EntryFvRow,184),(s6Step337EntryGvRow,184)] [s6Step337EntryFvFresh,s6Step337EntryGvFresh] [s6Step337EntryFvOut,s6Step337EntryGvOut]
    (growRow 777 s6Step337EntryGFresh) ((growRow 776 s6Step337EntryFvFresh ++ (growRow 775 s6Step337EntryGvFresh ++ []))) s6Step337EntryG_Incoming s6Step337EntryG_checked h2 s6Step337EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step337EntryFBefore s6Step337EntryFAfter s6Step337EntryGvAfter
    s6Step337EntryFRow s6Step337EntryFOut 103 s6Step337EntryFFresh [(s6Step337EntryGRow,103),(s6Step337EntryFvRow,184),(s6Step337EntryGvRow,184)] [s6Step337EntryGFresh,s6Step337EntryFvFresh,s6Step337EntryGvFresh] [s6Step337EntryGOut,s6Step337EntryFvOut,s6Step337EntryGvOut]
    (growRow 795 s6Step337EntryFFresh) ((growRow 777 s6Step337EntryGFresh ++ (growRow 776 s6Step337EntryFvFresh ++ (growRow 775 s6Step337EntryGvFresh ++ [])))) s6Step337EntryF_Incoming s6Step337EntryF_checked h1 s6Step337EntryF_Outgoing
  exact h0

private theorem s6Step337EntryBank_checked : compileHmrBankResizeLog .entry s6Step337EntryFBefore ⟨s6Step337EntryFRow,s6Step337EntryGRow,s6Step337EntryFvRow,s6Step337EntryGvRow⟩ ⟨103,103,184,184⟩ [s6Step337EntryFFresh,s6Step337EntryGFresh,s6Step337EntryFvFresh,s6Step337EntryGvFresh]=
    some (s6Step337EntryGvAfter,⟨s6Step337EntryFOut,s6Step337EntryGOut,s6Step337EntryFvOut,s6Step337EntryGvOut⟩,(growRow 795 s6Step337EntryFFresh ++ (growRow 777 s6Step337EntryGFresh ++ (growRow 776 s6Step337EntryFvFresh ++ (growRow 775 s6Step337EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step337EntryBank_rows]
  rfl

private def s6Step337ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<101) ∨ (102≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<101) ∨ (102≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337ExitFBefore : Arena := s6Step337ExitGAfter

private def s6Step337ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 843],795⟩

private def s6Step337ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩

private def s6Step337ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 784, 865],777⟩

private def s6Step337ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 907],775⟩

private theorem s6Step337ExitBank_incomingDistinct : ([s6Step337ExitGRow,s6Step337ExitFRow,s6Step337ExitFvRow,s6Step337ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337ExitF_Incoming : rowsOwned s6Step337ExitFBefore [s6Step337ExitFRow,s6Step337ExitFvRow,s6Step337ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step337ExitGRow,s6Step337ExitFRow,s6Step337ExitFvRow,s6Step337ExitGvRow] 1 s6Step337ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step337ExitFBefore (fun q => (0≤q ∧ q<101) ∨ (102≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step337ExitBank_outgoingOwned : rowsOwned s6Step337ExitGvAfter [s6Step337ExitGOut,s6Step337ExitFOut,s6Step337ExitFvOut,s6Step337ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step337ExitGvAfter (fun q => (0≤q ∧ q<101) ∨ (102≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step337ExitF_Outgoing : rowsOwned s6Step337ExitGvAfter [s6Step337ExitFOut,s6Step337ExitFvOut,s6Step337ExitGvOut] :=
  hmrRows_owned_drop s6Step337ExitGvAfter [s6Step337ExitGOut,s6Step337ExitFOut,s6Step337ExitFvOut,s6Step337ExitGvOut] 1 s6Step337ExitBank_outgoingOwned

private theorem s6Step337ExitF_distinct : (s6Step337ExitFRow.sign::s6Step337ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337ExitF_owned : (s6Step337ExitFRow.sign::s6Step337ExitFRow.payload).toFinset⊆s6Step337ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step337ExitFBefore (fun q => (0≤q ∧ q<101) ∨ (102≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337ExitF_retired : s6Step337ExitFBefore.retireSet s6Step337ExitFExtra.toFinset=s6Step337ExitFAfter := by
  unfold Arena.retireSet s6Step337ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step337ExitFBefore,s6Step337ExitGAfter,s6Step337ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step337ExitF_checked : planRowResizeLog s6Step337ExitFBefore s6Step337ExitFRow 103 []=
    some (s6Step337ExitFAfter,s6Step337ExitFOut,shrinkRow 795 s6Step337ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step337ExitFBefore s6Step337ExitFRow 103 s6Step337ExitF_distinct s6Step337ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step337ExitFRow.payload.take 103) s6Step337ExitFRow.sign=s6Step337ExitFOut := by decide +kernel
  have hi : s6Step337ExitFRow.payload.drop 103=s6Step337ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step337ExitF_retired] at result
  exact result

private def s6Step337ExitFvAfter : Arena := s6Step337ExitFAfter

private def s6Step337ExitFvBefore : Arena := s6Step337ExitFAfter

private theorem s6Step337ExitFv_Incoming : rowsOwned s6Step337ExitFvBefore [s6Step337ExitFvRow,s6Step337ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step337ExitGRow,s6Step337ExitFRow,s6Step337ExitFvRow,s6Step337ExitGvRow] 2 s6Step337ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step337ExitFvBefore (fun q => (0≤q ∧ q<101) ∨ (102≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step337ExitFv_Outgoing : rowsOwned s6Step337ExitGvAfter [s6Step337ExitFvOut,s6Step337ExitGvOut] :=
  hmrRows_owned_drop s6Step337ExitGvAfter [s6Step337ExitGOut,s6Step337ExitFOut,s6Step337ExitFvOut,s6Step337ExitGvOut] 2 s6Step337ExitBank_outgoingOwned

private theorem s6Step337ExitFv_distinct : (s6Step337ExitFvRow.sign::s6Step337ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337ExitFv_owned : (s6Step337ExitFvRow.sign::s6Step337ExitFvRow.payload).toFinset⊆s6Step337ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step337ExitFvBefore (fun q => (0≤q ∧ q<101) ∨ (102≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337ExitFv_reserved : s6Step337ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step337ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step337ExitFv_checked : planRowResizeLog s6Step337ExitFvBefore s6Step337ExitFvRow 185 []=
    some (s6Step337ExitFvAfter,s6Step337ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step337ExitFvBefore s6Step337ExitFvAfter s6Step337ExitFvRow 185 []
    s6Step337ExitFv_distinct s6Step337ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step337ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step337ExitFvRow.payload++[]) s6Step337ExitFvRow.sign=s6Step337ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step337ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step337ExitG_Incoming : rowsOwned s6Step337ExitGBefore [s6Step337ExitGRow,s6Step337ExitFRow,s6Step337ExitFvRow,s6Step337ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step337ExitGRow,s6Step337ExitFRow,s6Step337ExitFvRow,s6Step337ExitGvRow] 0 s6Step337ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step337ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step337ExitG_Outgoing : rowsOwned s6Step337ExitGvAfter [s6Step337ExitGOut,s6Step337ExitFOut,s6Step337ExitFvOut,s6Step337ExitGvOut] :=
  hmrRows_owned_drop s6Step337ExitGvAfter [s6Step337ExitGOut,s6Step337ExitFOut,s6Step337ExitFvOut,s6Step337ExitGvOut] 0 s6Step337ExitBank_outgoingOwned

private theorem s6Step337ExitG_distinct : (s6Step337ExitGRow.sign::s6Step337ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337ExitG_owned : (s6Step337ExitGRow.sign::s6Step337ExitGRow.payload).toFinset⊆s6Step337ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step337ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337ExitG_retired : s6Step337ExitGBefore.retireSet s6Step337ExitGExtra.toFinset=s6Step337ExitGAfter := by
  unfold Arena.retireSet s6Step337ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step337ExitGBefore,s6Step337ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step337ExitG_checked : planRowResizeLog s6Step337ExitGBefore s6Step337ExitGRow 101 []=
    some (s6Step337ExitGAfter,s6Step337ExitGOut,shrinkRow 777 s6Step337ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step337ExitGBefore s6Step337ExitGRow 101 s6Step337ExitG_distinct s6Step337ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step337ExitGRow.payload.take 101) s6Step337ExitGRow.sign=s6Step337ExitGOut := by decide +kernel
  have hi : s6Step337ExitGRow.payload.drop 101=s6Step337ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step337ExitG_retired] at result
  exact result

private def s6Step337ExitGvBefore : Arena := s6Step337ExitFAfter

private theorem s6Step337ExitGv_Incoming : rowsOwned s6Step337ExitGvBefore [s6Step337ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step337ExitGRow,s6Step337ExitFRow,s6Step337ExitFvRow,s6Step337ExitGvRow] 3 s6Step337ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step337ExitGvBefore (fun q => (0≤q ∧ q<101) ∨ (102≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step337ExitGv_Outgoing : rowsOwned s6Step337ExitGvAfter [s6Step337ExitGvOut] :=
  hmrRows_owned_drop s6Step337ExitGvAfter [s6Step337ExitGOut,s6Step337ExitFOut,s6Step337ExitFvOut,s6Step337ExitGvOut] 3 s6Step337ExitBank_outgoingOwned

private theorem s6Step337ExitGv_distinct : (s6Step337ExitGvRow.sign::s6Step337ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337ExitGv_owned : (s6Step337ExitGvRow.sign::s6Step337ExitGvRow.payload).toFinset⊆s6Step337ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step337ExitGvBefore (fun q => (0≤q ∧ q<101) ∨ (102≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337ExitGv_retired : s6Step337ExitGvBefore.retireSet s6Step337ExitGvExtra.toFinset=s6Step337ExitGvAfter := by
  unfold Arena.retireSet s6Step337ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step337ExitGvBefore,s6Step337ExitFAfter,s6Step337ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step337ExitGv_checked : planRowResizeLog s6Step337ExitGvBefore s6Step337ExitGvRow 184 []=
    some (s6Step337ExitGvAfter,s6Step337ExitGvOut,shrinkRow 775 s6Step337ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step337ExitGvBefore s6Step337ExitGvRow 184 s6Step337ExitGv_distinct s6Step337ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step337ExitGvRow.payload.take 184) s6Step337ExitGvRow.sign=s6Step337ExitGvOut := by decide +kernel
  have hi : s6Step337ExitGvRow.payload.drop 184=s6Step337ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step337ExitGv_retired] at result
  exact result

private theorem s6Step337ExitBank_rows : planWindowRowsLog s6Step337ExitGBefore [(s6Step337ExitGRow,101),(s6Step337ExitFRow,103),(s6Step337ExitFvRow,185),(s6Step337ExitGvRow,184)] [[],[],[],[]]=
    some (s6Step337ExitGvAfter,[s6Step337ExitGOut,s6Step337ExitFOut,s6Step337ExitFvOut,s6Step337ExitGvOut],(shrinkRow 777 s6Step337ExitGExtra ++ (shrinkRow 795 s6Step337ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step337ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step337ExitGvAfter [] []=some (s6Step337ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step337ExitGvBefore s6Step337ExitGvAfter s6Step337ExitGvAfter
    s6Step337ExitGvRow s6Step337ExitGvOut 184 [] [] [] []
    (shrinkRow 775 s6Step337ExitGvExtra) ([]) s6Step337ExitGv_Incoming s6Step337ExitGv_checked h4 s6Step337ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step337ExitFvBefore s6Step337ExitFvAfter s6Step337ExitGvAfter
    s6Step337ExitFvRow s6Step337ExitFvOut 185 [] [(s6Step337ExitGvRow,184)] [[]] [s6Step337ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step337ExitGvExtra ++ [])) s6Step337ExitFv_Incoming s6Step337ExitFv_checked h3 s6Step337ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step337ExitFBefore s6Step337ExitFAfter s6Step337ExitGvAfter
    s6Step337ExitFRow s6Step337ExitFOut 103 [] [(s6Step337ExitFvRow,185),(s6Step337ExitGvRow,184)] [[],[]] [s6Step337ExitFvOut,s6Step337ExitGvOut]
    (shrinkRow 795 s6Step337ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step337ExitGvExtra ++ []))) s6Step337ExitF_Incoming s6Step337ExitF_checked h2 s6Step337ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step337ExitGBefore s6Step337ExitGAfter s6Step337ExitGvAfter
    s6Step337ExitGRow s6Step337ExitGOut 101 [] [(s6Step337ExitFRow,103),(s6Step337ExitFvRow,185),(s6Step337ExitGvRow,184)] [[],[],[]] [s6Step337ExitFOut,s6Step337ExitFvOut,s6Step337ExitGvOut]
    (shrinkRow 777 s6Step337ExitGExtra) ((shrinkRow 795 s6Step337ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step337ExitGvExtra ++ [])))) s6Step337ExitG_Incoming s6Step337ExitG_checked h1 s6Step337ExitG_Outgoing
  exact h0

private theorem s6Step337ExitBank_checked : compileHmrBankResizeLog .exit s6Step337ExitGBefore ⟨s6Step337ExitFRow,s6Step337ExitGRow,s6Step337ExitFvRow,s6Step337ExitGvRow⟩ ⟨103,101,185,184⟩ [[],[],[],[]]=
    some (s6Step337ExitGvAfter,⟨s6Step337ExitFOut,s6Step337ExitGOut,s6Step337ExitFvOut,s6Step337ExitGvOut⟩,(shrinkRow 777 s6Step337ExitGExtra ++ (shrinkRow 795 s6Step337ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step337ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step337ExitBank_rows]
  rfl

private theorem s6Step337Add0_apart : Disjoint s6Step337Add0Arena.live s6Step337Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step337Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337Add0_card : s6Step337Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step337Add0_borrowed : s6Step337Add0Arena.checkBorrow (hmrHybridCount s6Step337Add0Arena s6Step337Add0B.length) s6Step337Add0Work=some s6Step337Add0During := by
  have len : s6Step337Add0Work.length=hmrHybridCount s6Step337Add0Arena s6Step337Add0B.length := by
    rw [hmrHybridCount,s6Step337Add0_card]
    decide +kernel
  have nd : s6Step337Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step337Add0Arena s6Step337Add0During s6Step337Add0Work.toFinset s6Step337Add0_bounded s6Step337Add0_apart rfl

private theorem s6Step337Add0_distinct : (860::903::805::(s6Step337Add0A++s6Step337Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337Add0_owned : (860::903::805::(s6Step337Add0A++s6Step337Add0B)).toFinset⊆s6Step337Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step337Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337Add0_checked : compileHmrHybridCinLog s6Step337Add0Arena 903 860 805 s6Step337Add0A s6Step337Add0B s6Step337Add0Work=some s6Step337Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step337Add0Arena s6Step337Add0During 903 860 805 s6Step337Add0A s6Step337Add0B s6Step337Add0Work
    (by decide +kernel) (by decide +kernel) s6Step337Add0_distinct
    (fun q hq => s6Step337Add0_owned (List.mem_toFinset.mpr hq)) s6Step337Add0_borrowed

private theorem s6Step337Add1_apart : Disjoint s6Step337Add1Arena.live s6Step337Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step337Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337Add1_card : s6Step337Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step337Add1_borrowed : s6Step337Add1Arena.checkBorrow (hmrHybridCount s6Step337Add1Arena s6Step337Add1B.length) s6Step337Add1Work=some s6Step337Add1During := by
  have len : s6Step337Add1Work.length=hmrHybridCount s6Step337Add1Arena s6Step337Add1B.length := by
    rw [hmrHybridCount,s6Step337Add1_card]
    decide +kernel
  have nd : s6Step337Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step337Add1Arena s6Step337Add1During s6Step337Add1Work.toFinset s6Step337Add1_bounded s6Step337Add1_apart rfl

private theorem s6Step337Add1_distinct : (860::903::805::(s6Step337Add1A++s6Step337Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337Add1_owned : (860::903::805::(s6Step337Add1A++s6Step337Add1B)).toFinset⊆s6Step337Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step337Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337Add1_checked : compileHmrHybridCinLog s6Step337Add1Arena 903 860 805 s6Step337Add1A s6Step337Add1B s6Step337Add1Work=some s6Step337Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step337Add1Arena s6Step337Add1During 903 860 805 s6Step337Add1A s6Step337Add1B s6Step337Add1Work
    (by decide +kernel) (by decide +kernel) s6Step337Add1_distinct
    (fun q hq => s6Step337Add1_owned (List.mem_toFinset.mpr hq)) s6Step337Add1_borrowed

private theorem s6Step337F4_apart : Disjoint (s6Step337Add0A++s6Step337Add0B).toFinset (s6Step337Add1A++s6Step337Add1B).toFinset := by
  have nd : ((s6Step337Add0A++s6Step337Add0B)++(s6Step337Add1A++s6Step337Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step337F4_carry : s6Step337F4FlagArena.checkBorrow 1 [805]=some s6Step337Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step337F4FlagArena,s6Step337HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step337F4FlagArena,s6Step337HeadFvAfter,s6Step337Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step337F4_distinct : (802::903::860::805::((s6Step337Add0A++s6Step337Add1A)++(s6Step337Add0B++s6Step337Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337F4_flag : s6Step337HeadFvAfter.checkBorrow 1 [860]=some s6Step337F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step337HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step337F4_owned : (802::903::((s6Step337Add0A++s6Step337Add1A)++(s6Step337Add0B++s6Step337Add1B))).toFinset⊆s6Step337HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step337HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337F4_checked : compileHmrHybridF4Log s6Step337HeadFvAfter 802 903 s6Step337Add0A s6Step337Add0B s6Step337Add1A s6Step337Add1B [860] [805] s6Step337Add0Work s6Step337Add1Work=some s6Step337F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step337HeadFvAfter s6Step337F4FlagArena s6Step337Add0Arena s6Step337Add0During s6Step337Add1During 802 903
    s6Step337Add0A s6Step337Add0B s6Step337Add1A s6Step337Add1B [860] [805] s6Step337Add0Work s6Step337Add1Work
    (fun q hq => s6Step337F4_owned (List.mem_toFinset.mpr hq)) s6Step337F4_flag s6Step337F4_carry
    s6Step337F4_distinct s6Step337F4_apart s6Step337Add0_checked s6Step337Add1_checked

private theorem s6Step337Front_branch : s6Step337FrontSigmaArena.checkBorrow 1 [903]=some s6Step337HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step337FrontSigmaArena,s6Step337EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step337FrontSigmaArena,s6Step337EntryGvAfter,s6Step337HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step337Front_entry : HmrFrontEntryValid s6Step337EntryFBefore s6Step337FrontBank 103 184 ⟨103,101,185,184⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step337FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step337EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step337EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step337FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step337Front_sigma : s6Step337EntryGvAfter.checkBorrow 1 [802]=some s6Step337FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step337EntryGvAfter,arenaWires]
  · rfl

private def s6Step337HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337HeadFBefore : Arena := s6Step337HeadGAfter

private def s6Step337HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step337HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859],776⟩

private def s6Step337HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 784],777⟩

private def s6Step337HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874],775⟩

private theorem s6Step337HeadBank_incomingDistinct : ([s6Step337HeadGRow,s6Step337HeadFRow,s6Step337HeadGvRow,s6Step337HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337HeadF_Incoming : rowsOwned s6Step337HeadFBefore [s6Step337HeadFRow,s6Step337HeadGvRow,s6Step337HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step337HeadGRow,s6Step337HeadFRow,s6Step337HeadGvRow,s6Step337HeadFvRow] 1 s6Step337HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step337HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step337HeadBank_outgoingOwned : rowsOwned s6Step337HeadFvAfter [s6Step337HeadGOut,s6Step337HeadFOut,s6Step337HeadGvOut,s6Step337HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step337HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step337HeadF_Outgoing : rowsOwned s6Step337HeadFvAfter [s6Step337HeadFOut,s6Step337HeadGvOut,s6Step337HeadFvOut] :=
  hmrRows_owned_drop s6Step337HeadFvAfter [s6Step337HeadGOut,s6Step337HeadFOut,s6Step337HeadGvOut,s6Step337HeadFvOut] 1 s6Step337HeadBank_outgoingOwned

private theorem s6Step337HeadF_distinct : (s6Step337HeadFRow.sign::s6Step337HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337HeadF_owned : (s6Step337HeadFRow.sign::s6Step337HeadFRow.payload).toFinset⊆s6Step337HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step337HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337HeadF_reserved : s6Step337HeadFBefore.reserve s6Step337HeadFFresh.toFinset=some s6Step337HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step337HeadFFresh,arenaWires]
  · norm_num [s6Step337HeadFBefore,s6Step337HeadGAfter,s6Step337HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step337HeadFAfter,s6Step337HeadFBefore,s6Step337HeadGAfter,s6Step337HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step337HeadF_checked : planRowResizeLog s6Step337HeadFBefore s6Step337HeadFRow 104 s6Step337HeadFFresh=
    some (s6Step337HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 843],795⟩,growRow 795 s6Step337HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step337HeadFBefore s6Step337HeadFAfter s6Step337HeadFRow 104 s6Step337HeadFFresh
    s6Step337HeadF_distinct s6Step337HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step337HeadF_reserved
  have rowEq : WindowRow.mk (s6Step337HeadFRow.payload++s6Step337HeadFFresh) s6Step337HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 843],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step337HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step337HeadFvBefore : Arena := s6Step337HeadGvAfter

private theorem s6Step337HeadFv_Incoming : rowsOwned s6Step337HeadFvBefore [s6Step337HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step337HeadGRow,s6Step337HeadFRow,s6Step337HeadGvRow,s6Step337HeadFvRow] 3 s6Step337HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step337HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step337HeadFv_Outgoing : rowsOwned s6Step337HeadFvAfter [s6Step337HeadFvOut] :=
  hmrRows_owned_drop s6Step337HeadFvAfter [s6Step337HeadGOut,s6Step337HeadFOut,s6Step337HeadGvOut,s6Step337HeadFvOut] 3 s6Step337HeadBank_outgoingOwned

private theorem s6Step337HeadFv_distinct : (s6Step337HeadFvRow.sign::s6Step337HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337HeadFv_owned : (s6Step337HeadFvRow.sign::s6Step337HeadFvRow.payload).toFinset⊆s6Step337HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step337HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337HeadFv_reserved : s6Step337HeadFvBefore.reserve s6Step337HeadFvFresh.toFinset=some s6Step337HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step337HeadFvFresh,arenaWires]
  · norm_num [s6Step337HeadFvBefore,s6Step337HeadGvAfter,s6Step337HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step337HeadFvAfter,s6Step337HeadFvBefore,s6Step337HeadGvAfter,s6Step337HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step337HeadFv_checked : planRowResizeLog s6Step337HeadFvBefore s6Step337HeadFvRow 185 s6Step337HeadFvFresh=
    some (s6Step337HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩,growRow 776 s6Step337HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step337HeadFvBefore s6Step337HeadFvAfter s6Step337HeadFvRow 185 s6Step337HeadFvFresh
    s6Step337HeadFv_distinct s6Step337HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step337HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step337HeadFvRow.payload++s6Step337HeadFvFresh) s6Step337HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step337HeadG_Incoming : rowsOwned s6Step337HeadGBefore [s6Step337HeadGRow,s6Step337HeadFRow,s6Step337HeadGvRow,s6Step337HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step337HeadGRow,s6Step337HeadFRow,s6Step337HeadGvRow,s6Step337HeadFvRow] 0 s6Step337HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step337HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step337HeadG_Outgoing : rowsOwned s6Step337HeadFvAfter [s6Step337HeadGOut,s6Step337HeadFOut,s6Step337HeadGvOut,s6Step337HeadFvOut] :=
  hmrRows_owned_drop s6Step337HeadFvAfter [s6Step337HeadGOut,s6Step337HeadFOut,s6Step337HeadGvOut,s6Step337HeadFvOut] 0 s6Step337HeadBank_outgoingOwned

private theorem s6Step337HeadG_distinct : (s6Step337HeadGRow.sign::s6Step337HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337HeadG_owned : (s6Step337HeadGRow.sign::s6Step337HeadGRow.payload).toFinset⊆s6Step337HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step337HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337HeadG_reserved : s6Step337HeadGBefore.reserve s6Step337HeadGFresh.toFinset=some s6Step337HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step337HeadGFresh,arenaWires]
  · norm_num [s6Step337HeadGBefore,s6Step337HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step337HeadGAfter,s6Step337HeadGBefore,s6Step337HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step337HeadG_checked : planRowResizeLog s6Step337HeadGBefore s6Step337HeadGRow 104 s6Step337HeadGFresh=
    some (s6Step337HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 784, 865],777⟩,growRow 777 s6Step337HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step337HeadGBefore s6Step337HeadGAfter s6Step337HeadGRow 104 s6Step337HeadGFresh
    s6Step337HeadG_distinct s6Step337HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step337HeadG_reserved
  have rowEq : WindowRow.mk (s6Step337HeadGRow.payload++s6Step337HeadGFresh) s6Step337HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 784, 865],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step337HeadGvBefore : Arena := s6Step337HeadFAfter

private theorem s6Step337HeadGv_Incoming : rowsOwned s6Step337HeadGvBefore [s6Step337HeadGvRow,s6Step337HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step337HeadGRow,s6Step337HeadFRow,s6Step337HeadGvRow,s6Step337HeadFvRow] 2 s6Step337HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step337HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step337HeadGv_Outgoing : rowsOwned s6Step337HeadFvAfter [s6Step337HeadGvOut,s6Step337HeadFvOut] :=
  hmrRows_owned_drop s6Step337HeadFvAfter [s6Step337HeadGOut,s6Step337HeadFOut,s6Step337HeadGvOut,s6Step337HeadFvOut] 2 s6Step337HeadBank_outgoingOwned

private theorem s6Step337HeadGv_distinct : (s6Step337HeadGvRow.sign::s6Step337HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step337HeadGv_owned : (s6Step337HeadGvRow.sign::s6Step337HeadGvRow.payload).toFinset⊆s6Step337HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step337HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step337HeadGv_reserved : s6Step337HeadGvBefore.reserve s6Step337HeadGvFresh.toFinset=some s6Step337HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step337HeadGvFresh,arenaWires]
  · norm_num [s6Step337HeadGvBefore,s6Step337HeadFAfter,s6Step337HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step337HeadGvAfter,s6Step337HeadGvBefore,s6Step337HeadFAfter,s6Step337HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step337HeadGv_checked : planRowResizeLog s6Step337HeadGvBefore s6Step337HeadGvRow 185 s6Step337HeadGvFresh=
    some (s6Step337HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 907],775⟩,growRow 775 s6Step337HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step337HeadGvBefore s6Step337HeadGvAfter s6Step337HeadGvRow 185 s6Step337HeadGvFresh
    s6Step337HeadGv_distinct s6Step337HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step337HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step337HeadGvRow.payload++s6Step337HeadGvFresh) s6Step337HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 907],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step337HeadBank_rows : planWindowRowsLog s6Step337HeadGBefore [(s6Step337HeadGRow,104),(s6Step337HeadFRow,104),(s6Step337HeadGvRow,185),(s6Step337HeadFvRow,185)] [s6Step337HeadGFresh,s6Step337HeadFFresh,s6Step337HeadGvFresh,s6Step337HeadFvFresh]=
    some (s6Step337HeadFvAfter,[s6Step337HeadGOut,s6Step337HeadFOut,s6Step337HeadGvOut,s6Step337HeadFvOut],(growRow 777 s6Step337HeadGFresh ++ (growRow 795 s6Step337HeadFFresh ++ (growRow 775 s6Step337HeadGvFresh ++ (growRow 776 s6Step337HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step337HeadFvAfter [] []=some (s6Step337HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step337HeadFvBefore s6Step337HeadFvAfter s6Step337HeadFvAfter
    s6Step337HeadFvRow s6Step337HeadFvOut 185 s6Step337HeadFvFresh [] [] []
    (growRow 776 s6Step337HeadFvFresh) ([]) s6Step337HeadFv_Incoming s6Step337HeadFv_checked h4 s6Step337HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step337HeadGvBefore s6Step337HeadGvAfter s6Step337HeadFvAfter
    s6Step337HeadGvRow s6Step337HeadGvOut 185 s6Step337HeadGvFresh [(s6Step337HeadFvRow,185)] [s6Step337HeadFvFresh] [s6Step337HeadFvOut]
    (growRow 775 s6Step337HeadGvFresh) ((growRow 776 s6Step337HeadFvFresh ++ [])) s6Step337HeadGv_Incoming s6Step337HeadGv_checked h3 s6Step337HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step337HeadFBefore s6Step337HeadFAfter s6Step337HeadFvAfter
    s6Step337HeadFRow s6Step337HeadFOut 104 s6Step337HeadFFresh [(s6Step337HeadGvRow,185),(s6Step337HeadFvRow,185)] [s6Step337HeadGvFresh,s6Step337HeadFvFresh] [s6Step337HeadGvOut,s6Step337HeadFvOut]
    (growRow 795 s6Step337HeadFFresh) ((growRow 775 s6Step337HeadGvFresh ++ (growRow 776 s6Step337HeadFvFresh ++ []))) s6Step337HeadF_Incoming s6Step337HeadF_checked h2 s6Step337HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step337HeadGBefore s6Step337HeadGAfter s6Step337HeadFvAfter
    s6Step337HeadGRow s6Step337HeadGOut 104 s6Step337HeadGFresh [(s6Step337HeadFRow,104),(s6Step337HeadGvRow,185),(s6Step337HeadFvRow,185)] [s6Step337HeadFFresh,s6Step337HeadGvFresh,s6Step337HeadFvFresh] [s6Step337HeadFOut,s6Step337HeadGvOut,s6Step337HeadFvOut]
    (growRow 777 s6Step337HeadGFresh) ((growRow 795 s6Step337HeadFFresh ++ (growRow 775 s6Step337HeadGvFresh ++ (growRow 776 s6Step337HeadFvFresh ++ [])))) s6Step337HeadG_Incoming s6Step337HeadG_checked h1 s6Step337HeadG_Outgoing
  exact h0

private theorem s6Step337HeadBank_checked : compileHmrBankResizeLog .headroom s6Step337HeadGBefore ⟨s6Step337HeadFRow,s6Step337HeadGRow,s6Step337HeadFvRow,s6Step337HeadGvRow⟩ ⟨104,104,185,185⟩ [s6Step337HeadGFresh,s6Step337HeadFFresh,s6Step337HeadGvFresh,s6Step337HeadFvFresh]=
    some (s6Step337HeadFvAfter,⟨s6Step337HeadFOut,s6Step337HeadGOut,s6Step337HeadFvOut,s6Step337HeadGvOut⟩,(growRow 777 s6Step337HeadGFresh ++ (growRow 795 s6Step337HeadFFresh ++ (growRow 775 s6Step337HeadGvFresh ++ (growRow 776 s6Step337HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step337HeadBank_rows]
  rfl

private theorem s6Step337Front_checked : compileHmrSourceFrontLog s6Step337EntryFBefore s6Step337FrontBank 103 184 ⟨103,101,185,184⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step337FrontLog=some s6Step337FrontPlan := by
  have pairEq : s6Step337FrontPair=⟨s6Step337HeadFRow,s6Step337HeadGRow,s6Step337HeadFvRow,s6Step337HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step337FrontHead=⟨s6Step337ExitFRow,s6Step337ExitGRow,s6Step337ExitFvRow,s6Step337ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step337Add0A=s6Step337FrontHead.f.wires := by decide +kernel
  have gEq : s6Step337Add0B=s6Step337FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step337Add1A=s6Step337FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step337Add1B=s6Step337FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step337EntryFBefore s6Step337FrontBank 103 184 ⟨103,101,185,184⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step337FrontLog s6Step337FrontPlan
  · exact s6Step337Front_entry
  · exact s6Step337EntryBank_checked
  · exact s6Step337Front_sigma
  · rfl
  · exact s6Step337Front_branch
  · rfl
  · simpa only [s6Step337FrontPlan,pairEq] using s6Step337HeadBank_checked
  · simpa only [s6Step337FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step337F4_checked
  · exact s6Step337Counter_checked
  · rfl
  · simpa only [s6Step337FrontPlan,headEq] using s6Step337ExitBank_checked

private theorem s6Step337Complete_explicit_checked : compileHmrEarlyStepLog s6Step337EntryFBefore s6Step337FrontBank 103 184 ⟨103,101,185,184⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step337CompleteLog=some s6Step337CompletePlan := by
  let Q := s6Step337EarlyControlPlan
  have hq := s6Step337EarlyControl_plan_checked
  have fv1 : s6Step337CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step337CompleteOut.fv.payload[2]?.getD s6Step337CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step337CompleteOut.fv.payload[3]?.getD s6Step337CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step337CompleteOut.fv.payload[4]?.getD s6Step337CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step337EntryFBefore s6Step337EarlyControlArena s6Step337FrontBank 103 184 ⟨103,101,185,184⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step337CompleteLog s6Step337FrontPlan Q
    s6Step337Front_checked s6Step337Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step337Complete_owned s6Step337Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step337EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 802 s6Step337CompleteOut.fv.second (s6Step337CompleteOut.fv.payload[2]?.getD s6Step337CompleteOut.fv.sign) (s6Step337CompleteOut.fv.payload[3]?.getD s6Step337CompleteOut.fv.sign) (s6Step337CompleteOut.fv.payload[4]?.getD s6Step337CompleteOut.fv.sign) 903 60 s6Step337EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep337Arena : Arena := s6Step337EntryFBefore
def s6PrivateStep337Bank : WindowBank := s6Step337FrontBank
def s6PrivateStep337Spec : HmrSourceWalkStepLog := ⟨103,184,⟨103,101,185,184⟩,60,.early s6Step337CompleteLog⟩
def s6PrivateStep337Plan : HmrSourceStepPlan := .early s6Step337CompletePlan
theorem s6PrivateStep337_source : s6PrivateStep337Spec=s6ObservedLogs336[1] := rfl
theorem s6PrivateStep337_checked : compileHmrSourceStepLog s6PrivateStep337Arena s6PrivateStep337Bank
    s6PrivateStep337Spec.fgWidth s6PrivateStep337Spec.vWidth s6PrivateStep337Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 337 s6PrivateStep337Spec.need none s6PrivateStep337Spec.log=some s6PrivateStep337Plan := by
  change compileHmrSourceStepLog s6Step337EntryFBefore s6Step337FrontBank 103 184 ⟨103,101,185,184⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 337 60 none (.early s6Step337CompleteLog)=some (.early s6Step337CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 337<498)]
  rw [s6Step337Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
