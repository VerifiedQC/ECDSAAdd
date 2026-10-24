import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep321
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

private def s6Step323CompleteMoves : List (Wire × Wire) := [(810,108)]

private def s6Step323EarlyControlLog : HmrEarlyControlLog := ⟨[810, 793, 843, 891, 791],[841],[865],[860, 805, 817, 812, 915, 906],[]⟩

private def s6Step323FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[791], [891], [793], [843]],[[], [], [], []]⟩,[830],[880],[841],[865],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[841, 865, 860, 805]⟩

private def s6Step323CompleteLog : HmrEarlyStepLog := ⟨s6Step323FrontLog,s6Step323CompleteMoves,s6Step323EarlyControlLog⟩

private def s6Step323ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364],795⟩

private def s6Step323ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩

private def s6Step323ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],777⟩

private def s6Step323ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩

private def s6Step323FrontOut : WindowBank := ⟨s6Step323ExitFOut,s6Step323ExitGOut,s6Step323ExitFvOut,s6Step323ExitGvOut⟩

private def s6Step323CompleteOut : WindowBank := s6Step323FrontOut.repacked s6Step323CompleteMoves

private def s6Step323EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step323EarlyControlPositiveArena,[841],s6Step323EarlyControlEqualityArena,[865],⟨⟨830,false⟩,[⟨⟨841,false⟩,865⟩]⟩⟩

private def s6Step323EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,810⟩,⟨⟨772,false⟩,793⟩,⟨⟨771,false⟩,843⟩,⟨⟨770,false⟩,891⟩,⟨⟨769,false⟩,791⟩]⟩

private def s6Step323EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step323EarlyControlZeroArena,s6Step323EarlyControlZeroPlan,s6Step323EarlyControlClassPlan,s6Step323EarlyControlFlagArena,s6Step323EarlyControlFittedArena,s6Step323EarlyControlHistoryArena,s6Step323EarlyControlSigmaArena,s6Step323EarlyControlOutputArena,s6Step323EarlyControlLog⟩

private def s6Step323CounterWork : List Wire := [841, 865, 860, 805]

private theorem s6Step323Counter_bounded : s6Step323CounterWork.toFinset⊆arenaWires := by norm_num [s6Step323CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step323HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323CounterDuring : Arena := ⟨s6Step323HeadFvAfter.live∪s6Step323CounterWork.toFinset,Finset.union_subset s6Step323HeadFvAfter.bounded s6Step323Counter_bounded⟩

private def s6Step323EntryFFresh : List Wire := []

private def s6Step323EntryFvFresh : List Wire := []

private def s6Step323EntryGFresh : List Wire := []

private def s6Step323EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323EntryGvAfter : Arena := s6Step323EntryFBefore

private def s6Step323EntryGvFresh : List Wire := []

private def s6Step323ExitFExtra : List Wire := [891]

private def s6Step323ExitFvExtra : List Wire := [843]

private def s6Step323ExitGExtra : List Wire := [108, 791]

private def s6Step323ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323ExitGvExtra : List Wire := [793]

private def s6Step323Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323Add0Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step323Add0_bounded : s6Step323Add0Work.toFinset⊆arenaWires := by
  have h : s6Step323Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step323Add0During : Arena := ⟨s6Step323Add0Arena.live∪s6Step323Add0Work.toFinset,Finset.union_subset s6Step323Add0Arena.bounded s6Step323Add0_bounded⟩

private def s6Step323Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323Add1Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step323Add1_bounded : s6Step323Add1Work.toFinset⊆arenaWires := by
  have h : s6Step323Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step323Add1During : Arena := ⟨s6Step323Add1Arena.live∪s6Step323Add1Work.toFinset,Finset.union_subset s6Step323Add1Arena.bounded s6Step323Add1_bounded⟩

private def s6Step323F4FlagArena : Arena := ⟨s6Step323HeadFvAfter.live∪{841},Finset.union_subset s6Step323HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step323F4Plan : HmrHybridF4Plan := ⟨s6Step323F4FlagArena,[841],s6Step323Add0Arena,[865],s6Step323Add0During,s6Step323Add0Work,s6Step323Add1During,s6Step323Add1Work⟩

private def s6Step323HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 891],795⟩

private def s6Step323HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 843],776⟩

private def s6Step323HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 791],777⟩

private def s6Step323HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 793],775⟩

private def s6Step323FrontHead : WindowBank := ⟨s6Step323HeadFOut,s6Step323HeadGOut,s6Step323HeadFvOut,s6Step323HeadGvOut⟩

private def s6Step323EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364],795⟩

private def s6Step323EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩

private def s6Step323EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108],777⟩

private def s6Step323EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩

private def s6Step323FrontPair : WindowBank := ⟨s6Step323EntryFOut,s6Step323EntryGOut,s6Step323EntryFvOut,s6Step323EntryGvOut⟩

private def s6Step323FrontSigmaArena : Arena := ⟨s6Step323EntryGvAfter.live∪{830},Finset.union_subset s6Step323EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step323HeadFFresh : List Wire := [891]

private def s6Step323HeadFvFresh : List Wire := [843]

private def s6Step323HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323HeadGFresh : List Wire := [791]

private def s6Step323HeadGvFresh : List Wire := [793]

private def s6Step323FrontPlan : HmrSourceFront := ⟨s6Step323EntryGvAfter,s6Step323FrontPair,(growRow 795 s6Step323EntryFFresh ++ (growRow 777 s6Step323EntryGFresh ++ (growRow 776 s6Step323EntryFvFresh ++ (growRow 775 s6Step323EntryGvFresh ++ [])))),s6Step323FrontSigmaArena,[830],s6Step323HeadGBefore,[880],
  s6Step323HeadFvAfter,s6Step323FrontHead,(growRow 777 s6Step323HeadGFresh ++ (growRow 795 s6Step323HeadFFresh ++ (growRow 775 s6Step323HeadGvFresh ++ (growRow 776 s6Step323HeadFvFresh ++ [])))),s6Step323F4Plan,s6Step323CounterDuring,s6Step323CounterWork,s6Step323ExitGvAfter,s6Step323FrontOut,(shrinkRow 777 s6Step323ExitGExtra ++ (shrinkRow 795 s6Step323ExitFExtra ++ (shrinkRow 776 s6Step323ExitFvExtra ++ (shrinkRow 775 s6Step323ExitGvExtra ++ []))))⟩

private def s6Step323CompletePlan : HmrEarlyStepPlan := ⟨s6Step323FrontPlan,s6Step323EarlyControlArena,s6Step323EarlyControlPlan,s6Step323CompleteMoves⟩

