import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep331
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

private def s6Step333CompleteMoves : List (Wire × Wire) := [(780,103)]

private def s6Step333EarlyControlLog : HmrEarlyControlLog := ⟨[780, 865, 859, 907, 903],[843],[860],[805, 817, 812, 915, 906, 792],[]⟩

private def s6Step333FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [841]],[[907], [859], [865], [854]],[[], [], [], []]⟩,[874],[838],[903],[843],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[903, 843, 860, 805]⟩

private def s6Step333CompleteLog : HmrEarlyStepLog := ⟨s6Step333FrontLog,s6Step333CompleteMoves,s6Step333EarlyControlLog⟩

private def s6Step333ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩

private def s6Step333ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩

private def s6Step333ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],777⟩

private def s6Step333ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841],775⟩

private def s6Step333FrontOut : WindowBank := ⟨s6Step333ExitFOut,s6Step333ExitGOut,s6Step333ExitFvOut,s6Step333ExitGvOut⟩

private def s6Step333CompleteOut : WindowBank := s6Step333FrontOut.repacked s6Step333CompleteMoves

private def s6Step333EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step333EarlyControlPositiveArena,[843],s6Step333EarlyControlEqualityArena,[860],⟨⟨874,false⟩,[⟨⟨843,false⟩,860⟩]⟩⟩

private def s6Step333EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨772,false⟩,865⟩,⟨⟨771,false⟩,859⟩,⟨⟨770,false⟩,907⟩,⟨⟨769,false⟩,903⟩]⟩

private def s6Step333EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step333EarlyControlZeroArena,s6Step333EarlyControlZeroPlan,s6Step333EarlyControlClassPlan,s6Step333EarlyControlFlagArena,s6Step333EarlyControlFittedArena,s6Step333EarlyControlHistoryArena,s6Step333EarlyControlSigmaArena,s6Step333EarlyControlOutputArena,s6Step333EarlyControlLog⟩

private def s6Step333CounterWork : List Wire := [903, 843, 860, 805]

private theorem s6Step333Counter_bounded : s6Step333CounterWork.toFinset⊆arenaWires := by norm_num [s6Step333CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step333HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333CounterDuring : Arena := ⟨s6Step333HeadFvAfter.live∪s6Step333CounterWork.toFinset,Finset.union_subset s6Step333HeadFvAfter.bounded s6Step333Counter_bounded⟩

private def s6Step333EntryFFresh : List Wire := []

private def s6Step333EntryFvFresh : List Wire := []

private def s6Step333EntryGFresh : List Wire := []

private def s6Step333EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333EntryGvFresh : List Wire := [841]

private def s6Step333ExitFExtra : List Wire := [859]

private def s6Step333ExitGExtra : List Wire := [103, 907]

private def s6Step333ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333ExitGvExtra : List Wire := [865]

private def s6Step333Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333Add0Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step333Add0_bounded : s6Step333Add0Work.toFinset⊆arenaWires := by
  have h : s6Step333Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step333Add0During : Arena := ⟨s6Step333Add0Arena.live∪s6Step333Add0Work.toFinset,Finset.union_subset s6Step333Add0Arena.bounded s6Step333Add0_bounded⟩

private def s6Step333Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333Add1Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step333Add1_bounded : s6Step333Add1Work.toFinset⊆arenaWires := by
  have h : s6Step333Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step333Add1During : Arena := ⟨s6Step333Add1Arena.live∪s6Step333Add1Work.toFinset,Finset.union_subset s6Step333Add1Arena.bounded s6Step333Add1_bounded⟩

private def s6Step333F4FlagArena : Arena := ⟨s6Step333HeadFvAfter.live∪{903},Finset.union_subset s6Step333HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step333F4Plan : HmrHybridF4Plan := ⟨s6Step333F4FlagArena,[903],s6Step333Add0Arena,[843],s6Step333Add0During,s6Step333Add0Work,s6Step333Add1During,s6Step333Add1Work⟩

private def s6Step333HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 859],795⟩

private def s6Step333HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩

private def s6Step333HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 907],777⟩

private def s6Step333HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 865],775⟩

private def s6Step333FrontHead : WindowBank := ⟨s6Step333HeadFOut,s6Step333HeadGOut,s6Step333HeadFvOut,s6Step333HeadGvOut⟩

private def s6Step333EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩

private def s6Step333EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794],776⟩

private def s6Step333EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],777⟩

private def s6Step333EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841],775⟩

private def s6Step333FrontPair : WindowBank := ⟨s6Step333EntryFOut,s6Step333EntryGOut,s6Step333EntryFvOut,s6Step333EntryGvOut⟩

private def s6Step333FrontSigmaArena : Arena := ⟨s6Step333EntryGvAfter.live∪{874},Finset.union_subset s6Step333EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step333HeadFFresh : List Wire := [859]

private def s6Step333HeadFvFresh : List Wire := [854]

private def s6Step333HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333HeadGFresh : List Wire := [907]

private def s6Step333HeadGvFresh : List Wire := [865]

private def s6Step333FrontPlan : HmrSourceFront := ⟨s6Step333EntryGvAfter,s6Step333FrontPair,(growRow 795 s6Step333EntryFFresh ++ (growRow 777 s6Step333EntryGFresh ++ (growRow 776 s6Step333EntryFvFresh ++ (growRow 775 s6Step333EntryGvFresh ++ [])))),s6Step333FrontSigmaArena,[874],s6Step333HeadGBefore,[838],
  s6Step333HeadFvAfter,s6Step333FrontHead,(growRow 777 s6Step333HeadGFresh ++ (growRow 795 s6Step333HeadFFresh ++ (growRow 775 s6Step333HeadGvFresh ++ (growRow 776 s6Step333HeadFvFresh ++ [])))),s6Step333F4Plan,s6Step333CounterDuring,s6Step333CounterWork,s6Step333ExitGvAfter,s6Step333FrontOut,(shrinkRow 777 s6Step333ExitGExtra ++ (shrinkRow 795 s6Step333ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step333ExitGvExtra ++ []))))⟩

private def s6Step333CompletePlan : HmrEarlyStepPlan := ⟨s6Step333FrontPlan,s6Step333EarlyControlArena,s6Step333EarlyControlPlan,s6Step333CompleteMoves⟩

