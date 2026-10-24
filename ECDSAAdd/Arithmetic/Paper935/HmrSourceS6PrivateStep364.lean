import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep362
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

private def s6Step364CompleteMoves : List (Wire × Wire) := [(886,88)]

private def s6Step364EarlyControlLog : HmrEarlyControlLog := ⟨[886, 892, 922, 876, 906],[858],[807],[805, 802, 843, 877, 792, 816],[]⟩

private def s6Step364FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [825], []],[[906], [876], [892], [922]],[[], [], [], []]⟩,[908],[898],[858],[807],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[858, 807, 805, 802]⟩

private def s6Step364CompleteLog : HmrEarlyStepLog := ⟨s6Step364FrontLog,s6Step364CompleteMoves,s6Step364EarlyControlLog⟩

private def s6Step364ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344],795⟩

private def s6Step364ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩

private def s6Step364ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],777⟩

private def s6Step364ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private def s6Step364FrontOut : WindowBank := ⟨s6Step364ExitFOut,s6Step364ExitGOut,s6Step364ExitFvOut,s6Step364ExitGvOut⟩

private def s6Step364CompleteOut : WindowBank := s6Step364FrontOut.repacked s6Step364CompleteMoves

private def s6Step364EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step364EarlyControlPositiveArena,[858],s6Step364EarlyControlEqualityArena,[807],⟨⟨908,false⟩,[⟨⟨858,false⟩,807⟩]⟩⟩

private def s6Step364EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,886⟩,⟨⟨772,false⟩,892⟩,⟨⟨771,false⟩,922⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,906⟩]⟩

private def s6Step364EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step364EarlyControlZeroArena,s6Step364EarlyControlZeroPlan,s6Step364EarlyControlClassPlan,s6Step364EarlyControlFlagArena,s6Step364EarlyControlFittedArena,s6Step364EarlyControlHistoryArena,s6Step364EarlyControlSigmaArena,s6Step364EarlyControlOutputArena,s6Step364EarlyControlLog⟩

private def s6Step364CounterWork : List Wire := [858, 807, 805, 802]

private theorem s6Step364Counter_bounded : s6Step364CounterWork.toFinset⊆arenaWires := by norm_num [s6Step364CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step364HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364CounterDuring : Arena := ⟨s6Step364HeadFvAfter.live∪s6Step364CounterWork.toFinset,Finset.union_subset s6Step364HeadFvAfter.bounded s6Step364Counter_bounded⟩

private def s6Step364EntryFFresh : List Wire := []

private def s6Step364EntryFvFresh : List Wire := [825]

private def s6Step364EntryGFresh : List Wire := []

private def s6Step364EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364EntryGvAfter : Arena := s6Step364EntryFvAfter

private def s6Step364EntryGvFresh : List Wire := []

private def s6Step364ExitFExtra : List Wire := [876]

private def s6Step364ExitFvExtra : List Wire := [922]

private def s6Step364ExitGExtra : List Wire := [88, 906]

private def s6Step364ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364ExitGvExtra : List Wire := [892]

private def s6Step364Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364Add0Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step364Add0_bounded : s6Step364Add0Work.toFinset⊆arenaWires := by
  have h : s6Step364Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step364Add0During : Arena := ⟨s6Step364Add0Arena.live∪s6Step364Add0Work.toFinset,Finset.union_subset s6Step364Add0Arena.bounded s6Step364Add0_bounded⟩

private def s6Step364Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364Add1Work : List Wire := [805, 802, 843, 877, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step364Add1_bounded : s6Step364Add1Work.toFinset⊆arenaWires := by
  have h : s6Step364Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step364Add1During : Arena := ⟨s6Step364Add1Arena.live∪s6Step364Add1Work.toFinset,Finset.union_subset s6Step364Add1Arena.bounded s6Step364Add1_bounded⟩

private def s6Step364F4FlagArena : Arena := ⟨s6Step364HeadFvAfter.live∪{858},Finset.union_subset s6Step364HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step364F4Plan : HmrHybridF4Plan := ⟨s6Step364F4FlagArena,[858],s6Step364Add0Arena,[807],s6Step364Add0During,s6Step364Add0Work,s6Step364Add1During,s6Step364Add1Work⟩

private def s6Step364HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 876],795⟩

private def s6Step364HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922],776⟩

private def s6Step364HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 906],777⟩

private def s6Step364HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 892],775⟩

private def s6Step364FrontHead : WindowBank := ⟨s6Step364HeadFOut,s6Step364HeadGOut,s6Step364HeadFvOut,s6Step364HeadGvOut⟩

private def s6Step364EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344],795⟩

private def s6Step364EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩

private def s6Step364EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88],777⟩

private def s6Step364EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private def s6Step364FrontPair : WindowBank := ⟨s6Step364EntryFOut,s6Step364EntryGOut,s6Step364EntryFvOut,s6Step364EntryGvOut⟩

private def s6Step364FrontSigmaArena : Arena := ⟨s6Step364EntryGvAfter.live∪{908},Finset.union_subset s6Step364EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step364HeadFFresh : List Wire := [876]

private def s6Step364HeadFvFresh : List Wire := [922]

private def s6Step364HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364HeadGFresh : List Wire := [906]

private def s6Step364HeadGvFresh : List Wire := [892]

private def s6Step364FrontPlan : HmrSourceFront := ⟨s6Step364EntryGvAfter,s6Step364FrontPair,(growRow 795 s6Step364EntryFFresh ++ (growRow 777 s6Step364EntryGFresh ++ (growRow 776 s6Step364EntryFvFresh ++ (growRow 775 s6Step364EntryGvFresh ++ [])))),s6Step364FrontSigmaArena,[908],s6Step364HeadGBefore,[898],
  s6Step364HeadFvAfter,s6Step364FrontHead,(growRow 777 s6Step364HeadGFresh ++ (growRow 795 s6Step364HeadFFresh ++ (growRow 775 s6Step364HeadGvFresh ++ (growRow 776 s6Step364HeadFvFresh ++ [])))),s6Step364F4Plan,s6Step364CounterDuring,s6Step364CounterWork,s6Step364ExitGvAfter,s6Step364FrontOut,(shrinkRow 777 s6Step364ExitGExtra ++ (shrinkRow 795 s6Step364ExitFExtra ++ (shrinkRow 776 s6Step364ExitFvExtra ++ (shrinkRow 775 s6Step364ExitGvExtra ++ []))))⟩

private def s6Step364CompletePlan : HmrEarlyStepPlan := ⟨s6Step364FrontPlan,s6Step364EarlyControlArena,s6Step364EarlyControlPlan,s6Step364CompleteMoves⟩

