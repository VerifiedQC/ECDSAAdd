import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep366
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

private def s6Step368CompleteMoves : List (Wire × Wire) := [(796,86)]

private def s6Step368EarlyControlLog : HmrEarlyControlLog := ⟨[796, 908, 876, 888, 898],[858],[807],[805, 802, 843, 877, 792, 816],[]⟩

private def s6Step368FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [906]],[[898], [888], [908], [876]],[[], [], [], []]⟩,[823],[869],[858],[807],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[858, 807, 805, 802]⟩

private def s6Step368CompleteLog : HmrEarlyStepLog := ⟨s6Step368FrontLog,s6Step368CompleteMoves,s6Step368EarlyControlLog⟩

private def s6Step368ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step368ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩

private def s6Step368ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],777⟩

private def s6Step368ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906],775⟩

private def s6Step368FrontOut : WindowBank := ⟨s6Step368ExitFOut,s6Step368ExitGOut,s6Step368ExitFvOut,s6Step368ExitGvOut⟩

private def s6Step368CompleteOut : WindowBank := s6Step368FrontOut.repacked s6Step368CompleteMoves

private def s6Step368EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step368EarlyControlPositiveArena,[858],s6Step368EarlyControlEqualityArena,[807],⟨⟨823,false⟩,[⟨⟨858,false⟩,807⟩]⟩⟩

private def s6Step368EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,796⟩,⟨⟨772,false⟩,908⟩,⟨⟨771,false⟩,876⟩,⟨⟨770,false⟩,888⟩,⟨⟨769,false⟩,898⟩]⟩

private def s6Step368EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step368EarlyControlZeroArena,s6Step368EarlyControlZeroPlan,s6Step368EarlyControlClassPlan,s6Step368EarlyControlFlagArena,s6Step368EarlyControlFittedArena,s6Step368EarlyControlHistoryArena,s6Step368EarlyControlSigmaArena,s6Step368EarlyControlOutputArena,s6Step368EarlyControlLog⟩

private def s6Step368CounterWork : List Wire := [858, 807, 805, 802]

private theorem s6Step368Counter_bounded : s6Step368CounterWork.toFinset⊆arenaWires := by norm_num [s6Step368CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step368HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368CounterDuring : Arena := ⟨s6Step368HeadFvAfter.live∪s6Step368CounterWork.toFinset,Finset.union_subset s6Step368HeadFvAfter.bounded s6Step368Counter_bounded⟩

private def s6Step368EntryFFresh : List Wire := []

private def s6Step368EntryFvFresh : List Wire := []

private def s6Step368EntryGFresh : List Wire := []

private def s6Step368EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368EntryGvFresh : List Wire := [906]

private def s6Step368ExitFExtra : List Wire := [888]

private def s6Step368ExitFvExtra : List Wire := [876]

private def s6Step368ExitGExtra : List Wire := [86, 898]

private def s6Step368ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368ExitGvExtra : List Wire := [908]

private def s6Step368Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368Add0Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step368Add0_bounded : s6Step368Add0Work.toFinset⊆arenaWires := by
  have h : s6Step368Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step368Add0During : Arena := ⟨s6Step368Add0Arena.live∪s6Step368Add0Work.toFinset,Finset.union_subset s6Step368Add0Arena.bounded s6Step368Add0_bounded⟩

private def s6Step368Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368Add1Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step368Add1_bounded : s6Step368Add1Work.toFinset⊆arenaWires := by
  have h : s6Step368Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step368Add1During : Arena := ⟨s6Step368Add1Arena.live∪s6Step368Add1Work.toFinset,Finset.union_subset s6Step368Add1Arena.bounded s6Step368Add1_bounded⟩

private def s6Step368F4FlagArena : Arena := ⟨s6Step368HeadFvAfter.live∪{858},Finset.union_subset s6Step368HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step368F4Plan : HmrHybridF4Plan := ⟨s6Step368F4FlagArena,[858],s6Step368Add0Arena,[807],s6Step368Add0During,s6Step368Add0Work,s6Step368Add1During,s6Step368Add1Work⟩

private def s6Step368HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 888],795⟩

private def s6Step368HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 876],776⟩

private def s6Step368HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 898],777⟩

private def s6Step368HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 908],775⟩

private def s6Step368FrontHead : WindowBank := ⟨s6Step368HeadFOut,s6Step368HeadGOut,s6Step368HeadFvOut,s6Step368HeadGvOut⟩

private def s6Step368EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step368EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩

private def s6Step368EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],777⟩

private def s6Step368EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906],775⟩

private def s6Step368FrontPair : WindowBank := ⟨s6Step368EntryFOut,s6Step368EntryGOut,s6Step368EntryFvOut,s6Step368EntryGvOut⟩

private def s6Step368FrontSigmaArena : Arena := ⟨s6Step368EntryGvAfter.live∪{823},Finset.union_subset s6Step368EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step368HeadFFresh : List Wire := [888]

private def s6Step368HeadFvFresh : List Wire := [876]

private def s6Step368HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368HeadGFresh : List Wire := [898]

private def s6Step368HeadGvFresh : List Wire := [908]

private def s6Step368FrontPlan : HmrSourceFront := ⟨s6Step368EntryGvAfter,s6Step368FrontPair,(growRow 795 s6Step368EntryFFresh ++ (growRow 777 s6Step368EntryGFresh ++ (growRow 776 s6Step368EntryFvFresh ++ (growRow 775 s6Step368EntryGvFresh ++ [])))),s6Step368FrontSigmaArena,[823],s6Step368HeadGBefore,[869],
  s6Step368HeadFvAfter,s6Step368FrontHead,(growRow 777 s6Step368HeadGFresh ++ (growRow 795 s6Step368HeadFFresh ++ (growRow 775 s6Step368HeadGvFresh ++ (growRow 776 s6Step368HeadFvFresh ++ [])))),s6Step368F4Plan,s6Step368CounterDuring,s6Step368CounterWork,s6Step368ExitGvAfter,s6Step368FrontOut,(shrinkRow 777 s6Step368ExitGExtra ++ (shrinkRow 795 s6Step368ExitFExtra ++ (shrinkRow 776 s6Step368ExitFvExtra ++ (shrinkRow 775 s6Step368ExitGvExtra ++ []))))⟩

private def s6Step368CompletePlan : HmrEarlyStepPlan := ⟨s6Step368FrontPlan,s6Step368EarlyControlArena,s6Step368EarlyControlPlan,s6Step368CompleteMoves⟩

