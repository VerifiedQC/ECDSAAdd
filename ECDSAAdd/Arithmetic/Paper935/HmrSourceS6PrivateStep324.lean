import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep322
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

private def s6Step324CompleteMoves : List (Wire × Wire) := [(854,364)]

private def s6Step324EarlyControlLog : HmrEarlyControlLog := ⟨[854, 891, 843, 880, 793],[841],[865],[860, 805, 817, 812, 915, 906],[]⟩

private def s6Step324FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [880], [], []],[[793], [843], [891], [791]],[[], [], [], []]⟩,[830],[810],[841],[865],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[841, 865, 860, 805]⟩

private def s6Step324CompleteLog : HmrEarlyStepLog := ⟨s6Step324FrontLog,s6Step324CompleteMoves,s6Step324EarlyControlLog⟩

private def s6Step324ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363],795⟩

private def s6Step324ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩

private def s6Step324ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],777⟩

private def s6Step324ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩

private def s6Step324FrontOut : WindowBank := ⟨s6Step324ExitFOut,s6Step324ExitGOut,s6Step324ExitFvOut,s6Step324ExitGvOut⟩

private def s6Step324CompleteOut : WindowBank := s6Step324FrontOut.repacked s6Step324CompleteMoves

private def s6Step324EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step324EarlyControlPositiveArena,[841],s6Step324EarlyControlEqualityArena,[865],⟨⟨830,false⟩,[⟨⟨841,false⟩,865⟩]⟩⟩

private def s6Step324EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,854⟩,⟨⟨772,false⟩,891⟩,⟨⟨771,false⟩,843⟩,⟨⟨770,false⟩,880⟩,⟨⟨769,false⟩,793⟩]⟩

private def s6Step324EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step324EarlyControlZeroArena,s6Step324EarlyControlZeroPlan,s6Step324EarlyControlClassPlan,s6Step324EarlyControlFlagArena,s6Step324EarlyControlFittedArena,s6Step324EarlyControlHistoryArena,s6Step324EarlyControlSigmaArena,s6Step324EarlyControlOutputArena,s6Step324EarlyControlLog⟩

private def s6Step324CounterWork : List Wire := [841, 865, 860, 805]

private theorem s6Step324Counter_bounded : s6Step324CounterWork.toFinset⊆arenaWires := by norm_num [s6Step324CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step324HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324CounterDuring : Arena := ⟨s6Step324HeadFvAfter.live∪s6Step324CounterWork.toFinset,Finset.union_subset s6Step324HeadFvAfter.bounded s6Step324Counter_bounded⟩

private def s6Step324EntryFFresh : List Wire := []

private def s6Step324EntryFvFresh : List Wire := []

private def s6Step324EntryGFresh : List Wire := [880]

private def s6Step324EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324EntryGvAfter : Arena := s6Step324EntryGAfter

private def s6Step324EntryGvFresh : List Wire := []

private def s6Step324ExitFExtra : List Wire := [364, 843]

private def s6Step324ExitGExtra : List Wire := [880, 793]

private def s6Step324ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<364) ∨ (365≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324ExitGvExtra : List Wire := [891]

private def s6Step324Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324Add0Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step324Add0_bounded : s6Step324Add0Work.toFinset⊆arenaWires := by
  have h : s6Step324Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step324Add0During : Arena := ⟨s6Step324Add0Arena.live∪s6Step324Add0Work.toFinset,Finset.union_subset s6Step324Add0Arena.bounded s6Step324Add0_bounded⟩

private def s6Step324Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324Add1Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step324Add1_bounded : s6Step324Add1Work.toFinset⊆arenaWires := by
  have h : s6Step324Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step324Add1During : Arena := ⟨s6Step324Add1Arena.live∪s6Step324Add1Work.toFinset,Finset.union_subset s6Step324Add1Arena.bounded s6Step324Add1_bounded⟩

private def s6Step324F4FlagArena : Arena := ⟨s6Step324HeadFvAfter.live∪{841},Finset.union_subset s6Step324HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step324F4Plan : HmrHybridF4Plan := ⟨s6Step324F4FlagArena,[841],s6Step324Add0Arena,[865],s6Step324Add0During,s6Step324Add0Work,s6Step324Add1During,s6Step324Add1Work⟩

private def s6Step324HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 843],795⟩

private def s6Step324HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩

private def s6Step324HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 880, 793],777⟩

private def s6Step324HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 891],775⟩

private def s6Step324FrontHead : WindowBank := ⟨s6Step324HeadFOut,s6Step324HeadGOut,s6Step324HeadFvOut,s6Step324HeadGvOut⟩

private def s6Step324EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364],795⟩

private def s6Step324EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩

private def s6Step324EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 880],777⟩

private def s6Step324EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩

private def s6Step324FrontPair : WindowBank := ⟨s6Step324EntryFOut,s6Step324EntryGOut,s6Step324EntryFvOut,s6Step324EntryGvOut⟩

private def s6Step324FrontSigmaArena : Arena := ⟨s6Step324EntryGvAfter.live∪{830},Finset.union_subset s6Step324EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step324HeadFFresh : List Wire := [843]

private def s6Step324HeadFvFresh : List Wire := [791]

private def s6Step324HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324HeadGFresh : List Wire := [793]

private def s6Step324HeadGvFresh : List Wire := [891]

private def s6Step324FrontPlan : HmrSourceFront := ⟨s6Step324EntryGvAfter,s6Step324FrontPair,(growRow 795 s6Step324EntryFFresh ++ (growRow 777 s6Step324EntryGFresh ++ (growRow 776 s6Step324EntryFvFresh ++ (growRow 775 s6Step324EntryGvFresh ++ [])))),s6Step324FrontSigmaArena,[830],s6Step324HeadGBefore,[810],
  s6Step324HeadFvAfter,s6Step324FrontHead,(growRow 777 s6Step324HeadGFresh ++ (growRow 795 s6Step324HeadFFresh ++ (growRow 775 s6Step324HeadGvFresh ++ (growRow 776 s6Step324HeadFvFresh ++ [])))),s6Step324F4Plan,s6Step324CounterDuring,s6Step324CounterWork,s6Step324ExitGvAfter,s6Step324FrontOut,(shrinkRow 777 s6Step324ExitGExtra ++ (shrinkRow 795 s6Step324ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step324ExitGvExtra ++ []))))⟩

private def s6Step324CompletePlan : HmrEarlyStepPlan := ⟨s6Step324FrontPlan,s6Step324EarlyControlArena,s6Step324EarlyControlPlan,s6Step324CompleteMoves⟩

