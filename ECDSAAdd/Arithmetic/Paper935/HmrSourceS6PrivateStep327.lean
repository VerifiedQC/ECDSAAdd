import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep325
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

private def s6Step327CompleteMoves : List (Wire × Wire) := [(907,106)]

private def s6Step327EarlyControlLog : HmrEarlyControlLog := ⟨[907, 793, 843, 862, 841],[865],[860],[805, 817, 812, 915, 906, 792],[]⟩

private def s6Step327FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [830]],[[862], [843], [793], [880]],[[], [], [], []]⟩,[854],[903],[841],[865],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[841, 865, 860, 805]⟩

private def s6Step327CompleteLog : HmrEarlyStepLog := ⟨s6Step327FrontLog,s6Step327CompleteMoves,s6Step327EarlyControlLog⟩

private def s6Step327ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362],795⟩

private def s6Step327ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩

private def s6Step327ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],777⟩

private def s6Step327ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830],775⟩

private def s6Step327FrontOut : WindowBank := ⟨s6Step327ExitFOut,s6Step327ExitGOut,s6Step327ExitFvOut,s6Step327ExitGvOut⟩

private def s6Step327CompleteOut : WindowBank := s6Step327FrontOut.repacked s6Step327CompleteMoves

private def s6Step327EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step327EarlyControlPositiveArena,[865],s6Step327EarlyControlEqualityArena,[860],⟨⟨854,false⟩,[⟨⟨865,false⟩,860⟩]⟩⟩

private def s6Step327EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,907⟩,⟨⟨772,false⟩,793⟩,⟨⟨771,false⟩,843⟩,⟨⟨770,false⟩,862⟩,⟨⟨769,false⟩,841⟩]⟩

private def s6Step327EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step327EarlyControlZeroArena,s6Step327EarlyControlZeroPlan,s6Step327EarlyControlClassPlan,s6Step327EarlyControlFlagArena,s6Step327EarlyControlFittedArena,s6Step327EarlyControlHistoryArena,s6Step327EarlyControlSigmaArena,s6Step327EarlyControlOutputArena,s6Step327EarlyControlLog⟩

private def s6Step327CounterWork : List Wire := [841, 865, 860, 805]

private theorem s6Step327Counter_bounded : s6Step327CounterWork.toFinset⊆arenaWires := by norm_num [s6Step327CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step327HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327CounterDuring : Arena := ⟨s6Step327HeadFvAfter.live∪s6Step327CounterWork.toFinset,Finset.union_subset s6Step327HeadFvAfter.bounded s6Step327Counter_bounded⟩

private def s6Step327EntryFFresh : List Wire := []

private def s6Step327EntryFvFresh : List Wire := []

private def s6Step327EntryGFresh : List Wire := []

private def s6Step327EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327EntryGvFresh : List Wire := [830]

private def s6Step327ExitFExtra : List Wire := [843]

private def s6Step327ExitGExtra : List Wire := [106, 862]

private def s6Step327ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327ExitGvExtra : List Wire := [793]

private def s6Step327Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327Add0Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step327Add0_bounded : s6Step327Add0Work.toFinset⊆arenaWires := by
  have h : s6Step327Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step327Add0During : Arena := ⟨s6Step327Add0Arena.live∪s6Step327Add0Work.toFinset,Finset.union_subset s6Step327Add0Arena.bounded s6Step327Add0_bounded⟩

private def s6Step327Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327Add1Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step327Add1_bounded : s6Step327Add1Work.toFinset⊆arenaWires := by
  have h : s6Step327Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step327Add1During : Arena := ⟨s6Step327Add1Arena.live∪s6Step327Add1Work.toFinset,Finset.union_subset s6Step327Add1Arena.bounded s6Step327Add1_bounded⟩

private def s6Step327F4FlagArena : Arena := ⟨s6Step327HeadFvAfter.live∪{841},Finset.union_subset s6Step327HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step327F4Plan : HmrHybridF4Plan := ⟨s6Step327F4FlagArena,[841],s6Step327Add0Arena,[865],s6Step327Add0During,s6Step327Add0Work,s6Step327Add1During,s6Step327Add1Work⟩

private def s6Step327HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 843],795⟩

private def s6Step327HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩

private def s6Step327HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 862],777⟩

private def s6Step327HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩

private def s6Step327FrontHead : WindowBank := ⟨s6Step327HeadFOut,s6Step327HeadGOut,s6Step327HeadFvOut,s6Step327HeadGvOut⟩

private def s6Step327EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362],795⟩

private def s6Step327EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891],776⟩

private def s6Step327EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106],777⟩

private def s6Step327EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830],775⟩

private def s6Step327FrontPair : WindowBank := ⟨s6Step327EntryFOut,s6Step327EntryGOut,s6Step327EntryFvOut,s6Step327EntryGvOut⟩

private def s6Step327FrontSigmaArena : Arena := ⟨s6Step327EntryGvAfter.live∪{854},Finset.union_subset s6Step327EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step327HeadFFresh : List Wire := [843]

private def s6Step327HeadFvFresh : List Wire := [880]

private def s6Step327HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327HeadGFresh : List Wire := [862]

private def s6Step327HeadGvFresh : List Wire := [793]

private def s6Step327FrontPlan : HmrSourceFront := ⟨s6Step327EntryGvAfter,s6Step327FrontPair,(growRow 795 s6Step327EntryFFresh ++ (growRow 777 s6Step327EntryGFresh ++ (growRow 776 s6Step327EntryFvFresh ++ (growRow 775 s6Step327EntryGvFresh ++ [])))),s6Step327FrontSigmaArena,[854],s6Step327HeadGBefore,[903],
  s6Step327HeadFvAfter,s6Step327FrontHead,(growRow 777 s6Step327HeadGFresh ++ (growRow 795 s6Step327HeadFFresh ++ (growRow 775 s6Step327HeadGvFresh ++ (growRow 776 s6Step327HeadFvFresh ++ [])))),s6Step327F4Plan,s6Step327CounterDuring,s6Step327CounterWork,s6Step327ExitGvAfter,s6Step327FrontOut,(shrinkRow 777 s6Step327ExitGExtra ++ (shrinkRow 795 s6Step327ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step327ExitGvExtra ++ []))))⟩

private def s6Step327CompletePlan : HmrEarlyStepPlan := ⟨s6Step327FrontPlan,s6Step327EarlyControlArena,s6Step327EarlyControlPlan,s6Step327CompleteMoves⟩