private theorem s6Step323Complete_apart : List.Disjoint (s6Step323CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [830, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step323CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[830, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step323Complete_owned : (s6Step323CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step323EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step323EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step323CompleteMoveArena : Arena := ⟨s6Step323ExitGvAfter.live∪{108},Finset.union_subset s6Step323ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step323Complete_repack : s6Step323ExitGvAfter.checkRepack s6Step323CompleteMoves=some s6Step323EarlyControlArena := by
  have owned : 810∈s6Step323ExitGvAfter.live := by norm_num [s6Step323ExitGvAfter,arenaWires]
  have reserve : s6Step323ExitGvAfter.reserve {108}=some s6Step323CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step323ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step323CompleteMoveArena.retireSet {810}=s6Step323EarlyControlArena := by
    unfold Arena.retireSet s6Step323EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step323CompleteMoveArena,s6Step323ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step323CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step323CompleteMoveArena.retireSet {810}).checkRepack []=some s6Step323EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step323EarlyControl_branchOwned : ([880] : List Wire).toFinset⊆s6Step323EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step323EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323EarlyControl_branch : compileHmrBranchRetirement s6Step323EarlyControlSigmaArena 880=some s6Step323EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step323EarlyControl_branchOwned
  · ext q
    simp [s6Step323EarlyControlOutputArena,s6Step323EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step323EarlyControl_classEqualityBorrow : s6Step323EarlyControlPositiveArena.checkBorrow (([830, 841] : List Wire).length-1) s6Step323EarlyControlLog.classWork=some s6Step323EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step323EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step323EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step323EarlyControlEqualityArena,s6Step323EarlyControlPositiveArena,s6Step323EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step323EarlyControl_classEqualityOwned : ([830, 841] : List Wire).toFinset⊆s6Step323EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step323EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323EarlyControl_classEquality : compileHmrEqualityLog s6Step323EarlyControlPositiveArena [830, 841] 0 s6Step323EarlyControlLog.classWork=some (s6Step323EarlyControlEqualityArena,s6Step323EarlyControlLog.classWork,s6Step323EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step323EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step323EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step323EarlyControl_classOwned : ([769, 791, 830] : List Wire).toFinset⊆s6Step323EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step323EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323EarlyControl_positiveBorrow : s6Step323EarlyControlZeroArena.checkBorrow (1) s6Step323EarlyControlLog.positiveWork=some s6Step323EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step323EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step323EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step323EarlyControlPositiveArena,s6Step323EarlyControlZeroArena,s6Step323EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step323EarlyControl_class : compileHmrSourceClassLog s6Step323EarlyControlZeroArena false 769 s6Step323EarlyControlZeroPlan.top 0 830 s6Step323EarlyControlLog.positiveWork s6Step323EarlyControlLog.classWork=some s6Step323EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step323EarlyControlClassPlan s6Step323EarlyControlZeroArena false 769 s6Step323EarlyControlZeroPlan.top 0 830
  constructor
  · decide +kernel
  · exact s6Step323EarlyControl_classOwned
  · exact s6Step323EarlyControl_positiveBorrow
  · exact s6Step323EarlyControl_classEquality

private theorem s6Step323EarlyControl_entryRecordOwned : ([880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step323EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step323EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323EarlyControl_entrySigmaOwned : ([830, 254] : List Wire).toFinset⊆s6Step323EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step323EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323EarlyControl_fitBorrow : s6Step323EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step323EarlyControlLog.recordFresh=some s6Step323EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step323EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step323EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step323EarlyControlFittedArena,s6Step323EarlyControlFlagArena,s6Step323EarlyControlLog,arenaWires]

private theorem s6Step323EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step323EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step323EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323EarlyControl_fit : compileHmrRecordGrowLog s6Step323EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step323EarlyControlLog.recordFresh=some s6Step323EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step323EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step323EarlyControl_fitBorrow

private theorem s6Step323EarlyControl_flagsBorrow : s6Step323EarlyControlEqualityArena.checkBorrow (6) s6Step323EarlyControlLog.flagWork=some s6Step323EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step323EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step323EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step323EarlyControlFlagArena,s6Step323EarlyControlEqualityArena,s6Step323EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step323EarlyControl_flagsOwned : ([865, 253, 252, 251] : List Wire).toFinset⊆s6Step323EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step323EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323EarlyControl_flags : compileHmrFlagsLog s6Step323EarlyControlClassPlan.equalityArena s6Step323EarlyControlClassPlan.equality.top 253 252 251 s6Step323EarlyControlLog.flagWork=some s6Step323EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step323EarlyControl_flagsOwned⟩
  · exact s6Step323EarlyControl_flagsBorrow

private theorem s6Step323EarlyControl_historyBorrow : s6Step323EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step323EarlyControlLog.recordFresh=some s6Step323EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step323EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step323EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step323EarlyControlHistoryArena,s6Step323EarlyControlArena,s6Step323EarlyControlLog,arenaWires]

private theorem s6Step323EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step323EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step323EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323EarlyControl_history : compileHmrRecordGrowLog s6Step323EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step323EarlyControlLog.recordFresh=some s6Step323EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step323EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step323EarlyControl_historyBorrow

private theorem s6Step323EarlyControl_sigmaOwned : ([254, 830] : List Wire).toFinset⊆s6Step323EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step323EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323EarlyControl_sigmaReleaseOwned : ([830] : List Wire).toFinset⊆s6Step323EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step323EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323EarlyControl_sigmaRelease : s6Step323EarlyControlHistoryArena.release {830} (fun _ => false)=some s6Step323EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step323EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step323EarlyControlSigmaArena,s6Step323EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step323EarlyControl_sigma : compileHmrSigmaDropLog s6Step323EarlyControlHistoryArena false 0 0 254 830 []=some s6Step323EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step323EarlyControl_sigmaOwned⟩
  · exact s6Step323EarlyControl_sigmaRelease

private theorem s6Step323EarlyControl_zeroBorrow : s6Step323EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step323EarlyControlLog.zeroWork=some s6Step323EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step323EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step323EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step323EarlyControlZeroArena,s6Step323EarlyControlArena,s6Step323EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step323EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step323EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step323EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323EarlyControl_zero : compileHmrEqualityLog s6Step323EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step323EarlyControlLog.zeroWork=some (s6Step323EarlyControlZeroArena,s6Step323EarlyControlLog.zeroWork,s6Step323EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step323EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step323EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step323EarlyControl_logged : s6Step323EarlyControlPlan.Logged s6Step323EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 830 254 253 252 251 880 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step323EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step323EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step323EarlyControl_zero
  · exact s6Step323EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step323EarlyControl_flags
  · exact s6Step323EarlyControl_fit
  · exact s6Step323EarlyControl_history
  · exact s6Step323EarlyControl_sigma
  · exact s6Step323EarlyControl_branch

private theorem s6Step323EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step323EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 830 254 253 252 251 880 60 s6Step323EarlyControlLog=some s6Step323EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step323EarlyControlPlan s6Step323EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 830 254 253 252 251 880 60 s6Step323EarlyControl_logged

private def s6Step323EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364],795⟩

private def s6Step323EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩

private def s6Step323EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108],777⟩

private def s6Step323EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩

private def s6Step323FrontBank : WindowBank := ⟨s6Step323EntryFRow,s6Step323EntryGRow,s6Step323EntryFvRow,s6Step323EntryGvRow⟩

private def s6Step323Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 891, 795]

private def s6Step323Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 791, 777]

private def s6Step323Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 843, 776]

private def s6Step323Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 793, 775]

private theorem s6Step323Counter_apart : Disjoint s6Step323HeadFvAfter.live s6Step323CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step323HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323Counter_borrowed : s6Step323HeadFvAfter.checkBorrow 4 s6Step323CounterWork=some s6Step323CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step323HeadFvAfter s6Step323CounterDuring s6Step323CounterWork.toFinset s6Step323Counter_bounded s6Step323Counter_apart rfl