private theorem s6Step324Complete_apart : List.Disjoint (s6Step324CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [830, 810, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step324CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[830, 810, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step324Complete_owned : (s6Step324CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step324EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step324EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step324CompleteMoveArena : Arena := ⟨s6Step324ExitGvAfter.live∪{364},Finset.union_subset s6Step324ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step324Complete_repack : s6Step324ExitGvAfter.checkRepack s6Step324CompleteMoves=some s6Step324EarlyControlArena := by
  have owned : 854∈s6Step324ExitGvAfter.live := by norm_num [s6Step324ExitGvAfter,arenaWires]
  have reserve : s6Step324ExitGvAfter.reserve {364}=some s6Step324CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step324ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step324CompleteMoveArena.retireSet {854}=s6Step324EarlyControlArena := by
    unfold Arena.retireSet s6Step324EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step324CompleteMoveArena,s6Step324ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step324CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step324CompleteMoveArena.retireSet {854}).checkRepack []=some s6Step324EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step324EarlyControl_branchOwned : ([810] : List Wire).toFinset⊆s6Step324EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step324EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324EarlyControl_branch : compileHmrBranchRetirement s6Step324EarlyControlSigmaArena 810=some s6Step324EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step324EarlyControl_branchOwned
  · ext q
    simp [s6Step324EarlyControlOutputArena,s6Step324EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step324EarlyControl_classEqualityBorrow : s6Step324EarlyControlPositiveArena.checkBorrow (([830, 841] : List Wire).length-1) s6Step324EarlyControlLog.classWork=some s6Step324EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step324EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step324EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step324EarlyControlEqualityArena,s6Step324EarlyControlPositiveArena,s6Step324EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step324EarlyControl_classEqualityOwned : ([830, 841] : List Wire).toFinset⊆s6Step324EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step324EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324EarlyControl_classEquality : compileHmrEqualityLog s6Step324EarlyControlPositiveArena [830, 841] 0 s6Step324EarlyControlLog.classWork=some (s6Step324EarlyControlEqualityArena,s6Step324EarlyControlLog.classWork,s6Step324EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step324EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step324EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step324EarlyControl_classOwned : ([769, 793, 830] : List Wire).toFinset⊆s6Step324EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step324EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324EarlyControl_positiveBorrow : s6Step324EarlyControlZeroArena.checkBorrow (1) s6Step324EarlyControlLog.positiveWork=some s6Step324EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step324EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step324EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step324EarlyControlPositiveArena,s6Step324EarlyControlZeroArena,s6Step324EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step324EarlyControl_class : compileHmrSourceClassLog s6Step324EarlyControlZeroArena false 769 s6Step324EarlyControlZeroPlan.top 0 830 s6Step324EarlyControlLog.positiveWork s6Step324EarlyControlLog.classWork=some s6Step324EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step324EarlyControlClassPlan s6Step324EarlyControlZeroArena false 769 s6Step324EarlyControlZeroPlan.top 0 830
  constructor
  · decide +kernel
  · exact s6Step324EarlyControl_classOwned
  · exact s6Step324EarlyControl_positiveBorrow
  · exact s6Step324EarlyControl_classEquality

private theorem s6Step324EarlyControl_entryRecordOwned : ([810, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step324EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step324EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324EarlyControl_entrySigmaOwned : ([830, 254] : List Wire).toFinset⊆s6Step324EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step324EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324EarlyControl_fitBorrow : s6Step324EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step324EarlyControlLog.recordFresh=some s6Step324EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step324EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step324EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step324EarlyControlFittedArena,s6Step324EarlyControlFlagArena,s6Step324EarlyControlLog,arenaWires]

private theorem s6Step324EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step324EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step324EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324EarlyControl_fit : compileHmrRecordGrowLog s6Step324EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step324EarlyControlLog.recordFresh=some s6Step324EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step324EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step324EarlyControl_fitBorrow

private theorem s6Step324EarlyControl_flagsBorrow : s6Step324EarlyControlEqualityArena.checkBorrow (6) s6Step324EarlyControlLog.flagWork=some s6Step324EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step324EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step324EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step324EarlyControlFlagArena,s6Step324EarlyControlEqualityArena,s6Step324EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step324EarlyControl_flagsOwned : ([865, 253, 252, 251] : List Wire).toFinset⊆s6Step324EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step324EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324EarlyControl_flags : compileHmrFlagsLog s6Step324EarlyControlClassPlan.equalityArena s6Step324EarlyControlClassPlan.equality.top 253 252 251 s6Step324EarlyControlLog.flagWork=some s6Step324EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step324EarlyControl_flagsOwned⟩
  · exact s6Step324EarlyControl_flagsBorrow

private theorem s6Step324EarlyControl_historyBorrow : s6Step324EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step324EarlyControlLog.recordFresh=some s6Step324EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step324EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step324EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step324EarlyControlHistoryArena,s6Step324EarlyControlArena,s6Step324EarlyControlLog,arenaWires]

private theorem s6Step324EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step324EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step324EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324EarlyControl_history : compileHmrRecordGrowLog s6Step324EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step324EarlyControlLog.recordFresh=some s6Step324EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step324EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step324EarlyControl_historyBorrow

private theorem s6Step324EarlyControl_sigmaOwned : ([254, 830] : List Wire).toFinset⊆s6Step324EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step324EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324EarlyControl_sigmaReleaseOwned : ([830] : List Wire).toFinset⊆s6Step324EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step324EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324EarlyControl_sigmaRelease : s6Step324EarlyControlHistoryArena.release {830} (fun _ => false)=some s6Step324EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step324EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step324EarlyControlSigmaArena,s6Step324EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step324EarlyControl_sigma : compileHmrSigmaDropLog s6Step324EarlyControlHistoryArena false 0 0 254 830 []=some s6Step324EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step324EarlyControl_sigmaOwned⟩
  · exact s6Step324EarlyControl_sigmaRelease

private theorem s6Step324EarlyControl_zeroBorrow : s6Step324EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step324EarlyControlLog.zeroWork=some s6Step324EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step324EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step324EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step324EarlyControlZeroArena,s6Step324EarlyControlArena,s6Step324EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step324EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step324EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step324EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324EarlyControl_zero : compileHmrEqualityLog s6Step324EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step324EarlyControlLog.zeroWork=some (s6Step324EarlyControlZeroArena,s6Step324EarlyControlLog.zeroWork,s6Step324EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step324EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step324EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step324EarlyControl_logged : s6Step324EarlyControlPlan.Logged s6Step324EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 830 254 253 252 251 810 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step324EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step324EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step324EarlyControl_zero
  · exact s6Step324EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step324EarlyControl_flags
  · exact s6Step324EarlyControl_fit
  · exact s6Step324EarlyControl_history
  · exact s6Step324EarlyControl_sigma
  · exact s6Step324EarlyControl_branch

private theorem s6Step324EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step324EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 830 254 253 252 251 810 60 s6Step324EarlyControlLog=some s6Step324EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step324EarlyControlPlan s6Step324EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 830 254 253 252 251 810 60 s6Step324EarlyControl_logged

private def s6Step324EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364],795⟩

private def s6Step324EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩

private def s6Step324EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],777⟩

private def s6Step324EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩

private def s6Step324FrontBank : WindowBank := ⟨s6Step324EntryFRow,s6Step324EntryGRow,s6Step324EntryFvRow,s6Step324EntryGvRow⟩

private def s6Step324Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 843, 795]

private def s6Step324Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 880, 793, 777]

private def s6Step324Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 776]

private def s6Step324Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 891, 775]

private theorem s6Step324Counter_apart : Disjoint s6Step324HeadFvAfter.live s6Step324CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step324HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324Counter_borrowed : s6Step324HeadFvAfter.checkBorrow 4 s6Step324CounterWork=some s6Step324CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step324HeadFvAfter s6Step324CounterDuring s6Step324CounterWork.toFinset s6Step324Counter_bounded s6Step324Counter_apart rfl

