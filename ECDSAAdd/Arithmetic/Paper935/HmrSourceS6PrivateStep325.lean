import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep323
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

private def s6Step325CompleteMoves : List (Wire × Wire) := []

private def s6Step325EarlyControlLog : HmrEarlyControlLog := ⟨[880, 793, 843, 891, 841],[865],[860],[805, 817, 812, 915, 906, 792],[]⟩

private def s6Step325FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [810]],[[891], [843], [880], [793]],[[], [], [], []]⟩,[830],[854],[841],[865],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[841, 865, 860, 805]⟩

private def s6Step325CompleteLog : HmrEarlyStepLog := ⟨s6Step325FrontLog,s6Step325CompleteMoves,s6Step325EarlyControlLog⟩

private def s6Step325ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363],795⟩

private def s6Step325ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩

private def s6Step325ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],777⟩

private def s6Step325ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810],775⟩

private def s6Step325FrontOut : WindowBank := ⟨s6Step325ExitFOut,s6Step325ExitGOut,s6Step325ExitFvOut,s6Step325ExitGvOut⟩

private def s6Step325CompleteOut : WindowBank := s6Step325FrontOut.repacked s6Step325CompleteMoves

private def s6Step325EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step325EarlyControlPositiveArena,[865],s6Step325EarlyControlEqualityArena,[860],⟨⟨830,false⟩,[⟨⟨865,false⟩,860⟩]⟩⟩

private def s6Step325EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,880⟩,⟨⟨772,false⟩,793⟩,⟨⟨771,false⟩,843⟩,⟨⟨770,false⟩,891⟩,⟨⟨769,false⟩,841⟩]⟩

private def s6Step325EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step325EarlyControlZeroArena,s6Step325EarlyControlZeroPlan,s6Step325EarlyControlClassPlan,s6Step325EarlyControlFlagArena,s6Step325EarlyControlFittedArena,s6Step325EarlyControlHistoryArena,s6Step325EarlyControlSigmaArena,s6Step325EarlyControlOutputArena,s6Step325EarlyControlLog⟩

private def s6Step325CounterWork : List Wire := [841, 865, 860, 805]

private theorem s6Step325Counter_bounded : s6Step325CounterWork.toFinset⊆arenaWires := by norm_num [s6Step325CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step325HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325CounterDuring : Arena := ⟨s6Step325HeadFvAfter.live∪s6Step325CounterWork.toFinset,Finset.union_subset s6Step325HeadFvAfter.bounded s6Step325Counter_bounded⟩

private def s6Step325EntryFFresh : List Wire := []

private def s6Step325EntryFvFresh : List Wire := []

private def s6Step325EntryGFresh : List Wire := []

private def s6Step325EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325EntryGvFresh : List Wire := [810]

private def s6Step325ExitFExtra : List Wire := [843]

private def s6Step325ExitFvExtra : List Wire := [793]

private def s6Step325ExitGExtra : List Wire := [891]

private def s6Step325ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325ExitGvExtra : List Wire := [880]

private def s6Step325Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325Add0Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step325Add0_bounded : s6Step325Add0Work.toFinset⊆arenaWires := by
  have h : s6Step325Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step325Add0During : Arena := ⟨s6Step325Add0Arena.live∪s6Step325Add0Work.toFinset,Finset.union_subset s6Step325Add0Arena.bounded s6Step325Add0_bounded⟩

private def s6Step325Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325Add1Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step325Add1_bounded : s6Step325Add1Work.toFinset⊆arenaWires := by
  have h : s6Step325Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step325Add1During : Arena := ⟨s6Step325Add1Arena.live∪s6Step325Add1Work.toFinset,Finset.union_subset s6Step325Add1Arena.bounded s6Step325Add1_bounded⟩

private def s6Step325F4FlagArena : Arena := ⟨s6Step325HeadFvAfter.live∪{841},Finset.union_subset s6Step325HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step325F4Plan : HmrHybridF4Plan := ⟨s6Step325F4FlagArena,[841],s6Step325Add0Arena,[865],s6Step325Add0During,s6Step325Add0Work,s6Step325Add1During,s6Step325Add1Work⟩

private def s6Step325HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 843],795⟩

private def s6Step325HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 793],776⟩

private def s6Step325HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 891],777⟩

private def s6Step325HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 880],775⟩

private def s6Step325FrontHead : WindowBank := ⟨s6Step325HeadFOut,s6Step325HeadGOut,s6Step325HeadFvOut,s6Step325HeadGvOut⟩

private def s6Step325EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363],795⟩

private def s6Step325EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩

private def s6Step325EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],777⟩

private def s6Step325EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810],775⟩

private def s6Step325FrontPair : WindowBank := ⟨s6Step325EntryFOut,s6Step325EntryGOut,s6Step325EntryFvOut,s6Step325EntryGvOut⟩

private def s6Step325FrontSigmaArena : Arena := ⟨s6Step325EntryGvAfter.live∪{830},Finset.union_subset s6Step325EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step325HeadFFresh : List Wire := [843]

private def s6Step325HeadFvFresh : List Wire := [793]

private def s6Step325HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325HeadGFresh : List Wire := [891]

private def s6Step325HeadGvFresh : List Wire := [880]

private def s6Step325FrontPlan : HmrSourceFront := ⟨s6Step325EntryGvAfter,s6Step325FrontPair,(growRow 795 s6Step325EntryFFresh ++ (growRow 777 s6Step325EntryGFresh ++ (growRow 776 s6Step325EntryFvFresh ++ (growRow 775 s6Step325EntryGvFresh ++ [])))),s6Step325FrontSigmaArena,[830],s6Step325HeadGBefore,[854],
  s6Step325HeadFvAfter,s6Step325FrontHead,(growRow 777 s6Step325HeadGFresh ++ (growRow 795 s6Step325HeadFFresh ++ (growRow 775 s6Step325HeadGvFresh ++ (growRow 776 s6Step325HeadFvFresh ++ [])))),s6Step325F4Plan,s6Step325CounterDuring,s6Step325CounterWork,s6Step325ExitGvAfter,s6Step325FrontOut,(shrinkRow 777 s6Step325ExitGExtra ++ (shrinkRow 795 s6Step325ExitFExtra ++ (shrinkRow 776 s6Step325ExitFvExtra ++ (shrinkRow 775 s6Step325ExitGvExtra ++ []))))⟩

private def s6Step325CompletePlan : HmrEarlyStepPlan := ⟨s6Step325FrontPlan,s6Step325EarlyControlArena,s6Step325EarlyControlPlan,s6Step325CompleteMoves⟩