private theorem s6Step323Counter_owned : (830::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step323HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step323HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323Counter_checked : compileHmrCounterStepLog s6Step323HeadFvAfter true 830 [774, 773, 772, 771, 770, 769] s6Step323CounterWork=some s6Step323CounterDuring := by
  have owned : ∀q∈830::[774, 773, 772, 771, 770, 769],q∈s6Step323HeadFvAfter.live := fun q hq => s6Step323Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step323Counter_borrowed

private def s6Step323EntryFAfter : Arena := s6Step323EntryFBefore

private theorem s6Step323EntryBank_incomingDistinct : ([s6Step323EntryFRow,s6Step323EntryGRow,s6Step323EntryFvRow,s6Step323EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323EntryF_Incoming : rowsOwned s6Step323EntryFBefore [s6Step323EntryFRow,s6Step323EntryGRow,s6Step323EntryFvRow,s6Step323EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step323EntryFRow,s6Step323EntryGRow,s6Step323EntryFvRow,s6Step323EntryGvRow] 0 s6Step323EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step323EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step323EntryBank_outgoingOwned : rowsOwned s6Step323EntryGvAfter [s6Step323EntryFOut,s6Step323EntryGOut,s6Step323EntryFvOut,s6Step323EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step323EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step323EntryF_Outgoing : rowsOwned s6Step323EntryGvAfter [s6Step323EntryFOut,s6Step323EntryGOut,s6Step323EntryFvOut,s6Step323EntryGvOut] :=
  hmrRows_owned_drop s6Step323EntryGvAfter [s6Step323EntryFOut,s6Step323EntryGOut,s6Step323EntryFvOut,s6Step323EntryGvOut] 0 s6Step323EntryBank_outgoingOwned

private theorem s6Step323EntryF_distinct : (s6Step323EntryFRow.sign::s6Step323EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323EntryF_owned : (s6Step323EntryFRow.sign::s6Step323EntryFRow.payload).toFinset⊆s6Step323EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step323EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323EntryF_reserved : s6Step323EntryFBefore.reserve s6Step323EntryFFresh.toFinset=some s6Step323EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step323EntryFFresh,arenaWires]
  · norm_num [s6Step323EntryFBefore,s6Step323EntryFFresh,arenaWires]
  · simp only [s6Step323EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step323EntryF_checked : planRowResizeLog s6Step323EntryFBefore s6Step323EntryFRow 109 s6Step323EntryFFresh=
    some (s6Step323EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364],795⟩,growRow 795 s6Step323EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step323EntryFBefore s6Step323EntryFAfter s6Step323EntryFRow 109 s6Step323EntryFFresh
    s6Step323EntryF_distinct s6Step323EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step323EntryF_reserved
  have rowEq : WindowRow.mk (s6Step323EntryFRow.payload++s6Step323EntryFFresh) s6Step323EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step323EntryFvAfter : Arena := s6Step323EntryFBefore

private def s6Step323EntryFvBefore : Arena := s6Step323EntryFBefore

private theorem s6Step323EntryFv_Incoming : rowsOwned s6Step323EntryFvBefore [s6Step323EntryFvRow,s6Step323EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step323EntryFRow,s6Step323EntryGRow,s6Step323EntryFvRow,s6Step323EntryGvRow] 2 s6Step323EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step323EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step323EntryFv_Outgoing : rowsOwned s6Step323EntryGvAfter [s6Step323EntryFvOut,s6Step323EntryGvOut] :=
  hmrRows_owned_drop s6Step323EntryGvAfter [s6Step323EntryFOut,s6Step323EntryGOut,s6Step323EntryFvOut,s6Step323EntryGvOut] 2 s6Step323EntryBank_outgoingOwned

private theorem s6Step323EntryFv_distinct : (s6Step323EntryFvRow.sign::s6Step323EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323EntryFv_owned : (s6Step323EntryFvRow.sign::s6Step323EntryFvRow.payload).toFinset⊆s6Step323EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step323EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323EntryFv_reserved : s6Step323EntryFvBefore.reserve s6Step323EntryFvFresh.toFinset=some s6Step323EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step323EntryFvFresh,arenaWires]
  · norm_num [s6Step323EntryFvBefore,s6Step323EntryFBefore,s6Step323EntryFvFresh,arenaWires]
  · simp only [s6Step323EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step323EntryFv_checked : planRowResizeLog s6Step323EntryFvBefore s6Step323EntryFvRow 177 s6Step323EntryFvFresh=
    some (s6Step323EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩,growRow 776 s6Step323EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step323EntryFvBefore s6Step323EntryFvAfter s6Step323EntryFvRow 177 s6Step323EntryFvFresh
    s6Step323EntryFv_distinct s6Step323EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step323EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step323EntryFvRow.payload++s6Step323EntryFvFresh) s6Step323EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step323EntryGAfter : Arena := s6Step323EntryFBefore

private def s6Step323EntryGBefore : Arena := s6Step323EntryFBefore

private theorem s6Step323EntryG_Incoming : rowsOwned s6Step323EntryGBefore [s6Step323EntryGRow,s6Step323EntryFvRow,s6Step323EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step323EntryFRow,s6Step323EntryGRow,s6Step323EntryFvRow,s6Step323EntryGvRow] 1 s6Step323EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step323EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step323EntryG_Outgoing : rowsOwned s6Step323EntryGvAfter [s6Step323EntryGOut,s6Step323EntryFvOut,s6Step323EntryGvOut] :=
  hmrRows_owned_drop s6Step323EntryGvAfter [s6Step323EntryFOut,s6Step323EntryGOut,s6Step323EntryFvOut,s6Step323EntryGvOut] 1 s6Step323EntryBank_outgoingOwned

private theorem s6Step323EntryG_distinct : (s6Step323EntryGRow.sign::s6Step323EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323EntryG_owned : (s6Step323EntryGRow.sign::s6Step323EntryGRow.payload).toFinset⊆s6Step323EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step323EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323EntryG_reserved : s6Step323EntryGBefore.reserve s6Step323EntryGFresh.toFinset=some s6Step323EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step323EntryGFresh,arenaWires]
  · norm_num [s6Step323EntryGBefore,s6Step323EntryFBefore,s6Step323EntryGFresh,arenaWires]
  · simp only [s6Step323EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step323EntryG_checked : planRowResizeLog s6Step323EntryGBefore s6Step323EntryGRow 109 s6Step323EntryGFresh=
    some (s6Step323EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108],777⟩,growRow 777 s6Step323EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step323EntryGBefore s6Step323EntryGAfter s6Step323EntryGRow 109 s6Step323EntryGFresh
    s6Step323EntryG_distinct s6Step323EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step323EntryG_reserved
  have rowEq : WindowRow.mk (s6Step323EntryGRow.payload++s6Step323EntryGFresh) s6Step323EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step323EntryGvBefore : Arena := s6Step323EntryFBefore

private theorem s6Step323EntryGv_Incoming : rowsOwned s6Step323EntryGvBefore [s6Step323EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step323EntryFRow,s6Step323EntryGRow,s6Step323EntryFvRow,s6Step323EntryGvRow] 3 s6Step323EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step323EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step323EntryGv_Outgoing : rowsOwned s6Step323EntryGvAfter [s6Step323EntryGvOut] :=
  hmrRows_owned_drop s6Step323EntryGvAfter [s6Step323EntryFOut,s6Step323EntryGOut,s6Step323EntryFvOut,s6Step323EntryGvOut] 3 s6Step323EntryBank_outgoingOwned

private theorem s6Step323EntryGv_distinct : (s6Step323EntryGvRow.sign::s6Step323EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323EntryGv_owned : (s6Step323EntryGvRow.sign::s6Step323EntryGvRow.payload).toFinset⊆s6Step323EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step323EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323EntryGv_reserved : s6Step323EntryGvBefore.reserve s6Step323EntryGvFresh.toFinset=some s6Step323EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step323EntryGvFresh,arenaWires]
  · norm_num [s6Step323EntryGvBefore,s6Step323EntryFBefore,s6Step323EntryGvFresh,arenaWires]
  · simp only [s6Step323EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step323EntryGv_checked : planRowResizeLog s6Step323EntryGvBefore s6Step323EntryGvRow 177 s6Step323EntryGvFresh=
    some (s6Step323EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩,growRow 775 s6Step323EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step323EntryGvBefore s6Step323EntryGvAfter s6Step323EntryGvRow 177 s6Step323EntryGvFresh
    s6Step323EntryGv_distinct s6Step323EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step323EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step323EntryGvRow.payload++s6Step323EntryGvFresh) s6Step323EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step323EntryBank_rows : planWindowRowsLog s6Step323EntryFBefore [(s6Step323EntryFRow,109),(s6Step323EntryGRow,109),(s6Step323EntryFvRow,177),(s6Step323EntryGvRow,177)] [s6Step323EntryFFresh,s6Step323EntryGFresh,s6Step323EntryFvFresh,s6Step323EntryGvFresh]=
    some (s6Step323EntryGvAfter,[s6Step323EntryFOut,s6Step323EntryGOut,s6Step323EntryFvOut,s6Step323EntryGvOut],(growRow 795 s6Step323EntryFFresh ++ (growRow 777 s6Step323EntryGFresh ++ (growRow 776 s6Step323EntryFvFresh ++ (growRow 775 s6Step323EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step323EntryGvAfter [] []=some (s6Step323EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step323EntryGvBefore s6Step323EntryGvAfter s6Step323EntryGvAfter
    s6Step323EntryGvRow s6Step323EntryGvOut 177 s6Step323EntryGvFresh [] [] []
    (growRow 775 s6Step323EntryGvFresh) ([]) s6Step323EntryGv_Incoming s6Step323EntryGv_checked h4 s6Step323EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step323EntryFvBefore s6Step323EntryFvAfter s6Step323EntryGvAfter
    s6Step323EntryFvRow s6Step323EntryFvOut 177 s6Step323EntryFvFresh [(s6Step323EntryGvRow,177)] [s6Step323EntryGvFresh] [s6Step323EntryGvOut]
    (growRow 776 s6Step323EntryFvFresh) ((growRow 775 s6Step323EntryGvFresh ++ [])) s6Step323EntryFv_Incoming s6Step323EntryFv_checked h3 s6Step323EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step323EntryGBefore s6Step323EntryGAfter s6Step323EntryGvAfter
    s6Step323EntryGRow s6Step323EntryGOut 109 s6Step323EntryGFresh [(s6Step323EntryFvRow,177),(s6Step323EntryGvRow,177)] [s6Step323EntryFvFresh,s6Step323EntryGvFresh] [s6Step323EntryFvOut,s6Step323EntryGvOut]
    (growRow 777 s6Step323EntryGFresh) ((growRow 776 s6Step323EntryFvFresh ++ (growRow 775 s6Step323EntryGvFresh ++ []))) s6Step323EntryG_Incoming s6Step323EntryG_checked h2 s6Step323EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step323EntryFBefore s6Step323EntryFAfter s6Step323EntryGvAfter
    s6Step323EntryFRow s6Step323EntryFOut 109 s6Step323EntryFFresh [(s6Step323EntryGRow,109),(s6Step323EntryFvRow,177),(s6Step323EntryGvRow,177)] [s6Step323EntryGFresh,s6Step323EntryFvFresh,s6Step323EntryGvFresh] [s6Step323EntryGOut,s6Step323EntryFvOut,s6Step323EntryGvOut]
    (growRow 795 s6Step323EntryFFresh) ((growRow 777 s6Step323EntryGFresh ++ (growRow 776 s6Step323EntryFvFresh ++ (growRow 775 s6Step323EntryGvFresh ++ [])))) s6Step323EntryF_Incoming s6Step323EntryF_checked h1 s6Step323EntryF_Outgoing
  exact h0

private theorem s6Step323EntryBank_checked : compileHmrBankResizeLog .entry s6Step323EntryFBefore ⟨s6Step323EntryFRow,s6Step323EntryGRow,s6Step323EntryFvRow,s6Step323EntryGvRow⟩ ⟨109,109,177,177⟩ [s6Step323EntryFFresh,s6Step323EntryGFresh,s6Step323EntryFvFresh,s6Step323EntryGvFresh]=
    some (s6Step323EntryGvAfter,⟨s6Step323EntryFOut,s6Step323EntryGOut,s6Step323EntryFvOut,s6Step323EntryGvOut⟩,(growRow 795 s6Step323EntryFFresh ++ (growRow 777 s6Step323EntryGFresh ++ (growRow 776 s6Step323EntryFvFresh ++ (growRow 775 s6Step323EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step323EntryBank_rows]
  rfl

private def s6Step323ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323ExitFBefore : Arena := s6Step323ExitGAfter

private def s6Step323ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 891],795⟩

private def s6Step323ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 843],776⟩

private def s6Step323ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 791],777⟩

private def s6Step323ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 793],775⟩

private theorem s6Step323ExitBank_incomingDistinct : ([s6Step323ExitGRow,s6Step323ExitFRow,s6Step323ExitFvRow,s6Step323ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323ExitF_Incoming : rowsOwned s6Step323ExitFBefore [s6Step323ExitFRow,s6Step323ExitFvRow,s6Step323ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step323ExitGRow,s6Step323ExitFRow,s6Step323ExitFvRow,s6Step323ExitGvRow] 1 s6Step323ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step323ExitFBefore (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step323ExitBank_outgoingOwned : rowsOwned s6Step323ExitGvAfter [s6Step323ExitGOut,s6Step323ExitFOut,s6Step323ExitFvOut,s6Step323ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step323ExitGvAfter (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step323ExitF_Outgoing : rowsOwned s6Step323ExitGvAfter [s6Step323ExitFOut,s6Step323ExitFvOut,s6Step323ExitGvOut] :=
  hmrRows_owned_drop s6Step323ExitGvAfter [s6Step323ExitGOut,s6Step323ExitFOut,s6Step323ExitFvOut,s6Step323ExitGvOut] 1 s6Step323ExitBank_outgoingOwned

private theorem s6Step323ExitF_distinct : (s6Step323ExitFRow.sign::s6Step323ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323ExitF_owned : (s6Step323ExitFRow.sign::s6Step323ExitFRow.payload).toFinset⊆s6Step323ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step323ExitFBefore (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323ExitF_retired : s6Step323ExitFBefore.retireSet s6Step323ExitFExtra.toFinset=s6Step323ExitFAfter := by
  unfold Arena.retireSet s6Step323ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step323ExitFBefore,s6Step323ExitGAfter,s6Step323ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step323ExitF_checked : planRowResizeLog s6Step323ExitFBefore s6Step323ExitFRow 109 []=
    some (s6Step323ExitFAfter,s6Step323ExitFOut,shrinkRow 795 s6Step323ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step323ExitFBefore s6Step323ExitFRow 109 s6Step323ExitF_distinct s6Step323ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step323ExitFRow.payload.take 109) s6Step323ExitFRow.sign=s6Step323ExitFOut := by decide +kernel
  have hi : s6Step323ExitFRow.payload.drop 109=s6Step323ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step323ExitF_retired] at result
  exact result

private def s6Step323ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323ExitFvBefore : Arena := s6Step323ExitFAfter

private theorem s6Step323ExitFv_Incoming : rowsOwned s6Step323ExitFvBefore [s6Step323ExitFvRow,s6Step323ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step323ExitGRow,s6Step323ExitFRow,s6Step323ExitFvRow,s6Step323ExitGvRow] 2 s6Step323ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step323ExitFvBefore (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step323ExitFv_Outgoing : rowsOwned s6Step323ExitGvAfter [s6Step323ExitFvOut,s6Step323ExitGvOut] :=
  hmrRows_owned_drop s6Step323ExitGvAfter [s6Step323ExitGOut,s6Step323ExitFOut,s6Step323ExitFvOut,s6Step323ExitGvOut] 2 s6Step323ExitBank_outgoingOwned

private theorem s6Step323ExitFv_distinct : (s6Step323ExitFvRow.sign::s6Step323ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323ExitFv_owned : (s6Step323ExitFvRow.sign::s6Step323ExitFvRow.payload).toFinset⊆s6Step323ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step323ExitFvBefore (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323ExitFv_retired : s6Step323ExitFvBefore.retireSet s6Step323ExitFvExtra.toFinset=s6Step323ExitFvAfter := by
  unfold Arena.retireSet s6Step323ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step323ExitFvBefore,s6Step323ExitFAfter,s6Step323ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step323ExitFv_checked : planRowResizeLog s6Step323ExitFvBefore s6Step323ExitFvRow 177 []=
    some (s6Step323ExitFvAfter,s6Step323ExitFvOut,shrinkRow 776 s6Step323ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step323ExitFvBefore s6Step323ExitFvRow 177 s6Step323ExitFv_distinct s6Step323ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step323ExitFvRow.payload.take 177) s6Step323ExitFvRow.sign=s6Step323ExitFvOut := by decide +kernel
  have hi : s6Step323ExitFvRow.payload.drop 177=s6Step323ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step323ExitFv_retired] at result
  exact result

private def s6Step323ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step323ExitG_Incoming : rowsOwned s6Step323ExitGBefore [s6Step323ExitGRow,s6Step323ExitFRow,s6Step323ExitFvRow,s6Step323ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step323ExitGRow,s6Step323ExitFRow,s6Step323ExitFvRow,s6Step323ExitGvRow] 0 s6Step323ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step323ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step323ExitG_Outgoing : rowsOwned s6Step323ExitGvAfter [s6Step323ExitGOut,s6Step323ExitFOut,s6Step323ExitFvOut,s6Step323ExitGvOut] :=
  hmrRows_owned_drop s6Step323ExitGvAfter [s6Step323ExitGOut,s6Step323ExitFOut,s6Step323ExitFvOut,s6Step323ExitGvOut] 0 s6Step323ExitBank_outgoingOwned

private theorem s6Step323ExitG_distinct : (s6Step323ExitGRow.sign::s6Step323ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323ExitG_owned : (s6Step323ExitGRow.sign::s6Step323ExitGRow.payload).toFinset⊆s6Step323ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step323ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323ExitG_retired : s6Step323ExitGBefore.retireSet s6Step323ExitGExtra.toFinset=s6Step323ExitGAfter := by
  unfold Arena.retireSet s6Step323ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step323ExitGBefore,s6Step323ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step323ExitG_checked : planRowResizeLog s6Step323ExitGBefore s6Step323ExitGRow 108 []=
    some (s6Step323ExitGAfter,s6Step323ExitGOut,shrinkRow 777 s6Step323ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step323ExitGBefore s6Step323ExitGRow 108 s6Step323ExitG_distinct s6Step323ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step323ExitGRow.payload.take 108) s6Step323ExitGRow.sign=s6Step323ExitGOut := by decide +kernel
  have hi : s6Step323ExitGRow.payload.drop 108=s6Step323ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step323ExitG_retired] at result
  exact result

private def s6Step323ExitGvBefore : Arena := s6Step323ExitFvAfter

private theorem s6Step323ExitGv_Incoming : rowsOwned s6Step323ExitGvBefore [s6Step323ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step323ExitGRow,s6Step323ExitFRow,s6Step323ExitFvRow,s6Step323ExitGvRow] 3 s6Step323ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step323ExitGvBefore (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step323ExitGv_Outgoing : rowsOwned s6Step323ExitGvAfter [s6Step323ExitGvOut] :=
  hmrRows_owned_drop s6Step323ExitGvAfter [s6Step323ExitGOut,s6Step323ExitFOut,s6Step323ExitFvOut,s6Step323ExitGvOut] 3 s6Step323ExitBank_outgoingOwned

private theorem s6Step323ExitGv_distinct : (s6Step323ExitGvRow.sign::s6Step323ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323ExitGv_owned : (s6Step323ExitGvRow.sign::s6Step323ExitGvRow.payload).toFinset⊆s6Step323ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step323ExitGvBefore (fun q => (0≤q ∧ q<108) ∨ (109≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323ExitGv_retired : s6Step323ExitGvBefore.retireSet s6Step323ExitGvExtra.toFinset=s6Step323ExitGvAfter := by
  unfold Arena.retireSet s6Step323ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step323ExitGvBefore,s6Step323ExitFvAfter,s6Step323ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step323ExitGv_checked : planRowResizeLog s6Step323ExitGvBefore s6Step323ExitGvRow 177 []=
    some (s6Step323ExitGvAfter,s6Step323ExitGvOut,shrinkRow 775 s6Step323ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step323ExitGvBefore s6Step323ExitGvRow 177 s6Step323ExitGv_distinct s6Step323ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step323ExitGvRow.payload.take 177) s6Step323ExitGvRow.sign=s6Step323ExitGvOut := by decide +kernel
  have hi : s6Step323ExitGvRow.payload.drop 177=s6Step323ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step323ExitGv_retired] at result
  exact result

private theorem s6Step323ExitBank_rows : planWindowRowsLog s6Step323ExitGBefore [(s6Step323ExitGRow,108),(s6Step323ExitFRow,109),(s6Step323ExitFvRow,177),(s6Step323ExitGvRow,177)] [[],[],[],[]]=
    some (s6Step323ExitGvAfter,[s6Step323ExitGOut,s6Step323ExitFOut,s6Step323ExitFvOut,s6Step323ExitGvOut],(shrinkRow 777 s6Step323ExitGExtra ++ (shrinkRow 795 s6Step323ExitFExtra ++ (shrinkRow 776 s6Step323ExitFvExtra ++ (shrinkRow 775 s6Step323ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step323ExitGvAfter [] []=some (s6Step323ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step323ExitGvBefore s6Step323ExitGvAfter s6Step323ExitGvAfter
    s6Step323ExitGvRow s6Step323ExitGvOut 177 [] [] [] []
    (shrinkRow 775 s6Step323ExitGvExtra) ([]) s6Step323ExitGv_Incoming s6Step323ExitGv_checked h4 s6Step323ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step323ExitFvBefore s6Step323ExitFvAfter s6Step323ExitGvAfter
    s6Step323ExitFvRow s6Step323ExitFvOut 177 [] [(s6Step323ExitGvRow,177)] [[]] [s6Step323ExitGvOut]
    (shrinkRow 776 s6Step323ExitFvExtra) ((shrinkRow 775 s6Step323ExitGvExtra ++ [])) s6Step323ExitFv_Incoming s6Step323ExitFv_checked h3 s6Step323ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step323ExitFBefore s6Step323ExitFAfter s6Step323ExitGvAfter
    s6Step323ExitFRow s6Step323ExitFOut 109 [] [(s6Step323ExitFvRow,177),(s6Step323ExitGvRow,177)] [[],[]] [s6Step323ExitFvOut,s6Step323ExitGvOut]
    (shrinkRow 795 s6Step323ExitFExtra) ((shrinkRow 776 s6Step323ExitFvExtra ++ (shrinkRow 775 s6Step323ExitGvExtra ++ []))) s6Step323ExitF_Incoming s6Step323ExitF_checked h2 s6Step323ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step323ExitGBefore s6Step323ExitGAfter s6Step323ExitGvAfter
    s6Step323ExitGRow s6Step323ExitGOut 108 [] [(s6Step323ExitFRow,109),(s6Step323ExitFvRow,177),(s6Step323ExitGvRow,177)] [[],[],[]] [s6Step323ExitFOut,s6Step323ExitFvOut,s6Step323ExitGvOut]
    (shrinkRow 777 s6Step323ExitGExtra) ((shrinkRow 795 s6Step323ExitFExtra ++ (shrinkRow 776 s6Step323ExitFvExtra ++ (shrinkRow 775 s6Step323ExitGvExtra ++ [])))) s6Step323ExitG_Incoming s6Step323ExitG_checked h1 s6Step323ExitG_Outgoing
  exact h0

private theorem s6Step323ExitBank_checked : compileHmrBankResizeLog .exit s6Step323ExitGBefore ⟨s6Step323ExitFRow,s6Step323ExitGRow,s6Step323ExitFvRow,s6Step323ExitGvRow⟩ ⟨109,108,177,177⟩ [[],[],[],[]]=
    some (s6Step323ExitGvAfter,⟨s6Step323ExitFOut,s6Step323ExitGOut,s6Step323ExitFvOut,s6Step323ExitGvOut⟩,(shrinkRow 777 s6Step323ExitGExtra ++ (shrinkRow 795 s6Step323ExitFExtra ++ (shrinkRow 776 s6Step323ExitFvExtra ++ (shrinkRow 775 s6Step323ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step323ExitBank_rows]
  rfl

private theorem s6Step323Add0_apart : Disjoint s6Step323Add0Arena.live s6Step323Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step323Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323Add0_card : s6Step323Add0Arena.live.card=906 := by
  decide +kernel

private theorem s6Step323Add0_borrowed : s6Step323Add0Arena.checkBorrow (hmrHybridCount s6Step323Add0Arena s6Step323Add0B.length) s6Step323Add0Work=some s6Step323Add0During := by
  have len : s6Step323Add0Work.length=hmrHybridCount s6Step323Add0Arena s6Step323Add0B.length := by
    rw [hmrHybridCount,s6Step323Add0_card]
    decide +kernel
  have nd : s6Step323Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step323Add0Arena s6Step323Add0During s6Step323Add0Work.toFinset s6Step323Add0_bounded s6Step323Add0_apart rfl

private theorem s6Step323Add0_distinct : (841::880::865::(s6Step323Add0A++s6Step323Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323Add0_owned : (841::880::865::(s6Step323Add0A++s6Step323Add0B)).toFinset⊆s6Step323Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step323Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323Add0_checked : compileHmrHybridCinLog s6Step323Add0Arena 880 841 865 s6Step323Add0A s6Step323Add0B s6Step323Add0Work=some s6Step323Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step323Add0Arena s6Step323Add0During 880 841 865 s6Step323Add0A s6Step323Add0B s6Step323Add0Work
    (by decide +kernel) (by decide +kernel) s6Step323Add0_distinct
    (fun q hq => s6Step323Add0_owned (List.mem_toFinset.mpr hq)) s6Step323Add0_borrowed

private theorem s6Step323Add1_apart : Disjoint s6Step323Add1Arena.live s6Step323Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step323Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323Add1_card : s6Step323Add1Arena.live.card=906 := by
  decide +kernel

private theorem s6Step323Add1_borrowed : s6Step323Add1Arena.checkBorrow (hmrHybridCount s6Step323Add1Arena s6Step323Add1B.length) s6Step323Add1Work=some s6Step323Add1During := by
  have len : s6Step323Add1Work.length=hmrHybridCount s6Step323Add1Arena s6Step323Add1B.length := by
    rw [hmrHybridCount,s6Step323Add1_card]
    decide +kernel
  have nd : s6Step323Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step323Add1Arena s6Step323Add1During s6Step323Add1Work.toFinset s6Step323Add1_bounded s6Step323Add1_apart rfl

private theorem s6Step323Add1_distinct : (841::880::865::(s6Step323Add1A++s6Step323Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323Add1_owned : (841::880::865::(s6Step323Add1A++s6Step323Add1B)).toFinset⊆s6Step323Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step323Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323Add1_checked : compileHmrHybridCinLog s6Step323Add1Arena 880 841 865 s6Step323Add1A s6Step323Add1B s6Step323Add1Work=some s6Step323Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step323Add1Arena s6Step323Add1During 880 841 865 s6Step323Add1A s6Step323Add1B s6Step323Add1Work
    (by decide +kernel) (by decide +kernel) s6Step323Add1_distinct
    (fun q hq => s6Step323Add1_owned (List.mem_toFinset.mpr hq)) s6Step323Add1_borrowed

private theorem s6Step323F4_apart : Disjoint (s6Step323Add0A++s6Step323Add0B).toFinset (s6Step323Add1A++s6Step323Add1B).toFinset := by
  have nd : ((s6Step323Add0A++s6Step323Add0B)++(s6Step323Add1A++s6Step323Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step323F4_carry : s6Step323F4FlagArena.checkBorrow 1 [865]=some s6Step323Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step323F4FlagArena,s6Step323HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step323F4FlagArena,s6Step323HeadFvAfter,s6Step323Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step323F4_distinct : (830::880::841::865::((s6Step323Add0A++s6Step323Add1A)++(s6Step323Add0B++s6Step323Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323F4_flag : s6Step323HeadFvAfter.checkBorrow 1 [841]=some s6Step323F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step323HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step323F4_owned : (830::880::((s6Step323Add0A++s6Step323Add1A)++(s6Step323Add0B++s6Step323Add1B))).toFinset⊆s6Step323HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step323HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323F4_checked : compileHmrHybridF4Log s6Step323HeadFvAfter 830 880 s6Step323Add0A s6Step323Add0B s6Step323Add1A s6Step323Add1B [841] [865] s6Step323Add0Work s6Step323Add1Work=some s6Step323F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step323HeadFvAfter s6Step323F4FlagArena s6Step323Add0Arena s6Step323Add0During s6Step323Add1During 830 880
    s6Step323Add0A s6Step323Add0B s6Step323Add1A s6Step323Add1B [841] [865] s6Step323Add0Work s6Step323Add1Work
    (fun q hq => s6Step323F4_owned (List.mem_toFinset.mpr hq)) s6Step323F4_flag s6Step323F4_carry
    s6Step323F4_distinct s6Step323F4_apart s6Step323Add0_checked s6Step323Add1_checked

private theorem s6Step323Front_branch : s6Step323FrontSigmaArena.checkBorrow 1 [880]=some s6Step323HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step323FrontSigmaArena,s6Step323EntryGvAfter,s6Step323EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step323FrontSigmaArena,s6Step323EntryGvAfter,s6Step323EntryFBefore,s6Step323HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step323Front_entry : HmrFrontEntryValid s6Step323EntryFBefore s6Step323FrontBank 109 177 ⟨109,108,177,177⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step323FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step323EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step323EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step323FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step323Front_sigma : s6Step323EntryGvAfter.checkBorrow 1 [830]=some s6Step323FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step323EntryGvAfter,s6Step323EntryFBefore,arenaWires]
  · rfl

private def s6Step323HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323HeadFBefore : Arena := s6Step323HeadGAfter

private def s6Step323HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364],795⟩

private def s6Step323HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822],776⟩

private def s6Step323HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108],777⟩

private def s6Step323HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853],775⟩

private theorem s6Step323HeadBank_incomingDistinct : ([s6Step323HeadGRow,s6Step323HeadFRow,s6Step323HeadGvRow,s6Step323HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323HeadF_Incoming : rowsOwned s6Step323HeadFBefore [s6Step323HeadFRow,s6Step323HeadGvRow,s6Step323HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step323HeadGRow,s6Step323HeadFRow,s6Step323HeadGvRow,s6Step323HeadFvRow] 1 s6Step323HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step323HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step323HeadBank_outgoingOwned : rowsOwned s6Step323HeadFvAfter [s6Step323HeadGOut,s6Step323HeadFOut,s6Step323HeadGvOut,s6Step323HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step323HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step323HeadF_Outgoing : rowsOwned s6Step323HeadFvAfter [s6Step323HeadFOut,s6Step323HeadGvOut,s6Step323HeadFvOut] :=
  hmrRows_owned_drop s6Step323HeadFvAfter [s6Step323HeadGOut,s6Step323HeadFOut,s6Step323HeadGvOut,s6Step323HeadFvOut] 1 s6Step323HeadBank_outgoingOwned

private theorem s6Step323HeadF_distinct : (s6Step323HeadFRow.sign::s6Step323HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323HeadF_owned : (s6Step323HeadFRow.sign::s6Step323HeadFRow.payload).toFinset⊆s6Step323HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step323HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323HeadF_reserved : s6Step323HeadFBefore.reserve s6Step323HeadFFresh.toFinset=some s6Step323HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step323HeadFFresh,arenaWires]
  · norm_num [s6Step323HeadFBefore,s6Step323HeadGAfter,s6Step323HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step323HeadFAfter,s6Step323HeadFBefore,s6Step323HeadGAfter,s6Step323HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step323HeadF_checked : planRowResizeLog s6Step323HeadFBefore s6Step323HeadFRow 110 s6Step323HeadFFresh=
    some (s6Step323HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 891],795⟩,growRow 795 s6Step323HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step323HeadFBefore s6Step323HeadFAfter s6Step323HeadFRow 110 s6Step323HeadFFresh
    s6Step323HeadF_distinct s6Step323HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step323HeadF_reserved
  have rowEq : WindowRow.mk (s6Step323HeadFRow.payload++s6Step323HeadFFresh) s6Step323HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 891],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step323HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step323HeadFvBefore : Arena := s6Step323HeadGvAfter

private theorem s6Step323HeadFv_Incoming : rowsOwned s6Step323HeadFvBefore [s6Step323HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step323HeadGRow,s6Step323HeadFRow,s6Step323HeadGvRow,s6Step323HeadFvRow] 3 s6Step323HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step323HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step323HeadFv_Outgoing : rowsOwned s6Step323HeadFvAfter [s6Step323HeadFvOut] :=
  hmrRows_owned_drop s6Step323HeadFvAfter [s6Step323HeadGOut,s6Step323HeadFOut,s6Step323HeadGvOut,s6Step323HeadFvOut] 3 s6Step323HeadBank_outgoingOwned

private theorem s6Step323HeadFv_distinct : (s6Step323HeadFvRow.sign::s6Step323HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323HeadFv_owned : (s6Step323HeadFvRow.sign::s6Step323HeadFvRow.payload).toFinset⊆s6Step323HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step323HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323HeadFv_reserved : s6Step323HeadFvBefore.reserve s6Step323HeadFvFresh.toFinset=some s6Step323HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step323HeadFvFresh,arenaWires]
  · norm_num [s6Step323HeadFvBefore,s6Step323HeadGvAfter,s6Step323HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step323HeadFvAfter,s6Step323HeadFvBefore,s6Step323HeadGvAfter,s6Step323HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step323HeadFv_checked : planRowResizeLog s6Step323HeadFvBefore s6Step323HeadFvRow 178 s6Step323HeadFvFresh=
    some (s6Step323HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 843],776⟩,growRow 776 s6Step323HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step323HeadFvBefore s6Step323HeadFvAfter s6Step323HeadFvRow 178 s6Step323HeadFvFresh
    s6Step323HeadFv_distinct s6Step323HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step323HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step323HeadFvRow.payload++s6Step323HeadFvFresh) s6Step323HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 843],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step323HeadG_Incoming : rowsOwned s6Step323HeadGBefore [s6Step323HeadGRow,s6Step323HeadFRow,s6Step323HeadGvRow,s6Step323HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step323HeadGRow,s6Step323HeadFRow,s6Step323HeadGvRow,s6Step323HeadFvRow] 0 s6Step323HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step323HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step323HeadG_Outgoing : rowsOwned s6Step323HeadFvAfter [s6Step323HeadGOut,s6Step323HeadFOut,s6Step323HeadGvOut,s6Step323HeadFvOut] :=
  hmrRows_owned_drop s6Step323HeadFvAfter [s6Step323HeadGOut,s6Step323HeadFOut,s6Step323HeadGvOut,s6Step323HeadFvOut] 0 s6Step323HeadBank_outgoingOwned

private theorem s6Step323HeadG_distinct : (s6Step323HeadGRow.sign::s6Step323HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323HeadG_owned : (s6Step323HeadGRow.sign::s6Step323HeadGRow.payload).toFinset⊆s6Step323HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step323HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323HeadG_reserved : s6Step323HeadGBefore.reserve s6Step323HeadGFresh.toFinset=some s6Step323HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step323HeadGFresh,arenaWires]
  · norm_num [s6Step323HeadGBefore,s6Step323HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step323HeadGAfter,s6Step323HeadGBefore,s6Step323HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step323HeadG_checked : planRowResizeLog s6Step323HeadGBefore s6Step323HeadGRow 110 s6Step323HeadGFresh=
    some (s6Step323HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 791],777⟩,growRow 777 s6Step323HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step323HeadGBefore s6Step323HeadGAfter s6Step323HeadGRow 110 s6Step323HeadGFresh
    s6Step323HeadG_distinct s6Step323HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step323HeadG_reserved
  have rowEq : WindowRow.mk (s6Step323HeadGRow.payload++s6Step323HeadGFresh) s6Step323HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 791],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step323HeadGvBefore : Arena := s6Step323HeadFAfter

private theorem s6Step323HeadGv_Incoming : rowsOwned s6Step323HeadGvBefore [s6Step323HeadGvRow,s6Step323HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step323HeadGRow,s6Step323HeadFRow,s6Step323HeadGvRow,s6Step323HeadFvRow] 2 s6Step323HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step323HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step323HeadGv_Outgoing : rowsOwned s6Step323HeadFvAfter [s6Step323HeadGvOut,s6Step323HeadFvOut] :=
  hmrRows_owned_drop s6Step323HeadFvAfter [s6Step323HeadGOut,s6Step323HeadFOut,s6Step323HeadGvOut,s6Step323HeadFvOut] 2 s6Step323HeadBank_outgoingOwned

private theorem s6Step323HeadGv_distinct : (s6Step323HeadGvRow.sign::s6Step323HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step323HeadGv_owned : (s6Step323HeadGvRow.sign::s6Step323HeadGvRow.payload).toFinset⊆s6Step323HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step323HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step323HeadGv_reserved : s6Step323HeadGvBefore.reserve s6Step323HeadGvFresh.toFinset=some s6Step323HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step323HeadGvFresh,arenaWires]
  · norm_num [s6Step323HeadGvBefore,s6Step323HeadFAfter,s6Step323HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step323HeadGvAfter,s6Step323HeadGvBefore,s6Step323HeadFAfter,s6Step323HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step323HeadGv_checked : planRowResizeLog s6Step323HeadGvBefore s6Step323HeadGvRow 178 s6Step323HeadGvFresh=
    some (s6Step323HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 793],775⟩,growRow 775 s6Step323HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step323HeadGvBefore s6Step323HeadGvAfter s6Step323HeadGvRow 178 s6Step323HeadGvFresh
    s6Step323HeadGv_distinct s6Step323HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step323HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step323HeadGvRow.payload++s6Step323HeadGvFresh) s6Step323HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 793],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step323HeadBank_rows : planWindowRowsLog s6Step323HeadGBefore [(s6Step323HeadGRow,110),(s6Step323HeadFRow,110),(s6Step323HeadGvRow,178),(s6Step323HeadFvRow,178)] [s6Step323HeadGFresh,s6Step323HeadFFresh,s6Step323HeadGvFresh,s6Step323HeadFvFresh]=
    some (s6Step323HeadFvAfter,[s6Step323HeadGOut,s6Step323HeadFOut,s6Step323HeadGvOut,s6Step323HeadFvOut],(growRow 777 s6Step323HeadGFresh ++ (growRow 795 s6Step323HeadFFresh ++ (growRow 775 s6Step323HeadGvFresh ++ (growRow 776 s6Step323HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step323HeadFvAfter [] []=some (s6Step323HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step323HeadFvBefore s6Step323HeadFvAfter s6Step323HeadFvAfter
    s6Step323HeadFvRow s6Step323HeadFvOut 178 s6Step323HeadFvFresh [] [] []
    (growRow 776 s6Step323HeadFvFresh) ([]) s6Step323HeadFv_Incoming s6Step323HeadFv_checked h4 s6Step323HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step323HeadGvBefore s6Step323HeadGvAfter s6Step323HeadFvAfter
    s6Step323HeadGvRow s6Step323HeadGvOut 178 s6Step323HeadGvFresh [(s6Step323HeadFvRow,178)] [s6Step323HeadFvFresh] [s6Step323HeadFvOut]
    (growRow 775 s6Step323HeadGvFresh) ((growRow 776 s6Step323HeadFvFresh ++ [])) s6Step323HeadGv_Incoming s6Step323HeadGv_checked h3 s6Step323HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step323HeadFBefore s6Step323HeadFAfter s6Step323HeadFvAfter
    s6Step323HeadFRow s6Step323HeadFOut 110 s6Step323HeadFFresh [(s6Step323HeadGvRow,178),(s6Step323HeadFvRow,178)] [s6Step323HeadGvFresh,s6Step323HeadFvFresh] [s6Step323HeadGvOut,s6Step323HeadFvOut]
    (growRow 795 s6Step323HeadFFresh) ((growRow 775 s6Step323HeadGvFresh ++ (growRow 776 s6Step323HeadFvFresh ++ []))) s6Step323HeadF_Incoming s6Step323HeadF_checked h2 s6Step323HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step323HeadGBefore s6Step323HeadGAfter s6Step323HeadFvAfter
    s6Step323HeadGRow s6Step323HeadGOut 110 s6Step323HeadGFresh [(s6Step323HeadFRow,110),(s6Step323HeadGvRow,178),(s6Step323HeadFvRow,178)] [s6Step323HeadFFresh,s6Step323HeadGvFresh,s6Step323HeadFvFresh] [s6Step323HeadFOut,s6Step323HeadGvOut,s6Step323HeadFvOut]
    (growRow 777 s6Step323HeadGFresh) ((growRow 795 s6Step323HeadFFresh ++ (growRow 775 s6Step323HeadGvFresh ++ (growRow 776 s6Step323HeadFvFresh ++ [])))) s6Step323HeadG_Incoming s6Step323HeadG_checked h1 s6Step323HeadG_Outgoing
  exact h0

private theorem s6Step323HeadBank_checked : compileHmrBankResizeLog .headroom s6Step323HeadGBefore ⟨s6Step323HeadFRow,s6Step323HeadGRow,s6Step323HeadFvRow,s6Step323HeadGvRow⟩ ⟨110,110,178,178⟩ [s6Step323HeadGFresh,s6Step323HeadFFresh,s6Step323HeadGvFresh,s6Step323HeadFvFresh]=
    some (s6Step323HeadFvAfter,⟨s6Step323HeadFOut,s6Step323HeadGOut,s6Step323HeadFvOut,s6Step323HeadGvOut⟩,(growRow 777 s6Step323HeadGFresh ++ (growRow 795 s6Step323HeadFFresh ++ (growRow 775 s6Step323HeadGvFresh ++ (growRow 776 s6Step323HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step323HeadBank_rows]
  rfl

private theorem s6Step323Front_checked : compileHmrSourceFrontLog s6Step323EntryFBefore s6Step323FrontBank 109 177 ⟨109,108,177,177⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step323FrontLog=some s6Step323FrontPlan := by
  have pairEq : s6Step323FrontPair=⟨s6Step323HeadFRow,s6Step323HeadGRow,s6Step323HeadFvRow,s6Step323HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step323FrontHead=⟨s6Step323ExitFRow,s6Step323ExitGRow,s6Step323ExitFvRow,s6Step323ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step323Add0A=s6Step323FrontHead.f.wires := by decide +kernel
  have gEq : s6Step323Add0B=s6Step323FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step323Add1A=s6Step323FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step323Add1B=s6Step323FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step323EntryFBefore s6Step323FrontBank 109 177 ⟨109,108,177,177⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step323FrontLog s6Step323FrontPlan
  · exact s6Step323Front_entry
  · exact s6Step323EntryBank_checked
  · exact s6Step323Front_sigma
  · rfl
  · exact s6Step323Front_branch
  · rfl
  · simpa only [s6Step323FrontPlan,pairEq] using s6Step323HeadBank_checked
  · simpa only [s6Step323FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step323F4_checked
  · exact s6Step323Counter_checked
  · rfl
  · simpa only [s6Step323FrontPlan,headEq] using s6Step323ExitBank_checked

private theorem s6Step323Complete_explicit_checked : compileHmrEarlyStepLog s6Step323EntryFBefore s6Step323FrontBank 109 177 ⟨109,108,177,177⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step323CompleteLog=some s6Step323CompletePlan := by
  let Q := s6Step323EarlyControlPlan
  have hq := s6Step323EarlyControl_plan_checked
  have fv1 : s6Step323CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step323CompleteOut.fv.payload[2]?.getD s6Step323CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step323CompleteOut.fv.payload[3]?.getD s6Step323CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step323CompleteOut.fv.payload[4]?.getD s6Step323CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step323EntryFBefore s6Step323EarlyControlArena s6Step323FrontBank 109 177 ⟨109,108,177,177⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step323CompleteLog s6Step323FrontPlan Q
    s6Step323Front_checked s6Step323Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step323Complete_owned s6Step323Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step323EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 830 s6Step323CompleteOut.fv.second (s6Step323CompleteOut.fv.payload[2]?.getD s6Step323CompleteOut.fv.sign) (s6Step323CompleteOut.fv.payload[3]?.getD s6Step323CompleteOut.fv.sign) (s6Step323CompleteOut.fv.payload[4]?.getD s6Step323CompleteOut.fv.sign) 880 60 s6Step323EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep323Arena : Arena := s6Step323EntryFBefore
def s6PrivateStep323Bank : WindowBank := s6Step323FrontBank
def s6PrivateStep323Spec : HmrSourceWalkStepLog := ⟨109,177,⟨109,108,177,177⟩,60,.early s6Step323CompleteLog⟩
def s6PrivateStep323Plan : HmrSourceStepPlan := .early s6Step323CompletePlan
theorem s6PrivateStep323_source : s6PrivateStep323Spec=s6ObservedLogs320[3] := rfl
theorem s6PrivateStep323_checked : compileHmrSourceStepLog s6PrivateStep323Arena s6PrivateStep323Bank
    s6PrivateStep323Spec.fgWidth s6PrivateStep323Spec.vWidth s6PrivateStep323Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 323 s6PrivateStep323Spec.need none s6PrivateStep323Spec.log=some s6PrivateStep323Plan := by
  change compileHmrSourceStepLog s6Step323EntryFBefore s6Step323FrontBank 109 177 ⟨109,108,177,177⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 323 60 none (.early s6Step323CompleteLog)=some (.early s6Step323CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 323<498)]
  rw [s6Step323Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