private theorem s6Step324Counter_owned : (830::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step324HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step324HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324Counter_checked : compileHmrCounterStepLog s6Step324HeadFvAfter true 830 [774, 773, 772, 771, 770, 769] s6Step324CounterWork=some s6Step324CounterDuring := by
  have owned : ∀q∈830::[774, 773, 772, 771, 770, 769],q∈s6Step324HeadFvAfter.live := fun q hq => s6Step324Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step324Counter_borrowed

private def s6Step324EntryFAfter : Arena := s6Step324EntryFBefore

private theorem s6Step324EntryBank_incomingDistinct : ([s6Step324EntryFRow,s6Step324EntryGRow,s6Step324EntryFvRow,s6Step324EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324EntryF_Incoming : rowsOwned s6Step324EntryFBefore [s6Step324EntryFRow,s6Step324EntryGRow,s6Step324EntryFvRow,s6Step324EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step324EntryFRow,s6Step324EntryGRow,s6Step324EntryFvRow,s6Step324EntryGvRow] 0 s6Step324EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step324EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step324EntryBank_outgoingOwned : rowsOwned s6Step324EntryGvAfter [s6Step324EntryFOut,s6Step324EntryGOut,s6Step324EntryFvOut,s6Step324EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step324EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step324EntryF_Outgoing : rowsOwned s6Step324EntryGvAfter [s6Step324EntryFOut,s6Step324EntryGOut,s6Step324EntryFvOut,s6Step324EntryGvOut] :=
  hmrRows_owned_drop s6Step324EntryGvAfter [s6Step324EntryFOut,s6Step324EntryGOut,s6Step324EntryFvOut,s6Step324EntryGvOut] 0 s6Step324EntryBank_outgoingOwned

private theorem s6Step324EntryF_distinct : (s6Step324EntryFRow.sign::s6Step324EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324EntryF_owned : (s6Step324EntryFRow.sign::s6Step324EntryFRow.payload).toFinset⊆s6Step324EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step324EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324EntryF_reserved : s6Step324EntryFBefore.reserve s6Step324EntryFFresh.toFinset=some s6Step324EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step324EntryFFresh,arenaWires]
  · norm_num [s6Step324EntryFBefore,s6Step324EntryFFresh,arenaWires]
  · simp only [s6Step324EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step324EntryF_checked : planRowResizeLog s6Step324EntryFBefore s6Step324EntryFRow 109 s6Step324EntryFFresh=
    some (s6Step324EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364],795⟩,growRow 795 s6Step324EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step324EntryFBefore s6Step324EntryFAfter s6Step324EntryFRow 109 s6Step324EntryFFresh
    s6Step324EntryF_distinct s6Step324EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step324EntryF_reserved
  have rowEq : WindowRow.mk (s6Step324EntryFRow.payload++s6Step324EntryFFresh) s6Step324EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step324EntryFvAfter : Arena := s6Step324EntryGAfter

private def s6Step324EntryFvBefore : Arena := s6Step324EntryGAfter

private theorem s6Step324EntryFv_Incoming : rowsOwned s6Step324EntryFvBefore [s6Step324EntryFvRow,s6Step324EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step324EntryFRow,s6Step324EntryGRow,s6Step324EntryFvRow,s6Step324EntryGvRow] 2 s6Step324EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step324EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step324EntryFv_Outgoing : rowsOwned s6Step324EntryGvAfter [s6Step324EntryFvOut,s6Step324EntryGvOut] :=
  hmrRows_owned_drop s6Step324EntryGvAfter [s6Step324EntryFOut,s6Step324EntryGOut,s6Step324EntryFvOut,s6Step324EntryGvOut] 2 s6Step324EntryBank_outgoingOwned

private theorem s6Step324EntryFv_distinct : (s6Step324EntryFvRow.sign::s6Step324EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324EntryFv_owned : (s6Step324EntryFvRow.sign::s6Step324EntryFvRow.payload).toFinset⊆s6Step324EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step324EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324EntryFv_reserved : s6Step324EntryFvBefore.reserve s6Step324EntryFvFresh.toFinset=some s6Step324EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step324EntryFvFresh,arenaWires]
  · norm_num [s6Step324EntryFvBefore,s6Step324EntryGAfter,s6Step324EntryFvFresh,arenaWires]
  · simp only [s6Step324EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step324EntryFv_checked : planRowResizeLog s6Step324EntryFvBefore s6Step324EntryFvRow 177 s6Step324EntryFvFresh=
    some (s6Step324EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩,growRow 776 s6Step324EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step324EntryFvBefore s6Step324EntryFvAfter s6Step324EntryFvRow 177 s6Step324EntryFvFresh
    s6Step324EntryFv_distinct s6Step324EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step324EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step324EntryFvRow.payload++s6Step324EntryFvFresh) s6Step324EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step324EntryGBefore : Arena := s6Step324EntryFBefore

private theorem s6Step324EntryG_Incoming : rowsOwned s6Step324EntryGBefore [s6Step324EntryGRow,s6Step324EntryFvRow,s6Step324EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step324EntryFRow,s6Step324EntryGRow,s6Step324EntryFvRow,s6Step324EntryGvRow] 1 s6Step324EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step324EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step324EntryG_Outgoing : rowsOwned s6Step324EntryGvAfter [s6Step324EntryGOut,s6Step324EntryFvOut,s6Step324EntryGvOut] :=
  hmrRows_owned_drop s6Step324EntryGvAfter [s6Step324EntryFOut,s6Step324EntryGOut,s6Step324EntryFvOut,s6Step324EntryGvOut] 1 s6Step324EntryBank_outgoingOwned

private theorem s6Step324EntryG_distinct : (s6Step324EntryGRow.sign::s6Step324EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324EntryG_owned : (s6Step324EntryGRow.sign::s6Step324EntryGRow.payload).toFinset⊆s6Step324EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step324EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324EntryG_reserved : s6Step324EntryGBefore.reserve s6Step324EntryGFresh.toFinset=some s6Step324EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step324EntryGFresh,arenaWires]
  · norm_num [s6Step324EntryGBefore,s6Step324EntryFBefore,s6Step324EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step324EntryGAfter,s6Step324EntryGBefore,s6Step324EntryFBefore,s6Step324EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step324EntryG_checked : planRowResizeLog s6Step324EntryGBefore s6Step324EntryGRow 109 s6Step324EntryGFresh=
    some (s6Step324EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 880],777⟩,growRow 777 s6Step324EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step324EntryGBefore s6Step324EntryGAfter s6Step324EntryGRow 109 s6Step324EntryGFresh
    s6Step324EntryG_distinct s6Step324EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step324EntryG_reserved
  have rowEq : WindowRow.mk (s6Step324EntryGRow.payload++s6Step324EntryGFresh) s6Step324EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 880],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step324EntryGvBefore : Arena := s6Step324EntryGAfter

private theorem s6Step324EntryGv_Incoming : rowsOwned s6Step324EntryGvBefore [s6Step324EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step324EntryFRow,s6Step324EntryGRow,s6Step324EntryFvRow,s6Step324EntryGvRow] 3 s6Step324EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step324EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step324EntryGv_Outgoing : rowsOwned s6Step324EntryGvAfter [s6Step324EntryGvOut] :=
  hmrRows_owned_drop s6Step324EntryGvAfter [s6Step324EntryFOut,s6Step324EntryGOut,s6Step324EntryFvOut,s6Step324EntryGvOut] 3 s6Step324EntryBank_outgoingOwned

private theorem s6Step324EntryGv_distinct : (s6Step324EntryGvRow.sign::s6Step324EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324EntryGv_owned : (s6Step324EntryGvRow.sign::s6Step324EntryGvRow.payload).toFinset⊆s6Step324EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step324EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324EntryGv_reserved : s6Step324EntryGvBefore.reserve s6Step324EntryGvFresh.toFinset=some s6Step324EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step324EntryGvFresh,arenaWires]
  · norm_num [s6Step324EntryGvBefore,s6Step324EntryGAfter,s6Step324EntryGvFresh,arenaWires]
  · simp only [s6Step324EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step324EntryGv_checked : planRowResizeLog s6Step324EntryGvBefore s6Step324EntryGvRow 177 s6Step324EntryGvFresh=
    some (s6Step324EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩,growRow 775 s6Step324EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step324EntryGvBefore s6Step324EntryGvAfter s6Step324EntryGvRow 177 s6Step324EntryGvFresh
    s6Step324EntryGv_distinct s6Step324EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step324EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step324EntryGvRow.payload++s6Step324EntryGvFresh) s6Step324EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step324EntryBank_rows : planWindowRowsLog s6Step324EntryFBefore [(s6Step324EntryFRow,109),(s6Step324EntryGRow,109),(s6Step324EntryFvRow,177),(s6Step324EntryGvRow,177)] [s6Step324EntryFFresh,s6Step324EntryGFresh,s6Step324EntryFvFresh,s6Step324EntryGvFresh]=
    some (s6Step324EntryGvAfter,[s6Step324EntryFOut,s6Step324EntryGOut,s6Step324EntryFvOut,s6Step324EntryGvOut],(growRow 795 s6Step324EntryFFresh ++ (growRow 777 s6Step324EntryGFresh ++ (growRow 776 s6Step324EntryFvFresh ++ (growRow 775 s6Step324EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step324EntryGvAfter [] []=some (s6Step324EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step324EntryGvBefore s6Step324EntryGvAfter s6Step324EntryGvAfter
    s6Step324EntryGvRow s6Step324EntryGvOut 177 s6Step324EntryGvFresh [] [] []
    (growRow 775 s6Step324EntryGvFresh) ([]) s6Step324EntryGv_Incoming s6Step324EntryGv_checked h4 s6Step324EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step324EntryFvBefore s6Step324EntryFvAfter s6Step324EntryGvAfter
    s6Step324EntryFvRow s6Step324EntryFvOut 177 s6Step324EntryFvFresh [(s6Step324EntryGvRow,177)] [s6Step324EntryGvFresh] [s6Step324EntryGvOut]
    (growRow 776 s6Step324EntryFvFresh) ((growRow 775 s6Step324EntryGvFresh ++ [])) s6Step324EntryFv_Incoming s6Step324EntryFv_checked h3 s6Step324EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step324EntryGBefore s6Step324EntryGAfter s6Step324EntryGvAfter
    s6Step324EntryGRow s6Step324EntryGOut 109 s6Step324EntryGFresh [(s6Step324EntryFvRow,177),(s6Step324EntryGvRow,177)] [s6Step324EntryFvFresh,s6Step324EntryGvFresh] [s6Step324EntryFvOut,s6Step324EntryGvOut]
    (growRow 777 s6Step324EntryGFresh) ((growRow 776 s6Step324EntryFvFresh ++ (growRow 775 s6Step324EntryGvFresh ++ []))) s6Step324EntryG_Incoming s6Step324EntryG_checked h2 s6Step324EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step324EntryFBefore s6Step324EntryFAfter s6Step324EntryGvAfter
    s6Step324EntryFRow s6Step324EntryFOut 109 s6Step324EntryFFresh [(s6Step324EntryGRow,109),(s6Step324EntryFvRow,177),(s6Step324EntryGvRow,177)] [s6Step324EntryGFresh,s6Step324EntryFvFresh,s6Step324EntryGvFresh] [s6Step324EntryGOut,s6Step324EntryFvOut,s6Step324EntryGvOut]
    (growRow 795 s6Step324EntryFFresh) ((growRow 777 s6Step324EntryGFresh ++ (growRow 776 s6Step324EntryFvFresh ++ (growRow 775 s6Step324EntryGvFresh ++ [])))) s6Step324EntryF_Incoming s6Step324EntryF_checked h1 s6Step324EntryF_Outgoing
  exact h0

private theorem s6Step324EntryBank_checked : compileHmrBankResizeLog .entry s6Step324EntryFBefore ⟨s6Step324EntryFRow,s6Step324EntryGRow,s6Step324EntryFvRow,s6Step324EntryGvRow⟩ ⟨109,109,177,177⟩ [s6Step324EntryFFresh,s6Step324EntryGFresh,s6Step324EntryFvFresh,s6Step324EntryGvFresh]=
    some (s6Step324EntryGvAfter,⟨s6Step324EntryFOut,s6Step324EntryGOut,s6Step324EntryFvOut,s6Step324EntryGvOut⟩,(growRow 795 s6Step324EntryFFresh ++ (growRow 777 s6Step324EntryGFresh ++ (growRow 776 s6Step324EntryFvFresh ++ (growRow 775 s6Step324EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step324EntryBank_rows]
  rfl

private def s6Step324ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<364) ∨ (365≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324ExitFBefore : Arena := s6Step324ExitGAfter

private def s6Step324ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 843],795⟩

private def s6Step324ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩

private def s6Step324ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 880, 793],777⟩

private def s6Step324ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 891],775⟩

private theorem s6Step324ExitBank_incomingDistinct : ([s6Step324ExitGRow,s6Step324ExitFRow,s6Step324ExitFvRow,s6Step324ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324ExitF_Incoming : rowsOwned s6Step324ExitFBefore [s6Step324ExitFRow,s6Step324ExitFvRow,s6Step324ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step324ExitGRow,s6Step324ExitFRow,s6Step324ExitFvRow,s6Step324ExitGvRow] 1 s6Step324ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step324ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step324ExitBank_outgoingOwned : rowsOwned s6Step324ExitGvAfter [s6Step324ExitGOut,s6Step324ExitFOut,s6Step324ExitFvOut,s6Step324ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step324ExitGvAfter (fun q => (0≤q ∧ q<364) ∨ (365≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step324ExitF_Outgoing : rowsOwned s6Step324ExitGvAfter [s6Step324ExitFOut,s6Step324ExitFvOut,s6Step324ExitGvOut] :=
  hmrRows_owned_drop s6Step324ExitGvAfter [s6Step324ExitGOut,s6Step324ExitFOut,s6Step324ExitFvOut,s6Step324ExitGvOut] 1 s6Step324ExitBank_outgoingOwned

private theorem s6Step324ExitF_distinct : (s6Step324ExitFRow.sign::s6Step324ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324ExitF_owned : (s6Step324ExitFRow.sign::s6Step324ExitFRow.payload).toFinset⊆s6Step324ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step324ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324ExitF_retired : s6Step324ExitFBefore.retireSet s6Step324ExitFExtra.toFinset=s6Step324ExitFAfter := by
  unfold Arena.retireSet s6Step324ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step324ExitFBefore,s6Step324ExitGAfter,s6Step324ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step324ExitF_checked : planRowResizeLog s6Step324ExitFBefore s6Step324ExitFRow 108 []=
    some (s6Step324ExitFAfter,s6Step324ExitFOut,shrinkRow 795 s6Step324ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step324ExitFBefore s6Step324ExitFRow 108 s6Step324ExitF_distinct s6Step324ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step324ExitFRow.payload.take 108) s6Step324ExitFRow.sign=s6Step324ExitFOut := by decide +kernel
  have hi : s6Step324ExitFRow.payload.drop 108=s6Step324ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step324ExitF_retired] at result
  exact result

private def s6Step324ExitFvAfter : Arena := s6Step324ExitFAfter

private def s6Step324ExitFvBefore : Arena := s6Step324ExitFAfter

private theorem s6Step324ExitFv_Incoming : rowsOwned s6Step324ExitFvBefore [s6Step324ExitFvRow,s6Step324ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step324ExitGRow,s6Step324ExitFRow,s6Step324ExitFvRow,s6Step324ExitGvRow] 2 s6Step324ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step324ExitFvBefore (fun q => (0≤q ∧ q<364) ∨ (365≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step324ExitFv_Outgoing : rowsOwned s6Step324ExitGvAfter [s6Step324ExitFvOut,s6Step324ExitGvOut] :=
  hmrRows_owned_drop s6Step324ExitGvAfter [s6Step324ExitGOut,s6Step324ExitFOut,s6Step324ExitFvOut,s6Step324ExitGvOut] 2 s6Step324ExitBank_outgoingOwned

private theorem s6Step324ExitFv_distinct : (s6Step324ExitFvRow.sign::s6Step324ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324ExitFv_owned : (s6Step324ExitFvRow.sign::s6Step324ExitFvRow.payload).toFinset⊆s6Step324ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step324ExitFvBefore (fun q => (0≤q ∧ q<364) ∨ (365≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324ExitFv_reserved : s6Step324ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step324ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step324ExitFv_checked : planRowResizeLog s6Step324ExitFvBefore s6Step324ExitFvRow 178 []=
    some (s6Step324ExitFvAfter,s6Step324ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step324ExitFvBefore s6Step324ExitFvAfter s6Step324ExitFvRow 178 []
    s6Step324ExitFv_distinct s6Step324ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step324ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step324ExitFvRow.payload++[]) s6Step324ExitFvRow.sign=s6Step324ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step324ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step324ExitG_Incoming : rowsOwned s6Step324ExitGBefore [s6Step324ExitGRow,s6Step324ExitFRow,s6Step324ExitFvRow,s6Step324ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step324ExitGRow,s6Step324ExitFRow,s6Step324ExitFvRow,s6Step324ExitGvRow] 0 s6Step324ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step324ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step324ExitG_Outgoing : rowsOwned s6Step324ExitGvAfter [s6Step324ExitGOut,s6Step324ExitFOut,s6Step324ExitFvOut,s6Step324ExitGvOut] :=
  hmrRows_owned_drop s6Step324ExitGvAfter [s6Step324ExitGOut,s6Step324ExitFOut,s6Step324ExitFvOut,s6Step324ExitGvOut] 0 s6Step324ExitBank_outgoingOwned

private theorem s6Step324ExitG_distinct : (s6Step324ExitGRow.sign::s6Step324ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324ExitG_owned : (s6Step324ExitGRow.sign::s6Step324ExitGRow.payload).toFinset⊆s6Step324ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step324ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324ExitG_retired : s6Step324ExitGBefore.retireSet s6Step324ExitGExtra.toFinset=s6Step324ExitGAfter := by
  unfold Arena.retireSet s6Step324ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step324ExitGBefore,s6Step324ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step324ExitG_checked : planRowResizeLog s6Step324ExitGBefore s6Step324ExitGRow 108 []=
    some (s6Step324ExitGAfter,s6Step324ExitGOut,shrinkRow 777 s6Step324ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step324ExitGBefore s6Step324ExitGRow 108 s6Step324ExitG_distinct s6Step324ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step324ExitGRow.payload.take 108) s6Step324ExitGRow.sign=s6Step324ExitGOut := by decide +kernel
  have hi : s6Step324ExitGRow.payload.drop 108=s6Step324ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step324ExitG_retired] at result
  exact result

private def s6Step324ExitGvBefore : Arena := s6Step324ExitFAfter

private theorem s6Step324ExitGv_Incoming : rowsOwned s6Step324ExitGvBefore [s6Step324ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step324ExitGRow,s6Step324ExitFRow,s6Step324ExitFvRow,s6Step324ExitGvRow] 3 s6Step324ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step324ExitGvBefore (fun q => (0≤q ∧ q<364) ∨ (365≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step324ExitGv_Outgoing : rowsOwned s6Step324ExitGvAfter [s6Step324ExitGvOut] :=
  hmrRows_owned_drop s6Step324ExitGvAfter [s6Step324ExitGOut,s6Step324ExitFOut,s6Step324ExitFvOut,s6Step324ExitGvOut] 3 s6Step324ExitBank_outgoingOwned

private theorem s6Step324ExitGv_distinct : (s6Step324ExitGvRow.sign::s6Step324ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324ExitGv_owned : (s6Step324ExitGvRow.sign::s6Step324ExitGvRow.payload).toFinset⊆s6Step324ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step324ExitGvBefore (fun q => (0≤q ∧ q<364) ∨ (365≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324ExitGv_retired : s6Step324ExitGvBefore.retireSet s6Step324ExitGvExtra.toFinset=s6Step324ExitGvAfter := by
  unfold Arena.retireSet s6Step324ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step324ExitGvBefore,s6Step324ExitFAfter,s6Step324ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step324ExitGv_checked : planRowResizeLog s6Step324ExitGvBefore s6Step324ExitGvRow 177 []=
    some (s6Step324ExitGvAfter,s6Step324ExitGvOut,shrinkRow 775 s6Step324ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step324ExitGvBefore s6Step324ExitGvRow 177 s6Step324ExitGv_distinct s6Step324ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step324ExitGvRow.payload.take 177) s6Step324ExitGvRow.sign=s6Step324ExitGvOut := by decide +kernel
  have hi : s6Step324ExitGvRow.payload.drop 177=s6Step324ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step324ExitGv_retired] at result
  exact result

private theorem s6Step324ExitBank_rows : planWindowRowsLog s6Step324ExitGBefore [(s6Step324ExitGRow,108),(s6Step324ExitFRow,108),(s6Step324ExitFvRow,178),(s6Step324ExitGvRow,177)] [[],[],[],[]]=
    some (s6Step324ExitGvAfter,[s6Step324ExitGOut,s6Step324ExitFOut,s6Step324ExitFvOut,s6Step324ExitGvOut],(shrinkRow 777 s6Step324ExitGExtra ++ (shrinkRow 795 s6Step324ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step324ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step324ExitGvAfter [] []=some (s6Step324ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step324ExitGvBefore s6Step324ExitGvAfter s6Step324ExitGvAfter
    s6Step324ExitGvRow s6Step324ExitGvOut 177 [] [] [] []
    (shrinkRow 775 s6Step324ExitGvExtra) ([]) s6Step324ExitGv_Incoming s6Step324ExitGv_checked h4 s6Step324ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step324ExitFvBefore s6Step324ExitFvAfter s6Step324ExitGvAfter
    s6Step324ExitFvRow s6Step324ExitFvOut 178 [] [(s6Step324ExitGvRow,177)] [[]] [s6Step324ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step324ExitGvExtra ++ [])) s6Step324ExitFv_Incoming s6Step324ExitFv_checked h3 s6Step324ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step324ExitFBefore s6Step324ExitFAfter s6Step324ExitGvAfter
    s6Step324ExitFRow s6Step324ExitFOut 108 [] [(s6Step324ExitFvRow,178),(s6Step324ExitGvRow,177)] [[],[]] [s6Step324ExitFvOut,s6Step324ExitGvOut]
    (shrinkRow 795 s6Step324ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step324ExitGvExtra ++ []))) s6Step324ExitF_Incoming s6Step324ExitF_checked h2 s6Step324ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step324ExitGBefore s6Step324ExitGAfter s6Step324ExitGvAfter
    s6Step324ExitGRow s6Step324ExitGOut 108 [] [(s6Step324ExitFRow,108),(s6Step324ExitFvRow,178),(s6Step324ExitGvRow,177)] [[],[],[]] [s6Step324ExitFOut,s6Step324ExitFvOut,s6Step324ExitGvOut]
    (shrinkRow 777 s6Step324ExitGExtra) ((shrinkRow 795 s6Step324ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step324ExitGvExtra ++ [])))) s6Step324ExitG_Incoming s6Step324ExitG_checked h1 s6Step324ExitG_Outgoing
  exact h0

private theorem s6Step324ExitBank_checked : compileHmrBankResizeLog .exit s6Step324ExitGBefore ⟨s6Step324ExitFRow,s6Step324ExitGRow,s6Step324ExitFvRow,s6Step324ExitGvRow⟩ ⟨108,108,178,177⟩ [[],[],[],[]]=
    some (s6Step324ExitGvAfter,⟨s6Step324ExitFOut,s6Step324ExitGOut,s6Step324ExitFvOut,s6Step324ExitGvOut⟩,(shrinkRow 777 s6Step324ExitGExtra ++ (shrinkRow 795 s6Step324ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step324ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step324ExitBank_rows]
  rfl

private theorem s6Step324Add0_apart : Disjoint s6Step324Add0Arena.live s6Step324Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step324Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324Add0_card : s6Step324Add0Arena.live.card=906 := by
  decide +kernel

private theorem s6Step324Add0_borrowed : s6Step324Add0Arena.checkBorrow (hmrHybridCount s6Step324Add0Arena s6Step324Add0B.length) s6Step324Add0Work=some s6Step324Add0During := by
  have len : s6Step324Add0Work.length=hmrHybridCount s6Step324Add0Arena s6Step324Add0B.length := by
    rw [hmrHybridCount,s6Step324Add0_card]
    decide +kernel
  have nd : s6Step324Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step324Add0Arena s6Step324Add0During s6Step324Add0Work.toFinset s6Step324Add0_bounded s6Step324Add0_apart rfl

private theorem s6Step324Add0_distinct : (841::810::865::(s6Step324Add0A++s6Step324Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324Add0_owned : (841::810::865::(s6Step324Add0A++s6Step324Add0B)).toFinset⊆s6Step324Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step324Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324Add0_checked : compileHmrHybridCinLog s6Step324Add0Arena 810 841 865 s6Step324Add0A s6Step324Add0B s6Step324Add0Work=some s6Step324Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step324Add0Arena s6Step324Add0During 810 841 865 s6Step324Add0A s6Step324Add0B s6Step324Add0Work
    (by decide +kernel) (by decide +kernel) s6Step324Add0_distinct
    (fun q hq => s6Step324Add0_owned (List.mem_toFinset.mpr hq)) s6Step324Add0_borrowed

private theorem s6Step324Add1_apart : Disjoint s6Step324Add1Arena.live s6Step324Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step324Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324Add1_card : s6Step324Add1Arena.live.card=906 := by
  decide +kernel

private theorem s6Step324Add1_borrowed : s6Step324Add1Arena.checkBorrow (hmrHybridCount s6Step324Add1Arena s6Step324Add1B.length) s6Step324Add1Work=some s6Step324Add1During := by
  have len : s6Step324Add1Work.length=hmrHybridCount s6Step324Add1Arena s6Step324Add1B.length := by
    rw [hmrHybridCount,s6Step324Add1_card]
    decide +kernel
  have nd : s6Step324Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step324Add1Arena s6Step324Add1During s6Step324Add1Work.toFinset s6Step324Add1_bounded s6Step324Add1_apart rfl

private theorem s6Step324Add1_distinct : (841::810::865::(s6Step324Add1A++s6Step324Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324Add1_owned : (841::810::865::(s6Step324Add1A++s6Step324Add1B)).toFinset⊆s6Step324Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step324Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324Add1_checked : compileHmrHybridCinLog s6Step324Add1Arena 810 841 865 s6Step324Add1A s6Step324Add1B s6Step324Add1Work=some s6Step324Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step324Add1Arena s6Step324Add1During 810 841 865 s6Step324Add1A s6Step324Add1B s6Step324Add1Work
    (by decide +kernel) (by decide +kernel) s6Step324Add1_distinct
    (fun q hq => s6Step324Add1_owned (List.mem_toFinset.mpr hq)) s6Step324Add1_borrowed

private theorem s6Step324F4_apart : Disjoint (s6Step324Add0A++s6Step324Add0B).toFinset (s6Step324Add1A++s6Step324Add1B).toFinset := by
  have nd : ((s6Step324Add0A++s6Step324Add0B)++(s6Step324Add1A++s6Step324Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step324F4_carry : s6Step324F4FlagArena.checkBorrow 1 [865]=some s6Step324Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step324F4FlagArena,s6Step324HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step324F4FlagArena,s6Step324HeadFvAfter,s6Step324Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step324F4_distinct : (830::810::841::865::((s6Step324Add0A++s6Step324Add1A)++(s6Step324Add0B++s6Step324Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324F4_flag : s6Step324HeadFvAfter.checkBorrow 1 [841]=some s6Step324F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step324HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step324F4_owned : (830::810::((s6Step324Add0A++s6Step324Add1A)++(s6Step324Add0B++s6Step324Add1B))).toFinset⊆s6Step324HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step324HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324F4_checked : compileHmrHybridF4Log s6Step324HeadFvAfter 830 810 s6Step324Add0A s6Step324Add0B s6Step324Add1A s6Step324Add1B [841] [865] s6Step324Add0Work s6Step324Add1Work=some s6Step324F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step324HeadFvAfter s6Step324F4FlagArena s6Step324Add0Arena s6Step324Add0During s6Step324Add1During 830 810
    s6Step324Add0A s6Step324Add0B s6Step324Add1A s6Step324Add1B [841] [865] s6Step324Add0Work s6Step324Add1Work
    (fun q hq => s6Step324F4_owned (List.mem_toFinset.mpr hq)) s6Step324F4_flag s6Step324F4_carry
    s6Step324F4_distinct s6Step324F4_apart s6Step324Add0_checked s6Step324Add1_checked

private theorem s6Step324Front_branch : s6Step324FrontSigmaArena.checkBorrow 1 [810]=some s6Step324HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step324FrontSigmaArena,s6Step324EntryGvAfter,s6Step324EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step324FrontSigmaArena,s6Step324EntryGvAfter,s6Step324EntryGAfter,s6Step324HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step324Front_entry : HmrFrontEntryValid s6Step324EntryFBefore s6Step324FrontBank 109 177 ⟨108,108,178,177⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step324FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step324EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step324EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step324FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step324Front_sigma : s6Step324EntryGvAfter.checkBorrow 1 [830]=some s6Step324FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step324EntryGvAfter,s6Step324EntryGAfter,arenaWires]
  · rfl

private def s6Step324HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324HeadFBefore : Arena := s6Step324HeadGAfter

private def s6Step324HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364],795⟩

private def s6Step324HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩

private def s6Step324HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 880],777⟩

private def s6Step324HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩

private theorem s6Step324HeadBank_incomingDistinct : ([s6Step324HeadGRow,s6Step324HeadFRow,s6Step324HeadGvRow,s6Step324HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324HeadF_Incoming : rowsOwned s6Step324HeadFBefore [s6Step324HeadFRow,s6Step324HeadGvRow,s6Step324HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step324HeadGRow,s6Step324HeadFRow,s6Step324HeadGvRow,s6Step324HeadFvRow] 1 s6Step324HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step324HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step324HeadBank_outgoingOwned : rowsOwned s6Step324HeadFvAfter [s6Step324HeadGOut,s6Step324HeadFOut,s6Step324HeadGvOut,s6Step324HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step324HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step324HeadF_Outgoing : rowsOwned s6Step324HeadFvAfter [s6Step324HeadFOut,s6Step324HeadGvOut,s6Step324HeadFvOut] :=
  hmrRows_owned_drop s6Step324HeadFvAfter [s6Step324HeadGOut,s6Step324HeadFOut,s6Step324HeadGvOut,s6Step324HeadFvOut] 1 s6Step324HeadBank_outgoingOwned

private theorem s6Step324HeadF_distinct : (s6Step324HeadFRow.sign::s6Step324HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324HeadF_owned : (s6Step324HeadFRow.sign::s6Step324HeadFRow.payload).toFinset⊆s6Step324HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step324HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324HeadF_reserved : s6Step324HeadFBefore.reserve s6Step324HeadFFresh.toFinset=some s6Step324HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step324HeadFFresh,arenaWires]
  · norm_num [s6Step324HeadFBefore,s6Step324HeadGAfter,s6Step324HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step324HeadFAfter,s6Step324HeadFBefore,s6Step324HeadGAfter,s6Step324HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step324HeadF_checked : planRowResizeLog s6Step324HeadFBefore s6Step324HeadFRow 110 s6Step324HeadFFresh=
    some (s6Step324HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 843],795⟩,growRow 795 s6Step324HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step324HeadFBefore s6Step324HeadFAfter s6Step324HeadFRow 110 s6Step324HeadFFresh
    s6Step324HeadF_distinct s6Step324HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step324HeadF_reserved
  have rowEq : WindowRow.mk (s6Step324HeadFRow.payload++s6Step324HeadFFresh) s6Step324HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 843],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step324HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step324HeadFvBefore : Arena := s6Step324HeadGvAfter

private theorem s6Step324HeadFv_Incoming : rowsOwned s6Step324HeadFvBefore [s6Step324HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step324HeadGRow,s6Step324HeadFRow,s6Step324HeadGvRow,s6Step324HeadFvRow] 3 s6Step324HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step324HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step324HeadFv_Outgoing : rowsOwned s6Step324HeadFvAfter [s6Step324HeadFvOut] :=
  hmrRows_owned_drop s6Step324HeadFvAfter [s6Step324HeadGOut,s6Step324HeadFOut,s6Step324HeadGvOut,s6Step324HeadFvOut] 3 s6Step324HeadBank_outgoingOwned

private theorem s6Step324HeadFv_distinct : (s6Step324HeadFvRow.sign::s6Step324HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324HeadFv_owned : (s6Step324HeadFvRow.sign::s6Step324HeadFvRow.payload).toFinset⊆s6Step324HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step324HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324HeadFv_reserved : s6Step324HeadFvBefore.reserve s6Step324HeadFvFresh.toFinset=some s6Step324HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step324HeadFvFresh,arenaWires]
  · norm_num [s6Step324HeadFvBefore,s6Step324HeadGvAfter,s6Step324HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step324HeadFvAfter,s6Step324HeadFvBefore,s6Step324HeadGvAfter,s6Step324HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step324HeadFv_checked : planRowResizeLog s6Step324HeadFvBefore s6Step324HeadFvRow 178 s6Step324HeadFvFresh=
    some (s6Step324HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩,growRow 776 s6Step324HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step324HeadFvBefore s6Step324HeadFvAfter s6Step324HeadFvRow 178 s6Step324HeadFvFresh
    s6Step324HeadFv_distinct s6Step324HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step324HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step324HeadFvRow.payload++s6Step324HeadFvFresh) s6Step324HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step324HeadG_Incoming : rowsOwned s6Step324HeadGBefore [s6Step324HeadGRow,s6Step324HeadFRow,s6Step324HeadGvRow,s6Step324HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step324HeadGRow,s6Step324HeadFRow,s6Step324HeadGvRow,s6Step324HeadFvRow] 0 s6Step324HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step324HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step324HeadG_Outgoing : rowsOwned s6Step324HeadFvAfter [s6Step324HeadGOut,s6Step324HeadFOut,s6Step324HeadGvOut,s6Step324HeadFvOut] :=
  hmrRows_owned_drop s6Step324HeadFvAfter [s6Step324HeadGOut,s6Step324HeadFOut,s6Step324HeadGvOut,s6Step324HeadFvOut] 0 s6Step324HeadBank_outgoingOwned

private theorem s6Step324HeadG_distinct : (s6Step324HeadGRow.sign::s6Step324HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324HeadG_owned : (s6Step324HeadGRow.sign::s6Step324HeadGRow.payload).toFinset⊆s6Step324HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step324HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324HeadG_reserved : s6Step324HeadGBefore.reserve s6Step324HeadGFresh.toFinset=some s6Step324HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step324HeadGFresh,arenaWires]
  · norm_num [s6Step324HeadGBefore,s6Step324HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step324HeadGAfter,s6Step324HeadGBefore,s6Step324HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step324HeadG_checked : planRowResizeLog s6Step324HeadGBefore s6Step324HeadGRow 110 s6Step324HeadGFresh=
    some (s6Step324HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 880, 793],777⟩,growRow 777 s6Step324HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step324HeadGBefore s6Step324HeadGAfter s6Step324HeadGRow 110 s6Step324HeadGFresh
    s6Step324HeadG_distinct s6Step324HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step324HeadG_reserved
  have rowEq : WindowRow.mk (s6Step324HeadGRow.payload++s6Step324HeadGFresh) s6Step324HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 880, 793],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step324HeadGvBefore : Arena := s6Step324HeadFAfter

private theorem s6Step324HeadGv_Incoming : rowsOwned s6Step324HeadGvBefore [s6Step324HeadGvRow,s6Step324HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step324HeadGRow,s6Step324HeadFRow,s6Step324HeadGvRow,s6Step324HeadFvRow] 2 s6Step324HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step324HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step324HeadGv_Outgoing : rowsOwned s6Step324HeadFvAfter [s6Step324HeadGvOut,s6Step324HeadFvOut] :=
  hmrRows_owned_drop s6Step324HeadFvAfter [s6Step324HeadGOut,s6Step324HeadFOut,s6Step324HeadGvOut,s6Step324HeadFvOut] 2 s6Step324HeadBank_outgoingOwned

private theorem s6Step324HeadGv_distinct : (s6Step324HeadGvRow.sign::s6Step324HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step324HeadGv_owned : (s6Step324HeadGvRow.sign::s6Step324HeadGvRow.payload).toFinset⊆s6Step324HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step324HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step324HeadGv_reserved : s6Step324HeadGvBefore.reserve s6Step324HeadGvFresh.toFinset=some s6Step324HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step324HeadGvFresh,arenaWires]
  · norm_num [s6Step324HeadGvBefore,s6Step324HeadFAfter,s6Step324HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step324HeadGvAfter,s6Step324HeadGvBefore,s6Step324HeadFAfter,s6Step324HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step324HeadGv_checked : planRowResizeLog s6Step324HeadGvBefore s6Step324HeadGvRow 178 s6Step324HeadGvFresh=
    some (s6Step324HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 891],775⟩,growRow 775 s6Step324HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step324HeadGvBefore s6Step324HeadGvAfter s6Step324HeadGvRow 178 s6Step324HeadGvFresh
    s6Step324HeadGv_distinct s6Step324HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step324HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step324HeadGvRow.payload++s6Step324HeadGvFresh) s6Step324HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 891],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step324HeadBank_rows : planWindowRowsLog s6Step324HeadGBefore [(s6Step324HeadGRow,110),(s6Step324HeadFRow,110),(s6Step324HeadGvRow,178),(s6Step324HeadFvRow,178)] [s6Step324HeadGFresh,s6Step324HeadFFresh,s6Step324HeadGvFresh,s6Step324HeadFvFresh]=
    some (s6Step324HeadFvAfter,[s6Step324HeadGOut,s6Step324HeadFOut,s6Step324HeadGvOut,s6Step324HeadFvOut],(growRow 777 s6Step324HeadGFresh ++ (growRow 795 s6Step324HeadFFresh ++ (growRow 775 s6Step324HeadGvFresh ++ (growRow 776 s6Step324HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step324HeadFvAfter [] []=some (s6Step324HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step324HeadFvBefore s6Step324HeadFvAfter s6Step324HeadFvAfter
    s6Step324HeadFvRow s6Step324HeadFvOut 178 s6Step324HeadFvFresh [] [] []
    (growRow 776 s6Step324HeadFvFresh) ([]) s6Step324HeadFv_Incoming s6Step324HeadFv_checked h4 s6Step324HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step324HeadGvBefore s6Step324HeadGvAfter s6Step324HeadFvAfter
    s6Step324HeadGvRow s6Step324HeadGvOut 178 s6Step324HeadGvFresh [(s6Step324HeadFvRow,178)] [s6Step324HeadFvFresh] [s6Step324HeadFvOut]
    (growRow 775 s6Step324HeadGvFresh) ((growRow 776 s6Step324HeadFvFresh ++ [])) s6Step324HeadGv_Incoming s6Step324HeadGv_checked h3 s6Step324HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step324HeadFBefore s6Step324HeadFAfter s6Step324HeadFvAfter
    s6Step324HeadFRow s6Step324HeadFOut 110 s6Step324HeadFFresh [(s6Step324HeadGvRow,178),(s6Step324HeadFvRow,178)] [s6Step324HeadGvFresh,s6Step324HeadFvFresh] [s6Step324HeadGvOut,s6Step324HeadFvOut]
    (growRow 795 s6Step324HeadFFresh) ((growRow 775 s6Step324HeadGvFresh ++ (growRow 776 s6Step324HeadFvFresh ++ []))) s6Step324HeadF_Incoming s6Step324HeadF_checked h2 s6Step324HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step324HeadGBefore s6Step324HeadGAfter s6Step324HeadFvAfter
    s6Step324HeadGRow s6Step324HeadGOut 110 s6Step324HeadGFresh [(s6Step324HeadFRow,110),(s6Step324HeadGvRow,178),(s6Step324HeadFvRow,178)] [s6Step324HeadFFresh,s6Step324HeadGvFresh,s6Step324HeadFvFresh] [s6Step324HeadFOut,s6Step324HeadGvOut,s6Step324HeadFvOut]
    (growRow 777 s6Step324HeadGFresh) ((growRow 795 s6Step324HeadFFresh ++ (growRow 775 s6Step324HeadGvFresh ++ (growRow 776 s6Step324HeadFvFresh ++ [])))) s6Step324HeadG_Incoming s6Step324HeadG_checked h1 s6Step324HeadG_Outgoing
  exact h0

private theorem s6Step324HeadBank_checked : compileHmrBankResizeLog .headroom s6Step324HeadGBefore ⟨s6Step324HeadFRow,s6Step324HeadGRow,s6Step324HeadFvRow,s6Step324HeadGvRow⟩ ⟨110,110,178,178⟩ [s6Step324HeadGFresh,s6Step324HeadFFresh,s6Step324HeadGvFresh,s6Step324HeadFvFresh]=
    some (s6Step324HeadFvAfter,⟨s6Step324HeadFOut,s6Step324HeadGOut,s6Step324HeadFvOut,s6Step324HeadGvOut⟩,(growRow 777 s6Step324HeadGFresh ++ (growRow 795 s6Step324HeadFFresh ++ (growRow 775 s6Step324HeadGvFresh ++ (growRow 776 s6Step324HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step324HeadBank_rows]
  rfl

private theorem s6Step324Front_checked : compileHmrSourceFrontLog s6Step324EntryFBefore s6Step324FrontBank 109 177 ⟨108,108,178,177⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step324FrontLog=some s6Step324FrontPlan := by
  have pairEq : s6Step324FrontPair=⟨s6Step324HeadFRow,s6Step324HeadGRow,s6Step324HeadFvRow,s6Step324HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step324FrontHead=⟨s6Step324ExitFRow,s6Step324ExitGRow,s6Step324ExitFvRow,s6Step324ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step324Add0A=s6Step324FrontHead.f.wires := by decide +kernel
  have gEq : s6Step324Add0B=s6Step324FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step324Add1A=s6Step324FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step324Add1B=s6Step324FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step324EntryFBefore s6Step324FrontBank 109 177 ⟨108,108,178,177⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step324FrontLog s6Step324FrontPlan
  · exact s6Step324Front_entry
  · exact s6Step324EntryBank_checked
  · exact s6Step324Front_sigma
  · rfl
  · exact s6Step324Front_branch
  · rfl
  · simpa only [s6Step324FrontPlan,pairEq] using s6Step324HeadBank_checked
  · simpa only [s6Step324FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step324F4_checked
  · exact s6Step324Counter_checked
  · rfl
  · simpa only [s6Step324FrontPlan,headEq] using s6Step324ExitBank_checked

private theorem s6Step324Complete_explicit_checked : compileHmrEarlyStepLog s6Step324EntryFBefore s6Step324FrontBank 109 177 ⟨108,108,178,177⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step324CompleteLog=some s6Step324CompletePlan := by
  let Q := s6Step324EarlyControlPlan
  have hq := s6Step324EarlyControl_plan_checked
  have fv1 : s6Step324CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step324CompleteOut.fv.payload[2]?.getD s6Step324CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step324CompleteOut.fv.payload[3]?.getD s6Step324CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step324CompleteOut.fv.payload[4]?.getD s6Step324CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step324EntryFBefore s6Step324EarlyControlArena s6Step324FrontBank 109 177 ⟨108,108,178,177⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step324CompleteLog s6Step324FrontPlan Q
    s6Step324Front_checked s6Step324Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step324Complete_owned s6Step324Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step324EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 830 s6Step324CompleteOut.fv.second (s6Step324CompleteOut.fv.payload[2]?.getD s6Step324CompleteOut.fv.sign) (s6Step324CompleteOut.fv.payload[3]?.getD s6Step324CompleteOut.fv.sign) (s6Step324CompleteOut.fv.payload[4]?.getD s6Step324CompleteOut.fv.sign) 810 60 s6Step324EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep324Arena : Arena := s6Step324EntryFBefore
def s6PrivateStep324Bank : WindowBank := s6Step324FrontBank
def s6PrivateStep324Spec : HmrSourceWalkStepLog := ⟨109,177,⟨108,108,178,177⟩,60,.early s6Step324CompleteLog⟩
def s6PrivateStep324Plan : HmrSourceStepPlan := .early s6Step324CompletePlan
theorem s6PrivateStep324_source : s6PrivateStep324Spec=s6ObservedLogs320[4] := rfl
theorem s6PrivateStep324_checked : compileHmrSourceStepLog s6PrivateStep324Arena s6PrivateStep324Bank
    s6PrivateStep324Spec.fgWidth s6PrivateStep324Spec.vWidth s6PrivateStep324Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 324 s6PrivateStep324Spec.need none s6PrivateStep324Spec.log=some s6PrivateStep324Plan := by
  change compileHmrSourceStepLog s6Step324EntryFBefore s6Step324FrontBank 109 177 ⟨108,108,178,177⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 324 60 none (.early s6Step324CompleteLog)=some (.early s6Step324CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 324<498)]
  rw [s6Step324Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