private theorem s6Step327Complete_apart : List.Disjoint (s6Step327CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [854, 903, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step327CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[854, 903, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step327Complete_owned : (s6Step327CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step327EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step327EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step327CompleteMoveArena : Arena := ⟨s6Step327ExitGvAfter.live∪{106},Finset.union_subset s6Step327ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step327Complete_repack : s6Step327ExitGvAfter.checkRepack s6Step327CompleteMoves=some s6Step327EarlyControlArena := by
  have owned : 907∈s6Step327ExitGvAfter.live := by norm_num [s6Step327ExitGvAfter,arenaWires]
  have reserve : s6Step327ExitGvAfter.reserve {106}=some s6Step327CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step327ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step327CompleteMoveArena.retireSet {907}=s6Step327EarlyControlArena := by
    unfold Arena.retireSet s6Step327EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step327CompleteMoveArena,s6Step327ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step327CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step327CompleteMoveArena.retireSet {907}).checkRepack []=some s6Step327EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step327EarlyControl_branchOwned : ([903] : List Wire).toFinset⊆s6Step327EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step327EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327EarlyControl_branch : compileHmrBranchRetirement s6Step327EarlyControlSigmaArena 903=some s6Step327EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step327EarlyControl_branchOwned
  · ext q
    simp [s6Step327EarlyControlOutputArena,s6Step327EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step327EarlyControl_classEqualityBorrow : s6Step327EarlyControlPositiveArena.checkBorrow (([854, 865] : List Wire).length-1) s6Step327EarlyControlLog.classWork=some s6Step327EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step327EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step327EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step327EarlyControlEqualityArena,s6Step327EarlyControlPositiveArena,s6Step327EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step327EarlyControl_classEqualityOwned : ([854, 865] : List Wire).toFinset⊆s6Step327EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step327EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327EarlyControl_classEquality : compileHmrEqualityLog s6Step327EarlyControlPositiveArena [854, 865] 0 s6Step327EarlyControlLog.classWork=some (s6Step327EarlyControlEqualityArena,s6Step327EarlyControlLog.classWork,s6Step327EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step327EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step327EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step327EarlyControl_classOwned : ([769, 841, 854] : List Wire).toFinset⊆s6Step327EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step327EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327EarlyControl_positiveBorrow : s6Step327EarlyControlZeroArena.checkBorrow (1) s6Step327EarlyControlLog.positiveWork=some s6Step327EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step327EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step327EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step327EarlyControlPositiveArena,s6Step327EarlyControlZeroArena,s6Step327EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step327EarlyControl_class : compileHmrSourceClassLog s6Step327EarlyControlZeroArena false 769 s6Step327EarlyControlZeroPlan.top 0 854 s6Step327EarlyControlLog.positiveWork s6Step327EarlyControlLog.classWork=some s6Step327EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step327EarlyControlClassPlan s6Step327EarlyControlZeroArena false 769 s6Step327EarlyControlZeroPlan.top 0 854
  constructor
  · decide +kernel
  · exact s6Step327EarlyControl_classOwned
  · exact s6Step327EarlyControl_positiveBorrow
  · exact s6Step327EarlyControl_classEquality

private theorem s6Step327EarlyControl_entryRecordOwned : ([903, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step327EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step327EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327EarlyControl_entrySigmaOwned : ([854, 254] : List Wire).toFinset⊆s6Step327EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step327EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327EarlyControl_fitBorrow : s6Step327EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step327EarlyControlLog.recordFresh=some s6Step327EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step327EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step327EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step327EarlyControlFittedArena,s6Step327EarlyControlFlagArena,s6Step327EarlyControlLog,arenaWires]

private theorem s6Step327EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step327EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step327EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327EarlyControl_fit : compileHmrRecordGrowLog s6Step327EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step327EarlyControlLog.recordFresh=some s6Step327EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step327EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step327EarlyControl_fitBorrow

private theorem s6Step327EarlyControl_flagsBorrow : s6Step327EarlyControlEqualityArena.checkBorrow (6) s6Step327EarlyControlLog.flagWork=some s6Step327EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step327EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step327EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step327EarlyControlFlagArena,s6Step327EarlyControlEqualityArena,s6Step327EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step327EarlyControl_flagsOwned : ([860, 253, 252, 251] : List Wire).toFinset⊆s6Step327EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step327EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327EarlyControl_flags : compileHmrFlagsLog s6Step327EarlyControlClassPlan.equalityArena s6Step327EarlyControlClassPlan.equality.top 253 252 251 s6Step327EarlyControlLog.flagWork=some s6Step327EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step327EarlyControl_flagsOwned⟩
  · exact s6Step327EarlyControl_flagsBorrow

private theorem s6Step327EarlyControl_historyBorrow : s6Step327EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step327EarlyControlLog.recordFresh=some s6Step327EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step327EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step327EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step327EarlyControlHistoryArena,s6Step327EarlyControlArena,s6Step327EarlyControlLog,arenaWires]

private theorem s6Step327EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step327EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step327EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327EarlyControl_history : compileHmrRecordGrowLog s6Step327EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step327EarlyControlLog.recordFresh=some s6Step327EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step327EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step327EarlyControl_historyBorrow

private theorem s6Step327EarlyControl_sigmaOwned : ([254, 854] : List Wire).toFinset⊆s6Step327EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step327EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327EarlyControl_sigmaReleaseOwned : ([854] : List Wire).toFinset⊆s6Step327EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step327EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327EarlyControl_sigmaRelease : s6Step327EarlyControlHistoryArena.release {854} (fun _ => false)=some s6Step327EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step327EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step327EarlyControlSigmaArena,s6Step327EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step327EarlyControl_sigma : compileHmrSigmaDropLog s6Step327EarlyControlHistoryArena false 0 0 254 854 []=some s6Step327EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step327EarlyControl_sigmaOwned⟩
  · exact s6Step327EarlyControl_sigmaRelease

private theorem s6Step327EarlyControl_zeroBorrow : s6Step327EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step327EarlyControlLog.zeroWork=some s6Step327EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step327EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step327EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step327EarlyControlZeroArena,s6Step327EarlyControlArena,s6Step327EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step327EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step327EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step327EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327EarlyControl_zero : compileHmrEqualityLog s6Step327EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step327EarlyControlLog.zeroWork=some (s6Step327EarlyControlZeroArena,s6Step327EarlyControlLog.zeroWork,s6Step327EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step327EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step327EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step327EarlyControl_logged : s6Step327EarlyControlPlan.Logged s6Step327EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 854 254 253 252 251 903 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step327EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step327EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step327EarlyControl_zero
  · exact s6Step327EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step327EarlyControl_flags
  · exact s6Step327EarlyControl_fit
  · exact s6Step327EarlyControl_history
  · exact s6Step327EarlyControl_sigma
  · exact s6Step327EarlyControl_branch

private theorem s6Step327EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step327EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 854 254 253 252 251 903 60 s6Step327EarlyControlLog=some s6Step327EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step327EarlyControlPlan s6Step327EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 854 254 253 252 251 903 60 s6Step327EarlyControl_logged

private def s6Step327EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362],795⟩

private def s6Step327EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891],776⟩

private def s6Step327EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106],777⟩

private def s6Step327EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810],775⟩

private def s6Step327FrontBank : WindowBank := ⟨s6Step327EntryFRow,s6Step327EntryGRow,s6Step327EntryFvRow,s6Step327EntryGvRow⟩

private def s6Step327Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 843, 795]

private def s6Step327Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 862, 777]

private def s6Step327Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 776]

private def s6Step327Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 775]

private theorem s6Step327Counter_apart : Disjoint s6Step327HeadFvAfter.live s6Step327CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step327HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327Counter_borrowed : s6Step327HeadFvAfter.checkBorrow 4 s6Step327CounterWork=some s6Step327CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step327HeadFvAfter s6Step327CounterDuring s6Step327CounterWork.toFinset s6Step327Counter_bounded s6Step327Counter_apart rfl