private theorem s6Step364Complete_apart : List.Disjoint (s6Step364CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [908, 898, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step364CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[908, 898, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step364Complete_owned : (s6Step364CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step364EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step364EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step364CompleteMoveArena : Arena := ⟨s6Step364ExitGvAfter.live∪{88},Finset.union_subset s6Step364ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step364Complete_repack : s6Step364ExitGvAfter.checkRepack s6Step364CompleteMoves=some s6Step364EarlyControlArena := by
  have owned : 886∈s6Step364ExitGvAfter.live := by norm_num [s6Step364ExitGvAfter,arenaWires]
  have reserve : s6Step364ExitGvAfter.reserve {88}=some s6Step364CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step364ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step364CompleteMoveArena.retireSet {886}=s6Step364EarlyControlArena := by
    unfold Arena.retireSet s6Step364EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step364CompleteMoveArena,s6Step364ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step364CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step364CompleteMoveArena.retireSet {886}).checkRepack []=some s6Step364EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step364EarlyControl_branchOwned : ([898] : List Wire).toFinset⊆s6Step364EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step364EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364EarlyControl_branch : compileHmrBranchRetirement s6Step364EarlyControlSigmaArena 898=some s6Step364EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step364EarlyControl_branchOwned
  · ext q
    simp [s6Step364EarlyControlOutputArena,s6Step364EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step364EarlyControl_classEqualityBorrow : s6Step364EarlyControlPositiveArena.checkBorrow (([908, 858] : List Wire).length-1) s6Step364EarlyControlLog.classWork=some s6Step364EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step364EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step364EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step364EarlyControlEqualityArena,s6Step364EarlyControlPositiveArena,s6Step364EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step364EarlyControl_classEqualityOwned : ([908, 858] : List Wire).toFinset⊆s6Step364EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step364EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364EarlyControl_classEquality : compileHmrEqualityLog s6Step364EarlyControlPositiveArena [908, 858] 0 s6Step364EarlyControlLog.classWork=some (s6Step364EarlyControlEqualityArena,s6Step364EarlyControlLog.classWork,s6Step364EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step364EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step364EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step364EarlyControl_classOwned : ([769, 906, 908] : List Wire).toFinset⊆s6Step364EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step364EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364EarlyControl_positiveBorrow : s6Step364EarlyControlZeroArena.checkBorrow (1) s6Step364EarlyControlLog.positiveWork=some s6Step364EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step364EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step364EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step364EarlyControlPositiveArena,s6Step364EarlyControlZeroArena,s6Step364EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step364EarlyControl_class : compileHmrSourceClassLog s6Step364EarlyControlZeroArena false 769 s6Step364EarlyControlZeroPlan.top 0 908 s6Step364EarlyControlLog.positiveWork s6Step364EarlyControlLog.classWork=some s6Step364EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step364EarlyControlClassPlan s6Step364EarlyControlZeroArena false 769 s6Step364EarlyControlZeroPlan.top 0 908
  constructor
  · decide +kernel
  · exact s6Step364EarlyControl_classOwned
  · exact s6Step364EarlyControl_positiveBorrow
  · exact s6Step364EarlyControl_classEquality

private theorem s6Step364EarlyControl_entryRecordOwned : ([898, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step364EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step364EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364EarlyControl_entrySigmaOwned : ([908, 254] : List Wire).toFinset⊆s6Step364EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step364EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364EarlyControl_fitBorrow : s6Step364EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step364EarlyControlLog.recordFresh=some s6Step364EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step364EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step364EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step364EarlyControlFittedArena,s6Step364EarlyControlFlagArena,s6Step364EarlyControlLog,arenaWires]

private theorem s6Step364EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step364EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step364EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364EarlyControl_fit : compileHmrRecordGrowLog s6Step364EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step364EarlyControlLog.recordFresh=some s6Step364EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step364EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step364EarlyControl_fitBorrow

private theorem s6Step364EarlyControl_flagsBorrow : s6Step364EarlyControlEqualityArena.checkBorrow (6) s6Step364EarlyControlLog.flagWork=some s6Step364EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step364EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step364EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step364EarlyControlFlagArena,s6Step364EarlyControlEqualityArena,s6Step364EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step364EarlyControl_flagsOwned : ([807, 253, 252, 251] : List Wire).toFinset⊆s6Step364EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step364EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364EarlyControl_flags : compileHmrFlagsLog s6Step364EarlyControlClassPlan.equalityArena s6Step364EarlyControlClassPlan.equality.top 253 252 251 s6Step364EarlyControlLog.flagWork=some s6Step364EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step364EarlyControl_flagsOwned⟩
  · exact s6Step364EarlyControl_flagsBorrow

private theorem s6Step364EarlyControl_historyBorrow : s6Step364EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step364EarlyControlLog.recordFresh=some s6Step364EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step364EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step364EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step364EarlyControlHistoryArena,s6Step364EarlyControlArena,s6Step364EarlyControlLog,arenaWires]

private theorem s6Step364EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step364EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step364EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364EarlyControl_history : compileHmrRecordGrowLog s6Step364EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step364EarlyControlLog.recordFresh=some s6Step364EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step364EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step364EarlyControl_historyBorrow

private theorem s6Step364EarlyControl_sigmaOwned : ([254, 908] : List Wire).toFinset⊆s6Step364EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step364EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364EarlyControl_sigmaReleaseOwned : ([908] : List Wire).toFinset⊆s6Step364EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step364EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364EarlyControl_sigmaRelease : s6Step364EarlyControlHistoryArena.release {908} (fun _ => false)=some s6Step364EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step364EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step364EarlyControlSigmaArena,s6Step364EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step364EarlyControl_sigma : compileHmrSigmaDropLog s6Step364EarlyControlHistoryArena false 0 0 254 908 []=some s6Step364EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step364EarlyControl_sigmaOwned⟩
  · exact s6Step364EarlyControl_sigmaRelease

private theorem s6Step364EarlyControl_zeroBorrow : s6Step364EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step364EarlyControlLog.zeroWork=some s6Step364EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step364EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step364EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step364EarlyControlZeroArena,s6Step364EarlyControlArena,s6Step364EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step364EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step364EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step364EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<886) ∨ (887≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364EarlyControl_zero : compileHmrEqualityLog s6Step364EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step364EarlyControlLog.zeroWork=some (s6Step364EarlyControlZeroArena,s6Step364EarlyControlLog.zeroWork,s6Step364EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step364EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step364EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step364EarlyControl_logged : s6Step364EarlyControlPlan.Logged s6Step364EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 898 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step364EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step364EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step364EarlyControl_zero
  · exact s6Step364EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step364EarlyControl_flags
  · exact s6Step364EarlyControl_fit
  · exact s6Step364EarlyControl_history
  · exact s6Step364EarlyControl_sigma
  · exact s6Step364EarlyControl_branch

private theorem s6Step364EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step364EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 898 60 s6Step364EarlyControlLog=some s6Step364EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step364EarlyControlPlan s6Step364EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 254 253 252 251 898 60 s6Step364EarlyControl_logged

private def s6Step364EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344],795⟩

private def s6Step364EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881],776⟩

private def s6Step364EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88],777⟩

private def s6Step364EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private def s6Step364FrontBank : WindowBank := ⟨s6Step364EntryFRow,s6Step364EntryGRow,s6Step364EntryFvRow,s6Step364EntryGvRow⟩

private def s6Step364Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 876, 795]

private def s6Step364Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 906, 777]

private def s6Step364Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922, 776]

private def s6Step364Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 892, 775]

private theorem s6Step364Counter_apart : Disjoint s6Step364HeadFvAfter.live s6Step364CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step364HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364Counter_borrowed : s6Step364HeadFvAfter.checkBorrow 4 s6Step364CounterWork=some s6Step364CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step364HeadFvAfter s6Step364CounterDuring s6Step364CounterWork.toFinset s6Step364Counter_bounded s6Step364Counter_apart rfl