private theorem s6Step325Complete_apart : List.Disjoint (s6Step325CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [830, 854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step325CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[830, 854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step325Complete_owned : (s6Step325CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step325EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step325EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325Complete_repack : s6Step325ExitGvAfter.checkRepack s6Step325CompleteMoves=some s6Step325EarlyControlArena := by rfl

private theorem s6Step325EarlyControl_branchOwned : ([854] : List Wire).toFinset⊆s6Step325EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step325EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325EarlyControl_branch : compileHmrBranchRetirement s6Step325EarlyControlSigmaArena 854=some s6Step325EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step325EarlyControl_branchOwned
  · ext q
    simp [s6Step325EarlyControlOutputArena,s6Step325EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step325EarlyControl_classEqualityBorrow : s6Step325EarlyControlPositiveArena.checkBorrow (([830, 865] : List Wire).length-1) s6Step325EarlyControlLog.classWork=some s6Step325EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step325EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step325EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step325EarlyControlEqualityArena,s6Step325EarlyControlPositiveArena,s6Step325EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step325EarlyControl_classEqualityOwned : ([830, 865] : List Wire).toFinset⊆s6Step325EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step325EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325EarlyControl_classEquality : compileHmrEqualityLog s6Step325EarlyControlPositiveArena [830, 865] 0 s6Step325EarlyControlLog.classWork=some (s6Step325EarlyControlEqualityArena,s6Step325EarlyControlLog.classWork,s6Step325EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step325EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step325EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step325EarlyControl_classOwned : ([769, 841, 830] : List Wire).toFinset⊆s6Step325EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step325EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325EarlyControl_positiveBorrow : s6Step325EarlyControlZeroArena.checkBorrow (1) s6Step325EarlyControlLog.positiveWork=some s6Step325EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step325EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step325EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step325EarlyControlPositiveArena,s6Step325EarlyControlZeroArena,s6Step325EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step325EarlyControl_class : compileHmrSourceClassLog s6Step325EarlyControlZeroArena false 769 s6Step325EarlyControlZeroPlan.top 0 830 s6Step325EarlyControlLog.positiveWork s6Step325EarlyControlLog.classWork=some s6Step325EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step325EarlyControlClassPlan s6Step325EarlyControlZeroArena false 769 s6Step325EarlyControlZeroPlan.top 0 830
  constructor
  · decide +kernel
  · exact s6Step325EarlyControl_classOwned
  · exact s6Step325EarlyControl_positiveBorrow
  · exact s6Step325EarlyControl_classEquality

private theorem s6Step325EarlyControl_entryRecordOwned : ([854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step325EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step325EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325EarlyControl_entrySigmaOwned : ([830, 254] : List Wire).toFinset⊆s6Step325EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step325EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325EarlyControl_fitBorrow : s6Step325EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step325EarlyControlLog.recordFresh=some s6Step325EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step325EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step325EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step325EarlyControlFittedArena,s6Step325EarlyControlFlagArena,s6Step325EarlyControlLog,arenaWires]

private theorem s6Step325EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step325EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step325EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325EarlyControl_fit : compileHmrRecordGrowLog s6Step325EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step325EarlyControlLog.recordFresh=some s6Step325EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step325EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step325EarlyControl_fitBorrow

private theorem s6Step325EarlyControl_flagsBorrow : s6Step325EarlyControlEqualityArena.checkBorrow (6) s6Step325EarlyControlLog.flagWork=some s6Step325EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step325EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step325EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step325EarlyControlFlagArena,s6Step325EarlyControlEqualityArena,s6Step325EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step325EarlyControl_flagsOwned : ([860, 253, 252, 251] : List Wire).toFinset⊆s6Step325EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step325EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325EarlyControl_flags : compileHmrFlagsLog s6Step325EarlyControlClassPlan.equalityArena s6Step325EarlyControlClassPlan.equality.top 253 252 251 s6Step325EarlyControlLog.flagWork=some s6Step325EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step325EarlyControl_flagsOwned⟩
  · exact s6Step325EarlyControl_flagsBorrow

private theorem s6Step325EarlyControl_historyBorrow : s6Step325EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step325EarlyControlLog.recordFresh=some s6Step325EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step325EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step325EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step325EarlyControlHistoryArena,s6Step325EarlyControlArena,s6Step325EarlyControlLog,arenaWires]

private theorem s6Step325EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step325EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step325EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325EarlyControl_history : compileHmrRecordGrowLog s6Step325EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step325EarlyControlLog.recordFresh=some s6Step325EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step325EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step325EarlyControl_historyBorrow

private theorem s6Step325EarlyControl_sigmaOwned : ([254, 830] : List Wire).toFinset⊆s6Step325EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step325EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325EarlyControl_sigmaReleaseOwned : ([830] : List Wire).toFinset⊆s6Step325EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step325EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325EarlyControl_sigmaRelease : s6Step325EarlyControlHistoryArena.release {830} (fun _ => false)=some s6Step325EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step325EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step325EarlyControlSigmaArena,s6Step325EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step325EarlyControl_sigma : compileHmrSigmaDropLog s6Step325EarlyControlHistoryArena false 0 0 254 830 []=some s6Step325EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step325EarlyControl_sigmaOwned⟩
  · exact s6Step325EarlyControl_sigmaRelease

private theorem s6Step325EarlyControl_zeroBorrow : s6Step325EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step325EarlyControlLog.zeroWork=some s6Step325EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step325EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step325EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step325EarlyControlZeroArena,s6Step325EarlyControlArena,s6Step325EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step325EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step325EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step325EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325EarlyControl_zero : compileHmrEqualityLog s6Step325EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step325EarlyControlLog.zeroWork=some (s6Step325EarlyControlZeroArena,s6Step325EarlyControlLog.zeroWork,s6Step325EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step325EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step325EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step325EarlyControl_logged : s6Step325EarlyControlPlan.Logged s6Step325EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 830 254 253 252 251 854 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step325EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step325EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step325EarlyControl_zero
  · exact s6Step325EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step325EarlyControl_flags
  · exact s6Step325EarlyControl_fit
  · exact s6Step325EarlyControl_history
  · exact s6Step325EarlyControl_sigma
  · exact s6Step325EarlyControl_branch

private theorem s6Step325EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step325EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 830 254 253 252 251 854 60 s6Step325EarlyControlLog=some s6Step325EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step325EarlyControlPlan s6Step325EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 830 254 253 252 251 854 60 s6Step325EarlyControl_logged

private def s6Step325EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363],795⟩

private def s6Step325EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩

private def s6Step325EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],777⟩

private def s6Step325EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩

private def s6Step325FrontBank : WindowBank := ⟨s6Step325EntryFRow,s6Step325EntryGRow,s6Step325EntryFvRow,s6Step325EntryGvRow⟩

private def s6Step325Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 843, 795]

private def s6Step325Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 891, 777]

private def s6Step325Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 793, 776]

private def s6Step325Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 880, 775]

private theorem s6Step325Counter_apart : Disjoint s6Step325HeadFvAfter.live s6Step325CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step325HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325Counter_borrowed : s6Step325HeadFvAfter.checkBorrow 4 s6Step325CounterWork=some s6Step325CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step325HeadFvAfter s6Step325CounterDuring s6Step325CounterWork.toFinset s6Step325Counter_bounded s6Step325Counter_apart rfl

private theorem s6Step325Counter_owned : (830::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step325HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step325HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325Counter_checked : compileHmrCounterStepLog s6Step325HeadFvAfter true 830 [774, 773, 772, 771, 770, 769] s6Step325CounterWork=some s6Step325CounterDuring := by
  have owned : ∀q∈830::[774, 773, 772, 771, 770, 769],q∈s6Step325HeadFvAfter.live := fun q hq => s6Step325Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step325Counter_borrowed

private def s6Step325EntryFAfter : Arena := s6Step325EntryFBefore

private theorem s6Step325EntryBank_incomingDistinct : ([s6Step325EntryFRow,s6Step325EntryGRow,s6Step325EntryFvRow,s6Step325EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325EntryF_Incoming : rowsOwned s6Step325EntryFBefore [s6Step325EntryFRow,s6Step325EntryGRow,s6Step325EntryFvRow,s6Step325EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step325EntryFRow,s6Step325EntryGRow,s6Step325EntryFvRow,s6Step325EntryGvRow] 0 s6Step325EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step325EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step325EntryBank_outgoingOwned : rowsOwned s6Step325EntryGvAfter [s6Step325EntryFOut,s6Step325EntryGOut,s6Step325EntryFvOut,s6Step325EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step325EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step325EntryF_Outgoing : rowsOwned s6Step325EntryGvAfter [s6Step325EntryFOut,s6Step325EntryGOut,s6Step325EntryFvOut,s6Step325EntryGvOut] :=
  hmrRows_owned_drop s6Step325EntryGvAfter [s6Step325EntryFOut,s6Step325EntryGOut,s6Step325EntryFvOut,s6Step325EntryGvOut] 0 s6Step325EntryBank_outgoingOwned

private theorem s6Step325EntryF_distinct : (s6Step325EntryFRow.sign::s6Step325EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325EntryF_owned : (s6Step325EntryFRow.sign::s6Step325EntryFRow.payload).toFinset⊆s6Step325EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step325EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325EntryF_reserved : s6Step325EntryFBefore.reserve s6Step325EntryFFresh.toFinset=some s6Step325EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step325EntryFFresh,arenaWires]
  · norm_num [s6Step325EntryFBefore,s6Step325EntryFFresh,arenaWires]
  · simp only [s6Step325EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step325EntryF_checked : planRowResizeLog s6Step325EntryFBefore s6Step325EntryFRow 108 s6Step325EntryFFresh=
    some (s6Step325EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363],795⟩,growRow 795 s6Step325EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step325EntryFBefore s6Step325EntryFAfter s6Step325EntryFRow 108 s6Step325EntryFFresh
    s6Step325EntryF_distinct s6Step325EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step325EntryF_reserved
  have rowEq : WindowRow.mk (s6Step325EntryFRow.payload++s6Step325EntryFFresh) s6Step325EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step325EntryFvAfter : Arena := s6Step325EntryFBefore

private def s6Step325EntryFvBefore : Arena := s6Step325EntryFBefore

private theorem s6Step325EntryFv_Incoming : rowsOwned s6Step325EntryFvBefore [s6Step325EntryFvRow,s6Step325EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step325EntryFRow,s6Step325EntryGRow,s6Step325EntryFvRow,s6Step325EntryGvRow] 2 s6Step325EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step325EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step325EntryFv_Outgoing : rowsOwned s6Step325EntryGvAfter [s6Step325EntryFvOut,s6Step325EntryGvOut] :=
  hmrRows_owned_drop s6Step325EntryGvAfter [s6Step325EntryFOut,s6Step325EntryGOut,s6Step325EntryFvOut,s6Step325EntryGvOut] 2 s6Step325EntryBank_outgoingOwned

private theorem s6Step325EntryFv_distinct : (s6Step325EntryFvRow.sign::s6Step325EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325EntryFv_owned : (s6Step325EntryFvRow.sign::s6Step325EntryFvRow.payload).toFinset⊆s6Step325EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step325EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325EntryFv_reserved : s6Step325EntryFvBefore.reserve s6Step325EntryFvFresh.toFinset=some s6Step325EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step325EntryFvFresh,arenaWires]
  · norm_num [s6Step325EntryFvBefore,s6Step325EntryFBefore,s6Step325EntryFvFresh,arenaWires]
  · simp only [s6Step325EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step325EntryFv_checked : planRowResizeLog s6Step325EntryFvBefore s6Step325EntryFvRow 178 s6Step325EntryFvFresh=
    some (s6Step325EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩,growRow 776 s6Step325EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step325EntryFvBefore s6Step325EntryFvAfter s6Step325EntryFvRow 178 s6Step325EntryFvFresh
    s6Step325EntryFv_distinct s6Step325EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step325EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step325EntryFvRow.payload++s6Step325EntryFvFresh) s6Step325EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step325EntryGAfter : Arena := s6Step325EntryFBefore

private def s6Step325EntryGBefore : Arena := s6Step325EntryFBefore

private theorem s6Step325EntryG_Incoming : rowsOwned s6Step325EntryGBefore [s6Step325EntryGRow,s6Step325EntryFvRow,s6Step325EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step325EntryFRow,s6Step325EntryGRow,s6Step325EntryFvRow,s6Step325EntryGvRow] 1 s6Step325EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step325EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step325EntryG_Outgoing : rowsOwned s6Step325EntryGvAfter [s6Step325EntryGOut,s6Step325EntryFvOut,s6Step325EntryGvOut] :=
  hmrRows_owned_drop s6Step325EntryGvAfter [s6Step325EntryFOut,s6Step325EntryGOut,s6Step325EntryFvOut,s6Step325EntryGvOut] 1 s6Step325EntryBank_outgoingOwned

private theorem s6Step325EntryG_distinct : (s6Step325EntryGRow.sign::s6Step325EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325EntryG_owned : (s6Step325EntryGRow.sign::s6Step325EntryGRow.payload).toFinset⊆s6Step325EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step325EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325EntryG_reserved : s6Step325EntryGBefore.reserve s6Step325EntryGFresh.toFinset=some s6Step325EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step325EntryGFresh,arenaWires]
  · norm_num [s6Step325EntryGBefore,s6Step325EntryFBefore,s6Step325EntryGFresh,arenaWires]
  · simp only [s6Step325EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step325EntryG_checked : planRowResizeLog s6Step325EntryGBefore s6Step325EntryGRow 108 s6Step325EntryGFresh=
    some (s6Step325EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],777⟩,growRow 777 s6Step325EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step325EntryGBefore s6Step325EntryGAfter s6Step325EntryGRow 108 s6Step325EntryGFresh
    s6Step325EntryG_distinct s6Step325EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step325EntryG_reserved
  have rowEq : WindowRow.mk (s6Step325EntryGRow.payload++s6Step325EntryGFresh) s6Step325EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step325EntryGvBefore : Arena := s6Step325EntryFBefore

private theorem s6Step325EntryGv_Incoming : rowsOwned s6Step325EntryGvBefore [s6Step325EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step325EntryFRow,s6Step325EntryGRow,s6Step325EntryFvRow,s6Step325EntryGvRow] 3 s6Step325EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step325EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step325EntryGv_Outgoing : rowsOwned s6Step325EntryGvAfter [s6Step325EntryGvOut] :=
  hmrRows_owned_drop s6Step325EntryGvAfter [s6Step325EntryFOut,s6Step325EntryGOut,s6Step325EntryFvOut,s6Step325EntryGvOut] 3 s6Step325EntryBank_outgoingOwned

private theorem s6Step325EntryGv_distinct : (s6Step325EntryGvRow.sign::s6Step325EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325EntryGv_owned : (s6Step325EntryGvRow.sign::s6Step325EntryGvRow.payload).toFinset⊆s6Step325EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step325EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325EntryGv_reserved : s6Step325EntryGvBefore.reserve s6Step325EntryGvFresh.toFinset=some s6Step325EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step325EntryGvFresh,arenaWires]
  · norm_num [s6Step325EntryGvBefore,s6Step325EntryFBefore,s6Step325EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step325EntryGvAfter,s6Step325EntryGvBefore,s6Step325EntryFBefore,s6Step325EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step325EntryGv_checked : planRowResizeLog s6Step325EntryGvBefore s6Step325EntryGvRow 178 s6Step325EntryGvFresh=
    some (s6Step325EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810],775⟩,growRow 775 s6Step325EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step325EntryGvBefore s6Step325EntryGvAfter s6Step325EntryGvRow 178 s6Step325EntryGvFresh
    s6Step325EntryGv_distinct s6Step325EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step325EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step325EntryGvRow.payload++s6Step325EntryGvFresh) s6Step325EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step325EntryBank_rows : planWindowRowsLog s6Step325EntryFBefore [(s6Step325EntryFRow,108),(s6Step325EntryGRow,108),(s6Step325EntryFvRow,178),(s6Step325EntryGvRow,178)] [s6Step325EntryFFresh,s6Step325EntryGFresh,s6Step325EntryFvFresh,s6Step325EntryGvFresh]=
    some (s6Step325EntryGvAfter,[s6Step325EntryFOut,s6Step325EntryGOut,s6Step325EntryFvOut,s6Step325EntryGvOut],(growRow 795 s6Step325EntryFFresh ++ (growRow 777 s6Step325EntryGFresh ++ (growRow 776 s6Step325EntryFvFresh ++ (growRow 775 s6Step325EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step325EntryGvAfter [] []=some (s6Step325EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step325EntryGvBefore s6Step325EntryGvAfter s6Step325EntryGvAfter
    s6Step325EntryGvRow s6Step325EntryGvOut 178 s6Step325EntryGvFresh [] [] []
    (growRow 775 s6Step325EntryGvFresh) ([]) s6Step325EntryGv_Incoming s6Step325EntryGv_checked h4 s6Step325EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step325EntryFvBefore s6Step325EntryFvAfter s6Step325EntryGvAfter
    s6Step325EntryFvRow s6Step325EntryFvOut 178 s6Step325EntryFvFresh [(s6Step325EntryGvRow,178)] [s6Step325EntryGvFresh] [s6Step325EntryGvOut]
    (growRow 776 s6Step325EntryFvFresh) ((growRow 775 s6Step325EntryGvFresh ++ [])) s6Step325EntryFv_Incoming s6Step325EntryFv_checked h3 s6Step325EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step325EntryGBefore s6Step325EntryGAfter s6Step325EntryGvAfter
    s6Step325EntryGRow s6Step325EntryGOut 108 s6Step325EntryGFresh [(s6Step325EntryFvRow,178),(s6Step325EntryGvRow,178)] [s6Step325EntryFvFresh,s6Step325EntryGvFresh] [s6Step325EntryFvOut,s6Step325EntryGvOut]
    (growRow 777 s6Step325EntryGFresh) ((growRow 776 s6Step325EntryFvFresh ++ (growRow 775 s6Step325EntryGvFresh ++ []))) s6Step325EntryG_Incoming s6Step325EntryG_checked h2 s6Step325EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step325EntryFBefore s6Step325EntryFAfter s6Step325EntryGvAfter
    s6Step325EntryFRow s6Step325EntryFOut 108 s6Step325EntryFFresh [(s6Step325EntryGRow,108),(s6Step325EntryFvRow,178),(s6Step325EntryGvRow,178)] [s6Step325EntryGFresh,s6Step325EntryFvFresh,s6Step325EntryGvFresh] [s6Step325EntryGOut,s6Step325EntryFvOut,s6Step325EntryGvOut]
    (growRow 795 s6Step325EntryFFresh) ((growRow 777 s6Step325EntryGFresh ++ (growRow 776 s6Step325EntryFvFresh ++ (growRow 775 s6Step325EntryGvFresh ++ [])))) s6Step325EntryF_Incoming s6Step325EntryF_checked h1 s6Step325EntryF_Outgoing
  exact h0

private theorem s6Step325EntryBank_checked : compileHmrBankResizeLog .entry s6Step325EntryFBefore ⟨s6Step325EntryFRow,s6Step325EntryGRow,s6Step325EntryFvRow,s6Step325EntryGvRow⟩ ⟨108,108,178,178⟩ [s6Step325EntryFFresh,s6Step325EntryGFresh,s6Step325EntryFvFresh,s6Step325EntryGvFresh]=
    some (s6Step325EntryGvAfter,⟨s6Step325EntryFOut,s6Step325EntryGOut,s6Step325EntryFvOut,s6Step325EntryGvOut⟩,(growRow 795 s6Step325EntryFFresh ++ (growRow 777 s6Step325EntryGFresh ++ (growRow 776 s6Step325EntryFvFresh ++ (growRow 775 s6Step325EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step325EntryBank_rows]
  rfl

private def s6Step325ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325ExitFBefore : Arena := s6Step325ExitGAfter

private def s6Step325ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 843],795⟩

private def s6Step325ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 793],776⟩

private def s6Step325ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 891],777⟩

private def s6Step325ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 880],775⟩

private theorem s6Step325ExitBank_incomingDistinct : ([s6Step325ExitGRow,s6Step325ExitFRow,s6Step325ExitFvRow,s6Step325ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325ExitF_Incoming : rowsOwned s6Step325ExitFBefore [s6Step325ExitFRow,s6Step325ExitFvRow,s6Step325ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step325ExitGRow,s6Step325ExitFRow,s6Step325ExitFvRow,s6Step325ExitGvRow] 1 s6Step325ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step325ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step325ExitBank_outgoingOwned : rowsOwned s6Step325ExitGvAfter [s6Step325ExitGOut,s6Step325ExitFOut,s6Step325ExitFvOut,s6Step325ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step325ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step325ExitF_Outgoing : rowsOwned s6Step325ExitGvAfter [s6Step325ExitFOut,s6Step325ExitFvOut,s6Step325ExitGvOut] :=
  hmrRows_owned_drop s6Step325ExitGvAfter [s6Step325ExitGOut,s6Step325ExitFOut,s6Step325ExitFvOut,s6Step325ExitGvOut] 1 s6Step325ExitBank_outgoingOwned

private theorem s6Step325ExitF_distinct : (s6Step325ExitFRow.sign::s6Step325ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325ExitF_owned : (s6Step325ExitFRow.sign::s6Step325ExitFRow.payload).toFinset⊆s6Step325ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step325ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325ExitF_retired : s6Step325ExitFBefore.retireSet s6Step325ExitFExtra.toFinset=s6Step325ExitFAfter := by
  unfold Arena.retireSet s6Step325ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step325ExitFBefore,s6Step325ExitGAfter,s6Step325ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step325ExitF_checked : planRowResizeLog s6Step325ExitFBefore s6Step325ExitFRow 108 []=
    some (s6Step325ExitFAfter,s6Step325ExitFOut,shrinkRow 795 s6Step325ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step325ExitFBefore s6Step325ExitFRow 108 s6Step325ExitF_distinct s6Step325ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step325ExitFRow.payload.take 108) s6Step325ExitFRow.sign=s6Step325ExitFOut := by decide +kernel
  have hi : s6Step325ExitFRow.payload.drop 108=s6Step325ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step325ExitF_retired] at result
  exact result

private def s6Step325ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325ExitFvBefore : Arena := s6Step325ExitFAfter

private theorem s6Step325ExitFv_Incoming : rowsOwned s6Step325ExitFvBefore [s6Step325ExitFvRow,s6Step325ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step325ExitGRow,s6Step325ExitFRow,s6Step325ExitFvRow,s6Step325ExitGvRow] 2 s6Step325ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step325ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step325ExitFv_Outgoing : rowsOwned s6Step325ExitGvAfter [s6Step325ExitFvOut,s6Step325ExitGvOut] :=
  hmrRows_owned_drop s6Step325ExitGvAfter [s6Step325ExitGOut,s6Step325ExitFOut,s6Step325ExitFvOut,s6Step325ExitGvOut] 2 s6Step325ExitBank_outgoingOwned

private theorem s6Step325ExitFv_distinct : (s6Step325ExitFvRow.sign::s6Step325ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325ExitFv_owned : (s6Step325ExitFvRow.sign::s6Step325ExitFvRow.payload).toFinset⊆s6Step325ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step325ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325ExitFv_retired : s6Step325ExitFvBefore.retireSet s6Step325ExitFvExtra.toFinset=s6Step325ExitFvAfter := by
  unfold Arena.retireSet s6Step325ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step325ExitFvBefore,s6Step325ExitFAfter,s6Step325ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step325ExitFv_checked : planRowResizeLog s6Step325ExitFvBefore s6Step325ExitFvRow 178 []=
    some (s6Step325ExitFvAfter,s6Step325ExitFvOut,shrinkRow 776 s6Step325ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step325ExitFvBefore s6Step325ExitFvRow 178 s6Step325ExitFv_distinct s6Step325ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step325ExitFvRow.payload.take 178) s6Step325ExitFvRow.sign=s6Step325ExitFvOut := by decide +kernel
  have hi : s6Step325ExitFvRow.payload.drop 178=s6Step325ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step325ExitFv_retired] at result
  exact result

private def s6Step325ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step325ExitG_Incoming : rowsOwned s6Step325ExitGBefore [s6Step325ExitGRow,s6Step325ExitFRow,s6Step325ExitFvRow,s6Step325ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step325ExitGRow,s6Step325ExitFRow,s6Step325ExitFvRow,s6Step325ExitGvRow] 0 s6Step325ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step325ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step325ExitG_Outgoing : rowsOwned s6Step325ExitGvAfter [s6Step325ExitGOut,s6Step325ExitFOut,s6Step325ExitFvOut,s6Step325ExitGvOut] :=
  hmrRows_owned_drop s6Step325ExitGvAfter [s6Step325ExitGOut,s6Step325ExitFOut,s6Step325ExitFvOut,s6Step325ExitGvOut] 0 s6Step325ExitBank_outgoingOwned

private theorem s6Step325ExitG_distinct : (s6Step325ExitGRow.sign::s6Step325ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325ExitG_owned : (s6Step325ExitGRow.sign::s6Step325ExitGRow.payload).toFinset⊆s6Step325ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step325ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325ExitG_retired : s6Step325ExitGBefore.retireSet s6Step325ExitGExtra.toFinset=s6Step325ExitGAfter := by
  unfold Arena.retireSet s6Step325ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step325ExitGBefore,s6Step325ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step325ExitG_checked : planRowResizeLog s6Step325ExitGBefore s6Step325ExitGRow 108 []=
    some (s6Step325ExitGAfter,s6Step325ExitGOut,shrinkRow 777 s6Step325ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step325ExitGBefore s6Step325ExitGRow 108 s6Step325ExitG_distinct s6Step325ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step325ExitGRow.payload.take 108) s6Step325ExitGRow.sign=s6Step325ExitGOut := by decide +kernel
  have hi : s6Step325ExitGRow.payload.drop 108=s6Step325ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step325ExitG_retired] at result
  exact result

private def s6Step325ExitGvBefore : Arena := s6Step325ExitFvAfter

private theorem s6Step325ExitGv_Incoming : rowsOwned s6Step325ExitGvBefore [s6Step325ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step325ExitGRow,s6Step325ExitFRow,s6Step325ExitFvRow,s6Step325ExitGvRow] 3 s6Step325ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step325ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step325ExitGv_Outgoing : rowsOwned s6Step325ExitGvAfter [s6Step325ExitGvOut] :=
  hmrRows_owned_drop s6Step325ExitGvAfter [s6Step325ExitGOut,s6Step325ExitFOut,s6Step325ExitFvOut,s6Step325ExitGvOut] 3 s6Step325ExitBank_outgoingOwned

private theorem s6Step325ExitGv_distinct : (s6Step325ExitGvRow.sign::s6Step325ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325ExitGv_owned : (s6Step325ExitGvRow.sign::s6Step325ExitGvRow.payload).toFinset⊆s6Step325ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step325ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325ExitGv_retired : s6Step325ExitGvBefore.retireSet s6Step325ExitGvExtra.toFinset=s6Step325ExitGvAfter := by
  unfold Arena.retireSet s6Step325ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step325ExitGvBefore,s6Step325ExitFvAfter,s6Step325ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step325ExitGv_checked : planRowResizeLog s6Step325ExitGvBefore s6Step325ExitGvRow 178 []=
    some (s6Step325ExitGvAfter,s6Step325ExitGvOut,shrinkRow 775 s6Step325ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step325ExitGvBefore s6Step325ExitGvRow 178 s6Step325ExitGv_distinct s6Step325ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step325ExitGvRow.payload.take 178) s6Step325ExitGvRow.sign=s6Step325ExitGvOut := by decide +kernel
  have hi : s6Step325ExitGvRow.payload.drop 178=s6Step325ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step325ExitGv_retired] at result
  exact result

private theorem s6Step325ExitBank_rows : planWindowRowsLog s6Step325ExitGBefore [(s6Step325ExitGRow,108),(s6Step325ExitFRow,108),(s6Step325ExitFvRow,178),(s6Step325ExitGvRow,178)] [[],[],[],[]]=
    some (s6Step325ExitGvAfter,[s6Step325ExitGOut,s6Step325ExitFOut,s6Step325ExitFvOut,s6Step325ExitGvOut],(shrinkRow 777 s6Step325ExitGExtra ++ (shrinkRow 795 s6Step325ExitFExtra ++ (shrinkRow 776 s6Step325ExitFvExtra ++ (shrinkRow 775 s6Step325ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step325ExitGvAfter [] []=some (s6Step325ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step325ExitGvBefore s6Step325ExitGvAfter s6Step325ExitGvAfter
    s6Step325ExitGvRow s6Step325ExitGvOut 178 [] [] [] []
    (shrinkRow 775 s6Step325ExitGvExtra) ([]) s6Step325ExitGv_Incoming s6Step325ExitGv_checked h4 s6Step325ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step325ExitFvBefore s6Step325ExitFvAfter s6Step325ExitGvAfter
    s6Step325ExitFvRow s6Step325ExitFvOut 178 [] [(s6Step325ExitGvRow,178)] [[]] [s6Step325ExitGvOut]
    (shrinkRow 776 s6Step325ExitFvExtra) ((shrinkRow 775 s6Step325ExitGvExtra ++ [])) s6Step325ExitFv_Incoming s6Step325ExitFv_checked h3 s6Step325ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step325ExitFBefore s6Step325ExitFAfter s6Step325ExitGvAfter
    s6Step325ExitFRow s6Step325ExitFOut 108 [] [(s6Step325ExitFvRow,178),(s6Step325ExitGvRow,178)] [[],[]] [s6Step325ExitFvOut,s6Step325ExitGvOut]
    (shrinkRow 795 s6Step325ExitFExtra) ((shrinkRow 776 s6Step325ExitFvExtra ++ (shrinkRow 775 s6Step325ExitGvExtra ++ []))) s6Step325ExitF_Incoming s6Step325ExitF_checked h2 s6Step325ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step325ExitGBefore s6Step325ExitGAfter s6Step325ExitGvAfter
    s6Step325ExitGRow s6Step325ExitGOut 108 [] [(s6Step325ExitFRow,108),(s6Step325ExitFvRow,178),(s6Step325ExitGvRow,178)] [[],[],[]] [s6Step325ExitFOut,s6Step325ExitFvOut,s6Step325ExitGvOut]
    (shrinkRow 777 s6Step325ExitGExtra) ((shrinkRow 795 s6Step325ExitFExtra ++ (shrinkRow 776 s6Step325ExitFvExtra ++ (shrinkRow 775 s6Step325ExitGvExtra ++ [])))) s6Step325ExitG_Incoming s6Step325ExitG_checked h1 s6Step325ExitG_Outgoing
  exact h0

private theorem s6Step325ExitBank_checked : compileHmrBankResizeLog .exit s6Step325ExitGBefore ⟨s6Step325ExitFRow,s6Step325ExitGRow,s6Step325ExitFvRow,s6Step325ExitGvRow⟩ ⟨108,108,178,178⟩ [[],[],[],[]]=
    some (s6Step325ExitGvAfter,⟨s6Step325ExitFOut,s6Step325ExitGOut,s6Step325ExitFvOut,s6Step325ExitGvOut⟩,(shrinkRow 777 s6Step325ExitGExtra ++ (shrinkRow 795 s6Step325ExitFExtra ++ (shrinkRow 776 s6Step325ExitFvExtra ++ (shrinkRow 775 s6Step325ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step325ExitBank_rows]
  rfl

private theorem s6Step325Add0_apart : Disjoint s6Step325Add0Arena.live s6Step325Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step325Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325Add0_card : s6Step325Add0Arena.live.card=906 := by
  decide +kernel

private theorem s6Step325Add0_borrowed : s6Step325Add0Arena.checkBorrow (hmrHybridCount s6Step325Add0Arena s6Step325Add0B.length) s6Step325Add0Work=some s6Step325Add0During := by
  have len : s6Step325Add0Work.length=hmrHybridCount s6Step325Add0Arena s6Step325Add0B.length := by
    rw [hmrHybridCount,s6Step325Add0_card]
    decide +kernel
  have nd : s6Step325Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step325Add0Arena s6Step325Add0During s6Step325Add0Work.toFinset s6Step325Add0_bounded s6Step325Add0_apart rfl

private theorem s6Step325Add0_distinct : (841::854::865::(s6Step325Add0A++s6Step325Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325Add0_owned : (841::854::865::(s6Step325Add0A++s6Step325Add0B)).toFinset⊆s6Step325Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step325Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325Add0_checked : compileHmrHybridCinLog s6Step325Add0Arena 854 841 865 s6Step325Add0A s6Step325Add0B s6Step325Add0Work=some s6Step325Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step325Add0Arena s6Step325Add0During 854 841 865 s6Step325Add0A s6Step325Add0B s6Step325Add0Work
    (by decide +kernel) (by decide +kernel) s6Step325Add0_distinct
    (fun q hq => s6Step325Add0_owned (List.mem_toFinset.mpr hq)) s6Step325Add0_borrowed

private theorem s6Step325Add1_apart : Disjoint s6Step325Add1Arena.live s6Step325Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step325Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325Add1_card : s6Step325Add1Arena.live.card=906 := by
  decide +kernel

private theorem s6Step325Add1_borrowed : s6Step325Add1Arena.checkBorrow (hmrHybridCount s6Step325Add1Arena s6Step325Add1B.length) s6Step325Add1Work=some s6Step325Add1During := by
  have len : s6Step325Add1Work.length=hmrHybridCount s6Step325Add1Arena s6Step325Add1B.length := by
    rw [hmrHybridCount,s6Step325Add1_card]
    decide +kernel
  have nd : s6Step325Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step325Add1Arena s6Step325Add1During s6Step325Add1Work.toFinset s6Step325Add1_bounded s6Step325Add1_apart rfl

private theorem s6Step325Add1_distinct : (841::854::865::(s6Step325Add1A++s6Step325Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325Add1_owned : (841::854::865::(s6Step325Add1A++s6Step325Add1B)).toFinset⊆s6Step325Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step325Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325Add1_checked : compileHmrHybridCinLog s6Step325Add1Arena 854 841 865 s6Step325Add1A s6Step325Add1B s6Step325Add1Work=some s6Step325Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step325Add1Arena s6Step325Add1During 854 841 865 s6Step325Add1A s6Step325Add1B s6Step325Add1Work
    (by decide +kernel) (by decide +kernel) s6Step325Add1_distinct
    (fun q hq => s6Step325Add1_owned (List.mem_toFinset.mpr hq)) s6Step325Add1_borrowed

private theorem s6Step325F4_apart : Disjoint (s6Step325Add0A++s6Step325Add0B).toFinset (s6Step325Add1A++s6Step325Add1B).toFinset := by
  have nd : ((s6Step325Add0A++s6Step325Add0B)++(s6Step325Add1A++s6Step325Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step325F4_carry : s6Step325F4FlagArena.checkBorrow 1 [865]=some s6Step325Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step325F4FlagArena,s6Step325HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step325F4FlagArena,s6Step325HeadFvAfter,s6Step325Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step325F4_distinct : (830::854::841::865::((s6Step325Add0A++s6Step325Add1A)++(s6Step325Add0B++s6Step325Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325F4_flag : s6Step325HeadFvAfter.checkBorrow 1 [841]=some s6Step325F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step325HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step325F4_owned : (830::854::((s6Step325Add0A++s6Step325Add1A)++(s6Step325Add0B++s6Step325Add1B))).toFinset⊆s6Step325HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step325HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325F4_checked : compileHmrHybridF4Log s6Step325HeadFvAfter 830 854 s6Step325Add0A s6Step325Add0B s6Step325Add1A s6Step325Add1B [841] [865] s6Step325Add0Work s6Step325Add1Work=some s6Step325F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step325HeadFvAfter s6Step325F4FlagArena s6Step325Add0Arena s6Step325Add0During s6Step325Add1During 830 854
    s6Step325Add0A s6Step325Add0B s6Step325Add1A s6Step325Add1B [841] [865] s6Step325Add0Work s6Step325Add1Work
    (fun q hq => s6Step325F4_owned (List.mem_toFinset.mpr hq)) s6Step325F4_flag s6Step325F4_carry
    s6Step325F4_distinct s6Step325F4_apart s6Step325Add0_checked s6Step325Add1_checked

private theorem s6Step325Front_branch : s6Step325FrontSigmaArena.checkBorrow 1 [854]=some s6Step325HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step325FrontSigmaArena,s6Step325EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step325FrontSigmaArena,s6Step325EntryGvAfter,s6Step325HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step325Front_entry : HmrFrontEntryValid s6Step325EntryFBefore s6Step325FrontBank 108 178 ⟨108,108,178,178⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step325FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step325EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step325EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step325FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step325Front_sigma : s6Step325EntryGvAfter.checkBorrow 1 [830]=some s6Step325FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step325EntryGvAfter,arenaWires]
  · rfl

private def s6Step325HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325HeadFBefore : Arena := s6Step325HeadGAfter

private def s6Step325HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363],795⟩

private def s6Step325HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩

private def s6Step325HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],777⟩

private def s6Step325HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810],775⟩

private theorem s6Step325HeadBank_incomingDistinct : ([s6Step325HeadGRow,s6Step325HeadFRow,s6Step325HeadGvRow,s6Step325HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325HeadF_Incoming : rowsOwned s6Step325HeadFBefore [s6Step325HeadFRow,s6Step325HeadGvRow,s6Step325HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step325HeadGRow,s6Step325HeadFRow,s6Step325HeadGvRow,s6Step325HeadFvRow] 1 s6Step325HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step325HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step325HeadBank_outgoingOwned : rowsOwned s6Step325HeadFvAfter [s6Step325HeadGOut,s6Step325HeadFOut,s6Step325HeadGvOut,s6Step325HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step325HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step325HeadF_Outgoing : rowsOwned s6Step325HeadFvAfter [s6Step325HeadFOut,s6Step325HeadGvOut,s6Step325HeadFvOut] :=
  hmrRows_owned_drop s6Step325HeadFvAfter [s6Step325HeadGOut,s6Step325HeadFOut,s6Step325HeadGvOut,s6Step325HeadFvOut] 1 s6Step325HeadBank_outgoingOwned

private theorem s6Step325HeadF_distinct : (s6Step325HeadFRow.sign::s6Step325HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325HeadF_owned : (s6Step325HeadFRow.sign::s6Step325HeadFRow.payload).toFinset⊆s6Step325HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step325HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325HeadF_reserved : s6Step325HeadFBefore.reserve s6Step325HeadFFresh.toFinset=some s6Step325HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step325HeadFFresh,arenaWires]
  · norm_num [s6Step325HeadFBefore,s6Step325HeadGAfter,s6Step325HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step325HeadFAfter,s6Step325HeadFBefore,s6Step325HeadGAfter,s6Step325HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step325HeadF_checked : planRowResizeLog s6Step325HeadFBefore s6Step325HeadFRow 109 s6Step325HeadFFresh=
    some (s6Step325HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 843],795⟩,growRow 795 s6Step325HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step325HeadFBefore s6Step325HeadFAfter s6Step325HeadFRow 109 s6Step325HeadFFresh
    s6Step325HeadF_distinct s6Step325HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step325HeadF_reserved
  have rowEq : WindowRow.mk (s6Step325HeadFRow.payload++s6Step325HeadFFresh) s6Step325HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 843],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step325HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step325HeadFvBefore : Arena := s6Step325HeadGvAfter

private theorem s6Step325HeadFv_Incoming : rowsOwned s6Step325HeadFvBefore [s6Step325HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step325HeadGRow,s6Step325HeadFRow,s6Step325HeadGvRow,s6Step325HeadFvRow] 3 s6Step325HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step325HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step325HeadFv_Outgoing : rowsOwned s6Step325HeadFvAfter [s6Step325HeadFvOut] :=
  hmrRows_owned_drop s6Step325HeadFvAfter [s6Step325HeadGOut,s6Step325HeadFOut,s6Step325HeadGvOut,s6Step325HeadFvOut] 3 s6Step325HeadBank_outgoingOwned

private theorem s6Step325HeadFv_distinct : (s6Step325HeadFvRow.sign::s6Step325HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325HeadFv_owned : (s6Step325HeadFvRow.sign::s6Step325HeadFvRow.payload).toFinset⊆s6Step325HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step325HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325HeadFv_reserved : s6Step325HeadFvBefore.reserve s6Step325HeadFvFresh.toFinset=some s6Step325HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step325HeadFvFresh,arenaWires]
  · norm_num [s6Step325HeadFvBefore,s6Step325HeadGvAfter,s6Step325HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step325HeadFvAfter,s6Step325HeadFvBefore,s6Step325HeadGvAfter,s6Step325HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step325HeadFv_checked : planRowResizeLog s6Step325HeadFvBefore s6Step325HeadFvRow 179 s6Step325HeadFvFresh=
    some (s6Step325HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 793],776⟩,growRow 776 s6Step325HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step325HeadFvBefore s6Step325HeadFvAfter s6Step325HeadFvRow 179 s6Step325HeadFvFresh
    s6Step325HeadFv_distinct s6Step325HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step325HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step325HeadFvRow.payload++s6Step325HeadFvFresh) s6Step325HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 793],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step325HeadG_Incoming : rowsOwned s6Step325HeadGBefore [s6Step325HeadGRow,s6Step325HeadFRow,s6Step325HeadGvRow,s6Step325HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step325HeadGRow,s6Step325HeadFRow,s6Step325HeadGvRow,s6Step325HeadFvRow] 0 s6Step325HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step325HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step325HeadG_Outgoing : rowsOwned s6Step325HeadFvAfter [s6Step325HeadGOut,s6Step325HeadFOut,s6Step325HeadGvOut,s6Step325HeadFvOut] :=
  hmrRows_owned_drop s6Step325HeadFvAfter [s6Step325HeadGOut,s6Step325HeadFOut,s6Step325HeadGvOut,s6Step325HeadFvOut] 0 s6Step325HeadBank_outgoingOwned

private theorem s6Step325HeadG_distinct : (s6Step325HeadGRow.sign::s6Step325HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325HeadG_owned : (s6Step325HeadGRow.sign::s6Step325HeadGRow.payload).toFinset⊆s6Step325HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step325HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325HeadG_reserved : s6Step325HeadGBefore.reserve s6Step325HeadGFresh.toFinset=some s6Step325HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step325HeadGFresh,arenaWires]
  · norm_num [s6Step325HeadGBefore,s6Step325HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step325HeadGAfter,s6Step325HeadGBefore,s6Step325HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step325HeadG_checked : planRowResizeLog s6Step325HeadGBefore s6Step325HeadGRow 109 s6Step325HeadGFresh=
    some (s6Step325HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 891],777⟩,growRow 777 s6Step325HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step325HeadGBefore s6Step325HeadGAfter s6Step325HeadGRow 109 s6Step325HeadGFresh
    s6Step325HeadG_distinct s6Step325HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step325HeadG_reserved
  have rowEq : WindowRow.mk (s6Step325HeadGRow.payload++s6Step325HeadGFresh) s6Step325HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 891],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step325HeadGvBefore : Arena := s6Step325HeadFAfter

private theorem s6Step325HeadGv_Incoming : rowsOwned s6Step325HeadGvBefore [s6Step325HeadGvRow,s6Step325HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step325HeadGRow,s6Step325HeadFRow,s6Step325HeadGvRow,s6Step325HeadFvRow] 2 s6Step325HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step325HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step325HeadGv_Outgoing : rowsOwned s6Step325HeadFvAfter [s6Step325HeadGvOut,s6Step325HeadFvOut] :=
  hmrRows_owned_drop s6Step325HeadFvAfter [s6Step325HeadGOut,s6Step325HeadFOut,s6Step325HeadGvOut,s6Step325HeadFvOut] 2 s6Step325HeadBank_outgoingOwned

private theorem s6Step325HeadGv_distinct : (s6Step325HeadGvRow.sign::s6Step325HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step325HeadGv_owned : (s6Step325HeadGvRow.sign::s6Step325HeadGvRow.payload).toFinset⊆s6Step325HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step325HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step325HeadGv_reserved : s6Step325HeadGvBefore.reserve s6Step325HeadGvFresh.toFinset=some s6Step325HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step325HeadGvFresh,arenaWires]
  · norm_num [s6Step325HeadGvBefore,s6Step325HeadFAfter,s6Step325HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step325HeadGvAfter,s6Step325HeadGvBefore,s6Step325HeadFAfter,s6Step325HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step325HeadGv_checked : planRowResizeLog s6Step325HeadGvBefore s6Step325HeadGvRow 179 s6Step325HeadGvFresh=
    some (s6Step325HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 880],775⟩,growRow 775 s6Step325HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step325HeadGvBefore s6Step325HeadGvAfter s6Step325HeadGvRow 179 s6Step325HeadGvFresh
    s6Step325HeadGv_distinct s6Step325HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step325HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step325HeadGvRow.payload++s6Step325HeadGvFresh) s6Step325HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 880],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step325HeadBank_rows : planWindowRowsLog s6Step325HeadGBefore [(s6Step325HeadGRow,109),(s6Step325HeadFRow,109),(s6Step325HeadGvRow,179),(s6Step325HeadFvRow,179)] [s6Step325HeadGFresh,s6Step325HeadFFresh,s6Step325HeadGvFresh,s6Step325HeadFvFresh]=
    some (s6Step325HeadFvAfter,[s6Step325HeadGOut,s6Step325HeadFOut,s6Step325HeadGvOut,s6Step325HeadFvOut],(growRow 777 s6Step325HeadGFresh ++ (growRow 795 s6Step325HeadFFresh ++ (growRow 775 s6Step325HeadGvFresh ++ (growRow 776 s6Step325HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step325HeadFvAfter [] []=some (s6Step325HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step325HeadFvBefore s6Step325HeadFvAfter s6Step325HeadFvAfter
    s6Step325HeadFvRow s6Step325HeadFvOut 179 s6Step325HeadFvFresh [] [] []
    (growRow 776 s6Step325HeadFvFresh) ([]) s6Step325HeadFv_Incoming s6Step325HeadFv_checked h4 s6Step325HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step325HeadGvBefore s6Step325HeadGvAfter s6Step325HeadFvAfter
    s6Step325HeadGvRow s6Step325HeadGvOut 179 s6Step325HeadGvFresh [(s6Step325HeadFvRow,179)] [s6Step325HeadFvFresh] [s6Step325HeadFvOut]
    (growRow 775 s6Step325HeadGvFresh) ((growRow 776 s6Step325HeadFvFresh ++ [])) s6Step325HeadGv_Incoming s6Step325HeadGv_checked h3 s6Step325HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step325HeadFBefore s6Step325HeadFAfter s6Step325HeadFvAfter
    s6Step325HeadFRow s6Step325HeadFOut 109 s6Step325HeadFFresh [(s6Step325HeadGvRow,179),(s6Step325HeadFvRow,179)] [s6Step325HeadGvFresh,s6Step325HeadFvFresh] [s6Step325HeadGvOut,s6Step325HeadFvOut]
    (growRow 795 s6Step325HeadFFresh) ((growRow 775 s6Step325HeadGvFresh ++ (growRow 776 s6Step325HeadFvFresh ++ []))) s6Step325HeadF_Incoming s6Step325HeadF_checked h2 s6Step325HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step325HeadGBefore s6Step325HeadGAfter s6Step325HeadFvAfter
    s6Step325HeadGRow s6Step325HeadGOut 109 s6Step325HeadGFresh [(s6Step325HeadFRow,109),(s6Step325HeadGvRow,179),(s6Step325HeadFvRow,179)] [s6Step325HeadFFresh,s6Step325HeadGvFresh,s6Step325HeadFvFresh] [s6Step325HeadFOut,s6Step325HeadGvOut,s6Step325HeadFvOut]
    (growRow 777 s6Step325HeadGFresh) ((growRow 795 s6Step325HeadFFresh ++ (growRow 775 s6Step325HeadGvFresh ++ (growRow 776 s6Step325HeadFvFresh ++ [])))) s6Step325HeadG_Incoming s6Step325HeadG_checked h1 s6Step325HeadG_Outgoing
  exact h0

private theorem s6Step325HeadBank_checked : compileHmrBankResizeLog .headroom s6Step325HeadGBefore ⟨s6Step325HeadFRow,s6Step325HeadGRow,s6Step325HeadFvRow,s6Step325HeadGvRow⟩ ⟨109,109,179,179⟩ [s6Step325HeadGFresh,s6Step325HeadFFresh,s6Step325HeadGvFresh,s6Step325HeadFvFresh]=
    some (s6Step325HeadFvAfter,⟨s6Step325HeadFOut,s6Step325HeadGOut,s6Step325HeadFvOut,s6Step325HeadGvOut⟩,(growRow 777 s6Step325HeadGFresh ++ (growRow 795 s6Step325HeadFFresh ++ (growRow 775 s6Step325HeadGvFresh ++ (growRow 776 s6Step325HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step325HeadBank_rows]
  rfl

private theorem s6Step325Front_checked : compileHmrSourceFrontLog s6Step325EntryFBefore s6Step325FrontBank 108 178 ⟨108,108,178,178⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step325FrontLog=some s6Step325FrontPlan := by
  have pairEq : s6Step325FrontPair=⟨s6Step325HeadFRow,s6Step325HeadGRow,s6Step325HeadFvRow,s6Step325HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step325FrontHead=⟨s6Step325ExitFRow,s6Step325ExitGRow,s6Step325ExitFvRow,s6Step325ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step325Add0A=s6Step325FrontHead.f.wires := by decide +kernel
  have gEq : s6Step325Add0B=s6Step325FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step325Add1A=s6Step325FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step325Add1B=s6Step325FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step325EntryFBefore s6Step325FrontBank 108 178 ⟨108,108,178,178⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step325FrontLog s6Step325FrontPlan
  · exact s6Step325Front_entry
  · exact s6Step325EntryBank_checked
  · exact s6Step325Front_sigma
  · rfl
  · exact s6Step325Front_branch
  · rfl
  · simpa only [s6Step325FrontPlan,pairEq] using s6Step325HeadBank_checked
  · simpa only [s6Step325FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step325F4_checked
  · exact s6Step325Counter_checked
  · rfl
  · simpa only [s6Step325FrontPlan,headEq] using s6Step325ExitBank_checked

private theorem s6Step325Complete_explicit_checked : compileHmrEarlyStepLog s6Step325EntryFBefore s6Step325FrontBank 108 178 ⟨108,108,178,178⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step325CompleteLog=some s6Step325CompletePlan := by
  let Q := s6Step325EarlyControlPlan
  have hq := s6Step325EarlyControl_plan_checked
  have fv1 : s6Step325CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step325CompleteOut.fv.payload[2]?.getD s6Step325CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step325CompleteOut.fv.payload[3]?.getD s6Step325CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step325CompleteOut.fv.payload[4]?.getD s6Step325CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step325EntryFBefore s6Step325EarlyControlArena s6Step325FrontBank 108 178 ⟨108,108,178,178⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step325CompleteLog s6Step325FrontPlan Q
    s6Step325Front_checked s6Step325Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step325Complete_owned s6Step325Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step325EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 830 s6Step325CompleteOut.fv.second (s6Step325CompleteOut.fv.payload[2]?.getD s6Step325CompleteOut.fv.sign) (s6Step325CompleteOut.fv.payload[3]?.getD s6Step325CompleteOut.fv.sign) (s6Step325CompleteOut.fv.payload[4]?.getD s6Step325CompleteOut.fv.sign) 854 60 s6Step325EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep325Arena : Arena := s6Step325EntryFBefore
def s6PrivateStep325Bank : WindowBank := s6Step325FrontBank
def s6PrivateStep325Spec : HmrSourceWalkStepLog := ⟨108,178,⟨108,108,178,178⟩,60,.early s6Step325CompleteLog⟩
def s6PrivateStep325Plan : HmrSourceStepPlan := .early s6Step325CompletePlan
theorem s6PrivateStep325_source : s6PrivateStep325Spec=s6ObservedLogs320[5] := rfl
theorem s6PrivateStep325_checked : compileHmrSourceStepLog s6PrivateStep325Arena s6PrivateStep325Bank
    s6PrivateStep325Spec.fgWidth s6PrivateStep325Spec.vWidth s6PrivateStep325Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 325 s6PrivateStep325Spec.need none s6PrivateStep325Spec.log=some s6PrivateStep325Plan := by
  change compileHmrSourceStepLog s6Step325EntryFBefore s6Step325FrontBank 108 178 ⟨108,108,178,178⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 325 60 none (.early s6Step325CompleteLog)=some (.early s6Step325CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 325<498)]
  rw [s6Step325Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