private theorem s6Step327Counter_owned : (854::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step327HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step327HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327Counter_checked : compileHmrCounterStepLog s6Step327HeadFvAfter true 854 [774, 773, 772, 771, 770, 769] s6Step327CounterWork=some s6Step327CounterDuring := by
  have owned : ∀q∈854::[774, 773, 772, 771, 770, 769],q∈s6Step327HeadFvAfter.live := fun q hq => s6Step327Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step327Counter_borrowed

private def s6Step327EntryFAfter : Arena := s6Step327EntryFBefore

private theorem s6Step327EntryBank_incomingDistinct : ([s6Step327EntryFRow,s6Step327EntryGRow,s6Step327EntryFvRow,s6Step327EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327EntryF_Incoming : rowsOwned s6Step327EntryFBefore [s6Step327EntryFRow,s6Step327EntryGRow,s6Step327EntryFvRow,s6Step327EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step327EntryFRow,s6Step327EntryGRow,s6Step327EntryFvRow,s6Step327EntryGvRow] 0 s6Step327EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step327EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step327EntryBank_outgoingOwned : rowsOwned s6Step327EntryGvAfter [s6Step327EntryFOut,s6Step327EntryGOut,s6Step327EntryFvOut,s6Step327EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step327EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step327EntryF_Outgoing : rowsOwned s6Step327EntryGvAfter [s6Step327EntryFOut,s6Step327EntryGOut,s6Step327EntryFvOut,s6Step327EntryGvOut] :=
  hmrRows_owned_drop s6Step327EntryGvAfter [s6Step327EntryFOut,s6Step327EntryGOut,s6Step327EntryFvOut,s6Step327EntryGvOut] 0 s6Step327EntryBank_outgoingOwned

private theorem s6Step327EntryF_distinct : (s6Step327EntryFRow.sign::s6Step327EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327EntryF_owned : (s6Step327EntryFRow.sign::s6Step327EntryFRow.payload).toFinset⊆s6Step327EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step327EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327EntryF_reserved : s6Step327EntryFBefore.reserve s6Step327EntryFFresh.toFinset=some s6Step327EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step327EntryFFresh,arenaWires]
  · norm_num [s6Step327EntryFBefore,s6Step327EntryFFresh,arenaWires]
  · simp only [s6Step327EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step327EntryF_checked : planRowResizeLog s6Step327EntryFBefore s6Step327EntryFRow 107 s6Step327EntryFFresh=
    some (s6Step327EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362],795⟩,growRow 795 s6Step327EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step327EntryFBefore s6Step327EntryFAfter s6Step327EntryFRow 107 s6Step327EntryFFresh
    s6Step327EntryF_distinct s6Step327EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step327EntryF_reserved
  have rowEq : WindowRow.mk (s6Step327EntryFRow.payload++s6Step327EntryFFresh) s6Step327EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step327EntryFvAfter : Arena := s6Step327EntryFBefore

private def s6Step327EntryFvBefore : Arena := s6Step327EntryFBefore

private theorem s6Step327EntryFv_Incoming : rowsOwned s6Step327EntryFvBefore [s6Step327EntryFvRow,s6Step327EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step327EntryFRow,s6Step327EntryGRow,s6Step327EntryFvRow,s6Step327EntryGvRow] 2 s6Step327EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step327EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step327EntryFv_Outgoing : rowsOwned s6Step327EntryGvAfter [s6Step327EntryFvOut,s6Step327EntryGvOut] :=
  hmrRows_owned_drop s6Step327EntryGvAfter [s6Step327EntryFOut,s6Step327EntryGOut,s6Step327EntryFvOut,s6Step327EntryGvOut] 2 s6Step327EntryBank_outgoingOwned

private theorem s6Step327EntryFv_distinct : (s6Step327EntryFvRow.sign::s6Step327EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327EntryFv_owned : (s6Step327EntryFvRow.sign::s6Step327EntryFvRow.payload).toFinset⊆s6Step327EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step327EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327EntryFv_reserved : s6Step327EntryFvBefore.reserve s6Step327EntryFvFresh.toFinset=some s6Step327EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step327EntryFvFresh,arenaWires]
  · norm_num [s6Step327EntryFvBefore,s6Step327EntryFBefore,s6Step327EntryFvFresh,arenaWires]
  · simp only [s6Step327EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step327EntryFv_checked : planRowResizeLog s6Step327EntryFvBefore s6Step327EntryFvRow 179 s6Step327EntryFvFresh=
    some (s6Step327EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891],776⟩,growRow 776 s6Step327EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step327EntryFvBefore s6Step327EntryFvAfter s6Step327EntryFvRow 179 s6Step327EntryFvFresh
    s6Step327EntryFv_distinct s6Step327EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step327EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step327EntryFvRow.payload++s6Step327EntryFvFresh) s6Step327EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step327EntryGAfter : Arena := s6Step327EntryFBefore

private def s6Step327EntryGBefore : Arena := s6Step327EntryFBefore

private theorem s6Step327EntryG_Incoming : rowsOwned s6Step327EntryGBefore [s6Step327EntryGRow,s6Step327EntryFvRow,s6Step327EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step327EntryFRow,s6Step327EntryGRow,s6Step327EntryFvRow,s6Step327EntryGvRow] 1 s6Step327EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step327EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step327EntryG_Outgoing : rowsOwned s6Step327EntryGvAfter [s6Step327EntryGOut,s6Step327EntryFvOut,s6Step327EntryGvOut] :=
  hmrRows_owned_drop s6Step327EntryGvAfter [s6Step327EntryFOut,s6Step327EntryGOut,s6Step327EntryFvOut,s6Step327EntryGvOut] 1 s6Step327EntryBank_outgoingOwned

private theorem s6Step327EntryG_distinct : (s6Step327EntryGRow.sign::s6Step327EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327EntryG_owned : (s6Step327EntryGRow.sign::s6Step327EntryGRow.payload).toFinset⊆s6Step327EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step327EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327EntryG_reserved : s6Step327EntryGBefore.reserve s6Step327EntryGFresh.toFinset=some s6Step327EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step327EntryGFresh,arenaWires]
  · norm_num [s6Step327EntryGBefore,s6Step327EntryFBefore,s6Step327EntryGFresh,arenaWires]
  · simp only [s6Step327EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step327EntryG_checked : planRowResizeLog s6Step327EntryGBefore s6Step327EntryGRow 107 s6Step327EntryGFresh=
    some (s6Step327EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106],777⟩,growRow 777 s6Step327EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step327EntryGBefore s6Step327EntryGAfter s6Step327EntryGRow 107 s6Step327EntryGFresh
    s6Step327EntryG_distinct s6Step327EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step327EntryG_reserved
  have rowEq : WindowRow.mk (s6Step327EntryGRow.payload++s6Step327EntryGFresh) s6Step327EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step327EntryGvBefore : Arena := s6Step327EntryFBefore

private theorem s6Step327EntryGv_Incoming : rowsOwned s6Step327EntryGvBefore [s6Step327EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step327EntryFRow,s6Step327EntryGRow,s6Step327EntryFvRow,s6Step327EntryGvRow] 3 s6Step327EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step327EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step327EntryGv_Outgoing : rowsOwned s6Step327EntryGvAfter [s6Step327EntryGvOut] :=
  hmrRows_owned_drop s6Step327EntryGvAfter [s6Step327EntryFOut,s6Step327EntryGOut,s6Step327EntryFvOut,s6Step327EntryGvOut] 3 s6Step327EntryBank_outgoingOwned

private theorem s6Step327EntryGv_distinct : (s6Step327EntryGvRow.sign::s6Step327EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327EntryGv_owned : (s6Step327EntryGvRow.sign::s6Step327EntryGvRow.payload).toFinset⊆s6Step327EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step327EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327EntryGv_reserved : s6Step327EntryGvBefore.reserve s6Step327EntryGvFresh.toFinset=some s6Step327EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step327EntryGvFresh,arenaWires]
  · norm_num [s6Step327EntryGvBefore,s6Step327EntryFBefore,s6Step327EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step327EntryGvAfter,s6Step327EntryGvBefore,s6Step327EntryFBefore,s6Step327EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step327EntryGv_checked : planRowResizeLog s6Step327EntryGvBefore s6Step327EntryGvRow 179 s6Step327EntryGvFresh=
    some (s6Step327EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830],775⟩,growRow 775 s6Step327EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step327EntryGvBefore s6Step327EntryGvAfter s6Step327EntryGvRow 179 s6Step327EntryGvFresh
    s6Step327EntryGv_distinct s6Step327EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step327EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step327EntryGvRow.payload++s6Step327EntryGvFresh) s6Step327EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step327EntryBank_rows : planWindowRowsLog s6Step327EntryFBefore [(s6Step327EntryFRow,107),(s6Step327EntryGRow,107),(s6Step327EntryFvRow,179),(s6Step327EntryGvRow,179)] [s6Step327EntryFFresh,s6Step327EntryGFresh,s6Step327EntryFvFresh,s6Step327EntryGvFresh]=
    some (s6Step327EntryGvAfter,[s6Step327EntryFOut,s6Step327EntryGOut,s6Step327EntryFvOut,s6Step327EntryGvOut],(growRow 795 s6Step327EntryFFresh ++ (growRow 777 s6Step327EntryGFresh ++ (growRow 776 s6Step327EntryFvFresh ++ (growRow 775 s6Step327EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step327EntryGvAfter [] []=some (s6Step327EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step327EntryGvBefore s6Step327EntryGvAfter s6Step327EntryGvAfter
    s6Step327EntryGvRow s6Step327EntryGvOut 179 s6Step327EntryGvFresh [] [] []
    (growRow 775 s6Step327EntryGvFresh) ([]) s6Step327EntryGv_Incoming s6Step327EntryGv_checked h4 s6Step327EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step327EntryFvBefore s6Step327EntryFvAfter s6Step327EntryGvAfter
    s6Step327EntryFvRow s6Step327EntryFvOut 179 s6Step327EntryFvFresh [(s6Step327EntryGvRow,179)] [s6Step327EntryGvFresh] [s6Step327EntryGvOut]
    (growRow 776 s6Step327EntryFvFresh) ((growRow 775 s6Step327EntryGvFresh ++ [])) s6Step327EntryFv_Incoming s6Step327EntryFv_checked h3 s6Step327EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step327EntryGBefore s6Step327EntryGAfter s6Step327EntryGvAfter
    s6Step327EntryGRow s6Step327EntryGOut 107 s6Step327EntryGFresh [(s6Step327EntryFvRow,179),(s6Step327EntryGvRow,179)] [s6Step327EntryFvFresh,s6Step327EntryGvFresh] [s6Step327EntryFvOut,s6Step327EntryGvOut]
    (growRow 777 s6Step327EntryGFresh) ((growRow 776 s6Step327EntryFvFresh ++ (growRow 775 s6Step327EntryGvFresh ++ []))) s6Step327EntryG_Incoming s6Step327EntryG_checked h2 s6Step327EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step327EntryFBefore s6Step327EntryFAfter s6Step327EntryGvAfter
    s6Step327EntryFRow s6Step327EntryFOut 107 s6Step327EntryFFresh [(s6Step327EntryGRow,107),(s6Step327EntryFvRow,179),(s6Step327EntryGvRow,179)] [s6Step327EntryGFresh,s6Step327EntryFvFresh,s6Step327EntryGvFresh] [s6Step327EntryGOut,s6Step327EntryFvOut,s6Step327EntryGvOut]
    (growRow 795 s6Step327EntryFFresh) ((growRow 777 s6Step327EntryGFresh ++ (growRow 776 s6Step327EntryFvFresh ++ (growRow 775 s6Step327EntryGvFresh ++ [])))) s6Step327EntryF_Incoming s6Step327EntryF_checked h1 s6Step327EntryF_Outgoing
  exact h0

private theorem s6Step327EntryBank_checked : compileHmrBankResizeLog .entry s6Step327EntryFBefore ⟨s6Step327EntryFRow,s6Step327EntryGRow,s6Step327EntryFvRow,s6Step327EntryGvRow⟩ ⟨107,107,179,179⟩ [s6Step327EntryFFresh,s6Step327EntryGFresh,s6Step327EntryFvFresh,s6Step327EntryGvFresh]=
    some (s6Step327EntryGvAfter,⟨s6Step327EntryFOut,s6Step327EntryGOut,s6Step327EntryFvOut,s6Step327EntryGvOut⟩,(growRow 795 s6Step327EntryFFresh ++ (growRow 777 s6Step327EntryGFresh ++ (growRow 776 s6Step327EntryFvFresh ++ (growRow 775 s6Step327EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step327EntryBank_rows]
  rfl

private def s6Step327ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327ExitFBefore : Arena := s6Step327ExitGAfter

private def s6Step327ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 843],795⟩

private def s6Step327ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩

private def s6Step327ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 862],777⟩

private def s6Step327ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩

private theorem s6Step327ExitBank_incomingDistinct : ([s6Step327ExitGRow,s6Step327ExitFRow,s6Step327ExitFvRow,s6Step327ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327ExitF_Incoming : rowsOwned s6Step327ExitFBefore [s6Step327ExitFRow,s6Step327ExitFvRow,s6Step327ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step327ExitGRow,s6Step327ExitFRow,s6Step327ExitFvRow,s6Step327ExitGvRow] 1 s6Step327ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step327ExitFBefore (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step327ExitBank_outgoingOwned : rowsOwned s6Step327ExitGvAfter [s6Step327ExitGOut,s6Step327ExitFOut,s6Step327ExitFvOut,s6Step327ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step327ExitGvAfter (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step327ExitF_Outgoing : rowsOwned s6Step327ExitGvAfter [s6Step327ExitFOut,s6Step327ExitFvOut,s6Step327ExitGvOut] :=
  hmrRows_owned_drop s6Step327ExitGvAfter [s6Step327ExitGOut,s6Step327ExitFOut,s6Step327ExitFvOut,s6Step327ExitGvOut] 1 s6Step327ExitBank_outgoingOwned

private theorem s6Step327ExitF_distinct : (s6Step327ExitFRow.sign::s6Step327ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327ExitF_owned : (s6Step327ExitFRow.sign::s6Step327ExitFRow.payload).toFinset⊆s6Step327ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step327ExitFBefore (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327ExitF_retired : s6Step327ExitFBefore.retireSet s6Step327ExitFExtra.toFinset=s6Step327ExitFAfter := by
  unfold Arena.retireSet s6Step327ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step327ExitFBefore,s6Step327ExitGAfter,s6Step327ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step327ExitF_checked : planRowResizeLog s6Step327ExitFBefore s6Step327ExitFRow 107 []=
    some (s6Step327ExitFAfter,s6Step327ExitFOut,shrinkRow 795 s6Step327ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step327ExitFBefore s6Step327ExitFRow 107 s6Step327ExitF_distinct s6Step327ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step327ExitFRow.payload.take 107) s6Step327ExitFRow.sign=s6Step327ExitFOut := by decide +kernel
  have hi : s6Step327ExitFRow.payload.drop 107=s6Step327ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step327ExitF_retired] at result
  exact result

private def s6Step327ExitFvAfter : Arena := s6Step327ExitFAfter

private def s6Step327ExitFvBefore : Arena := s6Step327ExitFAfter

private theorem s6Step327ExitFv_Incoming : rowsOwned s6Step327ExitFvBefore [s6Step327ExitFvRow,s6Step327ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step327ExitGRow,s6Step327ExitFRow,s6Step327ExitFvRow,s6Step327ExitGvRow] 2 s6Step327ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step327ExitFvBefore (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step327ExitFv_Outgoing : rowsOwned s6Step327ExitGvAfter [s6Step327ExitFvOut,s6Step327ExitGvOut] :=
  hmrRows_owned_drop s6Step327ExitGvAfter [s6Step327ExitGOut,s6Step327ExitFOut,s6Step327ExitFvOut,s6Step327ExitGvOut] 2 s6Step327ExitBank_outgoingOwned

private theorem s6Step327ExitFv_distinct : (s6Step327ExitFvRow.sign::s6Step327ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327ExitFv_owned : (s6Step327ExitFvRow.sign::s6Step327ExitFvRow.payload).toFinset⊆s6Step327ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step327ExitFvBefore (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327ExitFv_reserved : s6Step327ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step327ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step327ExitFv_checked : planRowResizeLog s6Step327ExitFvBefore s6Step327ExitFvRow 180 []=
    some (s6Step327ExitFvAfter,s6Step327ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step327ExitFvBefore s6Step327ExitFvAfter s6Step327ExitFvRow 180 []
    s6Step327ExitFv_distinct s6Step327ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step327ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step327ExitFvRow.payload++[]) s6Step327ExitFvRow.sign=s6Step327ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step327ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step327ExitG_Incoming : rowsOwned s6Step327ExitGBefore [s6Step327ExitGRow,s6Step327ExitFRow,s6Step327ExitFvRow,s6Step327ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step327ExitGRow,s6Step327ExitFRow,s6Step327ExitFvRow,s6Step327ExitGvRow] 0 s6Step327ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step327ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step327ExitG_Outgoing : rowsOwned s6Step327ExitGvAfter [s6Step327ExitGOut,s6Step327ExitFOut,s6Step327ExitFvOut,s6Step327ExitGvOut] :=
  hmrRows_owned_drop s6Step327ExitGvAfter [s6Step327ExitGOut,s6Step327ExitFOut,s6Step327ExitFvOut,s6Step327ExitGvOut] 0 s6Step327ExitBank_outgoingOwned

private theorem s6Step327ExitG_distinct : (s6Step327ExitGRow.sign::s6Step327ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327ExitG_owned : (s6Step327ExitGRow.sign::s6Step327ExitGRow.payload).toFinset⊆s6Step327ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step327ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327ExitG_retired : s6Step327ExitGBefore.retireSet s6Step327ExitGExtra.toFinset=s6Step327ExitGAfter := by
  unfold Arena.retireSet s6Step327ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step327ExitGBefore,s6Step327ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step327ExitG_checked : planRowResizeLog s6Step327ExitGBefore s6Step327ExitGRow 106 []=
    some (s6Step327ExitGAfter,s6Step327ExitGOut,shrinkRow 777 s6Step327ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step327ExitGBefore s6Step327ExitGRow 106 s6Step327ExitG_distinct s6Step327ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step327ExitGRow.payload.take 106) s6Step327ExitGRow.sign=s6Step327ExitGOut := by decide +kernel
  have hi : s6Step327ExitGRow.payload.drop 106=s6Step327ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step327ExitG_retired] at result
  exact result

private def s6Step327ExitGvBefore : Arena := s6Step327ExitFAfter

private theorem s6Step327ExitGv_Incoming : rowsOwned s6Step327ExitGvBefore [s6Step327ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step327ExitGRow,s6Step327ExitFRow,s6Step327ExitFvRow,s6Step327ExitGvRow] 3 s6Step327ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step327ExitGvBefore (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step327ExitGv_Outgoing : rowsOwned s6Step327ExitGvAfter [s6Step327ExitGvOut] :=
  hmrRows_owned_drop s6Step327ExitGvAfter [s6Step327ExitGOut,s6Step327ExitFOut,s6Step327ExitFvOut,s6Step327ExitGvOut] 3 s6Step327ExitBank_outgoingOwned

private theorem s6Step327ExitGv_distinct : (s6Step327ExitGvRow.sign::s6Step327ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327ExitGv_owned : (s6Step327ExitGvRow.sign::s6Step327ExitGvRow.payload).toFinset⊆s6Step327ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step327ExitGvBefore (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327ExitGv_retired : s6Step327ExitGvBefore.retireSet s6Step327ExitGvExtra.toFinset=s6Step327ExitGvAfter := by
  unfold Arena.retireSet s6Step327ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step327ExitGvBefore,s6Step327ExitFAfter,s6Step327ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step327ExitGv_checked : planRowResizeLog s6Step327ExitGvBefore s6Step327ExitGvRow 179 []=
    some (s6Step327ExitGvAfter,s6Step327ExitGvOut,shrinkRow 775 s6Step327ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step327ExitGvBefore s6Step327ExitGvRow 179 s6Step327ExitGv_distinct s6Step327ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step327ExitGvRow.payload.take 179) s6Step327ExitGvRow.sign=s6Step327ExitGvOut := by decide +kernel
  have hi : s6Step327ExitGvRow.payload.drop 179=s6Step327ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step327ExitGv_retired] at result
  exact result

private theorem s6Step327ExitBank_rows : planWindowRowsLog s6Step327ExitGBefore [(s6Step327ExitGRow,106),(s6Step327ExitFRow,107),(s6Step327ExitFvRow,180),(s6Step327ExitGvRow,179)] [[],[],[],[]]=
    some (s6Step327ExitGvAfter,[s6Step327ExitGOut,s6Step327ExitFOut,s6Step327ExitFvOut,s6Step327ExitGvOut],(shrinkRow 777 s6Step327ExitGExtra ++ (shrinkRow 795 s6Step327ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step327ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step327ExitGvAfter [] []=some (s6Step327ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step327ExitGvBefore s6Step327ExitGvAfter s6Step327ExitGvAfter
    s6Step327ExitGvRow s6Step327ExitGvOut 179 [] [] [] []
    (shrinkRow 775 s6Step327ExitGvExtra) ([]) s6Step327ExitGv_Incoming s6Step327ExitGv_checked h4 s6Step327ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step327ExitFvBefore s6Step327ExitFvAfter s6Step327ExitGvAfter
    s6Step327ExitFvRow s6Step327ExitFvOut 180 [] [(s6Step327ExitGvRow,179)] [[]] [s6Step327ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step327ExitGvExtra ++ [])) s6Step327ExitFv_Incoming s6Step327ExitFv_checked h3 s6Step327ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step327ExitFBefore s6Step327ExitFAfter s6Step327ExitGvAfter
    s6Step327ExitFRow s6Step327ExitFOut 107 [] [(s6Step327ExitFvRow,180),(s6Step327ExitGvRow,179)] [[],[]] [s6Step327ExitFvOut,s6Step327ExitGvOut]
    (shrinkRow 795 s6Step327ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step327ExitGvExtra ++ []))) s6Step327ExitF_Incoming s6Step327ExitF_checked h2 s6Step327ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step327ExitGBefore s6Step327ExitGAfter s6Step327ExitGvAfter
    s6Step327ExitGRow s6Step327ExitGOut 106 [] [(s6Step327ExitFRow,107),(s6Step327ExitFvRow,180),(s6Step327ExitGvRow,179)] [[],[],[]] [s6Step327ExitFOut,s6Step327ExitFvOut,s6Step327ExitGvOut]
    (shrinkRow 777 s6Step327ExitGExtra) ((shrinkRow 795 s6Step327ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step327ExitGvExtra ++ [])))) s6Step327ExitG_Incoming s6Step327ExitG_checked h1 s6Step327ExitG_Outgoing
  exact h0

private theorem s6Step327ExitBank_checked : compileHmrBankResizeLog .exit s6Step327ExitGBefore ⟨s6Step327ExitFRow,s6Step327ExitGRow,s6Step327ExitFvRow,s6Step327ExitGvRow⟩ ⟨107,106,180,179⟩ [[],[],[],[]]=
    some (s6Step327ExitGvAfter,⟨s6Step327ExitFOut,s6Step327ExitGOut,s6Step327ExitFvOut,s6Step327ExitGvOut⟩,(shrinkRow 777 s6Step327ExitGExtra ++ (shrinkRow 795 s6Step327ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step327ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step327ExitBank_rows]
  rfl

private theorem s6Step327Add0_apart : Disjoint s6Step327Add0Arena.live s6Step327Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step327Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327Add0_card : s6Step327Add0Arena.live.card=906 := by
  decide +kernel

private theorem s6Step327Add0_borrowed : s6Step327Add0Arena.checkBorrow (hmrHybridCount s6Step327Add0Arena s6Step327Add0B.length) s6Step327Add0Work=some s6Step327Add0During := by
  have len : s6Step327Add0Work.length=hmrHybridCount s6Step327Add0Arena s6Step327Add0B.length := by
    rw [hmrHybridCount,s6Step327Add0_card]
    decide +kernel
  have nd : s6Step327Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step327Add0Arena s6Step327Add0During s6Step327Add0Work.toFinset s6Step327Add0_bounded s6Step327Add0_apart rfl

private theorem s6Step327Add0_distinct : (841::903::865::(s6Step327Add0A++s6Step327Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327Add0_owned : (841::903::865::(s6Step327Add0A++s6Step327Add0B)).toFinset⊆s6Step327Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step327Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327Add0_checked : compileHmrHybridCinLog s6Step327Add0Arena 903 841 865 s6Step327Add0A s6Step327Add0B s6Step327Add0Work=some s6Step327Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step327Add0Arena s6Step327Add0During 903 841 865 s6Step327Add0A s6Step327Add0B s6Step327Add0Work
    (by decide +kernel) (by decide +kernel) s6Step327Add0_distinct
    (fun q hq => s6Step327Add0_owned (List.mem_toFinset.mpr hq)) s6Step327Add0_borrowed

private theorem s6Step327Add1_apart : Disjoint s6Step327Add1Arena.live s6Step327Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step327Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327Add1_card : s6Step327Add1Arena.live.card=906 := by
  decide +kernel

private theorem s6Step327Add1_borrowed : s6Step327Add1Arena.checkBorrow (hmrHybridCount s6Step327Add1Arena s6Step327Add1B.length) s6Step327Add1Work=some s6Step327Add1During := by
  have len : s6Step327Add1Work.length=hmrHybridCount s6Step327Add1Arena s6Step327Add1B.length := by
    rw [hmrHybridCount,s6Step327Add1_card]
    decide +kernel
  have nd : s6Step327Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step327Add1Arena s6Step327Add1During s6Step327Add1Work.toFinset s6Step327Add1_bounded s6Step327Add1_apart rfl

private theorem s6Step327Add1_distinct : (841::903::865::(s6Step327Add1A++s6Step327Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327Add1_owned : (841::903::865::(s6Step327Add1A++s6Step327Add1B)).toFinset⊆s6Step327Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step327Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327Add1_checked : compileHmrHybridCinLog s6Step327Add1Arena 903 841 865 s6Step327Add1A s6Step327Add1B s6Step327Add1Work=some s6Step327Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step327Add1Arena s6Step327Add1During 903 841 865 s6Step327Add1A s6Step327Add1B s6Step327Add1Work
    (by decide +kernel) (by decide +kernel) s6Step327Add1_distinct
    (fun q hq => s6Step327Add1_owned (List.mem_toFinset.mpr hq)) s6Step327Add1_borrowed

private theorem s6Step327F4_apart : Disjoint (s6Step327Add0A++s6Step327Add0B).toFinset (s6Step327Add1A++s6Step327Add1B).toFinset := by
  have nd : ((s6Step327Add0A++s6Step327Add0B)++(s6Step327Add1A++s6Step327Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step327F4_carry : s6Step327F4FlagArena.checkBorrow 1 [865]=some s6Step327Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step327F4FlagArena,s6Step327HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step327F4FlagArena,s6Step327HeadFvAfter,s6Step327Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step327F4_distinct : (854::903::841::865::((s6Step327Add0A++s6Step327Add1A)++(s6Step327Add0B++s6Step327Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327F4_flag : s6Step327HeadFvAfter.checkBorrow 1 [841]=some s6Step327F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step327HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step327F4_owned : (854::903::((s6Step327Add0A++s6Step327Add1A)++(s6Step327Add0B++s6Step327Add1B))).toFinset⊆s6Step327HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step327HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327F4_checked : compileHmrHybridF4Log s6Step327HeadFvAfter 854 903 s6Step327Add0A s6Step327Add0B s6Step327Add1A s6Step327Add1B [841] [865] s6Step327Add0Work s6Step327Add1Work=some s6Step327F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step327HeadFvAfter s6Step327F4FlagArena s6Step327Add0Arena s6Step327Add0During s6Step327Add1During 854 903
    s6Step327Add0A s6Step327Add0B s6Step327Add1A s6Step327Add1B [841] [865] s6Step327Add0Work s6Step327Add1Work
    (fun q hq => s6Step327F4_owned (List.mem_toFinset.mpr hq)) s6Step327F4_flag s6Step327F4_carry
    s6Step327F4_distinct s6Step327F4_apart s6Step327Add0_checked s6Step327Add1_checked

private theorem s6Step327Front_branch : s6Step327FrontSigmaArena.checkBorrow 1 [903]=some s6Step327HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step327FrontSigmaArena,s6Step327EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step327FrontSigmaArena,s6Step327EntryGvAfter,s6Step327HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step327Front_entry : HmrFrontEntryValid s6Step327EntryFBefore s6Step327FrontBank 107 179 ⟨107,106,180,179⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step327FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step327EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step327EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step327FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step327Front_sigma : s6Step327EntryGvAfter.checkBorrow 1 [854]=some s6Step327FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step327EntryGvAfter,arenaWires]
  · rfl

private def s6Step327HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327HeadFBefore : Arena := s6Step327HeadGAfter

private def s6Step327HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362],795⟩

private def s6Step327HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891],776⟩

private def s6Step327HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106],777⟩

private def s6Step327HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830],775⟩

private theorem s6Step327HeadBank_incomingDistinct : ([s6Step327HeadGRow,s6Step327HeadFRow,s6Step327HeadGvRow,s6Step327HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327HeadF_Incoming : rowsOwned s6Step327HeadFBefore [s6Step327HeadFRow,s6Step327HeadGvRow,s6Step327HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step327HeadGRow,s6Step327HeadFRow,s6Step327HeadGvRow,s6Step327HeadFvRow] 1 s6Step327HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step327HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step327HeadBank_outgoingOwned : rowsOwned s6Step327HeadFvAfter [s6Step327HeadGOut,s6Step327HeadFOut,s6Step327HeadGvOut,s6Step327HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step327HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step327HeadF_Outgoing : rowsOwned s6Step327HeadFvAfter [s6Step327HeadFOut,s6Step327HeadGvOut,s6Step327HeadFvOut] :=
  hmrRows_owned_drop s6Step327HeadFvAfter [s6Step327HeadGOut,s6Step327HeadFOut,s6Step327HeadGvOut,s6Step327HeadFvOut] 1 s6Step327HeadBank_outgoingOwned

private theorem s6Step327HeadF_distinct : (s6Step327HeadFRow.sign::s6Step327HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327HeadF_owned : (s6Step327HeadFRow.sign::s6Step327HeadFRow.payload).toFinset⊆s6Step327HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step327HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327HeadF_reserved : s6Step327HeadFBefore.reserve s6Step327HeadFFresh.toFinset=some s6Step327HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step327HeadFFresh,arenaWires]
  · norm_num [s6Step327HeadFBefore,s6Step327HeadGAfter,s6Step327HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step327HeadFAfter,s6Step327HeadFBefore,s6Step327HeadGAfter,s6Step327HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step327HeadF_checked : planRowResizeLog s6Step327HeadFBefore s6Step327HeadFRow 108 s6Step327HeadFFresh=
    some (s6Step327HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 843],795⟩,growRow 795 s6Step327HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step327HeadFBefore s6Step327HeadFAfter s6Step327HeadFRow 108 s6Step327HeadFFresh
    s6Step327HeadF_distinct s6Step327HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step327HeadF_reserved
  have rowEq : WindowRow.mk (s6Step327HeadFRow.payload++s6Step327HeadFFresh) s6Step327HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 843],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step327HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step327HeadFvBefore : Arena := s6Step327HeadGvAfter

private theorem s6Step327HeadFv_Incoming : rowsOwned s6Step327HeadFvBefore [s6Step327HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step327HeadGRow,s6Step327HeadFRow,s6Step327HeadGvRow,s6Step327HeadFvRow] 3 s6Step327HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step327HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step327HeadFv_Outgoing : rowsOwned s6Step327HeadFvAfter [s6Step327HeadFvOut] :=
  hmrRows_owned_drop s6Step327HeadFvAfter [s6Step327HeadGOut,s6Step327HeadFOut,s6Step327HeadGvOut,s6Step327HeadFvOut] 3 s6Step327HeadBank_outgoingOwned

private theorem s6Step327HeadFv_distinct : (s6Step327HeadFvRow.sign::s6Step327HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327HeadFv_owned : (s6Step327HeadFvRow.sign::s6Step327HeadFvRow.payload).toFinset⊆s6Step327HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step327HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327HeadFv_reserved : s6Step327HeadFvBefore.reserve s6Step327HeadFvFresh.toFinset=some s6Step327HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step327HeadFvFresh,arenaWires]
  · norm_num [s6Step327HeadFvBefore,s6Step327HeadGvAfter,s6Step327HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step327HeadFvAfter,s6Step327HeadFvBefore,s6Step327HeadGvAfter,s6Step327HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step327HeadFv_checked : planRowResizeLog s6Step327HeadFvBefore s6Step327HeadFvRow 180 s6Step327HeadFvFresh=
    some (s6Step327HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩,growRow 776 s6Step327HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step327HeadFvBefore s6Step327HeadFvAfter s6Step327HeadFvRow 180 s6Step327HeadFvFresh
    s6Step327HeadFv_distinct s6Step327HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step327HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step327HeadFvRow.payload++s6Step327HeadFvFresh) s6Step327HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step327HeadG_Incoming : rowsOwned s6Step327HeadGBefore [s6Step327HeadGRow,s6Step327HeadFRow,s6Step327HeadGvRow,s6Step327HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step327HeadGRow,s6Step327HeadFRow,s6Step327HeadGvRow,s6Step327HeadFvRow] 0 s6Step327HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step327HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step327HeadG_Outgoing : rowsOwned s6Step327HeadFvAfter [s6Step327HeadGOut,s6Step327HeadFOut,s6Step327HeadGvOut,s6Step327HeadFvOut] :=
  hmrRows_owned_drop s6Step327HeadFvAfter [s6Step327HeadGOut,s6Step327HeadFOut,s6Step327HeadGvOut,s6Step327HeadFvOut] 0 s6Step327HeadBank_outgoingOwned

private theorem s6Step327HeadG_distinct : (s6Step327HeadGRow.sign::s6Step327HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327HeadG_owned : (s6Step327HeadGRow.sign::s6Step327HeadGRow.payload).toFinset⊆s6Step327HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step327HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327HeadG_reserved : s6Step327HeadGBefore.reserve s6Step327HeadGFresh.toFinset=some s6Step327HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step327HeadGFresh,arenaWires]
  · norm_num [s6Step327HeadGBefore,s6Step327HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step327HeadGAfter,s6Step327HeadGBefore,s6Step327HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step327HeadG_checked : planRowResizeLog s6Step327HeadGBefore s6Step327HeadGRow 108 s6Step327HeadGFresh=
    some (s6Step327HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 862],777⟩,growRow 777 s6Step327HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step327HeadGBefore s6Step327HeadGAfter s6Step327HeadGRow 108 s6Step327HeadGFresh
    s6Step327HeadG_distinct s6Step327HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step327HeadG_reserved
  have rowEq : WindowRow.mk (s6Step327HeadGRow.payload++s6Step327HeadGFresh) s6Step327HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 862],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step327HeadGvBefore : Arena := s6Step327HeadFAfter

private theorem s6Step327HeadGv_Incoming : rowsOwned s6Step327HeadGvBefore [s6Step327HeadGvRow,s6Step327HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step327HeadGRow,s6Step327HeadFRow,s6Step327HeadGvRow,s6Step327HeadFvRow] 2 s6Step327HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step327HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step327HeadGv_Outgoing : rowsOwned s6Step327HeadFvAfter [s6Step327HeadGvOut,s6Step327HeadFvOut] :=
  hmrRows_owned_drop s6Step327HeadFvAfter [s6Step327HeadGOut,s6Step327HeadFOut,s6Step327HeadGvOut,s6Step327HeadFvOut] 2 s6Step327HeadBank_outgoingOwned

private theorem s6Step327HeadGv_distinct : (s6Step327HeadGvRow.sign::s6Step327HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step327HeadGv_owned : (s6Step327HeadGvRow.sign::s6Step327HeadGvRow.payload).toFinset⊆s6Step327HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step327HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step327HeadGv_reserved : s6Step327HeadGvBefore.reserve s6Step327HeadGvFresh.toFinset=some s6Step327HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step327HeadGvFresh,arenaWires]
  · norm_num [s6Step327HeadGvBefore,s6Step327HeadFAfter,s6Step327HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step327HeadGvAfter,s6Step327HeadGvBefore,s6Step327HeadFAfter,s6Step327HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step327HeadGv_checked : planRowResizeLog s6Step327HeadGvBefore s6Step327HeadGvRow 180 s6Step327HeadGvFresh=
    some (s6Step327HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩,growRow 775 s6Step327HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step327HeadGvBefore s6Step327HeadGvAfter s6Step327HeadGvRow 180 s6Step327HeadGvFresh
    s6Step327HeadGv_distinct s6Step327HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step327HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step327HeadGvRow.payload++s6Step327HeadGvFresh) s6Step327HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step327HeadBank_rows : planWindowRowsLog s6Step327HeadGBefore [(s6Step327HeadGRow,108),(s6Step327HeadFRow,108),(s6Step327HeadGvRow,180),(s6Step327HeadFvRow,180)] [s6Step327HeadGFresh,s6Step327HeadFFresh,s6Step327HeadGvFresh,s6Step327HeadFvFresh]=
    some (s6Step327HeadFvAfter,[s6Step327HeadGOut,s6Step327HeadFOut,s6Step327HeadGvOut,s6Step327HeadFvOut],(growRow 777 s6Step327HeadGFresh ++ (growRow 795 s6Step327HeadFFresh ++ (growRow 775 s6Step327HeadGvFresh ++ (growRow 776 s6Step327HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step327HeadFvAfter [] []=some (s6Step327HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step327HeadFvBefore s6Step327HeadFvAfter s6Step327HeadFvAfter
    s6Step327HeadFvRow s6Step327HeadFvOut 180 s6Step327HeadFvFresh [] [] []
    (growRow 776 s6Step327HeadFvFresh) ([]) s6Step327HeadFv_Incoming s6Step327HeadFv_checked h4 s6Step327HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step327HeadGvBefore s6Step327HeadGvAfter s6Step327HeadFvAfter
    s6Step327HeadGvRow s6Step327HeadGvOut 180 s6Step327HeadGvFresh [(s6Step327HeadFvRow,180)] [s6Step327HeadFvFresh] [s6Step327HeadFvOut]
    (growRow 775 s6Step327HeadGvFresh) ((growRow 776 s6Step327HeadFvFresh ++ [])) s6Step327HeadGv_Incoming s6Step327HeadGv_checked h3 s6Step327HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step327HeadFBefore s6Step327HeadFAfter s6Step327HeadFvAfter
    s6Step327HeadFRow s6Step327HeadFOut 108 s6Step327HeadFFresh [(s6Step327HeadGvRow,180),(s6Step327HeadFvRow,180)] [s6Step327HeadGvFresh,s6Step327HeadFvFresh] [s6Step327HeadGvOut,s6Step327HeadFvOut]
    (growRow 795 s6Step327HeadFFresh) ((growRow 775 s6Step327HeadGvFresh ++ (growRow 776 s6Step327HeadFvFresh ++ []))) s6Step327HeadF_Incoming s6Step327HeadF_checked h2 s6Step327HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step327HeadGBefore s6Step327HeadGAfter s6Step327HeadFvAfter
    s6Step327HeadGRow s6Step327HeadGOut 108 s6Step327HeadGFresh [(s6Step327HeadFRow,108),(s6Step327HeadGvRow,180),(s6Step327HeadFvRow,180)] [s6Step327HeadFFresh,s6Step327HeadGvFresh,s6Step327HeadFvFresh] [s6Step327HeadFOut,s6Step327HeadGvOut,s6Step327HeadFvOut]
    (growRow 777 s6Step327HeadGFresh) ((growRow 795 s6Step327HeadFFresh ++ (growRow 775 s6Step327HeadGvFresh ++ (growRow 776 s6Step327HeadFvFresh ++ [])))) s6Step327HeadG_Incoming s6Step327HeadG_checked h1 s6Step327HeadG_Outgoing
  exact h0

private theorem s6Step327HeadBank_checked : compileHmrBankResizeLog .headroom s6Step327HeadGBefore ⟨s6Step327HeadFRow,s6Step327HeadGRow,s6Step327HeadFvRow,s6Step327HeadGvRow⟩ ⟨108,108,180,180⟩ [s6Step327HeadGFresh,s6Step327HeadFFresh,s6Step327HeadGvFresh,s6Step327HeadFvFresh]=
    some (s6Step327HeadFvAfter,⟨s6Step327HeadFOut,s6Step327HeadGOut,s6Step327HeadFvOut,s6Step327HeadGvOut⟩,(growRow 777 s6Step327HeadGFresh ++ (growRow 795 s6Step327HeadFFresh ++ (growRow 775 s6Step327HeadGvFresh ++ (growRow 776 s6Step327HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step327HeadBank_rows]
  rfl

private theorem s6Step327Front_checked : compileHmrSourceFrontLog s6Step327EntryFBefore s6Step327FrontBank 107 179 ⟨107,106,180,179⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step327FrontLog=some s6Step327FrontPlan := by
  have pairEq : s6Step327FrontPair=⟨s6Step327HeadFRow,s6Step327HeadGRow,s6Step327HeadFvRow,s6Step327HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step327FrontHead=⟨s6Step327ExitFRow,s6Step327ExitGRow,s6Step327ExitFvRow,s6Step327ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step327Add0A=s6Step327FrontHead.f.wires := by decide +kernel
  have gEq : s6Step327Add0B=s6Step327FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step327Add1A=s6Step327FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step327Add1B=s6Step327FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step327EntryFBefore s6Step327FrontBank 107 179 ⟨107,106,180,179⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step327FrontLog s6Step327FrontPlan
  · exact s6Step327Front_entry
  · exact s6Step327EntryBank_checked
  · exact s6Step327Front_sigma
  · rfl
  · exact s6Step327Front_branch
  · rfl
  · simpa only [s6Step327FrontPlan,pairEq] using s6Step327HeadBank_checked
  · simpa only [s6Step327FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step327F4_checked
  · exact s6Step327Counter_checked
  · rfl
  · simpa only [s6Step327FrontPlan,headEq] using s6Step327ExitBank_checked

private theorem s6Step327Complete_explicit_checked : compileHmrEarlyStepLog s6Step327EntryFBefore s6Step327FrontBank 107 179 ⟨107,106,180,179⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step327CompleteLog=some s6Step327CompletePlan := by
  let Q := s6Step327EarlyControlPlan
  have hq := s6Step327EarlyControl_plan_checked
  have fv1 : s6Step327CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step327CompleteOut.fv.payload[2]?.getD s6Step327CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step327CompleteOut.fv.payload[3]?.getD s6Step327CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step327CompleteOut.fv.payload[4]?.getD s6Step327CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step327EntryFBefore s6Step327EarlyControlArena s6Step327FrontBank 107 179 ⟨107,106,180,179⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step327CompleteLog s6Step327FrontPlan Q
    s6Step327Front_checked s6Step327Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step327Complete_owned s6Step327Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step327EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 854 s6Step327CompleteOut.fv.second (s6Step327CompleteOut.fv.payload[2]?.getD s6Step327CompleteOut.fv.sign) (s6Step327CompleteOut.fv.payload[3]?.getD s6Step327CompleteOut.fv.sign) (s6Step327CompleteOut.fv.payload[4]?.getD s6Step327CompleteOut.fv.sign) 903 60 s6Step327EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep327Arena : Arena := s6Step327EntryFBefore
def s6PrivateStep327Bank : WindowBank := s6Step327FrontBank
def s6PrivateStep327Spec : HmrSourceWalkStepLog := ⟨107,179,⟨107,106,180,179⟩,60,.early s6Step327CompleteLog⟩
def s6PrivateStep327Plan : HmrSourceStepPlan := .early s6Step327CompletePlan
theorem s6PrivateStep327_source : s6PrivateStep327Spec=s6ObservedLogs320[7] := rfl
theorem s6PrivateStep327_checked : compileHmrSourceStepLog s6PrivateStep327Arena s6PrivateStep327Bank
    s6PrivateStep327Spec.fgWidth s6PrivateStep327Spec.vWidth s6PrivateStep327Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 327 s6PrivateStep327Spec.need none s6PrivateStep327Spec.log=some s6PrivateStep327Plan := by
  change compileHmrSourceStepLog s6Step327EntryFBefore s6Step327FrontBank 107 179 ⟨107,106,180,179⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 327 60 none (.early s6Step327CompleteLog)=some (.early s6Step327CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 327<498)]
  rw [s6Step327Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