private theorem s6Step368Complete_apart : List.Disjoint (s6Step368CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [823, 869, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step368CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[823, 869, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step368Complete_owned : (s6Step368CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step368EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step368EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step368CompleteMoveArena : Arena := ⟨s6Step368ExitGvAfter.live∪{86},Finset.union_subset s6Step368ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step368Complete_repack : s6Step368ExitGvAfter.checkRepack s6Step368CompleteMoves=some s6Step368EarlyControlArena := by
  have owned : 796∈s6Step368ExitGvAfter.live := by norm_num [s6Step368ExitGvAfter,arenaWires]
  have reserve : s6Step368ExitGvAfter.reserve {86}=some s6Step368CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step368ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step368CompleteMoveArena.retireSet {796}=s6Step368EarlyControlArena := by
    unfold Arena.retireSet s6Step368EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step368CompleteMoveArena,s6Step368ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step368CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step368CompleteMoveArena.retireSet {796}).checkRepack []=some s6Step368EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step368EarlyControl_branchOwned : ([869] : List Wire).toFinset⊆s6Step368EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step368EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368EarlyControl_branch : compileHmrBranchRetirement s6Step368EarlyControlSigmaArena 869=some s6Step368EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step368EarlyControl_branchOwned
  · ext q
    simp [s6Step368EarlyControlOutputArena,s6Step368EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step368EarlyControl_classEqualityBorrow : s6Step368EarlyControlPositiveArena.checkBorrow (([823, 858] : List Wire).length-1) s6Step368EarlyControlLog.classWork=some s6Step368EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step368EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step368EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step368EarlyControlEqualityArena,s6Step368EarlyControlPositiveArena,s6Step368EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step368EarlyControl_classEqualityOwned : ([823, 858] : List Wire).toFinset⊆s6Step368EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step368EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368EarlyControl_classEquality : compileHmrEqualityLog s6Step368EarlyControlPositiveArena [823, 858] 0 s6Step368EarlyControlLog.classWork=some (s6Step368EarlyControlEqualityArena,s6Step368EarlyControlLog.classWork,s6Step368EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step368EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step368EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step368EarlyControl_classOwned : ([769, 898, 823] : List Wire).toFinset⊆s6Step368EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step368EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368EarlyControl_positiveBorrow : s6Step368EarlyControlZeroArena.checkBorrow (1) s6Step368EarlyControlLog.positiveWork=some s6Step368EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step368EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step368EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step368EarlyControlPositiveArena,s6Step368EarlyControlZeroArena,s6Step368EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step368EarlyControl_class : compileHmrSourceClassLog s6Step368EarlyControlZeroArena false 769 s6Step368EarlyControlZeroPlan.top 0 823 s6Step368EarlyControlLog.positiveWork s6Step368EarlyControlLog.classWork=some s6Step368EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step368EarlyControlClassPlan s6Step368EarlyControlZeroArena false 769 s6Step368EarlyControlZeroPlan.top 0 823
  constructor
  · decide +kernel
  · exact s6Step368EarlyControl_classOwned
  · exact s6Step368EarlyControl_positiveBorrow
  · exact s6Step368EarlyControl_classEquality

private theorem s6Step368EarlyControl_entryRecordOwned : ([869, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step368EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step368EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368EarlyControl_entrySigmaOwned : ([823, 254] : List Wire).toFinset⊆s6Step368EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step368EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368EarlyControl_fitBorrow : s6Step368EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step368EarlyControlLog.recordFresh=some s6Step368EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step368EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step368EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step368EarlyControlFittedArena,s6Step368EarlyControlFlagArena,s6Step368EarlyControlLog,arenaWires]

private theorem s6Step368EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step368EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step368EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368EarlyControl_fit : compileHmrRecordGrowLog s6Step368EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step368EarlyControlLog.recordFresh=some s6Step368EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step368EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step368EarlyControl_fitBorrow

private theorem s6Step368EarlyControl_flagsBorrow : s6Step368EarlyControlEqualityArena.checkBorrow (6) s6Step368EarlyControlLog.flagWork=some s6Step368EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step368EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step368EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step368EarlyControlFlagArena,s6Step368EarlyControlEqualityArena,s6Step368EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step368EarlyControl_flagsOwned : ([807, 253, 252, 251] : List Wire).toFinset⊆s6Step368EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step368EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368EarlyControl_flags : compileHmrFlagsLog s6Step368EarlyControlClassPlan.equalityArena s6Step368EarlyControlClassPlan.equality.top 253 252 251 s6Step368EarlyControlLog.flagWork=some s6Step368EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step368EarlyControl_flagsOwned⟩
  · exact s6Step368EarlyControl_flagsBorrow

private theorem s6Step368EarlyControl_historyBorrow : s6Step368EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step368EarlyControlLog.recordFresh=some s6Step368EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step368EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step368EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step368EarlyControlHistoryArena,s6Step368EarlyControlArena,s6Step368EarlyControlLog,arenaWires]

private theorem s6Step368EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step368EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step368EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368EarlyControl_history : compileHmrRecordGrowLog s6Step368EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step368EarlyControlLog.recordFresh=some s6Step368EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step368EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step368EarlyControl_historyBorrow

private theorem s6Step368EarlyControl_sigmaOwned : ([254, 823] : List Wire).toFinset⊆s6Step368EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step368EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368EarlyControl_sigmaReleaseOwned : ([823] : List Wire).toFinset⊆s6Step368EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step368EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368EarlyControl_sigmaRelease : s6Step368EarlyControlHistoryArena.release {823} (fun _ => false)=some s6Step368EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step368EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step368EarlyControlSigmaArena,s6Step368EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step368EarlyControl_sigma : compileHmrSigmaDropLog s6Step368EarlyControlHistoryArena false 0 0 254 823 []=some s6Step368EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step368EarlyControl_sigmaOwned⟩
  · exact s6Step368EarlyControl_sigmaRelease

private theorem s6Step368EarlyControl_zeroBorrow : s6Step368EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step368EarlyControlLog.zeroWork=some s6Step368EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step368EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step368EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step368EarlyControlZeroArena,s6Step368EarlyControlArena,s6Step368EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step368EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step368EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step368EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368EarlyControl_zero : compileHmrEqualityLog s6Step368EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step368EarlyControlLog.zeroWork=some (s6Step368EarlyControlZeroArena,s6Step368EarlyControlLog.zeroWork,s6Step368EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step368EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step368EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step368EarlyControl_logged : s6Step368EarlyControlPlan.Logged s6Step368EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 823 254 253 252 251 869 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step368EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step368EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step368EarlyControl_zero
  · exact s6Step368EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step368EarlyControl_flags
  · exact s6Step368EarlyControl_fit
  · exact s6Step368EarlyControl_history
  · exact s6Step368EarlyControl_sigma
  · exact s6Step368EarlyControl_branch

private theorem s6Step368EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step368EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 823 254 253 252 251 869 60 s6Step368EarlyControlLog=some s6Step368EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step368EarlyControlPlan s6Step368EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 823 254 253 252 251 869 60 s6Step368EarlyControl_logged

private def s6Step368EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step368EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩

private def s6Step368EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],777⟩

private def s6Step368EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886],775⟩

private def s6Step368FrontBank : WindowBank := ⟨s6Step368EntryFRow,s6Step368EntryGRow,s6Step368EntryFvRow,s6Step368EntryGvRow⟩

private def s6Step368Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 888, 795]

private def s6Step368Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 898, 777]

private def s6Step368Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 876, 776]

private def s6Step368Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 908, 775]

private theorem s6Step368Counter_apart : Disjoint s6Step368HeadFvAfter.live s6Step368CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step368HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368Counter_borrowed : s6Step368HeadFvAfter.checkBorrow 4 s6Step368CounterWork=some s6Step368CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step368HeadFvAfter s6Step368CounterDuring s6Step368CounterWork.toFinset s6Step368Counter_bounded s6Step368Counter_apart rfl

