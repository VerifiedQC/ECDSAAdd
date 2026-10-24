import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep367
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

private def s6Step369CompleteMoves : List (Wire × Wire) := []

private def s6Step369EarlyControlLog : HmrEarlyControlLog := ⟨[888, 876, 869, 908, 858],[807],[805],[802, 843, 877, 792, 816, 819],[]⟩

private def s6Step369FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [869], [], []],[[908], [876], [888], [898]],[[], [], [], []]⟩,[823],[796],[858],[807],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[858, 807, 805, 802]⟩

private def s6Step369CompleteLog : HmrEarlyStepLog := ⟨s6Step369FrontLog,s6Step369CompleteMoves,s6Step369EarlyControlLog⟩

private def s6Step369ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step369ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898],776⟩

private def s6Step369ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],777⟩

private def s6Step369ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906],775⟩

private def s6Step369FrontOut : WindowBank := ⟨s6Step369ExitFOut,s6Step369ExitGOut,s6Step369ExitFvOut,s6Step369ExitGvOut⟩

private def s6Step369CompleteOut : WindowBank := s6Step369FrontOut.repacked s6Step369CompleteMoves

private def s6Step369EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step369EarlyControlPositiveArena,[807],s6Step369EarlyControlEqualityArena,[805],⟨⟨823,false⟩,[⟨⟨807,false⟩,805⟩]⟩⟩

private def s6Step369EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,888⟩,⟨⟨772,false⟩,876⟩,⟨⟨771,false⟩,869⟩,⟨⟨770,false⟩,908⟩,⟨⟨769,false⟩,858⟩]⟩

private def s6Step369EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step369EarlyControlZeroArena,s6Step369EarlyControlZeroPlan,s6Step369EarlyControlClassPlan,s6Step369EarlyControlFlagArena,s6Step369EarlyControlFittedArena,s6Step369EarlyControlHistoryArena,s6Step369EarlyControlSigmaArena,s6Step369EarlyControlOutputArena,s6Step369EarlyControlLog⟩

private def s6Step369CounterWork : List Wire := [858, 807, 805, 802]

private theorem s6Step369Counter_bounded : s6Step369CounterWork.toFinset⊆arenaWires := by norm_num [s6Step369CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step369HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369CounterDuring : Arena := ⟨s6Step369HeadFvAfter.live∪s6Step369CounterWork.toFinset,Finset.union_subset s6Step369HeadFvAfter.bounded s6Step369Counter_bounded⟩

private def s6Step369EntryFFresh : List Wire := []

private def s6Step369EntryFvFresh : List Wire := []

private def s6Step369EntryGFresh : List Wire := [869]

private def s6Step369EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369EntryGvAfter : Arena := s6Step369EntryGAfter

private def s6Step369EntryGvFresh : List Wire := []

private def s6Step369ExitFExtra : List Wire := [876]

private def s6Step369ExitGExtra : List Wire := [869, 908]

private def s6Step369ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369ExitGvExtra : List Wire := [888]

private def s6Step369Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369Add0Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step369Add0_bounded : s6Step369Add0Work.toFinset⊆arenaWires := by
  have h : s6Step369Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step369Add0During : Arena := ⟨s6Step369Add0Arena.live∪s6Step369Add0Work.toFinset,Finset.union_subset s6Step369Add0Arena.bounded s6Step369Add0_bounded⟩

private def s6Step369Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369Add1Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step369Add1_bounded : s6Step369Add1Work.toFinset⊆arenaWires := by
  have h : s6Step369Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step369Add1During : Arena := ⟨s6Step369Add1Arena.live∪s6Step369Add1Work.toFinset,Finset.union_subset s6Step369Add1Arena.bounded s6Step369Add1_bounded⟩

private def s6Step369F4FlagArena : Arena := ⟨s6Step369HeadFvAfter.live∪{858},Finset.union_subset s6Step369HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step369F4Plan : HmrHybridF4Plan := ⟨s6Step369F4FlagArena,[858],s6Step369Add0Arena,[807],s6Step369Add0During,s6Step369Add0Work,s6Step369Add1During,s6Step369Add1Work⟩

private def s6Step369HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 876],795⟩

private def s6Step369HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898],776⟩

private def s6Step369HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 869, 908],777⟩

private def s6Step369HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 888],775⟩

private def s6Step369FrontHead : WindowBank := ⟨s6Step369HeadFOut,s6Step369HeadGOut,s6Step369HeadFvOut,s6Step369HeadGvOut⟩

private def s6Step369EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step369EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩

private def s6Step369EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 869],777⟩

private def s6Step369EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906],775⟩

private def s6Step369FrontPair : WindowBank := ⟨s6Step369EntryFOut,s6Step369EntryGOut,s6Step369EntryFvOut,s6Step369EntryGvOut⟩

private def s6Step369FrontSigmaArena : Arena := ⟨s6Step369EntryGvAfter.live∪{823},Finset.union_subset s6Step369EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step369HeadFFresh : List Wire := [876]

private def s6Step369HeadFvFresh : List Wire := [898]

private def s6Step369HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369HeadGFresh : List Wire := [908]

private def s6Step369HeadGvFresh : List Wire := [888]

private def s6Step369FrontPlan : HmrSourceFront := ⟨s6Step369EntryGvAfter,s6Step369FrontPair,(growRow 795 s6Step369EntryFFresh ++ (growRow 777 s6Step369EntryGFresh ++ (growRow 776 s6Step369EntryFvFresh ++ (growRow 775 s6Step369EntryGvFresh ++ [])))),s6Step369FrontSigmaArena,[823],s6Step369HeadGBefore,[796],
  s6Step369HeadFvAfter,s6Step369FrontHead,(growRow 777 s6Step369HeadGFresh ++ (growRow 795 s6Step369HeadFFresh ++ (growRow 775 s6Step369HeadGvFresh ++ (growRow 776 s6Step369HeadFvFresh ++ [])))),s6Step369F4Plan,s6Step369CounterDuring,s6Step369CounterWork,s6Step369ExitGvAfter,s6Step369FrontOut,(shrinkRow 777 s6Step369ExitGExtra ++ (shrinkRow 795 s6Step369ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step369ExitGvExtra ++ []))))⟩

private def s6Step369CompletePlan : HmrEarlyStepPlan := ⟨s6Step369FrontPlan,s6Step369EarlyControlArena,s6Step369EarlyControlPlan,s6Step369CompleteMoves⟩