private theorem s6Step333Complete_apart : List.Disjoint (s6Step333CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [874, 838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step333CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[874, 838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step333Complete_owned : (s6Step333CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step333EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step333EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step333CompleteMoveArena : Arena := ⟨s6Step333ExitGvAfter.live∪{103},Finset.union_subset s6Step333ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step333Complete_repack : s6Step333ExitGvAfter.checkRepack s6Step333CompleteMoves=some s6Step333EarlyControlArena := by
  have owned : 780∈s6Step333ExitGvAfter.live := by norm_num [s6Step333ExitGvAfter,arenaWires]
  have reserve : s6Step333ExitGvAfter.reserve {103}=some s6Step333CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step333ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step333CompleteMoveArena.retireSet {780}=s6Step333EarlyControlArena := by
    unfold Arena.retireSet s6Step333EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step333CompleteMoveArena,s6Step333ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step333CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step333CompleteMoveArena.retireSet {780}).checkRepack []=some s6Step333EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step333EarlyControl_branchOwned : ([838] : List Wire).toFinset⊆s6Step333EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step333EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333EarlyControl_branch : compileHmrBranchRetirement s6Step333EarlyControlSigmaArena 838=some s6Step333EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step333EarlyControl_branchOwned
  · ext q
    simp [s6Step333EarlyControlOutputArena,s6Step333EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step333EarlyControl_classEqualityBorrow : s6Step333EarlyControlPositiveArena.checkBorrow (([874, 843] : List Wire).length-1) s6Step333EarlyControlLog.classWork=some s6Step333EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step333EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step333EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step333EarlyControlEqualityArena,s6Step333EarlyControlPositiveArena,s6Step333EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step333EarlyControl_classEqualityOwned : ([874, 843] : List Wire).toFinset⊆s6Step333EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step333EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333EarlyControl_classEquality : compileHmrEqualityLog s6Step333EarlyControlPositiveArena [874, 843] 0 s6Step333EarlyControlLog.classWork=some (s6Step333EarlyControlEqualityArena,s6Step333EarlyControlLog.classWork,s6Step333EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step333EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step333EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step333EarlyControl_classOwned : ([769, 903, 874] : List Wire).toFinset⊆s6Step333EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step333EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333EarlyControl_positiveBorrow : s6Step333EarlyControlZeroArena.checkBorrow (1) s6Step333EarlyControlLog.positiveWork=some s6Step333EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step333EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step333EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step333EarlyControlPositiveArena,s6Step333EarlyControlZeroArena,s6Step333EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step333EarlyControl_class : compileHmrSourceClassLog s6Step333EarlyControlZeroArena false 769 s6Step333EarlyControlZeroPlan.top 0 874 s6Step333EarlyControlLog.positiveWork s6Step333EarlyControlLog.classWork=some s6Step333EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step333EarlyControlClassPlan s6Step333EarlyControlZeroArena false 769 s6Step333EarlyControlZeroPlan.top 0 874
  constructor
  · decide +kernel
  · exact s6Step333EarlyControl_classOwned
  · exact s6Step333EarlyControl_positiveBorrow
  · exact s6Step333EarlyControl_classEquality

private theorem s6Step333EarlyControl_entryRecordOwned : ([838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step333EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step333EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333EarlyControl_entrySigmaOwned : ([874, 254] : List Wire).toFinset⊆s6Step333EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step333EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333EarlyControl_fitBorrow : s6Step333EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step333EarlyControlLog.recordFresh=some s6Step333EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step333EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step333EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step333EarlyControlFittedArena,s6Step333EarlyControlFlagArena,s6Step333EarlyControlLog,arenaWires]

private theorem s6Step333EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step333EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step333EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333EarlyControl_fit : compileHmrRecordGrowLog s6Step333EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step333EarlyControlLog.recordFresh=some s6Step333EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step333EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step333EarlyControl_fitBorrow

private theorem s6Step333EarlyControl_flagsBorrow : s6Step333EarlyControlEqualityArena.checkBorrow (6) s6Step333EarlyControlLog.flagWork=some s6Step333EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step333EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step333EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step333EarlyControlFlagArena,s6Step333EarlyControlEqualityArena,s6Step333EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step333EarlyControl_flagsOwned : ([860, 253, 252, 251] : List Wire).toFinset⊆s6Step333EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step333EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333EarlyControl_flags : compileHmrFlagsLog s6Step333EarlyControlClassPlan.equalityArena s6Step333EarlyControlClassPlan.equality.top 253 252 251 s6Step333EarlyControlLog.flagWork=some s6Step333EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step333EarlyControl_flagsOwned⟩
  · exact s6Step333EarlyControl_flagsBorrow

private theorem s6Step333EarlyControl_historyBorrow : s6Step333EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step333EarlyControlLog.recordFresh=some s6Step333EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step333EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step333EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step333EarlyControlHistoryArena,s6Step333EarlyControlArena,s6Step333EarlyControlLog,arenaWires]

private theorem s6Step333EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step333EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step333EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333EarlyControl_history : compileHmrRecordGrowLog s6Step333EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step333EarlyControlLog.recordFresh=some s6Step333EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step333EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step333EarlyControl_historyBorrow

private theorem s6Step333EarlyControl_sigmaOwned : ([254, 874] : List Wire).toFinset⊆s6Step333EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step333EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333EarlyControl_sigmaReleaseOwned : ([874] : List Wire).toFinset⊆s6Step333EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step333EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333EarlyControl_sigmaRelease : s6Step333EarlyControlHistoryArena.release {874} (fun _ => false)=some s6Step333EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step333EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step333EarlyControlSigmaArena,s6Step333EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step333EarlyControl_sigma : compileHmrSigmaDropLog s6Step333EarlyControlHistoryArena false 0 0 254 874 []=some s6Step333EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step333EarlyControl_sigmaOwned⟩
  · exact s6Step333EarlyControl_sigmaRelease

private theorem s6Step333EarlyControl_zeroBorrow : s6Step333EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step333EarlyControlLog.zeroWork=some s6Step333EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step333EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step333EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step333EarlyControlZeroArena,s6Step333EarlyControlArena,s6Step333EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step333EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step333EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step333EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333EarlyControl_zero : compileHmrEqualityLog s6Step333EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step333EarlyControlLog.zeroWork=some (s6Step333EarlyControlZeroArena,s6Step333EarlyControlLog.zeroWork,s6Step333EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step333EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step333EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step333EarlyControl_logged : s6Step333EarlyControlPlan.Logged s6Step333EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 254 253 252 251 838 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step333EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step333EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step333EarlyControl_zero
  · exact s6Step333EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step333EarlyControl_flags
  · exact s6Step333EarlyControl_fit
  · exact s6Step333EarlyControl_history
  · exact s6Step333EarlyControl_sigma
  · exact s6Step333EarlyControl_branch

private theorem s6Step333EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step333EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 254 253 252 251 838 60 s6Step333EarlyControlLog=some s6Step333EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step333EarlyControlPlan s6Step333EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 254 253 252 251 838 60 s6Step333EarlyControl_logged

private def s6Step333EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩

private def s6Step333EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794],776⟩

private def s6Step333EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],777⟩

private def s6Step333EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833],775⟩

private def s6Step333FrontBank : WindowBank := ⟨s6Step333EntryFRow,s6Step333EntryGRow,s6Step333EntryFvRow,s6Step333EntryGvRow⟩

private def s6Step333Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 859, 795]

private def s6Step333Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 907, 777]

private def s6Step333Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 776]

private def s6Step333Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 865, 775]

private theorem s6Step333Counter_apart : Disjoint s6Step333HeadFvAfter.live s6Step333CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step333HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333Counter_borrowed : s6Step333HeadFvAfter.checkBorrow 4 s6Step333CounterWork=some s6Step333CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step333HeadFvAfter s6Step333CounterDuring s6Step333CounterWork.toFinset s6Step333Counter_bounded s6Step333Counter_apart rfl