private theorem s6Step364Counter_owned : (908::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step364HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step364HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364Counter_checked : compileHmrCounterStepLog s6Step364HeadFvAfter true 908 [774, 773, 772, 771, 770, 769] s6Step364CounterWork=some s6Step364CounterDuring := by
  have owned : ∀q∈908::[774, 773, 772, 771, 770, 769],q∈s6Step364HeadFvAfter.live := fun q hq => s6Step364Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step364Counter_borrowed

private def s6Step364EntryFAfter : Arena := s6Step364EntryFBefore

private theorem s6Step364EntryBank_incomingDistinct : ([s6Step364EntryFRow,s6Step364EntryGRow,s6Step364EntryFvRow,s6Step364EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364EntryF_Incoming : rowsOwned s6Step364EntryFBefore [s6Step364EntryFRow,s6Step364EntryGRow,s6Step364EntryFvRow,s6Step364EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step364EntryFRow,s6Step364EntryGRow,s6Step364EntryFvRow,s6Step364EntryGvRow] 0 s6Step364EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step364EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step364EntryBank_outgoingOwned : rowsOwned s6Step364EntryGvAfter [s6Step364EntryFOut,s6Step364EntryGOut,s6Step364EntryFvOut,s6Step364EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step364EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step364EntryF_Outgoing : rowsOwned s6Step364EntryGvAfter [s6Step364EntryFOut,s6Step364EntryGOut,s6Step364EntryFvOut,s6Step364EntryGvOut] :=
  hmrRows_owned_drop s6Step364EntryGvAfter [s6Step364EntryFOut,s6Step364EntryGOut,s6Step364EntryFvOut,s6Step364EntryGvOut] 0 s6Step364EntryBank_outgoingOwned

private theorem s6Step364EntryF_distinct : (s6Step364EntryFRow.sign::s6Step364EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364EntryF_owned : (s6Step364EntryFRow.sign::s6Step364EntryFRow.payload).toFinset⊆s6Step364EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step364EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364EntryF_reserved : s6Step364EntryFBefore.reserve s6Step364EntryFFresh.toFinset=some s6Step364EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step364EntryFFresh,arenaWires]
  · norm_num [s6Step364EntryFBefore,s6Step364EntryFFresh,arenaWires]
  · simp only [s6Step364EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step364EntryF_checked : planRowResizeLog s6Step364EntryFBefore s6Step364EntryFRow 89 s6Step364EntryFFresh=
    some (s6Step364EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344],795⟩,growRow 795 s6Step364EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step364EntryFBefore s6Step364EntryFAfter s6Step364EntryFRow 89 s6Step364EntryFFresh
    s6Step364EntryF_distinct s6Step364EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step364EntryF_reserved
  have rowEq : WindowRow.mk (s6Step364EntryFRow.payload++s6Step364EntryFFresh) s6Step364EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step364EntryFvBefore : Arena := s6Step364EntryFBefore

private theorem s6Step364EntryFv_Incoming : rowsOwned s6Step364EntryFvBefore [s6Step364EntryFvRow,s6Step364EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step364EntryFRow,s6Step364EntryGRow,s6Step364EntryFvRow,s6Step364EntryGvRow] 2 s6Step364EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step364EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step364EntryFv_Outgoing : rowsOwned s6Step364EntryGvAfter [s6Step364EntryFvOut,s6Step364EntryGvOut] :=
  hmrRows_owned_drop s6Step364EntryGvAfter [s6Step364EntryFOut,s6Step364EntryGOut,s6Step364EntryFvOut,s6Step364EntryGvOut] 2 s6Step364EntryBank_outgoingOwned

private theorem s6Step364EntryFv_distinct : (s6Step364EntryFvRow.sign::s6Step364EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364EntryFv_owned : (s6Step364EntryFvRow.sign::s6Step364EntryFvRow.payload).toFinset⊆s6Step364EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step364EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364EntryFv_reserved : s6Step364EntryFvBefore.reserve s6Step364EntryFvFresh.toFinset=some s6Step364EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step364EntryFvFresh,arenaWires]
  · norm_num [s6Step364EntryFvBefore,s6Step364EntryFBefore,s6Step364EntryFvFresh,arenaWires]
  · ext q
    simp only [s6Step364EntryFvAfter,s6Step364EntryFvBefore,s6Step364EntryFBefore,s6Step364EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step364EntryFv_checked : planRowResizeLog s6Step364EntryFvBefore s6Step364EntryFvRow 198 s6Step364EntryFvFresh=
    some (s6Step364EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩,growRow 776 s6Step364EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step364EntryFvBefore s6Step364EntryFvAfter s6Step364EntryFvRow 198 s6Step364EntryFvFresh
    s6Step364EntryFv_distinct s6Step364EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step364EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step364EntryFvRow.payload++s6Step364EntryFvFresh) s6Step364EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step364EntryGAfter : Arena := s6Step364EntryFBefore

private def s6Step364EntryGBefore : Arena := s6Step364EntryFBefore

private theorem s6Step364EntryG_Incoming : rowsOwned s6Step364EntryGBefore [s6Step364EntryGRow,s6Step364EntryFvRow,s6Step364EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step364EntryFRow,s6Step364EntryGRow,s6Step364EntryFvRow,s6Step364EntryGvRow] 1 s6Step364EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step364EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step364EntryG_Outgoing : rowsOwned s6Step364EntryGvAfter [s6Step364EntryGOut,s6Step364EntryFvOut,s6Step364EntryGvOut] :=
  hmrRows_owned_drop s6Step364EntryGvAfter [s6Step364EntryFOut,s6Step364EntryGOut,s6Step364EntryFvOut,s6Step364EntryGvOut] 1 s6Step364EntryBank_outgoingOwned

private theorem s6Step364EntryG_distinct : (s6Step364EntryGRow.sign::s6Step364EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364EntryG_owned : (s6Step364EntryGRow.sign::s6Step364EntryGRow.payload).toFinset⊆s6Step364EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step364EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364EntryG_reserved : s6Step364EntryGBefore.reserve s6Step364EntryGFresh.toFinset=some s6Step364EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step364EntryGFresh,arenaWires]
  · norm_num [s6Step364EntryGBefore,s6Step364EntryFBefore,s6Step364EntryGFresh,arenaWires]
  · simp only [s6Step364EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step364EntryG_checked : planRowResizeLog s6Step364EntryGBefore s6Step364EntryGRow 89 s6Step364EntryGFresh=
    some (s6Step364EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88],777⟩,growRow 777 s6Step364EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step364EntryGBefore s6Step364EntryGAfter s6Step364EntryGRow 89 s6Step364EntryGFresh
    s6Step364EntryG_distinct s6Step364EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step364EntryG_reserved
  have rowEq : WindowRow.mk (s6Step364EntryGRow.payload++s6Step364EntryGFresh) s6Step364EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step364EntryGvBefore : Arena := s6Step364EntryFvAfter

private theorem s6Step364EntryGv_Incoming : rowsOwned s6Step364EntryGvBefore [s6Step364EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step364EntryFRow,s6Step364EntryGRow,s6Step364EntryFvRow,s6Step364EntryGvRow] 3 s6Step364EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step364EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step364EntryGv_Outgoing : rowsOwned s6Step364EntryGvAfter [s6Step364EntryGvOut] :=
  hmrRows_owned_drop s6Step364EntryGvAfter [s6Step364EntryFOut,s6Step364EntryGOut,s6Step364EntryFvOut,s6Step364EntryGvOut] 3 s6Step364EntryBank_outgoingOwned

private theorem s6Step364EntryGv_distinct : (s6Step364EntryGvRow.sign::s6Step364EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364EntryGv_owned : (s6Step364EntryGvRow.sign::s6Step364EntryGvRow.payload).toFinset⊆s6Step364EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step364EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364EntryGv_reserved : s6Step364EntryGvBefore.reserve s6Step364EntryGvFresh.toFinset=some s6Step364EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step364EntryGvFresh,arenaWires]
  · norm_num [s6Step364EntryGvBefore,s6Step364EntryFvAfter,s6Step364EntryGvFresh,arenaWires]
  · simp only [s6Step364EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step364EntryGv_checked : planRowResizeLog s6Step364EntryGvBefore s6Step364EntryGvRow 198 s6Step364EntryGvFresh=
    some (s6Step364EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩,growRow 775 s6Step364EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step364EntryGvBefore s6Step364EntryGvAfter s6Step364EntryGvRow 198 s6Step364EntryGvFresh
    s6Step364EntryGv_distinct s6Step364EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step364EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step364EntryGvRow.payload++s6Step364EntryGvFresh) s6Step364EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step364EntryBank_rows : planWindowRowsLog s6Step364EntryFBefore [(s6Step364EntryFRow,89),(s6Step364EntryGRow,89),(s6Step364EntryFvRow,198),(s6Step364EntryGvRow,198)] [s6Step364EntryFFresh,s6Step364EntryGFresh,s6Step364EntryFvFresh,s6Step364EntryGvFresh]=
    some (s6Step364EntryGvAfter,[s6Step364EntryFOut,s6Step364EntryGOut,s6Step364EntryFvOut,s6Step364EntryGvOut],(growRow 795 s6Step364EntryFFresh ++ (growRow 777 s6Step364EntryGFresh ++ (growRow 776 s6Step364EntryFvFresh ++ (growRow 775 s6Step364EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step364EntryGvAfter [] []=some (s6Step364EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step364EntryGvBefore s6Step364EntryGvAfter s6Step364EntryGvAfter
    s6Step364EntryGvRow s6Step364EntryGvOut 198 s6Step364EntryGvFresh [] [] []
    (growRow 775 s6Step364EntryGvFresh) ([]) s6Step364EntryGv_Incoming s6Step364EntryGv_checked h4 s6Step364EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step364EntryFvBefore s6Step364EntryFvAfter s6Step364EntryGvAfter
    s6Step364EntryFvRow s6Step364EntryFvOut 198 s6Step364EntryFvFresh [(s6Step364EntryGvRow,198)] [s6Step364EntryGvFresh] [s6Step364EntryGvOut]
    (growRow 776 s6Step364EntryFvFresh) ((growRow 775 s6Step364EntryGvFresh ++ [])) s6Step364EntryFv_Incoming s6Step364EntryFv_checked h3 s6Step364EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step364EntryGBefore s6Step364EntryGAfter s6Step364EntryGvAfter
    s6Step364EntryGRow s6Step364EntryGOut 89 s6Step364EntryGFresh [(s6Step364EntryFvRow,198),(s6Step364EntryGvRow,198)] [s6Step364EntryFvFresh,s6Step364EntryGvFresh] [s6Step364EntryFvOut,s6Step364EntryGvOut]
    (growRow 777 s6Step364EntryGFresh) ((growRow 776 s6Step364EntryFvFresh ++ (growRow 775 s6Step364EntryGvFresh ++ []))) s6Step364EntryG_Incoming s6Step364EntryG_checked h2 s6Step364EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step364EntryFBefore s6Step364EntryFAfter s6Step364EntryGvAfter
    s6Step364EntryFRow s6Step364EntryFOut 89 s6Step364EntryFFresh [(s6Step364EntryGRow,89),(s6Step364EntryFvRow,198),(s6Step364EntryGvRow,198)] [s6Step364EntryGFresh,s6Step364EntryFvFresh,s6Step364EntryGvFresh] [s6Step364EntryGOut,s6Step364EntryFvOut,s6Step364EntryGvOut]
    (growRow 795 s6Step364EntryFFresh) ((growRow 777 s6Step364EntryGFresh ++ (growRow 776 s6Step364EntryFvFresh ++ (growRow 775 s6Step364EntryGvFresh ++ [])))) s6Step364EntryF_Incoming s6Step364EntryF_checked h1 s6Step364EntryF_Outgoing
  exact h0

private theorem s6Step364EntryBank_checked : compileHmrBankResizeLog .entry s6Step364EntryFBefore ⟨s6Step364EntryFRow,s6Step364EntryGRow,s6Step364EntryFvRow,s6Step364EntryGvRow⟩ ⟨89,89,198,198⟩ [s6Step364EntryFFresh,s6Step364EntryGFresh,s6Step364EntryFvFresh,s6Step364EntryGvFresh]=
    some (s6Step364EntryGvAfter,⟨s6Step364EntryFOut,s6Step364EntryGOut,s6Step364EntryFvOut,s6Step364EntryGvOut⟩,(growRow 795 s6Step364EntryFFresh ++ (growRow 777 s6Step364EntryGFresh ++ (growRow 776 s6Step364EntryFvFresh ++ (growRow 775 s6Step364EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step364EntryBank_rows]
  rfl

private def s6Step364ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364ExitFBefore : Arena := s6Step364ExitGAfter

private def s6Step364ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 876],795⟩

private def s6Step364ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922],776⟩

private def s6Step364ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 906],777⟩

private def s6Step364ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 892],775⟩

private theorem s6Step364ExitBank_incomingDistinct : ([s6Step364ExitGRow,s6Step364ExitFRow,s6Step364ExitFvRow,s6Step364ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364ExitF_Incoming : rowsOwned s6Step364ExitFBefore [s6Step364ExitFRow,s6Step364ExitFvRow,s6Step364ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step364ExitGRow,s6Step364ExitFRow,s6Step364ExitFvRow,s6Step364ExitGvRow] 1 s6Step364ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step364ExitFBefore (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step364ExitBank_outgoingOwned : rowsOwned s6Step364ExitGvAfter [s6Step364ExitGOut,s6Step364ExitFOut,s6Step364ExitFvOut,s6Step364ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step364ExitGvAfter (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step364ExitF_Outgoing : rowsOwned s6Step364ExitGvAfter [s6Step364ExitFOut,s6Step364ExitFvOut,s6Step364ExitGvOut] :=
  hmrRows_owned_drop s6Step364ExitGvAfter [s6Step364ExitGOut,s6Step364ExitFOut,s6Step364ExitFvOut,s6Step364ExitGvOut] 1 s6Step364ExitBank_outgoingOwned

private theorem s6Step364ExitF_distinct : (s6Step364ExitFRow.sign::s6Step364ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364ExitF_owned : (s6Step364ExitFRow.sign::s6Step364ExitFRow.payload).toFinset⊆s6Step364ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step364ExitFBefore (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364ExitF_retired : s6Step364ExitFBefore.retireSet s6Step364ExitFExtra.toFinset=s6Step364ExitFAfter := by
  unfold Arena.retireSet s6Step364ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step364ExitFBefore,s6Step364ExitGAfter,s6Step364ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step364ExitF_checked : planRowResizeLog s6Step364ExitFBefore s6Step364ExitFRow 89 []=
    some (s6Step364ExitFAfter,s6Step364ExitFOut,shrinkRow 795 s6Step364ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step364ExitFBefore s6Step364ExitFRow 89 s6Step364ExitF_distinct s6Step364ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step364ExitFRow.payload.take 89) s6Step364ExitFRow.sign=s6Step364ExitFOut := by decide +kernel
  have hi : s6Step364ExitFRow.payload.drop 89=s6Step364ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step364ExitF_retired] at result
  exact result

private def s6Step364ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364ExitFvBefore : Arena := s6Step364ExitFAfter

private theorem s6Step364ExitFv_Incoming : rowsOwned s6Step364ExitFvBefore [s6Step364ExitFvRow,s6Step364ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step364ExitGRow,s6Step364ExitFRow,s6Step364ExitFvRow,s6Step364ExitGvRow] 2 s6Step364ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step364ExitFvBefore (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step364ExitFv_Outgoing : rowsOwned s6Step364ExitGvAfter [s6Step364ExitFvOut,s6Step364ExitGvOut] :=
  hmrRows_owned_drop s6Step364ExitGvAfter [s6Step364ExitGOut,s6Step364ExitFOut,s6Step364ExitFvOut,s6Step364ExitGvOut] 2 s6Step364ExitBank_outgoingOwned

private theorem s6Step364ExitFv_distinct : (s6Step364ExitFvRow.sign::s6Step364ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364ExitFv_owned : (s6Step364ExitFvRow.sign::s6Step364ExitFvRow.payload).toFinset⊆s6Step364ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step364ExitFvBefore (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364ExitFv_retired : s6Step364ExitFvBefore.retireSet s6Step364ExitFvExtra.toFinset=s6Step364ExitFvAfter := by
  unfold Arena.retireSet s6Step364ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step364ExitFvBefore,s6Step364ExitFAfter,s6Step364ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step364ExitFv_checked : planRowResizeLog s6Step364ExitFvBefore s6Step364ExitFvRow 198 []=
    some (s6Step364ExitFvAfter,s6Step364ExitFvOut,shrinkRow 776 s6Step364ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step364ExitFvBefore s6Step364ExitFvRow 198 s6Step364ExitFv_distinct s6Step364ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step364ExitFvRow.payload.take 198) s6Step364ExitFvRow.sign=s6Step364ExitFvOut := by decide +kernel
  have hi : s6Step364ExitFvRow.payload.drop 198=s6Step364ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step364ExitFv_retired] at result
  exact result

private def s6Step364ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step364ExitG_Incoming : rowsOwned s6Step364ExitGBefore [s6Step364ExitGRow,s6Step364ExitFRow,s6Step364ExitFvRow,s6Step364ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step364ExitGRow,s6Step364ExitFRow,s6Step364ExitFvRow,s6Step364ExitGvRow] 0 s6Step364ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step364ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step364ExitG_Outgoing : rowsOwned s6Step364ExitGvAfter [s6Step364ExitGOut,s6Step364ExitFOut,s6Step364ExitFvOut,s6Step364ExitGvOut] :=
  hmrRows_owned_drop s6Step364ExitGvAfter [s6Step364ExitGOut,s6Step364ExitFOut,s6Step364ExitFvOut,s6Step364ExitGvOut] 0 s6Step364ExitBank_outgoingOwned

private theorem s6Step364ExitG_distinct : (s6Step364ExitGRow.sign::s6Step364ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364ExitG_owned : (s6Step364ExitGRow.sign::s6Step364ExitGRow.payload).toFinset⊆s6Step364ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step364ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364ExitG_retired : s6Step364ExitGBefore.retireSet s6Step364ExitGExtra.toFinset=s6Step364ExitGAfter := by
  unfold Arena.retireSet s6Step364ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step364ExitGBefore,s6Step364ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step364ExitG_checked : planRowResizeLog s6Step364ExitGBefore s6Step364ExitGRow 88 []=
    some (s6Step364ExitGAfter,s6Step364ExitGOut,shrinkRow 777 s6Step364ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step364ExitGBefore s6Step364ExitGRow 88 s6Step364ExitG_distinct s6Step364ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step364ExitGRow.payload.take 88) s6Step364ExitGRow.sign=s6Step364ExitGOut := by decide +kernel
  have hi : s6Step364ExitGRow.payload.drop 88=s6Step364ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step364ExitG_retired] at result
  exact result

private def s6Step364ExitGvBefore : Arena := s6Step364ExitFvAfter

private theorem s6Step364ExitGv_Incoming : rowsOwned s6Step364ExitGvBefore [s6Step364ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step364ExitGRow,s6Step364ExitFRow,s6Step364ExitFvRow,s6Step364ExitGvRow] 3 s6Step364ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step364ExitGvBefore (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step364ExitGv_Outgoing : rowsOwned s6Step364ExitGvAfter [s6Step364ExitGvOut] :=
  hmrRows_owned_drop s6Step364ExitGvAfter [s6Step364ExitGOut,s6Step364ExitFOut,s6Step364ExitFvOut,s6Step364ExitGvOut] 3 s6Step364ExitBank_outgoingOwned

private theorem s6Step364ExitGv_distinct : (s6Step364ExitGvRow.sign::s6Step364ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364ExitGv_owned : (s6Step364ExitGvRow.sign::s6Step364ExitGvRow.payload).toFinset⊆s6Step364ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step364ExitGvBefore (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364ExitGv_retired : s6Step364ExitGvBefore.retireSet s6Step364ExitGvExtra.toFinset=s6Step364ExitGvAfter := by
  unfold Arena.retireSet s6Step364ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step364ExitGvBefore,s6Step364ExitFvAfter,s6Step364ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step364ExitGv_checked : planRowResizeLog s6Step364ExitGvBefore s6Step364ExitGvRow 198 []=
    some (s6Step364ExitGvAfter,s6Step364ExitGvOut,shrinkRow 775 s6Step364ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step364ExitGvBefore s6Step364ExitGvRow 198 s6Step364ExitGv_distinct s6Step364ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step364ExitGvRow.payload.take 198) s6Step364ExitGvRow.sign=s6Step364ExitGvOut := by decide +kernel
  have hi : s6Step364ExitGvRow.payload.drop 198=s6Step364ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step364ExitGv_retired] at result
  exact result

private theorem s6Step364ExitBank_rows : planWindowRowsLog s6Step364ExitGBefore [(s6Step364ExitGRow,88),(s6Step364ExitFRow,89),(s6Step364ExitFvRow,198),(s6Step364ExitGvRow,198)] [[],[],[],[]]=
    some (s6Step364ExitGvAfter,[s6Step364ExitGOut,s6Step364ExitFOut,s6Step364ExitFvOut,s6Step364ExitGvOut],(shrinkRow 777 s6Step364ExitGExtra ++ (shrinkRow 795 s6Step364ExitFExtra ++ (shrinkRow 776 s6Step364ExitFvExtra ++ (shrinkRow 775 s6Step364ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step364ExitGvAfter [] []=some (s6Step364ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step364ExitGvBefore s6Step364ExitGvAfter s6Step364ExitGvAfter
    s6Step364ExitGvRow s6Step364ExitGvOut 198 [] [] [] []
    (shrinkRow 775 s6Step364ExitGvExtra) ([]) s6Step364ExitGv_Incoming s6Step364ExitGv_checked h4 s6Step364ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step364ExitFvBefore s6Step364ExitFvAfter s6Step364ExitGvAfter
    s6Step364ExitFvRow s6Step364ExitFvOut 198 [] [(s6Step364ExitGvRow,198)] [[]] [s6Step364ExitGvOut]
    (shrinkRow 776 s6Step364ExitFvExtra) ((shrinkRow 775 s6Step364ExitGvExtra ++ [])) s6Step364ExitFv_Incoming s6Step364ExitFv_checked h3 s6Step364ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step364ExitFBefore s6Step364ExitFAfter s6Step364ExitGvAfter
    s6Step364ExitFRow s6Step364ExitFOut 89 [] [(s6Step364ExitFvRow,198),(s6Step364ExitGvRow,198)] [[],[]] [s6Step364ExitFvOut,s6Step364ExitGvOut]
    (shrinkRow 795 s6Step364ExitFExtra) ((shrinkRow 776 s6Step364ExitFvExtra ++ (shrinkRow 775 s6Step364ExitGvExtra ++ []))) s6Step364ExitF_Incoming s6Step364ExitF_checked h2 s6Step364ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step364ExitGBefore s6Step364ExitGAfter s6Step364ExitGvAfter
    s6Step364ExitGRow s6Step364ExitGOut 88 [] [(s6Step364ExitFRow,89),(s6Step364ExitFvRow,198),(s6Step364ExitGvRow,198)] [[],[],[]] [s6Step364ExitFOut,s6Step364ExitFvOut,s6Step364ExitGvOut]
    (shrinkRow 777 s6Step364ExitGExtra) ((shrinkRow 795 s6Step364ExitFExtra ++ (shrinkRow 776 s6Step364ExitFvExtra ++ (shrinkRow 775 s6Step364ExitGvExtra ++ [])))) s6Step364ExitG_Incoming s6Step364ExitG_checked h1 s6Step364ExitG_Outgoing
  exact h0

private theorem s6Step364ExitBank_checked : compileHmrBankResizeLog .exit s6Step364ExitGBefore ⟨s6Step364ExitFRow,s6Step364ExitGRow,s6Step364ExitFvRow,s6Step364ExitGvRow⟩ ⟨89,88,198,198⟩ [[],[],[],[]]=
    some (s6Step364ExitGvAfter,⟨s6Step364ExitFOut,s6Step364ExitGOut,s6Step364ExitFvOut,s6Step364ExitGvOut⟩,(shrinkRow 777 s6Step364ExitGExtra ++ (shrinkRow 795 s6Step364ExitFExtra ++ (shrinkRow 776 s6Step364ExitFvExtra ++ (shrinkRow 775 s6Step364ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step364ExitBank_rows]
  rfl

private theorem s6Step364Add0_apart : Disjoint s6Step364Add0Arena.live s6Step364Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step364Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364Add0_card : s6Step364Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step364Add0_borrowed : s6Step364Add0Arena.checkBorrow (hmrHybridCount s6Step364Add0Arena s6Step364Add0B.length) s6Step364Add0Work=some s6Step364Add0During := by
  have len : s6Step364Add0Work.length=hmrHybridCount s6Step364Add0Arena s6Step364Add0B.length := by
    rw [hmrHybridCount,s6Step364Add0_card]
    decide +kernel
  have nd : s6Step364Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step364Add0Arena s6Step364Add0During s6Step364Add0Work.toFinset s6Step364Add0_bounded s6Step364Add0_apart rfl

private theorem s6Step364Add0_distinct : (858::898::807::(s6Step364Add0A++s6Step364Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364Add0_owned : (858::898::807::(s6Step364Add0A++s6Step364Add0B)).toFinset⊆s6Step364Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step364Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364Add0_checked : compileHmrHybridCinLog s6Step364Add0Arena 898 858 807 s6Step364Add0A s6Step364Add0B s6Step364Add0Work=some s6Step364Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step364Add0Arena s6Step364Add0During 898 858 807 s6Step364Add0A s6Step364Add0B s6Step364Add0Work
    (by decide +kernel) (by decide +kernel) s6Step364Add0_distinct
    (fun q hq => s6Step364Add0_owned (List.mem_toFinset.mpr hq)) s6Step364Add0_borrowed

private theorem s6Step364Add1_apart : Disjoint s6Step364Add1Arena.live s6Step364Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step364Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364Add1_card : s6Step364Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step364Add1_borrowed : s6Step364Add1Arena.checkBorrow (hmrHybridCount s6Step364Add1Arena s6Step364Add1B.length) s6Step364Add1Work=some s6Step364Add1During := by
  have len : s6Step364Add1Work.length=hmrHybridCount s6Step364Add1Arena s6Step364Add1B.length := by
    rw [hmrHybridCount,s6Step364Add1_card]
    decide +kernel
  have nd : s6Step364Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step364Add1Arena s6Step364Add1During s6Step364Add1Work.toFinset s6Step364Add1_bounded s6Step364Add1_apart rfl

private theorem s6Step364Add1_distinct : (858::898::807::(s6Step364Add1A++s6Step364Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364Add1_owned : (858::898::807::(s6Step364Add1A++s6Step364Add1B)).toFinset⊆s6Step364Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step364Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364Add1_checked : compileHmrHybridCinLog s6Step364Add1Arena 898 858 807 s6Step364Add1A s6Step364Add1B s6Step364Add1Work=some s6Step364Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step364Add1Arena s6Step364Add1During 898 858 807 s6Step364Add1A s6Step364Add1B s6Step364Add1Work
    (by decide +kernel) (by decide +kernel) s6Step364Add1_distinct
    (fun q hq => s6Step364Add1_owned (List.mem_toFinset.mpr hq)) s6Step364Add1_borrowed

private theorem s6Step364F4_apart : Disjoint (s6Step364Add0A++s6Step364Add0B).toFinset (s6Step364Add1A++s6Step364Add1B).toFinset := by
  have nd : ((s6Step364Add0A++s6Step364Add0B)++(s6Step364Add1A++s6Step364Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step364F4_carry : s6Step364F4FlagArena.checkBorrow 1 [807]=some s6Step364Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step364F4FlagArena,s6Step364HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step364F4FlagArena,s6Step364HeadFvAfter,s6Step364Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step364F4_distinct : (908::898::858::807::((s6Step364Add0A++s6Step364Add1A)++(s6Step364Add0B++s6Step364Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364F4_flag : s6Step364HeadFvAfter.checkBorrow 1 [858]=some s6Step364F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step364HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step364F4_owned : (908::898::((s6Step364Add0A++s6Step364Add1A)++(s6Step364Add0B++s6Step364Add1B))).toFinset⊆s6Step364HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step364HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364F4_checked : compileHmrHybridF4Log s6Step364HeadFvAfter 908 898 s6Step364Add0A s6Step364Add0B s6Step364Add1A s6Step364Add1B [858] [807] s6Step364Add0Work s6Step364Add1Work=some s6Step364F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step364HeadFvAfter s6Step364F4FlagArena s6Step364Add0Arena s6Step364Add0During s6Step364Add1During 908 898
    s6Step364Add0A s6Step364Add0B s6Step364Add1A s6Step364Add1B [858] [807] s6Step364Add0Work s6Step364Add1Work
    (fun q hq => s6Step364F4_owned (List.mem_toFinset.mpr hq)) s6Step364F4_flag s6Step364F4_carry
    s6Step364F4_distinct s6Step364F4_apart s6Step364Add0_checked s6Step364Add1_checked

private theorem s6Step364Front_branch : s6Step364FrontSigmaArena.checkBorrow 1 [898]=some s6Step364HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step364FrontSigmaArena,s6Step364EntryGvAfter,s6Step364EntryFvAfter,arenaWires]
  · ext q
    simp only [s6Step364FrontSigmaArena,s6Step364EntryGvAfter,s6Step364EntryFvAfter,s6Step364HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step364Front_entry : HmrFrontEntryValid s6Step364EntryFBefore s6Step364FrontBank 89 198 ⟨89,88,198,198⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step364FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step364EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step364EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step364FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step364Front_sigma : s6Step364EntryGvAfter.checkBorrow 1 [908]=some s6Step364FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step364EntryGvAfter,s6Step364EntryFvAfter,arenaWires]
  · rfl

private def s6Step364HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364HeadFBefore : Arena := s6Step364HeadGAfter

private def s6Step364HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344],795⟩

private def s6Step364HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825],776⟩

private def s6Step364HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88],777⟩

private def s6Step364HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887],775⟩

private theorem s6Step364HeadBank_incomingDistinct : ([s6Step364HeadGRow,s6Step364HeadFRow,s6Step364HeadGvRow,s6Step364HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364HeadF_Incoming : rowsOwned s6Step364HeadFBefore [s6Step364HeadFRow,s6Step364HeadGvRow,s6Step364HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step364HeadGRow,s6Step364HeadFRow,s6Step364HeadGvRow,s6Step364HeadFvRow] 1 s6Step364HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step364HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step364HeadBank_outgoingOwned : rowsOwned s6Step364HeadFvAfter [s6Step364HeadGOut,s6Step364HeadFOut,s6Step364HeadGvOut,s6Step364HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step364HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step364HeadF_Outgoing : rowsOwned s6Step364HeadFvAfter [s6Step364HeadFOut,s6Step364HeadGvOut,s6Step364HeadFvOut] :=
  hmrRows_owned_drop s6Step364HeadFvAfter [s6Step364HeadGOut,s6Step364HeadFOut,s6Step364HeadGvOut,s6Step364HeadFvOut] 1 s6Step364HeadBank_outgoingOwned

private theorem s6Step364HeadF_distinct : (s6Step364HeadFRow.sign::s6Step364HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364HeadF_owned : (s6Step364HeadFRow.sign::s6Step364HeadFRow.payload).toFinset⊆s6Step364HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step364HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364HeadF_reserved : s6Step364HeadFBefore.reserve s6Step364HeadFFresh.toFinset=some s6Step364HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step364HeadFFresh,arenaWires]
  · norm_num [s6Step364HeadFBefore,s6Step364HeadGAfter,s6Step364HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step364HeadFAfter,s6Step364HeadFBefore,s6Step364HeadGAfter,s6Step364HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step364HeadF_checked : planRowResizeLog s6Step364HeadFBefore s6Step364HeadFRow 90 s6Step364HeadFFresh=
    some (s6Step364HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 876],795⟩,growRow 795 s6Step364HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step364HeadFBefore s6Step364HeadFAfter s6Step364HeadFRow 90 s6Step364HeadFFresh
    s6Step364HeadF_distinct s6Step364HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step364HeadF_reserved
  have rowEq : WindowRow.mk (s6Step364HeadFRow.payload++s6Step364HeadFFresh) s6Step364HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 876],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step364HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step364HeadFvBefore : Arena := s6Step364HeadGvAfter

private theorem s6Step364HeadFv_Incoming : rowsOwned s6Step364HeadFvBefore [s6Step364HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step364HeadGRow,s6Step364HeadFRow,s6Step364HeadGvRow,s6Step364HeadFvRow] 3 s6Step364HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step364HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step364HeadFv_Outgoing : rowsOwned s6Step364HeadFvAfter [s6Step364HeadFvOut] :=
  hmrRows_owned_drop s6Step364HeadFvAfter [s6Step364HeadGOut,s6Step364HeadFOut,s6Step364HeadGvOut,s6Step364HeadFvOut] 3 s6Step364HeadBank_outgoingOwned

private theorem s6Step364HeadFv_distinct : (s6Step364HeadFvRow.sign::s6Step364HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364HeadFv_owned : (s6Step364HeadFvRow.sign::s6Step364HeadFvRow.payload).toFinset⊆s6Step364HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step364HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364HeadFv_reserved : s6Step364HeadFvBefore.reserve s6Step364HeadFvFresh.toFinset=some s6Step364HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step364HeadFvFresh,arenaWires]
  · norm_num [s6Step364HeadFvBefore,s6Step364HeadGvAfter,s6Step364HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step364HeadFvAfter,s6Step364HeadFvBefore,s6Step364HeadGvAfter,s6Step364HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step364HeadFv_checked : planRowResizeLog s6Step364HeadFvBefore s6Step364HeadFvRow 199 s6Step364HeadFvFresh=
    some (s6Step364HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922],776⟩,growRow 776 s6Step364HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step364HeadFvBefore s6Step364HeadFvAfter s6Step364HeadFvRow 199 s6Step364HeadFvFresh
    s6Step364HeadFv_distinct s6Step364HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step364HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step364HeadFvRow.payload++s6Step364HeadFvFresh) s6Step364HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 865, 812, 768, 856, 855, 882, 927, 817, 779, 848, 881, 825, 922],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step364HeadG_Incoming : rowsOwned s6Step364HeadGBefore [s6Step364HeadGRow,s6Step364HeadFRow,s6Step364HeadGvRow,s6Step364HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step364HeadGRow,s6Step364HeadFRow,s6Step364HeadGvRow,s6Step364HeadFvRow] 0 s6Step364HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step364HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step364HeadG_Outgoing : rowsOwned s6Step364HeadFvAfter [s6Step364HeadGOut,s6Step364HeadFOut,s6Step364HeadGvOut,s6Step364HeadFvOut] :=
  hmrRows_owned_drop s6Step364HeadFvAfter [s6Step364HeadGOut,s6Step364HeadFOut,s6Step364HeadGvOut,s6Step364HeadFvOut] 0 s6Step364HeadBank_outgoingOwned

private theorem s6Step364HeadG_distinct : (s6Step364HeadGRow.sign::s6Step364HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364HeadG_owned : (s6Step364HeadGRow.sign::s6Step364HeadGRow.payload).toFinset⊆s6Step364HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step364HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<876) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364HeadG_reserved : s6Step364HeadGBefore.reserve s6Step364HeadGFresh.toFinset=some s6Step364HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step364HeadGFresh,arenaWires]
  · norm_num [s6Step364HeadGBefore,s6Step364HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step364HeadGAfter,s6Step364HeadGBefore,s6Step364HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step364HeadG_checked : planRowResizeLog s6Step364HeadGBefore s6Step364HeadGRow 90 s6Step364HeadGFresh=
    some (s6Step364HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 906],777⟩,growRow 777 s6Step364HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step364HeadGBefore s6Step364HeadGAfter s6Step364HeadGRow 90 s6Step364HeadGFresh
    s6Step364HeadG_distinct s6Step364HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step364HeadG_reserved
  have rowEq : WindowRow.mk (s6Step364HeadGRow.payload++s6Step364HeadGFresh) s6Step364HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 906],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step364HeadGvBefore : Arena := s6Step364HeadFAfter

private theorem s6Step364HeadGv_Incoming : rowsOwned s6Step364HeadGvBefore [s6Step364HeadGvRow,s6Step364HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step364HeadGRow,s6Step364HeadFRow,s6Step364HeadGvRow,s6Step364HeadFvRow] 2 s6Step364HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step364HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step364HeadGv_Outgoing : rowsOwned s6Step364HeadFvAfter [s6Step364HeadGvOut,s6Step364HeadFvOut] :=
  hmrRows_owned_drop s6Step364HeadFvAfter [s6Step364HeadGOut,s6Step364HeadFOut,s6Step364HeadGvOut,s6Step364HeadFvOut] 2 s6Step364HeadBank_outgoingOwned

private theorem s6Step364HeadGv_distinct : (s6Step364HeadGvRow.sign::s6Step364HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step364HeadGv_owned : (s6Step364HeadGvRow.sign::s6Step364HeadGvRow.payload).toFinset⊆s6Step364HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step364HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<858) ∨ (859≤q ∧ q<877) ∨ (878≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step364HeadGv_reserved : s6Step364HeadGvBefore.reserve s6Step364HeadGvFresh.toFinset=some s6Step364HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step364HeadGvFresh,arenaWires]
  · norm_num [s6Step364HeadGvBefore,s6Step364HeadFAfter,s6Step364HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step364HeadGvAfter,s6Step364HeadGvBefore,s6Step364HeadFAfter,s6Step364HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step364HeadGv_checked : planRowResizeLog s6Step364HeadGvBefore s6Step364HeadGvRow 199 s6Step364HeadGvFresh=
    some (s6Step364HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 892],775⟩,growRow 775 s6Step364HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step364HeadGvBefore s6Step364HeadGvAfter s6Step364HeadGvRow 199 s6Step364HeadGvFresh
    s6Step364HeadGv_distinct s6Step364HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step364HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step364HeadGvRow.payload++s6Step364HeadGvFresh) s6Step364HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 907, 860, 845, 903, 915, 813, 809, 873, 879, 789, 875, 778, 887, 892],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step364HeadBank_rows : planWindowRowsLog s6Step364HeadGBefore [(s6Step364HeadGRow,90),(s6Step364HeadFRow,90),(s6Step364HeadGvRow,199),(s6Step364HeadFvRow,199)] [s6Step364HeadGFresh,s6Step364HeadFFresh,s6Step364HeadGvFresh,s6Step364HeadFvFresh]=
    some (s6Step364HeadFvAfter,[s6Step364HeadGOut,s6Step364HeadFOut,s6Step364HeadGvOut,s6Step364HeadFvOut],(growRow 777 s6Step364HeadGFresh ++ (growRow 795 s6Step364HeadFFresh ++ (growRow 775 s6Step364HeadGvFresh ++ (growRow 776 s6Step364HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step364HeadFvAfter [] []=some (s6Step364HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step364HeadFvBefore s6Step364HeadFvAfter s6Step364HeadFvAfter
    s6Step364HeadFvRow s6Step364HeadFvOut 199 s6Step364HeadFvFresh [] [] []
    (growRow 776 s6Step364HeadFvFresh) ([]) s6Step364HeadFv_Incoming s6Step364HeadFv_checked h4 s6Step364HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step364HeadGvBefore s6Step364HeadGvAfter s6Step364HeadFvAfter
    s6Step364HeadGvRow s6Step364HeadGvOut 199 s6Step364HeadGvFresh [(s6Step364HeadFvRow,199)] [s6Step364HeadFvFresh] [s6Step364HeadFvOut]
    (growRow 775 s6Step364HeadGvFresh) ((growRow 776 s6Step364HeadFvFresh ++ [])) s6Step364HeadGv_Incoming s6Step364HeadGv_checked h3 s6Step364HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step364HeadFBefore s6Step364HeadFAfter s6Step364HeadFvAfter
    s6Step364HeadFRow s6Step364HeadFOut 90 s6Step364HeadFFresh [(s6Step364HeadGvRow,199),(s6Step364HeadFvRow,199)] [s6Step364HeadGvFresh,s6Step364HeadFvFresh] [s6Step364HeadGvOut,s6Step364HeadFvOut]
    (growRow 795 s6Step364HeadFFresh) ((growRow 775 s6Step364HeadGvFresh ++ (growRow 776 s6Step364HeadFvFresh ++ []))) s6Step364HeadF_Incoming s6Step364HeadF_checked h2 s6Step364HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step364HeadGBefore s6Step364HeadGAfter s6Step364HeadFvAfter
    s6Step364HeadGRow s6Step364HeadGOut 90 s6Step364HeadGFresh [(s6Step364HeadFRow,90),(s6Step364HeadGvRow,199),(s6Step364HeadFvRow,199)] [s6Step364HeadFFresh,s6Step364HeadGvFresh,s6Step364HeadFvFresh] [s6Step364HeadFOut,s6Step364HeadGvOut,s6Step364HeadFvOut]
    (growRow 777 s6Step364HeadGFresh) ((growRow 795 s6Step364HeadFFresh ++ (growRow 775 s6Step364HeadGvFresh ++ (growRow 776 s6Step364HeadFvFresh ++ [])))) s6Step364HeadG_Incoming s6Step364HeadG_checked h1 s6Step364HeadG_Outgoing
  exact h0

private theorem s6Step364HeadBank_checked : compileHmrBankResizeLog .headroom s6Step364HeadGBefore ⟨s6Step364HeadFRow,s6Step364HeadGRow,s6Step364HeadFvRow,s6Step364HeadGvRow⟩ ⟨90,90,199,199⟩ [s6Step364HeadGFresh,s6Step364HeadFFresh,s6Step364HeadGvFresh,s6Step364HeadFvFresh]=
    some (s6Step364HeadFvAfter,⟨s6Step364HeadFOut,s6Step364HeadGOut,s6Step364HeadFvOut,s6Step364HeadGvOut⟩,(growRow 777 s6Step364HeadGFresh ++ (growRow 795 s6Step364HeadFFresh ++ (growRow 775 s6Step364HeadGvFresh ++ (growRow 776 s6Step364HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step364HeadBank_rows]
  rfl

private theorem s6Step364Front_checked : compileHmrSourceFrontLog s6Step364EntryFBefore s6Step364FrontBank 89 198 ⟨89,88,198,198⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step364FrontLog=some s6Step364FrontPlan := by
  have pairEq : s6Step364FrontPair=⟨s6Step364HeadFRow,s6Step364HeadGRow,s6Step364HeadFvRow,s6Step364HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step364FrontHead=⟨s6Step364ExitFRow,s6Step364ExitGRow,s6Step364ExitFvRow,s6Step364ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step364Add0A=s6Step364FrontHead.f.wires := by decide +kernel
  have gEq : s6Step364Add0B=s6Step364FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step364Add1A=s6Step364FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step364Add1B=s6Step364FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step364EntryFBefore s6Step364FrontBank 89 198 ⟨89,88,198,198⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step364FrontLog s6Step364FrontPlan
  · exact s6Step364Front_entry
  · exact s6Step364EntryBank_checked
  · exact s6Step364Front_sigma
  · rfl
  · exact s6Step364Front_branch
  · rfl
  · simpa only [s6Step364FrontPlan,pairEq] using s6Step364HeadBank_checked
  · simpa only [s6Step364FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step364F4_checked
  · exact s6Step364Counter_checked
  · rfl
  · simpa only [s6Step364FrontPlan,headEq] using s6Step364ExitBank_checked

private theorem s6Step364Complete_explicit_checked : compileHmrEarlyStepLog s6Step364EntryFBefore s6Step364FrontBank 89 198 ⟨89,88,198,198⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step364CompleteLog=some s6Step364CompletePlan := by
  let Q := s6Step364EarlyControlPlan
  have hq := s6Step364EarlyControl_plan_checked
  have fv1 : s6Step364CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step364CompleteOut.fv.payload[2]?.getD s6Step364CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step364CompleteOut.fv.payload[3]?.getD s6Step364CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step364CompleteOut.fv.payload[4]?.getD s6Step364CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step364EntryFBefore s6Step364EarlyControlArena s6Step364FrontBank 89 198 ⟨89,88,198,198⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step364CompleteLog s6Step364FrontPlan Q
    s6Step364Front_checked s6Step364Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step364Complete_owned s6Step364Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step364EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 908 s6Step364CompleteOut.fv.second (s6Step364CompleteOut.fv.payload[2]?.getD s6Step364CompleteOut.fv.sign) (s6Step364CompleteOut.fv.payload[3]?.getD s6Step364CompleteOut.fv.sign) (s6Step364CompleteOut.fv.payload[4]?.getD s6Step364CompleteOut.fv.sign) 898 60 s6Step364EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep364Arena : Arena := s6Step364EntryFBefore
def s6PrivateStep364Bank : WindowBank := s6Step364FrontBank
def s6PrivateStep364Spec : HmrSourceWalkStepLog := ⟨89,198,⟨89,88,198,198⟩,60,.early s6Step364CompleteLog⟩
def s6PrivateStep364Plan : HmrSourceStepPlan := .early s6Step364CompletePlan
theorem s6PrivateStep364_source : s6PrivateStep364Spec=s6ObservedLogs352[12] := rfl
theorem s6PrivateStep364_checked : compileHmrSourceStepLog s6PrivateStep364Arena s6PrivateStep364Bank
    s6PrivateStep364Spec.fgWidth s6PrivateStep364Spec.vWidth s6PrivateStep364Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 364 s6PrivateStep364Spec.need none s6PrivateStep364Spec.log=some s6PrivateStep364Plan := by
  change compileHmrSourceStepLog s6Step364EntryFBefore s6Step364FrontBank 89 198 ⟨89,88,198,198⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 364 60 none (.early s6Step364CompleteLog)=some (.early s6Step364CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 364<498)]
  rw [s6Step364Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
