import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep332
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

private def s6Step334CompleteMoves : List (Wire × Wire) := []

private def s6Step334EarlyControlLog : HmrEarlyControlLog := ⟨[874, 903, 843, 907, 838],[859],[860],[805, 817, 812, 915, 906, 792],[]⟩

private def s6Step334FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [838], [], [874]],[[859], [907], [903], [843]],[[], [], [], []]⟩,[780],[865],[860],[805],[817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812]⟩

private def s6Step334CompleteLog : HmrEarlyStepLog := ⟨s6Step334FrontLog,s6Step334CompleteMoves,s6Step334EarlyControlLog⟩

private def s6Step334ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩

private def s6Step334ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩

private def s6Step334ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],777⟩

private def s6Step334ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841],775⟩

private def s6Step334FrontOut : WindowBank := ⟨s6Step334ExitFOut,s6Step334ExitGOut,s6Step334ExitFvOut,s6Step334ExitGvOut⟩

private def s6Step334CompleteOut : WindowBank := s6Step334FrontOut.repacked s6Step334CompleteMoves

private def s6Step334EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step334EarlyControlPositiveArena,[859],s6Step334EarlyControlEqualityArena,[860],⟨⟨780,false⟩,[⟨⟨859,false⟩,860⟩]⟩⟩

private def s6Step334EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,874⟩,⟨⟨772,false⟩,903⟩,⟨⟨771,false⟩,843⟩,⟨⟨770,false⟩,907⟩,⟨⟨769,false⟩,838⟩]⟩

private def s6Step334EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step334EarlyControlZeroArena,s6Step334EarlyControlZeroPlan,s6Step334EarlyControlClassPlan,s6Step334EarlyControlFlagArena,s6Step334EarlyControlFittedArena,s6Step334EarlyControlHistoryArena,s6Step334EarlyControlSigmaArena,s6Step334EarlyControlOutputArena,s6Step334EarlyControlLog⟩

private def s6Step334CounterWork : List Wire := [860, 805, 817, 812]

private theorem s6Step334Counter_bounded : s6Step334CounterWork.toFinset⊆arenaWires := by norm_num [s6Step334CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step334HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334CounterDuring : Arena := ⟨s6Step334HeadFvAfter.live∪s6Step334CounterWork.toFinset,Finset.union_subset s6Step334HeadFvAfter.bounded s6Step334Counter_bounded⟩

private def s6Step334EntryFFresh : List Wire := []

private def s6Step334EntryFvFresh : List Wire := []

private def s6Step334EntryGFresh : List Wire := [838]

private def s6Step334EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334EntryGvFresh : List Wire := [874]

private def s6Step334ExitFExtra : List Wire := [907]

private def s6Step334ExitFvExtra : List Wire := [843]

private def s6Step334ExitGExtra : List Wire := [838, 859]

private def s6Step334ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334ExitGvExtra : List Wire := [874, 903]

private def s6Step334Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334Add0Work : List Wire := [817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step334Add0_bounded : s6Step334Add0Work.toFinset⊆arenaWires := by
  have h : s6Step334Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step334Add0During : Arena := ⟨s6Step334Add0Arena.live∪s6Step334Add0Work.toFinset,Finset.union_subset s6Step334Add0Arena.bounded s6Step334Add0_bounded⟩

private def s6Step334Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334Add1Work : List Wire := [817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step334Add1_bounded : s6Step334Add1Work.toFinset⊆arenaWires := by
  have h : s6Step334Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step334Add1During : Arena := ⟨s6Step334Add1Arena.live∪s6Step334Add1Work.toFinset,Finset.union_subset s6Step334Add1Arena.bounded s6Step334Add1_bounded⟩

private def s6Step334F4FlagArena : Arena := ⟨s6Step334HeadFvAfter.live∪{860},Finset.union_subset s6Step334HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step334F4Plan : HmrHybridF4Plan := ⟨s6Step334F4FlagArena,[860],s6Step334Add0Arena,[805],s6Step334Add0During,s6Step334Add0Work,s6Step334Add1During,s6Step334Add1Work⟩

private def s6Step334HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 907],795⟩

private def s6Step334HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 843],776⟩

private def s6Step334HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 838, 859],777⟩

private def s6Step334HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 874, 903],775⟩

private def s6Step334FrontHead : WindowBank := ⟨s6Step334HeadFOut,s6Step334HeadGOut,s6Step334HeadFvOut,s6Step334HeadGvOut⟩

private def s6Step334EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩

private def s6Step334EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩

private def s6Step334EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 838],777⟩

private def s6Step334EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 874],775⟩

private def s6Step334FrontPair : WindowBank := ⟨s6Step334EntryFOut,s6Step334EntryGOut,s6Step334EntryFvOut,s6Step334EntryGvOut⟩

private def s6Step334FrontSigmaArena : Arena := ⟨s6Step334EntryGvAfter.live∪{780},Finset.union_subset s6Step334EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step334HeadFFresh : List Wire := [907]

private def s6Step334HeadFvFresh : List Wire := [843]

private def s6Step334HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334HeadGFresh : List Wire := [859]

private def s6Step334HeadGvFresh : List Wire := [903]

private def s6Step334FrontPlan : HmrSourceFront := ⟨s6Step334EntryGvAfter,s6Step334FrontPair,(growRow 795 s6Step334EntryFFresh ++ (growRow 777 s6Step334EntryGFresh ++ (growRow 776 s6Step334EntryFvFresh ++ (growRow 775 s6Step334EntryGvFresh ++ [])))),s6Step334FrontSigmaArena,[780],s6Step334HeadGBefore,[865],
  s6Step334HeadFvAfter,s6Step334FrontHead,(growRow 777 s6Step334HeadGFresh ++ (growRow 795 s6Step334HeadFFresh ++ (growRow 775 s6Step334HeadGvFresh ++ (growRow 776 s6Step334HeadFvFresh ++ [])))),s6Step334F4Plan,s6Step334CounterDuring,s6Step334CounterWork,s6Step334ExitGvAfter,s6Step334FrontOut,(shrinkRow 777 s6Step334ExitGExtra ++ (shrinkRow 795 s6Step334ExitFExtra ++ (shrinkRow 776 s6Step334ExitFvExtra ++ (shrinkRow 775 s6Step334ExitGvExtra ++ []))))⟩

private def s6Step334CompletePlan : HmrEarlyStepPlan := ⟨s6Step334FrontPlan,s6Step334EarlyControlArena,s6Step334EarlyControlPlan,s6Step334CompleteMoves⟩