private theorem s6Step368Counter_owned : (823::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step368HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step368HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368Counter_checked : compileHmrCounterStepLog s6Step368HeadFvAfter true 823 [774, 773, 772, 771, 770, 769] s6Step368CounterWork=some s6Step368CounterDuring := by
  have owned : ∀q∈823::[774, 773, 772, 771, 770, 769],q∈s6Step368HeadFvAfter.live := fun q hq => s6Step368Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step368Counter_borrowed

private def s6Step368EntryFAfter : Arena := s6Step368EntryFBefore

private theorem s6Step368EntryBank_incomingDistinct : ([s6Step368EntryFRow,s6Step368EntryGRow,s6Step368EntryFvRow,s6Step368EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368EntryF_Incoming : rowsOwned s6Step368EntryFBefore [s6Step368EntryFRow,s6Step368EntryGRow,s6Step368EntryFvRow,s6Step368EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step368EntryFRow,s6Step368EntryGRow,s6Step368EntryFvRow,s6Step368EntryGvRow] 0 s6Step368EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step368EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step368EntryBank_outgoingOwned : rowsOwned s6Step368EntryGvAfter [s6Step368EntryFOut,s6Step368EntryGOut,s6Step368EntryFvOut,s6Step368EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step368EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step368EntryF_Outgoing : rowsOwned s6Step368EntryGvAfter [s6Step368EntryFOut,s6Step368EntryGOut,s6Step368EntryFvOut,s6Step368EntryGvOut] :=
  hmrRows_owned_drop s6Step368EntryGvAfter [s6Step368EntryFOut,s6Step368EntryGOut,s6Step368EntryFvOut,s6Step368EntryGvOut] 0 s6Step368EntryBank_outgoingOwned

private theorem s6Step368EntryF_distinct : (s6Step368EntryFRow.sign::s6Step368EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368EntryF_owned : (s6Step368EntryFRow.sign::s6Step368EntryFRow.payload).toFinset⊆s6Step368EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step368EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368EntryF_reserved : s6Step368EntryFBefore.reserve s6Step368EntryFFresh.toFinset=some s6Step368EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step368EntryFFresh,arenaWires]
  · norm_num [s6Step368EntryFBefore,s6Step368EntryFFresh,arenaWires]
  · simp only [s6Step368EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step368EntryF_checked : planRowResizeLog s6Step368EntryFBefore s6Step368EntryFRow 87 s6Step368EntryFFresh=
    some (s6Step368EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩,growRow 795 s6Step368EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step368EntryFBefore s6Step368EntryFAfter s6Step368EntryFRow 87 s6Step368EntryFFresh
    s6Step368EntryF_distinct s6Step368EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step368EntryF_reserved
  have rowEq : WindowRow.mk (s6Step368EntryFRow.payload++s6Step368EntryFFresh) s6Step368EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step368EntryFvAfter : Arena := s6Step368EntryFBefore

private def s6Step368EntryFvBefore : Arena := s6Step368EntryFBefore

private theorem s6Step368EntryFv_Incoming : rowsOwned s6Step368EntryFvBefore [s6Step368EntryFvRow,s6Step368EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step368EntryFRow,s6Step368EntryGRow,s6Step368EntryFvRow,s6Step368EntryGvRow] 2 s6Step368EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step368EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step368EntryFv_Outgoing : rowsOwned s6Step368EntryGvAfter [s6Step368EntryFvOut,s6Step368EntryGvOut] :=
  hmrRows_owned_drop s6Step368EntryGvAfter [s6Step368EntryFOut,s6Step368EntryGOut,s6Step368EntryFvOut,s6Step368EntryGvOut] 2 s6Step368EntryBank_outgoingOwned

private theorem s6Step368EntryFv_distinct : (s6Step368EntryFvRow.sign::s6Step368EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368EntryFv_owned : (s6Step368EntryFvRow.sign::s6Step368EntryFvRow.payload).toFinset⊆s6Step368EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step368EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368EntryFv_reserved : s6Step368EntryFvBefore.reserve s6Step368EntryFvFresh.toFinset=some s6Step368EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step368EntryFvFresh,arenaWires]
  · norm_num [s6Step368EntryFvBefore,s6Step368EntryFBefore,s6Step368EntryFvFresh,arenaWires]
  · simp only [s6Step368EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step368EntryFv_checked : planRowResizeLog s6Step368EntryFvBefore s6Step368EntryFvRow 200 s6Step368EntryFvFresh=
    some (s6Step368EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩,growRow 776 s6Step368EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step368EntryFvBefore s6Step368EntryFvAfter s6Step368EntryFvRow 200 s6Step368EntryFvFresh
    s6Step368EntryFv_distinct s6Step368EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step368EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step368EntryFvRow.payload++s6Step368EntryFvFresh) s6Step368EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step368EntryGAfter : Arena := s6Step368EntryFBefore

private def s6Step368EntryGBefore : Arena := s6Step368EntryFBefore

private theorem s6Step368EntryG_Incoming : rowsOwned s6Step368EntryGBefore [s6Step368EntryGRow,s6Step368EntryFvRow,s6Step368EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step368EntryFRow,s6Step368EntryGRow,s6Step368EntryFvRow,s6Step368EntryGvRow] 1 s6Step368EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step368EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step368EntryG_Outgoing : rowsOwned s6Step368EntryGvAfter [s6Step368EntryGOut,s6Step368EntryFvOut,s6Step368EntryGvOut] :=
  hmrRows_owned_drop s6Step368EntryGvAfter [s6Step368EntryFOut,s6Step368EntryGOut,s6Step368EntryFvOut,s6Step368EntryGvOut] 1 s6Step368EntryBank_outgoingOwned

private theorem s6Step368EntryG_distinct : (s6Step368EntryGRow.sign::s6Step368EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368EntryG_owned : (s6Step368EntryGRow.sign::s6Step368EntryGRow.payload).toFinset⊆s6Step368EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step368EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368EntryG_reserved : s6Step368EntryGBefore.reserve s6Step368EntryGFresh.toFinset=some s6Step368EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step368EntryGFresh,arenaWires]
  · norm_num [s6Step368EntryGBefore,s6Step368EntryFBefore,s6Step368EntryGFresh,arenaWires]
  · simp only [s6Step368EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step368EntryG_checked : planRowResizeLog s6Step368EntryGBefore s6Step368EntryGRow 87 s6Step368EntryGFresh=
    some (s6Step368EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],777⟩,growRow 777 s6Step368EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step368EntryGBefore s6Step368EntryGAfter s6Step368EntryGRow 87 s6Step368EntryGFresh
    s6Step368EntryG_distinct s6Step368EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step368EntryG_reserved
  have rowEq : WindowRow.mk (s6Step368EntryGRow.payload++s6Step368EntryGFresh) s6Step368EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step368EntryGvBefore : Arena := s6Step368EntryFBefore

private theorem s6Step368EntryGv_Incoming : rowsOwned s6Step368EntryGvBefore [s6Step368EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step368EntryFRow,s6Step368EntryGRow,s6Step368EntryFvRow,s6Step368EntryGvRow] 3 s6Step368EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step368EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step368EntryGv_Outgoing : rowsOwned s6Step368EntryGvAfter [s6Step368EntryGvOut] :=
  hmrRows_owned_drop s6Step368EntryGvAfter [s6Step368EntryFOut,s6Step368EntryGOut,s6Step368EntryFvOut,s6Step368EntryGvOut] 3 s6Step368EntryBank_outgoingOwned

private theorem s6Step368EntryGv_distinct : (s6Step368EntryGvRow.sign::s6Step368EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368EntryGv_owned : (s6Step368EntryGvRow.sign::s6Step368EntryGvRow.payload).toFinset⊆s6Step368EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step368EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368EntryGv_reserved : s6Step368EntryGvBefore.reserve s6Step368EntryGvFresh.toFinset=some s6Step368EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step368EntryGvFresh,arenaWires]
  · norm_num [s6Step368EntryGvBefore,s6Step368EntryFBefore,s6Step368EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step368EntryGvAfter,s6Step368EntryGvBefore,s6Step368EntryFBefore,s6Step368EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step368EntryGv_checked : planRowResizeLog s6Step368EntryGvBefore s6Step368EntryGvRow 200 s6Step368EntryGvFresh=
    some (s6Step368EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906],775⟩,growRow 775 s6Step368EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step368EntryGvBefore s6Step368EntryGvAfter s6Step368EntryGvRow 200 s6Step368EntryGvFresh
    s6Step368EntryGv_distinct s6Step368EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step368EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step368EntryGvRow.payload++s6Step368EntryGvFresh) s6Step368EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step368EntryBank_rows : planWindowRowsLog s6Step368EntryFBefore [(s6Step368EntryFRow,87),(s6Step368EntryGRow,87),(s6Step368EntryFvRow,200),(s6Step368EntryGvRow,200)] [s6Step368EntryFFresh,s6Step368EntryGFresh,s6Step368EntryFvFresh,s6Step368EntryGvFresh]=
    some (s6Step368EntryGvAfter,[s6Step368EntryFOut,s6Step368EntryGOut,s6Step368EntryFvOut,s6Step368EntryGvOut],(growRow 795 s6Step368EntryFFresh ++ (growRow 777 s6Step368EntryGFresh ++ (growRow 776 s6Step368EntryFvFresh ++ (growRow 775 s6Step368EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step368EntryGvAfter [] []=some (s6Step368EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step368EntryGvBefore s6Step368EntryGvAfter s6Step368EntryGvAfter
    s6Step368EntryGvRow s6Step368EntryGvOut 200 s6Step368EntryGvFresh [] [] []
    (growRow 775 s6Step368EntryGvFresh) ([]) s6Step368EntryGv_Incoming s6Step368EntryGv_checked h4 s6Step368EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step368EntryFvBefore s6Step368EntryFvAfter s6Step368EntryGvAfter
    s6Step368EntryFvRow s6Step368EntryFvOut 200 s6Step368EntryFvFresh [(s6Step368EntryGvRow,200)] [s6Step368EntryGvFresh] [s6Step368EntryGvOut]
    (growRow 776 s6Step368EntryFvFresh) ((growRow 775 s6Step368EntryGvFresh ++ [])) s6Step368EntryFv_Incoming s6Step368EntryFv_checked h3 s6Step368EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step368EntryGBefore s6Step368EntryGAfter s6Step368EntryGvAfter
    s6Step368EntryGRow s6Step368EntryGOut 87 s6Step368EntryGFresh [(s6Step368EntryFvRow,200),(s6Step368EntryGvRow,200)] [s6Step368EntryFvFresh,s6Step368EntryGvFresh] [s6Step368EntryFvOut,s6Step368EntryGvOut]
    (growRow 777 s6Step368EntryGFresh) ((growRow 776 s6Step368EntryFvFresh ++ (growRow 775 s6Step368EntryGvFresh ++ []))) s6Step368EntryG_Incoming s6Step368EntryG_checked h2 s6Step368EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step368EntryFBefore s6Step368EntryFAfter s6Step368EntryGvAfter
    s6Step368EntryFRow s6Step368EntryFOut 87 s6Step368EntryFFresh [(s6Step368EntryGRow,87),(s6Step368EntryFvRow,200),(s6Step368EntryGvRow,200)] [s6Step368EntryGFresh,s6Step368EntryFvFresh,s6Step368EntryGvFresh] [s6Step368EntryGOut,s6Step368EntryFvOut,s6Step368EntryGvOut]
    (growRow 795 s6Step368EntryFFresh) ((growRow 777 s6Step368EntryGFresh ++ (growRow 776 s6Step368EntryFvFresh ++ (growRow 775 s6Step368EntryGvFresh ++ [])))) s6Step368EntryF_Incoming s6Step368EntryF_checked h1 s6Step368EntryF_Outgoing
  exact h0

private theorem s6Step368EntryBank_checked : compileHmrBankResizeLog .entry s6Step368EntryFBefore ⟨s6Step368EntryFRow,s6Step368EntryGRow,s6Step368EntryFvRow,s6Step368EntryGvRow⟩ ⟨87,87,200,200⟩ [s6Step368EntryFFresh,s6Step368EntryGFresh,s6Step368EntryFvFresh,s6Step368EntryGvFresh]=
    some (s6Step368EntryGvAfter,⟨s6Step368EntryFOut,s6Step368EntryGOut,s6Step368EntryFvOut,s6Step368EntryGvOut⟩,(growRow 795 s6Step368EntryFFresh ++ (growRow 777 s6Step368EntryGFresh ++ (growRow 776 s6Step368EntryFvFresh ++ (growRow 775 s6Step368EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step368EntryBank_rows]
  rfl

private def s6Step368ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368ExitFBefore : Arena := s6Step368ExitGAfter

private def s6Step368ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 888],795⟩

private def s6Step368ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 876],776⟩

private def s6Step368ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 898],777⟩

private def s6Step368ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 908],775⟩

private theorem s6Step368ExitBank_incomingDistinct : ([s6Step368ExitGRow,s6Step368ExitFRow,s6Step368ExitFvRow,s6Step368ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368ExitF_Incoming : rowsOwned s6Step368ExitFBefore [s6Step368ExitFRow,s6Step368ExitFvRow,s6Step368ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step368ExitGRow,s6Step368ExitFRow,s6Step368ExitFvRow,s6Step368ExitGvRow] 1 s6Step368ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step368ExitFBefore (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step368ExitBank_outgoingOwned : rowsOwned s6Step368ExitGvAfter [s6Step368ExitGOut,s6Step368ExitFOut,s6Step368ExitFvOut,s6Step368ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step368ExitGvAfter (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step368ExitF_Outgoing : rowsOwned s6Step368ExitGvAfter [s6Step368ExitFOut,s6Step368ExitFvOut,s6Step368ExitGvOut] :=
  hmrRows_owned_drop s6Step368ExitGvAfter [s6Step368ExitGOut,s6Step368ExitFOut,s6Step368ExitFvOut,s6Step368ExitGvOut] 1 s6Step368ExitBank_outgoingOwned

private theorem s6Step368ExitF_distinct : (s6Step368ExitFRow.sign::s6Step368ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368ExitF_owned : (s6Step368ExitFRow.sign::s6Step368ExitFRow.payload).toFinset⊆s6Step368ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step368ExitFBefore (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368ExitF_retired : s6Step368ExitFBefore.retireSet s6Step368ExitFExtra.toFinset=s6Step368ExitFAfter := by
  unfold Arena.retireSet s6Step368ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step368ExitFBefore,s6Step368ExitGAfter,s6Step368ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step368ExitF_checked : planRowResizeLog s6Step368ExitFBefore s6Step368ExitFRow 87 []=
    some (s6Step368ExitFAfter,s6Step368ExitFOut,shrinkRow 795 s6Step368ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step368ExitFBefore s6Step368ExitFRow 87 s6Step368ExitF_distinct s6Step368ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step368ExitFRow.payload.take 87) s6Step368ExitFRow.sign=s6Step368ExitFOut := by decide +kernel
  have hi : s6Step368ExitFRow.payload.drop 87=s6Step368ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step368ExitF_retired] at result
  exact result

private def s6Step368ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368ExitFvBefore : Arena := s6Step368ExitFAfter

private theorem s6Step368ExitFv_Incoming : rowsOwned s6Step368ExitFvBefore [s6Step368ExitFvRow,s6Step368ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step368ExitGRow,s6Step368ExitFRow,s6Step368ExitFvRow,s6Step368ExitGvRow] 2 s6Step368ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step368ExitFvBefore (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step368ExitFv_Outgoing : rowsOwned s6Step368ExitGvAfter [s6Step368ExitFvOut,s6Step368ExitGvOut] :=
  hmrRows_owned_drop s6Step368ExitGvAfter [s6Step368ExitGOut,s6Step368ExitFOut,s6Step368ExitFvOut,s6Step368ExitGvOut] 2 s6Step368ExitBank_outgoingOwned

private theorem s6Step368ExitFv_distinct : (s6Step368ExitFvRow.sign::s6Step368ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368ExitFv_owned : (s6Step368ExitFvRow.sign::s6Step368ExitFvRow.payload).toFinset⊆s6Step368ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step368ExitFvBefore (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368ExitFv_retired : s6Step368ExitFvBefore.retireSet s6Step368ExitFvExtra.toFinset=s6Step368ExitFvAfter := by
  unfold Arena.retireSet s6Step368ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step368ExitFvBefore,s6Step368ExitFAfter,s6Step368ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step368ExitFv_checked : planRowResizeLog s6Step368ExitFvBefore s6Step368ExitFvRow 200 []=
    some (s6Step368ExitFvAfter,s6Step368ExitFvOut,shrinkRow 776 s6Step368ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step368ExitFvBefore s6Step368ExitFvRow 200 s6Step368ExitFv_distinct s6Step368ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step368ExitFvRow.payload.take 200) s6Step368ExitFvRow.sign=s6Step368ExitFvOut := by decide +kernel
  have hi : s6Step368ExitFvRow.payload.drop 200=s6Step368ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step368ExitFv_retired] at result
  exact result

private def s6Step368ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step368ExitG_Incoming : rowsOwned s6Step368ExitGBefore [s6Step368ExitGRow,s6Step368ExitFRow,s6Step368ExitFvRow,s6Step368ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step368ExitGRow,s6Step368ExitFRow,s6Step368ExitFvRow,s6Step368ExitGvRow] 0 s6Step368ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step368ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step368ExitG_Outgoing : rowsOwned s6Step368ExitGvAfter [s6Step368ExitGOut,s6Step368ExitFOut,s6Step368ExitFvOut,s6Step368ExitGvOut] :=
  hmrRows_owned_drop s6Step368ExitGvAfter [s6Step368ExitGOut,s6Step368ExitFOut,s6Step368ExitFvOut,s6Step368ExitGvOut] 0 s6Step368ExitBank_outgoingOwned

private theorem s6Step368ExitG_distinct : (s6Step368ExitGRow.sign::s6Step368ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368ExitG_owned : (s6Step368ExitGRow.sign::s6Step368ExitGRow.payload).toFinset⊆s6Step368ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step368ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368ExitG_retired : s6Step368ExitGBefore.retireSet s6Step368ExitGExtra.toFinset=s6Step368ExitGAfter := by
  unfold Arena.retireSet s6Step368ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step368ExitGBefore,s6Step368ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step368ExitG_checked : planRowResizeLog s6Step368ExitGBefore s6Step368ExitGRow 86 []=
    some (s6Step368ExitGAfter,s6Step368ExitGOut,shrinkRow 777 s6Step368ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step368ExitGBefore s6Step368ExitGRow 86 s6Step368ExitG_distinct s6Step368ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step368ExitGRow.payload.take 86) s6Step368ExitGRow.sign=s6Step368ExitGOut := by decide +kernel
  have hi : s6Step368ExitGRow.payload.drop 86=s6Step368ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step368ExitG_retired] at result
  exact result

private def s6Step368ExitGvBefore : Arena := s6Step368ExitFvAfter

private theorem s6Step368ExitGv_Incoming : rowsOwned s6Step368ExitGvBefore [s6Step368ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step368ExitGRow,s6Step368ExitFRow,s6Step368ExitFvRow,s6Step368ExitGvRow] 3 s6Step368ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step368ExitGvBefore (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step368ExitGv_Outgoing : rowsOwned s6Step368ExitGvAfter [s6Step368ExitGvOut] :=
  hmrRows_owned_drop s6Step368ExitGvAfter [s6Step368ExitGOut,s6Step368ExitFOut,s6Step368ExitFvOut,s6Step368ExitGvOut] 3 s6Step368ExitBank_outgoingOwned

private theorem s6Step368ExitGv_distinct : (s6Step368ExitGvRow.sign::s6Step368ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368ExitGv_owned : (s6Step368ExitGvRow.sign::s6Step368ExitGvRow.payload).toFinset⊆s6Step368ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step368ExitGvBefore (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368ExitGv_retired : s6Step368ExitGvBefore.retireSet s6Step368ExitGvExtra.toFinset=s6Step368ExitGvAfter := by
  unfold Arena.retireSet s6Step368ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step368ExitGvBefore,s6Step368ExitFvAfter,s6Step368ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step368ExitGv_checked : planRowResizeLog s6Step368ExitGvBefore s6Step368ExitGvRow 200 []=
    some (s6Step368ExitGvAfter,s6Step368ExitGvOut,shrinkRow 775 s6Step368ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step368ExitGvBefore s6Step368ExitGvRow 200 s6Step368ExitGv_distinct s6Step368ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step368ExitGvRow.payload.take 200) s6Step368ExitGvRow.sign=s6Step368ExitGvOut := by decide +kernel
  have hi : s6Step368ExitGvRow.payload.drop 200=s6Step368ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step368ExitGv_retired] at result
  exact result

private theorem s6Step368ExitBank_rows : planWindowRowsLog s6Step368ExitGBefore [(s6Step368ExitGRow,86),(s6Step368ExitFRow,87),(s6Step368ExitFvRow,200),(s6Step368ExitGvRow,200)] [[],[],[],[]]=
    some (s6Step368ExitGvAfter,[s6Step368ExitGOut,s6Step368ExitFOut,s6Step368ExitFvOut,s6Step368ExitGvOut],(shrinkRow 777 s6Step368ExitGExtra ++ (shrinkRow 795 s6Step368ExitFExtra ++ (shrinkRow 776 s6Step368ExitFvExtra ++ (shrinkRow 775 s6Step368ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step368ExitGvAfter [] []=some (s6Step368ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step368ExitGvBefore s6Step368ExitGvAfter s6Step368ExitGvAfter
    s6Step368ExitGvRow s6Step368ExitGvOut 200 [] [] [] []
    (shrinkRow 775 s6Step368ExitGvExtra) ([]) s6Step368ExitGv_Incoming s6Step368ExitGv_checked h4 s6Step368ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step368ExitFvBefore s6Step368ExitFvAfter s6Step368ExitGvAfter
    s6Step368ExitFvRow s6Step368ExitFvOut 200 [] [(s6Step368ExitGvRow,200)] [[]] [s6Step368ExitGvOut]
    (shrinkRow 776 s6Step368ExitFvExtra) ((shrinkRow 775 s6Step368ExitGvExtra ++ [])) s6Step368ExitFv_Incoming s6Step368ExitFv_checked h3 s6Step368ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step368ExitFBefore s6Step368ExitFAfter s6Step368ExitGvAfter
    s6Step368ExitFRow s6Step368ExitFOut 87 [] [(s6Step368ExitFvRow,200),(s6Step368ExitGvRow,200)] [[],[]] [s6Step368ExitFvOut,s6Step368ExitGvOut]
    (shrinkRow 795 s6Step368ExitFExtra) ((shrinkRow 776 s6Step368ExitFvExtra ++ (shrinkRow 775 s6Step368ExitGvExtra ++ []))) s6Step368ExitF_Incoming s6Step368ExitF_checked h2 s6Step368ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step368ExitGBefore s6Step368ExitGAfter s6Step368ExitGvAfter
    s6Step368ExitGRow s6Step368ExitGOut 86 [] [(s6Step368ExitFRow,87),(s6Step368ExitFvRow,200),(s6Step368ExitGvRow,200)] [[],[],[]] [s6Step368ExitFOut,s6Step368ExitFvOut,s6Step368ExitGvOut]
    (shrinkRow 777 s6Step368ExitGExtra) ((shrinkRow 795 s6Step368ExitFExtra ++ (shrinkRow 776 s6Step368ExitFvExtra ++ (shrinkRow 775 s6Step368ExitGvExtra ++ [])))) s6Step368ExitG_Incoming s6Step368ExitG_checked h1 s6Step368ExitG_Outgoing
  exact h0

private theorem s6Step368ExitBank_checked : compileHmrBankResizeLog .exit s6Step368ExitGBefore ⟨s6Step368ExitFRow,s6Step368ExitGRow,s6Step368ExitFvRow,s6Step368ExitGvRow⟩ ⟨87,86,200,200⟩ [[],[],[],[]]=
    some (s6Step368ExitGvAfter,⟨s6Step368ExitFOut,s6Step368ExitGOut,s6Step368ExitFvOut,s6Step368ExitGvOut⟩,(shrinkRow 777 s6Step368ExitGExtra ++ (shrinkRow 795 s6Step368ExitFExtra ++ (shrinkRow 776 s6Step368ExitFvExtra ++ (shrinkRow 775 s6Step368ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step368ExitBank_rows]
  rfl

private theorem s6Step368Add0_apart : Disjoint s6Step368Add0Arena.live s6Step368Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step368Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368Add0_card : s6Step368Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step368Add0_borrowed : s6Step368Add0Arena.checkBorrow (hmrHybridCount s6Step368Add0Arena s6Step368Add0B.length) s6Step368Add0Work=some s6Step368Add0During := by
  have len : s6Step368Add0Work.length=hmrHybridCount s6Step368Add0Arena s6Step368Add0B.length := by
    rw [hmrHybridCount,s6Step368Add0_card]
    decide +kernel
  have nd : s6Step368Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step368Add0Arena s6Step368Add0During s6Step368Add0Work.toFinset s6Step368Add0_bounded s6Step368Add0_apart rfl

private theorem s6Step368Add0_distinct : (858::869::807::(s6Step368Add0A++s6Step368Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368Add0_owned : (858::869::807::(s6Step368Add0A++s6Step368Add0B)).toFinset⊆s6Step368Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step368Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368Add0_checked : compileHmrHybridCinLog s6Step368Add0Arena 869 858 807 s6Step368Add0A s6Step368Add0B s6Step368Add0Work=some s6Step368Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step368Add0Arena s6Step368Add0During 869 858 807 s6Step368Add0A s6Step368Add0B s6Step368Add0Work
    (by decide +kernel) (by decide +kernel) s6Step368Add0_distinct
    (fun q hq => s6Step368Add0_owned (List.mem_toFinset.mpr hq)) s6Step368Add0_borrowed

private theorem s6Step368Add1_apart : Disjoint s6Step368Add1Arena.live s6Step368Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step368Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368Add1_card : s6Step368Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step368Add1_borrowed : s6Step368Add1Arena.checkBorrow (hmrHybridCount s6Step368Add1Arena s6Step368Add1B.length) s6Step368Add1Work=some s6Step368Add1During := by
  have len : s6Step368Add1Work.length=hmrHybridCount s6Step368Add1Arena s6Step368Add1B.length := by
    rw [hmrHybridCount,s6Step368Add1_card]
    decide +kernel
  have nd : s6Step368Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step368Add1Arena s6Step368Add1During s6Step368Add1Work.toFinset s6Step368Add1_bounded s6Step368Add1_apart rfl

private theorem s6Step368Add1_distinct : (858::869::807::(s6Step368Add1A++s6Step368Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368Add1_owned : (858::869::807::(s6Step368Add1A++s6Step368Add1B)).toFinset⊆s6Step368Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step368Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368Add1_checked : compileHmrHybridCinLog s6Step368Add1Arena 869 858 807 s6Step368Add1A s6Step368Add1B s6Step368Add1Work=some s6Step368Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step368Add1Arena s6Step368Add1During 869 858 807 s6Step368Add1A s6Step368Add1B s6Step368Add1Work
    (by decide +kernel) (by decide +kernel) s6Step368Add1_distinct
    (fun q hq => s6Step368Add1_owned (List.mem_toFinset.mpr hq)) s6Step368Add1_borrowed

private theorem s6Step368F4_apart : Disjoint (s6Step368Add0A++s6Step368Add0B).toFinset (s6Step368Add1A++s6Step368Add1B).toFinset := by
  have nd : ((s6Step368Add0A++s6Step368Add0B)++(s6Step368Add1A++s6Step368Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step368F4_carry : s6Step368F4FlagArena.checkBorrow 1 [807]=some s6Step368Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step368F4FlagArena,s6Step368HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step368F4FlagArena,s6Step368HeadFvAfter,s6Step368Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step368F4_distinct : (823::869::858::807::((s6Step368Add0A++s6Step368Add1A)++(s6Step368Add0B++s6Step368Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368F4_flag : s6Step368HeadFvAfter.checkBorrow 1 [858]=some s6Step368F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step368HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step368F4_owned : (823::869::((s6Step368Add0A++s6Step368Add1A)++(s6Step368Add0B++s6Step368Add1B))).toFinset⊆s6Step368HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step368HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368F4_checked : compileHmrHybridF4Log s6Step368HeadFvAfter 823 869 s6Step368Add0A s6Step368Add0B s6Step368Add1A s6Step368Add1B [858] [807] s6Step368Add0Work s6Step368Add1Work=some s6Step368F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step368HeadFvAfter s6Step368F4FlagArena s6Step368Add0Arena s6Step368Add0During s6Step368Add1During 823 869
    s6Step368Add0A s6Step368Add0B s6Step368Add1A s6Step368Add1B [858] [807] s6Step368Add0Work s6Step368Add1Work
    (fun q hq => s6Step368F4_owned (List.mem_toFinset.mpr hq)) s6Step368F4_flag s6Step368F4_carry
    s6Step368F4_distinct s6Step368F4_apart s6Step368Add0_checked s6Step368Add1_checked

private theorem s6Step368Front_branch : s6Step368FrontSigmaArena.checkBorrow 1 [869]=some s6Step368HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step368FrontSigmaArena,s6Step368EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step368FrontSigmaArena,s6Step368EntryGvAfter,s6Step368HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step368Front_entry : HmrFrontEntryValid s6Step368EntryFBefore s6Step368FrontBank 87 200 ⟨87,86,200,200⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step368FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step368EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step368EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step368FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step368Front_sigma : s6Step368EntryGvAfter.checkBorrow 1 [823]=some s6Step368FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step368EntryGvAfter,arenaWires]
  · rfl

private def s6Step368HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368HeadFBefore : Arena := s6Step368HeadGAfter

private def s6Step368HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step368HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩

private def s6Step368HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],777⟩

private def s6Step368HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906],775⟩

private theorem s6Step368HeadBank_incomingDistinct : ([s6Step368HeadGRow,s6Step368HeadFRow,s6Step368HeadGvRow,s6Step368HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368HeadF_Incoming : rowsOwned s6Step368HeadFBefore [s6Step368HeadFRow,s6Step368HeadGvRow,s6Step368HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step368HeadGRow,s6Step368HeadFRow,s6Step368HeadGvRow,s6Step368HeadFvRow] 1 s6Step368HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step368HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step368HeadBank_outgoingOwned : rowsOwned s6Step368HeadFvAfter [s6Step368HeadGOut,s6Step368HeadFOut,s6Step368HeadGvOut,s6Step368HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step368HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step368HeadF_Outgoing : rowsOwned s6Step368HeadFvAfter [s6Step368HeadFOut,s6Step368HeadGvOut,s6Step368HeadFvOut] :=
  hmrRows_owned_drop s6Step368HeadFvAfter [s6Step368HeadGOut,s6Step368HeadFOut,s6Step368HeadGvOut,s6Step368HeadFvOut] 1 s6Step368HeadBank_outgoingOwned

private theorem s6Step368HeadF_distinct : (s6Step368HeadFRow.sign::s6Step368HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368HeadF_owned : (s6Step368HeadFRow.sign::s6Step368HeadFRow.payload).toFinset⊆s6Step368HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step368HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368HeadF_reserved : s6Step368HeadFBefore.reserve s6Step368HeadFFresh.toFinset=some s6Step368HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step368HeadFFresh,arenaWires]
  · norm_num [s6Step368HeadFBefore,s6Step368HeadGAfter,s6Step368HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step368HeadFAfter,s6Step368HeadFBefore,s6Step368HeadGAfter,s6Step368HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step368HeadF_checked : planRowResizeLog s6Step368HeadFBefore s6Step368HeadFRow 88 s6Step368HeadFFresh=
    some (s6Step368HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 888],795⟩,growRow 795 s6Step368HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step368HeadFBefore s6Step368HeadFAfter s6Step368HeadFRow 88 s6Step368HeadFFresh
    s6Step368HeadF_distinct s6Step368HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step368HeadF_reserved
  have rowEq : WindowRow.mk (s6Step368HeadFRow.payload++s6Step368HeadFFresh) s6Step368HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 888],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step368HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step368HeadFvBefore : Arena := s6Step368HeadGvAfter

private theorem s6Step368HeadFv_Incoming : rowsOwned s6Step368HeadFvBefore [s6Step368HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step368HeadGRow,s6Step368HeadFRow,s6Step368HeadGvRow,s6Step368HeadFvRow] 3 s6Step368HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step368HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step368HeadFv_Outgoing : rowsOwned s6Step368HeadFvAfter [s6Step368HeadFvOut] :=
  hmrRows_owned_drop s6Step368HeadFvAfter [s6Step368HeadGOut,s6Step368HeadFOut,s6Step368HeadGvOut,s6Step368HeadFvOut] 3 s6Step368HeadBank_outgoingOwned

private theorem s6Step368HeadFv_distinct : (s6Step368HeadFvRow.sign::s6Step368HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368HeadFv_owned : (s6Step368HeadFvRow.sign::s6Step368HeadFvRow.payload).toFinset⊆s6Step368HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step368HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368HeadFv_reserved : s6Step368HeadFvBefore.reserve s6Step368HeadFvFresh.toFinset=some s6Step368HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step368HeadFvFresh,arenaWires]
  · norm_num [s6Step368HeadFvBefore,s6Step368HeadGvAfter,s6Step368HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step368HeadFvAfter,s6Step368HeadFvBefore,s6Step368HeadGvAfter,s6Step368HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step368HeadFv_checked : planRowResizeLog s6Step368HeadFvBefore s6Step368HeadFvRow 201 s6Step368HeadFvFresh=
    some (s6Step368HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 876],776⟩,growRow 776 s6Step368HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step368HeadFvBefore s6Step368HeadFvAfter s6Step368HeadFvRow 201 s6Step368HeadFvFresh
    s6Step368HeadFv_distinct s6Step368HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step368HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step368HeadFvRow.payload++s6Step368HeadFvFresh) s6Step368HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step368HeadG_Incoming : rowsOwned s6Step368HeadGBefore [s6Step368HeadGRow,s6Step368HeadFRow,s6Step368HeadGvRow,s6Step368HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step368HeadGRow,s6Step368HeadFRow,s6Step368HeadGvRow,s6Step368HeadFvRow] 0 s6Step368HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step368HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step368HeadG_Outgoing : rowsOwned s6Step368HeadFvAfter [s6Step368HeadGOut,s6Step368HeadFOut,s6Step368HeadGvOut,s6Step368HeadFvOut] :=
  hmrRows_owned_drop s6Step368HeadFvAfter [s6Step368HeadGOut,s6Step368HeadFOut,s6Step368HeadGvOut,s6Step368HeadFvOut] 0 s6Step368HeadBank_outgoingOwned

private theorem s6Step368HeadG_distinct : (s6Step368HeadGRow.sign::s6Step368HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368HeadG_owned : (s6Step368HeadGRow.sign::s6Step368HeadGRow.payload).toFinset⊆s6Step368HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step368HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368HeadG_reserved : s6Step368HeadGBefore.reserve s6Step368HeadGFresh.toFinset=some s6Step368HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step368HeadGFresh,arenaWires]
  · norm_num [s6Step368HeadGBefore,s6Step368HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step368HeadGAfter,s6Step368HeadGBefore,s6Step368HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step368HeadG_checked : planRowResizeLog s6Step368HeadGBefore s6Step368HeadGRow 88 s6Step368HeadGFresh=
    some (s6Step368HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 898],777⟩,growRow 777 s6Step368HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step368HeadGBefore s6Step368HeadGAfter s6Step368HeadGRow 88 s6Step368HeadGFresh
    s6Step368HeadG_distinct s6Step368HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step368HeadG_reserved
  have rowEq : WindowRow.mk (s6Step368HeadGRow.payload++s6Step368HeadGFresh) s6Step368HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 898],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step368HeadGvBefore : Arena := s6Step368HeadFAfter

private theorem s6Step368HeadGv_Incoming : rowsOwned s6Step368HeadGvBefore [s6Step368HeadGvRow,s6Step368HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step368HeadGRow,s6Step368HeadFRow,s6Step368HeadGvRow,s6Step368HeadFvRow] 2 s6Step368HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step368HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step368HeadGv_Outgoing : rowsOwned s6Step368HeadFvAfter [s6Step368HeadGvOut,s6Step368HeadFvOut] :=
  hmrRows_owned_drop s6Step368HeadFvAfter [s6Step368HeadGOut,s6Step368HeadFOut,s6Step368HeadGvOut,s6Step368HeadFvOut] 2 s6Step368HeadBank_outgoingOwned

private theorem s6Step368HeadGv_distinct : (s6Step368HeadGvRow.sign::s6Step368HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step368HeadGv_owned : (s6Step368HeadGvRow.sign::s6Step368HeadGvRow.payload).toFinset⊆s6Step368HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step368HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step368HeadGv_reserved : s6Step368HeadGvBefore.reserve s6Step368HeadGvFresh.toFinset=some s6Step368HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step368HeadGvFresh,arenaWires]
  · norm_num [s6Step368HeadGvBefore,s6Step368HeadFAfter,s6Step368HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step368HeadGvAfter,s6Step368HeadGvBefore,s6Step368HeadFAfter,s6Step368HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step368HeadGv_checked : planRowResizeLog s6Step368HeadGvBefore s6Step368HeadGvRow 201 s6Step368HeadGvFresh=
    some (s6Step368HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 908],775⟩,growRow 775 s6Step368HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step368HeadGvBefore s6Step368HeadGvAfter s6Step368HeadGvRow 201 s6Step368HeadGvFresh
    s6Step368HeadGv_distinct s6Step368HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step368HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step368HeadGvRow.payload++s6Step368HeadGvFresh) s6Step368HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 908],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step368HeadBank_rows : planWindowRowsLog s6Step368HeadGBefore [(s6Step368HeadGRow,88),(s6Step368HeadFRow,88),(s6Step368HeadGvRow,201),(s6Step368HeadFvRow,201)] [s6Step368HeadGFresh,s6Step368HeadFFresh,s6Step368HeadGvFresh,s6Step368HeadFvFresh]=
    some (s6Step368HeadFvAfter,[s6Step368HeadGOut,s6Step368HeadFOut,s6Step368HeadGvOut,s6Step368HeadFvOut],(growRow 777 s6Step368HeadGFresh ++ (growRow 795 s6Step368HeadFFresh ++ (growRow 775 s6Step368HeadGvFresh ++ (growRow 776 s6Step368HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step368HeadFvAfter [] []=some (s6Step368HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step368HeadFvBefore s6Step368HeadFvAfter s6Step368HeadFvAfter
    s6Step368HeadFvRow s6Step368HeadFvOut 201 s6Step368HeadFvFresh [] [] []
    (growRow 776 s6Step368HeadFvFresh) ([]) s6Step368HeadFv_Incoming s6Step368HeadFv_checked h4 s6Step368HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step368HeadGvBefore s6Step368HeadGvAfter s6Step368HeadFvAfter
    s6Step368HeadGvRow s6Step368HeadGvOut 201 s6Step368HeadGvFresh [(s6Step368HeadFvRow,201)] [s6Step368HeadFvFresh] [s6Step368HeadFvOut]
    (growRow 775 s6Step368HeadGvFresh) ((growRow 776 s6Step368HeadFvFresh ++ [])) s6Step368HeadGv_Incoming s6Step368HeadGv_checked h3 s6Step368HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step368HeadFBefore s6Step368HeadFAfter s6Step368HeadFvAfter
    s6Step368HeadFRow s6Step368HeadFOut 88 s6Step368HeadFFresh [(s6Step368HeadGvRow,201),(s6Step368HeadFvRow,201)] [s6Step368HeadGvFresh,s6Step368HeadFvFresh] [s6Step368HeadGvOut,s6Step368HeadFvOut]
    (growRow 795 s6Step368HeadFFresh) ((growRow 775 s6Step368HeadGvFresh ++ (growRow 776 s6Step368HeadFvFresh ++ []))) s6Step368HeadF_Incoming s6Step368HeadF_checked h2 s6Step368HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step368HeadGBefore s6Step368HeadGAfter s6Step368HeadFvAfter
    s6Step368HeadGRow s6Step368HeadGOut 88 s6Step368HeadGFresh [(s6Step368HeadFRow,88),(s6Step368HeadGvRow,201),(s6Step368HeadFvRow,201)] [s6Step368HeadFFresh,s6Step368HeadGvFresh,s6Step368HeadFvFresh] [s6Step368HeadFOut,s6Step368HeadGvOut,s6Step368HeadFvOut]
    (growRow 777 s6Step368HeadGFresh) ((growRow 795 s6Step368HeadFFresh ++ (growRow 775 s6Step368HeadGvFresh ++ (growRow 776 s6Step368HeadFvFresh ++ [])))) s6Step368HeadG_Incoming s6Step368HeadG_checked h1 s6Step368HeadG_Outgoing
  exact h0

private theorem s6Step368HeadBank_checked : compileHmrBankResizeLog .headroom s6Step368HeadGBefore ⟨s6Step368HeadFRow,s6Step368HeadGRow,s6Step368HeadFvRow,s6Step368HeadGvRow⟩ ⟨88,88,201,201⟩ [s6Step368HeadGFresh,s6Step368HeadFFresh,s6Step368HeadGvFresh,s6Step368HeadFvFresh]=
    some (s6Step368HeadFvAfter,⟨s6Step368HeadFOut,s6Step368HeadGOut,s6Step368HeadFvOut,s6Step368HeadGvOut⟩,(growRow 777 s6Step368HeadGFresh ++ (growRow 795 s6Step368HeadFFresh ++ (growRow 775 s6Step368HeadGvFresh ++ (growRow 776 s6Step368HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step368HeadBank_rows]
  rfl

private theorem s6Step368Front_checked : compileHmrSourceFrontLog s6Step368EntryFBefore s6Step368FrontBank 87 200 ⟨87,86,200,200⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step368FrontLog=some s6Step368FrontPlan := by
  have pairEq : s6Step368FrontPair=⟨s6Step368HeadFRow,s6Step368HeadGRow,s6Step368HeadFvRow,s6Step368HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step368FrontHead=⟨s6Step368ExitFRow,s6Step368ExitGRow,s6Step368ExitFvRow,s6Step368ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step368Add0A=s6Step368FrontHead.f.wires := by decide +kernel
  have gEq : s6Step368Add0B=s6Step368FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step368Add1A=s6Step368FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step368Add1B=s6Step368FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step368EntryFBefore s6Step368FrontBank 87 200 ⟨87,86,200,200⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step368FrontLog s6Step368FrontPlan
  · exact s6Step368Front_entry
  · exact s6Step368EntryBank_checked
  · exact s6Step368Front_sigma
  · rfl
  · exact s6Step368Front_branch
  · rfl
  · simpa only [s6Step368FrontPlan,pairEq] using s6Step368HeadBank_checked
  · simpa only [s6Step368FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step368F4_checked
  · exact s6Step368Counter_checked
  · rfl
  · simpa only [s6Step368FrontPlan,headEq] using s6Step368ExitBank_checked

private theorem s6Step368Complete_explicit_checked : compileHmrEarlyStepLog s6Step368EntryFBefore s6Step368FrontBank 87 200 ⟨87,86,200,200⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step368CompleteLog=some s6Step368CompletePlan := by
  let Q := s6Step368EarlyControlPlan
  have hq := s6Step368EarlyControl_plan_checked
  have fv1 : s6Step368CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step368CompleteOut.fv.payload[2]?.getD s6Step368CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step368CompleteOut.fv.payload[3]?.getD s6Step368CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step368CompleteOut.fv.payload[4]?.getD s6Step368CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step368EntryFBefore s6Step368EarlyControlArena s6Step368FrontBank 87 200 ⟨87,86,200,200⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step368CompleteLog s6Step368FrontPlan Q
    s6Step368Front_checked s6Step368Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step368Complete_owned s6Step368Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step368EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 823 s6Step368CompleteOut.fv.second (s6Step368CompleteOut.fv.payload[2]?.getD s6Step368CompleteOut.fv.sign) (s6Step368CompleteOut.fv.payload[3]?.getD s6Step368CompleteOut.fv.sign) (s6Step368CompleteOut.fv.payload[4]?.getD s6Step368CompleteOut.fv.sign) 869 60 s6Step368EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep368Arena : Arena := s6Step368EntryFBefore
def s6PrivateStep368Bank : WindowBank := s6Step368FrontBank
def s6PrivateStep368Spec : HmrSourceWalkStepLog := ⟨87,200,⟨87,86,200,200⟩,60,.early s6Step368CompleteLog⟩
def s6PrivateStep368Plan : HmrSourceStepPlan := .early s6Step368CompletePlan
theorem s6PrivateStep368_source : s6PrivateStep368Spec=s6ObservedLogs368[0] := rfl
theorem s6PrivateStep368_checked : compileHmrSourceStepLog s6PrivateStep368Arena s6PrivateStep368Bank
    s6PrivateStep368Spec.fgWidth s6PrivateStep368Spec.vWidth s6PrivateStep368Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 368 s6PrivateStep368Spec.need none s6PrivateStep368Spec.log=some s6PrivateStep368Plan := by
  change compileHmrSourceStepLog s6Step368EntryFBefore s6Step368FrontBank 87 200 ⟨87,86,200,200⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 368 60 none (.early s6Step368CompleteLog)=some (.early s6Step368CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 368<498)]
  rw [s6Step368Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