private theorem s6Step333Counter_owned : (874::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step333HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step333HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333Counter_checked : compileHmrCounterStepLog s6Step333HeadFvAfter true 874 [774, 773, 772, 771, 770, 769] s6Step333CounterWork=some s6Step333CounterDuring := by
  have owned : ∀q∈874::[774, 773, 772, 771, 770, 769],q∈s6Step333HeadFvAfter.live := fun q hq => s6Step333Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step333Counter_borrowed

private def s6Step333EntryFAfter : Arena := s6Step333EntryFBefore

private theorem s6Step333EntryBank_incomingDistinct : ([s6Step333EntryFRow,s6Step333EntryGRow,s6Step333EntryFvRow,s6Step333EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333EntryF_Incoming : rowsOwned s6Step333EntryFBefore [s6Step333EntryFRow,s6Step333EntryGRow,s6Step333EntryFvRow,s6Step333EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step333EntryFRow,s6Step333EntryGRow,s6Step333EntryFvRow,s6Step333EntryGvRow] 0 s6Step333EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step333EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step333EntryBank_outgoingOwned : rowsOwned s6Step333EntryGvAfter [s6Step333EntryFOut,s6Step333EntryGOut,s6Step333EntryFvOut,s6Step333EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step333EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step333EntryF_Outgoing : rowsOwned s6Step333EntryGvAfter [s6Step333EntryFOut,s6Step333EntryGOut,s6Step333EntryFvOut,s6Step333EntryGvOut] :=
  hmrRows_owned_drop s6Step333EntryGvAfter [s6Step333EntryFOut,s6Step333EntryGOut,s6Step333EntryFvOut,s6Step333EntryGvOut] 0 s6Step333EntryBank_outgoingOwned

private theorem s6Step333EntryF_distinct : (s6Step333EntryFRow.sign::s6Step333EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333EntryF_owned : (s6Step333EntryFRow.sign::s6Step333EntryFRow.payload).toFinset⊆s6Step333EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step333EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333EntryF_reserved : s6Step333EntryFBefore.reserve s6Step333EntryFFresh.toFinset=some s6Step333EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step333EntryFFresh,arenaWires]
  · norm_num [s6Step333EntryFBefore,s6Step333EntryFFresh,arenaWires]
  · simp only [s6Step333EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step333EntryF_checked : planRowResizeLog s6Step333EntryFBefore s6Step333EntryFRow 104 s6Step333EntryFFresh=
    some (s6Step333EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩,growRow 795 s6Step333EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step333EntryFBefore s6Step333EntryFAfter s6Step333EntryFRow 104 s6Step333EntryFFresh
    s6Step333EntryF_distinct s6Step333EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step333EntryF_reserved
  have rowEq : WindowRow.mk (s6Step333EntryFRow.payload++s6Step333EntryFFresh) s6Step333EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step333EntryFvAfter : Arena := s6Step333EntryFBefore

private def s6Step333EntryFvBefore : Arena := s6Step333EntryFBefore

private theorem s6Step333EntryFv_Incoming : rowsOwned s6Step333EntryFvBefore [s6Step333EntryFvRow,s6Step333EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step333EntryFRow,s6Step333EntryGRow,s6Step333EntryFvRow,s6Step333EntryGvRow] 2 s6Step333EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step333EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step333EntryFv_Outgoing : rowsOwned s6Step333EntryGvAfter [s6Step333EntryFvOut,s6Step333EntryGvOut] :=
  hmrRows_owned_drop s6Step333EntryGvAfter [s6Step333EntryFOut,s6Step333EntryGOut,s6Step333EntryFvOut,s6Step333EntryGvOut] 2 s6Step333EntryBank_outgoingOwned

private theorem s6Step333EntryFv_distinct : (s6Step333EntryFvRow.sign::s6Step333EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333EntryFv_owned : (s6Step333EntryFvRow.sign::s6Step333EntryFvRow.payload).toFinset⊆s6Step333EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step333EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333EntryFv_reserved : s6Step333EntryFvBefore.reserve s6Step333EntryFvFresh.toFinset=some s6Step333EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step333EntryFvFresh,arenaWires]
  · norm_num [s6Step333EntryFvBefore,s6Step333EntryFBefore,s6Step333EntryFvFresh,arenaWires]
  · simp only [s6Step333EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step333EntryFv_checked : planRowResizeLog s6Step333EntryFvBefore s6Step333EntryFvRow 182 s6Step333EntryFvFresh=
    some (s6Step333EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794],776⟩,growRow 776 s6Step333EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step333EntryFvBefore s6Step333EntryFvAfter s6Step333EntryFvRow 182 s6Step333EntryFvFresh
    s6Step333EntryFv_distinct s6Step333EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step333EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step333EntryFvRow.payload++s6Step333EntryFvFresh) s6Step333EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step333EntryGAfter : Arena := s6Step333EntryFBefore

private def s6Step333EntryGBefore : Arena := s6Step333EntryFBefore

private theorem s6Step333EntryG_Incoming : rowsOwned s6Step333EntryGBefore [s6Step333EntryGRow,s6Step333EntryFvRow,s6Step333EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step333EntryFRow,s6Step333EntryGRow,s6Step333EntryFvRow,s6Step333EntryGvRow] 1 s6Step333EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step333EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step333EntryG_Outgoing : rowsOwned s6Step333EntryGvAfter [s6Step333EntryGOut,s6Step333EntryFvOut,s6Step333EntryGvOut] :=
  hmrRows_owned_drop s6Step333EntryGvAfter [s6Step333EntryFOut,s6Step333EntryGOut,s6Step333EntryFvOut,s6Step333EntryGvOut] 1 s6Step333EntryBank_outgoingOwned

private theorem s6Step333EntryG_distinct : (s6Step333EntryGRow.sign::s6Step333EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333EntryG_owned : (s6Step333EntryGRow.sign::s6Step333EntryGRow.payload).toFinset⊆s6Step333EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step333EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333EntryG_reserved : s6Step333EntryGBefore.reserve s6Step333EntryGFresh.toFinset=some s6Step333EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step333EntryGFresh,arenaWires]
  · norm_num [s6Step333EntryGBefore,s6Step333EntryFBefore,s6Step333EntryGFresh,arenaWires]
  · simp only [s6Step333EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step333EntryG_checked : planRowResizeLog s6Step333EntryGBefore s6Step333EntryGRow 104 s6Step333EntryGFresh=
    some (s6Step333EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],777⟩,growRow 777 s6Step333EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step333EntryGBefore s6Step333EntryGAfter s6Step333EntryGRow 104 s6Step333EntryGFresh
    s6Step333EntryG_distinct s6Step333EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step333EntryG_reserved
  have rowEq : WindowRow.mk (s6Step333EntryGRow.payload++s6Step333EntryGFresh) s6Step333EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step333EntryGvBefore : Arena := s6Step333EntryFBefore

private theorem s6Step333EntryGv_Incoming : rowsOwned s6Step333EntryGvBefore [s6Step333EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step333EntryFRow,s6Step333EntryGRow,s6Step333EntryFvRow,s6Step333EntryGvRow] 3 s6Step333EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step333EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step333EntryGv_Outgoing : rowsOwned s6Step333EntryGvAfter [s6Step333EntryGvOut] :=
  hmrRows_owned_drop s6Step333EntryGvAfter [s6Step333EntryFOut,s6Step333EntryGOut,s6Step333EntryFvOut,s6Step333EntryGvOut] 3 s6Step333EntryBank_outgoingOwned

private theorem s6Step333EntryGv_distinct : (s6Step333EntryGvRow.sign::s6Step333EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333EntryGv_owned : (s6Step333EntryGvRow.sign::s6Step333EntryGvRow.payload).toFinset⊆s6Step333EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step333EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333EntryGv_reserved : s6Step333EntryGvBefore.reserve s6Step333EntryGvFresh.toFinset=some s6Step333EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step333EntryGvFresh,arenaWires]
  · norm_num [s6Step333EntryGvBefore,s6Step333EntryFBefore,s6Step333EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step333EntryGvAfter,s6Step333EntryGvBefore,s6Step333EntryFBefore,s6Step333EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step333EntryGv_checked : planRowResizeLog s6Step333EntryGvBefore s6Step333EntryGvRow 182 s6Step333EntryGvFresh=
    some (s6Step333EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841],775⟩,growRow 775 s6Step333EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step333EntryGvBefore s6Step333EntryGvAfter s6Step333EntryGvRow 182 s6Step333EntryGvFresh
    s6Step333EntryGv_distinct s6Step333EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step333EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step333EntryGvRow.payload++s6Step333EntryGvFresh) s6Step333EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step333EntryBank_rows : planWindowRowsLog s6Step333EntryFBefore [(s6Step333EntryFRow,104),(s6Step333EntryGRow,104),(s6Step333EntryFvRow,182),(s6Step333EntryGvRow,182)] [s6Step333EntryFFresh,s6Step333EntryGFresh,s6Step333EntryFvFresh,s6Step333EntryGvFresh]=
    some (s6Step333EntryGvAfter,[s6Step333EntryFOut,s6Step333EntryGOut,s6Step333EntryFvOut,s6Step333EntryGvOut],(growRow 795 s6Step333EntryFFresh ++ (growRow 777 s6Step333EntryGFresh ++ (growRow 776 s6Step333EntryFvFresh ++ (growRow 775 s6Step333EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step333EntryGvAfter [] []=some (s6Step333EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step333EntryGvBefore s6Step333EntryGvAfter s6Step333EntryGvAfter
    s6Step333EntryGvRow s6Step333EntryGvOut 182 s6Step333EntryGvFresh [] [] []
    (growRow 775 s6Step333EntryGvFresh) ([]) s6Step333EntryGv_Incoming s6Step333EntryGv_checked h4 s6Step333EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step333EntryFvBefore s6Step333EntryFvAfter s6Step333EntryGvAfter
    s6Step333EntryFvRow s6Step333EntryFvOut 182 s6Step333EntryFvFresh [(s6Step333EntryGvRow,182)] [s6Step333EntryGvFresh] [s6Step333EntryGvOut]
    (growRow 776 s6Step333EntryFvFresh) ((growRow 775 s6Step333EntryGvFresh ++ [])) s6Step333EntryFv_Incoming s6Step333EntryFv_checked h3 s6Step333EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step333EntryGBefore s6Step333EntryGAfter s6Step333EntryGvAfter
    s6Step333EntryGRow s6Step333EntryGOut 104 s6Step333EntryGFresh [(s6Step333EntryFvRow,182),(s6Step333EntryGvRow,182)] [s6Step333EntryFvFresh,s6Step333EntryGvFresh] [s6Step333EntryFvOut,s6Step333EntryGvOut]
    (growRow 777 s6Step333EntryGFresh) ((growRow 776 s6Step333EntryFvFresh ++ (growRow 775 s6Step333EntryGvFresh ++ []))) s6Step333EntryG_Incoming s6Step333EntryG_checked h2 s6Step333EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step333EntryFBefore s6Step333EntryFAfter s6Step333EntryGvAfter
    s6Step333EntryFRow s6Step333EntryFOut 104 s6Step333EntryFFresh [(s6Step333EntryGRow,104),(s6Step333EntryFvRow,182),(s6Step333EntryGvRow,182)] [s6Step333EntryGFresh,s6Step333EntryFvFresh,s6Step333EntryGvFresh] [s6Step333EntryGOut,s6Step333EntryFvOut,s6Step333EntryGvOut]
    (growRow 795 s6Step333EntryFFresh) ((growRow 777 s6Step333EntryGFresh ++ (growRow 776 s6Step333EntryFvFresh ++ (growRow 775 s6Step333EntryGvFresh ++ [])))) s6Step333EntryF_Incoming s6Step333EntryF_checked h1 s6Step333EntryF_Outgoing
  exact h0

private theorem s6Step333EntryBank_checked : compileHmrBankResizeLog .entry s6Step333EntryFBefore ⟨s6Step333EntryFRow,s6Step333EntryGRow,s6Step333EntryFvRow,s6Step333EntryGvRow⟩ ⟨104,104,182,182⟩ [s6Step333EntryFFresh,s6Step333EntryGFresh,s6Step333EntryFvFresh,s6Step333EntryGvFresh]=
    some (s6Step333EntryGvAfter,⟨s6Step333EntryFOut,s6Step333EntryGOut,s6Step333EntryFvOut,s6Step333EntryGvOut⟩,(growRow 795 s6Step333EntryFFresh ++ (growRow 777 s6Step333EntryGFresh ++ (growRow 776 s6Step333EntryFvFresh ++ (growRow 775 s6Step333EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step333EntryBank_rows]
  rfl

private def s6Step333ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333ExitFBefore : Arena := s6Step333ExitGAfter

private def s6Step333ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 859],795⟩

private def s6Step333ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩

private def s6Step333ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 907],777⟩

private def s6Step333ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 865],775⟩

private theorem s6Step333ExitBank_incomingDistinct : ([s6Step333ExitGRow,s6Step333ExitFRow,s6Step333ExitFvRow,s6Step333ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333ExitF_Incoming : rowsOwned s6Step333ExitFBefore [s6Step333ExitFRow,s6Step333ExitFvRow,s6Step333ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step333ExitGRow,s6Step333ExitFRow,s6Step333ExitFvRow,s6Step333ExitGvRow] 1 s6Step333ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step333ExitFBefore (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step333ExitBank_outgoingOwned : rowsOwned s6Step333ExitGvAfter [s6Step333ExitGOut,s6Step333ExitFOut,s6Step333ExitFvOut,s6Step333ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step333ExitGvAfter (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step333ExitF_Outgoing : rowsOwned s6Step333ExitGvAfter [s6Step333ExitFOut,s6Step333ExitFvOut,s6Step333ExitGvOut] :=
  hmrRows_owned_drop s6Step333ExitGvAfter [s6Step333ExitGOut,s6Step333ExitFOut,s6Step333ExitFvOut,s6Step333ExitGvOut] 1 s6Step333ExitBank_outgoingOwned

private theorem s6Step333ExitF_distinct : (s6Step333ExitFRow.sign::s6Step333ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333ExitF_owned : (s6Step333ExitFRow.sign::s6Step333ExitFRow.payload).toFinset⊆s6Step333ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step333ExitFBefore (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333ExitF_retired : s6Step333ExitFBefore.retireSet s6Step333ExitFExtra.toFinset=s6Step333ExitFAfter := by
  unfold Arena.retireSet s6Step333ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step333ExitFBefore,s6Step333ExitGAfter,s6Step333ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step333ExitF_checked : planRowResizeLog s6Step333ExitFBefore s6Step333ExitFRow 104 []=
    some (s6Step333ExitFAfter,s6Step333ExitFOut,shrinkRow 795 s6Step333ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step333ExitFBefore s6Step333ExitFRow 104 s6Step333ExitF_distinct s6Step333ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step333ExitFRow.payload.take 104) s6Step333ExitFRow.sign=s6Step333ExitFOut := by decide +kernel
  have hi : s6Step333ExitFRow.payload.drop 104=s6Step333ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step333ExitF_retired] at result
  exact result

private def s6Step333ExitFvAfter : Arena := s6Step333ExitFAfter

private def s6Step333ExitFvBefore : Arena := s6Step333ExitFAfter

private theorem s6Step333ExitFv_Incoming : rowsOwned s6Step333ExitFvBefore [s6Step333ExitFvRow,s6Step333ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step333ExitGRow,s6Step333ExitFRow,s6Step333ExitFvRow,s6Step333ExitGvRow] 2 s6Step333ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step333ExitFvBefore (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step333ExitFv_Outgoing : rowsOwned s6Step333ExitGvAfter [s6Step333ExitFvOut,s6Step333ExitGvOut] :=
  hmrRows_owned_drop s6Step333ExitGvAfter [s6Step333ExitGOut,s6Step333ExitFOut,s6Step333ExitFvOut,s6Step333ExitGvOut] 2 s6Step333ExitBank_outgoingOwned

private theorem s6Step333ExitFv_distinct : (s6Step333ExitFvRow.sign::s6Step333ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333ExitFv_owned : (s6Step333ExitFvRow.sign::s6Step333ExitFvRow.payload).toFinset⊆s6Step333ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step333ExitFvBefore (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333ExitFv_reserved : s6Step333ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step333ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step333ExitFv_checked : planRowResizeLog s6Step333ExitFvBefore s6Step333ExitFvRow 183 []=
    some (s6Step333ExitFvAfter,s6Step333ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step333ExitFvBefore s6Step333ExitFvAfter s6Step333ExitFvRow 183 []
    s6Step333ExitFv_distinct s6Step333ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step333ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step333ExitFvRow.payload++[]) s6Step333ExitFvRow.sign=s6Step333ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step333ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step333ExitG_Incoming : rowsOwned s6Step333ExitGBefore [s6Step333ExitGRow,s6Step333ExitFRow,s6Step333ExitFvRow,s6Step333ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step333ExitGRow,s6Step333ExitFRow,s6Step333ExitFvRow,s6Step333ExitGvRow] 0 s6Step333ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step333ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step333ExitG_Outgoing : rowsOwned s6Step333ExitGvAfter [s6Step333ExitGOut,s6Step333ExitFOut,s6Step333ExitFvOut,s6Step333ExitGvOut] :=
  hmrRows_owned_drop s6Step333ExitGvAfter [s6Step333ExitGOut,s6Step333ExitFOut,s6Step333ExitFvOut,s6Step333ExitGvOut] 0 s6Step333ExitBank_outgoingOwned

private theorem s6Step333ExitG_distinct : (s6Step333ExitGRow.sign::s6Step333ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333ExitG_owned : (s6Step333ExitGRow.sign::s6Step333ExitGRow.payload).toFinset⊆s6Step333ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step333ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333ExitG_retired : s6Step333ExitGBefore.retireSet s6Step333ExitGExtra.toFinset=s6Step333ExitGAfter := by
  unfold Arena.retireSet s6Step333ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step333ExitGBefore,s6Step333ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step333ExitG_checked : planRowResizeLog s6Step333ExitGBefore s6Step333ExitGRow 103 []=
    some (s6Step333ExitGAfter,s6Step333ExitGOut,shrinkRow 777 s6Step333ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step333ExitGBefore s6Step333ExitGRow 103 s6Step333ExitG_distinct s6Step333ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step333ExitGRow.payload.take 103) s6Step333ExitGRow.sign=s6Step333ExitGOut := by decide +kernel
  have hi : s6Step333ExitGRow.payload.drop 103=s6Step333ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step333ExitG_retired] at result
  exact result

private def s6Step333ExitGvBefore : Arena := s6Step333ExitFAfter

private theorem s6Step333ExitGv_Incoming : rowsOwned s6Step333ExitGvBefore [s6Step333ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step333ExitGRow,s6Step333ExitFRow,s6Step333ExitFvRow,s6Step333ExitGvRow] 3 s6Step333ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step333ExitGvBefore (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step333ExitGv_Outgoing : rowsOwned s6Step333ExitGvAfter [s6Step333ExitGvOut] :=
  hmrRows_owned_drop s6Step333ExitGvAfter [s6Step333ExitGOut,s6Step333ExitFOut,s6Step333ExitFvOut,s6Step333ExitGvOut] 3 s6Step333ExitBank_outgoingOwned

private theorem s6Step333ExitGv_distinct : (s6Step333ExitGvRow.sign::s6Step333ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333ExitGv_owned : (s6Step333ExitGvRow.sign::s6Step333ExitGvRow.payload).toFinset⊆s6Step333ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step333ExitGvBefore (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333ExitGv_retired : s6Step333ExitGvBefore.retireSet s6Step333ExitGvExtra.toFinset=s6Step333ExitGvAfter := by
  unfold Arena.retireSet s6Step333ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step333ExitGvBefore,s6Step333ExitFAfter,s6Step333ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step333ExitGv_checked : planRowResizeLog s6Step333ExitGvBefore s6Step333ExitGvRow 182 []=
    some (s6Step333ExitGvAfter,s6Step333ExitGvOut,shrinkRow 775 s6Step333ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step333ExitGvBefore s6Step333ExitGvRow 182 s6Step333ExitGv_distinct s6Step333ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step333ExitGvRow.payload.take 182) s6Step333ExitGvRow.sign=s6Step333ExitGvOut := by decide +kernel
  have hi : s6Step333ExitGvRow.payload.drop 182=s6Step333ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step333ExitGv_retired] at result
  exact result

private theorem s6Step333ExitBank_rows : planWindowRowsLog s6Step333ExitGBefore [(s6Step333ExitGRow,103),(s6Step333ExitFRow,104),(s6Step333ExitFvRow,183),(s6Step333ExitGvRow,182)] [[],[],[],[]]=
    some (s6Step333ExitGvAfter,[s6Step333ExitGOut,s6Step333ExitFOut,s6Step333ExitFvOut,s6Step333ExitGvOut],(shrinkRow 777 s6Step333ExitGExtra ++ (shrinkRow 795 s6Step333ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step333ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step333ExitGvAfter [] []=some (s6Step333ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step333ExitGvBefore s6Step333ExitGvAfter s6Step333ExitGvAfter
    s6Step333ExitGvRow s6Step333ExitGvOut 182 [] [] [] []
    (shrinkRow 775 s6Step333ExitGvExtra) ([]) s6Step333ExitGv_Incoming s6Step333ExitGv_checked h4 s6Step333ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step333ExitFvBefore s6Step333ExitFvAfter s6Step333ExitGvAfter
    s6Step333ExitFvRow s6Step333ExitFvOut 183 [] [(s6Step333ExitGvRow,182)] [[]] [s6Step333ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step333ExitGvExtra ++ [])) s6Step333ExitFv_Incoming s6Step333ExitFv_checked h3 s6Step333ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step333ExitFBefore s6Step333ExitFAfter s6Step333ExitGvAfter
    s6Step333ExitFRow s6Step333ExitFOut 104 [] [(s6Step333ExitFvRow,183),(s6Step333ExitGvRow,182)] [[],[]] [s6Step333ExitFvOut,s6Step333ExitGvOut]
    (shrinkRow 795 s6Step333ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step333ExitGvExtra ++ []))) s6Step333ExitF_Incoming s6Step333ExitF_checked h2 s6Step333ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step333ExitGBefore s6Step333ExitGAfter s6Step333ExitGvAfter
    s6Step333ExitGRow s6Step333ExitGOut 103 [] [(s6Step333ExitFRow,104),(s6Step333ExitFvRow,183),(s6Step333ExitGvRow,182)] [[],[],[]] [s6Step333ExitFOut,s6Step333ExitFvOut,s6Step333ExitGvOut]
    (shrinkRow 777 s6Step333ExitGExtra) ((shrinkRow 795 s6Step333ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step333ExitGvExtra ++ [])))) s6Step333ExitG_Incoming s6Step333ExitG_checked h1 s6Step333ExitG_Outgoing
  exact h0

private theorem s6Step333ExitBank_checked : compileHmrBankResizeLog .exit s6Step333ExitGBefore ⟨s6Step333ExitFRow,s6Step333ExitGRow,s6Step333ExitFvRow,s6Step333ExitGvRow⟩ ⟨104,103,183,182⟩ [[],[],[],[]]=
    some (s6Step333ExitGvAfter,⟨s6Step333ExitFOut,s6Step333ExitGOut,s6Step333ExitFvOut,s6Step333ExitGvOut⟩,(shrinkRow 777 s6Step333ExitGExtra ++ (shrinkRow 795 s6Step333ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step333ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step333ExitBank_rows]
  rfl

private theorem s6Step333Add0_apart : Disjoint s6Step333Add0Arena.live s6Step333Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step333Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333Add0_card : s6Step333Add0Arena.live.card=906 := by
  decide +kernel

private theorem s6Step333Add0_borrowed : s6Step333Add0Arena.checkBorrow (hmrHybridCount s6Step333Add0Arena s6Step333Add0B.length) s6Step333Add0Work=some s6Step333Add0During := by
  have len : s6Step333Add0Work.length=hmrHybridCount s6Step333Add0Arena s6Step333Add0B.length := by
    rw [hmrHybridCount,s6Step333Add0_card]
    decide +kernel
  have nd : s6Step333Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step333Add0Arena s6Step333Add0During s6Step333Add0Work.toFinset s6Step333Add0_bounded s6Step333Add0_apart rfl

private theorem s6Step333Add0_distinct : (903::838::843::(s6Step333Add0A++s6Step333Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333Add0_owned : (903::838::843::(s6Step333Add0A++s6Step333Add0B)).toFinset⊆s6Step333Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step333Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333Add0_checked : compileHmrHybridCinLog s6Step333Add0Arena 838 903 843 s6Step333Add0A s6Step333Add0B s6Step333Add0Work=some s6Step333Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step333Add0Arena s6Step333Add0During 838 903 843 s6Step333Add0A s6Step333Add0B s6Step333Add0Work
    (by decide +kernel) (by decide +kernel) s6Step333Add0_distinct
    (fun q hq => s6Step333Add0_owned (List.mem_toFinset.mpr hq)) s6Step333Add0_borrowed

private theorem s6Step333Add1_apart : Disjoint s6Step333Add1Arena.live s6Step333Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step333Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333Add1_card : s6Step333Add1Arena.live.card=906 := by
  decide +kernel

private theorem s6Step333Add1_borrowed : s6Step333Add1Arena.checkBorrow (hmrHybridCount s6Step333Add1Arena s6Step333Add1B.length) s6Step333Add1Work=some s6Step333Add1During := by
  have len : s6Step333Add1Work.length=hmrHybridCount s6Step333Add1Arena s6Step333Add1B.length := by
    rw [hmrHybridCount,s6Step333Add1_card]
    decide +kernel
  have nd : s6Step333Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step333Add1Arena s6Step333Add1During s6Step333Add1Work.toFinset s6Step333Add1_bounded s6Step333Add1_apart rfl

private theorem s6Step333Add1_distinct : (903::838::843::(s6Step333Add1A++s6Step333Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333Add1_owned : (903::838::843::(s6Step333Add1A++s6Step333Add1B)).toFinset⊆s6Step333Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step333Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333Add1_checked : compileHmrHybridCinLog s6Step333Add1Arena 838 903 843 s6Step333Add1A s6Step333Add1B s6Step333Add1Work=some s6Step333Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step333Add1Arena s6Step333Add1During 838 903 843 s6Step333Add1A s6Step333Add1B s6Step333Add1Work
    (by decide +kernel) (by decide +kernel) s6Step333Add1_distinct
    (fun q hq => s6Step333Add1_owned (List.mem_toFinset.mpr hq)) s6Step333Add1_borrowed

private theorem s6Step333F4_apart : Disjoint (s6Step333Add0A++s6Step333Add0B).toFinset (s6Step333Add1A++s6Step333Add1B).toFinset := by
  have nd : ((s6Step333Add0A++s6Step333Add0B)++(s6Step333Add1A++s6Step333Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step333F4_carry : s6Step333F4FlagArena.checkBorrow 1 [843]=some s6Step333Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step333F4FlagArena,s6Step333HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step333F4FlagArena,s6Step333HeadFvAfter,s6Step333Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step333F4_distinct : (874::838::903::843::((s6Step333Add0A++s6Step333Add1A)++(s6Step333Add0B++s6Step333Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333F4_flag : s6Step333HeadFvAfter.checkBorrow 1 [903]=some s6Step333F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step333HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step333F4_owned : (874::838::((s6Step333Add0A++s6Step333Add1A)++(s6Step333Add0B++s6Step333Add1B))).toFinset⊆s6Step333HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step333HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333F4_checked : compileHmrHybridF4Log s6Step333HeadFvAfter 874 838 s6Step333Add0A s6Step333Add0B s6Step333Add1A s6Step333Add1B [903] [843] s6Step333Add0Work s6Step333Add1Work=some s6Step333F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step333HeadFvAfter s6Step333F4FlagArena s6Step333Add0Arena s6Step333Add0During s6Step333Add1During 874 838
    s6Step333Add0A s6Step333Add0B s6Step333Add1A s6Step333Add1B [903] [843] s6Step333Add0Work s6Step333Add1Work
    (fun q hq => s6Step333F4_owned (List.mem_toFinset.mpr hq)) s6Step333F4_flag s6Step333F4_carry
    s6Step333F4_distinct s6Step333F4_apart s6Step333Add0_checked s6Step333Add1_checked

private theorem s6Step333Front_branch : s6Step333FrontSigmaArena.checkBorrow 1 [838]=some s6Step333HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step333FrontSigmaArena,s6Step333EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step333FrontSigmaArena,s6Step333EntryGvAfter,s6Step333HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step333Front_entry : HmrFrontEntryValid s6Step333EntryFBefore s6Step333FrontBank 104 182 ⟨104,103,183,182⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step333FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step333EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step333EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step333FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step333Front_sigma : s6Step333EntryGvAfter.checkBorrow 1 [874]=some s6Step333FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step333EntryGvAfter,arenaWires]
  · rfl

private def s6Step333HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333HeadFBefore : Arena := s6Step333HeadGAfter

private def s6Step333HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩

private def s6Step333HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794],776⟩

private def s6Step333HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],777⟩

private def s6Step333HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841],775⟩

private theorem s6Step333HeadBank_incomingDistinct : ([s6Step333HeadGRow,s6Step333HeadFRow,s6Step333HeadGvRow,s6Step333HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333HeadF_Incoming : rowsOwned s6Step333HeadFBefore [s6Step333HeadFRow,s6Step333HeadGvRow,s6Step333HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step333HeadGRow,s6Step333HeadFRow,s6Step333HeadGvRow,s6Step333HeadFvRow] 1 s6Step333HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step333HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step333HeadBank_outgoingOwned : rowsOwned s6Step333HeadFvAfter [s6Step333HeadGOut,s6Step333HeadFOut,s6Step333HeadGvOut,s6Step333HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step333HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step333HeadF_Outgoing : rowsOwned s6Step333HeadFvAfter [s6Step333HeadFOut,s6Step333HeadGvOut,s6Step333HeadFvOut] :=
  hmrRows_owned_drop s6Step333HeadFvAfter [s6Step333HeadGOut,s6Step333HeadFOut,s6Step333HeadGvOut,s6Step333HeadFvOut] 1 s6Step333HeadBank_outgoingOwned

private theorem s6Step333HeadF_distinct : (s6Step333HeadFRow.sign::s6Step333HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333HeadF_owned : (s6Step333HeadFRow.sign::s6Step333HeadFRow.payload).toFinset⊆s6Step333HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step333HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333HeadF_reserved : s6Step333HeadFBefore.reserve s6Step333HeadFFresh.toFinset=some s6Step333HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step333HeadFFresh,arenaWires]
  · norm_num [s6Step333HeadFBefore,s6Step333HeadGAfter,s6Step333HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step333HeadFAfter,s6Step333HeadFBefore,s6Step333HeadGAfter,s6Step333HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step333HeadF_checked : planRowResizeLog s6Step333HeadFBefore s6Step333HeadFRow 105 s6Step333HeadFFresh=
    some (s6Step333HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 859],795⟩,growRow 795 s6Step333HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step333HeadFBefore s6Step333HeadFAfter s6Step333HeadFRow 105 s6Step333HeadFFresh
    s6Step333HeadF_distinct s6Step333HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step333HeadF_reserved
  have rowEq : WindowRow.mk (s6Step333HeadFRow.payload++s6Step333HeadFFresh) s6Step333HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 859],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step333HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step333HeadFvBefore : Arena := s6Step333HeadGvAfter

private theorem s6Step333HeadFv_Incoming : rowsOwned s6Step333HeadFvBefore [s6Step333HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step333HeadGRow,s6Step333HeadFRow,s6Step333HeadGvRow,s6Step333HeadFvRow] 3 s6Step333HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step333HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step333HeadFv_Outgoing : rowsOwned s6Step333HeadFvAfter [s6Step333HeadFvOut] :=
  hmrRows_owned_drop s6Step333HeadFvAfter [s6Step333HeadGOut,s6Step333HeadFOut,s6Step333HeadGvOut,s6Step333HeadFvOut] 3 s6Step333HeadBank_outgoingOwned

private theorem s6Step333HeadFv_distinct : (s6Step333HeadFvRow.sign::s6Step333HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333HeadFv_owned : (s6Step333HeadFvRow.sign::s6Step333HeadFvRow.payload).toFinset⊆s6Step333HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step333HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333HeadFv_reserved : s6Step333HeadFvBefore.reserve s6Step333HeadFvFresh.toFinset=some s6Step333HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step333HeadFvFresh,arenaWires]
  · norm_num [s6Step333HeadFvBefore,s6Step333HeadGvAfter,s6Step333HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step333HeadFvAfter,s6Step333HeadFvBefore,s6Step333HeadGvAfter,s6Step333HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step333HeadFv_checked : planRowResizeLog s6Step333HeadFvBefore s6Step333HeadFvRow 183 s6Step333HeadFvFresh=
    some (s6Step333HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩,growRow 776 s6Step333HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step333HeadFvBefore s6Step333HeadFvAfter s6Step333HeadFvRow 183 s6Step333HeadFvFresh
    s6Step333HeadFv_distinct s6Step333HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step333HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step333HeadFvRow.payload++s6Step333HeadFvFresh) s6Step333HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step333HeadG_Incoming : rowsOwned s6Step333HeadGBefore [s6Step333HeadGRow,s6Step333HeadFRow,s6Step333HeadGvRow,s6Step333HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step333HeadGRow,s6Step333HeadFRow,s6Step333HeadGvRow,s6Step333HeadFvRow] 0 s6Step333HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step333HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step333HeadG_Outgoing : rowsOwned s6Step333HeadFvAfter [s6Step333HeadGOut,s6Step333HeadFOut,s6Step333HeadGvOut,s6Step333HeadFvOut] :=
  hmrRows_owned_drop s6Step333HeadFvAfter [s6Step333HeadGOut,s6Step333HeadFOut,s6Step333HeadGvOut,s6Step333HeadFvOut] 0 s6Step333HeadBank_outgoingOwned

private theorem s6Step333HeadG_distinct : (s6Step333HeadGRow.sign::s6Step333HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333HeadG_owned : (s6Step333HeadGRow.sign::s6Step333HeadGRow.payload).toFinset⊆s6Step333HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step333HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333HeadG_reserved : s6Step333HeadGBefore.reserve s6Step333HeadGFresh.toFinset=some s6Step333HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step333HeadGFresh,arenaWires]
  · norm_num [s6Step333HeadGBefore,s6Step333HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step333HeadGAfter,s6Step333HeadGBefore,s6Step333HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step333HeadG_checked : planRowResizeLog s6Step333HeadGBefore s6Step333HeadGRow 105 s6Step333HeadGFresh=
    some (s6Step333HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 907],777⟩,growRow 777 s6Step333HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step333HeadGBefore s6Step333HeadGAfter s6Step333HeadGRow 105 s6Step333HeadGFresh
    s6Step333HeadG_distinct s6Step333HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step333HeadG_reserved
  have rowEq : WindowRow.mk (s6Step333HeadGRow.payload++s6Step333HeadGFresh) s6Step333HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 907],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step333HeadGvBefore : Arena := s6Step333HeadFAfter

private theorem s6Step333HeadGv_Incoming : rowsOwned s6Step333HeadGvBefore [s6Step333HeadGvRow,s6Step333HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step333HeadGRow,s6Step333HeadFRow,s6Step333HeadGvRow,s6Step333HeadFvRow] 2 s6Step333HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step333HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step333HeadGv_Outgoing : rowsOwned s6Step333HeadFvAfter [s6Step333HeadGvOut,s6Step333HeadFvOut] :=
  hmrRows_owned_drop s6Step333HeadFvAfter [s6Step333HeadGOut,s6Step333HeadFOut,s6Step333HeadGvOut,s6Step333HeadFvOut] 2 s6Step333HeadBank_outgoingOwned

private theorem s6Step333HeadGv_distinct : (s6Step333HeadGvRow.sign::s6Step333HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step333HeadGv_owned : (s6Step333HeadGvRow.sign::s6Step333HeadGvRow.payload).toFinset⊆s6Step333HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step333HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step333HeadGv_reserved : s6Step333HeadGvBefore.reserve s6Step333HeadGvFresh.toFinset=some s6Step333HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step333HeadGvFresh,arenaWires]
  · norm_num [s6Step333HeadGvBefore,s6Step333HeadFAfter,s6Step333HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step333HeadGvAfter,s6Step333HeadGvBefore,s6Step333HeadFAfter,s6Step333HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step333HeadGv_checked : planRowResizeLog s6Step333HeadGvBefore s6Step333HeadGvRow 183 s6Step333HeadGvFresh=
    some (s6Step333HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 865],775⟩,growRow 775 s6Step333HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step333HeadGvBefore s6Step333HeadGvAfter s6Step333HeadGvRow 183 s6Step333HeadGvFresh
    s6Step333HeadGv_distinct s6Step333HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step333HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step333HeadGvRow.payload++s6Step333HeadGvFresh) s6Step333HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 865],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step333HeadBank_rows : planWindowRowsLog s6Step333HeadGBefore [(s6Step333HeadGRow,105),(s6Step333HeadFRow,105),(s6Step333HeadGvRow,183),(s6Step333HeadFvRow,183)] [s6Step333HeadGFresh,s6Step333HeadFFresh,s6Step333HeadGvFresh,s6Step333HeadFvFresh]=
    some (s6Step333HeadFvAfter,[s6Step333HeadGOut,s6Step333HeadFOut,s6Step333HeadGvOut,s6Step333HeadFvOut],(growRow 777 s6Step333HeadGFresh ++ (growRow 795 s6Step333HeadFFresh ++ (growRow 775 s6Step333HeadGvFresh ++ (growRow 776 s6Step333HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step333HeadFvAfter [] []=some (s6Step333HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step333HeadFvBefore s6Step333HeadFvAfter s6Step333HeadFvAfter
    s6Step333HeadFvRow s6Step333HeadFvOut 183 s6Step333HeadFvFresh [] [] []
    (growRow 776 s6Step333HeadFvFresh) ([]) s6Step333HeadFv_Incoming s6Step333HeadFv_checked h4 s6Step333HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step333HeadGvBefore s6Step333HeadGvAfter s6Step333HeadFvAfter
    s6Step333HeadGvRow s6Step333HeadGvOut 183 s6Step333HeadGvFresh [(s6Step333HeadFvRow,183)] [s6Step333HeadFvFresh] [s6Step333HeadFvOut]
    (growRow 775 s6Step333HeadGvFresh) ((growRow 776 s6Step333HeadFvFresh ++ [])) s6Step333HeadGv_Incoming s6Step333HeadGv_checked h3 s6Step333HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step333HeadFBefore s6Step333HeadFAfter s6Step333HeadFvAfter
    s6Step333HeadFRow s6Step333HeadFOut 105 s6Step333HeadFFresh [(s6Step333HeadGvRow,183),(s6Step333HeadFvRow,183)] [s6Step333HeadGvFresh,s6Step333HeadFvFresh] [s6Step333HeadGvOut,s6Step333HeadFvOut]
    (growRow 795 s6Step333HeadFFresh) ((growRow 775 s6Step333HeadGvFresh ++ (growRow 776 s6Step333HeadFvFresh ++ []))) s6Step333HeadF_Incoming s6Step333HeadF_checked h2 s6Step333HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step333HeadGBefore s6Step333HeadGAfter s6Step333HeadFvAfter
    s6Step333HeadGRow s6Step333HeadGOut 105 s6Step333HeadGFresh [(s6Step333HeadFRow,105),(s6Step333HeadGvRow,183),(s6Step333HeadFvRow,183)] [s6Step333HeadFFresh,s6Step333HeadGvFresh,s6Step333HeadFvFresh] [s6Step333HeadFOut,s6Step333HeadGvOut,s6Step333HeadFvOut]
    (growRow 777 s6Step333HeadGFresh) ((growRow 795 s6Step333HeadFFresh ++ (growRow 775 s6Step333HeadGvFresh ++ (growRow 776 s6Step333HeadFvFresh ++ [])))) s6Step333HeadG_Incoming s6Step333HeadG_checked h1 s6Step333HeadG_Outgoing
  exact h0

private theorem s6Step333HeadBank_checked : compileHmrBankResizeLog .headroom s6Step333HeadGBefore ⟨s6Step333HeadFRow,s6Step333HeadGRow,s6Step333HeadFvRow,s6Step333HeadGvRow⟩ ⟨105,105,183,183⟩ [s6Step333HeadGFresh,s6Step333HeadFFresh,s6Step333HeadGvFresh,s6Step333HeadFvFresh]=
    some (s6Step333HeadFvAfter,⟨s6Step333HeadFOut,s6Step333HeadGOut,s6Step333HeadFvOut,s6Step333HeadGvOut⟩,(growRow 777 s6Step333HeadGFresh ++ (growRow 795 s6Step333HeadFFresh ++ (growRow 775 s6Step333HeadGvFresh ++ (growRow 776 s6Step333HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step333HeadBank_rows]
  rfl

private theorem s6Step333Front_checked : compileHmrSourceFrontLog s6Step333EntryFBefore s6Step333FrontBank 104 182 ⟨104,103,183,182⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step333FrontLog=some s6Step333FrontPlan := by
  have pairEq : s6Step333FrontPair=⟨s6Step333HeadFRow,s6Step333HeadGRow,s6Step333HeadFvRow,s6Step333HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step333FrontHead=⟨s6Step333ExitFRow,s6Step333ExitGRow,s6Step333ExitFvRow,s6Step333ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step333Add0A=s6Step333FrontHead.f.wires := by decide +kernel
  have gEq : s6Step333Add0B=s6Step333FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step333Add1A=s6Step333FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step333Add1B=s6Step333FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step333EntryFBefore s6Step333FrontBank 104 182 ⟨104,103,183,182⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step333FrontLog s6Step333FrontPlan
  · exact s6Step333Front_entry
  · exact s6Step333EntryBank_checked
  · exact s6Step333Front_sigma
  · rfl
  · exact s6Step333Front_branch
  · rfl
  · simpa only [s6Step333FrontPlan,pairEq] using s6Step333HeadBank_checked
  · simpa only [s6Step333FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step333F4_checked
  · exact s6Step333Counter_checked
  · rfl
  · simpa only [s6Step333FrontPlan,headEq] using s6Step333ExitBank_checked

private theorem s6Step333Complete_explicit_checked : compileHmrEarlyStepLog s6Step333EntryFBefore s6Step333FrontBank 104 182 ⟨104,103,183,182⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step333CompleteLog=some s6Step333CompletePlan := by
  let Q := s6Step333EarlyControlPlan
  have hq := s6Step333EarlyControl_plan_checked
  have fv1 : s6Step333CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step333CompleteOut.fv.payload[2]?.getD s6Step333CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step333CompleteOut.fv.payload[3]?.getD s6Step333CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step333CompleteOut.fv.payload[4]?.getD s6Step333CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step333EntryFBefore s6Step333EarlyControlArena s6Step333FrontBank 104 182 ⟨104,103,183,182⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step333CompleteLog s6Step333FrontPlan Q
    s6Step333Front_checked s6Step333Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step333Complete_owned s6Step333Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step333EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 s6Step333CompleteOut.fv.second (s6Step333CompleteOut.fv.payload[2]?.getD s6Step333CompleteOut.fv.sign) (s6Step333CompleteOut.fv.payload[3]?.getD s6Step333CompleteOut.fv.sign) (s6Step333CompleteOut.fv.payload[4]?.getD s6Step333CompleteOut.fv.sign) 838 60 s6Step333EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep333Arena : Arena := s6Step333EntryFBefore
def s6PrivateStep333Bank : WindowBank := s6Step333FrontBank
def s6PrivateStep333Spec : HmrSourceWalkStepLog := ⟨104,182,⟨104,103,183,182⟩,60,.early s6Step333CompleteLog⟩
def s6PrivateStep333Plan : HmrSourceStepPlan := .early s6Step333CompletePlan
theorem s6PrivateStep333_source : s6PrivateStep333Spec=s6ObservedLogs320[13] := rfl
theorem s6PrivateStep333_checked : compileHmrSourceStepLog s6PrivateStep333Arena s6PrivateStep333Bank
    s6PrivateStep333Spec.fgWidth s6PrivateStep333Spec.vWidth s6PrivateStep333Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 333 s6PrivateStep333Spec.need none s6PrivateStep333Spec.log=some s6PrivateStep333Plan := by
  change compileHmrSourceStepLog s6Step333EntryFBefore s6Step333FrontBank 104 182 ⟨104,103,183,182⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 333 60 none (.early s6Step333CompleteLog)=some (.early s6Step333CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 333<498)]
  rw [s6Step333Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