private theorem s6Step369Complete_apart : List.Disjoint (s6Step369CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [823, 796, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step369CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[823, 796, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step369Complete_owned : (s6Step369CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step369EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step369EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369Complete_repack : s6Step369ExitGvAfter.checkRepack s6Step369CompleteMoves=some s6Step369EarlyControlArena := by rfl

private theorem s6Step369EarlyControl_branchOwned : ([796] : List Wire).toFinset⊆s6Step369EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step369EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369EarlyControl_branch : compileHmrBranchRetirement s6Step369EarlyControlSigmaArena 796=some s6Step369EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step369EarlyControl_branchOwned
  · ext q
    simp [s6Step369EarlyControlOutputArena,s6Step369EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step369EarlyControl_classEqualityBorrow : s6Step369EarlyControlPositiveArena.checkBorrow (([823, 807] : List Wire).length-1) s6Step369EarlyControlLog.classWork=some s6Step369EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step369EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step369EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step369EarlyControlEqualityArena,s6Step369EarlyControlPositiveArena,s6Step369EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step369EarlyControl_classEqualityOwned : ([823, 807] : List Wire).toFinset⊆s6Step369EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step369EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369EarlyControl_classEquality : compileHmrEqualityLog s6Step369EarlyControlPositiveArena [823, 807] 0 s6Step369EarlyControlLog.classWork=some (s6Step369EarlyControlEqualityArena,s6Step369EarlyControlLog.classWork,s6Step369EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step369EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step369EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step369EarlyControl_classOwned : ([769, 858, 823] : List Wire).toFinset⊆s6Step369EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step369EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369EarlyControl_positiveBorrow : s6Step369EarlyControlZeroArena.checkBorrow (1) s6Step369EarlyControlLog.positiveWork=some s6Step369EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step369EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step369EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step369EarlyControlPositiveArena,s6Step369EarlyControlZeroArena,s6Step369EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step369EarlyControl_class : compileHmrSourceClassLog s6Step369EarlyControlZeroArena false 769 s6Step369EarlyControlZeroPlan.top 0 823 s6Step369EarlyControlLog.positiveWork s6Step369EarlyControlLog.classWork=some s6Step369EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step369EarlyControlClassPlan s6Step369EarlyControlZeroArena false 769 s6Step369EarlyControlZeroPlan.top 0 823
  constructor
  · decide +kernel
  · exact s6Step369EarlyControl_classOwned
  · exact s6Step369EarlyControl_positiveBorrow
  · exact s6Step369EarlyControl_classEquality

private theorem s6Step369EarlyControl_entryRecordOwned : ([796, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step369EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step369EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369EarlyControl_entrySigmaOwned : ([823, 254] : List Wire).toFinset⊆s6Step369EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step369EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369EarlyControl_fitBorrow : s6Step369EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step369EarlyControlLog.recordFresh=some s6Step369EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step369EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step369EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step369EarlyControlFittedArena,s6Step369EarlyControlFlagArena,s6Step369EarlyControlLog,arenaWires]

private theorem s6Step369EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step369EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step369EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369EarlyControl_fit : compileHmrRecordGrowLog s6Step369EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step369EarlyControlLog.recordFresh=some s6Step369EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step369EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step369EarlyControl_fitBorrow

private theorem s6Step369EarlyControl_flagsBorrow : s6Step369EarlyControlEqualityArena.checkBorrow (6) s6Step369EarlyControlLog.flagWork=some s6Step369EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step369EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step369EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step369EarlyControlFlagArena,s6Step369EarlyControlEqualityArena,s6Step369EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step369EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step369EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step369EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369EarlyControl_flags : compileHmrFlagsLog s6Step369EarlyControlClassPlan.equalityArena s6Step369EarlyControlClassPlan.equality.top 253 252 251 s6Step369EarlyControlLog.flagWork=some s6Step369EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step369EarlyControl_flagsOwned⟩
  · exact s6Step369EarlyControl_flagsBorrow

private theorem s6Step369EarlyControl_historyBorrow : s6Step369EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step369EarlyControlLog.recordFresh=some s6Step369EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step369EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step369EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step369EarlyControlHistoryArena,s6Step369EarlyControlArena,s6Step369EarlyControlLog,arenaWires]

private theorem s6Step369EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step369EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step369EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369EarlyControl_history : compileHmrRecordGrowLog s6Step369EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step369EarlyControlLog.recordFresh=some s6Step369EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step369EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step369EarlyControl_historyBorrow

private theorem s6Step369EarlyControl_sigmaOwned : ([254, 823] : List Wire).toFinset⊆s6Step369EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step369EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369EarlyControl_sigmaReleaseOwned : ([823] : List Wire).toFinset⊆s6Step369EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step369EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369EarlyControl_sigmaRelease : s6Step369EarlyControlHistoryArena.release {823} (fun _ => false)=some s6Step369EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step369EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step369EarlyControlSigmaArena,s6Step369EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step369EarlyControl_sigma : compileHmrSigmaDropLog s6Step369EarlyControlHistoryArena false 0 0 254 823 []=some s6Step369EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step369EarlyControl_sigmaOwned⟩
  · exact s6Step369EarlyControl_sigmaRelease

private theorem s6Step369EarlyControl_zeroBorrow : s6Step369EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step369EarlyControlLog.zeroWork=some s6Step369EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step369EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step369EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step369EarlyControlZeroArena,s6Step369EarlyControlArena,s6Step369EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step369EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step369EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step369EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369EarlyControl_zero : compileHmrEqualityLog s6Step369EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step369EarlyControlLog.zeroWork=some (s6Step369EarlyControlZeroArena,s6Step369EarlyControlLog.zeroWork,s6Step369EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step369EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step369EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step369EarlyControl_logged : s6Step369EarlyControlPlan.Logged s6Step369EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 823 254 253 252 251 796 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step369EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step369EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step369EarlyControl_zero
  · exact s6Step369EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step369EarlyControl_flags
  · exact s6Step369EarlyControl_fit
  · exact s6Step369EarlyControl_history
  · exact s6Step369EarlyControl_sigma
  · exact s6Step369EarlyControl_branch

private theorem s6Step369EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step369EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 823 254 253 252 251 796 60 s6Step369EarlyControlLog=some s6Step369EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step369EarlyControlPlan s6Step369EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 823 254 253 252 251 796 60 s6Step369EarlyControl_logged

private def s6Step369EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step369EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩

private def s6Step369EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],777⟩

private def s6Step369EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906],775⟩

private def s6Step369FrontBank : WindowBank := ⟨s6Step369EntryFRow,s6Step369EntryGRow,s6Step369EntryFvRow,s6Step369EntryGvRow⟩

private def s6Step369Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 876, 795]

private def s6Step369Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 869, 908, 777]

private def s6Step369Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898, 776]

private def s6Step369Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 888, 775]

private theorem s6Step369Counter_apart : Disjoint s6Step369HeadFvAfter.live s6Step369CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step369HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369Counter_borrowed : s6Step369HeadFvAfter.checkBorrow 4 s6Step369CounterWork=some s6Step369CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step369HeadFvAfter s6Step369CounterDuring s6Step369CounterWork.toFinset s6Step369Counter_bounded s6Step369Counter_apart rfl

private theorem s6Step369Counter_owned : (823::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step369HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step369HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369Counter_checked : compileHmrCounterStepLog s6Step369HeadFvAfter true 823 [774, 773, 772, 771, 770, 769] s6Step369CounterWork=some s6Step369CounterDuring := by
  have owned : ∀q∈823::[774, 773, 772, 771, 770, 769],q∈s6Step369HeadFvAfter.live := fun q hq => s6Step369Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step369Counter_borrowed

private def s6Step369EntryFAfter : Arena := s6Step369EntryFBefore

private theorem s6Step369EntryBank_incomingDistinct : ([s6Step369EntryFRow,s6Step369EntryGRow,s6Step369EntryFvRow,s6Step369EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369EntryF_Incoming : rowsOwned s6Step369EntryFBefore [s6Step369EntryFRow,s6Step369EntryGRow,s6Step369EntryFvRow,s6Step369EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step369EntryFRow,s6Step369EntryGRow,s6Step369EntryFvRow,s6Step369EntryGvRow] 0 s6Step369EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step369EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step369EntryBank_outgoingOwned : rowsOwned s6Step369EntryGvAfter [s6Step369EntryFOut,s6Step369EntryGOut,s6Step369EntryFvOut,s6Step369EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step369EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step369EntryF_Outgoing : rowsOwned s6Step369EntryGvAfter [s6Step369EntryFOut,s6Step369EntryGOut,s6Step369EntryFvOut,s6Step369EntryGvOut] :=
  hmrRows_owned_drop s6Step369EntryGvAfter [s6Step369EntryFOut,s6Step369EntryGOut,s6Step369EntryFvOut,s6Step369EntryGvOut] 0 s6Step369EntryBank_outgoingOwned

private theorem s6Step369EntryF_distinct : (s6Step369EntryFRow.sign::s6Step369EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369EntryF_owned : (s6Step369EntryFRow.sign::s6Step369EntryFRow.payload).toFinset⊆s6Step369EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step369EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369EntryF_reserved : s6Step369EntryFBefore.reserve s6Step369EntryFFresh.toFinset=some s6Step369EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step369EntryFFresh,arenaWires]
  · norm_num [s6Step369EntryFBefore,s6Step369EntryFFresh,arenaWires]
  · simp only [s6Step369EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step369EntryF_checked : planRowResizeLog s6Step369EntryFBefore s6Step369EntryFRow 87 s6Step369EntryFFresh=
    some (s6Step369EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩,growRow 795 s6Step369EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step369EntryFBefore s6Step369EntryFAfter s6Step369EntryFRow 87 s6Step369EntryFFresh
    s6Step369EntryF_distinct s6Step369EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step369EntryF_reserved
  have rowEq : WindowRow.mk (s6Step369EntryFRow.payload++s6Step369EntryFFresh) s6Step369EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step369EntryFvAfter : Arena := s6Step369EntryGAfter

private def s6Step369EntryFvBefore : Arena := s6Step369EntryGAfter

private theorem s6Step369EntryFv_Incoming : rowsOwned s6Step369EntryFvBefore [s6Step369EntryFvRow,s6Step369EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step369EntryFRow,s6Step369EntryGRow,s6Step369EntryFvRow,s6Step369EntryGvRow] 2 s6Step369EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step369EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step369EntryFv_Outgoing : rowsOwned s6Step369EntryGvAfter [s6Step369EntryFvOut,s6Step369EntryGvOut] :=
  hmrRows_owned_drop s6Step369EntryGvAfter [s6Step369EntryFOut,s6Step369EntryGOut,s6Step369EntryFvOut,s6Step369EntryGvOut] 2 s6Step369EntryBank_outgoingOwned

private theorem s6Step369EntryFv_distinct : (s6Step369EntryFvRow.sign::s6Step369EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369EntryFv_owned : (s6Step369EntryFvRow.sign::s6Step369EntryFvRow.payload).toFinset⊆s6Step369EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step369EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369EntryFv_reserved : s6Step369EntryFvBefore.reserve s6Step369EntryFvFresh.toFinset=some s6Step369EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step369EntryFvFresh,arenaWires]
  · norm_num [s6Step369EntryFvBefore,s6Step369EntryGAfter,s6Step369EntryFvFresh,arenaWires]
  · simp only [s6Step369EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step369EntryFv_checked : planRowResizeLog s6Step369EntryFvBefore s6Step369EntryFvRow 200 s6Step369EntryFvFresh=
    some (s6Step369EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩,growRow 776 s6Step369EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step369EntryFvBefore s6Step369EntryFvAfter s6Step369EntryFvRow 200 s6Step369EntryFvFresh
    s6Step369EntryFv_distinct s6Step369EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step369EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step369EntryFvRow.payload++s6Step369EntryFvFresh) s6Step369EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step369EntryGBefore : Arena := s6Step369EntryFBefore

private theorem s6Step369EntryG_Incoming : rowsOwned s6Step369EntryGBefore [s6Step369EntryGRow,s6Step369EntryFvRow,s6Step369EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step369EntryFRow,s6Step369EntryGRow,s6Step369EntryFvRow,s6Step369EntryGvRow] 1 s6Step369EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step369EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step369EntryG_Outgoing : rowsOwned s6Step369EntryGvAfter [s6Step369EntryGOut,s6Step369EntryFvOut,s6Step369EntryGvOut] :=
  hmrRows_owned_drop s6Step369EntryGvAfter [s6Step369EntryFOut,s6Step369EntryGOut,s6Step369EntryFvOut,s6Step369EntryGvOut] 1 s6Step369EntryBank_outgoingOwned

private theorem s6Step369EntryG_distinct : (s6Step369EntryGRow.sign::s6Step369EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369EntryG_owned : (s6Step369EntryGRow.sign::s6Step369EntryGRow.payload).toFinset⊆s6Step369EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step369EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369EntryG_reserved : s6Step369EntryGBefore.reserve s6Step369EntryGFresh.toFinset=some s6Step369EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step369EntryGFresh,arenaWires]
  · norm_num [s6Step369EntryGBefore,s6Step369EntryFBefore,s6Step369EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step369EntryGAfter,s6Step369EntryGBefore,s6Step369EntryFBefore,s6Step369EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step369EntryG_checked : planRowResizeLog s6Step369EntryGBefore s6Step369EntryGRow 87 s6Step369EntryGFresh=
    some (s6Step369EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 869],777⟩,growRow 777 s6Step369EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step369EntryGBefore s6Step369EntryGAfter s6Step369EntryGRow 87 s6Step369EntryGFresh
    s6Step369EntryG_distinct s6Step369EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step369EntryG_reserved
  have rowEq : WindowRow.mk (s6Step369EntryGRow.payload++s6Step369EntryGFresh) s6Step369EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 869],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step369EntryGvBefore : Arena := s6Step369EntryGAfter

private theorem s6Step369EntryGv_Incoming : rowsOwned s6Step369EntryGvBefore [s6Step369EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step369EntryFRow,s6Step369EntryGRow,s6Step369EntryFvRow,s6Step369EntryGvRow] 3 s6Step369EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step369EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step369EntryGv_Outgoing : rowsOwned s6Step369EntryGvAfter [s6Step369EntryGvOut] :=
  hmrRows_owned_drop s6Step369EntryGvAfter [s6Step369EntryFOut,s6Step369EntryGOut,s6Step369EntryFvOut,s6Step369EntryGvOut] 3 s6Step369EntryBank_outgoingOwned

private theorem s6Step369EntryGv_distinct : (s6Step369EntryGvRow.sign::s6Step369EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369EntryGv_owned : (s6Step369EntryGvRow.sign::s6Step369EntryGvRow.payload).toFinset⊆s6Step369EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step369EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369EntryGv_reserved : s6Step369EntryGvBefore.reserve s6Step369EntryGvFresh.toFinset=some s6Step369EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step369EntryGvFresh,arenaWires]
  · norm_num [s6Step369EntryGvBefore,s6Step369EntryGAfter,s6Step369EntryGvFresh,arenaWires]
  · simp only [s6Step369EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step369EntryGv_checked : planRowResizeLog s6Step369EntryGvBefore s6Step369EntryGvRow 200 s6Step369EntryGvFresh=
    some (s6Step369EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906],775⟩,growRow 775 s6Step369EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step369EntryGvBefore s6Step369EntryGvAfter s6Step369EntryGvRow 200 s6Step369EntryGvFresh
    s6Step369EntryGv_distinct s6Step369EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step369EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step369EntryGvRow.payload++s6Step369EntryGvFresh) s6Step369EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step369EntryBank_rows : planWindowRowsLog s6Step369EntryFBefore [(s6Step369EntryFRow,87),(s6Step369EntryGRow,87),(s6Step369EntryFvRow,200),(s6Step369EntryGvRow,200)] [s6Step369EntryFFresh,s6Step369EntryGFresh,s6Step369EntryFvFresh,s6Step369EntryGvFresh]=
    some (s6Step369EntryGvAfter,[s6Step369EntryFOut,s6Step369EntryGOut,s6Step369EntryFvOut,s6Step369EntryGvOut],(growRow 795 s6Step369EntryFFresh ++ (growRow 777 s6Step369EntryGFresh ++ (growRow 776 s6Step369EntryFvFresh ++ (growRow 775 s6Step369EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step369EntryGvAfter [] []=some (s6Step369EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step369EntryGvBefore s6Step369EntryGvAfter s6Step369EntryGvAfter
    s6Step369EntryGvRow s6Step369EntryGvOut 200 s6Step369EntryGvFresh [] [] []
    (growRow 775 s6Step369EntryGvFresh) ([]) s6Step369EntryGv_Incoming s6Step369EntryGv_checked h4 s6Step369EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step369EntryFvBefore s6Step369EntryFvAfter s6Step369EntryGvAfter
    s6Step369EntryFvRow s6Step369EntryFvOut 200 s6Step369EntryFvFresh [(s6Step369EntryGvRow,200)] [s6Step369EntryGvFresh] [s6Step369EntryGvOut]
    (growRow 776 s6Step369EntryFvFresh) ((growRow 775 s6Step369EntryGvFresh ++ [])) s6Step369EntryFv_Incoming s6Step369EntryFv_checked h3 s6Step369EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step369EntryGBefore s6Step369EntryGAfter s6Step369EntryGvAfter
    s6Step369EntryGRow s6Step369EntryGOut 87 s6Step369EntryGFresh [(s6Step369EntryFvRow,200),(s6Step369EntryGvRow,200)] [s6Step369EntryFvFresh,s6Step369EntryGvFresh] [s6Step369EntryFvOut,s6Step369EntryGvOut]
    (growRow 777 s6Step369EntryGFresh) ((growRow 776 s6Step369EntryFvFresh ++ (growRow 775 s6Step369EntryGvFresh ++ []))) s6Step369EntryG_Incoming s6Step369EntryG_checked h2 s6Step369EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step369EntryFBefore s6Step369EntryFAfter s6Step369EntryGvAfter
    s6Step369EntryFRow s6Step369EntryFOut 87 s6Step369EntryFFresh [(s6Step369EntryGRow,87),(s6Step369EntryFvRow,200),(s6Step369EntryGvRow,200)] [s6Step369EntryGFresh,s6Step369EntryFvFresh,s6Step369EntryGvFresh] [s6Step369EntryGOut,s6Step369EntryFvOut,s6Step369EntryGvOut]
    (growRow 795 s6Step369EntryFFresh) ((growRow 777 s6Step369EntryGFresh ++ (growRow 776 s6Step369EntryFvFresh ++ (growRow 775 s6Step369EntryGvFresh ++ [])))) s6Step369EntryF_Incoming s6Step369EntryF_checked h1 s6Step369EntryF_Outgoing
  exact h0

private theorem s6Step369EntryBank_checked : compileHmrBankResizeLog .entry s6Step369EntryFBefore ⟨s6Step369EntryFRow,s6Step369EntryGRow,s6Step369EntryFvRow,s6Step369EntryGvRow⟩ ⟨87,87,200,200⟩ [s6Step369EntryFFresh,s6Step369EntryGFresh,s6Step369EntryFvFresh,s6Step369EntryGvFresh]=
    some (s6Step369EntryGvAfter,⟨s6Step369EntryFOut,s6Step369EntryGOut,s6Step369EntryFvOut,s6Step369EntryGvOut⟩,(growRow 795 s6Step369EntryFFresh ++ (growRow 777 s6Step369EntryGFresh ++ (growRow 776 s6Step369EntryFvFresh ++ (growRow 775 s6Step369EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step369EntryBank_rows]
  rfl

private def s6Step369ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369ExitFBefore : Arena := s6Step369ExitGAfter

private def s6Step369ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 876],795⟩

private def s6Step369ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898],776⟩

private def s6Step369ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 869, 908],777⟩

private def s6Step369ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 888],775⟩

private theorem s6Step369ExitBank_incomingDistinct : ([s6Step369ExitGRow,s6Step369ExitFRow,s6Step369ExitFvRow,s6Step369ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369ExitF_Incoming : rowsOwned s6Step369ExitFBefore [s6Step369ExitFRow,s6Step369ExitFvRow,s6Step369ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step369ExitGRow,s6Step369ExitFRow,s6Step369ExitFvRow,s6Step369ExitGvRow] 1 s6Step369ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step369ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step369ExitBank_outgoingOwned : rowsOwned s6Step369ExitGvAfter [s6Step369ExitGOut,s6Step369ExitFOut,s6Step369ExitFvOut,s6Step369ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step369ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step369ExitF_Outgoing : rowsOwned s6Step369ExitGvAfter [s6Step369ExitFOut,s6Step369ExitFvOut,s6Step369ExitGvOut] :=
  hmrRows_owned_drop s6Step369ExitGvAfter [s6Step369ExitGOut,s6Step369ExitFOut,s6Step369ExitFvOut,s6Step369ExitGvOut] 1 s6Step369ExitBank_outgoingOwned

private theorem s6Step369ExitF_distinct : (s6Step369ExitFRow.sign::s6Step369ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369ExitF_owned : (s6Step369ExitFRow.sign::s6Step369ExitFRow.payload).toFinset⊆s6Step369ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step369ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369ExitF_retired : s6Step369ExitFBefore.retireSet s6Step369ExitFExtra.toFinset=s6Step369ExitFAfter := by
  unfold Arena.retireSet s6Step369ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step369ExitFBefore,s6Step369ExitGAfter,s6Step369ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step369ExitF_checked : planRowResizeLog s6Step369ExitFBefore s6Step369ExitFRow 87 []=
    some (s6Step369ExitFAfter,s6Step369ExitFOut,shrinkRow 795 s6Step369ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step369ExitFBefore s6Step369ExitFRow 87 s6Step369ExitF_distinct s6Step369ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step369ExitFRow.payload.take 87) s6Step369ExitFRow.sign=s6Step369ExitFOut := by decide +kernel
  have hi : s6Step369ExitFRow.payload.drop 87=s6Step369ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step369ExitF_retired] at result
  exact result

private def s6Step369ExitFvAfter : Arena := s6Step369ExitFAfter

private def s6Step369ExitFvBefore : Arena := s6Step369ExitFAfter

private theorem s6Step369ExitFv_Incoming : rowsOwned s6Step369ExitFvBefore [s6Step369ExitFvRow,s6Step369ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step369ExitGRow,s6Step369ExitFRow,s6Step369ExitFvRow,s6Step369ExitGvRow] 2 s6Step369ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step369ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step369ExitFv_Outgoing : rowsOwned s6Step369ExitGvAfter [s6Step369ExitFvOut,s6Step369ExitGvOut] :=
  hmrRows_owned_drop s6Step369ExitGvAfter [s6Step369ExitGOut,s6Step369ExitFOut,s6Step369ExitFvOut,s6Step369ExitGvOut] 2 s6Step369ExitBank_outgoingOwned

private theorem s6Step369ExitFv_distinct : (s6Step369ExitFvRow.sign::s6Step369ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369ExitFv_owned : (s6Step369ExitFvRow.sign::s6Step369ExitFvRow.payload).toFinset⊆s6Step369ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step369ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369ExitFv_reserved : s6Step369ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step369ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step369ExitFv_checked : planRowResizeLog s6Step369ExitFvBefore s6Step369ExitFvRow 201 []=
    some (s6Step369ExitFvAfter,s6Step369ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step369ExitFvBefore s6Step369ExitFvAfter s6Step369ExitFvRow 201 []
    s6Step369ExitFv_distinct s6Step369ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step369ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step369ExitFvRow.payload++[]) s6Step369ExitFvRow.sign=s6Step369ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step369ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step369ExitG_Incoming : rowsOwned s6Step369ExitGBefore [s6Step369ExitGRow,s6Step369ExitFRow,s6Step369ExitFvRow,s6Step369ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step369ExitGRow,s6Step369ExitFRow,s6Step369ExitFvRow,s6Step369ExitGvRow] 0 s6Step369ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step369ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step369ExitG_Outgoing : rowsOwned s6Step369ExitGvAfter [s6Step369ExitGOut,s6Step369ExitFOut,s6Step369ExitFvOut,s6Step369ExitGvOut] :=
  hmrRows_owned_drop s6Step369ExitGvAfter [s6Step369ExitGOut,s6Step369ExitFOut,s6Step369ExitFvOut,s6Step369ExitGvOut] 0 s6Step369ExitBank_outgoingOwned

private theorem s6Step369ExitG_distinct : (s6Step369ExitGRow.sign::s6Step369ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369ExitG_owned : (s6Step369ExitGRow.sign::s6Step369ExitGRow.payload).toFinset⊆s6Step369ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step369ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369ExitG_retired : s6Step369ExitGBefore.retireSet s6Step369ExitGExtra.toFinset=s6Step369ExitGAfter := by
  unfold Arena.retireSet s6Step369ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step369ExitGBefore,s6Step369ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step369ExitG_checked : planRowResizeLog s6Step369ExitGBefore s6Step369ExitGRow 86 []=
    some (s6Step369ExitGAfter,s6Step369ExitGOut,shrinkRow 777 s6Step369ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step369ExitGBefore s6Step369ExitGRow 86 s6Step369ExitG_distinct s6Step369ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step369ExitGRow.payload.take 86) s6Step369ExitGRow.sign=s6Step369ExitGOut := by decide +kernel
  have hi : s6Step369ExitGRow.payload.drop 86=s6Step369ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step369ExitG_retired] at result
  exact result

private def s6Step369ExitGvBefore : Arena := s6Step369ExitFAfter

private theorem s6Step369ExitGv_Incoming : rowsOwned s6Step369ExitGvBefore [s6Step369ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step369ExitGRow,s6Step369ExitFRow,s6Step369ExitFvRow,s6Step369ExitGvRow] 3 s6Step369ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step369ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step369ExitGv_Outgoing : rowsOwned s6Step369ExitGvAfter [s6Step369ExitGvOut] :=
  hmrRows_owned_drop s6Step369ExitGvAfter [s6Step369ExitGOut,s6Step369ExitFOut,s6Step369ExitFvOut,s6Step369ExitGvOut] 3 s6Step369ExitBank_outgoingOwned

private theorem s6Step369ExitGv_distinct : (s6Step369ExitGvRow.sign::s6Step369ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369ExitGv_owned : (s6Step369ExitGvRow.sign::s6Step369ExitGvRow.payload).toFinset⊆s6Step369ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step369ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369ExitGv_retired : s6Step369ExitGvBefore.retireSet s6Step369ExitGvExtra.toFinset=s6Step369ExitGvAfter := by
  unfold Arena.retireSet s6Step369ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step369ExitGvBefore,s6Step369ExitFAfter,s6Step369ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step369ExitGv_checked : planRowResizeLog s6Step369ExitGvBefore s6Step369ExitGvRow 200 []=
    some (s6Step369ExitGvAfter,s6Step369ExitGvOut,shrinkRow 775 s6Step369ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step369ExitGvBefore s6Step369ExitGvRow 200 s6Step369ExitGv_distinct s6Step369ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step369ExitGvRow.payload.take 200) s6Step369ExitGvRow.sign=s6Step369ExitGvOut := by decide +kernel
  have hi : s6Step369ExitGvRow.payload.drop 200=s6Step369ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step369ExitGv_retired] at result
  exact result

private theorem s6Step369ExitBank_rows : planWindowRowsLog s6Step369ExitGBefore [(s6Step369ExitGRow,86),(s6Step369ExitFRow,87),(s6Step369ExitFvRow,201),(s6Step369ExitGvRow,200)] [[],[],[],[]]=
    some (s6Step369ExitGvAfter,[s6Step369ExitGOut,s6Step369ExitFOut,s6Step369ExitFvOut,s6Step369ExitGvOut],(shrinkRow 777 s6Step369ExitGExtra ++ (shrinkRow 795 s6Step369ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step369ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step369ExitGvAfter [] []=some (s6Step369ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step369ExitGvBefore s6Step369ExitGvAfter s6Step369ExitGvAfter
    s6Step369ExitGvRow s6Step369ExitGvOut 200 [] [] [] []
    (shrinkRow 775 s6Step369ExitGvExtra) ([]) s6Step369ExitGv_Incoming s6Step369ExitGv_checked h4 s6Step369ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step369ExitFvBefore s6Step369ExitFvAfter s6Step369ExitGvAfter
    s6Step369ExitFvRow s6Step369ExitFvOut 201 [] [(s6Step369ExitGvRow,200)] [[]] [s6Step369ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step369ExitGvExtra ++ [])) s6Step369ExitFv_Incoming s6Step369ExitFv_checked h3 s6Step369ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step369ExitFBefore s6Step369ExitFAfter s6Step369ExitGvAfter
    s6Step369ExitFRow s6Step369ExitFOut 87 [] [(s6Step369ExitFvRow,201),(s6Step369ExitGvRow,200)] [[],[]] [s6Step369ExitFvOut,s6Step369ExitGvOut]
    (shrinkRow 795 s6Step369ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step369ExitGvExtra ++ []))) s6Step369ExitF_Incoming s6Step369ExitF_checked h2 s6Step369ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step369ExitGBefore s6Step369ExitGAfter s6Step369ExitGvAfter
    s6Step369ExitGRow s6Step369ExitGOut 86 [] [(s6Step369ExitFRow,87),(s6Step369ExitFvRow,201),(s6Step369ExitGvRow,200)] [[],[],[]] [s6Step369ExitFOut,s6Step369ExitFvOut,s6Step369ExitGvOut]
    (shrinkRow 777 s6Step369ExitGExtra) ((shrinkRow 795 s6Step369ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step369ExitGvExtra ++ [])))) s6Step369ExitG_Incoming s6Step369ExitG_checked h1 s6Step369ExitG_Outgoing
  exact h0

private theorem s6Step369ExitBank_checked : compileHmrBankResizeLog .exit s6Step369ExitGBefore ⟨s6Step369ExitFRow,s6Step369ExitGRow,s6Step369ExitFvRow,s6Step369ExitGvRow⟩ ⟨87,86,201,200⟩ [[],[],[],[]]=
    some (s6Step369ExitGvAfter,⟨s6Step369ExitFOut,s6Step369ExitGOut,s6Step369ExitFvOut,s6Step369ExitGvOut⟩,(shrinkRow 777 s6Step369ExitGExtra ++ (shrinkRow 795 s6Step369ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step369ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step369ExitBank_rows]
  rfl

private theorem s6Step369Add0_apart : Disjoint s6Step369Add0Arena.live s6Step369Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step369Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369Add0_card : s6Step369Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step369Add0_borrowed : s6Step369Add0Arena.checkBorrow (hmrHybridCount s6Step369Add0Arena s6Step369Add0B.length) s6Step369Add0Work=some s6Step369Add0During := by
  have len : s6Step369Add0Work.length=hmrHybridCount s6Step369Add0Arena s6Step369Add0B.length := by
    rw [hmrHybridCount,s6Step369Add0_card]
    decide +kernel
  have nd : s6Step369Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step369Add0Arena s6Step369Add0During s6Step369Add0Work.toFinset s6Step369Add0_bounded s6Step369Add0_apart rfl

private theorem s6Step369Add0_distinct : (858::796::807::(s6Step369Add0A++s6Step369Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369Add0_owned : (858::796::807::(s6Step369Add0A++s6Step369Add0B)).toFinset⊆s6Step369Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step369Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369Add0_checked : compileHmrHybridCinLog s6Step369Add0Arena 796 858 807 s6Step369Add0A s6Step369Add0B s6Step369Add0Work=some s6Step369Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step369Add0Arena s6Step369Add0During 796 858 807 s6Step369Add0A s6Step369Add0B s6Step369Add0Work
    (by decide +kernel) (by decide +kernel) s6Step369Add0_distinct
    (fun q hq => s6Step369Add0_owned (List.mem_toFinset.mpr hq)) s6Step369Add0_borrowed

private theorem s6Step369Add1_apart : Disjoint s6Step369Add1Arena.live s6Step369Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step369Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369Add1_card : s6Step369Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step369Add1_borrowed : s6Step369Add1Arena.checkBorrow (hmrHybridCount s6Step369Add1Arena s6Step369Add1B.length) s6Step369Add1Work=some s6Step369Add1During := by
  have len : s6Step369Add1Work.length=hmrHybridCount s6Step369Add1Arena s6Step369Add1B.length := by
    rw [hmrHybridCount,s6Step369Add1_card]
    decide +kernel
  have nd : s6Step369Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step369Add1Arena s6Step369Add1During s6Step369Add1Work.toFinset s6Step369Add1_bounded s6Step369Add1_apart rfl

private theorem s6Step369Add1_distinct : (858::796::807::(s6Step369Add1A++s6Step369Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369Add1_owned : (858::796::807::(s6Step369Add1A++s6Step369Add1B)).toFinset⊆s6Step369Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step369Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369Add1_checked : compileHmrHybridCinLog s6Step369Add1Arena 796 858 807 s6Step369Add1A s6Step369Add1B s6Step369Add1Work=some s6Step369Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step369Add1Arena s6Step369Add1During 796 858 807 s6Step369Add1A s6Step369Add1B s6Step369Add1Work
    (by decide +kernel) (by decide +kernel) s6Step369Add1_distinct
    (fun q hq => s6Step369Add1_owned (List.mem_toFinset.mpr hq)) s6Step369Add1_borrowed

private theorem s6Step369F4_apart : Disjoint (s6Step369Add0A++s6Step369Add0B).toFinset (s6Step369Add1A++s6Step369Add1B).toFinset := by
  have nd : ((s6Step369Add0A++s6Step369Add0B)++(s6Step369Add1A++s6Step369Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step369F4_carry : s6Step369F4FlagArena.checkBorrow 1 [807]=some s6Step369Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step369F4FlagArena,s6Step369HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step369F4FlagArena,s6Step369HeadFvAfter,s6Step369Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step369F4_distinct : (823::796::858::807::((s6Step369Add0A++s6Step369Add1A)++(s6Step369Add0B++s6Step369Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369F4_flag : s6Step369HeadFvAfter.checkBorrow 1 [858]=some s6Step369F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step369HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step369F4_owned : (823::796::((s6Step369Add0A++s6Step369Add1A)++(s6Step369Add0B++s6Step369Add1B))).toFinset⊆s6Step369HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step369HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369F4_checked : compileHmrHybridF4Log s6Step369HeadFvAfter 823 796 s6Step369Add0A s6Step369Add0B s6Step369Add1A s6Step369Add1B [858] [807] s6Step369Add0Work s6Step369Add1Work=some s6Step369F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step369HeadFvAfter s6Step369F4FlagArena s6Step369Add0Arena s6Step369Add0During s6Step369Add1During 823 796
    s6Step369Add0A s6Step369Add0B s6Step369Add1A s6Step369Add1B [858] [807] s6Step369Add0Work s6Step369Add1Work
    (fun q hq => s6Step369F4_owned (List.mem_toFinset.mpr hq)) s6Step369F4_flag s6Step369F4_carry
    s6Step369F4_distinct s6Step369F4_apart s6Step369Add0_checked s6Step369Add1_checked

private theorem s6Step369Front_branch : s6Step369FrontSigmaArena.checkBorrow 1 [796]=some s6Step369HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step369FrontSigmaArena,s6Step369EntryGvAfter,s6Step369EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step369FrontSigmaArena,s6Step369EntryGvAfter,s6Step369EntryGAfter,s6Step369HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step369Front_entry : HmrFrontEntryValid s6Step369EntryFBefore s6Step369FrontBank 87 200 ⟨87,86,201,200⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step369FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step369EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step369EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step369FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step369Front_sigma : s6Step369EntryGvAfter.checkBorrow 1 [823]=some s6Step369FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step369EntryGvAfter,s6Step369EntryGAfter,arenaWires]
  · rfl

private def s6Step369HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369HeadFBefore : Arena := s6Step369HeadGAfter

private def s6Step369HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342],795⟩

private def s6Step369HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892],776⟩

private def s6Step369HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 869],777⟩

private def s6Step369HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906],775⟩

private theorem s6Step369HeadBank_incomingDistinct : ([s6Step369HeadGRow,s6Step369HeadFRow,s6Step369HeadGvRow,s6Step369HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369HeadF_Incoming : rowsOwned s6Step369HeadFBefore [s6Step369HeadFRow,s6Step369HeadGvRow,s6Step369HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step369HeadGRow,s6Step369HeadFRow,s6Step369HeadGvRow,s6Step369HeadFvRow] 1 s6Step369HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step369HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step369HeadBank_outgoingOwned : rowsOwned s6Step369HeadFvAfter [s6Step369HeadGOut,s6Step369HeadFOut,s6Step369HeadGvOut,s6Step369HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step369HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step369HeadF_Outgoing : rowsOwned s6Step369HeadFvAfter [s6Step369HeadFOut,s6Step369HeadGvOut,s6Step369HeadFvOut] :=
  hmrRows_owned_drop s6Step369HeadFvAfter [s6Step369HeadGOut,s6Step369HeadFOut,s6Step369HeadGvOut,s6Step369HeadFvOut] 1 s6Step369HeadBank_outgoingOwned

private theorem s6Step369HeadF_distinct : (s6Step369HeadFRow.sign::s6Step369HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369HeadF_owned : (s6Step369HeadFRow.sign::s6Step369HeadFRow.payload).toFinset⊆s6Step369HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step369HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369HeadF_reserved : s6Step369HeadFBefore.reserve s6Step369HeadFFresh.toFinset=some s6Step369HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step369HeadFFresh,arenaWires]
  · norm_num [s6Step369HeadFBefore,s6Step369HeadGAfter,s6Step369HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step369HeadFAfter,s6Step369HeadFBefore,s6Step369HeadGAfter,s6Step369HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step369HeadF_checked : planRowResizeLog s6Step369HeadFBefore s6Step369HeadFRow 88 s6Step369HeadFFresh=
    some (s6Step369HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 876],795⟩,growRow 795 s6Step369HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step369HeadFBefore s6Step369HeadFAfter s6Step369HeadFRow 88 s6Step369HeadFFresh
    s6Step369HeadF_distinct s6Step369HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step369HeadF_reserved
  have rowEq : WindowRow.mk (s6Step369HeadFRow.payload++s6Step369HeadFFresh) s6Step369HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 876],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step369HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step369HeadFvBefore : Arena := s6Step369HeadGvAfter

private theorem s6Step369HeadFv_Incoming : rowsOwned s6Step369HeadFvBefore [s6Step369HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step369HeadGRow,s6Step369HeadFRow,s6Step369HeadGvRow,s6Step369HeadFvRow] 3 s6Step369HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step369HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step369HeadFv_Outgoing : rowsOwned s6Step369HeadFvAfter [s6Step369HeadFvOut] :=
  hmrRows_owned_drop s6Step369HeadFvAfter [s6Step369HeadGOut,s6Step369HeadFOut,s6Step369HeadGvOut,s6Step369HeadFvOut] 3 s6Step369HeadBank_outgoingOwned

private theorem s6Step369HeadFv_distinct : (s6Step369HeadFvRow.sign::s6Step369HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369HeadFv_owned : (s6Step369HeadFvRow.sign::s6Step369HeadFvRow.payload).toFinset⊆s6Step369HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step369HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369HeadFv_reserved : s6Step369HeadFvBefore.reserve s6Step369HeadFvFresh.toFinset=some s6Step369HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step369HeadFvFresh,arenaWires]
  · norm_num [s6Step369HeadFvBefore,s6Step369HeadGvAfter,s6Step369HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step369HeadFvAfter,s6Step369HeadFvBefore,s6Step369HeadGvAfter,s6Step369HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step369HeadFv_checked : planRowResizeLog s6Step369HeadFvBefore s6Step369HeadFvRow 201 s6Step369HeadFvFresh=
    some (s6Step369HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898],776⟩,growRow 776 s6Step369HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step369HeadFvBefore s6Step369HeadFvAfter s6Step369HeadFvRow 201 s6Step369HeadFvFresh
    s6Step369HeadFv_distinct s6Step369HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step369HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step369HeadFvRow.payload++s6Step369HeadFvFresh) s6Step369HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 892, 898],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step369HeadG_Incoming : rowsOwned s6Step369HeadGBefore [s6Step369HeadGRow,s6Step369HeadFRow,s6Step369HeadGvRow,s6Step369HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step369HeadGRow,s6Step369HeadFRow,s6Step369HeadGvRow,s6Step369HeadFvRow] 0 s6Step369HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step369HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step369HeadG_Outgoing : rowsOwned s6Step369HeadFvAfter [s6Step369HeadGOut,s6Step369HeadFOut,s6Step369HeadGvOut,s6Step369HeadFvOut] :=
  hmrRows_owned_drop s6Step369HeadFvAfter [s6Step369HeadGOut,s6Step369HeadFOut,s6Step369HeadGvOut,s6Step369HeadFvOut] 0 s6Step369HeadBank_outgoingOwned

private theorem s6Step369HeadG_distinct : (s6Step369HeadGRow.sign::s6Step369HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369HeadG_owned : (s6Step369HeadGRow.sign::s6Step369HeadGRow.payload).toFinset⊆s6Step369HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step369HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369HeadG_reserved : s6Step369HeadGBefore.reserve s6Step369HeadGFresh.toFinset=some s6Step369HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step369HeadGFresh,arenaWires]
  · norm_num [s6Step369HeadGBefore,s6Step369HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step369HeadGAfter,s6Step369HeadGBefore,s6Step369HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step369HeadG_checked : planRowResizeLog s6Step369HeadGBefore s6Step369HeadGRow 88 s6Step369HeadGFresh=
    some (s6Step369HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 869, 908],777⟩,growRow 777 s6Step369HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step369HeadGBefore s6Step369HeadGAfter s6Step369HeadGRow 88 s6Step369HeadGFresh
    s6Step369HeadG_distinct s6Step369HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step369HeadG_reserved
  have rowEq : WindowRow.mk (s6Step369HeadGRow.payload++s6Step369HeadGFresh) s6Step369HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 869, 908],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step369HeadGvBefore : Arena := s6Step369HeadFAfter

private theorem s6Step369HeadGv_Incoming : rowsOwned s6Step369HeadGvBefore [s6Step369HeadGvRow,s6Step369HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step369HeadGRow,s6Step369HeadFRow,s6Step369HeadGvRow,s6Step369HeadFvRow] 2 s6Step369HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step369HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step369HeadGv_Outgoing : rowsOwned s6Step369HeadFvAfter [s6Step369HeadGvOut,s6Step369HeadFvOut] :=
  hmrRows_owned_drop s6Step369HeadFvAfter [s6Step369HeadGOut,s6Step369HeadFOut,s6Step369HeadGvOut,s6Step369HeadFvOut] 2 s6Step369HeadBank_outgoingOwned

private theorem s6Step369HeadGv_distinct : (s6Step369HeadGvRow.sign::s6Step369HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step369HeadGv_owned : (s6Step369HeadGvRow.sign::s6Step369HeadGvRow.payload).toFinset⊆s6Step369HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step369HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step369HeadGv_reserved : s6Step369HeadGvBefore.reserve s6Step369HeadGvFresh.toFinset=some s6Step369HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step369HeadGvFresh,arenaWires]
  · norm_num [s6Step369HeadGvBefore,s6Step369HeadFAfter,s6Step369HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step369HeadGvAfter,s6Step369HeadGvBefore,s6Step369HeadFAfter,s6Step369HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step369HeadGv_checked : planRowResizeLog s6Step369HeadGvBefore s6Step369HeadGvRow 201 s6Step369HeadGvFresh=
    some (s6Step369HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 888],775⟩,growRow 775 s6Step369HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step369HeadGvBefore s6Step369HeadGvAfter s6Step369HeadGvRow 201 s6Step369HeadGvFresh
    s6Step369HeadGv_distinct s6Step369HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step369HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step369HeadGvRow.payload++s6Step369HeadGvFresh) s6Step369HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 886, 906, 888],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step369HeadBank_rows : planWindowRowsLog s6Step369HeadGBefore [(s6Step369HeadGRow,88),(s6Step369HeadFRow,88),(s6Step369HeadGvRow,201),(s6Step369HeadFvRow,201)] [s6Step369HeadGFresh,s6Step369HeadFFresh,s6Step369HeadGvFresh,s6Step369HeadFvFresh]=
    some (s6Step369HeadFvAfter,[s6Step369HeadGOut,s6Step369HeadFOut,s6Step369HeadGvOut,s6Step369HeadFvOut],(growRow 777 s6Step369HeadGFresh ++ (growRow 795 s6Step369HeadFFresh ++ (growRow 775 s6Step369HeadGvFresh ++ (growRow 776 s6Step369HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step369HeadFvAfter [] []=some (s6Step369HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step369HeadFvBefore s6Step369HeadFvAfter s6Step369HeadFvAfter
    s6Step369HeadFvRow s6Step369HeadFvOut 201 s6Step369HeadFvFresh [] [] []
    (growRow 776 s6Step369HeadFvFresh) ([]) s6Step369HeadFv_Incoming s6Step369HeadFv_checked h4 s6Step369HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step369HeadGvBefore s6Step369HeadGvAfter s6Step369HeadFvAfter
    s6Step369HeadGvRow s6Step369HeadGvOut 201 s6Step369HeadGvFresh [(s6Step369HeadFvRow,201)] [s6Step369HeadFvFresh] [s6Step369HeadFvOut]
    (growRow 775 s6Step369HeadGvFresh) ((growRow 776 s6Step369HeadFvFresh ++ [])) s6Step369HeadGv_Incoming s6Step369HeadGv_checked h3 s6Step369HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step369HeadFBefore s6Step369HeadFAfter s6Step369HeadFvAfter
    s6Step369HeadFRow s6Step369HeadFOut 88 s6Step369HeadFFresh [(s6Step369HeadGvRow,201),(s6Step369HeadFvRow,201)] [s6Step369HeadGvFresh,s6Step369HeadFvFresh] [s6Step369HeadGvOut,s6Step369HeadFvOut]
    (growRow 795 s6Step369HeadFFresh) ((growRow 775 s6Step369HeadGvFresh ++ (growRow 776 s6Step369HeadFvFresh ++ []))) s6Step369HeadF_Incoming s6Step369HeadF_checked h2 s6Step369HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step369HeadGBefore s6Step369HeadGAfter s6Step369HeadFvAfter
    s6Step369HeadGRow s6Step369HeadGOut 88 s6Step369HeadGFresh [(s6Step369HeadFRow,88),(s6Step369HeadGvRow,201),(s6Step369HeadFvRow,201)] [s6Step369HeadFFresh,s6Step369HeadGvFresh,s6Step369HeadFvFresh] [s6Step369HeadFOut,s6Step369HeadGvOut,s6Step369HeadFvOut]
    (growRow 777 s6Step369HeadGFresh) ((growRow 795 s6Step369HeadFFresh ++ (growRow 775 s6Step369HeadGvFresh ++ (growRow 776 s6Step369HeadFvFresh ++ [])))) s6Step369HeadG_Incoming s6Step369HeadG_checked h1 s6Step369HeadG_Outgoing
  exact h0

private theorem s6Step369HeadBank_checked : compileHmrBankResizeLog .headroom s6Step369HeadGBefore ⟨s6Step369HeadFRow,s6Step369HeadGRow,s6Step369HeadFvRow,s6Step369HeadGvRow⟩ ⟨88,88,201,201⟩ [s6Step369HeadGFresh,s6Step369HeadFFresh,s6Step369HeadGvFresh,s6Step369HeadFvFresh]=
    some (s6Step369HeadFvAfter,⟨s6Step369HeadFOut,s6Step369HeadGOut,s6Step369HeadFvOut,s6Step369HeadGvOut⟩,(growRow 777 s6Step369HeadGFresh ++ (growRow 795 s6Step369HeadFFresh ++ (growRow 775 s6Step369HeadGvFresh ++ (growRow 776 s6Step369HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step369HeadBank_rows]
  rfl

private theorem s6Step369Front_checked : compileHmrSourceFrontLog s6Step369EntryFBefore s6Step369FrontBank 87 200 ⟨87,86,201,200⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step369FrontLog=some s6Step369FrontPlan := by
  have pairEq : s6Step369FrontPair=⟨s6Step369HeadFRow,s6Step369HeadGRow,s6Step369HeadFvRow,s6Step369HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step369FrontHead=⟨s6Step369ExitFRow,s6Step369ExitGRow,s6Step369ExitFvRow,s6Step369ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step369Add0A=s6Step369FrontHead.f.wires := by decide +kernel
  have gEq : s6Step369Add0B=s6Step369FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step369Add1A=s6Step369FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step369Add1B=s6Step369FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step369EntryFBefore s6Step369FrontBank 87 200 ⟨87,86,201,200⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step369FrontLog s6Step369FrontPlan
  · exact s6Step369Front_entry
  · exact s6Step369EntryBank_checked
  · exact s6Step369Front_sigma
  · rfl
  · exact s6Step369Front_branch
  · rfl
  · simpa only [s6Step369FrontPlan,pairEq] using s6Step369HeadBank_checked
  · simpa only [s6Step369FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step369F4_checked
  · exact s6Step369Counter_checked
  · rfl
  · simpa only [s6Step369FrontPlan,headEq] using s6Step369ExitBank_checked

private theorem s6Step369Complete_explicit_checked : compileHmrEarlyStepLog s6Step369EntryFBefore s6Step369FrontBank 87 200 ⟨87,86,201,200⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step369CompleteLog=some s6Step369CompletePlan := by
  let Q := s6Step369EarlyControlPlan
  have hq := s6Step369EarlyControl_plan_checked
  have fv1 : s6Step369CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step369CompleteOut.fv.payload[2]?.getD s6Step369CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step369CompleteOut.fv.payload[3]?.getD s6Step369CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step369CompleteOut.fv.payload[4]?.getD s6Step369CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step369EntryFBefore s6Step369EarlyControlArena s6Step369FrontBank 87 200 ⟨87,86,201,200⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step369CompleteLog s6Step369FrontPlan Q
    s6Step369Front_checked s6Step369Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step369Complete_owned s6Step369Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step369EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 823 s6Step369CompleteOut.fv.second (s6Step369CompleteOut.fv.payload[2]?.getD s6Step369CompleteOut.fv.sign) (s6Step369CompleteOut.fv.payload[3]?.getD s6Step369CompleteOut.fv.sign) (s6Step369CompleteOut.fv.payload[4]?.getD s6Step369CompleteOut.fv.sign) 796 60 s6Step369EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep369Arena : Arena := s6Step369EntryFBefore
def s6PrivateStep369Bank : WindowBank := s6Step369FrontBank
def s6PrivateStep369Spec : HmrSourceWalkStepLog := ⟨87,200,⟨87,86,201,200⟩,60,.early s6Step369CompleteLog⟩
def s6PrivateStep369Plan : HmrSourceStepPlan := .early s6Step369CompletePlan
theorem s6PrivateStep369_source : s6PrivateStep369Spec=s6ObservedLogs368[1] := rfl
theorem s6PrivateStep369_checked : compileHmrSourceStepLog s6PrivateStep369Arena s6PrivateStep369Bank
    s6PrivateStep369Spec.fgWidth s6PrivateStep369Spec.vWidth s6PrivateStep369Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 369 s6PrivateStep369Spec.need none s6PrivateStep369Spec.log=some s6PrivateStep369Plan := by
  change compileHmrSourceStepLog s6Step369EntryFBefore s6Step369FrontBank 87 200 ⟨87,86,201,200⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 369 60 none (.early s6Step369CompleteLog)=some (.early s6Step369CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 369<498)]
  rw [s6Step369Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