private theorem s6Step334Complete_apart : List.Disjoint (s6Step334CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [780, 865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step334CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[780, 865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step334Complete_owned : (s6Step334CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step334EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step334EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334Complete_repack : s6Step334ExitGvAfter.checkRepack s6Step334CompleteMoves=some s6Step334EarlyControlArena := by rfl

private theorem s6Step334EarlyControl_branchOwned : ([865] : List Wire).toFinset⊆s6Step334EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step334EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334EarlyControl_branch : compileHmrBranchRetirement s6Step334EarlyControlSigmaArena 865=some s6Step334EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step334EarlyControl_branchOwned
  · ext q
    simp [s6Step334EarlyControlOutputArena,s6Step334EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step334EarlyControl_classEqualityBorrow : s6Step334EarlyControlPositiveArena.checkBorrow (([780, 859] : List Wire).length-1) s6Step334EarlyControlLog.classWork=some s6Step334EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step334EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step334EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step334EarlyControlEqualityArena,s6Step334EarlyControlPositiveArena,s6Step334EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step334EarlyControl_classEqualityOwned : ([780, 859] : List Wire).toFinset⊆s6Step334EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step334EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334EarlyControl_classEquality : compileHmrEqualityLog s6Step334EarlyControlPositiveArena [780, 859] 0 s6Step334EarlyControlLog.classWork=some (s6Step334EarlyControlEqualityArena,s6Step334EarlyControlLog.classWork,s6Step334EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step334EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step334EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step334EarlyControl_classOwned : ([769, 838, 780] : List Wire).toFinset⊆s6Step334EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step334EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334EarlyControl_positiveBorrow : s6Step334EarlyControlZeroArena.checkBorrow (1) s6Step334EarlyControlLog.positiveWork=some s6Step334EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step334EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step334EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step334EarlyControlPositiveArena,s6Step334EarlyControlZeroArena,s6Step334EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step334EarlyControl_class : compileHmrSourceClassLog s6Step334EarlyControlZeroArena false 769 s6Step334EarlyControlZeroPlan.top 0 780 s6Step334EarlyControlLog.positiveWork s6Step334EarlyControlLog.classWork=some s6Step334EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step334EarlyControlClassPlan s6Step334EarlyControlZeroArena false 769 s6Step334EarlyControlZeroPlan.top 0 780
  constructor
  · decide +kernel
  · exact s6Step334EarlyControl_classOwned
  · exact s6Step334EarlyControl_positiveBorrow
  · exact s6Step334EarlyControl_classEquality

private theorem s6Step334EarlyControl_entryRecordOwned : ([865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step334EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step334EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334EarlyControl_entrySigmaOwned : ([780, 254] : List Wire).toFinset⊆s6Step334EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step334EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334EarlyControl_fitBorrow : s6Step334EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step334EarlyControlLog.recordFresh=some s6Step334EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step334EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step334EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step334EarlyControlFittedArena,s6Step334EarlyControlFlagArena,s6Step334EarlyControlLog,arenaWires]

private theorem s6Step334EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step334EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step334EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334EarlyControl_fit : compileHmrRecordGrowLog s6Step334EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step334EarlyControlLog.recordFresh=some s6Step334EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step334EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step334EarlyControl_fitBorrow

private theorem s6Step334EarlyControl_flagsBorrow : s6Step334EarlyControlEqualityArena.checkBorrow (6) s6Step334EarlyControlLog.flagWork=some s6Step334EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step334EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step334EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step334EarlyControlFlagArena,s6Step334EarlyControlEqualityArena,s6Step334EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step334EarlyControl_flagsOwned : ([860, 253, 252, 251] : List Wire).toFinset⊆s6Step334EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step334EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334EarlyControl_flags : compileHmrFlagsLog s6Step334EarlyControlClassPlan.equalityArena s6Step334EarlyControlClassPlan.equality.top 253 252 251 s6Step334EarlyControlLog.flagWork=some s6Step334EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step334EarlyControl_flagsOwned⟩
  · exact s6Step334EarlyControl_flagsBorrow

private theorem s6Step334EarlyControl_historyBorrow : s6Step334EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step334EarlyControlLog.recordFresh=some s6Step334EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step334EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step334EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step334EarlyControlHistoryArena,s6Step334EarlyControlArena,s6Step334EarlyControlLog,arenaWires]

private theorem s6Step334EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step334EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step334EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334EarlyControl_history : compileHmrRecordGrowLog s6Step334EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step334EarlyControlLog.recordFresh=some s6Step334EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step334EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step334EarlyControl_historyBorrow

private theorem s6Step334EarlyControl_sigmaOwned : ([254, 780] : List Wire).toFinset⊆s6Step334EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step334EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334EarlyControl_sigmaReleaseOwned : ([780] : List Wire).toFinset⊆s6Step334EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step334EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334EarlyControl_sigmaRelease : s6Step334EarlyControlHistoryArena.release {780} (fun _ => false)=some s6Step334EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step334EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step334EarlyControlSigmaArena,s6Step334EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step334EarlyControl_sigma : compileHmrSigmaDropLog s6Step334EarlyControlHistoryArena false 0 0 254 780 []=some s6Step334EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step334EarlyControl_sigmaOwned⟩
  · exact s6Step334EarlyControl_sigmaRelease

private theorem s6Step334EarlyControl_zeroBorrow : s6Step334EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step334EarlyControlLog.zeroWork=some s6Step334EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step334EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step334EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step334EarlyControlZeroArena,s6Step334EarlyControlArena,s6Step334EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step334EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step334EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step334EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334EarlyControl_zero : compileHmrEqualityLog s6Step334EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step334EarlyControlLog.zeroWork=some (s6Step334EarlyControlZeroArena,s6Step334EarlyControlLog.zeroWork,s6Step334EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step334EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step334EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step334EarlyControl_logged : s6Step334EarlyControlPlan.Logged s6Step334EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 780 254 253 252 251 865 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step334EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step334EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step334EarlyControl_zero
  · exact s6Step334EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step334EarlyControl_flags
  · exact s6Step334EarlyControl_fit
  · exact s6Step334EarlyControl_history
  · exact s6Step334EarlyControl_sigma
  · exact s6Step334EarlyControl_branch

private theorem s6Step334EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step334EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 780 254 253 252 251 865 60 s6Step334EarlyControlLog=some s6Step334EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step334EarlyControlPlan s6Step334EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 780 254 253 252 251 865 60 s6Step334EarlyControl_logged

private def s6Step334EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩

private def s6Step334EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩

private def s6Step334EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],777⟩

private def s6Step334EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841],775⟩

private def s6Step334FrontBank : WindowBank := ⟨s6Step334EntryFRow,s6Step334EntryGRow,s6Step334EntryFvRow,s6Step334EntryGvRow⟩

private def s6Step334Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 907, 795]

private def s6Step334Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 838, 859, 777]

private def s6Step334Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 843, 776]

private def s6Step334Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 874, 903, 775]

private theorem s6Step334Counter_apart : Disjoint s6Step334HeadFvAfter.live s6Step334CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step334HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334Counter_borrowed : s6Step334HeadFvAfter.checkBorrow 4 s6Step334CounterWork=some s6Step334CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step334HeadFvAfter s6Step334CounterDuring s6Step334CounterWork.toFinset s6Step334Counter_bounded s6Step334Counter_apart rfl

private theorem s6Step334Counter_owned : (780::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step334HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step334HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334Counter_checked : compileHmrCounterStepLog s6Step334HeadFvAfter true 780 [774, 773, 772, 771, 770, 769] s6Step334CounterWork=some s6Step334CounterDuring := by
  have owned : ∀q∈780::[774, 773, 772, 771, 770, 769],q∈s6Step334HeadFvAfter.live := fun q hq => s6Step334Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step334Counter_borrowed

private def s6Step334EntryFAfter : Arena := s6Step334EntryFBefore

private theorem s6Step334EntryBank_incomingDistinct : ([s6Step334EntryFRow,s6Step334EntryGRow,s6Step334EntryFvRow,s6Step334EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334EntryF_Incoming : rowsOwned s6Step334EntryFBefore [s6Step334EntryFRow,s6Step334EntryGRow,s6Step334EntryFvRow,s6Step334EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step334EntryFRow,s6Step334EntryGRow,s6Step334EntryFvRow,s6Step334EntryGvRow] 0 s6Step334EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step334EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step334EntryBank_outgoingOwned : rowsOwned s6Step334EntryGvAfter [s6Step334EntryFOut,s6Step334EntryGOut,s6Step334EntryFvOut,s6Step334EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step334EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step334EntryF_Outgoing : rowsOwned s6Step334EntryGvAfter [s6Step334EntryFOut,s6Step334EntryGOut,s6Step334EntryFvOut,s6Step334EntryGvOut] :=
  hmrRows_owned_drop s6Step334EntryGvAfter [s6Step334EntryFOut,s6Step334EntryGOut,s6Step334EntryFvOut,s6Step334EntryGvOut] 0 s6Step334EntryBank_outgoingOwned

private theorem s6Step334EntryF_distinct : (s6Step334EntryFRow.sign::s6Step334EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334EntryF_owned : (s6Step334EntryFRow.sign::s6Step334EntryFRow.payload).toFinset⊆s6Step334EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step334EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334EntryF_reserved : s6Step334EntryFBefore.reserve s6Step334EntryFFresh.toFinset=some s6Step334EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step334EntryFFresh,arenaWires]
  · norm_num [s6Step334EntryFBefore,s6Step334EntryFFresh,arenaWires]
  · simp only [s6Step334EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step334EntryF_checked : planRowResizeLog s6Step334EntryFBefore s6Step334EntryFRow 104 s6Step334EntryFFresh=
    some (s6Step334EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩,growRow 795 s6Step334EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step334EntryFBefore s6Step334EntryFAfter s6Step334EntryFRow 104 s6Step334EntryFFresh
    s6Step334EntryF_distinct s6Step334EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step334EntryF_reserved
  have rowEq : WindowRow.mk (s6Step334EntryFRow.payload++s6Step334EntryFFresh) s6Step334EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step334EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334EntryFvAfter : Arena := s6Step334EntryGAfter

private def s6Step334EntryFvBefore : Arena := s6Step334EntryGAfter

private theorem s6Step334EntryFv_Incoming : rowsOwned s6Step334EntryFvBefore [s6Step334EntryFvRow,s6Step334EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step334EntryFRow,s6Step334EntryGRow,s6Step334EntryFvRow,s6Step334EntryGvRow] 2 s6Step334EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step334EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step334EntryFv_Outgoing : rowsOwned s6Step334EntryGvAfter [s6Step334EntryFvOut,s6Step334EntryGvOut] :=
  hmrRows_owned_drop s6Step334EntryGvAfter [s6Step334EntryFOut,s6Step334EntryGOut,s6Step334EntryFvOut,s6Step334EntryGvOut] 2 s6Step334EntryBank_outgoingOwned

private theorem s6Step334EntryFv_distinct : (s6Step334EntryFvRow.sign::s6Step334EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334EntryFv_owned : (s6Step334EntryFvRow.sign::s6Step334EntryFvRow.payload).toFinset⊆s6Step334EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step334EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334EntryFv_reserved : s6Step334EntryFvBefore.reserve s6Step334EntryFvFresh.toFinset=some s6Step334EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step334EntryFvFresh,arenaWires]
  · norm_num [s6Step334EntryFvBefore,s6Step334EntryGAfter,s6Step334EntryFvFresh,arenaWires]
  · simp only [s6Step334EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step334EntryFv_checked : planRowResizeLog s6Step334EntryFvBefore s6Step334EntryFvRow 183 s6Step334EntryFvFresh=
    some (s6Step334EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩,growRow 776 s6Step334EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step334EntryFvBefore s6Step334EntryFvAfter s6Step334EntryFvRow 183 s6Step334EntryFvFresh
    s6Step334EntryFv_distinct s6Step334EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step334EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step334EntryFvRow.payload++s6Step334EntryFvFresh) s6Step334EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step334EntryGBefore : Arena := s6Step334EntryFBefore

private theorem s6Step334EntryG_Incoming : rowsOwned s6Step334EntryGBefore [s6Step334EntryGRow,s6Step334EntryFvRow,s6Step334EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step334EntryFRow,s6Step334EntryGRow,s6Step334EntryFvRow,s6Step334EntryGvRow] 1 s6Step334EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step334EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step334EntryG_Outgoing : rowsOwned s6Step334EntryGvAfter [s6Step334EntryGOut,s6Step334EntryFvOut,s6Step334EntryGvOut] :=
  hmrRows_owned_drop s6Step334EntryGvAfter [s6Step334EntryFOut,s6Step334EntryGOut,s6Step334EntryFvOut,s6Step334EntryGvOut] 1 s6Step334EntryBank_outgoingOwned

private theorem s6Step334EntryG_distinct : (s6Step334EntryGRow.sign::s6Step334EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334EntryG_owned : (s6Step334EntryGRow.sign::s6Step334EntryGRow.payload).toFinset⊆s6Step334EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step334EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334EntryG_reserved : s6Step334EntryGBefore.reserve s6Step334EntryGFresh.toFinset=some s6Step334EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step334EntryGFresh,arenaWires]
  · norm_num [s6Step334EntryGBefore,s6Step334EntryFBefore,s6Step334EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step334EntryGAfter,s6Step334EntryGBefore,s6Step334EntryFBefore,s6Step334EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step334EntryG_checked : planRowResizeLog s6Step334EntryGBefore s6Step334EntryGRow 104 s6Step334EntryGFresh=
    some (s6Step334EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 838],777⟩,growRow 777 s6Step334EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step334EntryGBefore s6Step334EntryGAfter s6Step334EntryGRow 104 s6Step334EntryGFresh
    s6Step334EntryG_distinct s6Step334EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step334EntryG_reserved
  have rowEq : WindowRow.mk (s6Step334EntryGRow.payload++s6Step334EntryGFresh) s6Step334EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 838],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step334EntryGvBefore : Arena := s6Step334EntryGAfter

private theorem s6Step334EntryGv_Incoming : rowsOwned s6Step334EntryGvBefore [s6Step334EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step334EntryFRow,s6Step334EntryGRow,s6Step334EntryFvRow,s6Step334EntryGvRow] 3 s6Step334EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step334EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step334EntryGv_Outgoing : rowsOwned s6Step334EntryGvAfter [s6Step334EntryGvOut] :=
  hmrRows_owned_drop s6Step334EntryGvAfter [s6Step334EntryFOut,s6Step334EntryGOut,s6Step334EntryFvOut,s6Step334EntryGvOut] 3 s6Step334EntryBank_outgoingOwned

private theorem s6Step334EntryGv_distinct : (s6Step334EntryGvRow.sign::s6Step334EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334EntryGv_owned : (s6Step334EntryGvRow.sign::s6Step334EntryGvRow.payload).toFinset⊆s6Step334EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step334EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334EntryGv_reserved : s6Step334EntryGvBefore.reserve s6Step334EntryGvFresh.toFinset=some s6Step334EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step334EntryGvFresh,arenaWires]
  · norm_num [s6Step334EntryGvBefore,s6Step334EntryGAfter,s6Step334EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step334EntryGvAfter,s6Step334EntryGvBefore,s6Step334EntryGAfter,s6Step334EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step334EntryGv_checked : planRowResizeLog s6Step334EntryGvBefore s6Step334EntryGvRow 183 s6Step334EntryGvFresh=
    some (s6Step334EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 874],775⟩,growRow 775 s6Step334EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step334EntryGvBefore s6Step334EntryGvAfter s6Step334EntryGvRow 183 s6Step334EntryGvFresh
    s6Step334EntryGv_distinct s6Step334EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step334EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step334EntryGvRow.payload++s6Step334EntryGvFresh) s6Step334EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 874],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step334EntryBank_rows : planWindowRowsLog s6Step334EntryFBefore [(s6Step334EntryFRow,104),(s6Step334EntryGRow,104),(s6Step334EntryFvRow,183),(s6Step334EntryGvRow,183)] [s6Step334EntryFFresh,s6Step334EntryGFresh,s6Step334EntryFvFresh,s6Step334EntryGvFresh]=
    some (s6Step334EntryGvAfter,[s6Step334EntryFOut,s6Step334EntryGOut,s6Step334EntryFvOut,s6Step334EntryGvOut],(growRow 795 s6Step334EntryFFresh ++ (growRow 777 s6Step334EntryGFresh ++ (growRow 776 s6Step334EntryFvFresh ++ (growRow 775 s6Step334EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step334EntryGvAfter [] []=some (s6Step334EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step334EntryGvBefore s6Step334EntryGvAfter s6Step334EntryGvAfter
    s6Step334EntryGvRow s6Step334EntryGvOut 183 s6Step334EntryGvFresh [] [] []
    (growRow 775 s6Step334EntryGvFresh) ([]) s6Step334EntryGv_Incoming s6Step334EntryGv_checked h4 s6Step334EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step334EntryFvBefore s6Step334EntryFvAfter s6Step334EntryGvAfter
    s6Step334EntryFvRow s6Step334EntryFvOut 183 s6Step334EntryFvFresh [(s6Step334EntryGvRow,183)] [s6Step334EntryGvFresh] [s6Step334EntryGvOut]
    (growRow 776 s6Step334EntryFvFresh) ((growRow 775 s6Step334EntryGvFresh ++ [])) s6Step334EntryFv_Incoming s6Step334EntryFv_checked h3 s6Step334EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step334EntryGBefore s6Step334EntryGAfter s6Step334EntryGvAfter
    s6Step334EntryGRow s6Step334EntryGOut 104 s6Step334EntryGFresh [(s6Step334EntryFvRow,183),(s6Step334EntryGvRow,183)] [s6Step334EntryFvFresh,s6Step334EntryGvFresh] [s6Step334EntryFvOut,s6Step334EntryGvOut]
    (growRow 777 s6Step334EntryGFresh) ((growRow 776 s6Step334EntryFvFresh ++ (growRow 775 s6Step334EntryGvFresh ++ []))) s6Step334EntryG_Incoming s6Step334EntryG_checked h2 s6Step334EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step334EntryFBefore s6Step334EntryFAfter s6Step334EntryGvAfter
    s6Step334EntryFRow s6Step334EntryFOut 104 s6Step334EntryFFresh [(s6Step334EntryGRow,104),(s6Step334EntryFvRow,183),(s6Step334EntryGvRow,183)] [s6Step334EntryGFresh,s6Step334EntryFvFresh,s6Step334EntryGvFresh] [s6Step334EntryGOut,s6Step334EntryFvOut,s6Step334EntryGvOut]
    (growRow 795 s6Step334EntryFFresh) ((growRow 777 s6Step334EntryGFresh ++ (growRow 776 s6Step334EntryFvFresh ++ (growRow 775 s6Step334EntryGvFresh ++ [])))) s6Step334EntryF_Incoming s6Step334EntryF_checked h1 s6Step334EntryF_Outgoing
  exact h0

private theorem s6Step334EntryBank_checked : compileHmrBankResizeLog .entry s6Step334EntryFBefore ⟨s6Step334EntryFRow,s6Step334EntryGRow,s6Step334EntryFvRow,s6Step334EntryGvRow⟩ ⟨104,104,183,183⟩ [s6Step334EntryFFresh,s6Step334EntryGFresh,s6Step334EntryFvFresh,s6Step334EntryGvFresh]=
    some (s6Step334EntryGvAfter,⟨s6Step334EntryFOut,s6Step334EntryGOut,s6Step334EntryFvOut,s6Step334EntryGvOut⟩,(growRow 795 s6Step334EntryFFresh ++ (growRow 777 s6Step334EntryGFresh ++ (growRow 776 s6Step334EntryFvFresh ++ (growRow 775 s6Step334EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step334EntryBank_rows]
  rfl

private def s6Step334ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334ExitFBefore : Arena := s6Step334ExitGAfter

private def s6Step334ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 907],795⟩

private def s6Step334ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 843],776⟩

private def s6Step334ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 838, 859],777⟩

private def s6Step334ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 874, 903],775⟩

private theorem s6Step334ExitBank_incomingDistinct : ([s6Step334ExitGRow,s6Step334ExitFRow,s6Step334ExitFvRow,s6Step334ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334ExitF_Incoming : rowsOwned s6Step334ExitFBefore [s6Step334ExitFRow,s6Step334ExitFvRow,s6Step334ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step334ExitGRow,s6Step334ExitFRow,s6Step334ExitFvRow,s6Step334ExitGvRow] 1 s6Step334ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step334ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step334ExitBank_outgoingOwned : rowsOwned s6Step334ExitGvAfter [s6Step334ExitGOut,s6Step334ExitFOut,s6Step334ExitFvOut,s6Step334ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step334ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step334ExitF_Outgoing : rowsOwned s6Step334ExitGvAfter [s6Step334ExitFOut,s6Step334ExitFvOut,s6Step334ExitGvOut] :=
  hmrRows_owned_drop s6Step334ExitGvAfter [s6Step334ExitGOut,s6Step334ExitFOut,s6Step334ExitFvOut,s6Step334ExitGvOut] 1 s6Step334ExitBank_outgoingOwned

private theorem s6Step334ExitF_distinct : (s6Step334ExitFRow.sign::s6Step334ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334ExitF_owned : (s6Step334ExitFRow.sign::s6Step334ExitFRow.payload).toFinset⊆s6Step334ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step334ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334ExitF_retired : s6Step334ExitFBefore.retireSet s6Step334ExitFExtra.toFinset=s6Step334ExitFAfter := by
  unfold Arena.retireSet s6Step334ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step334ExitFBefore,s6Step334ExitGAfter,s6Step334ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step334ExitF_checked : planRowResizeLog s6Step334ExitFBefore s6Step334ExitFRow 104 []=
    some (s6Step334ExitFAfter,s6Step334ExitFOut,shrinkRow 795 s6Step334ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step334ExitFBefore s6Step334ExitFRow 104 s6Step334ExitF_distinct s6Step334ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step334ExitFRow.payload.take 104) s6Step334ExitFRow.sign=s6Step334ExitFOut := by decide +kernel
  have hi : s6Step334ExitFRow.payload.drop 104=s6Step334ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step334ExitF_retired] at result
  exact result

private def s6Step334ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334ExitFvBefore : Arena := s6Step334ExitFAfter

private theorem s6Step334ExitFv_Incoming : rowsOwned s6Step334ExitFvBefore [s6Step334ExitFvRow,s6Step334ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step334ExitGRow,s6Step334ExitFRow,s6Step334ExitFvRow,s6Step334ExitGvRow] 2 s6Step334ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step334ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step334ExitFv_Outgoing : rowsOwned s6Step334ExitGvAfter [s6Step334ExitFvOut,s6Step334ExitGvOut] :=
  hmrRows_owned_drop s6Step334ExitGvAfter [s6Step334ExitGOut,s6Step334ExitFOut,s6Step334ExitFvOut,s6Step334ExitGvOut] 2 s6Step334ExitBank_outgoingOwned

private theorem s6Step334ExitFv_distinct : (s6Step334ExitFvRow.sign::s6Step334ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334ExitFv_owned : (s6Step334ExitFvRow.sign::s6Step334ExitFvRow.payload).toFinset⊆s6Step334ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step334ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334ExitFv_retired : s6Step334ExitFvBefore.retireSet s6Step334ExitFvExtra.toFinset=s6Step334ExitFvAfter := by
  unfold Arena.retireSet s6Step334ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step334ExitFvBefore,s6Step334ExitFAfter,s6Step334ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step334ExitFv_checked : planRowResizeLog s6Step334ExitFvBefore s6Step334ExitFvRow 183 []=
    some (s6Step334ExitFvAfter,s6Step334ExitFvOut,shrinkRow 776 s6Step334ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step334ExitFvBefore s6Step334ExitFvRow 183 s6Step334ExitFv_distinct s6Step334ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step334ExitFvRow.payload.take 183) s6Step334ExitFvRow.sign=s6Step334ExitFvOut := by decide +kernel
  have hi : s6Step334ExitFvRow.payload.drop 183=s6Step334ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step334ExitFv_retired] at result
  exact result

private def s6Step334ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step334ExitG_Incoming : rowsOwned s6Step334ExitGBefore [s6Step334ExitGRow,s6Step334ExitFRow,s6Step334ExitFvRow,s6Step334ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step334ExitGRow,s6Step334ExitFRow,s6Step334ExitFvRow,s6Step334ExitGvRow] 0 s6Step334ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step334ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step334ExitG_Outgoing : rowsOwned s6Step334ExitGvAfter [s6Step334ExitGOut,s6Step334ExitFOut,s6Step334ExitFvOut,s6Step334ExitGvOut] :=
  hmrRows_owned_drop s6Step334ExitGvAfter [s6Step334ExitGOut,s6Step334ExitFOut,s6Step334ExitFvOut,s6Step334ExitGvOut] 0 s6Step334ExitBank_outgoingOwned

private theorem s6Step334ExitG_distinct : (s6Step334ExitGRow.sign::s6Step334ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334ExitG_owned : (s6Step334ExitGRow.sign::s6Step334ExitGRow.payload).toFinset⊆s6Step334ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step334ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334ExitG_retired : s6Step334ExitGBefore.retireSet s6Step334ExitGExtra.toFinset=s6Step334ExitGAfter := by
  unfold Arena.retireSet s6Step334ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step334ExitGBefore,s6Step334ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step334ExitG_checked : planRowResizeLog s6Step334ExitGBefore s6Step334ExitGRow 103 []=
    some (s6Step334ExitGAfter,s6Step334ExitGOut,shrinkRow 777 s6Step334ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step334ExitGBefore s6Step334ExitGRow 103 s6Step334ExitG_distinct s6Step334ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step334ExitGRow.payload.take 103) s6Step334ExitGRow.sign=s6Step334ExitGOut := by decide +kernel
  have hi : s6Step334ExitGRow.payload.drop 103=s6Step334ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step334ExitG_retired] at result
  exact result

private def s6Step334ExitGvBefore : Arena := s6Step334ExitFvAfter

private theorem s6Step334ExitGv_Incoming : rowsOwned s6Step334ExitGvBefore [s6Step334ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step334ExitGRow,s6Step334ExitFRow,s6Step334ExitFvRow,s6Step334ExitGvRow] 3 s6Step334ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step334ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step334ExitGv_Outgoing : rowsOwned s6Step334ExitGvAfter [s6Step334ExitGvOut] :=
  hmrRows_owned_drop s6Step334ExitGvAfter [s6Step334ExitGOut,s6Step334ExitFOut,s6Step334ExitFvOut,s6Step334ExitGvOut] 3 s6Step334ExitBank_outgoingOwned

private theorem s6Step334ExitGv_distinct : (s6Step334ExitGvRow.sign::s6Step334ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334ExitGv_owned : (s6Step334ExitGvRow.sign::s6Step334ExitGvRow.payload).toFinset⊆s6Step334ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step334ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334ExitGv_retired : s6Step334ExitGvBefore.retireSet s6Step334ExitGvExtra.toFinset=s6Step334ExitGvAfter := by
  unfold Arena.retireSet s6Step334ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step334ExitGvBefore,s6Step334ExitFvAfter,s6Step334ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step334ExitGv_checked : planRowResizeLog s6Step334ExitGvBefore s6Step334ExitGvRow 182 []=
    some (s6Step334ExitGvAfter,s6Step334ExitGvOut,shrinkRow 775 s6Step334ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step334ExitGvBefore s6Step334ExitGvRow 182 s6Step334ExitGv_distinct s6Step334ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step334ExitGvRow.payload.take 182) s6Step334ExitGvRow.sign=s6Step334ExitGvOut := by decide +kernel
  have hi : s6Step334ExitGvRow.payload.drop 182=s6Step334ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step334ExitGv_retired] at result
  exact result

private theorem s6Step334ExitBank_rows : planWindowRowsLog s6Step334ExitGBefore [(s6Step334ExitGRow,103),(s6Step334ExitFRow,104),(s6Step334ExitFvRow,183),(s6Step334ExitGvRow,182)] [[],[],[],[]]=
    some (s6Step334ExitGvAfter,[s6Step334ExitGOut,s6Step334ExitFOut,s6Step334ExitFvOut,s6Step334ExitGvOut],(shrinkRow 777 s6Step334ExitGExtra ++ (shrinkRow 795 s6Step334ExitFExtra ++ (shrinkRow 776 s6Step334ExitFvExtra ++ (shrinkRow 775 s6Step334ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step334ExitGvAfter [] []=some (s6Step334ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step334ExitGvBefore s6Step334ExitGvAfter s6Step334ExitGvAfter
    s6Step334ExitGvRow s6Step334ExitGvOut 182 [] [] [] []
    (shrinkRow 775 s6Step334ExitGvExtra) ([]) s6Step334ExitGv_Incoming s6Step334ExitGv_checked h4 s6Step334ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step334ExitFvBefore s6Step334ExitFvAfter s6Step334ExitGvAfter
    s6Step334ExitFvRow s6Step334ExitFvOut 183 [] [(s6Step334ExitGvRow,182)] [[]] [s6Step334ExitGvOut]
    (shrinkRow 776 s6Step334ExitFvExtra) ((shrinkRow 775 s6Step334ExitGvExtra ++ [])) s6Step334ExitFv_Incoming s6Step334ExitFv_checked h3 s6Step334ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step334ExitFBefore s6Step334ExitFAfter s6Step334ExitGvAfter
    s6Step334ExitFRow s6Step334ExitFOut 104 [] [(s6Step334ExitFvRow,183),(s6Step334ExitGvRow,182)] [[],[]] [s6Step334ExitFvOut,s6Step334ExitGvOut]
    (shrinkRow 795 s6Step334ExitFExtra) ((shrinkRow 776 s6Step334ExitFvExtra ++ (shrinkRow 775 s6Step334ExitGvExtra ++ []))) s6Step334ExitF_Incoming s6Step334ExitF_checked h2 s6Step334ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step334ExitGBefore s6Step334ExitGAfter s6Step334ExitGvAfter
    s6Step334ExitGRow s6Step334ExitGOut 103 [] [(s6Step334ExitFRow,104),(s6Step334ExitFvRow,183),(s6Step334ExitGvRow,182)] [[],[],[]] [s6Step334ExitFOut,s6Step334ExitFvOut,s6Step334ExitGvOut]
    (shrinkRow 777 s6Step334ExitGExtra) ((shrinkRow 795 s6Step334ExitFExtra ++ (shrinkRow 776 s6Step334ExitFvExtra ++ (shrinkRow 775 s6Step334ExitGvExtra ++ [])))) s6Step334ExitG_Incoming s6Step334ExitG_checked h1 s6Step334ExitG_Outgoing
  exact h0

private theorem s6Step334ExitBank_checked : compileHmrBankResizeLog .exit s6Step334ExitGBefore ⟨s6Step334ExitFRow,s6Step334ExitGRow,s6Step334ExitFvRow,s6Step334ExitGvRow⟩ ⟨104,103,183,182⟩ [[],[],[],[]]=
    some (s6Step334ExitGvAfter,⟨s6Step334ExitFOut,s6Step334ExitGOut,s6Step334ExitFvOut,s6Step334ExitGvOut⟩,(shrinkRow 777 s6Step334ExitGExtra ++ (shrinkRow 795 s6Step334ExitFExtra ++ (shrinkRow 776 s6Step334ExitFvExtra ++ (shrinkRow 775 s6Step334ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step334ExitBank_rows]
  rfl

private theorem s6Step334Add0_apart : Disjoint s6Step334Add0Arena.live s6Step334Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step334Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334Add0_card : s6Step334Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step334Add0_borrowed : s6Step334Add0Arena.checkBorrow (hmrHybridCount s6Step334Add0Arena s6Step334Add0B.length) s6Step334Add0Work=some s6Step334Add0During := by
  have len : s6Step334Add0Work.length=hmrHybridCount s6Step334Add0Arena s6Step334Add0B.length := by
    rw [hmrHybridCount,s6Step334Add0_card]
    decide +kernel
  have nd : s6Step334Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step334Add0Arena s6Step334Add0During s6Step334Add0Work.toFinset s6Step334Add0_bounded s6Step334Add0_apart rfl

private theorem s6Step334Add0_distinct : (860::865::805::(s6Step334Add0A++s6Step334Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334Add0_owned : (860::865::805::(s6Step334Add0A++s6Step334Add0B)).toFinset⊆s6Step334Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step334Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334Add0_checked : compileHmrHybridCinLog s6Step334Add0Arena 865 860 805 s6Step334Add0A s6Step334Add0B s6Step334Add0Work=some s6Step334Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step334Add0Arena s6Step334Add0During 865 860 805 s6Step334Add0A s6Step334Add0B s6Step334Add0Work
    (by decide +kernel) (by decide +kernel) s6Step334Add0_distinct
    (fun q hq => s6Step334Add0_owned (List.mem_toFinset.mpr hq)) s6Step334Add0_borrowed

private theorem s6Step334Add1_apart : Disjoint s6Step334Add1Arena.live s6Step334Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step334Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334Add1_card : s6Step334Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step334Add1_borrowed : s6Step334Add1Arena.checkBorrow (hmrHybridCount s6Step334Add1Arena s6Step334Add1B.length) s6Step334Add1Work=some s6Step334Add1During := by
  have len : s6Step334Add1Work.length=hmrHybridCount s6Step334Add1Arena s6Step334Add1B.length := by
    rw [hmrHybridCount,s6Step334Add1_card]
    decide +kernel
  have nd : s6Step334Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step334Add1Arena s6Step334Add1During s6Step334Add1Work.toFinset s6Step334Add1_bounded s6Step334Add1_apart rfl

private theorem s6Step334Add1_distinct : (860::865::805::(s6Step334Add1A++s6Step334Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334Add1_owned : (860::865::805::(s6Step334Add1A++s6Step334Add1B)).toFinset⊆s6Step334Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step334Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334Add1_checked : compileHmrHybridCinLog s6Step334Add1Arena 865 860 805 s6Step334Add1A s6Step334Add1B s6Step334Add1Work=some s6Step334Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step334Add1Arena s6Step334Add1During 865 860 805 s6Step334Add1A s6Step334Add1B s6Step334Add1Work
    (by decide +kernel) (by decide +kernel) s6Step334Add1_distinct
    (fun q hq => s6Step334Add1_owned (List.mem_toFinset.mpr hq)) s6Step334Add1_borrowed

private theorem s6Step334F4_apart : Disjoint (s6Step334Add0A++s6Step334Add0B).toFinset (s6Step334Add1A++s6Step334Add1B).toFinset := by
  have nd : ((s6Step334Add0A++s6Step334Add0B)++(s6Step334Add1A++s6Step334Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step334F4_carry : s6Step334F4FlagArena.checkBorrow 1 [805]=some s6Step334Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step334F4FlagArena,s6Step334HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step334F4FlagArena,s6Step334HeadFvAfter,s6Step334Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step334F4_distinct : (780::865::860::805::((s6Step334Add0A++s6Step334Add1A)++(s6Step334Add0B++s6Step334Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334F4_flag : s6Step334HeadFvAfter.checkBorrow 1 [860]=some s6Step334F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step334HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step334F4_owned : (780::865::((s6Step334Add0A++s6Step334Add1A)++(s6Step334Add0B++s6Step334Add1B))).toFinset⊆s6Step334HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step334HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334F4_checked : compileHmrHybridF4Log s6Step334HeadFvAfter 780 865 s6Step334Add0A s6Step334Add0B s6Step334Add1A s6Step334Add1B [860] [805] s6Step334Add0Work s6Step334Add1Work=some s6Step334F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step334HeadFvAfter s6Step334F4FlagArena s6Step334Add0Arena s6Step334Add0During s6Step334Add1During 780 865
    s6Step334Add0A s6Step334Add0B s6Step334Add1A s6Step334Add1B [860] [805] s6Step334Add0Work s6Step334Add1Work
    (fun q hq => s6Step334F4_owned (List.mem_toFinset.mpr hq)) s6Step334F4_flag s6Step334F4_carry
    s6Step334F4_distinct s6Step334F4_apart s6Step334Add0_checked s6Step334Add1_checked

private theorem s6Step334Front_branch : s6Step334FrontSigmaArena.checkBorrow 1 [865]=some s6Step334HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step334FrontSigmaArena,s6Step334EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step334FrontSigmaArena,s6Step334EntryGvAfter,s6Step334HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step334Front_entry : HmrFrontEntryValid s6Step334EntryFBefore s6Step334FrontBank 104 183 ⟨104,103,183,182⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step334FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step334EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step334EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step334FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step334Front_sigma : s6Step334EntryGvAfter.checkBorrow 1 [780]=some s6Step334FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step334EntryGvAfter,arenaWires]
  · rfl

private def s6Step334HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334HeadFBefore : Arena := s6Step334HeadGAfter

private def s6Step334HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩

private def s6Step334HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩

private def s6Step334HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 838],777⟩

private def s6Step334HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 874],775⟩

private theorem s6Step334HeadBank_incomingDistinct : ([s6Step334HeadGRow,s6Step334HeadFRow,s6Step334HeadGvRow,s6Step334HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334HeadF_Incoming : rowsOwned s6Step334HeadFBefore [s6Step334HeadFRow,s6Step334HeadGvRow,s6Step334HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step334HeadGRow,s6Step334HeadFRow,s6Step334HeadGvRow,s6Step334HeadFvRow] 1 s6Step334HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step334HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step334HeadBank_outgoingOwned : rowsOwned s6Step334HeadFvAfter [s6Step334HeadGOut,s6Step334HeadFOut,s6Step334HeadGvOut,s6Step334HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step334HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step334HeadF_Outgoing : rowsOwned s6Step334HeadFvAfter [s6Step334HeadFOut,s6Step334HeadGvOut,s6Step334HeadFvOut] :=
  hmrRows_owned_drop s6Step334HeadFvAfter [s6Step334HeadGOut,s6Step334HeadFOut,s6Step334HeadGvOut,s6Step334HeadFvOut] 1 s6Step334HeadBank_outgoingOwned

private theorem s6Step334HeadF_distinct : (s6Step334HeadFRow.sign::s6Step334HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334HeadF_owned : (s6Step334HeadFRow.sign::s6Step334HeadFRow.payload).toFinset⊆s6Step334HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step334HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334HeadF_reserved : s6Step334HeadFBefore.reserve s6Step334HeadFFresh.toFinset=some s6Step334HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step334HeadFFresh,arenaWires]
  · norm_num [s6Step334HeadFBefore,s6Step334HeadGAfter,s6Step334HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step334HeadFAfter,s6Step334HeadFBefore,s6Step334HeadGAfter,s6Step334HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step334HeadF_checked : planRowResizeLog s6Step334HeadFBefore s6Step334HeadFRow 105 s6Step334HeadFFresh=
    some (s6Step334HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 907],795⟩,growRow 795 s6Step334HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step334HeadFBefore s6Step334HeadFAfter s6Step334HeadFRow 105 s6Step334HeadFFresh
    s6Step334HeadF_distinct s6Step334HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step334HeadF_reserved
  have rowEq : WindowRow.mk (s6Step334HeadFRow.payload++s6Step334HeadFFresh) s6Step334HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 907],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step334HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step334HeadFvBefore : Arena := s6Step334HeadGvAfter

private theorem s6Step334HeadFv_Incoming : rowsOwned s6Step334HeadFvBefore [s6Step334HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step334HeadGRow,s6Step334HeadFRow,s6Step334HeadGvRow,s6Step334HeadFvRow] 3 s6Step334HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step334HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step334HeadFv_Outgoing : rowsOwned s6Step334HeadFvAfter [s6Step334HeadFvOut] :=
  hmrRows_owned_drop s6Step334HeadFvAfter [s6Step334HeadGOut,s6Step334HeadFOut,s6Step334HeadGvOut,s6Step334HeadFvOut] 3 s6Step334HeadBank_outgoingOwned

private theorem s6Step334HeadFv_distinct : (s6Step334HeadFvRow.sign::s6Step334HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334HeadFv_owned : (s6Step334HeadFvRow.sign::s6Step334HeadFvRow.payload).toFinset⊆s6Step334HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step334HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334HeadFv_reserved : s6Step334HeadFvBefore.reserve s6Step334HeadFvFresh.toFinset=some s6Step334HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step334HeadFvFresh,arenaWires]
  · norm_num [s6Step334HeadFvBefore,s6Step334HeadGvAfter,s6Step334HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step334HeadFvAfter,s6Step334HeadFvBefore,s6Step334HeadGvAfter,s6Step334HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step334HeadFv_checked : planRowResizeLog s6Step334HeadFvBefore s6Step334HeadFvRow 184 s6Step334HeadFvFresh=
    some (s6Step334HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 843],776⟩,growRow 776 s6Step334HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step334HeadFvBefore s6Step334HeadFvAfter s6Step334HeadFvRow 184 s6Step334HeadFvFresh
    s6Step334HeadFv_distinct s6Step334HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step334HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step334HeadFvRow.payload++s6Step334HeadFvFresh) s6Step334HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 843],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step334HeadG_Incoming : rowsOwned s6Step334HeadGBefore [s6Step334HeadGRow,s6Step334HeadFRow,s6Step334HeadGvRow,s6Step334HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step334HeadGRow,s6Step334HeadFRow,s6Step334HeadGvRow,s6Step334HeadFvRow] 0 s6Step334HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step334HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step334HeadG_Outgoing : rowsOwned s6Step334HeadFvAfter [s6Step334HeadGOut,s6Step334HeadFOut,s6Step334HeadGvOut,s6Step334HeadFvOut] :=
  hmrRows_owned_drop s6Step334HeadFvAfter [s6Step334HeadGOut,s6Step334HeadFOut,s6Step334HeadGvOut,s6Step334HeadFvOut] 0 s6Step334HeadBank_outgoingOwned

private theorem s6Step334HeadG_distinct : (s6Step334HeadGRow.sign::s6Step334HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334HeadG_owned : (s6Step334HeadGRow.sign::s6Step334HeadGRow.payload).toFinset⊆s6Step334HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step334HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334HeadG_reserved : s6Step334HeadGBefore.reserve s6Step334HeadGFresh.toFinset=some s6Step334HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step334HeadGFresh,arenaWires]
  · norm_num [s6Step334HeadGBefore,s6Step334HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step334HeadGAfter,s6Step334HeadGBefore,s6Step334HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step334HeadG_checked : planRowResizeLog s6Step334HeadGBefore s6Step334HeadGRow 105 s6Step334HeadGFresh=
    some (s6Step334HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 838, 859],777⟩,growRow 777 s6Step334HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step334HeadGBefore s6Step334HeadGAfter s6Step334HeadGRow 105 s6Step334HeadGFresh
    s6Step334HeadG_distinct s6Step334HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step334HeadG_reserved
  have rowEq : WindowRow.mk (s6Step334HeadGRow.payload++s6Step334HeadGFresh) s6Step334HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 838, 859],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step334HeadGvBefore : Arena := s6Step334HeadFAfter

private theorem s6Step334HeadGv_Incoming : rowsOwned s6Step334HeadGvBefore [s6Step334HeadGvRow,s6Step334HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step334HeadGRow,s6Step334HeadFRow,s6Step334HeadGvRow,s6Step334HeadFvRow] 2 s6Step334HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step334HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step334HeadGv_Outgoing : rowsOwned s6Step334HeadFvAfter [s6Step334HeadGvOut,s6Step334HeadFvOut] :=
  hmrRows_owned_drop s6Step334HeadFvAfter [s6Step334HeadGOut,s6Step334HeadFOut,s6Step334HeadGvOut,s6Step334HeadFvOut] 2 s6Step334HeadBank_outgoingOwned

private theorem s6Step334HeadGv_distinct : (s6Step334HeadGvRow.sign::s6Step334HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step334HeadGv_owned : (s6Step334HeadGvRow.sign::s6Step334HeadGvRow.payload).toFinset⊆s6Step334HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step334HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step334HeadGv_reserved : s6Step334HeadGvBefore.reserve s6Step334HeadGvFresh.toFinset=some s6Step334HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step334HeadGvFresh,arenaWires]
  · norm_num [s6Step334HeadGvBefore,s6Step334HeadFAfter,s6Step334HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step334HeadGvAfter,s6Step334HeadGvBefore,s6Step334HeadFAfter,s6Step334HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step334HeadGv_checked : planRowResizeLog s6Step334HeadGvBefore s6Step334HeadGvRow 184 s6Step334HeadGvFresh=
    some (s6Step334HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 874, 903],775⟩,growRow 775 s6Step334HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step334HeadGvBefore s6Step334HeadGvAfter s6Step334HeadGvRow 184 s6Step334HeadGvFresh
    s6Step334HeadGv_distinct s6Step334HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step334HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step334HeadGvRow.payload++s6Step334HeadGvFresh) s6Step334HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 874, 903],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step334HeadBank_rows : planWindowRowsLog s6Step334HeadGBefore [(s6Step334HeadGRow,105),(s6Step334HeadFRow,105),(s6Step334HeadGvRow,184),(s6Step334HeadFvRow,184)] [s6Step334HeadGFresh,s6Step334HeadFFresh,s6Step334HeadGvFresh,s6Step334HeadFvFresh]=
    some (s6Step334HeadFvAfter,[s6Step334HeadGOut,s6Step334HeadFOut,s6Step334HeadGvOut,s6Step334HeadFvOut],(growRow 777 s6Step334HeadGFresh ++ (growRow 795 s6Step334HeadFFresh ++ (growRow 775 s6Step334HeadGvFresh ++ (growRow 776 s6Step334HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step334HeadFvAfter [] []=some (s6Step334HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step334HeadFvBefore s6Step334HeadFvAfter s6Step334HeadFvAfter
    s6Step334HeadFvRow s6Step334HeadFvOut 184 s6Step334HeadFvFresh [] [] []
    (growRow 776 s6Step334HeadFvFresh) ([]) s6Step334HeadFv_Incoming s6Step334HeadFv_checked h4 s6Step334HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step334HeadGvBefore s6Step334HeadGvAfter s6Step334HeadFvAfter
    s6Step334HeadGvRow s6Step334HeadGvOut 184 s6Step334HeadGvFresh [(s6Step334HeadFvRow,184)] [s6Step334HeadFvFresh] [s6Step334HeadFvOut]
    (growRow 775 s6Step334HeadGvFresh) ((growRow 776 s6Step334HeadFvFresh ++ [])) s6Step334HeadGv_Incoming s6Step334HeadGv_checked h3 s6Step334HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step334HeadFBefore s6Step334HeadFAfter s6Step334HeadFvAfter
    s6Step334HeadFRow s6Step334HeadFOut 105 s6Step334HeadFFresh [(s6Step334HeadGvRow,184),(s6Step334HeadFvRow,184)] [s6Step334HeadGvFresh,s6Step334HeadFvFresh] [s6Step334HeadGvOut,s6Step334HeadFvOut]
    (growRow 795 s6Step334HeadFFresh) ((growRow 775 s6Step334HeadGvFresh ++ (growRow 776 s6Step334HeadFvFresh ++ []))) s6Step334HeadF_Incoming s6Step334HeadF_checked h2 s6Step334HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step334HeadGBefore s6Step334HeadGAfter s6Step334HeadFvAfter
    s6Step334HeadGRow s6Step334HeadGOut 105 s6Step334HeadGFresh [(s6Step334HeadFRow,105),(s6Step334HeadGvRow,184),(s6Step334HeadFvRow,184)] [s6Step334HeadFFresh,s6Step334HeadGvFresh,s6Step334HeadFvFresh] [s6Step334HeadFOut,s6Step334HeadGvOut,s6Step334HeadFvOut]
    (growRow 777 s6Step334HeadGFresh) ((growRow 795 s6Step334HeadFFresh ++ (growRow 775 s6Step334HeadGvFresh ++ (growRow 776 s6Step334HeadFvFresh ++ [])))) s6Step334HeadG_Incoming s6Step334HeadG_checked h1 s6Step334HeadG_Outgoing
  exact h0

private theorem s6Step334HeadBank_checked : compileHmrBankResizeLog .headroom s6Step334HeadGBefore ⟨s6Step334HeadFRow,s6Step334HeadGRow,s6Step334HeadFvRow,s6Step334HeadGvRow⟩ ⟨105,105,184,184⟩ [s6Step334HeadGFresh,s6Step334HeadFFresh,s6Step334HeadGvFresh,s6Step334HeadFvFresh]=
    some (s6Step334HeadFvAfter,⟨s6Step334HeadFOut,s6Step334HeadGOut,s6Step334HeadFvOut,s6Step334HeadGvOut⟩,(growRow 777 s6Step334HeadGFresh ++ (growRow 795 s6Step334HeadFFresh ++ (growRow 775 s6Step334HeadGvFresh ++ (growRow 776 s6Step334HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step334HeadBank_rows]
  rfl

private theorem s6Step334Front_checked : compileHmrSourceFrontLog s6Step334EntryFBefore s6Step334FrontBank 104 183 ⟨104,103,183,182⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step334FrontLog=some s6Step334FrontPlan := by
  have pairEq : s6Step334FrontPair=⟨s6Step334HeadFRow,s6Step334HeadGRow,s6Step334HeadFvRow,s6Step334HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step334FrontHead=⟨s6Step334ExitFRow,s6Step334ExitGRow,s6Step334ExitFvRow,s6Step334ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step334Add0A=s6Step334FrontHead.f.wires := by decide +kernel
  have gEq : s6Step334Add0B=s6Step334FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step334Add1A=s6Step334FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step334Add1B=s6Step334FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step334EntryFBefore s6Step334FrontBank 104 183 ⟨104,103,183,182⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step334FrontLog s6Step334FrontPlan
  · exact s6Step334Front_entry
  · exact s6Step334EntryBank_checked
  · exact s6Step334Front_sigma
  · rfl
  · exact s6Step334Front_branch
  · rfl
  · simpa only [s6Step334FrontPlan,pairEq] using s6Step334HeadBank_checked
  · simpa only [s6Step334FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step334F4_checked
  · exact s6Step334Counter_checked
  · rfl
  · simpa only [s6Step334FrontPlan,headEq] using s6Step334ExitBank_checked

private theorem s6Step334Complete_explicit_checked : compileHmrEarlyStepLog s6Step334EntryFBefore s6Step334FrontBank 104 183 ⟨104,103,183,182⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step334CompleteLog=some s6Step334CompletePlan := by
  let Q := s6Step334EarlyControlPlan
  have hq := s6Step334EarlyControl_plan_checked
  have fv1 : s6Step334CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step334CompleteOut.fv.payload[2]?.getD s6Step334CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step334CompleteOut.fv.payload[3]?.getD s6Step334CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step334CompleteOut.fv.payload[4]?.getD s6Step334CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step334EntryFBefore s6Step334EarlyControlArena s6Step334FrontBank 104 183 ⟨104,103,183,182⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step334CompleteLog s6Step334FrontPlan Q
    s6Step334Front_checked s6Step334Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step334Complete_owned s6Step334Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step334EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 780 s6Step334CompleteOut.fv.second (s6Step334CompleteOut.fv.payload[2]?.getD s6Step334CompleteOut.fv.sign) (s6Step334CompleteOut.fv.payload[3]?.getD s6Step334CompleteOut.fv.sign) (s6Step334CompleteOut.fv.payload[4]?.getD s6Step334CompleteOut.fv.sign) 865 60 s6Step334EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep334Arena : Arena := s6Step334EntryFBefore
def s6PrivateStep334Bank : WindowBank := s6Step334FrontBank
def s6PrivateStep334Spec : HmrSourceWalkStepLog := ⟨104,183,⟨104,103,183,182⟩,60,.early s6Step334CompleteLog⟩
def s6PrivateStep334Plan : HmrSourceStepPlan := .early s6Step334CompletePlan
theorem s6PrivateStep334_source : s6PrivateStep334Spec=s6ObservedLogs320[14] := rfl
theorem s6PrivateStep334_checked : compileHmrSourceStepLog s6PrivateStep334Arena s6PrivateStep334Bank
    s6PrivateStep334Spec.fgWidth s6PrivateStep334Spec.vWidth s6PrivateStep334Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 334 s6PrivateStep334Spec.need none s6PrivateStep334Spec.log=some s6PrivateStep334Plan := by
  change compileHmrSourceStepLog s6Step334EntryFBefore s6Step334FrontBank 104 183 ⟨104,103,183,182⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 334 60 none (.early s6Step334CompleteLog)=some (.early s6Step334CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 334<498)]
  rw [s6Step334Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
